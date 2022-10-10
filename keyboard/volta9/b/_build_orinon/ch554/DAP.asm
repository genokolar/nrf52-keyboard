;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module DAP
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _DAP_ProcessVendorCommandEx
	.globl _DAP_ProcessVendorCommand
	.globl _DelayMs
	.globl _DAP_GetFirmwareVersionString
	.globl _getSerial
	.globl _SWD_Transfer
	.globl _SWD_Sequence
	.globl _SWJ_Sequence
	.globl ___memcpy
	.globl _UIF_BUS_RST
	.globl _UIF_DETECT
	.globl _UIF_TRANSFER
	.globl _UIF_SUSPEND
	.globl _UIF_HST_SOF
	.globl _UIF_FIFO_OV
	.globl _U_SIE_FREE
	.globl _U_TOG_OK
	.globl _U_IS_NAK
	.globl _ADC_CHAN0
	.globl _ADC_CHAN1
	.globl _CMP_CHAN
	.globl _ADC_START
	.globl _ADC_IF
	.globl _CMP_IF
	.globl _CMPO
	.globl _U1RI
	.globl _U1TI
	.globl _U1RB8
	.globl _U1TB8
	.globl _U1REN
	.globl _U1SMOD
	.globl _U1SM0
	.globl _S0_R_FIFO
	.globl _S0_T_FIFO
	.globl _S0_FREE
	.globl _S0_IF_BYTE
	.globl _S0_IF_FIRST
	.globl _S0_IF_OV
	.globl _S0_FST_ACT
	.globl _CP_RL2
	.globl _C_T2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _CAP1F
	.globl _TF2
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _RXD
	.globl _PWM1_
	.globl _P3_0
	.globl _TXD
	.globl _PWM2_
	.globl _P3_1
	.globl _AIN3
	.globl _VBUS1
	.globl _INT0
	.globl _TXD1_
	.globl _P3_2
	.globl _INT1
	.globl _P3_3
	.globl _T0
	.globl _RXD1_
	.globl _PWM2
	.globl _P3_4
	.globl _T1
	.globl _P3_5
	.globl _UDP
	.globl _P3_6
	.globl _UDM
	.globl _P3_7
	.globl _TIN0
	.globl _CAP1
	.globl _T2
	.globl _P1_0
	.globl _AIN0
	.globl _VBUS2
	.globl _TIN1
	.globl _CAP2
	.globl _T2EX
	.globl _P1_1
	.globl _RXD_
	.globl _P1_2
	.globl _TXD_
	.globl _P1_3
	.globl _AIN1
	.globl _UCC1
	.globl _TIN2
	.globl _SCS
	.globl _CAP1_
	.globl _T2_
	.globl _P1_4
	.globl _AIN2
	.globl _UCC2
	.globl _TIN3
	.globl _PWM1
	.globl _MOSI
	.globl _P1_5
	.globl _TIN4
	.globl _RXD1
	.globl _MISO
	.globl _P1_6
	.globl _TIN5
	.globl _TXD1
	.globl _SCK
	.globl _P1_7
	.globl _IE_SPI0
	.globl _IE_TKEY
	.globl _IE_USB
	.globl _IE_ADC
	.globl _IE_UART1
	.globl _IE_PWMX
	.globl _IE_GPIO
	.globl _IE_WDOG
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PT2
	.globl _PL_FLAG
	.globl _PH_FLAG
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _E_DIS
	.globl _EA
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _UEP1_DMA_H
	.globl _UEP1_DMA_L
	.globl _UEP1_DMA
	.globl _UEP0_DMA_H
	.globl _UEP0_DMA_L
	.globl _UEP0_DMA
	.globl _UEP2_3_MOD
	.globl _UEP4_1_MOD
	.globl _UEP3_DMA_H
	.globl _UEP3_DMA_L
	.globl _UEP3_DMA
	.globl _UEP2_DMA_H
	.globl _UEP2_DMA_L
	.globl _UEP2_DMA
	.globl _USB_DEV_AD
	.globl _USB_CTRL
	.globl _USB_INT_EN
	.globl _UEP4_T_LEN
	.globl _UEP4_CTRL
	.globl _UEP0_T_LEN
	.globl _UEP0_CTRL
	.globl _USB_RX_LEN
	.globl _USB_MIS_ST
	.globl _USB_INT_ST
	.globl _USB_INT_FG
	.globl _UEP3_T_LEN
	.globl _UEP3_CTRL
	.globl _UEP2_T_LEN
	.globl _UEP2_CTRL
	.globl _UEP1_T_LEN
	.globl _UEP1_CTRL
	.globl _UDEV_CTRL
	.globl _USB_C_CTRL
	.globl _TKEY_DATH
	.globl _TKEY_DATL
	.globl _TKEY_DAT
	.globl _TKEY_CTRL
	.globl _ADC_DATA
	.globl _ADC_CFG
	.globl _ADC_CTRL
	.globl _SBAUD1
	.globl _SBUF1
	.globl _SCON1
	.globl _SPI0_SETUP
	.globl _SPI0_CK_SE
	.globl _SPI0_CTRL
	.globl _SPI0_DATA
	.globl _SPI0_STAT
	.globl _PWM_CK_SE
	.globl _PWM_CTRL
	.globl _PWM_DATA1
	.globl _PWM_DATA2
	.globl _T2CAP1H
	.globl _T2CAP1L
	.globl _T2CAP1
	.globl _TH2
	.globl _TL2
	.globl _T2COUNT
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _RCAP2
	.globl _T2MOD
	.globl _T2CON
	.globl _SBUF
	.globl _SCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _XBUS_AUX
	.globl _PIN_FUNC
	.globl _P3_DIR_PU
	.globl _P3_MOD_OC
	.globl _P3
	.globl _P2
	.globl _P1_DIR_PU
	.globl _P1_MOD_OC
	.globl _P1
	.globl _ROM_CTRL
	.globl _ROM_DATA_H
	.globl _ROM_DATA_L
	.globl _ROM_DATA
	.globl _ROM_ADDR_H
	.globl _ROM_ADDR_L
	.globl _ROM_ADDR
	.globl _GPIO_IE
	.globl _IP_EX
	.globl _IE_EX
	.globl _IP
	.globl _IE
	.globl _WDOG_COUNT
	.globl _RESET_KEEP
	.globl _WAKE_CTRL
	.globl _CLOCK_CFG
	.globl _PCON
	.globl _GLOBAL_CFG
	.globl _SAFE_MOD
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _DAP_Data
	.globl _DAP_TransferAbort
	.globl _DAP_ProcessCommand
	.globl _DAP_ExecuteCommand
	.globl _DAP_Setup
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_SAFE_MOD	=	0x00a1
_GLOBAL_CFG	=	0x00b1
_PCON	=	0x0087
_CLOCK_CFG	=	0x00b9
_WAKE_CTRL	=	0x00a9
_RESET_KEEP	=	0x00fe
_WDOG_COUNT	=	0x00ff
_IE	=	0x00a8
_IP	=	0x00b8
_IE_EX	=	0x00e8
_IP_EX	=	0x00e9
_GPIO_IE	=	0x00c7
_ROM_ADDR	=	0x8584
_ROM_ADDR_L	=	0x0084
_ROM_ADDR_H	=	0x0085
_ROM_DATA	=	0x8f8e
_ROM_DATA_L	=	0x008e
_ROM_DATA_H	=	0x008f
_ROM_CTRL	=	0x0086
_P1	=	0x0090
_P1_MOD_OC	=	0x0092
_P1_DIR_PU	=	0x0093
_P2	=	0x00a0
_P3	=	0x00b0
_P3_MOD_OC	=	0x0096
_P3_DIR_PU	=	0x0097
_PIN_FUNC	=	0x00c6
_XBUS_AUX	=	0x00a2
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_SCON	=	0x0098
_SBUF	=	0x0099
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2	=	0xcbca
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_T2COUNT	=	0xcdcc
_TL2	=	0x00cc
_TH2	=	0x00cd
_T2CAP1	=	0xcfce
_T2CAP1L	=	0x00ce
_T2CAP1H	=	0x00cf
_PWM_DATA2	=	0x009b
_PWM_DATA1	=	0x009c
_PWM_CTRL	=	0x009d
_PWM_CK_SE	=	0x009e
_SPI0_STAT	=	0x00f8
_SPI0_DATA	=	0x00f9
_SPI0_CTRL	=	0x00fa
_SPI0_CK_SE	=	0x00fb
_SPI0_SETUP	=	0x00fc
_SCON1	=	0x00c0
_SBUF1	=	0x00c1
_SBAUD1	=	0x00c2
_ADC_CTRL	=	0x0080
_ADC_CFG	=	0x009a
_ADC_DATA	=	0x009f
_TKEY_CTRL	=	0x00c3
_TKEY_DAT	=	0xc5c4
_TKEY_DATL	=	0x00c4
_TKEY_DATH	=	0x00c5
_USB_C_CTRL	=	0x0091
_UDEV_CTRL	=	0x00d1
_UEP1_CTRL	=	0x00d2
_UEP1_T_LEN	=	0x00d3
_UEP2_CTRL	=	0x00d4
_UEP2_T_LEN	=	0x00d5
_UEP3_CTRL	=	0x00d6
_UEP3_T_LEN	=	0x00d7
_USB_INT_FG	=	0x00d8
_USB_INT_ST	=	0x00d9
_USB_MIS_ST	=	0x00da
_USB_RX_LEN	=	0x00db
_UEP0_CTRL	=	0x00dc
_UEP0_T_LEN	=	0x00dd
_UEP4_CTRL	=	0x00de
_UEP4_T_LEN	=	0x00df
_USB_INT_EN	=	0x00e1
_USB_CTRL	=	0x00e2
_USB_DEV_AD	=	0x00e3
_UEP2_DMA	=	0xe5e4
_UEP2_DMA_L	=	0x00e4
_UEP2_DMA_H	=	0x00e5
_UEP3_DMA	=	0xe7e6
_UEP3_DMA_L	=	0x00e6
_UEP3_DMA_H	=	0x00e7
_UEP4_1_MOD	=	0x00ea
_UEP2_3_MOD	=	0x00eb
_UEP0_DMA	=	0xedec
_UEP0_DMA_L	=	0x00ec
_UEP0_DMA_H	=	0x00ed
_UEP1_DMA	=	0xefee
_UEP1_DMA_L	=	0x00ee
_UEP1_DMA_H	=	0x00ef
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_EA	=	0x00af
_E_DIS	=	0x00ae
_ET2	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PH_FLAG	=	0x00af
_PL_FLAG	=	0x00ae
_PT2	=	0x00ad
_PS	=	0x00ac
_PT1	=	0x00ab
_PX1	=	0x00aa
_PT0	=	0x00a9
_PX0	=	0x00a8
_IE_WDOG	=	0x00ef
_IE_GPIO	=	0x00ee
_IE_PWMX	=	0x00ed
_IE_UART1	=	0x00ec
_IE_ADC	=	0x00eb
_IE_USB	=	0x00ea
_IE_TKEY	=	0x00e9
_IE_SPI0	=	0x00e8
_P1_7	=	0x0097
_SCK	=	0x0097
_TXD1	=	0x0097
_TIN5	=	0x0097
_P1_6	=	0x0096
_MISO	=	0x0096
_RXD1	=	0x0096
_TIN4	=	0x0096
_P1_5	=	0x0095
_MOSI	=	0x0095
_PWM1	=	0x0095
_TIN3	=	0x0095
_UCC2	=	0x0095
_AIN2	=	0x0095
_P1_4	=	0x0094
_T2_	=	0x0094
_CAP1_	=	0x0094
_SCS	=	0x0094
_TIN2	=	0x0094
_UCC1	=	0x0094
_AIN1	=	0x0094
_P1_3	=	0x0093
_TXD_	=	0x0093
_P1_2	=	0x0092
_RXD_	=	0x0092
_P1_1	=	0x0091
_T2EX	=	0x0091
_CAP2	=	0x0091
_TIN1	=	0x0091
_VBUS2	=	0x0091
_AIN0	=	0x0091
_P1_0	=	0x0090
_T2	=	0x0090
_CAP1	=	0x0090
_TIN0	=	0x0090
_P3_7	=	0x00b7
_UDM	=	0x00b7
_P3_6	=	0x00b6
_UDP	=	0x00b6
_P3_5	=	0x00b5
_T1	=	0x00b5
_P3_4	=	0x00b4
_PWM2	=	0x00b4
_RXD1_	=	0x00b4
_T0	=	0x00b4
_P3_3	=	0x00b3
_INT1	=	0x00b3
_P3_2	=	0x00b2
_TXD1_	=	0x00b2
_INT0	=	0x00b2
_VBUS1	=	0x00b2
_AIN3	=	0x00b2
_P3_1	=	0x00b1
_PWM2_	=	0x00b1
_TXD	=	0x00b1
_P3_0	=	0x00b0
_PWM1_	=	0x00b0
_RXD	=	0x00b0
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_TF2	=	0x00cf
_CAP1F	=	0x00cf
_EXF2	=	0x00ce
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_EXEN2	=	0x00cb
_TR2	=	0x00ca
_C_T2	=	0x00c9
_CP_RL2	=	0x00c8
_S0_FST_ACT	=	0x00ff
_S0_IF_OV	=	0x00fe
_S0_IF_FIRST	=	0x00fd
_S0_IF_BYTE	=	0x00fc
_S0_FREE	=	0x00fb
_S0_T_FIFO	=	0x00fa
_S0_R_FIFO	=	0x00f8
_U1SM0	=	0x00c7
_U1SMOD	=	0x00c5
_U1REN	=	0x00c4
_U1TB8	=	0x00c3
_U1RB8	=	0x00c2
_U1TI	=	0x00c1
_U1RI	=	0x00c0
_CMPO	=	0x0087
_CMP_IF	=	0x0086
_ADC_IF	=	0x0085
_ADC_START	=	0x0084
_CMP_CHAN	=	0x0083
_ADC_CHAN1	=	0x0081
_ADC_CHAN0	=	0x0080
_U_IS_NAK	=	0x00df
_U_TOG_OK	=	0x00de
_U_SIE_FREE	=	0x00dd
_UIF_FIFO_OV	=	0x00dc
_UIF_HST_SOF	=	0x00db
_UIF_SUSPEND	=	0x00da
_UIF_TRANSFER	=	0x00d9
_UIF_DETECT	=	0x00d8
_UIF_BUS_RST	=	0x00d8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_DAP_TransferAbort::
	.ds 1
_request:
	.ds 3
_response:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_DAP_Data::
	.ds 25
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_GetFirmwareVersionString'
;------------------------------------------------------------
;str                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../../usb/dap_strings.h:47: uint8_t DAP_GetFirmwareVersionString(char* str)
;	-----------------------------------------
;	 function DAP_GetFirmwareVersionString
;	-----------------------------------------
_DAP_GetFirmwareVersionString:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../../usb/dap_strings.h:50: memcpy(str, VER, sizeof(VER));
	mov	a,#0x05
	push	acc
	clr	a
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../usb/dap_strings.h:51: return sizeof(VER);
	mov	dpl,#0x05
;	../../../usb/dap_strings.h:52: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_Info'
;------------------------------------------------------------
;info                      Allocated to stack - _bp -5
;id                        Allocated to registers r7 
;length                    Allocated to registers r6 
;------------------------------------------------------------
;	../../../usb/DAP.c:79: static uint8_t DAP_Info(uint8_t id, uint8_t* info)
;	-----------------------------------------
;	 function DAP_Info
;	-----------------------------------------
_DAP_Info:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	../../../usb/DAP.c:81: uint8_t length = 0U;
	mov	r6,#0x00
;	../../../usb/DAP.c:83: switch (id) {
	cjne	r7,#0x01,00160$
	sjmp	00101$
00160$:
	cjne	r7,#0x02,00161$
	sjmp	00102$
00161$:
	cjne	r7,#0x03,00162$
	sjmp	00103$
00162$:
	cjne	r7,#0x04,00163$
	sjmp	00104$
00163$:
	cjne	r7,#0x05,00164$
	ljmp	00113$
00164$:
	cjne	r7,#0x06,00165$
	ljmp	00113$
00165$:
	cjne	r7,#0xf0,00166$
	sjmp	00107$
00166$:
	cjne	r7,#0xf1,00167$
	ljmp	00113$
00167$:
	cjne	r7,#0xfd,00168$
	ljmp	00113$
00168$:
	cjne	r7,#0xfe,00169$
	ljmp	00111$
00169$:
	cjne	r7,#0xff,00170$
	sjmp	00110$
00170$:
	ljmp	00113$
;	../../../usb/DAP.c:84: case DAP_ID_VENDOR:
00101$:
;	../../../usb/DAP.c:85: length = DAP_GetVendorString((char*)info);
	mov	r6,#0x00
;	../../../usb/DAP.c:86: break;
	ljmp	00113$
;	../../../usb/DAP.c:87: case DAP_ID_PRODUCT:
00102$:
;	../../../usb/DAP.c:88: length = DAP_GetProductString((char*)info);
	mov	r6,#0x00
;	../../../usb/DAP.c:89: break;
	ljmp	00113$
;	../../../usb/DAP.c:90: case DAP_ID_SER_NUM:
00103$:
;	../../../usb/DAP.c:91: length = DAP_GetSerNumString((char*)info);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_getSerial
	mov	r7,dpl
	mov	ar6,r7
;	../../../usb/DAP.c:92: break;
;	../../../usb/DAP.c:93: case DAP_ID_FW_VER: {
	sjmp	00113$
00104$:
;	../../../usb/DAP.c:95: length = DAP_GetFirmwareVersionString((char*)info);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_DAP_GetFirmwareVersionString
	mov	r7,dpl
	mov	ar6,r7
;	../../../usb/DAP.c:100: break;
;	../../../usb/DAP.c:114: case DAP_ID_CAPABILITIES:
	sjmp	00113$
00107$:
;	../../../usb/DAP.c:115: info[0] = ((DAP_SWD != 0) ? (1U << 0) : 0U)
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	mov	a,#0x11
	lcall	__gptrput
;	../../../usb/DAP.c:123: length = 1U;
	mov	r6,#0x01
;	../../../usb/DAP.c:124: break;
;	../../../usb/DAP.c:129: case DAP_ID_PACKET_SIZE:
	sjmp	00113$
00110$:
;	../../../usb/DAP.c:130: info[0] = (uint8_t)(DAP_PACKET_SIZE >> 0);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	mov	a,#0x40
	lcall	__gptrput
;	../../../usb/DAP.c:131: info[1] = (uint8_t)(DAP_PACKET_SIZE >> 8);
	inc	r4
	cjne	r4,#0x00,00171$
	inc	r5
00171$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../../../usb/DAP.c:132: length = 2U;
	mov	r6,#0x02
;	../../../usb/DAP.c:133: break;
;	../../../usb/DAP.c:134: case DAP_ID_PACKET_COUNT:
	sjmp	00113$
00111$:
;	../../../usb/DAP.c:135: info[0] = DAP_PACKET_COUNT;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	../../../usb/DAP.c:136: length = 1U;
	mov	r6,#0x01
;	../../../usb/DAP.c:140: }
00113$:
;	../../../usb/DAP.c:142: return (length);
	mov	dpl,r6
;	../../../usb/DAP.c:143: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_Delay'
;------------------------------------------------------------
;delay                     Allocated to registers r5 r7 
;------------------------------------------------------------
;	../../../usb/DAP.c:150: static uint16_t DAP_Delay()
;	-----------------------------------------
;	 function DAP_Delay
;	-----------------------------------------
_DAP_Delay:
;	../../../usb/DAP.c:154: delay = (uint16_t)(*(request + 0)) | (uint16_t)(*(request + 1) << 8);
	mov	r5,_request
	mov	r6,(_request + 1)
	mov	r7,(_request + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	mov	a,#0x01
	add	a,_request
	mov	r3,a
	clr	a
	addc	a,(_request + 1)
	mov	r4,a
	mov	r6,(_request + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r6,a
	clr	a
	orl	ar5,a
	mov	a,r6
	orl	ar7,a
;	../../../usb/DAP.c:155: DelayMs(delay);
	mov	dpl,r5
	mov	dph,r7
	lcall	_DelayMs
;	../../../usb/DAP.c:157: *response = DAP_OK;
	mov	r5,_response
	mov	r6,(_response + 1)
	mov	r7,(_response + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../../../usb/DAP.c:158: return (((uint16_t)2U << 8) | 1U);
	mov	dptr,#0x0201
;	../../../usb/DAP.c:159: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_HostStatus'
;------------------------------------------------------------
;	../../../usb/DAP.c:166: static uint16_t DAP_HostStatus()
;	-----------------------------------------
;	 function DAP_HostStatus
;	-----------------------------------------
_DAP_HostStatus:
;	../../../usb/DAP.c:168: switch (*request) {
	mov	r5,_request
	mov	r6,(_request + 1)
	mov	r7,(_request + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	jz	00104$
	cjne	r7,#0x01,00116$
	sjmp	00104$
00116$:
;	../../../usb/DAP.c:176: *response = DAP_ERROR;
	mov	r5,_response
	mov	r6,(_response + 1)
	mov	r7,(_response + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xff
	lcall	__gptrput
;	../../../usb/DAP.c:177: return (((uint16_t)2U << 8) | 1U);
	mov	dptr,#0x0201
;	../../../usb/DAP.c:178: }
	ret
00104$:
;	../../../usb/DAP.c:180: *response = DAP_OK;
	mov	r5,_response
	mov	r6,(_response + 1)
	mov	r7,(_response + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../../../usb/DAP.c:181: return (((uint16_t)2U << 8) | 1U);
	mov	dptr,#0x0201
;	../../../usb/DAP.c:182: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_Connect'
;------------------------------------------------------------
;port                      Allocated to registers r7 
;------------------------------------------------------------
;	../../../usb/DAP.c:189: static uint16_t DAP_Connect()
;	-----------------------------------------
;	 function DAP_Connect
;	-----------------------------------------
_DAP_Connect:
;	../../../usb/DAP.c:193: if (*request == DAP_PORT_AUTODETECT) {
	mov	r5,_request
	mov	r6,(_request + 1)
	mov	r7,(_request + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnz	00102$
;	../../../usb/DAP.c:194: port = DAP_DEFAULT_PORT;
	mov	r7,#0x01
	sjmp	00103$
00102$:
;	../../../usb/DAP.c:196: port = *request;
	mov	r4,_request
	mov	r5,(_request + 1)
	mov	r6,(_request + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r7,a
00103$:
;	../../../usb/DAP.c:199: switch (port) {
	cjne	r7,#0x01,00108$
;	../../../usb/DAP.c:201: DAP_Data.debug_port = DAP_PORT_SWD;
	mov	dptr,#_DAP_Data
	mov	a,#0x01
	movx	@dptr,a
;	../../../usb/DAP.c:202: PORT_SWD_SETUP();
;	assignBit
	setb	_T2
;	assignBit
	setb	_T2EX
	orl	_P1_MOD_OC,#0x01
	orl	_P1_DIR_PU,#0x01
	orl	_P1_MOD_OC,#0x02
	orl	_P1_DIR_PU,#0x02
;	../../../usb/DAP.c:203: break;
;	../../../usb/DAP.c:204: default:
	sjmp	00109$
00108$:
;	../../../usb/DAP.c:205: port = DAP_PORT_DISABLED;
	mov	r7,#0x00
;	../../../usb/DAP.c:207: }
00109$:
;	../../../usb/DAP.c:209: *response = port;
	mov	r4,_response
	mov	r5,(_response + 1)
	mov	r6,(_response + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__gptrput
;	../../../usb/DAP.c:210: return (((uint16_t)1U << 8) | 1U);
	mov	dptr,#0x0101
;	../../../usb/DAP.c:211: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_Disconnect'
;------------------------------------------------------------
;	../../../usb/DAP.c:216: static uint8_t DAP_Disconnect()
;	-----------------------------------------
;	 function DAP_Disconnect
;	-----------------------------------------
_DAP_Disconnect:
;	../../../usb/DAP.c:218: DAP_Data.debug_port = DAP_PORT_DISABLED;
	mov	dptr,#_DAP_Data
	clr	a
	movx	@dptr,a
;	../../../usb/DAP.c:219: PORT_OFF();
	anl	_P1_MOD_OC,#0xfe
	anl	_P1_DIR_PU,#0xfe
	anl	_P1_MOD_OC,#0xfd
	anl	_P1_DIR_PU,#0xfd
;	../../../usb/DAP.c:221: *response = DAP_OK;
	mov	r5,_response
	mov	r6,(_response + 1)
	mov	r7,(_response + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../../../usb/DAP.c:222: return (1U);
	mov	dpl,#0x01
;	../../../usb/DAP.c:223: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_ResetTarget'
;------------------------------------------------------------
;	../../../usb/DAP.c:228: static uint8_t DAP_ResetTarget()
;	-----------------------------------------
;	 function DAP_ResetTarget
;	-----------------------------------------
_DAP_ResetTarget:
;	../../../usb/DAP.c:230: *(response + 1) = RESET_TARGET();
	mov	a,#0x01
	add	a,_response
	mov	r5,a
	clr	a
	addc	a,(_response + 1)
	mov	r6,a
	mov	r7,(_response + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../../../usb/DAP.c:231: *(response + 0) = DAP_OK;
	mov	r5,_response
	mov	r6,(_response + 1)
	mov	r7,(_response + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../../../usb/DAP.c:232: return (2U);
	mov	dpl,#0x02
;	../../../usb/DAP.c:233: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_SWJ_Pins'
;------------------------------------------------------------
;value                     Allocated to registers 
;select                    Allocated to registers r6 
;wait                      Allocated to registers r5 
;sloc0                     Allocated to stack - _bp +7
;sloc1                     Allocated to stack - _bp +9
;sloc2                     Allocated to stack - _bp +4
;sloc3                     Allocated to stack - _bp +5
;sloc4                     Allocated to stack - _bp +1
;sloc5                     Allocated to stack - _bp +2
;------------------------------------------------------------
;	../../../usb/DAP.c:240: static uint16_t DAP_SWJ_Pins()
;	-----------------------------------------
;	 function DAP_SWJ_Pins
;	-----------------------------------------
_DAP_SWJ_Pins:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0a
	mov	sp,a
;	../../../usb/DAP.c:246: value = *(request + 0);
	mov	r5,_request
	mov	r6,(_request + 1)
	mov	r7,(_request + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
;	../../../usb/DAP.c:247: select = *(request + 1);
	mov	a,#0x01
	add	a,_request
	mov	r4,a
	clr	a
	addc	a,(_request + 1)
	mov	r5,a
	mov	r6,(_request + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r6,a
;	../../../usb/DAP.c:248: wait = (*(request + 2)) | (*(request + 3)) | (*(request + 4)) | (*(request + 5));
	mov	a,#0x02
	add	a,_request
	mov	r3,a
	clr	a
	addc	a,(_request + 1)
	mov	r4,a
	mov	r5,(_request + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	a,#0x03
	add	a,_request
	mov	r2,a
	clr	a
	addc	a,(_request + 1)
	mov	r4,a
	mov	r5,(_request + 2)
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	orl	ar3,a
	mov	a,#0x04
	add	a,_request
	mov	r2,a
	clr	a
	addc	a,(_request + 1)
	mov	r4,a
	mov	r5,(_request + 2)
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	orl	ar3,a
	mov	a,#0x05
	add	a,_request
	mov	r2,a
	clr	a
	addc	a,(_request + 1)
	mov	r4,a
	mov	r5,(_request + 2)
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	orl	ar3,a
	mov	ar5,r3
;	../../../usb/DAP.c:250: if ((select & (1U << DAP_SWJ_SWCLK_TCK)) != 0U) {
	mov	a,r6
	jnb	acc.0,00105$
;	../../../usb/DAP.c:251: if ((value & (1U << DAP_SWJ_SWCLK_TCK)) != 0U) {
	mov	a,r7
	jnb	acc.0,00102$
;	../../../usb/DAP.c:252: PIN_SWCLK_TCK_SET();
;	assignBit
	setb	_T2EX
	sjmp	00105$
00102$:
;	../../../usb/DAP.c:254: PIN_SWCLK_TCK_CLR();
;	assignBit
	clr	_T2EX
00105$:
;	../../../usb/DAP.c:257: if ((select & (1U << DAP_SWJ_SWDIO_TMS)) != 0U) {
	mov	a,r6
	jnb	acc.1,00110$
;	../../../usb/DAP.c:258: if ((value & (1U << DAP_SWJ_SWDIO_TMS)) != 0U) {
	mov	a,r7
	jnb	acc.1,00107$
;	../../../usb/DAP.c:259: PIN_SWDIO_TMS_SET();
;	assignBit
	setb	_T2
	sjmp	00110$
00107$:
;	../../../usb/DAP.c:261: PIN_SWDIO_TMS_CLR();
;	assignBit
	clr	_T2
00110$:
;	../../../usb/DAP.c:274: if (wait != 0U) {
	mov	a,r5
	jnz	00196$
	ljmp	00135$
00196$:
;	../../../usb/DAP.c:275: do {
	mov	ar5,r7
	mov	a,#0x01
	anl	a,r6
	mov	r3,a
	mov	r4,#0x00
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x02
	anl	a,r6
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
	mov	a,r7
	clr	c
	rrc	a
	mov	r2,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x04
	anl	a,r6
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0x3f
	mov	@r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x20
	anl	a,r6
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,r7
	swap	a
	rr	a
	anl	a,#0x07
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,#0x80
	anl	a,r6
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
	mov	a,r7
	rl	a
	anl	a,#0x01
	mov	r7,a
00131$:
;	../../../usb/DAP.c:276: if ((select & (1U << DAP_SWJ_SWCLK_TCK)) != 0U) {
	mov	a,r3
	orl	a,r4
	jz	00114$
;	../../../usb/DAP.c:277: if ((value >> DAP_SWJ_SWCLK_TCK) ^ PIN_SWCLK_TCK_IN()) {
	mov	c,_T2EX
	clr	a
	rlc	a
	anl	a,#0x01
	mov	r6,a
	xrl	a,r5
	jnz	00131$
;	../../../usb/DAP.c:278: continue;
00114$:
;	../../../usb/DAP.c:281: if ((select & (1U << DAP_SWJ_SWDIO_TMS)) != 0U) {
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00118$
;	../../../usb/DAP.c:282: if ((value >> DAP_SWJ_SWDIO_TMS) ^ PIN_SWDIO_TMS_IN()) {
	mov	c,_T2
	clr	a
	rlc	a
	anl	a,#0x01
	mov	r6,a
	xrl	a,r2
	jnz	00131$
;	../../../usb/DAP.c:283: continue;
00118$:
;	../../../usb/DAP.c:286: if ((select & (1U << DAP_SWJ_TDI)) != 0U) {
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00122$
;	../../../usb/DAP.c:287: if ((value >> DAP_SWJ_TDI) ^ PIN_TDI_IN()) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	jnz	00131$
;	../../../usb/DAP.c:288: continue;
00122$:
;	../../../usb/DAP.c:291: if ((select & (1U << DAP_SWJ_nTRST)) != 0U) {
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00126$
;	../../../usb/DAP.c:292: if ((value >> DAP_SWJ_nTRST) ^ PIN_nTRST_IN()) {
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jnz	00131$
;	../../../usb/DAP.c:293: continue;
00126$:
;	../../../usb/DAP.c:296: if ((select & (1U << DAP_SWJ_nRESET)) != 0U) {
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00135$
;	../../../usb/DAP.c:297: if ((value >> DAP_SWJ_nRESET) ^ PIN_nRESET_IN()) {
	mov	a,r7
	jnz	00131$
;	../../../usb/DAP.c:302: } while (1);
00135$:
;	../../../usb/DAP.c:305: value = (PIN_SWCLK_TCK_IN() << DAP_SWJ_SWCLK_TCK) | (PIN_SWDIO_TMS_IN() << DAP_SWJ_SWDIO_TMS) | (PIN_TDI_IN() << DAP_SWJ_TDI) | (PIN_TDO_IN() << DAP_SWJ_TDO) | (PIN_nTRST_IN() << DAP_SWJ_nTRST) | (PIN_nRESET_IN() << DAP_SWJ_nRESET);
	mov	c,_T2EX
	clr	a
	rlc	a
	mov	r7,a
	anl	ar7,#0x01
	mov	c,_T2
	clr	a
	rlc	a
	anl	a,#0x01
	add	a,acc
	orl	ar7,a
;	../../../usb/DAP.c:307: *response = (uint8_t)value;
	mov	r4,_response
	mov	r5,(_response + 1)
	mov	r6,(_response + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__gptrput
;	../../../usb/DAP.c:309: return (((uint16_t)6U << 8) | 1U);
	mov	dptr,#0x0601
;	../../../usb/DAP.c:310: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_SWJ_Clock'
;------------------------------------------------------------
;	../../../usb/DAP.c:317: static uint16_t DAP_SWJ_Clock()
;	-----------------------------------------
;	 function DAP_SWJ_Clock
;	-----------------------------------------
_DAP_SWJ_Clock:
;	../../../usb/DAP.c:320: *response = DAP_OK;
	mov	r5,_response
	mov	r6,(_response + 1)
	mov	r7,(_response + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../../../usb/DAP.c:321: return (((uint16_t)4U << 8) | 1U);
	mov	dptr,#0x0401
;	../../../usb/DAP.c:322: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_SWJ_Sequence'
;------------------------------------------------------------
;count                     Allocated to registers r5 r7 
;------------------------------------------------------------
;	../../../usb/DAP.c:329: static uint16_t DAP_SWJ_Sequence()
;	-----------------------------------------
;	 function DAP_SWJ_Sequence
;	-----------------------------------------
_DAP_SWJ_Sequence:
;	../../../usb/DAP.c:333: count = *request++;
	mov	r5,_request
	mov	r6,(_request + 1)
	mov	r7,(_request + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	_request
	clr	a
	cjne	a,_request,00110$
	inc	(_request + 1)
00110$:
	mov	r7,#0x00
;	../../../usb/DAP.c:334: if (count == 0U) {
	mov	a,r5
	orl	a,r7
;	../../../usb/DAP.c:335: count = 256U;
	jnz	00102$
	mov	r5,a
	mov	r7,#0x01
00102$:
;	../../../usb/DAP.c:338: SWJ_Sequence(count, request);
	push	ar7
	push	ar5
	push	_request
	push	(_request + 1)
	push	(_request + 2)
	mov	dpl,r5
	mov	dph,r7
	lcall	_SWJ_Sequence
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar7
;	../../../usb/DAP.c:339: *response = DAP_OK;
	mov	r3,_response
	mov	r4,(_response + 1)
	mov	r6,(_response + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	clr	a
	lcall	__gptrput
;	../../../usb/DAP.c:341: count = (count + 7U) >> 3;
	mov	a,#0x07
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r7
	swap	a
	rl	a
	xch	a,r5
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r5
	xch	a,r5
	anl	a,#0x1f
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	mov	r7,a
;	../../../usb/DAP.c:343: return (((uint16_t)(count + 1U) << 8) | 1U);
	inc	r5
	cjne	r5,#0x00,00112$
	inc	r7
00112$:
	mov	ar7,r5
	mov	r5,#0x00
	orl	ar5,#0x01
	mov	dpl,r5
	mov	dph,r7
;	../../../usb/DAP.c:344: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_SWD_Configure'
;------------------------------------------------------------
;value                     Allocated to registers r5 
;------------------------------------------------------------
;	../../../usb/DAP.c:351: static uint16_t DAP_SWD_Configure()
;	-----------------------------------------
;	 function DAP_SWD_Configure
;	-----------------------------------------
_DAP_SWD_Configure:
;	../../../usb/DAP.c:355: value = *request;
	mov	r5,_request
	mov	r6,(_request + 1)
	mov	r7,(_request + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
;	../../../usb/DAP.c:356: DAP_Data.swd_conf.turnaround = (value & 0x03U) + 1U;
	mov	a,#0x03
	anl	a,r5
	inc	a
	mov	dptr,#(_DAP_Data + 0x0017)
	movx	@dptr,a
;	../../../usb/DAP.c:357: DAP_Data.swd_conf.data_phase = (value & 0x04U) ? 1U : 0U;
	mov	a,r5
	jnb	acc.2,00103$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00104$
00103$:
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
	mov	dptr,#(_DAP_Data + 0x0018)
	mov	a,r6
	movx	@dptr,a
;	../../../usb/DAP.c:359: *response = DAP_OK;
	mov	r5,_response
	mov	r6,(_response + 1)
	mov	r7,(_response + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../../../usb/DAP.c:361: return (((uint16_t)1U << 8) | 1U);
	mov	dptr,#0x0101
;	../../../usb/DAP.c:362: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_SWD_Sequence'
;------------------------------------------------------------
;sequence_info             Allocated to registers r4 
;sequence_count            Allocated to registers 
;request_count             Allocated to registers r7 
;response_count            Allocated to registers r6 
;count                     Allocated to registers r3 
;------------------------------------------------------------
;	../../../usb/DAP.c:369: static uint16_t DAP_SWD_Sequence()
;	-----------------------------------------
;	 function DAP_SWD_Sequence
;	-----------------------------------------
_DAP_SWD_Sequence:
;	../../../usb/DAP.c:377: *response++ = DAP_OK;
	mov	r5,_response
	mov	r6,(_response + 1)
	mov	r7,(_response + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	_response
;	genFromRTrack removed	clr	a
	cjne	a,_response,00132$
	inc	(_response + 1)
00132$:
;	../../../usb/DAP.c:378: request_count = 1U;
	mov	r7,#0x01
;	../../../usb/DAP.c:379: response_count = 1U;
	mov	r6,#0x01
;	../../../usb/DAP.c:381: sequence_count = *request++;
	mov	r3,_request
	mov	r4,(_request + 1)
	mov	r5,(_request + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r5,a
	inc	_request
	clr	a
	cjne	a,_request,00133$
	inc	(_request + 1)
00133$:
;	../../../usb/DAP.c:382: while (sequence_count--) {
00106$:
	mov	ar4,r5
	dec	r5
	mov	a,r4
	jnz	00134$
	ljmp	00108$
00134$:
;	../../../usb/DAP.c:383: sequence_info = *request++;
	mov	r2,_request
	mov	r3,(_request + 1)
	mov	r4,(_request + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	inc	_request
	clr	a
	cjne	a,_request,00135$
	inc	(_request + 1)
00135$:
;	../../../usb/DAP.c:384: count = sequence_info & SWD_SEQUENCE_CLK;
	mov	a,#0x3f
	anl	a,r4
;	../../../usb/DAP.c:385: if (count == 0U) {
	mov	r3,a
	jnz	00102$
;	../../../usb/DAP.c:386: count = 64U;
	mov	r3,#0x40
00102$:
;	../../../usb/DAP.c:388: count = (count + 7U) / 8U;
	mov	r2,#0x00
	mov	a,#0x07
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r2
	swap	a
	rl	a
	xch	a,r3
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r3
	xch	a,r3
	anl	a,#0x1f
	xch	a,r3
	xrl	a,r3
	xch	a,r3
;	../../../usb/DAP.c:394: SWD_Sequence(sequence_info, request, response);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	_response
	push	(_response + 1)
	push	(_response + 2)
	push	_request
	push	(_request + 1)
	push	(_request + 2)
	mov	dpl,r4
	lcall	_SWD_Sequence
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../../../usb/DAP.c:398: if ((sequence_info & SWD_SEQUENCE_DIN) != 0U) {
	mov	a,r4
	jnb	acc.7,00104$
;	../../../usb/DAP.c:399: request_count++;
	inc	r7
;	../../../usb/DAP.c:400: response += count;
	mov	a,r3
	add	a,_response
	mov	_response,a
	clr	a
	addc	a,(_response + 1)
	mov	(_response + 1),a
;	../../../usb/DAP.c:401: response_count += count;
	mov	a,r3
	add	a,r6
	mov	r6,a
	sjmp	00106$
00104$:
;	../../../usb/DAP.c:403: request += count;
	mov	a,r3
	add	a,_request
	mov	_request,a
	clr	a
	addc	a,(_request + 1)
	mov	(_request + 1),a
;	../../../usb/DAP.c:404: request_count += count + 1U;
	inc	r3
	mov	a,r3
	add	a,r7
	mov	r7,a
	ljmp	00106$
00108$:
;	../../../usb/DAP.c:408: return (((uint16_t)request_count << 8) | response_count);
	mov	ar5,r7
	clr	a
	mov	r7,a
	mov	r4,a
	mov	a,r6
	orl	a,r7
	mov	dpl,a
	mov	a,r4
	orl	a,r5
	mov	dph,a
;	../../../usb/DAP.c:409: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_JTAG_Sequence'
;------------------------------------------------------------
;sequence_info             Allocated to registers r3 
;sequence_count            Allocated to registers 
;request_count             Allocated to registers r7 
;response_count            Allocated to registers 
;count                     Allocated to registers r5 
;------------------------------------------------------------
;	../../../usb/DAP.c:416: static uint16_t DAP_JTAG_Sequence()
;	-----------------------------------------
;	 function DAP_JTAG_Sequence
;	-----------------------------------------
_DAP_JTAG_Sequence:
;	../../../usb/DAP.c:424: *response++ = DAP_ERROR;
	mov	r5,_response
	mov	r6,(_response + 1)
	mov	r7,(_response + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xff
	lcall	__gptrput
	inc	_response
	clr	a
	cjne	a,_response,00124$
	inc	(_response + 1)
00124$:
;	../../../usb/DAP.c:425: request_count = 1U;
	mov	r7,#0x01
;	../../../usb/DAP.c:428: sequence_count = *request++;
	mov	r4,_request
	mov	r5,(_request + 1)
	mov	r6,(_request + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r6,a
	inc	_request
	clr	a
	cjne	a,_request,00125$
	inc	(_request + 1)
00125$:
;	../../../usb/DAP.c:429: while (sequence_count--) {
00103$:
	mov	ar5,r6
	dec	r6
	mov	a,r5
	jz	00105$
;	../../../usb/DAP.c:430: sequence_info = *request++;
	mov	r3,_request
	mov	r4,(_request + 1)
	mov	r5,(_request + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	_request
	clr	a
	cjne	a,_request,00127$
	inc	(_request + 1)
00127$:
;	../../../usb/DAP.c:431: count = sequence_info & JTAG_SEQUENCE_TCK;
	mov	a,#0x3f
	anl	a,r3
;	../../../usb/DAP.c:432: if (count == 0U) {
	mov	r5,a
	jnz	00102$
;	../../../usb/DAP.c:433: count = 64U;
	mov	r5,#0x40
00102$:
;	../../../usb/DAP.c:435: count = (count + 7U) / 8U;
	mov	r4,#0x00
	mov	a,#0x07
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r4
	swap	a
	rl	a
	xch	a,r5
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r5
	xch	a,r5
	anl	a,#0x1f
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	mov	r4,a
;	../../../usb/DAP.c:436: request += count;
	mov	a,r5
	add	a,_request
	mov	_request,a
	clr	a
	addc	a,(_request + 1)
	mov	(_request + 1),a
;	../../../usb/DAP.c:437: request_count += count + 1U;
	inc	r5
	mov	a,r5
	add	a,r7
	mov	r7,a
	sjmp	00103$
00105$:
;	../../../usb/DAP.c:440: return (((uint16_t)request_count << 8) | response_count);
	mov	ar6,r7
	mov	r7,#0x00
	mov	a,#0x01
	orl	a,r7
	mov	dpl,a
	mov	dph,r6
;	../../../usb/DAP.c:441: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_JTAG_Configure'
;------------------------------------------------------------
;count                     Allocated to registers r5 
;------------------------------------------------------------
;	../../../usb/DAP.c:448: static uint16_t DAP_JTAG_Configure()
;	-----------------------------------------
;	 function DAP_JTAG_Configure
;	-----------------------------------------
_DAP_JTAG_Configure:
;	../../../usb/DAP.c:451: count = *request;
	mov	r5,_request
	mov	r6,(_request + 1)
	mov	r7,(_request + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
;	../../../usb/DAP.c:452: *response = DAP_ERROR;
	mov	r4,_response
	mov	r6,(_response + 1)
	mov	r7,(_response + 2)
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	mov	a,#0xff
	lcall	__gptrput
;	../../../usb/DAP.c:454: return ((((uint16_t)count + 1U) << 8) | 1U);
	mov	r7,#0x00
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r7
00103$:
	mov	ar7,r5
	mov	r5,#0x00
	orl	ar5,#0x01
	mov	dpl,r5
	mov	dph,r7
;	../../../usb/DAP.c:455: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_JTAG_IDCode'
;------------------------------------------------------------
;	../../../usb/DAP.c:462: static uint16_t DAP_JTAG_IDCode()
;	-----------------------------------------
;	 function DAP_JTAG_IDCode
;	-----------------------------------------
_DAP_JTAG_IDCode:
;	../../../usb/DAP.c:465: *response = DAP_ERROR;
	mov	r5,_response
	mov	r6,(_response + 1)
	mov	r7,(_response + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xff
	lcall	__gptrput
;	../../../usb/DAP.c:466: return (((uint16_t)1U << 8) | 1U);
	mov	dptr,#0x0101
;	../../../usb/DAP.c:467: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_TransferConfigure'
;------------------------------------------------------------
;	../../../usb/DAP.c:474: static uint16_t DAP_TransferConfigure()
;	-----------------------------------------
;	 function DAP_TransferConfigure
;	-----------------------------------------
_DAP_TransferConfigure:
;	../../../usb/DAP.c:476: DAP_Data.transfer.idle_cycles = *(request + 0);
	mov	r5,_request
	mov	r6,(_request + 1)
	mov	r7,(_request + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dptr,#(_DAP_Data + 0x000b)
	movx	@dptr,a
;	../../../usb/DAP.c:477: DAP_Data.transfer.retry_count = (uint16_t) * (request + 1) | (uint16_t)(*(request + 2) << 8);
	mov	a,#0x01
	add	a,_request
	mov	r5,a
	clr	a
	addc	a,(_request + 1)
	mov	r6,a
	mov	r7,(_request + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	mov	a,#0x02
	add	a,_request
	mov	r3,a
	clr	a
	addc	a,(_request + 1)
	mov	r4,a
	mov	r6,(_request + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r6,a
	clr	a
	orl	ar5,a
	mov	a,r6
	orl	ar7,a
	mov	dptr,#(_DAP_Data + 0x000f)
	mov	a,r5
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../../../usb/DAP.c:478: DAP_Data.transfer.match_retry = (uint16_t) * (request + 3) | (uint16_t)(*(request + 4) << 8);
	mov	a,#0x03
	add	a,_request
	mov	r5,a
	clr	a
	addc	a,(_request + 1)
	mov	r6,a
	mov	r7,(_request + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	mov	a,#0x04
	add	a,_request
	mov	r3,a
	clr	a
	addc	a,(_request + 1)
	mov	r4,a
	mov	r6,(_request + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r6,a
	clr	a
	orl	ar5,a
	mov	a,r6
	orl	ar7,a
	mov	dptr,#(_DAP_Data + 0x0011)
	mov	a,r5
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../../../usb/DAP.c:480: *response = DAP_OK;
	mov	r5,_response
	mov	r6,(_response + 1)
	mov	r7,(_response + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../../../usb/DAP.c:481: return (((uint16_t)5U << 8) | 1U);
	mov	dptr,#0x0501
;	../../../usb/DAP.c:482: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_SWD_Transfer'
;------------------------------------------------------------
;request_head              Allocated to stack - _bp +36
;request_count             Allocated to stack - _bp +35
;request_value             Allocated to registers r6 
;response_head             Allocated to stack - _bp +39
;response_count            Allocated to stack - _bp +43
;response_value            Allocated to stack - _bp +42
;post_read                 Allocated to registers b0 
;check_write               Allocated to stack - _bp +30
;match_value               Allocated to stack - _bp +26
;match_retry               Allocated to registers r7 r5 
;retry                     Allocated to registers 
;data                      Allocated to stack - _bp +31
;req                       Allocated to registers r3 r5 r7 
;i                         Allocated to registers r3 
;i                         Allocated to registers r6 
;mismatch                  Allocated to registers b1 
;i                         Allocated to registers r6 
;i                         Allocated to registers r7 
;i                         Allocated to registers r4 
;i                         Allocated to registers r7 
;i                         Allocated to registers r7 
;sloc0                     Allocated to stack - _bp +7
;sloc1                     Allocated to stack - _bp +8
;sloc2                     Allocated to stack - _bp +5
;sloc3                     Allocated to stack - _bp +9
;sloc4                     Allocated to stack - _bp +3
;sloc5                     Allocated to stack - _bp +6
;sloc6                     Allocated to stack - _bp +1
;sloc7                     Allocated to stack - _bp +10
;sloc8                     Allocated to stack - _bp +2
;sloc9                     Allocated to stack - _bp +12
;sloc10                    Allocated to stack - _bp +11
;sloc11                    Allocated to stack - _bp +13
;sloc12                    Allocated to stack - _bp +4
;sloc13                    Allocated to stack - _bp +14
;sloc14                    Allocated to stack - _bp +50
;sloc15                    Allocated to stack - _bp +24
;sloc16                    Allocated to stack - _bp +15
;sloc17                    Allocated to stack - _bp +20
;sloc18                    Allocated to stack - _bp +56
;sloc19                    Allocated to stack - _bp +16
;sloc20                    Allocated to stack - _bp +19
;sloc21                    Allocated to stack - _bp +21
;------------------------------------------------------------
;	../../../usb/DAP.c:489: static uint16_t DAP_SWD_Transfer()
;	-----------------------------------------
;	 function DAP_SWD_Transfer
;	-----------------------------------------
_DAP_SWD_Transfer:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x2b
	mov	sp,a
;	../../../usb/DAP.c:504: request_head = request;
	mov	a,_bp
	add	a,#0x24
	mov	r0,a
	mov	@r0,_request
	inc	r0
	mov	@r0,(_request + 1)
	inc	r0
	mov	@r0,(_request + 2)
;	../../../usb/DAP.c:506: response_count = 0U;
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,#0x00
;	../../../usb/DAP.c:507: response_value = 0U;
	mov	a,_bp
	add	a,#0x2a
	mov	r0,a
	mov	@r0,#0x00
;	../../../usb/DAP.c:508: response_head = response;
	mov	a,_bp
	add	a,#0x27
	mov	r0,a
	mov	@r0,_response
	inc	r0
	mov	@r0,(_response + 1)
	inc	r0
	mov	@r0,(_response + 2)
;	../../../usb/DAP.c:509: response += 2;
	mov	a,#0x02
	add	a,_response
	mov	_response,a
	clr	a
	addc	a,(_response + 1)
	mov	(_response + 1),a
;	../../../usb/DAP.c:511: DAP_TransferAbort = 0U;
	mov	_DAP_TransferAbort,#0x00
;	../../../usb/DAP.c:513: post_read = 0U;
;	assignBit
	clr	b0
;	../../../usb/DAP.c:514: check_write = 0U;
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	@r0,#0x00
;	../../../usb/DAP.c:517: req++; // Ignore DAP index
	mov	a,#0x01
	add	a,_request
	mov	r3,a
	clr	a
	addc	a,(_request + 1)
	mov	r5,a
	mov	r7,(_request + 2)
;	../../../usb/DAP.c:519: request_count = *req++;
	mov	dpl,r3
	mov	dph,r5
	mov	b,r7
	mov	a,_bp
	add	a,#0x23
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,#0x01
	add	a,r3
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,_bp
	add	a,#0x1a
	mov	@r0,a
	mov	a,_bp
	add	a,#0x1f
	mov	r0,a
	mov	a,_bp
	add	a,#0x14
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	pop	ar0
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,r0
	inc	a
	mov	@r1,a
	mov	a,_bp
	add	a,#0x14
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r1
	inc	a
	mov	@r0,a
	pop	ar0
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,#0x02
	add	a,r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x14
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x02
	add	a,@r1
	mov	@r0,a
	pop	ar0
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	a,#0x03
	add	a,r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x14
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,#0x03
	add	a,@r1
	mov	@r0,a
	pop	ar0
	mov	r1,_bp
	inc	r1
	mov	@r1,ar0
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	@r1,ar0
	mov	r1,_bp
	inc	r1
	inc	r1
	mov	@r1,ar0
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	@r1,ar0
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	@r1,ar0
	mov	a,_bp
	add	a,#0x0d
	mov	r1,a
	mov	@r1,ar0
	mov	a,_bp
	add	a,#0x2b
	mov	r1,a
	mov	@r1,#0x00
	mov	a,_bp
	add	a,#0x23
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	pop	ar0
00242$:
;	../../../usb/DAP.c:521: for (; request_count != 0U; request_count--) {
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	jnz	00677$
	ljmp	00326$
00677$:
;	../../../usb/DAP.c:522: request_value = *req++;
	mov	a,_bp
	add	a,#0x15
	mov	r1,a
	mov	dpl,@r1
	inc	r1
	mov	dph,@r1
	inc	r1
	mov	b,@r1
	push	ar0
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	dec	r1
	dec	r1
	mov	@r1,dpl
	inc	r1
	mov	@r1,dph
	pop	ar0
;	../../../usb/DAP.c:523: if ((request_value & DAP_TRANSFER_RnW) != 0U) {
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	a,@r1
	jb	acc.1,00678$
	ljmp	00191$
00678$:
;	../../../usb/DAP.c:525: if (post_read) {
	jb	b0,00679$
	ljmp	00118$
00679$:
;	../../../usb/DAP.c:527: retry = DAP_Data.transfer.retry_count;
	mov	dptr,#(_DAP_Data + 0x000f)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
;	../../../usb/DAP.c:528: if ((request_value & (DAP_TRANSFER_APnDP | DAP_TRANSFER_MATCH_VALUE)) == DAP_TRANSFER_APnDP) {
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	ar4,@r1
	anl	ar4,#0x11
	mov	r6,#0x00
	cjne	r4,#0x01,00270$
	cjne	r6,#0x00,00270$
;	../../../usb/DAP.c:530: do {
	mov	ar7,r3
	mov	ar5,r2
00103$:
;	../../../usb/DAP.c:531: response_value = SWD_Transfer(request_value, data);
	mov	r1,_bp
	inc	r1
	mov	ar2,@r1
	mov	r4,#0x00
	mov	r6,#0x40
	push	ar7
	push	ar5
	push	ar0
	push	bits
	push	ar2
	push	ar4
	push	ar6
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	dpl,@r1
	lcall	_SWD_Transfer
	mov	r6,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar5
	pop	ar7
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	mov	@r1,ar6
;	../../../usb/DAP.c:532: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	cjne	@r1,#0x02,00113$
	mov	ar2,r7
	mov	ar6,r5
	dec	r7
	cjne	r7,#0xff,00684$
	dec	r5
00684$:
	mov	a,r2
	orl	a,r6
	jz	00113$
	mov	a,_DAP_TransferAbort
	jz	00103$
;	../../../usb/DAP.c:535: do {
	sjmp	00113$
00270$:
	mov	ar7,r3
	mov	ar5,r2
00108$:
;	../../../usb/DAP.c:536: response_value = SWD_Transfer(DP_RDBUFF | DAP_TRANSFER_RnW, data);
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	ar2,@r1
	mov	r4,#0x00
	mov	r6,#0x40
	push	ar7
	push	ar5
	push	ar0
	push	ar2
	push	ar4
	push	ar6
	mov	dpl,#0x0e
	lcall	_SWD_Transfer
	mov	r6,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar5
	pop	ar7
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	mov	@r1,ar6
;	../../../usb/DAP.c:537: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	cjne	@r1,#0x02,00110$
	mov	ar2,r7
	mov	ar6,r5
	dec	r7
	cjne	r7,#0xff,00689$
	dec	r5
00689$:
	mov	a,r2
	orl	a,r6
	jz	00110$
	mov	a,_DAP_TransferAbort
	jz	00108$
00110$:
;	../../../usb/DAP.c:538: post_read = 0U;
;	assignBit
	clr	b0
00113$:
;	../../../usb/DAP.c:540: if (response_value != DAP_TRANSFER_OK) {
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	cjne	@r1,#0x01,00692$
	sjmp	00693$
00692$:
	ljmp	00326$
00693$:
;	../../../usb/DAP.c:544: for (uint8_t i = 0; i < 4; i++) {
	mov	r3,#0x00
00224$:
	cjne	r3,#0x04,00694$
00694$:
	jnc	00118$
;	../../../usb/DAP.c:545: *response++ = data[i];
	mov	r7,_response
	mov	r5,(_response + 1)
	mov	r4,(_response + 2)
	push	ar0
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,r3
	add	a,@r0
	mov	r1,a
	pop	ar0
	mov	ar6,@r1
	mov	dpl,r7
	mov	dph,r5
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	_response
	clr	a
	cjne	a,_response,00696$
	inc	(_response + 1)
00696$:
;	../../../usb/DAP.c:544: for (uint8_t i = 0; i < 4; i++) {
	inc	r3
	sjmp	00224$
00118$:
;	../../../usb/DAP.c:548: if ((request_value & DAP_TRANSFER_MATCH_VALUE) != 0U) {
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	a,@r1
	jb	acc.4,00697$
	ljmp	00166$
00697$:
;	../../../usb/DAP.c:550: for (uint8_t i = 0; i < 4; i++)
	mov	a,_bp
	add	a,#0x15
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar7,@r1
	mov	r6,#0x00
00227$:
	cjne	r6,#0x04,00698$
00698$:
	jnc	00341$
;	../../../usb/DAP.c:551: match_value[i] = *(req++);
	push	ar0
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r1,a
	pop	ar0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	mov	r4,dpl
	mov	r5,dph
	mov	@r1,ar2
;	../../../usb/DAP.c:550: for (uint8_t i = 0; i < 4; i++)
	inc	r6
	sjmp	00227$
00341$:
	mov	a,_bp
	add	a,#0x15
	mov	r1,a
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar7
;	../../../usb/DAP.c:553: match_retry = DAP_Data.transfer.match_retry;
	mov	dptr,#(_DAP_Data + 0x0011)
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	../../../usb/DAP.c:554: if ((request_value & DAP_TRANSFER_APnDP) != 0U) {
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	a,@r1
	jnb	acc.0,00128$
;	../../../usb/DAP.c:556: retry = DAP_Data.transfer.retry_count;
	mov	dptr,#(_DAP_Data + 0x000f)
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	movx	a,@dptr
	mov	@r1,a
	inc	dptr
	movx	a,@dptr
	inc	r1
	mov	@r1,a
;	../../../usb/DAP.c:557: do {
00122$:
;	../../../usb/DAP.c:558: response_value = SWD_Transfer(request_value, NULL);
	push	ar7
	push	ar5
	push	ar0
	push	bits
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	dpl,@r1
	lcall	_SWD_Transfer
	mov	r4,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar5
	pop	ar7
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	mov	@r1,ar4
;	../../../usb/DAP.c:559: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	cjne	@r1,#0x02,00124$
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	mov	ar2,@r1
	inc	r1
	mov	ar6,@r1
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	dec	@r1
	cjne	@r1,#0xff,00703$
	inc	r1
	dec	@r1
00703$:
	mov	a,r2
	orl	a,r6
	jz	00124$
	mov	a,_DAP_TransferAbort
	jz	00122$
00124$:
;	../../../usb/DAP.c:560: if (response_value != DAP_TRANSFER_OK) {
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	cjne	@r1,#0x01,00706$
	sjmp	00707$
00706$:
	ljmp	00326$
00707$:
;	../../../usb/DAP.c:561: break;
00128$:
;	../../../usb/DAP.c:564: bool mismatch = false;
;	assignBit
	clr	b1
;	../../../usb/DAP.c:565: do {
	mov	a,_bp
	add	a,#0x18
	mov	r1,a
	mov	@r1,ar7
	inc	r1
	mov	@r1,ar5
00138$:
;	../../../usb/DAP.c:567: retry = DAP_Data.transfer.retry_count;
	mov	dptr,#(_DAP_Data + 0x000f)
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	../../../usb/DAP.c:568: do {
00131$:
;	../../../usb/DAP.c:569: response_value = SWD_Transfer(request_value, data);
	mov	ar1,r0
	mov	r4,#0x00
	mov	r6,#0x40
	push	ar7
	push	ar5
	push	ar0
	push	bits
	push	ar1
	push	ar4
	push	ar6
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	dpl,@r1
	lcall	_SWD_Transfer
	mov	r6,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar5
	pop	ar7
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	mov	@r1,ar6
;	../../../usb/DAP.c:570: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	cjne	@r1,#0x02,00133$
	mov	ar2,r7
	mov	ar6,r5
	dec	r7
	cjne	r7,#0xff,00710$
	dec	r5
00710$:
	mov	a,r2
	orl	a,r6
	jz	00133$
	mov	a,_DAP_TransferAbort
	jz	00131$
00133$:
;	../../../usb/DAP.c:571: if (response_value != DAP_TRANSFER_OK) {
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	cjne	@r1,#0x01,00713$
	sjmp	00714$
00713$:
	ljmp	00140$
00714$:
;	../../../usb/DAP.c:574: mismatch = ((data[0] & DAP_Data.transfer.match_mask[0]) != match_value[0]
	mov	ar6,@r0
	mov	dptr,#(_DAP_Data + 0x0013)
	movx	a,@dptr
	anl	ar6,a
	mov	a,_bp
	add	a,#0x0f
	mov	r1,a
	mov	ar1,@r1
	mov	ar2,@r1
	mov	a,r6
	cjne	a,ar2,00715$
	setb	c
	sjmp	00716$
00715$:
	clr	c
00716$:
	mov	b2,c
	jnc	00253$
;	../../../usb/DAP.c:575: || (data[1] & DAP_Data.transfer.match_mask[1]) != match_value[1]
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	ar1,@r1
	mov	ar6,@r1
	mov	dptr,#(_DAP_Data + 0x0014)
	movx	a,@dptr
	anl	ar6,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	ar1,@r1
	mov	ar2,@r1
	mov	a,r6
	cjne	a,ar2,00718$
	setb	c
	sjmp	00719$
00718$:
	clr	c
00719$:
	mov	b2,c
	jnc	00253$
;	../../../usb/DAP.c:576: || (data[2] & DAP_Data.transfer.match_mask[2]) != match_value[2]
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	ar1,@r1
	mov	ar6,@r1
	mov	dptr,#(_DAP_Data + 0x0015)
	movx	a,@dptr
	anl	ar6,a
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	ar1,@r1
	mov	ar2,@r1
	mov	a,r6
	cjne	a,ar2,00721$
	setb	c
	sjmp	00722$
00721$:
	clr	c
00722$:
	mov	b2,c
	jnc	00253$
;	../../../usb/DAP.c:577: || (data[3] & DAP_Data.transfer.match_mask[3]) != match_value[3]);
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	ar1,@r1
	mov	ar6,@r1
	mov	dptr,#(_DAP_Data + 0x0016)
	movx	a,@dptr
	anl	ar6,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	ar1,@r1
	mov	ar2,@r1
	mov	a,r6
	cjne	a,ar2,00724$
	setb	c
	sjmp	00725$
00724$:
	clr	c
00725$:
	mov	b2,c
;	assignBit
	jbc	b2,00254$
00253$:
;	assignBit
	setb	b2
00254$:
;	assignBit
	mov	c,b2
	mov	b1,c
;	../../../usb/DAP.c:578: } while (mismatch && match_retry-- && !DAP_TransferAbort);
	jnb	b2,00140$
	mov	a,_bp
	add	a,#0x18
	mov	r1,a
	mov	ar2,@r1
	inc	r1
	mov	ar6,@r1
	mov	a,_bp
	add	a,#0x18
	mov	r1,a
	dec	@r1
	cjne	@r1,#0xff,00728$
	inc	r1
	dec	@r1
00728$:
	mov	a,r2
	orl	a,r6
	jz	00140$
	mov	a,_DAP_TransferAbort
	jnz	00730$
	ljmp	00138$
00730$:
00140$:
;	../../../usb/DAP.c:579: if (mismatch) {
	jnb	b1,00142$
;	../../../usb/DAP.c:580: response_value |= DAP_TRANSFER_MISMATCH;
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	mov	a,@r1
	orl	a,#0x10
	mov	@r1,a
00142$:
;	../../../usb/DAP.c:582: if (response_value != DAP_TRANSFER_OK) {
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	cjne	@r1,#0x01,00732$
	ljmp	00167$
00732$:
;	../../../usb/DAP.c:583: break;
	ljmp	00326$
00166$:
;	../../../usb/DAP.c:587: retry = DAP_Data.transfer.retry_count;
	mov	dptr,#(_DAP_Data + 0x000f)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	../../../usb/DAP.c:588: if ((request_value & DAP_TRANSFER_APnDP) != 0U) {
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	a,@r1
	jnb	acc.0,00301$
;	../../../usb/DAP.c:590: if (post_read == 0U) {
	jnb	b0,00734$
	ljmp	00167$
00734$:
;	../../../usb/DAP.c:592: do {
	mov	ar5,r2
	mov	ar3,r6
00147$:
;	../../../usb/DAP.c:593: response_value = SWD_Transfer(request_value, NULL);
	push	ar5
	push	ar3
	push	ar0
	push	bits
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	dpl,@r1
	lcall	_SWD_Transfer
	mov	r4,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar3
	pop	ar5
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	mov	@r1,ar4
;	../../../usb/DAP.c:594: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	cjne	@r1,#0x02,00149$
	mov	ar4,r5
	mov	ar7,r3
	dec	r5
	cjne	r5,#0xff,00737$
	dec	r3
00737$:
	mov	a,r4
	orl	a,r7
	jz	00149$
	mov	a,_DAP_TransferAbort
	jz	00147$
00149$:
;	../../../usb/DAP.c:595: if (response_value != DAP_TRANSFER_OK) {
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	cjne	@r1,#0x01,00740$
	sjmp	00741$
00740$:
	ljmp	00326$
00741$:
;	../../../usb/DAP.c:598: post_read = 1U;
;	assignBit
	setb	b0
	ljmp	00167$
;	../../../usb/DAP.c:602: do {
00301$:
	mov	ar7,r0
	mov	ar5,r2
00156$:
;	../../../usb/DAP.c:603: response_value = SWD_Transfer(request_value, data);
	mov	ar2,r7
	mov	r3,#0x00
	mov	r4,#0x40
	push	ar7
	push	ar6
	push	ar5
	push	ar0
	push	bits
	push	ar2
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	dpl,@r1
	lcall	_SWD_Transfer
	mov	r4,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	mov	@r1,ar4
;	../../../usb/DAP.c:604: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	cjne	@r1,#0x02,00158$
	mov	ar3,r5
	mov	ar4,r6
	dec	r5
	cjne	r5,#0xff,00744$
	dec	r6
00744$:
	mov	a,r3
	orl	a,r4
	jz	00158$
	mov	a,_DAP_TransferAbort
	jz	00156$
00158$:
;	../../../usb/DAP.c:605: if (response_value != DAP_TRANSFER_OK) {
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	cjne	@r1,#0x01,00747$
	sjmp	00748$
00747$:
	ljmp	00326$
00748$:
;	../../../usb/DAP.c:609: for (uint8_t i = 0; i < 4; i++) {
	mov	r6,#0x00
00230$:
	cjne	r6,#0x04,00749$
00749$:
	jnc	00167$
;	../../../usb/DAP.c:610: *response++ = data[i];
	mov	r3,_response
	mov	r4,(_response + 1)
	mov	r5,(_response + 2)
	mov	a,r6
	add	a,r7
	mov	r1,a
	mov	ar2,@r1
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
	inc	_response
	clr	a
	cjne	a,_response,00751$
	inc	(_response + 1)
00751$:
;	../../../usb/DAP.c:609: for (uint8_t i = 0; i < 4; i++) {
	inc	r6
	sjmp	00230$
00167$:
;	../../../usb/DAP.c:614: check_write = 0U;
	mov	a,_bp
	add	a,#0x1e
	mov	r1,a
	mov	@r1,#0x00
	ljmp	00192$
00191$:
;	../../../usb/DAP.c:617: if (post_read) {
	jb	b0,00752$
	ljmp	00313$
00752$:
;	../../../usb/DAP.c:619: retry = DAP_Data.transfer.retry_count;
	mov	dptr,#(_DAP_Data + 0x000f)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	../../../usb/DAP.c:620: do {
	mov	ar5,r0
00170$:
;	../../../usb/DAP.c:621: response_value = SWD_Transfer(DP_RDBUFF | DAP_TRANSFER_RnW, data);
	mov	ar2,r5
	mov	r3,#0x00
	mov	r4,#0x40
	push	ar7
	push	ar6
	push	ar5
	push	ar0
	push	bits
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,#0x0e
	lcall	_SWD_Transfer
	mov	r4,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	mov	@r1,ar4
;	../../../usb/DAP.c:622: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	cjne	@r1,#0x02,00172$
	mov	ar3,r6
	mov	ar4,r7
	dec	r6
	cjne	r6,#0xff,00755$
	dec	r7
00755$:
	mov	a,r3
	orl	a,r4
	jz	00172$
	mov	a,_DAP_TransferAbort
	jz	00170$
00172$:
;	../../../usb/DAP.c:623: if (response_value != DAP_TRANSFER_OK) {
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	cjne	@r1,#0x01,00758$
	sjmp	00759$
00758$:
	ljmp	00326$
00759$:
;	../../../usb/DAP.c:627: for (uint8_t i = 0; i < 4; i++) {
	mov	r7,#0x00
00233$:
	cjne	r7,#0x04,00760$
00760$:
	jnc	00175$
;	../../../usb/DAP.c:628: *response++ = data[i];
	mov	r3,_response
	mov	r4,(_response + 1)
	mov	r6,(_response + 2)
	mov	a,r7
	add	a,r5
	mov	r1,a
	mov	ar2,@r1
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	mov	a,r2
	lcall	__gptrput
	inc	_response
	clr	a
	cjne	a,_response,00762$
	inc	(_response + 1)
00762$:
;	../../../usb/DAP.c:627: for (uint8_t i = 0; i < 4; i++) {
	inc	r7
	sjmp	00233$
00175$:
;	../../../usb/DAP.c:630: post_read = 0U;
;	assignBit
	clr	b0
;	../../../usb/DAP.c:633: for (uint8_t i = 0; i < 4; i++) {
00313$:
	mov	a,_bp
	add	a,#0x15
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar7,@r1
	mov	r4,#0x00
00236$:
	cjne	r4,#0x04,00763$
00763$:
	jnc	00349$
;	../../../usb/DAP.c:634: data[i] = *req++;
	push	ar0
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r1,a
	pop	ar0
	mov	dpl,r6
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r6,dpl
	mov	r5,dph
	mov	@r1,ar3
;	../../../usb/DAP.c:633: for (uint8_t i = 0; i < 4; i++) {
	inc	r4
	sjmp	00236$
00349$:
	mov	a,_bp
	add	a,#0x15
	mov	r1,a
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar7
;	../../../usb/DAP.c:636: if ((request_value & DAP_TRANSFER_MATCH_MASK) != 0U) {
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	a,@r1
	jnb	acc.5,00188$
;	../../../usb/DAP.c:638: for (uint8_t i = 0; i < 4; i++)
	mov	r7,#0x00
00239$:
	cjne	r7,#0x04,00766$
00766$:
	jnc	00179$
;	../../../usb/DAP.c:639: DAP_Data.transfer.match_mask[i] = data[i];
	mov	a,r7
	add	a,#(_DAP_Data + 0x0013)
	mov	r5,a
	clr	a
	addc	a,#((_DAP_Data + 0x0013) >> 8)
	mov	r6,a
	push	ar0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,r7
	add	a,@r0
	mov	r1,a
	pop	ar0
	mov	ar4,@r1
	mov	dpl,r5
	mov	dph,r6
	mov	a,r4
	movx	@dptr,a
;	../../../usb/DAP.c:638: for (uint8_t i = 0; i < 4; i++)
	inc	r7
	sjmp	00239$
00179$:
;	../../../usb/DAP.c:640: response_value = DAP_TRANSFER_OK;
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	mov	@r1,#0x01
	sjmp	00192$
00188$:
;	../../../usb/DAP.c:643: retry = DAP_Data.transfer.retry_count;
	mov	dptr,#(_DAP_Data + 0x000f)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	../../../usb/DAP.c:644: do {
00182$:
;	../../../usb/DAP.c:645: response_value = SWD_Transfer(request_value, data);
	mov	a,_bp
	add	a,#0x0d
	mov	r1,a
	mov	ar3,@r1
	mov	r4,#0x00
	mov	r5,#0x40
	push	ar7
	push	ar6
	push	ar0
	push	bits
	push	ar3
	push	ar4
	push	ar5
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	dpl,@r1
	lcall	_SWD_Transfer
	mov	r5,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	mov	@r1,ar5
;	../../../usb/DAP.c:646: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	cjne	@r1,#0x02,00184$
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00770$
	dec	r7
00770$:
	mov	a,r4
	orl	a,r5
	jz	00184$
	mov	a,_DAP_TransferAbort
	jz	00182$
00184$:
;	../../../usb/DAP.c:647: if (response_value != DAP_TRANSFER_OK) {
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	cjne	@r1,#0x01,00326$
;	../../../usb/DAP.c:650: check_write = 1U;
	mov	a,_bp
	add	a,#0x1e
	mov	r1,a
	mov	@r1,#0x01
00192$:
;	../../../usb/DAP.c:653: response_count++;
	mov	a,_bp
	add	a,#0x2b
	mov	r1,a
	inc	@r1
	mov	a,_bp
	add	a,#0x2b
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	pop	ar0
;	../../../usb/DAP.c:654: if (DAP_TransferAbort) {
	mov	a,_DAP_TransferAbort
	jnz	00326$
;	../../../usb/DAP.c:521: for (; request_count != 0U; request_count--) {
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	dec	@r1
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x23
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	pop	ar0
	ljmp	00242$
00326$:
	mov	a,_bp
	add	a,#0x23
	mov	r1,a
	mov	ar7,@r1
00245$:
;	../../../usb/DAP.c:659: for (; request_count != 0U; request_count--) {
	mov	a,r7
	jz	00201$
;	../../../usb/DAP.c:661: request_value = *req++;
	mov	a,_bp
	add	a,#0x15
	mov	r1,a
	mov	dpl,@r1
	inc	r1
	mov	dph,@r1
	inc	r1
	mov	b,@r1
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	dec	r1
	dec	r1
	mov	@r1,dpl
	inc	r1
	mov	@r1,dph
;	../../../usb/DAP.c:662: if ((request_value & DAP_TRANSFER_RnW) != 0U) {
	mov	a,r6
	jnb	acc.1,00199$
;	../../../usb/DAP.c:664: if ((request_value & DAP_TRANSFER_MATCH_VALUE) != 0U) {
	mov	a,r6
	jnb	acc.4,00246$
;	../../../usb/DAP.c:666: req += 4;
	mov	a,_bp
	add	a,#0x15
	mov	r1,a
	mov	a,#0x04
	add	a,@r1
	mov	@r1,a
	clr	a
	inc	r1
	addc	a,@r1
	mov	@r1,a
	sjmp	00246$
00199$:
;	../../../usb/DAP.c:670: req += 4;
	mov	a,_bp
	add	a,#0x15
	mov	r1,a
	mov	a,#0x04
	add	a,@r1
	mov	@r1,a
	clr	a
	inc	r1
	addc	a,@r1
	mov	@r1,a
00246$:
;	../../../usb/DAP.c:659: for (; request_count != 0U; request_count--) {
	dec	r7
	sjmp	00245$
00201$:
;	../../../usb/DAP.c:674: if (response_value == DAP_TRANSFER_OK) {
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	cjne	@r1,#0x01,00779$
	sjmp	00780$
00779$:
	ljmp	00222$
00780$:
;	../../../usb/DAP.c:675: if (post_read) {
	jb	b0,00781$
	ljmp	00218$
00781$:
;	../../../usb/DAP.c:677: retry = DAP_Data.transfer.retry_count;
	mov	dptr,#(_DAP_Data + 0x000f)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	../../../usb/DAP.c:678: do {
	mov	ar5,r0
00204$:
;	../../../usb/DAP.c:679: response_value = SWD_Transfer(DP_RDBUFF | DAP_TRANSFER_RnW, data);
	mov	ar2,r5
	mov	r3,#0x00
	mov	r4,#0x40
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,#0x0e
	lcall	_SWD_Transfer
	mov	r4,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x2a
	mov	r0,a
	mov	@r0,ar4
;	../../../usb/DAP.c:680: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	mov	a,_bp
	add	a,#0x2a
	mov	r0,a
	cjne	@r0,#0x02,00206$
	mov	ar3,r6
	mov	ar4,r7
	dec	r6
	cjne	r6,#0xff,00784$
	dec	r7
00784$:
	mov	a,r3
	orl	a,r4
	jz	00206$
	mov	a,_DAP_TransferAbort
	jz	00204$
00206$:
;	../../../usb/DAP.c:681: if (response_value != DAP_TRANSFER_OK) {
	mov	a,_bp
	add	a,#0x2a
	mov	r0,a
	cjne	@r0,#0x01,00222$
;	../../../usb/DAP.c:685: for (uint8_t i = 0; i < 4; i++) {
	mov	r7,#0x00
00248$:
	cjne	r7,#0x04,00789$
00789$:
	jnc	00222$
;	../../../usb/DAP.c:686: *response++ = data[i];
	mov	r3,_response
	mov	r4,(_response + 1)
	mov	r6,(_response + 2)
	mov	a,r7
	add	a,r5
	mov	r1,a
	mov	ar2,@r1
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	mov	a,r2
	lcall	__gptrput
	inc	_response
	clr	a
	cjne	a,_response,00791$
	inc	(_response + 1)
00791$:
;	../../../usb/DAP.c:685: for (uint8_t i = 0; i < 4; i++) {
	inc	r7
	sjmp	00248$
00218$:
;	../../../usb/DAP.c:688: } else if (check_write) {
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r0
	jz	00222$
;	../../../usb/DAP.c:690: retry = DAP_Data.transfer.retry_count;
	mov	dptr,#(_DAP_Data + 0x000f)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	../../../usb/DAP.c:691: do {
00212$:
;	../../../usb/DAP.c:692: response_value = SWD_Transfer(DP_RDBUFF | DAP_TRANSFER_RnW, NULL);
	push	ar7
	push	ar6
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,#0x0e
	lcall	_SWD_Transfer
	mov	r5,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x2a
	mov	r0,a
	mov	@r0,ar5
;	../../../usb/DAP.c:693: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	mov	a,_bp
	add	a,#0x2a
	mov	r0,a
	cjne	@r0,#0x02,00222$
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00795$
	dec	r7
00795$:
	mov	a,r4
	orl	a,r5
	jz	00222$
	mov	a,_DAP_TransferAbort
	jz	00212$
;	../../../usb/DAP.c:697: end:
00222$:
;	../../../usb/DAP.c:698: *(response_head + 0) = (uint8_t)response_count;
	mov	a,_bp
	add	a,#0x27
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x13
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
;	../../../usb/DAP.c:699: *(response_head + 1) = (uint8_t)response_value;
	mov	a,_bp
	add	a,#0x27
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x2a
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	../../../usb/DAP.c:701: return (((uint16_t)(request - request_head) << 8) | (uint16_t)(response - response_head));
	mov	a,_bp
	add	a,#0x24
	mov	r0,a
	mov	a,_request
	clr	c
	subb	a,@r0
	mov	r6,a
	mov	a,(_request + 1)
	inc	r0
	subb	a,@r0
	mov	ar7,r6
	mov	r6,#0x00
	mov	a,_bp
	add	a,#0x27
	mov	r0,a
	mov	a,_response
	clr	c
	subb	a,@r0
	mov	r4,a
	mov	a,(_response + 1)
	inc	r0
	subb	a,@r0
	mov	r5,a
	mov	a,r4
	orl	a,r6
	mov	dpl,a
	mov	a,r5
	orl	a,r7
	mov	dph,a
;	../../../usb/DAP.c:702: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_Dummy_Transfer'
;------------------------------------------------------------
;request_head              Allocated to stack - _bp +1
;request_count             Allocated to registers 
;request_value             Allocated to registers r3 
;req                       Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	../../../usb/DAP.c:709: static uint16_t DAP_Dummy_Transfer()
;	-----------------------------------------
;	 function DAP_Dummy_Transfer
;	-----------------------------------------
_DAP_Dummy_Transfer:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
;	../../../usb/DAP.c:715: request_head = request;
	mov	r0,_bp
	inc	r0
	mov	@r0,_request
	inc	r0
	mov	@r0,(_request + 1)
	inc	r0
	mov	@r0,(_request + 2)
;	../../../usb/DAP.c:718: req++; // Ignore DAP index
	mov	a,#0x01
	add	a,_request
	mov	r2,a
	clr	a
	addc	a,(_request + 1)
	mov	r3,a
	mov	r4,(_request + 2)
;	../../../usb/DAP.c:720: request_count = *req++;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x01
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r5,a
00108$:
;	../../../usb/DAP.c:722: for (; request_count != 0U; request_count--) {
	mov	a,r7
	jz	00106$
;	../../../usb/DAP.c:724: request_value = *req++;
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r6,dpl
	mov	r5,dph
;	../../../usb/DAP.c:725: if ((request_value & DAP_TRANSFER_RnW) != 0U) {
	mov	a,r3
	jnb	acc.1,00104$
;	../../../usb/DAP.c:727: if ((request_value & DAP_TRANSFER_MATCH_VALUE) != 0U) {
	mov	a,r3
	jnb	acc.4,00109$
;	../../../usb/DAP.c:729: req += 4;
	mov	a,#0x04
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r5
	mov	r5,a
	sjmp	00109$
00104$:
;	../../../usb/DAP.c:733: req += 4;
	mov	a,#0x04
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r5
	mov	r5,a
00109$:
;	../../../usb/DAP.c:722: for (; request_count != 0U; request_count--) {
	dec	r7
	sjmp	00108$
00106$:
;	../../../usb/DAP.c:737: *(response + 0) = 0U; // Response count
	mov	r2,_response
	mov	r3,(_response + 1)
	mov	r7,(_response + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../../../usb/DAP.c:738: *(response + 1) = 0U; // Response value
	inc	a
	add	a,_response
	mov	r2,a
	clr	a
	addc	a,(_response + 1)
	mov	r3,a
	mov	r7,(_response + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../../../usb/DAP.c:740: return (((uint16_t)(req - request_head) << 8) | 2U);
	mov	r0,_bp
	inc	r0
	mov	a,r6
	clr	c
	subb	a,@r0
	mov	r6,a
	mov	a,r5
	inc	r0
	subb	a,@r0
	mov	ar5,r6
	mov	r6,#0x00
	orl	ar6,#0x02
	mov	dpl,r6
	mov	dph,r5
;	../../../usb/DAP.c:741: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_Transfer'
;------------------------------------------------------------
;num                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../../usb/DAP.c:748: static uint16_t DAP_Transfer()
;	-----------------------------------------
;	 function DAP_Transfer
;	-----------------------------------------
_DAP_Transfer:
;	../../../usb/DAP.c:752: switch (DAP_Data.debug_port) {
	mov	dptr,#_DAP_Data
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00102$
;	../../../usb/DAP.c:754: num = DAP_SWD_Transfer();
	lcall	_DAP_SWD_Transfer
	mov	r6,dpl
	mov	r7,dph
;	../../../usb/DAP.c:755: break;
;	../../../usb/DAP.c:756: default:
	sjmp	00103$
00102$:
;	../../../usb/DAP.c:757: num = DAP_Dummy_Transfer();
	lcall	_DAP_Dummy_Transfer
	mov	r4,dpl
	mov	r5,dph
	mov	ar6,r4
	mov	ar7,r5
;	../../../usb/DAP.c:759: }
00103$:
;	../../../usb/DAP.c:761: return (num);
	mov	dpl,r6
	mov	dph,r7
;	../../../usb/DAP.c:762: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_SWD_TransferBlock'
;------------------------------------------------------------
;request_count             Allocated to stack - _bp +10
;request_value             Allocated to stack - _bp +14
;response_count            Allocated to stack - _bp +12
;response_value            Allocated to stack - _bp +22
;response_head             Allocated to stack - _bp +15
;retry                     Allocated to registers 
;data                      Allocated to stack - _bp +18
;req                       Allocated to registers r3 r4 r5 
;i                         Allocated to registers r6 
;i                         Allocated to registers r5 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +6
;sloc2                     Allocated to stack - _bp +25
;sloc3                     Allocated to stack - _bp +8
;sloc4                     Allocated to stack - _bp +3
;sloc5                     Allocated to stack - _bp +31
;------------------------------------------------------------
;	../../../usb/DAP.c:768: static uint8_t DAP_SWD_TransferBlock()
;	-----------------------------------------
;	 function DAP_SWD_TransferBlock
;	-----------------------------------------
_DAP_SWD_TransferBlock:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x16
	mov	sp,a
;	../../../usb/DAP.c:778: response_count = 0U;
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../../../usb/DAP.c:779: response_value = 0U;
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	@r0,#0x00
;	../../../usb/DAP.c:780: response_head = response;
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	@r0,_response
	inc	r0
	mov	@r0,(_response + 1)
	inc	r0
	mov	@r0,(_response + 2)
;	../../../usb/DAP.c:781: response += 3;
	mov	a,#0x03
	add	a,_response
	mov	_response,a
	clr	a
	addc	a,(_response + 1)
	mov	(_response + 1),a
;	../../../usb/DAP.c:783: DAP_TransferAbort = 0U;
	mov	_DAP_TransferAbort,#0x00
;	../../../usb/DAP.c:786: req++; // Ignore DAP index
	mov	a,#0x01
	add	a,_request
	mov	r3,a
	clr	a
	addc	a,(_request + 1)
	mov	r4,a
	mov	r5,(_request + 2)
;	../../../usb/DAP.c:788: request_count = (uint16_t)(*(req + 0) << 0) | (uint16_t)(*(req + 1) << 8);
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	r7,#0x00
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar7
	mov	a,#0x01
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	r2,#0x00
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	orl	ar2,a
	inc	r0
	mov	a,@r0
	orl	ar7,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar7
;	../../../usb/DAP.c:789: req += 2;
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
;	../../../usb/DAP.c:790: if (request_count == 0U) {
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00300$
	ljmp	00145$
00300$:
;	../../../usb/DAP.c:794: request_value = *req++;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x01
	add	a,r3
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
;	../../../usb/DAP.c:795: if ((request_value & DAP_TRANSFER_RnW) != 0U) {
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,@r0
	jb	acc.1,00301$
	ljmp	00177$
00301$:
;	../../../usb/DAP.c:797: if ((request_value & DAP_TRANSFER_APnDP) != 0U) {
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,@r0
	jnb	acc.0,00169$
;	../../../usb/DAP.c:799: retry = DAP_Data.transfer.retry_count;
	mov	dptr,#(_DAP_Data + 0x000f)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	../../../usb/DAP.c:800: do {
00105$:
;	../../../usb/DAP.c:801: response_value = SWD_Transfer(request_value, NULL);
	push	ar6
	push	ar5
	push	ar6
	push	ar5
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	lcall	_SWD_Transfer
	mov	r7,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	@r0,ar7
;	../../../usb/DAP.c:802: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	cjne	@r0,#0x02,00303$
	sjmp	00304$
00303$:
	pop	ar5
	pop	ar6
	sjmp	00107$
00304$:
	pop	ar5
	pop	ar6
	mov	ar2,r6
	mov	ar7,r5
	dec	r6
	cjne	r6,#0xff,00305$
	dec	r5
00305$:
	mov	a,r2
	orl	a,r7
	jz	00107$
	mov	a,_DAP_TransferAbort
	jz	00105$
00107$:
;	../../../usb/DAP.c:803: if (response_value != DAP_TRANSFER_OK) {
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	cjne	@r0,#0x01,00308$
	sjmp	00309$
00308$:
	ljmp	00145$
00309$:
;	../../../usb/DAP.c:807: while (request_count--) {
00169$:
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar4,@r0
00123$:
	mov	ar6,r5
	mov	ar7,r4
	dec	r5
	cjne	r5,#0xff,00310$
	dec	r4
00310$:
	mov	a,r6
	orl	a,r7
	jnz	00311$
	ljmp	00187$
00311$:
;	../../../usb/DAP.c:809: if ((request_count == 0U) && ((request_value & DAP_TRANSFER_APnDP) != 0U)) {
	mov	a,r5
	orl	a,r4
	jnz	00113$
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,@r0
	jnb	acc.0,00113$
;	../../../usb/DAP.c:811: request_value = DP_RDBUFF | DAP_TRANSFER_RnW;
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,#0x0e
00113$:
;	../../../usb/DAP.c:813: retry = DAP_Data.transfer.retry_count;
	mov	dptr,#(_DAP_Data + 0x000f)
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
;	../../../usb/DAP.c:814: do {
	mov	a,_bp
	add	a,#0x12
	mov	r3,a
00117$:
;	../../../usb/DAP.c:815: response_value = SWD_Transfer(request_value, data);
	mov	ar2,r3
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	lcall	_SWD_Transfer
	mov	r7,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	@r0,ar7
;	../../../usb/DAP.c:816: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	cjne	@r0,#0x02,00119$
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	dec	@r0
	cjne	@r0,#0xff,00316$
	inc	r0
	dec	@r0
00316$:
	mov	a,r2
	orl	a,r7
	jz	00119$
	mov	a,_DAP_TransferAbort
	jz	00117$
00119$:
;	../../../usb/DAP.c:817: if (response_value != DAP_TRANSFER_OK) {
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	cjne	@r0,#0x01,00319$
	sjmp	00320$
00319$:
	ljmp	00187$
00320$:
;	../../../usb/DAP.c:821: for (uint8_t i = 0; i < 4; i++) {
	mov	r6,#0x00
00147$:
	cjne	r6,#0x04,00321$
00321$:
	jnc	00122$
;	../../../usb/DAP.c:822: *response++ = data[i];
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,_response
	inc	r0
	mov	@r0,(_response + 1)
	inc	r0
	mov	@r0,(_response + 2)
	mov	a,r6
	add	a,r3
	mov	r1,a
	mov	ar7,@r1
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
	inc	_response
	clr	a
	cjne	a,_response,00323$
	inc	(_response + 1)
00323$:
;	../../../usb/DAP.c:821: for (uint8_t i = 0; i < 4; i++) {
	inc	r6
	sjmp	00147$
00122$:
;	../../../usb/DAP.c:824: response_count++;
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00324$
	inc	r0
	inc	@r0
00324$:
	ljmp	00123$
;	../../../usb/DAP.c:828: while (request_count--) {
00177$:
	mov	a,_bp
	add	a,#0x12
	mov	r7,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00134$:
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	dec	@r0
	cjne	@r0,#0xff,00325$
	inc	r0
	dec	@r0
00325$:
	mov	a,r2
	orl	a,r5
	jnz	00326$
	ljmp	00136$
00326$:
;	../../../usb/DAP.c:830: for (uint8_t i = 0; i < 4; i++) {
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	mov	r5,#0x00
00150$:
	cjne	r5,#0x04,00327$
00327$:
	jnc	00184$
;	../../../usb/DAP.c:831: data[i] = *req++;
	mov	a,r5
	add	a,r7
	mov	r1,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
	mov	@r1,ar2
;	../../../usb/DAP.c:830: for (uint8_t i = 0; i < 4; i++) {
	inc	r5
	sjmp	00150$
00184$:
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar6
;	../../../usb/DAP.c:835: retry = DAP_Data.transfer.retry_count;
	mov	dptr,#(_DAP_Data + 0x000f)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	../../../usb/DAP.c:836: do {
00129$:
;	../../../usb/DAP.c:837: response_value = SWD_Transfer(request_value, data);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	ar3,@r0
	mov	r4,#0x00
	mov	r6,#0x40
	push	ar7
	push	ar5
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	lcall	_SWD_Transfer
	mov	r6,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar5
	pop	ar7
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	@r0,ar6
;	../../../usb/DAP.c:838: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	cjne	@r0,#0x02,00131$
	mov	ar4,r2
	mov	ar6,r5
	dec	r2
	cjne	r2,#0xff,00331$
	dec	r5
00331$:
	mov	a,r4
	orl	a,r6
	jz	00131$
	mov	a,_DAP_TransferAbort
	jz	00129$
00131$:
;	../../../usb/DAP.c:839: if (response_value != DAP_TRANSFER_OK) {
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	cjne	@r0,#0x01,00145$
;	../../../usb/DAP.c:842: response_count++;
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00336$
	inc	r0
	inc	@r0
00336$:
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	ljmp	00134$
00136$:
;	../../../usb/DAP.c:845: retry = DAP_Data.transfer.retry_count;
	mov	dptr,#(_DAP_Data + 0x000f)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	../../../usb/DAP.c:846: do {
00139$:
;	../../../usb/DAP.c:847: response_value = SWD_Transfer(DP_RDBUFF | DAP_TRANSFER_RnW, NULL);
	push	ar7
	push	ar6
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,#0x0e
	lcall	_SWD_Transfer
	mov	r5,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	@r0,ar5
;	../../../usb/DAP.c:848: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	cjne	@r0,#0x02,00145$
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00339$
	dec	r7
00339$:
	mov	a,r4
	orl	a,r5
	jz	00145$
	mov	a,_DAP_TransferAbort
	jz	00139$
;	../../../usb/DAP.c:856: return ((uint8_t)(response - response_head));
;	../../../usb/DAP.c:851: end:
	sjmp	00145$
00187$:
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00145$:
;	../../../usb/DAP.c:852: *(response_head + 0) = (uint8_t)(response_count >> 0);
	mov	r0,_bp
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	../../../usb/DAP.c:853: *(response_head + 1) = (uint8_t)(response_count >> 8);
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	../../../usb/DAP.c:854: *(response_head + 2) = (uint8_t)response_value;
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	../../../usb/DAP.c:856: return ((uint8_t)(response - response_head));
	mov	r7,_response
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	ar2,@r0
	mov	a,r7
	clr	c
	subb	a,r2
	mov	dpl,a
;	../../../usb/DAP.c:857: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_TransferBlock'
;------------------------------------------------------------
;num                       Allocated to registers r7 
;------------------------------------------------------------
;	../../../usb/DAP.c:864: static uint16_t DAP_TransferBlock()
;	-----------------------------------------
;	 function DAP_TransferBlock
;	-----------------------------------------
_DAP_TransferBlock:
;	../../../usb/DAP.c:868: switch (DAP_Data.debug_port) {
	mov	dptr,#_DAP_Data
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00102$
;	../../../usb/DAP.c:870: num = DAP_SWD_TransferBlock();
	lcall	_DAP_SWD_TransferBlock
	mov	r7,dpl
;	../../../usb/DAP.c:871: break;
;	../../../usb/DAP.c:872: default:
	sjmp	00103$
00102$:
;	../../../usb/DAP.c:873: *(response + 0) = 0U; // Response count [7:0]
	mov	r4,_response
	mov	r5,(_response + 1)
	mov	r6,(_response + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	clr	a
	lcall	__gptrput
;	../../../usb/DAP.c:874: *(response + 1) = 0U; // Response count[15:8]
	inc	a
	add	a,_response
	mov	r4,a
	clr	a
	addc	a,(_response + 1)
	mov	r5,a
	mov	r6,(_response + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	clr	a
	lcall	__gptrput
;	../../../usb/DAP.c:875: *(response + 2) = 0U; // Response value
	mov	a,#0x02
	add	a,_response
	mov	r4,a
	clr	a
	addc	a,(_response + 1)
	mov	r5,a
	mov	r6,(_response + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	clr	a
	lcall	__gptrput
;	../../../usb/DAP.c:876: num = 3U;
	mov	r7,#0x03
;	../../../usb/DAP.c:878: }
00103$:
;	../../../usb/DAP.c:880: if ((*(request + 3) & DAP_TRANSFER_RnW) != 0U) {
	mov	a,#0x03
	add	a,_request
	mov	r4,a
	clr	a
	addc	a,(_request + 1)
	mov	r5,a
	mov	r6,(_request + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	jnb	acc.1,00105$
;	../../../usb/DAP.c:882: return ((uint16_t)4U << 8) | num;
	mov	ar5,r7
	mov	r6,#0x00
	mov	dpl,r5
	mov	a,#0x04
	orl	a,r6
	mov	dph,a
	ret
00105$:
;	../../../usb/DAP.c:885: return ((4U + (((uint16_t)(*(request + 1)) | (uint16_t)(*(request + 2) << 8)) * 4)) << 8) | num;
	mov	a,#0x01
	add	a,_request
	mov	r4,a
	clr	a
	addc	a,(_request + 1)
	mov	r5,a
	mov	r6,(_request + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	r6,#0x00
	mov	a,#0x02
	add	a,_request
	mov	r2,a
	clr	a
	addc	a,(_request + 1)
	mov	r3,a
	mov	r5,(_request + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r5,a
	clr	a
	orl	ar4,a
	mov	a,r5
	orl	ar6,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,#0x04
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r6
	mov	ar6,r4
	clr	a
	mov	r4,a
	mov	r5,a
	mov	a,r7
	orl	ar4,a
	mov	a,r5
	orl	ar6,a
	mov	dpl,r4
	mov	dph,r6
;	../../../usb/DAP.c:887: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_SWD_WriteAbort'
;------------------------------------------------------------
;	../../../usb/DAP.c:893: static uint8_t DAP_SWD_WriteAbort()
;	-----------------------------------------
;	 function DAP_SWD_WriteAbort
;	-----------------------------------------
_DAP_SWD_WriteAbort:
;	../../../usb/DAP.c:896: SWD_Transfer(DP_ABORT, (uint8_t*)&request[1]);
	mov	a,#0x01
	add	a,_request
	mov	r5,a
	clr	a
	addc	a,(_request + 1)
	mov	r7,#0x00
	mov	r6,#0x40
	push	ar5
	push	ar7
	push	ar6
	mov	dpl,#0x00
	lcall	_SWD_Transfer
	dec	sp
	dec	sp
	dec	sp
;	../../../usb/DAP.c:898: *response = DAP_OK;
	mov	r5,_response
	mov	r6,(_response + 1)
	mov	r7,(_response + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../../../usb/DAP.c:899: return (1U);
	mov	dpl,#0x01
;	../../../usb/DAP.c:900: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_WriteAbort'
;------------------------------------------------------------
;num                       Allocated to registers r7 
;------------------------------------------------------------
;	../../../usb/DAP.c:907: static uint16_t DAP_WriteAbort()
;	-----------------------------------------
;	 function DAP_WriteAbort
;	-----------------------------------------
_DAP_WriteAbort:
;	../../../usb/DAP.c:911: switch (DAP_Data.debug_port) {
	mov	dptr,#_DAP_Data
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00102$
;	../../../usb/DAP.c:913: num = DAP_SWD_WriteAbort();
	lcall	_DAP_SWD_WriteAbort
	mov	r7,dpl
;	../../../usb/DAP.c:914: break;
;	../../../usb/DAP.c:915: default:
	sjmp	00103$
00102$:
;	../../../usb/DAP.c:916: *response = DAP_ERROR;
	mov	r4,_response
	mov	r5,(_response + 1)
	mov	r6,(_response + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0xff
	lcall	__gptrput
;	../../../usb/DAP.c:917: num = 1U;
	mov	r7,#0x01
;	../../../usb/DAP.c:919: }
00103$:
;	../../../usb/DAP.c:920: return (((uint16_t)5U << 8) | num);
	mov	r6,#0x00
	mov	dpl,r7
	mov	a,#0x05
	orl	a,r6
	mov	dph,a
;	../../../usb/DAP.c:921: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_ProcessVendorCommand'
;------------------------------------------------------------
;	../../../usb/DAP.c:929: uint16_t DAP_ProcessVendorCommand()
;	-----------------------------------------
;	 function DAP_ProcessVendorCommand
;	-----------------------------------------
_DAP_ProcessVendorCommand:
;	../../../usb/DAP.c:932: *response = ID_DAP_Invalid;
	mov	r5,_response
	mov	r6,(_response + 1)
	mov	r7,(_response + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xff
	lcall	__gptrput
;	../../../usb/DAP.c:933: return (((uint16_t)1U << 8) | 1U);
	mov	dptr,#0x0101
;	../../../usb/DAP.c:934: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_ProcessVendorCommandEx'
;------------------------------------------------------------
;	../../../usb/DAP.c:942: uint16_t DAP_ProcessVendorCommandEx()
;	-----------------------------------------
;	 function DAP_ProcessVendorCommandEx
;	-----------------------------------------
_DAP_ProcessVendorCommandEx:
;	../../../usb/DAP.c:945: *response = ID_DAP_Invalid;
	mov	r5,_response
	mov	r6,(_response + 1)
	mov	r7,(_response + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xff
	lcall	__gptrput
;	../../../usb/DAP.c:946: return (((uint16_t)1U << 8) | 1U);
	mov	dptr,#0x0101
;	../../../usb/DAP.c:947: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_ProcessCommand'
;------------------------------------------------------------
;resp                      Allocated to stack - _bp -5
;req                       Allocated to registers 
;num                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../../usb/DAP.c:954: uint16_t DAP_ProcessCommand(const uint8_t* req, uint8_t* resp)
;	-----------------------------------------
;	 function DAP_ProcessCommand
;	-----------------------------------------
_DAP_ProcessCommand:
	push	_bp
	mov	_bp,sp
	mov	_request,dpl
	mov	(_request + 1),dph
	mov	(_request + 2),b
;	../../../usb/DAP.c:958: response = resp;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	_response,@r0
	inc	r0
	mov	(_response + 1),@r0
	inc	r0
	mov	(_response + 2),@r0
;	../../../usb/DAP.c:960: if ((*request >= ID_DAP_Vendor0) && (*request <= ID_DAP_Vendor31)) {
	mov	r5,_request
	mov	r6,(_request + 1)
	mov	r7,(_request + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x80,00154$
00154$:
	jc	00102$
	mov	r5,_request
	mov	r6,(_request + 1)
	mov	r7,(_request + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov  r5,a
	add	a,#0xff - 0x9f
	jc	00102$
;	../../../usb/DAP.c:961: return DAP_ProcessVendorCommand();
	lcall	_DAP_ProcessVendorCommand
	ljmp	00127$
00102$:
;	../../../usb/DAP.c:964: if ((*request >= ID_DAP_VendorExFirst) && (*request <= ID_DAP_VendorExLast)) {
	mov	r5,_request
	mov	r6,(_request + 1)
	mov	r7,(_request + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0xa0,00157$
00157$:
	jc	00105$
	mov	r5,_request
	mov	r6,(_request + 1)
	mov	r7,(_request + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov  r5,a
	add	a,#0xff - 0xfe
	jc	00105$
;	../../../usb/DAP.c:965: return DAP_ProcessVendorCommandEx();
	lcall	_DAP_ProcessVendorCommandEx
	ljmp	00127$
00105$:
;	../../../usb/DAP.c:968: *response++ = *request;
	mov	r5,_response
	mov	r6,(_response + 1)
	mov	r7,(_response + 2)
	mov	r2,_request
	mov	r3,(_request + 1)
	mov	r4,(_request + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	inc	_response
	clr	a
	cjne	a,_response,00160$
	inc	(_response + 1)
00160$:
;	../../../usb/DAP.c:970: switch (*request++) {
	mov	r5,_request
	mov	r6,(_request + 1)
	mov	r7,(_request + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	inc	_request
	clr	a
	cjne	a,_request,00161$
	inc	(_request + 1)
00161$:
	mov	a,r7
	add	a,#0xff - 0x1d
	jnc	00162$
	ljmp	00125$
00162$:
	mov	a,r7
	add	a,#(00163$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00164$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00163$:
	.db	00107$
	.db	00108$
	.db	00109$
	.db	00110$
	.db	00121$
	.db	00122$
	.db	00123$
	.db	00125$
	.db	00124$
	.db	00111$
	.db	00112$
	.db	00125$
	.db	00125$
	.db	00125$
	.db	00125$
	.db	00125$
	.db	00113$
	.db	00114$
	.db	00115$
	.db	00116$
	.db	00118$
	.db	00119$
	.db	00120$
	.db	00125$
	.db	00125$
	.db	00125$
	.db	00125$
	.db	00125$
	.db	00125$
	.db	00117$
00164$:
	.db	00107$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
	.db	00121$>>8
	.db	00122$>>8
	.db	00123$>>8
	.db	00125$>>8
	.db	00124$>>8
	.db	00111$>>8
	.db	00112$>>8
	.db	00125$>>8
	.db	00125$>>8
	.db	00125$>>8
	.db	00125$>>8
	.db	00125$>>8
	.db	00113$>>8
	.db	00114$>>8
	.db	00115$>>8
	.db	00116$>>8
	.db	00118$>>8
	.db	00119$>>8
	.db	00120$>>8
	.db	00125$>>8
	.db	00125$>>8
	.db	00125$>>8
	.db	00125$>>8
	.db	00125$>>8
	.db	00125$>>8
	.db	00117$>>8
;	../../../usb/DAP.c:971: case ID_DAP_Info:
00107$:
;	../../../usb/DAP.c:972: num = DAP_Info(*request, response + 1);
	mov	a,#0x01
	add	a,_response
	mov	r5,a
	clr	a
	addc	a,(_response + 1)
	mov	r6,a
	mov	r7,(_response + 2)
	mov	r2,_request
	mov	r3,(_request + 1)
	mov	r4,(_request + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	lcall	_DAP_Info
	mov	r7,dpl
	dec	sp
	dec	sp
	dec	sp
	mov	r6,#0x00
;	../../../usb/DAP.c:973: *response = (uint8_t)num;
	mov	r3,_response
	mov	r4,(_response + 1)
	mov	r5,(_response + 2)
	mov	ar2,r7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
;	../../../usb/DAP.c:974: return (((uint16_t)2U << 8) + 2U + num);
	mov	a,#0x02
	add	a,r7
	mov	r7,a
	mov	a,#0x02
	addc	a,r6
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	ljmp	00127$
;	../../../usb/DAP.c:976: case ID_DAP_HostStatus:
00108$:
;	../../../usb/DAP.c:977: num = DAP_HostStatus();
	lcall	_DAP_HostStatus
	mov	r6,dpl
	mov	r7,dph
;	../../../usb/DAP.c:978: break;
	ljmp	00126$
;	../../../usb/DAP.c:980: case ID_DAP_Connect:
00109$:
;	../../../usb/DAP.c:981: num = DAP_Connect();
	lcall	_DAP_Connect
	mov	r4,dpl
	mov	r5,dph
	mov	ar6,r4
	mov	ar7,r5
;	../../../usb/DAP.c:982: break;
	ljmp	00126$
;	../../../usb/DAP.c:983: case ID_DAP_Disconnect:
00110$:
;	../../../usb/DAP.c:984: num = DAP_Disconnect();
	lcall	_DAP_Disconnect
	mov	r5,dpl
	mov	ar6,r5
	mov	r7,#0x00
;	../../../usb/DAP.c:985: break;
	ljmp	00126$
;	../../../usb/DAP.c:987: case ID_DAP_Delay:
00111$:
;	../../../usb/DAP.c:988: num = DAP_Delay();
	lcall	_DAP_Delay
	mov	r4,dpl
	mov	r5,dph
	mov	ar6,r4
	mov	ar7,r5
;	../../../usb/DAP.c:989: break;
	ljmp	00126$
;	../../../usb/DAP.c:991: case ID_DAP_ResetTarget:
00112$:
;	../../../usb/DAP.c:992: num = DAP_ResetTarget();
	lcall	_DAP_ResetTarget
	mov	r5,dpl
	mov	ar6,r5
	mov	r7,#0x00
;	../../../usb/DAP.c:993: break;
	ljmp	00126$
;	../../../usb/DAP.c:995: case ID_DAP_SWJ_Pins:
00113$:
;	../../../usb/DAP.c:996: num = DAP_SWJ_Pins();
	lcall	_DAP_SWJ_Pins
	mov	r4,dpl
	mov	r5,dph
	mov	ar6,r4
	mov	ar7,r5
;	../../../usb/DAP.c:997: break;
	ljmp	00126$
;	../../../usb/DAP.c:998: case ID_DAP_SWJ_Clock:
00114$:
;	../../../usb/DAP.c:999: num = DAP_SWJ_Clock();
	lcall	_DAP_SWJ_Clock
	mov	r4,dpl
	mov	r5,dph
	mov	ar6,r4
	mov	ar7,r5
;	../../../usb/DAP.c:1000: break;
	ljmp	00126$
;	../../../usb/DAP.c:1001: case ID_DAP_SWJ_Sequence:
00115$:
;	../../../usb/DAP.c:1002: num = DAP_SWJ_Sequence();
	lcall	_DAP_SWJ_Sequence
	mov	r4,dpl
	mov	r5,dph
	mov	ar6,r4
	mov	ar7,r5
;	../../../usb/DAP.c:1003: break;
	ljmp	00126$
;	../../../usb/DAP.c:1005: case ID_DAP_SWD_Configure:
00116$:
;	../../../usb/DAP.c:1006: num = DAP_SWD_Configure();
	lcall	_DAP_SWD_Configure
	mov	r4,dpl
	mov	r5,dph
	mov	ar6,r4
	mov	ar7,r5
;	../../../usb/DAP.c:1007: break;
	ljmp	00126$
;	../../../usb/DAP.c:1008: case ID_DAP_SWD_Sequence:
00117$:
;	../../../usb/DAP.c:1009: num = DAP_SWD_Sequence();
	lcall	_DAP_SWD_Sequence
	mov	r4,dpl
	mov	r5,dph
	mov	ar6,r4
	mov	ar7,r5
;	../../../usb/DAP.c:1010: break;
	ljmp	00126$
;	../../../usb/DAP.c:1012: case ID_DAP_JTAG_Sequence:
00118$:
;	../../../usb/DAP.c:1013: num = DAP_JTAG_Sequence();
	lcall	_DAP_JTAG_Sequence
	mov	r4,dpl
	mov	r5,dph
	mov	ar6,r4
	mov	ar7,r5
;	../../../usb/DAP.c:1014: break;
;	../../../usb/DAP.c:1015: case ID_DAP_JTAG_Configure:
	sjmp	00126$
00119$:
;	../../../usb/DAP.c:1016: num = DAP_JTAG_Configure();
	lcall	_DAP_JTAG_Configure
	mov	r4,dpl
	mov	r5,dph
	mov	ar6,r4
	mov	ar7,r5
;	../../../usb/DAP.c:1017: break;
;	../../../usb/DAP.c:1018: case ID_DAP_JTAG_IDCODE:
	sjmp	00126$
00120$:
;	../../../usb/DAP.c:1019: num = DAP_JTAG_IDCode();
	lcall	_DAP_JTAG_IDCode
	mov	r4,dpl
	mov	r5,dph
	mov	ar6,r4
	mov	ar7,r5
;	../../../usb/DAP.c:1020: break;
;	../../../usb/DAP.c:1022: case ID_DAP_TransferConfigure:
	sjmp	00126$
00121$:
;	../../../usb/DAP.c:1023: num = DAP_TransferConfigure();
	lcall	_DAP_TransferConfigure
	mov	r4,dpl
	mov	r5,dph
	mov	ar6,r4
	mov	ar7,r5
;	../../../usb/DAP.c:1024: break;
;	../../../usb/DAP.c:1025: case ID_DAP_Transfer:
	sjmp	00126$
00122$:
;	../../../usb/DAP.c:1026: num = DAP_Transfer();
	lcall	_DAP_Transfer
	mov	r4,dpl
	mov	r5,dph
	mov	ar6,r4
	mov	ar7,r5
;	../../../usb/DAP.c:1027: break;
;	../../../usb/DAP.c:1028: case ID_DAP_TransferBlock:
	sjmp	00126$
00123$:
;	../../../usb/DAP.c:1029: num = DAP_TransferBlock();
	lcall	_DAP_TransferBlock
	mov	r4,dpl
	mov	r5,dph
	mov	ar6,r4
	mov	ar7,r5
;	../../../usb/DAP.c:1030: break;
;	../../../usb/DAP.c:1032: case ID_DAP_WriteABORT:
	sjmp	00126$
00124$:
;	../../../usb/DAP.c:1033: num = DAP_WriteAbort();
	lcall	_DAP_WriteAbort
	mov	r4,dpl
	mov	r5,dph
	mov	ar6,r4
	mov	ar7,r5
;	../../../usb/DAP.c:1034: break;
;	../../../usb/DAP.c:1036: default:
	sjmp	00126$
00125$:
;	../../../usb/DAP.c:1037: *(response - 1) = ID_DAP_Invalid;
	mov	a,_response
	add	a,#0xff
	mov	r3,a
	mov	a,(_response + 1)
	addc	a,#0xff
	mov	r4,a
	mov	r5,(_response + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0xff
	lcall	__gptrput
;	../../../usb/DAP.c:1038: return (((uint16_t)1U << 8) | 1U);
	mov	dptr,#0x0101
;	../../../usb/DAP.c:1039: }
	sjmp	00127$
00126$:
;	../../../usb/DAP.c:1041: return (((uint16_t)1U << 8) + 1U + num);
	mov	a,#0x01
	add	a,r6
	mov	r6,a
	mov	a,#0x01
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
00127$:
;	../../../usb/DAP.c:1042: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_ExecuteCommand'
;------------------------------------------------------------
;resp                      Allocated to stack - _bp -5
;req                       Allocated to registers r2 r3 r4 
;num                       Allocated to registers r6 r5 
;n                         Allocated to registers r3 r4 
;cnt                       Allocated to registers r7 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +2
;------------------------------------------------------------
;	../../../usb/DAP.c:1049: uint16_t DAP_ExecuteCommand(const uint8_t* req, uint8_t* resp)
;	-----------------------------------------
;	 function DAP_ExecuteCommand
;	-----------------------------------------
_DAP_ExecuteCommand:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
;	../../../usb/DAP.c:1054: if (*req == ID_DAP_ExecuteCommands) {
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,_bp
	inc	r0
	lcall	__gptrget
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x7f,00124$
	sjmp	00125$
00124$:
	ljmp	00105$
00125$:
;	../../../usb/DAP.c:1055: *resp++ = *req++;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	r1,_bp
	inc	r1
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,#0x01
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	../../../usb/DAP.c:1056: cnt = *req++;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,#0x01
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
;	../../../usb/DAP.c:1057: *resp++ = (uint8_t)cnt;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x01
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
;	../../../usb/DAP.c:1058: num = ((uint16_t)2U << 8) | 2U;
	mov	r6,#0x02
	mov	r5,#0x02
;	../../../usb/DAP.c:1059: while (cnt--) {
	mov	ar2,r7
00101$:
	mov	ar4,r2
	dec	r2
	mov	a,r4
	jz	00103$
;	../../../usb/DAP.c:1060: n = DAP_ProcessCommand(req, resp);
	push	ar2
	push	ar6
	push	ar5
	push	ar2
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_DAP_ProcessCommand
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar5
	pop	ar6
;	../../../usb/DAP.c:1061: num += n;
	mov	a,r3
	add	a,r6
	mov	r6,a
	mov	a,r4
	addc	a,r5
	mov	r5,a
;	../../../usb/DAP.c:1062: req += (uint8_t)(n >> 8);
	mov	ar2,r4
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,r2
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	../../../usb/DAP.c:1063: resp += (uint8_t)n;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	pop	ar2
	sjmp	00101$
00103$:
;	../../../usb/DAP.c:1065: return (num);
	mov	dpl,r6
	mov	dph,r5
	sjmp	00106$
00105$:
;	../../../usb/DAP.c:1068: return DAP_ProcessCommand(req, resp);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_DAP_ProcessCommand
	dec	sp
	dec	sp
	dec	sp
00106$:
;	../../../usb/DAP.c:1069: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_Setup'
;------------------------------------------------------------
;	../../../usb/DAP.c:1072: void DAP_Setup(void)
;	-----------------------------------------
;	 function DAP_Setup
;	-----------------------------------------
_DAP_Setup:
;	../../../usb/DAP.c:1075: DAP_Data.debug_port = 0U;
	mov	dptr,#_DAP_Data
	clr	a
	movx	@dptr,a
;	../../../usb/DAP.c:1076: DAP_Data.clock_delay = CLOCK_DELAY(DAP_DEFAULT_SWJ_CLOCK);
	mov	dptr,#(_DAP_Data + 0x0003)
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../usb/DAP.c:1077: DAP_Data.transfer.idle_cycles = 0U;
	mov	dptr,#(_DAP_Data + 0x000b)
	movx	@dptr,a
;	../../../usb/DAP.c:1078: DAP_Data.transfer.retry_count = 100U;
	mov	dptr,#(_DAP_Data + 0x000f)
	mov	a,#0x64
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../usb/DAP.c:1079: DAP_Data.transfer.match_retry = 0U;
	mov	dptr,#(_DAP_Data + 0x0011)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../usb/DAP.c:1080: DAP_Data.transfer.match_mask[0] = 0;
	mov	dptr,#(_DAP_Data + 0x0013)
	movx	@dptr,a
;	../../../usb/DAP.c:1081: DAP_Data.transfer.match_mask[1] = 0;
	mov	dptr,#(_DAP_Data + 0x0014)
	movx	@dptr,a
;	../../../usb/DAP.c:1082: DAP_Data.transfer.match_mask[2] = 0;
	mov	dptr,#(_DAP_Data + 0x0015)
	movx	@dptr,a
;	../../../usb/DAP.c:1083: DAP_Data.transfer.match_mask[3] = 0;
	mov	dptr,#(_DAP_Data + 0x0016)
	movx	@dptr,a
;	../../../usb/DAP.c:1084: DAP_Data.swd_conf.turnaround = 1U;
	mov	dptr,#(_DAP_Data + 0x0017)
	inc	a
	movx	@dptr,a
;	../../../usb/DAP.c:1085: DAP_Data.swd_conf.data_phase = 0U;
	mov	dptr,#(_DAP_Data + 0x0018)
	clr	a
	movx	@dptr,a
;	../../../usb/DAP.c:1088: PORT_OFF(); // Avoid influence other device.
	anl	_P1_MOD_OC,#0xfe
	anl	_P1_DIR_PU,#0xfe
	anl	_P1_MOD_OC,#0xfd
	anl	_P1_DIR_PU,#0xfd
;	../../../usb/DAP.c:1089: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_row_pin_array:
	.db #0x19	; 25
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x12	; 18
	.db #0x13	; 19
_column_pin_array:
	.db #0x17	; 23
	.db #0x16	; 22
	.db #0x15	; 21
	.db #0x14	; 20
	.db #0x1d	; 29
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x05	; 5
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x11	; 17
	.area CONST   (CODE)
___str_0:
	.ascii "0254"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

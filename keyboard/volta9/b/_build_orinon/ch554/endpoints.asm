;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module endpoints
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EP1_OUT
	.globl _GetUsbDescriptor
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
	.globl _Ep3Buffer
	.globl _Ep2Buffer
	.globl _Ep1Buffer
	.globl _Ep0Buffer
	.globl _usb_state
	.globl _nop
	.globl _EP0_OUT
	.globl _EP0_IN
	.globl _EP0_SETUP
	.globl _EP1_IN
	.globl _EP2_IN
	.globl _EP3_IN
	.globl _EP4_IN
	.globl _USBDeviceInit
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
_DataInLen:
	.ds 1
_UsbConfig:
	.ds 1
_UsbAddr:
	.ds 1
_pDataIn:
	.ds 3
_usb_state::
	.ds 1
_keyboard_idle:
	.ds 1
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
_Ep0Buffer::
	.ds 192
_Ep1Buffer::
	.ds 128
_Ep2Buffer::
	.ds 64
_Ep3Buffer::
	.ds 128
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
;	../../../usb/endpoints.c:60: union UsbState usb_state = {
	mov	r0,#_usb_state
	mov	a,@r0
	orl	a,#0x10
	mov	@r0,a
;	../../../usb/endpoints.c:64: static uint8_t keyboard_idle = 0;
	mov	_keyboard_idle,#0x00
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
;Allocation info for local variables in function 'nop'
;------------------------------------------------------------
;	../../../usb/endpoints.c:87: void nop()
;	-----------------------------------------
;	 function nop
;	-----------------------------------------
_nop:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../../../usb/endpoints.c:89: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0_OUT'
;------------------------------------------------------------
;	../../../usb/endpoints.c:91: void EP0_OUT()
;	-----------------------------------------
;	 function EP0_OUT
;	-----------------------------------------
_EP0_OUT:
;	../../../usb/endpoints.c:93: switch (usb_state.setup_state) {
	mov	r0,#_usb_state
	mov	a,@r0
	swap	a
	rr	a
	anl	a,#0x07
	mov	r7,a
	jz	00106$
	cjne	r7,#0x02,00121$
	ret
00121$:
	cjne	r7,#0x04,00104$
;	../../../usb/endpoints.c:99: EP0_RESET();
	mov	_UEP0_CTRL,#0x02
;	../../../usb/endpoints.c:100: usb_state.setup_state = SETUP_IDLE;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0x1f
	mov	@r0,a
;	../../../usb/endpoints.c:101: break;
;	../../../usb/endpoints.c:105: default:
	ret
00104$:
;	../../../usb/endpoints.c:107: EP0_RESET();
	mov	_UEP0_CTRL,#0x02
;	../../../usb/endpoints.c:108: usb_state.setup_state = SETUP_IDLE;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0x1f
	mov	@r0,a
;	../../../usb/endpoints.c:110: }
00106$:
;	../../../usb/endpoints.c:111: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0_IN'
;------------------------------------------------------------
;len                       Allocated to registers r6 
;------------------------------------------------------------
;	../../../usb/endpoints.c:112: void EP0_IN()
;	-----------------------------------------
;	 function EP0_IN
;	-----------------------------------------
_EP0_IN:
;	../../../usb/endpoints.c:114: switch (usb_state.setup_state) {
	mov	r0,#_usb_state
	mov	a,@r0
	swap	a
	rr	a
	anl	a,#0x07
	mov	r7,a
	cjne	r7,#0x00,00138$
	ret
00138$:
	cjne	r7,#0x01,00139$
	sjmp	00102$
00139$:
	cjne	r7,#0x03,00140$
	sjmp	00105$
00140$:
	ljmp	00108$
;	../../../usb/endpoints.c:119: case SETUP_DATA_IN:
00102$:
;	../../../usb/endpoints.c:120: if (DataInLen == 0) {
	mov	a,_DataInLen
	jnz	00104$
;	../../../usb/endpoints.c:121: usb_state.setup_state = SETUP_STATE_OUT;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0x1f
	orl	a,#0x80
	mov	@r0,a
00104$:
;	../../../usb/endpoints.c:123: uint8_t len = DataInLen >= THIS_ENDP0_SIZE ? THIS_ENDP0_SIZE : DataInLen; //本次传输长度
	clr	c
	mov	a,_DataInLen
	subb	a,#0x08
	mov	b0,c
	jc	00112$
	mov	r6,#0x08
	mov	r7,#0x00
	sjmp	00113$
00112$:
	mov	r6,_DataInLen
	mov	r7,#0x00
00113$:
;	../../../usb/endpoints.c:124: memcpy(Ep0Buffer, pDataIn, len); //加载上传数据
	mov	ar5,r6
	mov	r7,#0x00
	mov	r2,_pDataIn
	mov	r3,(_pDataIn + 1)
	mov	r4,(_pDataIn + 2)
	push	ar6
	push	ar5
	push	ar7
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_Ep0Buffer
	mov	b,#0x00
	lcall	___memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
;	../../../usb/endpoints.c:125: DataInLen -= len;
	mov	a,_DataInLen
	clr	c
	subb	a,r6
	mov	_DataInLen,a
;	../../../usb/endpoints.c:126: pDataIn += len;
	mov	a,r6
	add	a,_pDataIn
	mov	_pDataIn,a
	clr	a
	addc	a,(_pDataIn + 1)
	mov	(_pDataIn + 1),a
;	../../../usb/endpoints.c:127: UEP0_T_LEN = len;
	mov	_UEP0_T_LEN,r6
;	../../../usb/endpoints.c:128: UEP0_CTRL ^= bUEP_T_TOG; //同步标志位翻转
	mov	r6,_UEP0_CTRL
	xrl	ar6,#0x40
	mov	_UEP0_CTRL,r6
;	../../../usb/endpoints.c:129: break;
;	../../../usb/endpoints.c:131: case SETUP_STATE_IN:
	ret
00105$:
;	../../../usb/endpoints.c:133: if (UsbAddr) {
	mov	a,_UsbAddr
	jz	00107$
;	../../../usb/endpoints.c:134: USB_DEV_AD = USB_DEV_AD & bUDA_GP_BIT | UsbAddr;
	mov	a,_USB_DEV_AD
	anl	a,#0x80
	mov	r7,a
	mov	a,_UsbAddr
	mov	r6,a
	orl	a,r7
	mov	_USB_DEV_AD,a
;	../../../usb/endpoints.c:135: UsbAddr = 0;
	mov	_UsbAddr,#0x00
00107$:
;	../../../usb/endpoints.c:138: UEP0_T_LEN = 0;
	mov	_UEP0_T_LEN,#0x00
;	../../../usb/endpoints.c:139: EP0_RESET();
	mov	_UEP0_CTRL,#0x02
;	../../../usb/endpoints.c:140: usb_state.setup_state = SETUP_IDLE;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0x1f
	mov	@r0,a
;	../../../usb/endpoints.c:141: break;
;	../../../usb/endpoints.c:142: default:
	ret
00108$:
;	../../../usb/endpoints.c:144: EP0_RESET();
	mov	_UEP0_CTRL,#0x02
;	../../../usb/endpoints.c:145: usb_state.setup_state = SETUP_IDLE;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0x1f
	mov	@r0,a
;	../../../usb/endpoints.c:147: }
;	../../../usb/endpoints.c:148: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0_SETUP'
;------------------------------------------------------------
;datalen                   Allocated to registers r7 
;len                       Allocated to registers r6 
;------------------------------------------------------------
;	../../../usb/endpoints.c:149: void EP0_SETUP()
;	-----------------------------------------
;	 function EP0_SETUP
;	-----------------------------------------
_EP0_SETUP:
;	../../../usb/endpoints.c:151: if (USB_RX_LEN != (sizeof(USB_SETUP_REQ))) {
	mov	a,#0x08
	cjne	a,_USB_RX_LEN,00303$
	sjmp	00102$
00303$:
;	../../../usb/endpoints.c:152: SETUP_STALL();
	mov	_UEP0_CTRL,#0xcf
;	../../../usb/endpoints.c:153: return;
	ret
00102$:
;	../../../usb/endpoints.c:155: uint8_t datalen = 0;
	mov	r7,#0x00
;	../../../usb/endpoints.c:156: DataInLen = UsbSetupBuf->wLength > 0xFF ? 0xFF : UsbSetupBuf->wLength; // 限制总长度
	mov	dptr,#(_Ep0Buffer + 0x0006)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,#0xff
	subb	a,r5
	clr	a
	subb	a,r6
	jnc	00163$
	mov	r5,#0xff
	mov	r6,#0x00
	sjmp	00164$
00163$:
	mov	dptr,#(_Ep0Buffer + 0x0006)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
00164$:
	mov	_DataInLen,r5
;	../../../usb/endpoints.c:157: if (UsbSetupBuf->bmRequestType.Type == 0) //标准请求
	mov	dptr,#_Ep0Buffer
	movx	a,@dptr
	anl	a,#0x60
	jz	00305$
	ljmp	00153$
00305$:
;	../../../usb/endpoints.c:159: switch (UsbSetupBuf->bRequest) //请求码
	mov	dptr,#(_Ep0Buffer + 0x0001)
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0x0a
	jnc	00306$
	ljmp	00142$
00306$:
	mov	a,r6
	add	a,#(00307$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r6
	add	a,#(00308$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00307$:
	.db	00141$
	.db	00108$
	.db	00142$
	.db	00125$
	.db	00142$
	.db	00104$
	.db	00103$
	.db	00142$
	.db	00105$
	.db	00106$
	.db	00107$
00308$:
	.db	00141$>>8
	.db	00108$>>8
	.db	00142$>>8
	.db	00125$>>8
	.db	00142$>>8
	.db	00104$>>8
	.db	00103$>>8
	.db	00142$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
;	../../../usb/endpoints.c:161: case USB_GET_DESCRIPTOR:
00103$:
;	../../../usb/endpoints.c:162: datalen = GetUsbDescriptor(UsbSetupBuf->wValueH, UsbSetupBuf->wValueL, UsbSetupBuf->wIndexL, &pDataIn);
	mov	dptr,#(_Ep0Buffer + 0x0004)
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#(_Ep0Buffer + 0x0003)
	movx	a,@dptr
	mov	r4,a
	mov	a,#_pDataIn
	push	acc
	mov	a,#(_pDataIn >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	push	ar6
	push	ar5
	mov	dpl,r4
	lcall	_GetUsbDescriptor
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	ar7,r6
;	../../../usb/endpoints.c:163: usb_state.setup_state = SETUP_DATA_IN;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0x1f
	orl	a,#0x20
	mov	@r0,a
;	../../../usb/endpoints.c:164: break;
	ljmp	00154$
;	../../../usb/endpoints.c:166: case USB_SET_ADDRESS:
00104$:
;	../../../usb/endpoints.c:167: UsbAddr = UsbSetupBuf->wValueL; //暂存USB设备地址
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
	mov	_UsbAddr,a
;	../../../usb/endpoints.c:168: usb_state.setup_state = SETUP_STATE_IN;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0x1f
	orl	a,#0x60
	mov	@r0,a
;	../../../usb/endpoints.c:169: break;
	ljmp	00154$
;	../../../usb/endpoints.c:171: case USB_GET_CONFIGURATION:
00105$:
;	../../../usb/endpoints.c:172: Ep0Buffer[0] = UsbConfig;
	mov	dptr,#_Ep0Buffer
	mov	a,_UsbConfig
	movx	@dptr,a
;	../../../usb/endpoints.c:173: pDataIn = Ep0Buffer;
	mov	_pDataIn,#_Ep0Buffer
	mov	(_pDataIn + 1),#(_Ep0Buffer >> 8)
	mov	(_pDataIn + 2),#0x00
;	../../../usb/endpoints.c:174: datalen = 1;
	mov	r7,#0x01
;	../../../usb/endpoints.c:176: usb_state.setup_state = SETUP_DATA_IN;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0x1f
	orl	a,#0x20
	mov	@r0,a
;	../../../usb/endpoints.c:177: break;
	ljmp	00154$
;	../../../usb/endpoints.c:179: case USB_SET_CONFIGURATION:
00106$:
;	../../../usb/endpoints.c:180: UsbConfig = UsbSetupBuf->wValueL;
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
;	../../../usb/endpoints.c:182: usb_state.is_ready = UsbConfig > 0;
;	assignBit
	mov	_UsbConfig,a
	add	a,#0xff
	clr	a
	rlc	a
	mov	r6,a
	mov	r0,#_usb_state
	rrc	a
	mov	a,@r0
	mov	acc.0,c
	mov	@r0,a
;	../../../usb/endpoints.c:183: usb_state.setup_state = SETUP_STATE_IN;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0x1f
	orl	a,#0x60
	mov	@r0,a
;	../../../usb/endpoints.c:184: break;
	ljmp	00154$
;	../../../usb/endpoints.c:186: case USB_GET_INTERFACE:
00107$:
;	../../../usb/endpoints.c:187: Ep0Buffer[0] = 0x00;
	mov	dptr,#_Ep0Buffer
	clr	a
	movx	@dptr,a
;	../../../usb/endpoints.c:188: pDataIn = Ep0Buffer;
	mov	_pDataIn,#_Ep0Buffer
	mov	(_pDataIn + 1),#(_Ep0Buffer >> 8)
;	1-genFromRTrack replaced	mov	(_pDataIn + 2),#0x00
	mov	(_pDataIn + 2),a
;	../../../usb/endpoints.c:189: datalen = 1;
	mov	r7,#0x01
;	../../../usb/endpoints.c:191: usb_state.setup_state = SETUP_DATA_IN;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0x1f
	orl	a,#0x20
	mov	@r0,a
;	../../../usb/endpoints.c:192: break;
	ljmp	00154$
;	../../../usb/endpoints.c:194: case USB_CLEAR_FEATURE: {
00108$:
;	../../../usb/endpoints.c:195: switch (UsbSetupBuf->bmRequestType.Recipient) {
	mov	dptr,#_Ep0Buffer
	movx	a,@dptr
	anl	a,#0x1f
	mov	r6,a
	jz	00120$
	cjne	r6,#0x02,00310$
	sjmp	00311$
00310$:
	ljmp	00123$
00311$:
;	../../../usb/endpoints.c:197: switch (UsbSetupBuf->wIndexL) {
	mov	dptr,#(_Ep0Buffer + 0x0004)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00312$
	sjmp	00117$
00312$:
	cjne	r6,#0x02,00313$
	sjmp	00116$
00313$:
	cjne	r6,#0x03,00314$
	sjmp	00115$
00314$:
	cjne	r6,#0x04,00315$
	sjmp	00114$
00315$:
	cjne	r6,#0x81,00316$
	sjmp	00113$
00316$:
	cjne	r6,#0x82,00317$
	sjmp	00112$
00317$:
	cjne	r6,#0x83,00318$
	sjmp	00111$
00318$:
	cjne	r6,#0x84,00118$
;	../../../usb/endpoints.c:199: EP_IN_NAK_TOG(4);
	mov	a,#0xbc
	anl	a,_UEP4_CTRL
	orl	a,#0x02
	mov	_UEP4_CTRL,a
;	../../../usb/endpoints.c:200: break;
;	../../../usb/endpoints.c:201: case 0x83:
	sjmp	00124$
00111$:
;	../../../usb/endpoints.c:202: EP_IN_NAK_TOG(3);
	mov	a,#0xbc
	anl	a,_UEP3_CTRL
	orl	a,#0x02
	mov	_UEP3_CTRL,a
;	../../../usb/endpoints.c:203: break;
;	../../../usb/endpoints.c:204: case 0x82:
	sjmp	00124$
00112$:
;	../../../usb/endpoints.c:205: EP_IN_NAK_TOG(2);
	mov	a,#0xbc
	anl	a,_UEP2_CTRL
	orl	a,#0x02
	mov	_UEP2_CTRL,a
;	../../../usb/endpoints.c:206: break;
;	../../../usb/endpoints.c:207: case 0x81:
	sjmp	00124$
00113$:
;	../../../usb/endpoints.c:208: EP_IN_NAK_TOG(1);
	mov	a,#0xbc
	anl	a,_UEP1_CTRL
	orl	a,#0x02
	mov	_UEP1_CTRL,a
;	../../../usb/endpoints.c:209: break;
;	../../../usb/endpoints.c:210: case 0x04:
	sjmp	00124$
00114$:
;	../../../usb/endpoints.c:211: EP_OUT_ACK_TOG(4);
	anl	_UEP4_CTRL,#0x73
;	../../../usb/endpoints.c:212: break;
;	../../../usb/endpoints.c:213: case 0x03:
	sjmp	00124$
00115$:
;	../../../usb/endpoints.c:214: EP_OUT_ACK_TOG(3);
	anl	_UEP3_CTRL,#0x73
;	../../../usb/endpoints.c:215: break;
;	../../../usb/endpoints.c:216: case 0x02:
	sjmp	00124$
00116$:
;	../../../usb/endpoints.c:217: EP_OUT_ACK_TOG(2);
	anl	_UEP2_CTRL,#0x73
;	../../../usb/endpoints.c:218: break;
;	../../../usb/endpoints.c:219: case 0x01:
	sjmp	00124$
00117$:
;	../../../usb/endpoints.c:220: EP_OUT_ACK_TOG(1);
	anl	_UEP1_CTRL,#0x73
;	../../../usb/endpoints.c:221: break;
;	../../../usb/endpoints.c:222: default:
	sjmp	00124$
00118$:
;	../../../usb/endpoints.c:223: SETUP_STALL();
	mov	_UEP0_CTRL,#0xcf
;	../../../usb/endpoints.c:224: return;
	ret
;	../../../usb/endpoints.c:229: case USB_REQ_TO_DEVICE:
00120$:
;	../../../usb/endpoints.c:230: if (UsbSetupBuf->wValue != 0x01) {
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	cjne	r5,#0x01,00321$
	cjne	r6,#0x00,00321$
	sjmp	00122$
00321$:
;	../../../usb/endpoints.c:232: SETUP_STALL();
	mov	_UEP0_CTRL,#0xcf
;	../../../usb/endpoints.c:233: return;
	ret
00122$:
;	../../../usb/endpoints.c:236: usb_state.remote_wake = false;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0xf7
	mov	@r0,a
;	../../../usb/endpoints.c:237: break;
;	../../../usb/endpoints.c:239: default: //unsupport
	sjmp	00124$
00123$:
;	../../../usb/endpoints.c:240: SETUP_STALL();
	mov	_UEP0_CTRL,#0xcf
;	../../../usb/endpoints.c:241: return;
	ret
;	../../../usb/endpoints.c:242: }
00124$:
;	../../../usb/endpoints.c:243: usb_state.setup_state = SETUP_STATE_IN;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0x1f
	orl	a,#0x60
	mov	@r0,a
;	../../../usb/endpoints.c:244: break;
	ljmp	00154$
;	../../../usb/endpoints.c:246: case USB_SET_FEATURE: /* Set Feature */
00125$:
;	../../../usb/endpoints.c:248: switch (UsbSetupBuf->bmRequestType.Recipient) {
	mov	dptr,#_Ep0Buffer
	movx	a,@dptr
	anl	a,#0x1f
	mov	r6,a
	jz	00136$
	cjne	r6,#0x02,00323$
	sjmp	00324$
00323$:
	ljmp	00139$
00324$:
;	../../../usb/endpoints.c:252: if (UsbSetupBuf->wValue != 0) {
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	orl	a,r5
	jz	00128$
;	../../../usb/endpoints.c:253: SETUP_STALL();
	mov	_UEP0_CTRL,#0xcf
;	../../../usb/endpoints.c:254: return;
	ret
00128$:
;	../../../usb/endpoints.c:257: switch (UsbSetupBuf->wIndex) {
	mov	dptr,#(_Ep0Buffer + 0x0004)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	cjne	r5,#0x02,00326$
	cjne	r6,#0x00,00326$
	sjmp	00133$
00326$:
	cjne	r5,#0x81,00327$
	cjne	r6,#0x00,00327$
	sjmp	00132$
00327$:
	cjne	r5,#0x82,00328$
	cjne	r6,#0x00,00328$
	sjmp	00131$
00328$:
	cjne	r5,#0x83,00329$
	cjne	r6,#0x00,00329$
	sjmp	00130$
00329$:
	cjne	r5,#0x84,00134$
	cjne	r6,#0x00,00134$
;	../../../usb/endpoints.c:259: EP_IN_STALL_TOG(4);
	mov	a,#0xbf
	anl	a,_UEP4_CTRL
	orl	a,#0x03
	mov	_UEP4_CTRL,a
;	../../../usb/endpoints.c:260: break;
;	../../../usb/endpoints.c:261: case 0x83:
	sjmp	00140$
00130$:
;	../../../usb/endpoints.c:262: EP_IN_STALL_TOG(3);
	mov	a,#0xbf
	anl	a,_UEP3_CTRL
	orl	a,#0x03
	mov	_UEP3_CTRL,a
;	../../../usb/endpoints.c:263: break;
;	../../../usb/endpoints.c:264: case 0x82:
	sjmp	00140$
00131$:
;	../../../usb/endpoints.c:265: EP_IN_STALL_TOG(2);
	mov	a,#0xbf
	anl	a,_UEP2_CTRL
	orl	a,#0x03
	mov	_UEP2_CTRL,a
;	../../../usb/endpoints.c:266: break;
;	../../../usb/endpoints.c:267: case 0x81:
	sjmp	00140$
00132$:
;	../../../usb/endpoints.c:268: EP_IN_STALL_TOG(1);
	mov	a,#0xbf
	anl	a,_UEP1_CTRL
	orl	a,#0x03
	mov	_UEP1_CTRL,a
;	../../../usb/endpoints.c:269: break;
;	../../../usb/endpoints.c:270: case 0x02:
	sjmp	00140$
00133$:
;	../../../usb/endpoints.c:271: EP_OUT_STALL_TOG(2);
	mov	a,#0x7f
	anl	a,_UEP2_CTRL
	orl	a,#0x0c
	mov	_UEP2_CTRL,a
;	../../../usb/endpoints.c:272: break;
;	../../../usb/endpoints.c:273: default:
	sjmp	00140$
00134$:
;	../../../usb/endpoints.c:274: SETUP_STALL();
	mov	_UEP0_CTRL,#0xcf
;	../../../usb/endpoints.c:275: return;
	ret
;	../../../usb/endpoints.c:280: case USB_REQ_TO_DEVICE: {
00136$:
;	../../../usb/endpoints.c:281: if (UsbSetupBuf->wValue != 0x01) {
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	cjne	r5,#0x01,00332$
	cjne	r6,#0x00,00332$
	sjmp	00138$
00332$:
;	../../../usb/endpoints.c:282: SETUP_STALL();
	mov	_UEP0_CTRL,#0xcf
;	../../../usb/endpoints.c:283: return;
	ret
00138$:
;	../../../usb/endpoints.c:286: usb_state.remote_wake = true;
	mov	r0,#_usb_state
	mov	a,@r0
	orl	a,#0x08
	mov	@r0,a
;	../../../usb/endpoints.c:287: break;
;	../../../usb/endpoints.c:290: default:
	sjmp	00140$
00139$:
;	../../../usb/endpoints.c:291: SETUP_STALL();
	mov	_UEP0_CTRL,#0xcf
;	../../../usb/endpoints.c:292: return;
	ret
;	../../../usb/endpoints.c:293: }
00140$:
;	../../../usb/endpoints.c:294: usb_state.setup_state = SETUP_STATE_IN;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0x1f
	orl	a,#0x60
	mov	@r0,a
;	../../../usb/endpoints.c:295: break;
;	../../../usb/endpoints.c:297: case USB_GET_STATUS:
	sjmp	00154$
00141$:
;	../../../usb/endpoints.c:298: Ep0Buffer[0] = 0x00 | (usb_state.remote_wake ? 0x02 : 0x00);
	mov	r0,#_usb_state
	mov	a,@r0
	jnb	acc.3,00165$
	mov	r5,#0x02
	mov	r6,#0x00
	sjmp	00166$
00165$:
	mov	r5,#0x00
	mov	r6,#0x00
00166$:
	mov	dptr,#_Ep0Buffer
	mov	a,r5
	movx	@dptr,a
;	../../../usb/endpoints.c:299: Ep0Buffer[1] = 0x00;
	mov	dptr,#(_Ep0Buffer + 0x0001)
	clr	a
	movx	@dptr,a
;	../../../usb/endpoints.c:300: datalen = 2;
	mov	r7,#0x02
;	../../../usb/endpoints.c:301: usb_state.setup_state = SETUP_DATA_IN;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0x1f
	orl	a,#0x20
	mov	@r0,a
;	../../../usb/endpoints.c:302: break;
;	../../../usb/endpoints.c:303: default:
	sjmp	00154$
00142$:
;	../../../usb/endpoints.c:304: SETUP_STALL();
	mov	_UEP0_CTRL,#0xcf
;	../../../usb/endpoints.c:305: return;
	ret
;	../../../usb/endpoints.c:306: }
00153$:
;	../../../usb/endpoints.c:307: } else if (UsbSetupBuf->bmRequestType.Type == 1) {
	mov	dptr,#_Ep0Buffer
	movx	a,@dptr
	swap	a
	rr	a
	anl	a,#0x03
	mov	r6,a
	cjne	r6,#0x01,00150$
;	../../../usb/endpoints.c:309: datalen = ClassRequestHandler(UsbSetupBuf);
	mov	dptr,#_Ep0Buffer
	mov	b,#0x00
	lcall	_ClassRequestHandler
	mov	r6,dpl
	mov	ar7,r6
;	../../../usb/endpoints.c:310: if (datalen == 0xFF) {
	cjne	r7,#0xff,00145$
;	../../../usb/endpoints.c:311: SETUP_STALL();
	mov	_UEP0_CTRL,#0xcf
;	../../../usb/endpoints.c:312: return;
	ret
00145$:
;	../../../usb/endpoints.c:314: if (datalen > 0) {
	mov	a,r7
	jz	00147$
;	../../../usb/endpoints.c:315: usb_state.setup_state = SETUP_STATE_IN;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0x1f
	orl	a,#0x60
	mov	@r0,a
	sjmp	00154$
00147$:
;	../../../usb/endpoints.c:317: pDataIn = Ep0Buffer;
	mov	_pDataIn,#_Ep0Buffer
	mov	(_pDataIn + 1),#(_Ep0Buffer >> 8)
	mov	(_pDataIn + 2),#0x00
;	../../../usb/endpoints.c:318: usb_state.setup_state = SETUP_DATA_IN;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0x1f
	orl	a,#0x20
	mov	@r0,a
	sjmp	00154$
00150$:
;	../../../usb/endpoints.c:321: SETUP_STALL();
	mov	_UEP0_CTRL,#0xcf
;	../../../usb/endpoints.c:322: return;
	ret
00154$:
;	../../../usb/endpoints.c:325: switch (usb_state.setup_state) {
	mov	r0,#_usb_state
	mov	a,@r0
	swap	a
	rr	a
	anl	a,#0x07
	mov	r6,a
	cjne	r6,#0x01,00339$
	sjmp	00156$
00339$:
	cjne	r6,#0x03,00161$
;	../../../usb/endpoints.c:327: UEP0_T_LEN = 0; //虽然尚未到状态阶段，但是提前预置上传0长度数据包以防主机提前进入状态阶段
	mov	_UEP0_T_LEN,#0x00
;	../../../usb/endpoints.c:328: EP0_DATA1_ACK(); // 响应SETUP包的STATUS
	mov	_UEP0_CTRL,#0xc0
;	../../../usb/endpoints.c:330: break;
;	../../../usb/endpoints.c:331: case SETUP_DATA_IN:
	ret
00156$:
;	../../../usb/endpoints.c:332: DataInLen = DataInLen > datalen ? datalen : DataInLen;
	clr	c
	mov	a,r7
	subb	a,_DataInLen
	jc	00168$
	mov	r7,_DataInLen
00168$:
	mov	_DataInLen,r7
;	../../../usb/endpoints.c:333: uint8_t len = DataInLen >= THIS_ENDP0_SIZE ? THIS_ENDP0_SIZE : DataInLen; //本次传输长度
	clr	c
	mov	a,_DataInLen
	subb	a,#0x08
	mov	b0,c
	jc	00169$
	mov	r6,#0x08
	mov	r7,#0x00
	sjmp	00170$
00169$:
	mov	r6,_DataInLen
	mov	r7,#0x00
00170$:
;	../../../usb/endpoints.c:334: memcpy(Ep0Buffer, pDataIn, len); //加载上传数据
	mov	ar5,r6
	mov	r7,#0x00
	mov	r2,_pDataIn
	mov	r3,(_pDataIn + 1)
	mov	r4,(_pDataIn + 2)
	push	ar6
	push	ar5
	push	ar7
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_Ep0Buffer
	mov	b,#0x00
	lcall	___memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
;	../../../usb/endpoints.c:335: DataInLen -= len;
	mov	a,_DataInLen
	clr	c
	subb	a,r6
	mov	_DataInLen,a
;	../../../usb/endpoints.c:336: pDataIn += len;
	mov	a,r6
	add	a,_pDataIn
	mov	_pDataIn,a
	clr	a
	addc	a,(_pDataIn + 1)
	mov	(_pDataIn + 1),a
;	../../../usb/endpoints.c:338: UEP0_T_LEN = len;
	mov	_UEP0_T_LEN,r6
;	../../../usb/endpoints.c:339: EP0_DATA1_ACK(); // 使用DATA1响应数据
	mov	_UEP0_CTRL,#0xc0
;	../../../usb/endpoints.c:341: if (DataInLen == 0)
	mov	a,_DataInLen
	jnz	00161$
;	../../../usb/endpoints.c:342: usb_state.setup_state = SETUP_STATE_OUT;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0x1f
	orl	a,#0x80
	mov	@r0,a
;	../../../usb/endpoints.c:346: }
00161$:
;	../../../usb/endpoints.c:347: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP1_IN'
;------------------------------------------------------------
;	../../../usb/endpoints.c:349: void EP1_IN()
;	-----------------------------------------
;	 function EP1_IN
;	-----------------------------------------
_EP1_IN:
;	../../../usb/endpoints.c:351: EP_IN_FINISH(1);
	mov	_UEP1_T_LEN,#0x00
	mov	a,#0xfc
	anl	a,_UEP1_CTRL
	orl	a,#0x02
	mov	_UEP1_CTRL,a
;	../../../usb/endpoints.c:352: usb_state.is_busy = false;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0xfd
	mov	@r0,a
;	../../../usb/endpoints.c:353: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP2_IN'
;------------------------------------------------------------
;	../../../usb/endpoints.c:355: void EP2_IN()
;	-----------------------------------------
;	 function EP2_IN
;	-----------------------------------------
_EP2_IN:
;	../../../usb/endpoints.c:357: EP_IN_FINISH(2);
	mov	_UEP2_T_LEN,#0x00
	mov	a,#0xfc
	anl	a,_UEP2_CTRL
	orl	a,#0x02
	mov	_UEP2_CTRL,a
;	../../../usb/endpoints.c:358: usb_state.is_busy = false;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0xfd
	mov	@r0,a
;	../../../usb/endpoints.c:359: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP3_IN'
;------------------------------------------------------------
;	../../../usb/endpoints.c:361: void EP3_IN()
;	-----------------------------------------
;	 function EP3_IN
;	-----------------------------------------
_EP3_IN:
;	../../../usb/endpoints.c:363: EP_IN_FINISH(3);
	mov	_UEP3_T_LEN,#0x00
	mov	a,#0xfc
	anl	a,_UEP3_CTRL
	orl	a,#0x02
	mov	_UEP3_CTRL,a
;	../../../usb/endpoints.c:364: usb_state.is_busy = false;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0xfd
	mov	@r0,a
;	../../../usb/endpoints.c:365: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP4_IN'
;------------------------------------------------------------
;	../../../usb/endpoints.c:367: void EP4_IN()
;	-----------------------------------------
;	 function EP4_IN
;	-----------------------------------------
_EP4_IN:
;	../../../usb/endpoints.c:369: EP_IN_FINISH(4);
	mov	_UEP4_T_LEN,#0x00
	mov	a,#0xfc
	anl	a,_UEP4_CTRL
	orl	a,#0x02
	mov	_UEP4_CTRL,a
;	../../../usb/endpoints.c:370: UEP4_CTRL ^= bUEP_T_TOG;
	mov	r6,_UEP4_CTRL
	xrl	ar6,#0x40
	mov	_UEP4_CTRL,r6
;	../../../usb/endpoints.c:371: usb_state.is_busy = false;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0xfd
	mov	@r0,a
;	../../../usb/endpoints.c:372: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ClassRequestHandler'
;------------------------------------------------------------
;packet                    Allocated to registers r5 r6 r7 
;interface                 Allocated to registers r4 
;recipient                 Allocated to registers r3 
;------------------------------------------------------------
;	../../../usb/endpoints.c:374: static uint8_t ClassRequestHandler(PUSB_SETUP_REQ packet)
;	-----------------------------------------
;	 function ClassRequestHandler
;	-----------------------------------------
_ClassRequestHandler:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../../usb/endpoints.c:376: uint8_t interface = packet->wIndexL;
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
;	../../../usb/endpoints.c:377: uint8_t recipient = UsbSetupBuf->bmRequestType.Recipient;
	mov	dptr,#_Ep0Buffer
	movx	a,@dptr
	anl	a,#0x1f
	mov	r3,a
;	../../../usb/endpoints.c:379: switch (packet->bRequest) {
	inc	r5
	cjne	r5,#0x00,00207$
	inc	r6
00207$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x01,00208$
	sjmp	00101$
00208$:
	cjne	r7,#0x02,00209$
	sjmp	00105$
00209$:
	cjne	r7,#0x03,00210$
	sjmp	00109$
00210$:
	cjne	r7,#0x09,00211$
	sjmp	00113$
00211$:
	cjne	r7,#0x0a,00212$
	ljmp	00117$
00212$:
	cjne	r7,#0x0b,00213$
	ljmp	00121$
00213$:
	ljmp	00125$
;	../../../usb/endpoints.c:380: case 0x01: //GetReport
00101$:
;	../../../usb/endpoints.c:381: if (interface == 0 && recipient == USB_REQ_TO_INTERFACE) {
	mov	a,r4
	jz	00214$
	ljmp	00126$
00214$:
	cjne	r3,#0x01,00215$
	sjmp	00216$
00215$:
	ljmp	00126$
00216$:
;	../../../usb/endpoints.c:382: memcpy(Ep0Buffer, &Ep1Buffer[64], 8);
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,#(_Ep1Buffer + 0x0040)
	push	acc
	mov	a,#((_Ep1Buffer + 0x0040) >> 8)
	push	acc
	clr	a
	push	acc
	mov	dptr,#_Ep0Buffer
	mov	b,#0x00
	lcall	___memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../usb/endpoints.c:383: return 8;
	mov	dpl,#0x08
	ret
;	../../../usb/endpoints.c:386: case 0x02: //GetIdle
00105$:
;	../../../usb/endpoints.c:387: if (interface == 0 && recipient == USB_REQ_TO_INTERFACE) {
	mov	a,r4
	jnz	00126$
	cjne	r3,#0x01,00126$
;	../../../usb/endpoints.c:388: Ep0Buffer[0] = keyboard_idle;
	mov	dptr,#_Ep0Buffer
	mov	a,_keyboard_idle
	movx	@dptr,a
;	../../../usb/endpoints.c:389: return 1;
	mov	dpl,#0x01
	ret
;	../../../usb/endpoints.c:392: case 0x03: //GetProtocol
00109$:
;	../../../usb/endpoints.c:393: if (interface == 0 && recipient == USB_REQ_TO_INTERFACE) {
	mov	a,r4
	jnz	00126$
	cjne	r3,#0x01,00126$
;	../../../usb/endpoints.c:394: Ep0Buffer[0] = usb_state.protocol ? 1 : 0;
	mov	r0,#_usb_state
	mov	a,@r0
	jnb	acc.4,00129$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00130$
00129$:
	mov	r6,#0x00
	mov	r7,#0x00
00130$:
	mov	dptr,#_Ep0Buffer
	mov	a,r6
	movx	@dptr,a
;	../../../usb/endpoints.c:395: return 1;
	mov	dpl,#0x01
;	../../../usb/endpoints.c:398: case 0x09: //SetReport
	ret
00113$:
;	../../../usb/endpoints.c:399: if (interface == 0 && recipient == USB_REQ_TO_INTERFACE) {
	mov	a,r4
	jnz	00126$
	cjne	r3,#0x01,00126$
;	../../../usb/endpoints.c:400: Ep1Buffer[0] = Ep0Buffer[0];
	mov	dptr,#_Ep0Buffer
	movx	a,@dptr
	mov	dptr,#_Ep1Buffer
	movx	@dptr,a
;	../../../usb/endpoints.c:401: EP1_OUT();
	lcall	_EP1_OUT
;	../../../usb/endpoints.c:403: break;
;	../../../usb/endpoints.c:404: case 0x0A: //SetIdle
	sjmp	00126$
00117$:
;	../../../usb/endpoints.c:405: if (interface == 0 && recipient == USB_REQ_TO_INTERFACE) {
	mov	a,r4
	jnz	00126$
	cjne	r3,#0x01,00126$
;	../../../usb/endpoints.c:406: keyboard_idle = UsbSetupBuf->wValueH;
	mov	dptr,#(_Ep0Buffer + 0x0003)
	movx	a,@dptr
	mov	_keyboard_idle,a
;	../../../usb/endpoints.c:408: break;
;	../../../usb/endpoints.c:409: case 0x0B: //SetProtocol
	sjmp	00126$
00121$:
;	../../../usb/endpoints.c:410: if (interface == 0 && recipient == USB_REQ_TO_INTERFACE) {
	mov	a,r4
	jnz	00126$
	cjne	r3,#0x01,00126$
;	../../../usb/endpoints.c:411: usb_state.protocol = UsbSetupBuf->wValueL > 0;
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
;	assignBit
	add	a,#0xff
	clr	a
	rlc	a
	mov	r7,a
	mov	r0,#_usb_state
	rrc	a
	mov	a,@r0
	mov	acc.4,c
	mov	@r0,a
;	../../../usb/endpoints.c:413: break;
;	../../../usb/endpoints.c:414: default:
	sjmp	00126$
00125$:
;	../../../usb/endpoints.c:415: return 0xFF; /*命令不支持*/
	mov	dpl,#0xff
;	../../../usb/endpoints.c:417: }
	ret
00126$:
;	../../../usb/endpoints.c:418: return 0;
	mov	dpl,#0x00
;	../../../usb/endpoints.c:419: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBDeviceInit'
;------------------------------------------------------------
;	../../../usb/endpoints.c:424: void USBDeviceInit()
;	-----------------------------------------
;	 function USBDeviceInit
;	-----------------------------------------
_USBDeviceInit:
;	../../../usb/endpoints.c:426: IE_USB = 0;
;	assignBit
	clr	_IE_USB
;	../../../usb/endpoints.c:427: USB_CTRL = 0x00; // 先设定USB设备模式
	mov	_USB_CTRL,#0x00
;	../../../usb/endpoints.c:429: UEP0_DMA = (uint16_t)Ep0Buffer; //端点0数据传输地址
	mov	r6,#_Ep0Buffer
	mov	r7,#(_Ep0Buffer >> 8)
	mov	((_UEP0_DMA >> 0) & 0xFF),r6
	mov	((_UEP0_DMA >> 8) & 0xFF),r7
;	../../../usb/endpoints.c:430: UEP4_1_MOD |= bUEP4_RX_EN | bUEP4_TX_EN; //端点0单64字节收发缓冲区, 端点4单64字节收发缓冲区
	orl	_UEP4_1_MOD,#0x0c
;	../../../usb/endpoints.c:431: UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK; //OUT事务返回ACK，IN事务返回NAK
	mov	_UEP0_CTRL,#0x02
;	../../../usb/endpoints.c:433: UEP1_DMA = (uint16_t)Ep1Buffer; //端点1数据传输地址
	mov	r6,#_Ep1Buffer
	mov	r7,#(_Ep1Buffer >> 8)
	mov	((_UEP1_DMA >> 0) & 0xFF),r6
	mov	((_UEP1_DMA >> 8) & 0xFF),r7
;	../../../usb/endpoints.c:434: UEP4_1_MOD = UEP4_1_MOD & ~bUEP1_BUF_MOD | bUEP1_TX_EN | bUEP1_RX_EN; //端点1收发使能 64字节收发缓冲区
	mov	a,#0xef
	anl	a,_UEP4_1_MOD
	orl	a,#0xc0
	mov	_UEP4_1_MOD,a
;	../../../usb/endpoints.c:435: UEP1_CTRL = bUEP_AUTO_TOG | UEP_T_RES_NAK; //端点1自动翻转同步标志位，IN事务返回NAK
	mov	_UEP1_CTRL,#0x12
;	../../../usb/endpoints.c:437: UEP2_DMA = (uint16_t)Ep2Buffer; //端点2数据传输地址
	mov	r6,#_Ep2Buffer
	mov	r7,#(_Ep2Buffer >> 8)
	mov	((_UEP2_DMA >> 0) & 0xFF),r6
	mov	((_UEP2_DMA >> 8) & 0xFF),r7
;	../../../usb/endpoints.c:438: UEP2_3_MOD = UEP2_3_MOD & ~bUEP2_BUF_MOD | bUEP2_TX_EN; //端点2接收使能 64字节缓冲区
	mov	a,#0xfe
	anl	a,_UEP2_3_MOD
	orl	a,#0x04
	mov	_UEP2_3_MOD,a
;	../../../usb/endpoints.c:439: UEP2_CTRL = bUEP_AUTO_TOG | UEP_T_RES_NAK; //端点2自动翻转同步标志位，IN事务返回NAK
	mov	_UEP2_CTRL,#0x12
;	../../../usb/endpoints.c:441: UEP3_DMA = (uint16_t)Ep3Buffer; //端点3数据传输地址
	mov	r6,#_Ep3Buffer
	mov	r7,#(_Ep3Buffer >> 8)
	mov	((_UEP3_DMA >> 0) & 0xFF),r6
	mov	((_UEP3_DMA >> 8) & 0xFF),r7
;	../../../usb/endpoints.c:442: UEP2_3_MOD = UEP2_3_MOD & ~bUEP3_BUF_MOD | bUEP3_TX_EN | bUEP1_RX_EN; //端点3接收使能 64字节缓冲区
	mov	a,#0xef
	anl	a,_UEP2_3_MOD
	orl	a,#0xc0
	mov	_UEP2_3_MOD,a
;	../../../usb/endpoints.c:443: UEP3_CTRL = bUEP_AUTO_TOG | UEP_T_RES_NAK; //端点3自动翻转同步标志位，IN事务返回NAK
	mov	_UEP3_CTRL,#0x12
;	../../../usb/endpoints.c:445: UEP4_CTRL = bUEP_AUTO_TOG | UEP_T_RES_NAK; //端点4自动翻转同步标志位，IN事务返回NAK
	mov	_UEP4_CTRL,#0x12
;	../../../usb/endpoints.c:447: USB_DEV_AD = 0x00;
	mov	_USB_DEV_AD,#0x00
;	../../../usb/endpoints.c:448: UDEV_CTRL = bUD_PD_DIS; // 禁止DP/DM下拉电阻
	mov	_UDEV_CTRL,#0x80
;	../../../usb/endpoints.c:449: USB_CTRL = bUC_DEV_PU_EN | bUC_INT_BUSY | bUC_DMA_EN; // 启动USB设备及DMA，在中断期间中断标志未清除前自动返回NAK
	mov	_USB_CTRL,#0x29
;	../../../usb/endpoints.c:450: UDEV_CTRL |= bUD_PORT_EN; // 允许USB端口
	orl	_UDEV_CTRL,#0x01
;	../../../usb/endpoints.c:451: USB_INT_FG = 0xFF; // 清中断标志
	mov	_USB_INT_FG,#0xff
;	../../../usb/endpoints.c:452: USB_INT_EN = bUIE_SUSPEND | bUIE_TRANSFER | bUIE_BUS_RST;
	mov	_USB_INT_EN,#0x07
;	../../../usb/endpoints.c:453: IE_USB = 1;
;	assignBit
	setb	_IE_USB
;	../../../usb/endpoints.c:454: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

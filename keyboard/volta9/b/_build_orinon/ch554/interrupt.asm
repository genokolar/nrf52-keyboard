;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module interrupt
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EndpointPacketSofHandler
	.globl _EndpointPacketSetupHandler
	.globl _EndpointPacketInHandler
	.globl _EndpointPacketOutHandler
	.globl _UsbSuspendEvt
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
	.globl _UsbIsr
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
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
;Allocation info for local variables in function 'UsbTransfurEventHandler'
;------------------------------------------------------------
;ep                        Allocated to registers r7 
;------------------------------------------------------------
;	../../../usb/interrupt.c:59: static void UsbTransfurEventHandler()
;	-----------------------------------------
;	 function UsbTransfurEventHandler
;	-----------------------------------------
_UsbTransfurEventHandler:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../../../usb/interrupt.c:61: uint8_t ep = USB_INT_ST & MASK_UIS_ENDP;
	mov	r7,_USB_INT_ST
	anl	ar7,#0x0f
;	../../../usb/interrupt.c:63: switch (USB_INT_ST & MASK_UIS_TOKEN) {
	mov	r5,_USB_INT_ST
	anl	ar5,#0x30
	mov	r6,#0x00
	cjne	r5,#0x00,00125$
	cjne	r6,#0x00,00125$
	sjmp	00102$
00125$:
	cjne	r5,#0x10,00126$
	cjne	r6,#0x00,00126$
	ljmp	00104$
00126$:
	cjne	r5,#0x20,00127$
	cjne	r6,#0x00,00127$
	sjmp	00101$
00127$:
	cjne	r5,#0x30,00128$
	cjne	r6,#0x00,00128$
	sjmp	00103$
00128$:
	ljmp	00106$
;	../../../usb/interrupt.c:64: case UIS_TOKEN_IN:
00101$:
;	../../../usb/interrupt.c:65: (*EndpointPacketInHandler[ep])();
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_EndpointPacketInHandler
	mov	dpl,a
	mov	a,#(_EndpointPacketInHandler >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	push	ar6
	push	ar5
	mov	dpl,r5
	mov	dph,r6
	lcall	__sdcc_call_dptr
	pop	ar5
	pop	ar6
;	../../../usb/interrupt.c:66: break;
;	../../../usb/interrupt.c:67: case UIS_TOKEN_OUT:
	sjmp	00106$
00102$:
;	../../../usb/interrupt.c:68: (*EndpointPacketOutHandler[ep])();
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_EndpointPacketOutHandler
	mov	dpl,a
	mov	a,#(_EndpointPacketOutHandler >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	push	ar6
	push	ar5
	mov	dpl,r5
	mov	dph,r6
	lcall	__sdcc_call_dptr
	pop	ar5
	pop	ar6
;	../../../usb/interrupt.c:69: break;
;	../../../usb/interrupt.c:70: case UIS_TOKEN_SETUP:
	sjmp	00106$
00103$:
;	../../../usb/interrupt.c:71: (*EndpointPacketSetupHandler[ep])();
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_EndpointPacketSetupHandler
	mov	dpl,a
	mov	a,#(_EndpointPacketSetupHandler >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	push	ar6
	push	ar5
	mov	dpl,r5
	mov	dph,r6
	lcall	__sdcc_call_dptr
	pop	ar5
	pop	ar6
;	../../../usb/interrupt.c:72: break;
;	../../../usb/interrupt.c:73: case UIS_TOKEN_SOF:
	sjmp	00106$
00104$:
;	../../../usb/interrupt.c:74: (*EndpointPacketSofHandler[ep])();
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_EndpointPacketSofHandler
	mov	dpl,a
	mov	a,#(_EndpointPacketSofHandler >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar7
	push	ar6
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	pop	ar6
	pop	ar7
;	../../../usb/interrupt.c:78: }
00106$:
;	../../../usb/interrupt.c:79: UIF_TRANSFER = 0; //写0清空中断
;	assignBit
	clr	_UIF_TRANSFER
;	../../../usb/interrupt.c:80: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UsbBusResetEventHandler'
;------------------------------------------------------------
;	../../../usb/interrupt.c:85: static void UsbBusResetEventHandler()
;	-----------------------------------------
;	 function UsbBusResetEventHandler
;	-----------------------------------------
_UsbBusResetEventHandler:
;	../../../usb/interrupt.c:87: UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;
	mov	_UEP0_CTRL,#0x02
;	../../../usb/interrupt.c:88: UEP1_CTRL = bUEP_AUTO_TOG | UEP_R_RES_ACK | UEP_T_RES_NAK;
	mov	_UEP1_CTRL,#0x12
;	../../../usb/interrupt.c:89: UEP2_CTRL = bUEP_AUTO_TOG | UEP_R_RES_ACK | UEP_T_RES_NAK;
	mov	_UEP2_CTRL,#0x12
;	../../../usb/interrupt.c:90: UEP3_CTRL = bUEP_AUTO_TOG | UEP_R_RES_ACK | UEP_T_RES_NAK;
	mov	_UEP3_CTRL,#0x12
;	../../../usb/interrupt.c:91: UEP4_CTRL = bUEP_AUTO_TOG | UEP_R_RES_ACK | UEP_T_RES_NAK;
	mov	_UEP4_CTRL,#0x12
;	../../../usb/interrupt.c:92: USB_DEV_AD = 0x00;
	mov	_USB_DEV_AD,#0x00
;	../../../usb/interrupt.c:93: UIF_SUSPEND = 0;
;	assignBit
	clr	_UIF_SUSPEND
;	../../../usb/interrupt.c:94: UIF_TRANSFER = 0;
;	assignBit
	clr	_UIF_TRANSFER
;	../../../usb/interrupt.c:95: UIF_BUS_RST = 0; //清中断标志
;	assignBit
	clr	_UIF_BUS_RST
;	../../../usb/interrupt.c:98: usb_state.is_ready = false;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0xfe
	mov	@r0,a
;	../../../usb/interrupt.c:99: usb_state.protocol = true;
	mov	r0,#_usb_state
	mov	a,@r0
	orl	a,#0x10
	mov	@r0,a
;	../../../usb/interrupt.c:100: usb_state.setup_state = SETUP_IDLE;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0x1f
	mov	@r0,a
;	../../../usb/interrupt.c:101: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UsbBusSuspendEventHandler'
;------------------------------------------------------------
;	../../../usb/interrupt.c:108: static void UsbBusSuspendEventHandler()
;	-----------------------------------------
;	 function UsbBusSuspendEventHandler
;	-----------------------------------------
_UsbBusSuspendEventHandler:
;	../../../usb/interrupt.c:110: UIF_SUSPEND = 0;
;	assignBit
	clr	_UIF_SUSPEND
;	../../../usb/interrupt.c:111: UsbSuspendEvt(USB_MIS_ST & bUMS_SUSPEND); //挂起
	mov	a,_USB_MIS_ST
	rr	a
	rr	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	clr	a
	rlc	a
	mov	dpl,a
;	../../../usb/interrupt.c:112: }
	ljmp	_UsbSuspendEvt
;------------------------------------------------------------
;Allocation info for local variables in function 'UsbIsr'
;------------------------------------------------------------
;	../../../usb/interrupt.c:119: void UsbIsr()
;	-----------------------------------------
;	 function UsbIsr
;	-----------------------------------------
_UsbIsr:
;	../../../usb/interrupt.c:121: if (UIF_TRANSFER) {
	jnb	_UIF_TRANSFER,00108$
;	../../../usb/interrupt.c:123: UsbTransfurEventHandler();
	ljmp	_UsbTransfurEventHandler
00108$:
;	../../../usb/interrupt.c:124: } else if (UIF_BUS_RST) {
	jnb	_UIF_BUS_RST,00105$
;	../../../usb/interrupt.c:126: UsbBusResetEventHandler();
	ljmp	_UsbBusResetEventHandler
00105$:
;	../../../usb/interrupt.c:127: } else if (UIF_SUSPEND) {
	jnb	_UIF_SUSPEND,00102$
;	../../../usb/interrupt.c:129: UsbBusSuspendEventHandler();
	ljmp	_UsbBusSuspendEventHandler
00102$:
;	../../../usb/interrupt.c:132: USB_INT_FG = 0xFF; //清中断标志
	mov	_USB_INT_FG,#0xff
;	../../../usb/interrupt.c:134: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_EndpointPacketOutHandler:
	.byte _EP0_OUT, (_EP0_OUT >> 8)
	.byte _EP1_OUT, (_EP1_OUT >> 8)
	.byte _nop, (_nop >> 8)
	.byte _EP3_OUT, (_EP3_OUT >> 8)
	.byte _EP4_OUT, (_EP4_OUT >> 8)
_EndpointPacketInHandler:
	.byte _EP0_IN, (_EP0_IN >> 8)
	.byte _EP1_IN, (_EP1_IN >> 8)
	.byte _EP2_IN, (_EP2_IN >> 8)
	.byte _EP3_IN, (_EP3_IN >> 8)
	.byte _EP4_IN, (_EP4_IN >> 8)
_EndpointPacketSetupHandler:
	.byte _EP0_SETUP, (_EP0_SETUP >> 8)
	.byte _nop, (_nop >> 8)
	.byte _nop, (_nop >> 8)
	.byte _nop, (_nop >> 8)
	.byte _nop, (_nop >> 8)
_EndpointPacketSofHandler:
	.byte _nop, (_nop >> 8)
	.byte _nop, (_nop >> 8)
	.byte _nop, (_nop >> 8)
	.byte _nop, (_nop >> 8)
	.byte _nop, (_nop >> 8)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

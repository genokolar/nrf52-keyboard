;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module SW_DP
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _SWJ_Sequence
	.globl _SWD_Sequence
	.globl _SWD_Transfer
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
;Allocation info for local variables in function 'SWJ_Sequence'
;------------------------------------------------------------
;data                      Allocated to stack - _bp -5
;count                     Allocated to registers 
;val                       Allocated to registers r5 
;n                         Allocated to registers r4 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../../usb/SW_DP.c:63: void SWJ_Sequence(uint16_t count, const uint8_t* data)
;	-----------------------------------------
;	 function SWJ_Sequence
;	-----------------------------------------
_SWJ_Sequence:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
	mov	r6,dpl
	mov	r7,dph
;	../../../usb/SW_DP.c:68: val = 0U;
;	../../../usb/SW_DP.c:69: n = 0U;
;	../../../usb/SW_DP.c:70: while (count--) {
	clr	a
	mov	r5,a
	mov	r4,a
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	r1,_bp
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
00106$:
	mov	ar2,r6
	mov	ar3,r7
	dec	r6
	cjne	r6,#0xff,00128$
	dec	r7
00128$:
	mov	a,r2
	orl	a,r3
	jz	00109$
;	../../../usb/SW_DP.c:71: if (n == 0U) {
	mov	a,r4
	jnz	00102$
;	../../../usb/SW_DP.c:72: val = *data++;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	../../../usb/SW_DP.c:73: n = 8U;
	mov	r4,#0x08
00102$:
;	../../../usb/SW_DP.c:75: if (val & 1U) {
	mov	a,r5
	jnb	acc.0,00104$
;	../../../usb/SW_DP.c:76: PIN_SWDIO_TMS_SET();
;	assignBit
	setb	_T2
	sjmp	00105$
00104$:
;	../../../usb/SW_DP.c:78: PIN_SWDIO_TMS_CLR();
;	assignBit
	clr	_T2
00105$:
;	../../../usb/SW_DP.c:80: SW_CLOCK_CYCLE();
;	assignBit
	clr	_T2EX
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:81: val >>= 1;
	mov	a,r5
	clr	c
	rrc	a
	mov	r5,a
;	../../../usb/SW_DP.c:82: n--;
	dec	r4
	sjmp	00106$
00109$:
;	../../../usb/SW_DP.c:84: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SWD_Sequence'
;------------------------------------------------------------
;swdo                      Allocated to stack - _bp -5
;swdi                      Allocated to stack - _bp -8
;info                      Allocated to registers r7 
;val                       Allocated to registers 
;bit                       Allocated to registers r7 
;n                         Allocated to registers r6 
;k                         Allocated to registers r2 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../../usb/SW_DP.c:93: void SWD_Sequence(uint8_t info, const uint8_t* swdo, uint8_t* swdi)
;	-----------------------------------------
;	 function SWD_Sequence
;	-----------------------------------------
_SWD_Sequence:
	push	_bp
	mov	_bp,sp
	inc	sp
	mov	r7,dpl
;	../../../usb/SW_DP.c:99: n = info & SWD_SEQUENCE_CLK;
	mov	a,#0x3f
	anl	a,r7
;	../../../usb/SW_DP.c:100: if (n == 0U) {
	mov	r6,a
	jnz	00102$
;	../../../usb/SW_DP.c:101: n = 64U;
	mov	r6,#0x40
00102$:
;	../../../usb/SW_DP.c:104: if (info & SWD_SEQUENCE_DIN) {
	mov	a,r7
	jnb	acc.7,00131$
;	../../../usb/SW_DP.c:105: while (n) {
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar7,@r0
00104$:
	mov	a,r6
	jnz	00188$
	ljmp	00122$
00188$:
;	../../../usb/SW_DP.c:106: val = 0U;
	mov	r3,#0x00
;	../../../usb/SW_DP.c:107: for (k = 8U; k && n; k--, n--) {
	mov	r2,#0x08
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
00116$:
	mov	a,r2
	jz	00135$
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jz	00135$
;	../../../usb/SW_DP.c:108: SW_READ_BIT(bit);
	push	ar4
	push	ar5
	push	ar7
;	assignBit
	clr	_T2EX
	mov	c,_T2
	clr	a
	rlc	a
	mov	r7,a
	anl	ar7,#0x01
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:109: val >>= 1;
	mov	a,r3
	clr	c
	rrc	a
	mov	r5,a
;	../../../usb/SW_DP.c:110: val |= bit << 7;
	mov	a,r7
	rr	a
	anl	a,#0x80
	orl	a,r5
	mov	r3,a
;	../../../usb/SW_DP.c:107: for (k = 8U; k && n; k--, n--) {
	dec	r2
	mov	r0,_bp
	inc	r0
	dec	@r0
	pop	ar7
	pop	ar5
	pop	ar4
	sjmp	00116$
00135$:
	mov	r0,_bp
	inc	r0
	mov	ar6,@r0
;	../../../usb/SW_DP.c:112: val >>= k;
	mov	b,r2
	inc	b
	mov	a,r3
	sjmp	00192$
00191$:
	clr	c
	rrc	a
00192$:
	djnz	b,00191$
;	../../../usb/SW_DP.c:113: *swdi++ = (uint8_t)val;
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrput
	inc	dptr
	mov	r4,dpl
	mov	r5,dph
;	../../../usb/SW_DP.c:116: while (n) {
	sjmp	00104$
00131$:
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar7,@r0
00108$:
	mov	a,r6
	jz	00122$
;	../../../usb/SW_DP.c:117: val = *swdo++;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r4,dpl
	mov	r5,dph
;	../../../usb/SW_DP.c:118: for (k = 8U; k && n; k--, n--) {
	mov	r2,#0x08
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
00120$:
	mov	a,r2
	jz	00108$
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jz	00108$
;	../../../usb/SW_DP.c:119: SW_WRITE_BIT(val);
	push	ar4
	push	ar5
	push	ar7
	mov	a,r3
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_T2,c
;	assignBit
	clr	_T2EX
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:120: val >>= 1;
	mov	a,r3
	clr	c
	rrc	a
	mov	r3,a
;	../../../usb/SW_DP.c:118: for (k = 8U; k && n; k--, n--) {
	dec	r2
	mov	r0,_bp
	inc	r0
	dec	@r0
	mov	r0,_bp
	inc	r0
	mov	ar6,@r0
	pop	ar7
	pop	ar5
	pop	ar4
	sjmp	00120$
00122$:
;	../../../usb/SW_DP.c:124: }
	dec	sp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SWD_Transfer'
;------------------------------------------------------------
;data                      Allocated to stack - _bp -5
;request                   Allocated to stack - _bp +1
;ack                       Allocated to registers r4 
;bit                       Allocated to registers r5 
;val                       Allocated to registers r6 
;parity                    Allocated to registers r6 
;n                         Allocated to registers 
;b                         Allocated to stack - _bp +3
;n                         Allocated to registers r6 
;n                         Allocated to registers 
;n                         Allocated to registers r7 
;b                         Allocated to registers r4 
;n                         Allocated to registers r2 
;cycles                    Allocated to registers 
;n                         Allocated to registers r4 
;n                         Allocated to registers 
;n                         Allocated to registers r7 
;n                         Allocated to registers 
;sloc0                     Allocated to stack - _bp +18
;sloc1                     Allocated to stack - _bp +2
;------------------------------------------------------------
;	../../../usb/SW_DP.c:130: uint8_t SWD_Transfer(uint8_t request, uint8_t* data)
;	-----------------------------------------
;	 function SWD_Transfer
;	-----------------------------------------
_SWD_Transfer:
	push	_bp
	mov	_bp,sp
	push	dpl
	inc	sp
	inc	sp
;	../../../usb/SW_DP.c:139: SW_WRITE_BIT(1U); /* Start Bit */
;	assignBit
	setb	_T2
;	assignBit
	clr	_T2EX
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:140: bit = request >> 0;
	mov	r0,_bp
	inc	r0
;	../../../usb/SW_DP.c:141: SW_WRITE_BIT(bit); /* APnDP Bit */
	mov	a,@r0
	mov	r6,a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_T2,c
;	assignBit
	clr	_T2EX
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:143: bit = request >> 1;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	clr	c
	rrc	a
;	../../../usb/SW_DP.c:144: SW_WRITE_BIT(bit); /* RnW Bit */
	mov	r5,a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_T2,c
;	assignBit
	clr	_T2EX
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:145: parity += bit;
	mov	a,r5
	add	a,r6
	mov	r6,a
;	../../../usb/SW_DP.c:146: bit = request >> 2;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	rr	a
	rr	a
	anl	a,#0x3f
;	../../../usb/SW_DP.c:147: SW_WRITE_BIT(bit); /* A2 Bit */
	mov	r5,a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_T2,c
;	assignBit
	clr	_T2EX
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:148: parity += bit;
	mov	a,r5
	add	a,r6
	mov	r5,a
;	../../../usb/SW_DP.c:149: bit = request >> 3;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	swap	a
	rl	a
	anl	a,#0x1f
;	../../../usb/SW_DP.c:150: SW_WRITE_BIT(bit); /* A3 Bit */
	mov	r6,a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_T2,c
;	assignBit
	clr	_T2EX
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:151: parity += bit;
	mov	a,r6
	add	a,r5
;	../../../usb/SW_DP.c:152: SW_WRITE_BIT(parity); /* Parity Bit */
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_T2,c
;	assignBit
	clr	_T2EX
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:153: SW_WRITE_BIT(0U); /* Stop Bit */
;	assignBit
	clr	_T2
;	assignBit
	clr	_T2EX
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:154: SW_WRITE_BIT(1U); /* Park Bit */
;	assignBit
	setb	_T2
;	assignBit
	clr	_T2EX
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:158: for (uint8_t n = DAP_Data.swd_conf.turnaround; n; n--) {
	mov	dptr,#(_DAP_Data + 0x0017)
	movx	a,@dptr
	mov	r6,a
	mov	r5,a
00136$:
	mov	a,r5
	jz	00101$
;	../../../usb/SW_DP.c:159: SW_CLOCK_CYCLE();
;	assignBit
	clr	_T2EX
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:158: for (uint8_t n = DAP_Data.swd_conf.turnaround; n; n--) {
	dec	r5
	sjmp	00136$
00101$:
;	../../../usb/SW_DP.c:163: SW_READ_BIT(bit);
;	assignBit
	clr	_T2EX
	mov	c,_T2
	clr	a
	rlc	a
	mov	r5,a
	anl	ar5,#0x01
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:164: ack = bit << 0;
;	../../../usb/SW_DP.c:165: SW_READ_BIT(bit);
;	assignBit
	clr	_T2EX
	mov	c,_T2
	clr	a
	rlc	a
	mov	r4,a
	anl	ar4,#0x01
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:166: ack |= bit << 1;
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	orl	ar4,a
;	../../../usb/SW_DP.c:167: SW_READ_BIT(bit);
;	assignBit
	clr	_T2EX
	mov	c,_T2
	clr	a
	rlc	a
	mov	r5,a
	anl	ar5,#0x01
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:168: ack |= bit << 2;
	mov	a,r5
	add	a,r5
	add	a,acc
	mov	r5,a
	mov	a,r4
	orl	ar5,a
;	../../../usb/SW_DP.c:170: if (ack == DAP_TRANSFER_OK) { /* OK response */
	cjne	r5,#0x01,00361$
	sjmp	00362$
00361$:
	ljmp	00121$
00362$:
;	../../../usb/SW_DP.c:172: if (request & DAP_TRANSFER_RnW) {
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jb	acc.1,00363$
	ljmp	00186$
00363$:
;	../../../usb/SW_DP.c:175: parity = 0U;
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,#0x00
;	../../../usb/SW_DP.c:176: for (uint8_t b = 0; b < 4; b++) {
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,#0x00
00142$:
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	cjne	@r0,#0x04,00364$
00364$:
	jnc	00105$
;	../../../usb/SW_DP.c:177: for (uint8_t n = 8; n; n--) {
	mov	r6,#0x08
00139$:
	mov	a,r6
	jz	00143$
;	../../../usb/SW_DP.c:178: SW_READ_BIT(bit); /* Read RDATA[0:31] */
	push	ar5
;	assignBit
	clr	_T2EX
	mov	c,_T2
	clr	a
	rlc	a
	mov	r5,a
	mov	a,#0x01
	anl	a,r5
	mov	r4,a
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:179: parity += bit;
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,r4
	add	a,@r0
	mov	@r0,a
;	../../../usb/SW_DP.c:180: if (data) {
	pop	ar5
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00140$
;	../../../usb/SW_DP.c:181: data[b] >>= 1;
	push	ar5
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	clr	c
	rrc	a
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrput
;	../../../usb/SW_DP.c:182: data[b] |= bit << 7;
	mov	a,r4
	rr	a
	anl	a,#0x80
	mov	r4,a
	orl	ar5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,r5
	lcall	__gptrput
;	../../../usb/SW_DP.c:256: return ((uint8_t)ack);
	pop	ar5
;	../../../usb/SW_DP.c:182: data[b] |= bit << 7;
00140$:
;	../../../usb/SW_DP.c:177: for (uint8_t n = 8; n; n--) {
	dec	r6
	sjmp	00139$
00143$:
;	../../../usb/SW_DP.c:176: for (uint8_t b = 0; b < 4; b++) {
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	inc	@r0
	ljmp	00142$
00105$:
;	../../../usb/SW_DP.c:186: SW_READ_BIT(bit); /* Read Parity */
;	assignBit
	clr	_T2EX
	mov	c,_T2
	clr	a
	rlc	a
	mov	r7,a
	anl	ar7,#0x01
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:187: if ((parity ^ bit) & 1U) {
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,r7
	xrl	a,@r0
	jnb	acc.0,00107$
;	../../../usb/SW_DP.c:188: ack = DAP_TRANSFER_ERROR;
	mov	r5,#0x08
00107$:
;	../../../usb/SW_DP.c:191: for (uint8_t n = DAP_Data.swd_conf.turnaround; n; n--) {
	mov	dptr,#(_DAP_Data + 0x0017)
	movx	a,@dptr
	mov	r7,a
00145$:
	mov	a,r7
	jz	00114$
;	../../../usb/SW_DP.c:192: SW_CLOCK_CYCLE();
;	assignBit
	clr	_T2EX
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:191: for (uint8_t n = DAP_Data.swd_conf.turnaround; n; n--) {
	dec	r7
;	../../../usb/SW_DP.c:197: for (uint8_t n = DAP_Data.swd_conf.turnaround; n; n--) {
	sjmp	00145$
00186$:
	mov	ar7,r6
00148$:
	mov	a,r7
	jz	00109$
;	../../../usb/SW_DP.c:198: SW_CLOCK_CYCLE();
;	assignBit
	clr	_T2EX
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:197: for (uint8_t n = DAP_Data.swd_conf.turnaround; n; n--) {
	dec	r7
	sjmp	00148$
00109$:
;	../../../usb/SW_DP.c:202: parity = 0U;
	mov	r7,#0x00
;	../../../usb/SW_DP.c:203: for (uint8_t b = 0; b < 4; b++) {
	mov	r4,#0x00
00154$:
	cjne	r4,#0x04,00371$
00371$:
	jnc	00111$
;	../../../usb/SW_DP.c:204: val = *(data + b);
	push	ar5
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
;	../../../usb/SW_DP.c:205: for (uint8_t n = 8U; n; n--) {
	mov	r2,#0x08
;	../../../usb/SW_DP.c:256: return ((uint8_t)ack);
	pop	ar5
;	../../../usb/SW_DP.c:205: for (uint8_t n = 8U; n; n--) {
00151$:
	mov	a,r2
	jz	00155$
;	../../../usb/SW_DP.c:206: SW_WRITE_BIT(val); /* Write WDATA[0:31] */
	mov	a,r6
	anl	a,#0x01
;	assignBit
	mov	r3,a
	add	a,#0xff
	mov	_T2,c
;	assignBit
	clr	_T2EX
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:207: parity += val;
	mov	a,r6
	add	a,r7
	mov	r7,a
;	../../../usb/SW_DP.c:208: val >>= 1;
	mov	a,r6
	clr	c
	rrc	a
	mov	r6,a
;	../../../usb/SW_DP.c:205: for (uint8_t n = 8U; n; n--) {
	dec	r2
	sjmp	00151$
00155$:
;	../../../usb/SW_DP.c:203: for (uint8_t b = 0; b < 4; b++) {
	inc	r4
	sjmp	00154$
00111$:
;	../../../usb/SW_DP.c:211: SW_WRITE_BIT(parity); /* Write Parity Bit */
	mov	a,r7
	anl	a,#0x01
;	assignBit
	mov	r7,a
	add	a,#0xff
	mov	_T2,c
;	assignBit
	clr	_T2EX
;	assignBit
	setb	_T2EX
00114$:
;	../../../usb/SW_DP.c:214: if (request & DAP_TRANSFER_TIMESTAMP) {
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jnb	acc.7,00116$
;	../../../usb/SW_DP.c:215: DAP_Data.timestamp = TIMESTAMP_GET();
	mov	dptr,#(_DAP_Data + 0x0007)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00116$:
;	../../../usb/SW_DP.c:218: if (DAP_Data.transfer.idle_cycles) {
	mov	dptr,#(_DAP_Data + 0x000b)
	movx	a,@dptr
	mov	r7,a
	jz	00119$
;	../../../usb/SW_DP.c:219: PIN_SWDIO_OUT(0U);
;	assignBit
	clr	_T2
;	../../../usb/SW_DP.c:220: for (uint8_t cycles = DAP_Data.transfer.idle_cycles; cycles; cycles--) {
00157$:
	mov	a,r7
	jz	00119$
;	../../../usb/SW_DP.c:221: SW_CLOCK_CYCLE();
;	assignBit
	clr	_T2EX
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:220: for (uint8_t cycles = DAP_Data.transfer.idle_cycles; cycles; cycles--) {
	dec	r7
	sjmp	00157$
00119$:
;	../../../usb/SW_DP.c:224: PIN_SWDIO_OUT(1U);
;	assignBit
	setb	_T2
;	../../../usb/SW_DP.c:225: return ((uint8_t)ack);
	mov	dpl,r5
	sjmp	00171$
00121$:
;	../../../usb/SW_DP.c:228: if ((ack == DAP_TRANSFER_WAIT) || (ack == DAP_TRANSFER_FAULT)) {
	cjne	r5,#0x02,00377$
	sjmp	00131$
00377$:
	cjne	r5,#0x04,00132$
00131$:
;	../../../usb/SW_DP.c:230: if (DAP_Data.swd_conf.data_phase && ((request & DAP_TRANSFER_RnW) != 0U)) {
	mov	dptr,#(_DAP_Data + 0x0018)
	movx	a,@dptr
	mov	r7,a
	jz	00124$
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jnb	acc.1,00124$
;	../../../usb/SW_DP.c:231: for (uint8_t n = 32U + 1U; n; n--) {
	mov	r4,#0x21
00160$:
	mov	a,r4
	jz	00124$
;	../../../usb/SW_DP.c:232: SW_CLOCK_CYCLE(); /* Dummy Read RDATA[0:31] + Parity */
;	assignBit
	clr	_T2EX
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:231: for (uint8_t n = 32U + 1U; n; n--) {
	dec	r4
	sjmp	00160$
00124$:
;	../../../usb/SW_DP.c:236: for (uint8_t n = DAP_Data.swd_conf.turnaround; n; n--) {
	mov	dptr,#(_DAP_Data + 0x0017)
	movx	a,@dptr
	mov	r4,a
00163$:
	mov	a,r4
	jz	00126$
;	../../../usb/SW_DP.c:237: SW_CLOCK_CYCLE();
;	assignBit
	clr	_T2EX
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:236: for (uint8_t n = DAP_Data.swd_conf.turnaround; n; n--) {
	dec	r4
	sjmp	00163$
00126$:
;	../../../usb/SW_DP.c:240: if (DAP_Data.swd_conf.data_phase && ((request & DAP_TRANSFER_RnW) == 0U)) {
	mov	a,r7
	jz	00129$
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jb	acc.1,00129$
;	../../../usb/SW_DP.c:241: PIN_SWDIO_OUT(0U);
;	assignBit
	clr	_T2
;	../../../usb/SW_DP.c:242: for (uint8_t n = 32U + 1U; n; n--) {
	mov	r7,#0x21
00166$:
	mov	a,r7
	jz	00129$
;	../../../usb/SW_DP.c:243: SW_CLOCK_CYCLE(); /* Dummy Write WDATA[0:31] + Parity */
;	assignBit
	clr	_T2EX
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:242: for (uint8_t n = 32U + 1U; n; n--) {
	dec	r7
	sjmp	00166$
00129$:
;	../../../usb/SW_DP.c:246: PIN_SWDIO_OUT(1U);
;	assignBit
	setb	_T2
;	../../../usb/SW_DP.c:247: return ((uint8_t)ack);
	mov	dpl,r5
	sjmp	00171$
00132$:
;	../../../usb/SW_DP.c:251: for (uint8_t n = DAP_Data.swd_conf.turnaround + 32U + 1U; n; n--) {
	mov	a,#0x21
	add	a,r6
	mov	r7,a
00169$:
	mov	a,r7
	jz	00134$
;	../../../usb/SW_DP.c:252: SW_CLOCK_CYCLE(); /* Back off data phase */
;	assignBit
	clr	_T2EX
;	assignBit
	setb	_T2EX
;	../../../usb/SW_DP.c:251: for (uint8_t n = DAP_Data.swd_conf.turnaround + 32U + 1U; n; n--) {
	dec	r7
	sjmp	00169$
00134$:
;	../../../usb/SW_DP.c:255: PIN_SWDIO_OUT(1U);
;	assignBit
	setb	_T2
;	../../../usb/SW_DP.c:256: return ((uint8_t)ack);
	mov	dpl,r5
00171$:
;	../../../usb/SW_DP.c:257: }
	mov	sp,_bp
	pop	_bp
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
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

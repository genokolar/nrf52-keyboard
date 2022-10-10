;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module uart
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ResponseConfigurePacket
	.globl _KeyboardExtraUpload
	.globl _KeyboardGenericUpload
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
	.globl _uart_rx_state
	.globl _uart_init
	.globl _uart_check
	.globl _uart_recv
	.globl _uart_send_led
	.globl _uart_send_keymap
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
_uart_rx_state::
	.ds 1
_recv_len:
	.ds 1
_pos:
	.ds 1
_uart_arrive_flag:
	.ds 1
_last_success:
	.ds 1
_last_pos:
	.ds 1
_send_len:
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
_recv_buff:
	.ds 64
_send_buff:
	.ds 64
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
;	../../../usb/uart.c:147: static uint8_t send_len = 0;
	mov	_send_len,#0x00
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
;Allocation info for local variables in function 'uart_tx'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	../../../usb/uart.c:45: static void uart_tx(uint8_t c)
;	-----------------------------------------
;	 function uart_tx
;	-----------------------------------------
_uart_tx:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_SBUF1,dpl
;	../../../usb/uart.c:48: while (U1TI == 0)
00101$:
;	../../../usb/uart.c:50: U1TI = 0;
;	assignBit
	jbc	_U1TI,00114$
	sjmp	00101$
00114$:
;	../../../usb/uart.c:51: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_rx'
;------------------------------------------------------------
;	../../../usb/uart.c:58: static uint8_t uart_rx()
;	-----------------------------------------
;	 function uart_rx
;	-----------------------------------------
_uart_rx:
;	../../../usb/uart.c:60: while (U1RI == 0)
00101$:
;	../../../usb/uart.c:62: U1RI = 0;
;	assignBit
	jbc	_U1RI,00114$
	sjmp	00101$
00114$:
;	../../../usb/uart.c:63: return SBUF1;
	mov	dpl,_SBUF1
;	../../../usb/uart.c:64: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'checksum'
;------------------------------------------------------------
;len                       Allocated to stack - _bp -3
;data                      Allocated to stack - _bp +1
;sum                       Allocated to registers r4 
;i                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	../../../usb/uart.c:71: static uint8_t checksum(uint8_t* data, uint8_t len)
;	-----------------------------------------
;	 function checksum
;	-----------------------------------------
_checksum:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../../../usb/uart.c:73: uint8_t sum = 0x00;
	mov	r4,#0x00
;	../../../usb/uart.c:75: for (int i = 0; i < len; i++)
	mov	r2,#0x00
	mov	r3,#0x00
00103$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar6,@r0
	mov	r7,#0x00
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
;	../../../usb/uart.c:76: sum += data[i];
	mov	r0,_bp
	inc	r0
	mov	a,r2
	add	a,@r0
	mov	r5,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	add	a,r4
	mov	r4,a
;	../../../usb/uart.c:75: for (int i = 0; i < len; i++)
	inc	r2
	cjne	r2,#0x00,00103$
	inc	r3
	sjmp	00103$
00101$:
;	../../../usb/uart.c:77: return sum;
	mov	dpl,r4
;	../../../usb/uart.c:78: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_init'
;------------------------------------------------------------
;	../../../usb/uart.c:84: void uart_init()
;	-----------------------------------------
;	 function uart_init
;	-----------------------------------------
_uart_init:
;	../../../usb/uart.c:86: U1SM0 = 0; // 8Bit
;	assignBit
	clr	_U1SM0
;	../../../usb/uart.c:87: U1SMOD = 1; // fast mode
;	assignBit
	setb	_U1SMOD
;	../../../usb/uart.c:88: U1REN = 1; //串口0接收使能
;	assignBit
	setb	_U1REN
;	../../../usb/uart.c:89: SBAUD1 = 256 - (FREQ_SYS / 16 / 115200) & 0xFF;
	mov	_SBAUD1,#0xf3
;	../../../usb/uart.c:90: IE_UART1 = 1; //启用串口中断
;	assignBit
	setb	_IE_UART1
;	../../../usb/uart.c:91: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_data_parser'
;------------------------------------------------------------
;command                   Allocated to registers r7 
;datalen                   Allocated to registers r6 
;index                     Allocated to registers r6 
;kplen                     Allocated to registers r7 
;------------------------------------------------------------
;	../../../usb/uart.c:97: static void uart_data_parser(void)
;	-----------------------------------------
;	 function uart_data_parser
;	-----------------------------------------
_uart_data_parser:
;	../../../usb/uart.c:99: if (checksum(recv_buff, recv_len - 1) != recv_buff[recv_len - 1]) {
	mov	r7,_recv_len
	dec	r7
	push	ar7
	mov	dptr,#_recv_buff
	mov	b,#0x00
	lcall	_checksum
	mov	r7,dpl
	dec	sp
	mov	r6,_recv_len
	dec	r6
	mov	a,r6
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r6
	add	a,#_recv_buff
	mov	dpl,a
	mov	a,r5
	addc	a,#(_recv_buff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
;	../../../usb/uart.c:101: return;
	cjne	a,ar6,00111$
;	../../../usb/uart.c:104: uint8_t command = recv_buff[0];
	mov	dptr,#_recv_buff
	movx	a,@dptr
	mov	r7,a
;	../../../usb/uart.c:105: if (command >= 0x80) {
	cjne	r7,#0x80,00130$
00130$:
	jc	00109$
;	../../../usb/uart.c:107: uint8_t datalen = command & 0x7F;
	mov	a,#0x7f
	anl	a,r7
	mov	r6,a
;	../../../usb/uart.c:108: ResponseConfigurePacket(&recv_buff[1], datalen);
	push	ar6
	mov	dptr,#(_recv_buff + 0x0001)
	mov	b,#0x00
	lcall	_ResponseConfigurePacket
	dec	sp
;	../../../usb/uart.c:109: last_success = true;
	mov	_last_success,#0x01
	ret
00109$:
;	../../../usb/uart.c:110: } else if (command >= 0x40) {
	cjne	r7,#0x40,00132$
00132$:
	jc	00111$
;	../../../usb/uart.c:111: uint8_t index = recv_buff[1];
	mov	dptr,#(_recv_buff + 0x0001)
	movx	a,@dptr
	mov	r6,a
;	../../../usb/uart.c:112: uint8_t kplen = (command & 0x3F);
	anl	ar7,#0x3f
;	../../../usb/uart.c:113: if (index == 0) {
	mov	a,r6
	jnz	00104$
;	../../../usb/uart.c:115: KeyboardGenericUpload(&recv_buff[2], kplen);
	push	ar7
	mov	dptr,#(_recv_buff + 0x0002)
	mov	b,#0x00
	lcall	_KeyboardGenericUpload
	dec	sp
;	../../../usb/uart.c:116: last_success = true;
	mov	_last_success,#0x01
	ret
00104$:
;	../../../usb/uart.c:120: KeyboardExtraUpload(&recv_buff[1], kplen + 1);
	inc	r7
	push	ar7
	mov	dptr,#(_recv_buff + 0x0001)
	mov	b,#0x00
	lcall	_KeyboardExtraUpload
	dec	sp
;	../../../usb/uart.c:121: last_success = true;
	mov	_last_success,#0x01
00111$:
;	../../../usb/uart.c:124: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_send_status'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;------------------------------------------------------------
;	../../../usb/uart.c:130: static void uart_send_status()
;	-----------------------------------------
;	 function uart_send_status
;	-----------------------------------------
_uart_send_status:
;	../../../usb/uart.c:132: uint8_t data = 0x10;
	mov	r7,#0x10
;	../../../usb/uart.c:137: if (usb_state.is_ready && !usb_state.is_sleep) // 是否连接主机
	mov	r0,#_usb_state
	mov	a,@r0
	jnb	acc.0,00102$
	mov	r0,#_usb_state
	mov	a,@r0
	jb	acc.2,00102$
;	../../../usb/uart.c:138: data |= 0x04;
	mov	r7,#0x14
00102$:
;	../../../usb/uart.c:139: if (usb_state.protocol)
	mov	r0,#_usb_state
	mov	a,@r0
	jnb	acc.4,00105$
;	../../../usb/uart.c:140: data |= 0x08;
	orl	ar7,#0x08
00105$:
;	../../../usb/uart.c:141: if (last_success) // 上次接收状态
	mov	a,_last_success
	jz	00107$
;	../../../usb/uart.c:142: data |= 0x01;
	orl	ar7,#0x01
00107$:
;	../../../usb/uart.c:143: uart_tx(data);
	mov	dpl,r7
;	../../../usb/uart.c:144: }
	ljmp	_uart_tx
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_check'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	../../../usb/uart.c:153: void uart_check()
;	-----------------------------------------
;	 function uart_check
;	-----------------------------------------
_uart_check:
;	../../../usb/uart.c:156: if (uart_rx_state == STATE_DATA && last_pos == pos) {
	mov	a,#0x01
	cjne	a,_uart_rx_state,00102$
	mov	a,_pos
	cjne	a,_last_pos,00102$
;	../../../usb/uart.c:157: uart_rx_state = STATE_IDLE;
	mov	_uart_rx_state,#0x00
00102$:
;	../../../usb/uart.c:160: if (uart_arrive_flag) {
	mov	a,_uart_arrive_flag
	jz	00105$
;	../../../usb/uart.c:161: uart_arrive_flag = false;
	mov	_uart_arrive_flag,#0x00
;	../../../usb/uart.c:162: uart_data_parser();
	lcall	_uart_data_parser
00105$:
;	../../../usb/uart.c:166: if (uart_rx_state == STATE_IDLE) {
	mov	a,_uart_rx_state
	jnz	00113$
;	../../../usb/uart.c:167: if (send_len > 0) {
	mov	a,_send_len
	jz	00110$
;	../../../usb/uart.c:169: for (uint8_t i = 0; i < send_len; i++) {
	mov	r7,#0x00
00115$:
	clr	c
	mov	a,r7
	subb	a,_send_len
	jnc	00106$
;	../../../usb/uart.c:170: uart_tx(send_buff[i]);
	mov	a,r7
	add	a,#_send_buff
	mov	dpl,a
	clr	a
	addc	a,#(_send_buff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_uart_tx
	pop	ar7
;	../../../usb/uart.c:169: for (uint8_t i = 0; i < send_len; i++) {
	inc	r7
	sjmp	00115$
00106$:
;	../../../usb/uart.c:172: send_len = 0;
	mov	_send_len,#0x00
	sjmp	00113$
00110$:
;	../../../usb/uart.c:173: } else if (!usb_state.is_busy) { // USB 当前空闲，可以轮询下一个数据包
	mov	r0,#_usb_state
	mov	a,@r0
	jb	acc.1,00113$
;	../../../usb/uart.c:175: uart_send_status();
	lcall	_uart_send_status
;	../../../usb/uart.c:177: last_success = false;
	mov	_last_success,#0x00
00113$:
;	../../../usb/uart.c:180: last_pos = pos;
	mov	_last_pos,_pos
;	../../../usb/uart.c:181: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_recv'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;------------------------------------------------------------
;	../../../usb/uart.c:187: void uart_recv(void)
;	-----------------------------------------
;	 function uart_recv
;	-----------------------------------------
_uart_recv:
;	../../../usb/uart.c:195: uint8_t data = uart_rx();
	lcall	_uart_rx
	mov	r7,dpl
;	../../../usb/uart.c:197: switch (uart_rx_state) {
	clr	a
	cjne	a,_uart_rx_state,00132$
	sjmp	00101$
00132$:
	mov	a,#0x01
;	../../../usb/uart.c:198: case STATE_IDLE:
	cjne	a,_uart_rx_state,00108$
	sjmp	00104$
00101$:
;	../../../usb/uart.c:199: if (data >= 0x40) {
	cjne	r7,#0x40,00134$
00134$:
	jc	00108$
;	../../../usb/uart.c:200: recv_len = (data >= 0x80) ? ((data & 0x7F) + 2) : ((data & 0x3F) + 3);
	cjne	r7,#0x80,00136$
00136$:
	mov	b0,c
	jc	00110$
	mov	ar6,r7
	mov	a,#0x7f
	anl	a,r6
	add	a,#0x02
	mov	r6,a
	sjmp	00111$
00110$:
	mov	ar5,r7
	mov	a,#0x3f
	anl	a,r5
	add	a,#0x03
	mov	r6,a
00111$:
	mov	_recv_len,r6
;	../../../usb/uart.c:202: recv_buff[pos++] = data;
	mov	_pos,#0x01
	mov	dptr,#_recv_buff
	mov	a,r7
	movx	@dptr,a
;	../../../usb/uart.c:203: uart_rx_state = STATE_DATA;
	mov	_uart_rx_state,#0x01
;	../../../usb/uart.c:205: break;
;	../../../usb/uart.c:207: case STATE_DATA:
	ret
00104$:
;	../../../usb/uart.c:208: recv_buff[pos++] = data;
	mov	r6,_pos
	inc	_pos
	mov	a,r6
	add	a,#_recv_buff
	mov	dpl,a
	clr	a
	addc	a,#(_recv_buff >> 8)
	mov	dph,a
	mov	a,r7
	movx	@dptr,a
;	../../../usb/uart.c:209: if (pos >= recv_len) {
	clr	c
	mov	a,_pos
	subb	a,_recv_len
	jc	00108$
;	../../../usb/uart.c:210: uart_rx_state = STATE_IDLE;
	mov	_uart_rx_state,#0x00
;	../../../usb/uart.c:211: uart_arrive_flag = true;
	mov	_uart_arrive_flag,#0x01
;	../../../usb/uart.c:214: }
00108$:
;	../../../usb/uart.c:215: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_send_led'
;------------------------------------------------------------
;val                       Allocated to registers r7 
;------------------------------------------------------------
;	../../../usb/uart.c:222: void uart_send_led(uint8_t val)
;	-----------------------------------------
;	 function uart_send_led
;	-----------------------------------------
_uart_send_led:
	mov	r7,dpl
;	../../../usb/uart.c:224: send_buff[0] = 0x20 + (val & 0x1F);
	mov	a,#0x1f
	anl	a,r7
	add	a,#0x20
	mov	dptr,#_send_buff
	movx	@dptr,a
;	../../../usb/uart.c:225: send_len = 1;
	mov	_send_len,#0x01
;	../../../usb/uart.c:226: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_send_keymap'
;------------------------------------------------------------
;len                       Allocated to stack - _bp -3
;data                      Allocated to stack - _bp +1
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	../../../usb/uart.c:234: void uart_send_keymap(uint8_t* data, uint8_t len)
;	-----------------------------------------
;	 function uart_send_keymap
;	-----------------------------------------
_uart_send_keymap:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../../../usb/uart.c:236: send_buff[0] = len + 0x80; // command
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar4,@r0
	mov	a,#0x80
	add	a,r4
	mov	dptr,#_send_buff
	movx	@dptr,a
;	../../../usb/uart.c:237: for (uint8_t i = 0; i < len; i++)
	mov	r3,#0x00
00103$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,r3
	subb	a,@r0
	jnc	00101$
;	../../../usb/uart.c:238: send_buff[i + 1] = data[i];
	push	ar4
	mov	ar2,r3
	inc	r2
	mov	a,r2
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r2
	add	a,#_send_buff
	mov	r2,a
	mov	a,r4
	addc	a,#(_send_buff >> 8)
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	a,r3
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
	lcall	__gptrget
	mov	r5,a
	mov	dpl,r2
	mov	dph,r4
	movx	@dptr,a
;	../../../usb/uart.c:237: for (uint8_t i = 0; i < len; i++)
	inc	r3
	pop	ar4
	sjmp	00103$
00101$:
;	../../../usb/uart.c:240: send_buff[len + 1] = checksum(send_buff, len + 1);
	mov	a,r4
	inc	a
	mov	r7,a
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r5
	add	a,#_send_buff
	mov	r5,a
	mov	a,r6
	addc	a,#(_send_buff >> 8)
	mov	r6,a
	push	ar6
	push	ar5
	push	ar4
	push	ar7
	mov	dptr,#_send_buff
	mov	b,#0x00
	lcall	_checksum
	mov	r7,dpl
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	mov	dpl,r5
	mov	dph,r6
	mov	a,r7
	movx	@dptr,a
;	../../../usb/uart.c:241: send_len = len + 2; // cmd + sum
	mov	a,#0x02
	add	a,r4
	mov	_send_len,a
;	../../../usb/uart.c:242: }
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

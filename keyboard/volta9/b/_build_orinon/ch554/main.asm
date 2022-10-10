;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _timers
	.globl _isp_enter
	.globl ___memcpy
	.globl _memset
	.globl _uart_send_keymap
	.globl _uart_send_led
	.globl _uart_init
	.globl _uart_recv
	.globl _DelayMs
	.globl _CfgSysClock
	.globl _UsbIsr
	.globl _USBDeviceInit
	.globl _Dap_Init
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
	.globl _KeyboardGenericUpload
	.globl _KeyboardExtraUpload
	.globl _ResponseConfigurePacket
	.globl _EP3_OUT
	.globl _EP1_OUT
	.globl _UsbSuspendEvt
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
	.area REG_BANK_1	(REL,OVR,DATA)
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
_timer_counter:
	.ds 6
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_TimerInterrupt
	.ds	5
	ljmp	_DeviceInterrupt
	.ds	5
	reti
	.ds	7
	ljmp	_UARTInterrupt
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'CH554SoftReset'
;------------------------------------------------------------
;	../../../usb/main.c:38: static void CH554SoftReset()
;	-----------------------------------------
;	 function CH554SoftReset
;	-----------------------------------------
_CH554SoftReset:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../../../usb/main.c:40: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	../../../usb/main.c:41: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	../../../usb/main.c:42: GLOBAL_CFG |= bSW_RESET;
	orl	_GLOBAL_CFG,#0x10
;	../../../usb/main.c:43: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CH554USBDevWakeup'
;------------------------------------------------------------
;	../../../usb/main.c:48: static void CH554USBDevWakeup()
;	-----------------------------------------
;	 function CH554USBDevWakeup
;	-----------------------------------------
_CH554USBDevWakeup:
;	../../../usb/main.c:50: UDEV_CTRL |= bUD_LOW_SPEED;
	orl	_UDEV_CTRL,#0x04
;	../../../usb/main.c:51: DelayMs(2);
	mov	dptr,#0x0002
	lcall	_DelayMs
;	../../../usb/main.c:52: UDEV_CTRL &= ~bUD_LOW_SPEED;
	anl	_UDEV_CTRL,#0xfb
;	../../../usb/main.c:53: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DeviceInterrupt'
;------------------------------------------------------------
;	../../../usb/main.c:57: static INTERRUPT_USING(DeviceInterrupt, INT_NO_USB, 1) //USB中断服务程序,使用寄存器组1
;	-----------------------------------------
;	 function DeviceInterrupt
;	-----------------------------------------
_DeviceInterrupt:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
;	../../../usb/main.c:59: UsbIsr();
	mov	psw,#0x00
	lcall	_UsbIsr
	mov	psw,#0x08
;	../../../usb/main.c:60: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'UsbOnKeySend'
;------------------------------------------------------------
;	../../../usb/main.c:66: static void UsbOnKeySend()
;	-----------------------------------------
;	 function UsbOnKeySend
;	-----------------------------------------
_UsbOnKeySend:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../../../usb/main.c:68: if (usb_state.is_sleep && usb_state.remote_wake) {
	mov	r0,#_usb_state
	mov	a,@r0
	jnb	acc.2,00104$
	mov	r0,#_usb_state
	mov	a,@r0
	jnb	acc.3,00104$
;	../../../usb/main.c:69: usb_state.is_sleep = false;
	mov	r0,#_usb_state
	mov	a,@r0
	anl	a,#0xfb
	mov	@r0,a
;	../../../usb/main.c:70: CH554USBDevWakeup();
;	../../../usb/main.c:72: }
	ljmp	_CH554USBDevWakeup
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'KeyboardGenericUpload'
;------------------------------------------------------------
;len                       Allocated to stack - _bp -3
;packet                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../../usb/main.c:80: void KeyboardGenericUpload(uint8_t* packet, uint8_t len)
;	-----------------------------------------
;	 function KeyboardGenericUpload
;	-----------------------------------------
_KeyboardGenericUpload:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../../usb/main.c:82: if (len != 8)
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
;	../../../usb/main.c:83: return;
	cjne	@r0,#0x08,00103$
;	../../../usb/main.c:84: UsbOnKeySend();
	push	ar7
	push	ar6
	push	ar5
	lcall	_UsbOnKeySend
	pop	ar5
	pop	ar6
	pop	ar7
;	../../../usb/main.c:86: usb_state.is_busy = true;
	mov	r0,#_usb_state
	mov	a,@r0
	orl	a,#0x02
	mov	@r0,a
;	../../../usb/main.c:87: memcpy(&Ep1Buffer[64], packet, len);
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar3,@r0
	mov	r4,#0x00
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#(_Ep1Buffer + 0x0040)
	mov	b,#0x00
	lcall	___memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../usb/main.c:88: UEP1_T_LEN = len;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	_UEP1_T_LEN,@r0
;	../../../usb/main.c:89: UEP1_CTRL = UEP1_CTRL & ~MASK_UEP_T_RES | UEP_T_RES_ACK;
	anl	_UEP1_CTRL,#0xfc
00103$:
;	../../../usb/main.c:90: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'KeyboardExtraUpload'
;------------------------------------------------------------
;len                       Allocated to stack - _bp -3
;packet                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../../usb/main.c:98: void KeyboardExtraUpload(uint8_t* packet, uint8_t len)
;	-----------------------------------------
;	 function KeyboardExtraUpload
;	-----------------------------------------
_KeyboardExtraUpload:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../../usb/main.c:100: UsbOnKeySend();
	push	ar7
	push	ar6
	push	ar5
	lcall	_UsbOnKeySend
	pop	ar5
	pop	ar6
	pop	ar7
;	../../../usb/main.c:102: usb_state.is_busy = true;
	mov	r0,#_usb_state
	mov	a,@r0
	orl	a,#0x02
	mov	@r0,a
;	../../../usb/main.c:103: memcpy(Ep2Buffer, packet, len);
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar3,@r0
	mov	r4,#0x00
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_Ep2Buffer
	mov	b,#0x00
	lcall	___memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../usb/main.c:104: UEP2_T_LEN = len;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	_UEP2_T_LEN,@r0
;	../../../usb/main.c:105: UEP2_CTRL = UEP2_CTRL & ~MASK_UEP_T_RES | UEP_T_RES_ACK;
	anl	_UEP2_CTRL,#0xfc
;	../../../usb/main.c:106: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ResponseConfigurePacket'
;------------------------------------------------------------
;len                       Allocated to stack - _bp -3
;packet                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../../usb/main.c:114: void ResponseConfigurePacket(uint8_t* packet, uint8_t len)
;	-----------------------------------------
;	 function ResponseConfigurePacket
;	-----------------------------------------
_ResponseConfigurePacket:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../../usb/main.c:116: if (len > 64)
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	add	a,#0xff - 0x40
	jnc	00102$
;	../../../usb/main.c:117: return;
	sjmp	00103$
00102$:
;	../../../usb/main.c:119: usb_state.is_busy = true;
	mov	r0,#_usb_state
	mov	a,@r0
	orl	a,#0x02
	mov	@r0,a
;	../../../usb/main.c:120: Ep3Buffer[64] = 0x3f; // packet id
	mov	dptr,#(_Ep3Buffer + 0x0040)
	mov	a,#0x3f
	movx	@dptr,a
;	../../../usb/main.c:121: memcpy(&Ep3Buffer[65], packet, len);
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar3,@r0
	mov	r4,#0x00
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#(_Ep3Buffer + 0x0041)
	mov	b,#0x00
	lcall	___memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../usb/main.c:122: memset(&Ep3Buffer[65 + len], 0, 64 - len - 2);
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar6,@r0
	mov	r7,#0x00
	mov	a,#0x3e
	clr	c
	subb	a,r6
	mov	r4,a
	clr	a
	subb	a,r7
	mov	r5,a
	mov	a,#0x41
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,r6
	add	a,#_Ep3Buffer
	mov	r6,a
	mov	a,r7
	addc	a,#(_Ep3Buffer >> 8)
	mov	r7,a
	mov	r3,#0x00
	push	ar4
	push	ar5
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r3
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	../../../usb/main.c:123: UEP3_T_LEN = 64;
	mov	_UEP3_T_LEN,#0x40
;	../../../usb/main.c:124: UEP3_CTRL = UEP3_CTRL & ~MASK_UEP_T_RES | UEP_T_RES_ACK;
	anl	_UEP3_CTRL,#0xfc
00103$:
;	../../../usb/main.c:125: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UARTInterrupt'
;------------------------------------------------------------
;	../../../usb/main.c:131: static INTERRUPT(UARTInterrupt, INT_NO_UART1)
;	-----------------------------------------
;	 function UARTInterrupt
;	-----------------------------------------
_UARTInterrupt:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	../../../usb/main.c:133: if (U1RI) {
	jnb	_U1RI,00103$
;	../../../usb/main.c:134: uart_recv();
	lcall	_uart_recv
00103$:
;	../../../usb/main.c:137: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'DisableWatchDog'
;------------------------------------------------------------
;	../../../usb/main.c:143: static void DisableWatchDog()
;	-----------------------------------------
;	 function DisableWatchDog
;	-----------------------------------------
_DisableWatchDog:
;	../../../usb/main.c:145: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	../../../usb/main.c:146: SAFE_MOD = 0xaa; //进入安全模式
	mov	_SAFE_MOD,#0xaa
;	../../../usb/main.c:147: GLOBAL_CFG &= ~bWDOG_EN; //禁用看门狗复位
	anl	_GLOBAL_CFG,#0xfe
;	../../../usb/main.c:148: SAFE_MOD = 0x00; //退出安全模式
	mov	_SAFE_MOD,#0x00
;	../../../usb/main.c:149: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP3_OUT'
;------------------------------------------------------------
;len                       Allocated to registers r7 
;------------------------------------------------------------
;	../../../usb/main.c:155: void EP3_OUT()
;	-----------------------------------------
;	 function EP3_OUT
;	-----------------------------------------
_EP3_OUT:
;	../../../usb/main.c:157: uint8_t len = Ep3Buffer[2] + 2;
	mov	dptr,#(_Ep3Buffer + 0x0002)
	movx	a,@dptr
	mov	r7,a
	inc	r7
	inc	r7
;	../../../usb/main.c:158: if (Ep3Buffer[1] == 0xF0 && len == 2) {
	mov	dptr,#(_Ep3Buffer + 0x0001)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0xf0,00102$
	cjne	r7,#0x02,00102$
;	../../../usb/main.c:159: DisableWatchDog();
	push	ar7
	lcall	_DisableWatchDog
;	../../../usb/main.c:160: USB_CTRL = 0;
	mov	_USB_CTRL,#0x00
;	../../../usb/main.c:161: UDEV_CTRL = 0x80;
	mov	_UDEV_CTRL,#0x80
;	../../../usb/main.c:162: DelayMs(10);
	mov	dptr,#0x000a
	lcall	_DelayMs
;	../../../usb/main.c:163: isp_enter();
	mov	dptr,#_isp_enter
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	dph,a
	mov	dpl,r0
	lcall	__sdcc_call_dptr
	pop	ar7
00102$:
;	../../../usb/main.c:165: uart_send_keymap(&Ep3Buffer[1], len);
	push	ar7
	mov	dptr,#(_Ep3Buffer + 0x0001)
	mov	b,#0x00
	lcall	_uart_send_keymap
	dec	sp
;	../../../usb/main.c:166: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP1_OUT'
;------------------------------------------------------------
;datalen                   Allocated to registers 
;------------------------------------------------------------
;	../../../usb/main.c:172: void EP1_OUT()
;	-----------------------------------------
;	 function EP1_OUT
;	-----------------------------------------
_EP1_OUT:
;	../../../usb/main.c:174: uint8_t datalen = USB_RX_LEN;
	mov	a,_USB_RX_LEN
;	../../../usb/main.c:175: uart_send_led(Ep1Buffer[0]);
	mov	dptr,#_Ep1Buffer
	movx	a,@dptr
	mov	dpl,a
;	../../../usb/main.c:176: }
	ljmp	_uart_send_led
;------------------------------------------------------------
;Allocation info for local variables in function 'EnableWatchDog'
;------------------------------------------------------------
;	../../../usb/main.c:182: static void EnableWatchDog()
;	-----------------------------------------
;	 function EnableWatchDog
;	-----------------------------------------
_EnableWatchDog:
;	../../../usb/main.c:184: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	../../../usb/main.c:185: SAFE_MOD = 0xaa; //进入安全模式
	mov	_SAFE_MOD,#0xaa
;	../../../usb/main.c:186: GLOBAL_CFG |= bWDOG_EN; //启动看门狗复位
	orl	_GLOBAL_CFG,#0x01
;	../../../usb/main.c:187: SAFE_MOD = 0x00; //退出安全模式
	mov	_SAFE_MOD,#0x00
;	../../../usb/main.c:188: WDOG_COUNT = 0; //看门狗赋初值
	mov	_WDOG_COUNT,#0x00
;	../../../usb/main.c:189: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'FeedWatchDog'
;------------------------------------------------------------
;	../../../usb/main.c:195: static void FeedWatchDog()
;	-----------------------------------------
;	 function FeedWatchDog
;	-----------------------------------------
_FeedWatchDog:
;	../../../usb/main.c:197: WDOG_COUNT = 0x00;
	mov	_WDOG_COUNT,#0x00
;	../../../usb/main.c:198: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer_tick'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../../usb/main.c:208: TIMER_INIT(timer, timers)
;	-----------------------------------------
;	 function timer_tick
;	-----------------------------------------
_timer_tick:
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,#0x03
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00105$
	mov	a,r6
	add	a,r6
	mov	r4,a
	mov	a,r7
	rlc	a
	mov	a,r4
	add	a,#_timer_counter
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	dec	r1
	inc	r4
	cjne	r4,#0x00,00117$
	inc	r5
00117$:
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	dec	r1
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer_task_exec'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../../usb/main.c:208: 
;	-----------------------------------------
;	 function timer_task_exec
;	-----------------------------------------
_timer_task_exec:
	mov	r6,#0x00
	mov	r7,#0x00
00105$:
	clr	c
	mov	a,r6
	subb	a,#0x03
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00107$
	mov	a,r6
	add	a,r6
	mov	r4,a
	mov	a,r7
	rlc	a
	mov	a,r4
	add	a,#_timer_counter
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	dec	r1
	mov	a,r6
	add	a,r6
	mov	r2,a
	mov	a,r7
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,#_timers
	mov	dpl,a
	mov	a,r3
	addc	a,#(_timers >> 8)
	mov	dph,a
	push	ar6
	push	ar7
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	pop	ar7
	pop	ar6
	jc	00106$
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	dec	r1
	mov	a,r2
	add	a,#_timers
	mov	r2,a
	mov	a,r3
	addc	a,#(_timers >> 8)
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	dpl,r4
	mov	dph,r5
	lcall	__sdcc_call_dptr
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00106$:
	inc	r6
	cjne	r6,#0x00,00124$
	inc	r7
00124$:
	ljmp	00105$
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TimerInterrupt'
;------------------------------------------------------------
;	../../../usb/main.c:210: static INTERRUPT(TimerInterrupt, INT_NO_TKEY)
;	-----------------------------------------
;	 function TimerInterrupt
;	-----------------------------------------
_TimerInterrupt:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	../../../usb/main.c:212: TKEY_CTRL = 0;
	mov	_TKEY_CTRL,#0x00
;	../../../usb/main.c:213: timer_tick();
	lcall	_timer_tick
;	../../../usb/main.c:214: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'UsbSuspendEvt'
;------------------------------------------------------------
;suspend                   Allocated to registers r7 
;------------------------------------------------------------
;	../../../usb/main.c:220: void UsbSuspendEvt(bool suspend)
;	-----------------------------------------
;	 function UsbSuspendEvt
;	-----------------------------------------
_UsbSuspendEvt:
	mov	r7,dpl
;	../../../usb/main.c:222: usb_state.is_sleep = suspend;
	mov	r0,#_usb_state
	mov	a,r7
	rrc	a
	mov	a,@r0
	mov	acc.2,c
	mov	@r0,a
;	../../../usb/main.c:223: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	../../../usb/main.c:225: static void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	../../../usb/main.c:227: CfgSysClock();
	lcall	_CfgSysClock
;	../../../usb/main.c:228: DelayMs(5); //修改主频等待内部晶振稳定,必加
	mov	dptr,#0x0005
	lcall	_DelayMs
;	../../../usb/main.c:230: uart_init();
	lcall	_uart_init
;	../../../usb/main.c:231: DelayMs(5);
	mov	dptr,#0x0005
	lcall	_DelayMs
;	../../../usb/main.c:233: IE_TKEY = 1; // 运行Timer
;	assignBit
	setb	_IE_TKEY
;	../../../usb/main.c:235: USBDeviceInit(); //USB设备模式初始化
	lcall	_USBDeviceInit
;	../../../usb/main.c:236: EnableWatchDog();
	lcall	_EnableWatchDog
;	../../../usb/main.c:238: Dap_Init();
	lcall	_Dap_Init
;	../../../usb/main.c:240: EA = 1; //允许单片机中断
;	assignBit
	setb	_EA
;	../../../usb/main.c:241: UEP1_T_LEN = 0; //预使用发送长度一定要清空
	mov	_UEP1_T_LEN,#0x00
;	../../../usb/main.c:242: UEP2_T_LEN = 0; //预使用发送长度一定要清空
	mov	_UEP2_T_LEN,#0x00
;	../../../usb/main.c:243: UEP3_T_LEN = 0;
	mov	_UEP3_T_LEN,#0x00
;	../../../usb/main.c:244: UEP4_T_LEN = 0;
	mov	_UEP4_T_LEN,#0x00
;	../../../usb/main.c:247: P1_MOD_OC -= (P1_MOD_OC & bMOSI);
	mov	r7,_P1_MOD_OC
	anl	ar7,#0x20
	mov	a,_P1_MOD_OC
	mov	r6,a
	clr	c
	subb	a,r7
	mov	_P1_MOD_OC,a
;	../../../usb/main.c:248: MOSI = false;
;	assignBit
	clr	_MOSI
;	../../../usb/main.c:250: while (1) {
00102$:
;	../../../usb/main.c:251: timer_task_exec();
	lcall	_timer_task_exec
;	../../../usb/main.c:253: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_isp_enter:
	.byte #0x00,#0x38
_timers:
	.byte #0xf4, #0x01	; 500
	.byte _FeedWatchDog, (_FeedWatchDog >> 8)
	.byte #0x01, #0x00	; 1
	.byte _uart_check, (_uart_check >> 8)
	.byte #0x01, #0x00	; 1
	.byte _Dap_Routine, (_Dap_Routine >> 8)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

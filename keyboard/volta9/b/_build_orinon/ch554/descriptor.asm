;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module descriptor
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _itoa
	.globl _report_desc_HID3
	.globl _report_desc_HID2
	.globl _report_desc_HID1
	.globl _report_desc_HID0
	.globl _ReportDescriptor
	.globl _InterfaceStringDesc
	.globl _LangStringDesc
	.globl _ConfigDescriptor
	.globl _DeviceDescriptor
	.globl _GetUsbDescriptor
	.globl _getSerial
	.globl _strlen
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
_descBuffer:
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
;Allocation info for local variables in function 'fillDescBuffer'
;------------------------------------------------------------
;str                       Allocated to stack - _bp +1
;len                       Allocated to stack - _bp +4
;i                         Allocated to stack - _bp +5
;------------------------------------------------------------
;	../../../usb/descriptor.c:27: static uint8_t fillDescBuffer(char* str)
;	-----------------------------------------
;	 function fillDescBuffer
;	-----------------------------------------
_fillDescBuffer:
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
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
;	../../../usb/descriptor.c:29: uint8_t len = strlen(str);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_strlen
	mov	r3,dpl
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar3
;	../../../usb/descriptor.c:31: descBuffer[0] = len * 2 + 2;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	add	a,@r0
	mov	r4,a
	add	a,#0x02
	mov	r2,a
	mov	dptr,#_descBuffer
	movx	@dptr,a
;	../../../usb/descriptor.c:32: descBuffer[1] = 0x03;
	mov	dptr,#(_descBuffer + 0x0001)
	mov	a,#0x03
	movx	@dptr,a
;	../../../usb/descriptor.c:34: for (uint8_t i = 0; i < len; i++) {
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,#0x00
00103$:
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	jnc	00101$
;	../../../usb/descriptor.c:35: descBuffer[(i + 1) * 2] = str[i];
	push	ar4
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	ar4,@r0
	inc	r4
	mov	a,r4
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r3
	add	a,#_descBuffer
	mov	r3,a
	mov	a,r7
	addc	a,#(_descBuffer >> 8)
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r3
	mov	dph,r7
	movx	@dptr,a
;	../../../usb/descriptor.c:36: descBuffer[(i + 1) * 2 + 1] = 0x00;
	mov	a,r4
	add	a,r4
	mov	r4,a
	inc	r4
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	a,r4
	add	a,#_descBuffer
	mov	dpl,a
	mov	a,r7
	addc	a,#(_descBuffer >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	../../../usb/descriptor.c:34: for (uint8_t i = 0; i < len; i++) {
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	inc	@r0
	pop	ar4
	sjmp	00103$
00101$:
;	../../../usb/descriptor.c:38: return len * 2 + 2;
	mov	a,#0x02
	add	a,r4
	mov	dpl,a
;	../../../usb/descriptor.c:39: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getSerial'
;------------------------------------------------------------
;str                       Allocated to stack - _bp +1
;i                         Allocated to stack - _bp +4
;addr                      Allocated to stack - _bp +5
;se                        Allocated to stack - _bp +7
;------------------------------------------------------------
;	../../../usb/descriptor.c:41: uint8_t getSerial(char* str)
;	-----------------------------------------
;	 function getSerial
;	-----------------------------------------
_getSerial:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x05
	mov	sp,a
;	../../../usb/descriptor.c:43: uint8_t i = 0;
	mov	r4,#0x00
;	../../../usb/descriptor.c:44: for (uint16_t addr = 0x3FFC; addr <= 0x3FFF; addr++) {
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,#0xfc
	inc	r0
	mov	@r0,#0x3f
00103$:
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#0x3f
	subb	a,r7
	jnc	00118$
	ljmp	00101$
00118$:
;	../../../usb/descriptor.c:45: uint16_t se = (uint16_t)(*((const uint8_t __CODE*)(addr)));
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
;	../../../usb/descriptor.c:46: str[i++] = itoa[(se >> 4) % 0xF];
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r4
	inc	a
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	a,r4
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	a,@r0
	swap	a
	xch	a,r2
	swap	a
	anl	a,#0x0f
	xrl	a,r2
	xch	a,r2
	anl	a,#0x0f
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x0f
	push	acc
	clr	a
	push	acc
	lcall	__moduint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	add	a,#_itoa
	mov	dpl,a
	mov	a,r3
	addc	a,#(_itoa >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../../../usb/descriptor.c:47: str[i++] = itoa[(se >> 0) % 0xF];
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	inc	a
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	a,r7
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	inc	r0
	mov	ar3,@r0
	dec	r0
	mov	ar2,@r0
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#0x0f
	push	acc
	clr	a
	push	acc
	lcall	__moduint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	add	a,#_itoa
	mov	dpl,a
	mov	a,r3
	addc	a,#(_itoa >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrput
;	../../../usb/descriptor.c:44: for (uint16_t addr = 0x3FFC; addr <= 0x3FFF; addr++) {
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00119$
	inc	r0
	inc	@r0
00119$:
	ljmp	00103$
00101$:
;	../../../usb/descriptor.c:49: return i;
	mov	dpl,r4
;	../../../usb/descriptor.c:50: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fillSerial'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;addr                      Allocated to stack - _bp +1
;se                        Allocated to stack - _bp +3
;------------------------------------------------------------
;	../../../usb/descriptor.c:52: static uint8_t fillSerial()
;	-----------------------------------------
;	 function fillSerial
;	-----------------------------------------
_fillSerial:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
;	../../../usb/descriptor.c:55: descBuffer[i++] = 0x03;
	mov	r7,#0x02
	mov	dptr,#(_descBuffer + 0x0001)
	mov	a,#0x03
	movx	@dptr,a
;	../../../usb/descriptor.c:57: for (uint16_t addr = 0x3FFC; addr <= 0x3FFF; addr++) {
	mov	r0,_bp
	inc	r0
	mov	@r0,#0xfc
	inc	r0
	mov	@r0,#0x3f
00103$:
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	clr	c
	mov	a,#0xff
	subb	a,r3
	mov	a,#0x3f
	subb	a,r4
	jnc	00118$
	ljmp	00101$
00118$:
;	../../../usb/descriptor.c:58: uint16_t se = (uint16_t)(*((const uint8_t __CODE*)(addr)));
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
;	../../../usb/descriptor.c:59: descBuffer[i++] = itoa[(se >> 4) % 0xF];
	mov	a,r7
	inc	a
	mov	r2,a
	mov	a,r7
	add	a,#_descBuffer
	mov	r3,a
	clr	a
	addc	a,#(_descBuffer >> 8)
	mov	r4,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	a,@r0
	swap	a
	xch	a,r5
	swap	a
	anl	a,#0x0f
	xrl	a,r5
	xch	a,r5
	anl	a,#0x0f
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	push	ar4
	push	ar3
	push	ar2
	mov	a,#0x0f
	push	acc
	clr	a
	push	acc
	lcall	__moduint
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r5
	add	a,#_itoa
	mov	dpl,a
	mov	a,r6
	addc	a,#(_itoa >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	../../../usb/descriptor.c:60: descBuffer[i++] = 0x00;
	mov	a,r2
	inc	a
	mov	r6,a
	mov	a,r2
	add	a,#_descBuffer
	mov	dpl,a
	clr	a
	addc	a,#(_descBuffer >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	../../../usb/descriptor.c:61: descBuffer[i++] = itoa[(se >> 0) % 0xF];
	mov	ar5,r6
	inc	r6
	mov	a,r5
	add	a,#_descBuffer
	mov	r5,a
	clr	a
	addc	a,#(_descBuffer >> 8)
	mov	r4,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	inc	r0
	mov	ar3,@r0
	dec	r0
	mov	ar2,@r0
	mov	dpl,r2
	mov	dph,r3
	push	ar6
	push	ar5
	push	ar4
	mov	a,#0x0f
	push	acc
	clr	a
	push	acc
	lcall	__moduint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	mov	a,r2
	add	a,#_itoa
	mov	dpl,a
	mov	a,r3
	addc	a,#(_itoa >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	dpl,r5
	mov	dph,r4
	movx	@dptr,a
;	../../../usb/descriptor.c:62: descBuffer[i++] = 0x00;
	mov	a,r6
	inc	a
	mov	r7,a
	mov	a,r6
	add	a,#_descBuffer
	mov	dpl,a
	clr	a
	addc	a,#(_descBuffer >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	../../../usb/descriptor.c:57: for (uint16_t addr = 0x3FFC; addr <= 0x3FFF; addr++) {
	mov	r0,_bp
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00119$
	inc	r0
	inc	@r0
00119$:
	ljmp	00103$
00101$:
;	../../../usb/descriptor.c:65: descBuffer[0] = i;
	mov	dptr,#_descBuffer
	mov	a,r7
	movx	@dptr,a
;	../../../usb/descriptor.c:66: return i;
	mov	dpl,r7
;	../../../usb/descriptor.c:67: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getStringDescriptor'
;------------------------------------------------------------
;strPtor                   Allocated to stack - _bp -5
;order                     Allocated to registers 
;header                    Allocated to registers r6 
;strlen                    Allocated to registers r5 
;------------------------------------------------------------
;	../../../usb/descriptor.c:76: static uint8_t getStringDescriptor(uint8_t order, uint8_t** strPtor)
;	-----------------------------------------
;	 function getStringDescriptor
;	-----------------------------------------
_getStringDescriptor:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	../../../usb/descriptor.c:78: uint8_t header = 0, strlen = 0;
	mov	r6,#0x00
	mov	r5,#0x00
;	../../../usb/descriptor.c:79: switch (order) {
	mov	a,r7
	add	a,#0xff - 0x03
	jnc	00148$
	ljmp	00105$
00148$:
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00149$
	jmp	@a+dptr
00149$:
	ljmp	00101$
	ljmp	00102$
	ljmp	00103$
	ljmp	00104$
;	../../../usb/descriptor.c:80: case STRING_DESCRIPTOR_LANG:
00101$:
;	../../../usb/descriptor.c:81: *strPtor = (uint8_t*)&LangStringDesc[0];
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
	mov	a,#_LangStringDesc
	lcall	__gptrput
	inc	dptr
	mov	a,#(_LangStringDesc >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
;	../../../usb/descriptor.c:82: strlen = LangStringDesc[0];
	mov	dptr,#_LangStringDesc
	clr	a
	movc	a,@a+dptr
	mov	r5,a
;	../../../usb/descriptor.c:83: break;
	ljmp	00115$
;	../../../usb/descriptor.c:84: case STRING_DESCRIPTOR_MANUFACTURER:
00102$:
;	../../../usb/descriptor.c:85: strlen = fillDescBuffer(MANUFACTURER);
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_fillDescBuffer
	mov	r4,dpl
	mov	ar5,r4
;	../../../usb/descriptor.c:86: *strPtor = descBuffer;
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
	mov	a,#_descBuffer
	lcall	__gptrput
	inc	dptr
	mov	a,#(_descBuffer >> 8)
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../../../usb/descriptor.c:87: break;
	ljmp	00115$
;	../../../usb/descriptor.c:88: case STRING_DESCRIPTOR_DEVICE:
00103$:
;	../../../usb/descriptor.c:89: strlen = fillDescBuffer(PRODUCT);
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_fillDescBuffer
	mov	r4,dpl
	mov	ar5,r4
;	../../../usb/descriptor.c:90: *strPtor = descBuffer;
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
	mov	a,#_descBuffer
	lcall	__gptrput
	inc	dptr
	mov	a,#(_descBuffer >> 8)
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../../../usb/descriptor.c:91: break;
	ljmp	00115$
;	../../../usb/descriptor.c:92: case STRING_DESCRIPTOR_SERIAL:
00104$:
;	../../../usb/descriptor.c:93: strlen = fillSerial();
	lcall	_fillSerial
	mov	r4,dpl
	mov	ar5,r4
;	../../../usb/descriptor.c:94: *strPtor = descBuffer;
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
	mov	a,#_descBuffer
	lcall	__gptrput
	inc	dptr
	mov	a,#(_descBuffer >> 8)
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../../../usb/descriptor.c:95: break;
;	../../../usb/descriptor.c:96: default:
	sjmp	00115$
00105$:
;	../../../usb/descriptor.c:97: if (order >= STRING_DESCRIPTOR_INTERFACE_0 && order < STRING_DESCRIPTOR_INTERFACE_END) {
	cjne	r7,#0x04,00150$
00150$:
	jc	00112$
	cjne	r7,#0x08,00152$
00152$:
	jnc	00112$
;	../../../usb/descriptor.c:98: order -= STRING_DESCRIPTOR_INTERFACE_0;
	dec	r7
	dec	r7
	dec	r7
	dec	r7
;	../../../usb/descriptor.c:99: do {
00108$:
;	../../../usb/descriptor.c:100: header += strlen;
	mov	a,r5
	add	a,r6
	mov	r6,a
;	../../../usb/descriptor.c:101: if (header >= sizeof(InterfaceStringDesc)) // 超过长度就直接返回
	cjne	r6,#0x7a,00154$
00154$:
	jc	00107$
;	../../../usb/descriptor.c:102: return 0xFF;
	mov	dpl,#0xff
	sjmp	00116$
00107$:
;	../../../usb/descriptor.c:104: strlen = InterfaceStringDesc[header];
	mov	a,r6
	add	a,#_InterfaceStringDesc
	mov	r3,a
	clr	a
	addc	a,#(_InterfaceStringDesc >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	clr	a
	movc	a,@a+dptr
	mov	r5,a
;	../../../usb/descriptor.c:105: } while (order--);
	mov	ar2,r7
	dec	r7
	mov	a,r2
	jnz	00108$
;	../../../usb/descriptor.c:106: *strPtor = (uint8_t*)&InterfaceStringDesc[header];
	push	ar5
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r5,#0x80
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	pop	ar5
	sjmp	00115$
00112$:
;	../../../usb/descriptor.c:108: strlen = 0xFF;
	mov	r5,#0xff
;	../../../usb/descriptor.c:111: }
00115$:
;	../../../usb/descriptor.c:113: return strlen;
	mov	dpl,r5
00116$:
;	../../../usb/descriptor.c:114: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetUsbDescriptor'
;------------------------------------------------------------
;type2                     Allocated to stack - _bp -3
;index                     Allocated to stack - _bp -4
;strPtr                    Allocated to stack - _bp -7
;type1                     Allocated to registers r7 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../../usb/descriptor.c:125: uint8_t GetUsbDescriptor(uint8_t type1, uint8_t type2, uint8_t index, uint8_t** strPtr)
;	-----------------------------------------
;	 function GetUsbDescriptor
;	-----------------------------------------
_GetUsbDescriptor:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
	mov	r7,dpl
;	../../../usb/descriptor.c:128: switch (type1) {
	cjne	r7,#0x01,00132$
	sjmp	00101$
00132$:
	cjne	r7,#0x02,00133$
	sjmp	00102$
00133$:
	cjne	r7,#0x03,00134$
	sjmp	00103$
00134$:
	cjne	r7,#0x22,00135$
	sjmp	00104$
00135$:
	ljmp	00108$
;	../../../usb/descriptor.c:130: case 1:
00101$:
;	../../../usb/descriptor.c:131: *strPtr = (uint8_t*)DeviceDescriptor;
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#_DeviceDescriptor
	lcall	__gptrput
	inc	dptr
	mov	a,#(_DeviceDescriptor >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
;	../../../usb/descriptor.c:132: return sizeof(DeviceDescriptor);
	mov	dpl,#0x12
	ljmp	00110$
;	../../../usb/descriptor.c:134: case 2:
00102$:
;	../../../usb/descriptor.c:135: *strPtr = (uint8_t*)ConfigDescriptor;
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#_ConfigDescriptor
	lcall	__gptrput
	inc	dptr
	mov	a,#(_ConfigDescriptor >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
;	../../../usb/descriptor.c:136: return sizeof(ConfigDescriptor);
	mov	dpl,#0x82
	ljmp	00110$
;	../../../usb/descriptor.c:138: case 3:
00103$:
;	../../../usb/descriptor.c:139: return getStringDescriptor(type2, strPtr);
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	lcall	_getStringDescriptor
	dec	sp
	dec	sp
	dec	sp
;	../../../usb/descriptor.c:141: case 0x22:
	sjmp	00110$
00104$:
;	../../../usb/descriptor.c:142: if (index < sizeof(ReportDescriptor)) {
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	cjne	@r0,#0x10,00136$
00136$:
	jnc	00106$
;	../../../usb/descriptor.c:143: *strPtr = ReportDescriptor[index].pointer;
	mov	a,_bp
	add	a,#0xf9
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
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	mov	b,#0x04
	mul	ab
	mov	r3,a
	mov	r4,b
	add	a,#_ReportDescriptor
	mov	dpl,a
	mov	a,r4
	addc	a,#(_ReportDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../../../usb/descriptor.c:144: return ReportDescriptor[index].length;
	mov	a,r3
	add	a,#_ReportDescriptor
	mov	r3,a
	mov	a,r4
	addc	a,#(_ReportDescriptor >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,a
	sjmp	00110$
00106$:
;	../../../usb/descriptor.c:147: return 0xff;
	mov	dpl,#0xff
;	../../../usb/descriptor.c:150: default:
	sjmp	00110$
00108$:
;	../../../usb/descriptor.c:151: return 0xff; //不支持的命令或者出错
	mov	dpl,#0xff
;	../../../usb/descriptor.c:152: }
00110$:
;	../../../usb/descriptor.c:153: }
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
_DeviceDescriptor:
	.db #0x12	; 18
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x21	; 33
	.db #0x04	; 4
	.db #0x14	; 20
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
_ConfigDescriptor:
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xfa	; 250
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x09	; 9
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0xad	; 173
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x82	; 130
	.db #0x03	; 3
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x83	; 131
	.db #0x03	; 3
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x09	; 9
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x84	; 132
	.db #0x03	; 3
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x01	; 1
_LangStringDesc:
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x09	; 9
	.db #0x04	; 4
_InterfaceStringDesc:
	.db #0x1a	; 26
	.db #0x03	; 3
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x49	; 73	'I'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x4b	; 75	'K'
	.db #0x00	; 0
	.db #0x65	; 101	'e'
	.db #0x00	; 0
	.db #0x79	; 121	'y'
	.db #0x00	; 0
	.db #0x62	; 98	'b'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x61	; 97	'a'
	.db #0x00	; 0
	.db #0x72	; 114	'r'
	.db #0x00	; 0
	.db #0x64	; 100	'd'
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x03	; 3
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x74	; 116	't'
	.db #0x00	; 0
	.db #0x72	; 114	'r'
	.db #0x00	; 0
	.db #0x61	; 97	'a'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x4b	; 75	'K'
	.db #0x00	; 0
	.db #0x65	; 101	'e'
	.db #0x00	; 0
	.db #0x79	; 121	'y'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x53	; 83	'S'
	.db #0x00	; 0
	.db #0x75	; 117	'u'
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x72	; 114	'r'
	.db #0x00	; 0
	.db #0x74	; 116	't'
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x03	; 3
	.db #0x4c	; 76	'L'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x74	; 116	't'
	.db #0x00	; 0
	.db #0x6c	; 108	'l'
	.db #0x00	; 0
	.db #0x61	; 97	'a'
	.db #0x00	; 0
	.db #0x62	; 98	'b'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x00	; 0
	.db #0x66	; 102	'f'
	.db #0x00	; 0
	.db #0x69	; 105	'i'
	.db #0x00	; 0
	.db #0x67	; 103	'g'
	.db #0x00	; 0
	.db #0x75	; 117	'u'
	.db #0x00	; 0
	.db #0x72	; 114	'r'
	.db #0x00	; 0
	.db #0x61	; 97	'a'
	.db #0x00	; 0
	.db #0x74	; 116	't'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x72	; 114	'r'
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x03	; 3
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x4d	; 77	'M'
	.db #0x00	; 0
	.db #0x53	; 83	'S'
	.db #0x00	; 0
	.db #0x49	; 73	'I'
	.db #0x00	; 0
	.db #0x53	; 83	'S'
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x00	; 0
_ReportDescriptor:
	.byte (_report_desc_HID0 + 0), ((_report_desc_HID0 + 0) >> 8),#0x80
	.db #0x3f	; 63
	.byte (_report_desc_HID1 + 0), ((_report_desc_HID1 + 0) >> 8),#0x80
	.db #0xad	; 173
	.byte (_report_desc_HID2 + 0), ((_report_desc_HID2 + 0) >> 8),#0x80
	.db #0x24	; 36
	.byte (_report_desc_HID3 + 0), ((_report_desc_HID3 + 0) >> 8),#0x80
	.db #0x21	; 33
_report_desc_HID0:
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0xa1	; 161
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x19	; 25
	.db #0xe0	; 224
	.db #0x29	; 41
	.db #0xe7	; 231
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x01	; 1
	.db #0x75	; 117	'u'
	.db #0x01	; 1
	.db #0x95	; 149
	.db #0x08	; 8
	.db #0x81	; 129
	.db #0x02	; 2
	.db #0x95	; 149
	.db #0x01	; 1
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0x95	; 149
	.db #0x05	; 5
	.db #0x75	; 117	'u'
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x19	; 25
	.db #0x01	; 1
	.db #0x29	; 41
	.db #0x05	; 5
	.db #0x91	; 145
	.db #0x02	; 2
	.db #0x95	; 149
	.db #0x01	; 1
	.db #0x75	; 117	'u'
	.db #0x03	; 3
	.db #0x91	; 145
	.db #0x03	; 3
	.db #0x95	; 149
	.db #0x06	; 6
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x66	; 102	'f'
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x19	; 25
	.db #0x00	; 0
	.db #0x29	; 41
	.db #0x66	; 102	'f'
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0xc0	; 192
_report_desc_HID1:
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0xa1	; 161
	.db #0x01	; 1
	.db #0x85	; 133
	.db #0x02	; 2
	.db #0x15	; 21
	.db #0x01	; 1
	.db #0x26	; 38
	.db #0xb7	; 183
	.db #0x00	; 0
	.db #0x19	; 25
	.db #0x01	; 1
	.db #0x29	; 41
	.db #0xb7	; 183
	.db #0x75	; 117	'u'
	.db #0x10	; 16
	.db #0x95	; 149
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x05	; 5
	.db #0x0c	; 12
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0xa1	; 161
	.db #0x01	; 1
	.db #0x85	; 133
	.db #0x03	; 3
	.db #0x15	; 21
	.db #0x01	; 1
	.db #0x26	; 38
	.db #0x9c	; 156
	.db #0x02	; 2
	.db #0x19	; 25
	.db #0x01	; 1
	.db #0x2a	; 42
	.db #0x9c	; 156
	.db #0x02	; 2
	.db #0x75	; 117	'u'
	.db #0x10	; 16
	.db #0x95	; 149
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0xa1	; 161
	.db #0x01	; 1
	.db #0x85	; 133
	.db #0x80	; 128
	.db #0x75	; 117	'u'
	.db #0x01	; 1
	.db #0x95	; 149
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x19	; 25
	.db #0xe0	; 224
	.db #0x29	; 41
	.db #0xe7	; 231
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0x02	; 2
	.db #0x95	; 149
	.db #0xd8	; 216
	.db #0x75	; 117	'u'
	.db #0x01	; 1
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x19	; 25
	.db #0x00	; 0
	.db #0x29	; 41
	.db #0xd7	; 215
	.db #0x81	; 129
	.db #0x02	; 2
	.db #0xc0	; 192
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0xa1	; 161
	.db #0x01	; 1
	.db #0x85	; 133
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0xa1	; 161
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x09	; 9
	.db #0x19	; 25
	.db #0x01	; 1
	.db #0x29	; 41
	.db #0x05	; 5
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x01	; 1
	.db #0x75	; 117	'u'
	.db #0x01	; 1
	.db #0x95	; 149
	.db #0x05	; 5
	.db #0x81	; 129
	.db #0x02	; 2
	.db #0x75	; 117	'u'
	.db #0x03	; 3
	.db #0x95	; 149
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x30	; 48	'0'
	.db #0x09	; 9
	.db #0x31	; 49	'1'
	.db #0x15	; 21
	.db #0x81	; 129
	.db #0x25	; 37
	.db #0x7f	; 127
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x95	; 149
	.db #0x02	; 2
	.db #0x81	; 129
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x38	; 56	'8'
	.db #0x15	; 21
	.db #0x81	; 129
	.db #0x25	; 37
	.db #0x7f	; 127
	.db #0x35	; 53	'5'
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x95	; 149
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x0c	; 12
	.db #0x0a	; 10
	.db #0x38	; 56	'8'
	.db #0x02	; 2
	.db #0x15	; 21
	.db #0x81	; 129
	.db #0x25	; 37
	.db #0x7f	; 127
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x95	; 149
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0x06	; 6
	.db #0xc0	; 192
	.db #0xc0	; 192
_report_desc_HID2:
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0xa1	; 161
	.db #0x01	; 1
	.db #0x85	; 133
	.db #0x3f	; 63
	.db #0x95	; 149
	.db #0x3f	; 63
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x25	; 37
	.db #0x01	; 1
	.db #0x15	; 21
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0x02	; 2
	.db #0x85	; 133
	.db #0x3f	; 63
	.db #0x95	; 149
	.db #0x3f	; 63
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x25	; 37
	.db #0x01	; 1
	.db #0x15	; 21
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x91	; 145
	.db #0x02	; 2
	.db #0xc0	; 192
_report_desc_HID3:
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0xa1	; 161
	.db #0x01	; 1
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x95	; 149
	.db #0x40	; 64
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0x02	; 2
	.db #0x95	; 149
	.db #0x40	; 64
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x91	; 145
	.db #0x02	; 2
	.db #0x95	; 149
	.db #0x40	; 64
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0xb1	; 177
	.db #0x02	; 2
	.db #0xc0	; 192
_itoa:
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x46	; 70	'F'
	.area CONST   (CODE)
___str_0:
	.ascii "Lin"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Knight101"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

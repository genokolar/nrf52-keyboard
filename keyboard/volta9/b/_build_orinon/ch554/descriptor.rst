                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module descriptor
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _itoa
                                     12 	.globl _report_desc_HID3
                                     13 	.globl _report_desc_HID2
                                     14 	.globl _report_desc_HID1
                                     15 	.globl _report_desc_HID0
                                     16 	.globl _ReportDescriptor
                                     17 	.globl _InterfaceStringDesc
                                     18 	.globl _LangStringDesc
                                     19 	.globl _ConfigDescriptor
                                     20 	.globl _DeviceDescriptor
                                     21 	.globl _GetUsbDescriptor
                                     22 	.globl _getSerial
                                     23 	.globl _strlen
                                     24 ;--------------------------------------------------------
                                     25 ; special function registers
                                     26 ;--------------------------------------------------------
                                     27 	.area RSEG    (ABS,DATA)
      000000                         28 	.org 0x0000
                                     29 ;--------------------------------------------------------
                                     30 ; special function bits
                                     31 ;--------------------------------------------------------
                                     32 	.area RSEG    (ABS,DATA)
      000000                         33 	.org 0x0000
                                     34 ;--------------------------------------------------------
                                     35 ; overlayable register banks
                                     36 ;--------------------------------------------------------
                                     37 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         38 	.ds 8
                                     39 ;--------------------------------------------------------
                                     40 ; internal ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area DSEG    (DATA)
                                     43 ;--------------------------------------------------------
                                     44 ; overlayable items in internal ram 
                                     45 ;--------------------------------------------------------
                                     46 ;--------------------------------------------------------
                                     47 ; indirectly addressable internal ram data
                                     48 ;--------------------------------------------------------
                                     49 	.area ISEG    (DATA)
                                     50 ;--------------------------------------------------------
                                     51 ; absolute internal ram data
                                     52 ;--------------------------------------------------------
                                     53 	.area IABS    (ABS,DATA)
                                     54 	.area IABS    (ABS,DATA)
                                     55 ;--------------------------------------------------------
                                     56 ; bit data
                                     57 ;--------------------------------------------------------
                                     58 	.area BSEG    (BIT)
                                     59 ;--------------------------------------------------------
                                     60 ; paged external ram data
                                     61 ;--------------------------------------------------------
                                     62 	.area PSEG    (PAG,XDATA)
                                     63 ;--------------------------------------------------------
                                     64 ; external ram data
                                     65 ;--------------------------------------------------------
                                     66 	.area XSEG    (XDATA)
      000280                         67 _descBuffer:
      000280                         68 	.ds 64
                                     69 ;--------------------------------------------------------
                                     70 ; absolute external ram data
                                     71 ;--------------------------------------------------------
                                     72 	.area XABS    (ABS,XDATA)
                                     73 ;--------------------------------------------------------
                                     74 ; external initialized ram data
                                     75 ;--------------------------------------------------------
                                     76 	.area XISEG   (XDATA)
                                     77 	.area HOME    (CODE)
                                     78 	.area GSINIT0 (CODE)
                                     79 	.area GSINIT1 (CODE)
                                     80 	.area GSINIT2 (CODE)
                                     81 	.area GSINIT3 (CODE)
                                     82 	.area GSINIT4 (CODE)
                                     83 	.area GSINIT5 (CODE)
                                     84 	.area GSINIT  (CODE)
                                     85 	.area GSFINAL (CODE)
                                     86 	.area CSEG    (CODE)
                                     87 ;--------------------------------------------------------
                                     88 ; global & static initialisations
                                     89 ;--------------------------------------------------------
                                     90 	.area HOME    (CODE)
                                     91 	.area GSINIT  (CODE)
                                     92 	.area GSFINAL (CODE)
                                     93 	.area GSINIT  (CODE)
                                     94 ;--------------------------------------------------------
                                     95 ; Home
                                     96 ;--------------------------------------------------------
                                     97 	.area HOME    (CODE)
                                     98 	.area HOME    (CODE)
                                     99 ;--------------------------------------------------------
                                    100 ; code
                                    101 ;--------------------------------------------------------
                                    102 	.area CSEG    (CODE)
                                    103 ;------------------------------------------------------------
                                    104 ;Allocation info for local variables in function 'fillDescBuffer'
                                    105 ;------------------------------------------------------------
                                    106 ;str                       Allocated to stack - _bp +1
                                    107 ;len                       Allocated to stack - _bp +4
                                    108 ;i                         Allocated to stack - _bp +5
                                    109 ;------------------------------------------------------------
                                    110 ;	../../../usb/descriptor.c:27: static uint8_t fillDescBuffer(char* str)
                                    111 ;	-----------------------------------------
                                    112 ;	 function fillDescBuffer
                                    113 ;	-----------------------------------------
      000E61                        114 _fillDescBuffer:
                           000007   115 	ar7 = 0x07
                           000006   116 	ar6 = 0x06
                           000005   117 	ar5 = 0x05
                           000004   118 	ar4 = 0x04
                           000003   119 	ar3 = 0x03
                           000002   120 	ar2 = 0x02
                           000001   121 	ar1 = 0x01
                           000000   122 	ar0 = 0x00
      000E61 C0 1F            [24]  123 	push	_bp
      000E63 85 81 1F         [24]  124 	mov	_bp,sp
      000E66 C0 82            [24]  125 	push	dpl
      000E68 C0 83            [24]  126 	push	dph
      000E6A C0 F0            [24]  127 	push	b
      000E6C 05 81            [12]  128 	inc	sp
      000E6E 05 81            [12]  129 	inc	sp
                                    130 ;	../../../usb/descriptor.c:29: uint8_t len = strlen(str);
      000E70 A8 1F            [24]  131 	mov	r0,_bp
      000E72 08               [12]  132 	inc	r0
      000E73 86 82            [24]  133 	mov	dpl,@r0
      000E75 08               [12]  134 	inc	r0
      000E76 86 83            [24]  135 	mov	dph,@r0
      000E78 08               [12]  136 	inc	r0
      000E79 86 F0            [24]  137 	mov	b,@r0
      000E7B 12 33 0D         [24]  138 	lcall	_strlen
      000E7E AB 82            [24]  139 	mov	r3,dpl
      000E80 E5 1F            [12]  140 	mov	a,_bp
      000E82 24 04            [12]  141 	add	a,#0x04
      000E84 F8               [12]  142 	mov	r0,a
      000E85 A6 03            [24]  143 	mov	@r0,ar3
                                    144 ;	../../../usb/descriptor.c:31: descBuffer[0] = len * 2 + 2;
      000E87 E5 1F            [12]  145 	mov	a,_bp
      000E89 24 04            [12]  146 	add	a,#0x04
      000E8B F8               [12]  147 	mov	r0,a
      000E8C E6               [12]  148 	mov	a,@r0
      000E8D 26               [12]  149 	add	a,@r0
      000E8E FC               [12]  150 	mov	r4,a
      000E8F 24 02            [12]  151 	add	a,#0x02
      000E91 FA               [12]  152 	mov	r2,a
      000E92 90 02 80         [24]  153 	mov	dptr,#_descBuffer
      000E95 F0               [24]  154 	movx	@dptr,a
                                    155 ;	../../../usb/descriptor.c:32: descBuffer[1] = 0x03;
      000E96 90 02 81         [24]  156 	mov	dptr,#(_descBuffer + 0x0001)
      000E99 74 03            [12]  157 	mov	a,#0x03
      000E9B F0               [24]  158 	movx	@dptr,a
                                    159 ;	../../../usb/descriptor.c:34: for (uint8_t i = 0; i < len; i++) {
      000E9C E5 1F            [12]  160 	mov	a,_bp
      000E9E 24 05            [12]  161 	add	a,#0x05
      000EA0 F8               [12]  162 	mov	r0,a
      000EA1 76 00            [12]  163 	mov	@r0,#0x00
      000EA3                        164 00103$:
      000EA3 E5 1F            [12]  165 	mov	a,_bp
      000EA5 24 05            [12]  166 	add	a,#0x05
      000EA7 F8               [12]  167 	mov	r0,a
      000EA8 E5 1F            [12]  168 	mov	a,_bp
      000EAA 24 04            [12]  169 	add	a,#0x04
      000EAC F9               [12]  170 	mov	r1,a
      000EAD C3               [12]  171 	clr	c
      000EAE E6               [12]  172 	mov	a,@r0
      000EAF 97               [12]  173 	subb	a,@r1
      000EB0 50 5E            [24]  174 	jnc	00101$
                                    175 ;	../../../usb/descriptor.c:35: descBuffer[(i + 1) * 2] = str[i];
      000EB2 C0 04            [24]  176 	push	ar4
      000EB4 E5 1F            [12]  177 	mov	a,_bp
      000EB6 24 05            [12]  178 	add	a,#0x05
      000EB8 F8               [12]  179 	mov	r0,a
      000EB9 86 04            [24]  180 	mov	ar4,@r0
      000EBB 0C               [12]  181 	inc	r4
      000EBC EC               [12]  182 	mov	a,r4
      000EBD FB               [12]  183 	mov	r3,a
      000EBE 33               [12]  184 	rlc	a
      000EBF 95 E0            [12]  185 	subb	a,acc
      000EC1 FF               [12]  186 	mov	r7,a
      000EC2 EB               [12]  187 	mov	a,r3
      000EC3 2B               [12]  188 	add	a,r3
      000EC4 FB               [12]  189 	mov	r3,a
      000EC5 EF               [12]  190 	mov	a,r7
      000EC6 33               [12]  191 	rlc	a
      000EC7 FF               [12]  192 	mov	r7,a
      000EC8 EB               [12]  193 	mov	a,r3
      000EC9 24 80            [12]  194 	add	a,#_descBuffer
      000ECB FB               [12]  195 	mov	r3,a
      000ECC EF               [12]  196 	mov	a,r7
      000ECD 34 02            [12]  197 	addc	a,#(_descBuffer >> 8)
      000ECF FF               [12]  198 	mov	r7,a
      000ED0 A8 1F            [24]  199 	mov	r0,_bp
      000ED2 08               [12]  200 	inc	r0
      000ED3 E5 1F            [12]  201 	mov	a,_bp
      000ED5 24 05            [12]  202 	add	a,#0x05
      000ED7 F9               [12]  203 	mov	r1,a
      000ED8 E7               [12]  204 	mov	a,@r1
      000ED9 26               [12]  205 	add	a,@r0
      000EDA FA               [12]  206 	mov	r2,a
      000EDB E4               [12]  207 	clr	a
      000EDC 08               [12]  208 	inc	r0
      000EDD 36               [12]  209 	addc	a,@r0
      000EDE FD               [12]  210 	mov	r5,a
      000EDF 08               [12]  211 	inc	r0
      000EE0 86 06            [24]  212 	mov	ar6,@r0
      000EE2 8A 82            [24]  213 	mov	dpl,r2
      000EE4 8D 83            [24]  214 	mov	dph,r5
      000EE6 8E F0            [24]  215 	mov	b,r6
      000EE8 12 33 25         [24]  216 	lcall	__gptrget
      000EEB FA               [12]  217 	mov	r2,a
      000EEC 8B 82            [24]  218 	mov	dpl,r3
      000EEE 8F 83            [24]  219 	mov	dph,r7
      000EF0 F0               [24]  220 	movx	@dptr,a
                                    221 ;	../../../usb/descriptor.c:36: descBuffer[(i + 1) * 2 + 1] = 0x00;
      000EF1 EC               [12]  222 	mov	a,r4
      000EF2 2C               [12]  223 	add	a,r4
      000EF3 FC               [12]  224 	mov	r4,a
      000EF4 0C               [12]  225 	inc	r4
      000EF5 EC               [12]  226 	mov	a,r4
      000EF6 33               [12]  227 	rlc	a
      000EF7 95 E0            [12]  228 	subb	a,acc
      000EF9 FF               [12]  229 	mov	r7,a
      000EFA EC               [12]  230 	mov	a,r4
      000EFB 24 80            [12]  231 	add	a,#_descBuffer
      000EFD F5 82            [12]  232 	mov	dpl,a
      000EFF EF               [12]  233 	mov	a,r7
      000F00 34 02            [12]  234 	addc	a,#(_descBuffer >> 8)
      000F02 F5 83            [12]  235 	mov	dph,a
      000F04 E4               [12]  236 	clr	a
      000F05 F0               [24]  237 	movx	@dptr,a
                                    238 ;	../../../usb/descriptor.c:34: for (uint8_t i = 0; i < len; i++) {
      000F06 E5 1F            [12]  239 	mov	a,_bp
      000F08 24 05            [12]  240 	add	a,#0x05
      000F0A F8               [12]  241 	mov	r0,a
      000F0B 06               [12]  242 	inc	@r0
      000F0C D0 04            [24]  243 	pop	ar4
      000F0E 80 93            [24]  244 	sjmp	00103$
      000F10                        245 00101$:
                                    246 ;	../../../usb/descriptor.c:38: return len * 2 + 2;
      000F10 74 02            [12]  247 	mov	a,#0x02
      000F12 2C               [12]  248 	add	a,r4
      000F13 F5 82            [12]  249 	mov	dpl,a
                                    250 ;	../../../usb/descriptor.c:39: }
      000F15 85 1F 81         [24]  251 	mov	sp,_bp
      000F18 D0 1F            [24]  252 	pop	_bp
      000F1A 22               [24]  253 	ret
                                    254 ;------------------------------------------------------------
                                    255 ;Allocation info for local variables in function 'getSerial'
                                    256 ;------------------------------------------------------------
                                    257 ;str                       Allocated to stack - _bp +1
                                    258 ;i                         Allocated to stack - _bp +4
                                    259 ;addr                      Allocated to stack - _bp +5
                                    260 ;se                        Allocated to stack - _bp +7
                                    261 ;------------------------------------------------------------
                                    262 ;	../../../usb/descriptor.c:41: uint8_t getSerial(char* str)
                                    263 ;	-----------------------------------------
                                    264 ;	 function getSerial
                                    265 ;	-----------------------------------------
      000F1B                        266 _getSerial:
      000F1B C0 1F            [24]  267 	push	_bp
      000F1D 85 81 1F         [24]  268 	mov	_bp,sp
      000F20 C0 82            [24]  269 	push	dpl
      000F22 C0 83            [24]  270 	push	dph
      000F24 C0 F0            [24]  271 	push	b
      000F26 E5 81            [12]  272 	mov	a,sp
      000F28 24 05            [12]  273 	add	a,#0x05
      000F2A F5 81            [12]  274 	mov	sp,a
                                    275 ;	../../../usb/descriptor.c:43: uint8_t i = 0;
      000F2C 7C 00            [12]  276 	mov	r4,#0x00
                                    277 ;	../../../usb/descriptor.c:44: for (uint16_t addr = 0x3FFC; addr <= 0x3FFF; addr++) {
      000F2E E5 1F            [12]  278 	mov	a,_bp
      000F30 24 05            [12]  279 	add	a,#0x05
      000F32 F8               [12]  280 	mov	r0,a
      000F33 76 FC            [12]  281 	mov	@r0,#0xfc
      000F35 08               [12]  282 	inc	r0
      000F36 76 3F            [12]  283 	mov	@r0,#0x3f
      000F38                        284 00103$:
      000F38 E5 1F            [12]  285 	mov	a,_bp
      000F3A 24 05            [12]  286 	add	a,#0x05
      000F3C F8               [12]  287 	mov	r0,a
      000F3D 86 06            [24]  288 	mov	ar6,@r0
      000F3F 08               [12]  289 	inc	r0
      000F40 86 07            [24]  290 	mov	ar7,@r0
      000F42 C3               [12]  291 	clr	c
      000F43 74 FF            [12]  292 	mov	a,#0xff
      000F45 9E               [12]  293 	subb	a,r6
      000F46 74 3F            [12]  294 	mov	a,#0x3f
      000F48 9F               [12]  295 	subb	a,r7
      000F49 50 03            [24]  296 	jnc	00118$
      000F4B 02 10 38         [24]  297 	ljmp	00101$
      000F4E                        298 00118$:
                                    299 ;	../../../usb/descriptor.c:45: uint16_t se = (uint16_t)(*((const uint8_t __CODE*)(addr)));
      000F4E E5 1F            [12]  300 	mov	a,_bp
      000F50 24 05            [12]  301 	add	a,#0x05
      000F52 F8               [12]  302 	mov	r0,a
      000F53 86 82            [24]  303 	mov	dpl,@r0
      000F55 08               [12]  304 	inc	r0
      000F56 86 83            [24]  305 	mov	dph,@r0
      000F58 E4               [12]  306 	clr	a
      000F59 93               [24]  307 	movc	a,@a+dptr
      000F5A FF               [12]  308 	mov	r7,a
      000F5B E5 1F            [12]  309 	mov	a,_bp
      000F5D 24 07            [12]  310 	add	a,#0x07
      000F5F F8               [12]  311 	mov	r0,a
      000F60 A6 07            [24]  312 	mov	@r0,ar7
      000F62 08               [12]  313 	inc	r0
      000F63 76 00            [12]  314 	mov	@r0,#0x00
                                    315 ;	../../../usb/descriptor.c:46: str[i++] = itoa[(se >> 4) % 0xF];
      000F65 E5 1F            [12]  316 	mov	a,_bp
      000F67 24 04            [12]  317 	add	a,#0x04
      000F69 F8               [12]  318 	mov	r0,a
      000F6A EC               [12]  319 	mov	a,r4
      000F6B 04               [12]  320 	inc	a
      000F6C F6               [12]  321 	mov	@r0,a
      000F6D A8 1F            [24]  322 	mov	r0,_bp
      000F6F 08               [12]  323 	inc	r0
      000F70 EC               [12]  324 	mov	a,r4
      000F71 26               [12]  325 	add	a,@r0
      000F72 FD               [12]  326 	mov	r5,a
      000F73 E4               [12]  327 	clr	a
      000F74 08               [12]  328 	inc	r0
      000F75 36               [12]  329 	addc	a,@r0
      000F76 FE               [12]  330 	mov	r6,a
      000F77 08               [12]  331 	inc	r0
      000F78 86 07            [24]  332 	mov	ar7,@r0
      000F7A E5 1F            [12]  333 	mov	a,_bp
      000F7C 24 07            [12]  334 	add	a,#0x07
      000F7E F8               [12]  335 	mov	r0,a
      000F7F 86 02            [24]  336 	mov	ar2,@r0
      000F81 08               [12]  337 	inc	r0
      000F82 E6               [12]  338 	mov	a,@r0
      000F83 C4               [12]  339 	swap	a
      000F84 CA               [12]  340 	xch	a,r2
      000F85 C4               [12]  341 	swap	a
      000F86 54 0F            [12]  342 	anl	a,#0x0f
      000F88 6A               [12]  343 	xrl	a,r2
      000F89 CA               [12]  344 	xch	a,r2
      000F8A 54 0F            [12]  345 	anl	a,#0x0f
      000F8C CA               [12]  346 	xch	a,r2
      000F8D 6A               [12]  347 	xrl	a,r2
      000F8E CA               [12]  348 	xch	a,r2
      000F8F FB               [12]  349 	mov	r3,a
      000F90 8A 82            [24]  350 	mov	dpl,r2
      000F92 8B 83            [24]  351 	mov	dph,r3
      000F94 C0 07            [24]  352 	push	ar7
      000F96 C0 06            [24]  353 	push	ar6
      000F98 C0 05            [24]  354 	push	ar5
      000F9A 74 0F            [12]  355 	mov	a,#0x0f
      000F9C C0 E0            [24]  356 	push	acc
      000F9E E4               [12]  357 	clr	a
      000F9F C0 E0            [24]  358 	push	acc
      000FA1 12 33 41         [24]  359 	lcall	__moduint
      000FA4 AA 82            [24]  360 	mov	r2,dpl
      000FA6 AB 83            [24]  361 	mov	r3,dph
      000FA8 15 81            [12]  362 	dec	sp
      000FAA 15 81            [12]  363 	dec	sp
      000FAC D0 05            [24]  364 	pop	ar5
      000FAE D0 06            [24]  365 	pop	ar6
      000FB0 D0 07            [24]  366 	pop	ar7
      000FB2 EA               [12]  367 	mov	a,r2
      000FB3 24 49            [12]  368 	add	a,#_itoa
      000FB5 F5 82            [12]  369 	mov	dpl,a
      000FB7 EB               [12]  370 	mov	a,r3
      000FB8 34 36            [12]  371 	addc	a,#(_itoa >> 8)
      000FBA F5 83            [12]  372 	mov	dph,a
      000FBC E4               [12]  373 	clr	a
      000FBD 93               [24]  374 	movc	a,@a+dptr
      000FBE 8D 82            [24]  375 	mov	dpl,r5
      000FC0 8E 83            [24]  376 	mov	dph,r6
      000FC2 8F F0            [24]  377 	mov	b,r7
      000FC4 12 30 FC         [24]  378 	lcall	__gptrput
                                    379 ;	../../../usb/descriptor.c:47: str[i++] = itoa[(se >> 0) % 0xF];
      000FC7 E5 1F            [12]  380 	mov	a,_bp
      000FC9 24 04            [12]  381 	add	a,#0x04
      000FCB F8               [12]  382 	mov	r0,a
      000FCC 86 07            [24]  383 	mov	ar7,@r0
      000FCE E5 1F            [12]  384 	mov	a,_bp
      000FD0 24 04            [12]  385 	add	a,#0x04
      000FD2 F8               [12]  386 	mov	r0,a
      000FD3 E6               [12]  387 	mov	a,@r0
      000FD4 04               [12]  388 	inc	a
      000FD5 FC               [12]  389 	mov	r4,a
      000FD6 A8 1F            [24]  390 	mov	r0,_bp
      000FD8 08               [12]  391 	inc	r0
      000FD9 EF               [12]  392 	mov	a,r7
      000FDA 26               [12]  393 	add	a,@r0
      000FDB FF               [12]  394 	mov	r7,a
      000FDC E4               [12]  395 	clr	a
      000FDD 08               [12]  396 	inc	r0
      000FDE 36               [12]  397 	addc	a,@r0
      000FDF FE               [12]  398 	mov	r6,a
      000FE0 08               [12]  399 	inc	r0
      000FE1 86 05            [24]  400 	mov	ar5,@r0
      000FE3 E5 1F            [12]  401 	mov	a,_bp
      000FE5 24 07            [12]  402 	add	a,#0x07
      000FE7 F8               [12]  403 	mov	r0,a
      000FE8 08               [12]  404 	inc	r0
      000FE9 86 03            [24]  405 	mov	ar3,@r0
      000FEB 18               [12]  406 	dec	r0
      000FEC 86 02            [24]  407 	mov	ar2,@r0
      000FEE 8A 82            [24]  408 	mov	dpl,r2
      000FF0 8B 83            [24]  409 	mov	dph,r3
      000FF2 C0 07            [24]  410 	push	ar7
      000FF4 C0 06            [24]  411 	push	ar6
      000FF6 C0 05            [24]  412 	push	ar5
      000FF8 C0 04            [24]  413 	push	ar4
      000FFA 74 0F            [12]  414 	mov	a,#0x0f
      000FFC C0 E0            [24]  415 	push	acc
      000FFE E4               [12]  416 	clr	a
      000FFF C0 E0            [24]  417 	push	acc
      001001 12 33 41         [24]  418 	lcall	__moduint
      001004 AA 82            [24]  419 	mov	r2,dpl
      001006 AB 83            [24]  420 	mov	r3,dph
      001008 15 81            [12]  421 	dec	sp
      00100A 15 81            [12]  422 	dec	sp
      00100C D0 04            [24]  423 	pop	ar4
      00100E D0 05            [24]  424 	pop	ar5
      001010 D0 06            [24]  425 	pop	ar6
      001012 D0 07            [24]  426 	pop	ar7
      001014 EA               [12]  427 	mov	a,r2
      001015 24 49            [12]  428 	add	a,#_itoa
      001017 F5 82            [12]  429 	mov	dpl,a
      001019 EB               [12]  430 	mov	a,r3
      00101A 34 36            [12]  431 	addc	a,#(_itoa >> 8)
      00101C F5 83            [12]  432 	mov	dph,a
      00101E E4               [12]  433 	clr	a
      00101F 93               [24]  434 	movc	a,@a+dptr
      001020 FB               [12]  435 	mov	r3,a
      001021 8F 82            [24]  436 	mov	dpl,r7
      001023 8E 83            [24]  437 	mov	dph,r6
      001025 8D F0            [24]  438 	mov	b,r5
      001027 12 30 FC         [24]  439 	lcall	__gptrput
                                    440 ;	../../../usb/descriptor.c:44: for (uint16_t addr = 0x3FFC; addr <= 0x3FFF; addr++) {
      00102A E5 1F            [12]  441 	mov	a,_bp
      00102C 24 05            [12]  442 	add	a,#0x05
      00102E F8               [12]  443 	mov	r0,a
      00102F 06               [12]  444 	inc	@r0
      001030 B6 00 02         [24]  445 	cjne	@r0,#0x00,00119$
      001033 08               [12]  446 	inc	r0
      001034 06               [12]  447 	inc	@r0
      001035                        448 00119$:
      001035 02 0F 38         [24]  449 	ljmp	00103$
      001038                        450 00101$:
                                    451 ;	../../../usb/descriptor.c:49: return i;
      001038 8C 82            [24]  452 	mov	dpl,r4
                                    453 ;	../../../usb/descriptor.c:50: }
      00103A 85 1F 81         [24]  454 	mov	sp,_bp
      00103D D0 1F            [24]  455 	pop	_bp
      00103F 22               [24]  456 	ret
                                    457 ;------------------------------------------------------------
                                    458 ;Allocation info for local variables in function 'fillSerial'
                                    459 ;------------------------------------------------------------
                                    460 ;i                         Allocated to registers r6 
                                    461 ;addr                      Allocated to stack - _bp +1
                                    462 ;se                        Allocated to stack - _bp +3
                                    463 ;------------------------------------------------------------
                                    464 ;	../../../usb/descriptor.c:52: static uint8_t fillSerial()
                                    465 ;	-----------------------------------------
                                    466 ;	 function fillSerial
                                    467 ;	-----------------------------------------
      001040                        468 _fillSerial:
      001040 C0 1F            [24]  469 	push	_bp
      001042 E5 81            [12]  470 	mov	a,sp
      001044 F5 1F            [12]  471 	mov	_bp,a
      001046 24 04            [12]  472 	add	a,#0x04
      001048 F5 81            [12]  473 	mov	sp,a
                                    474 ;	../../../usb/descriptor.c:55: descBuffer[i++] = 0x03;
      00104A 7F 02            [12]  475 	mov	r7,#0x02
      00104C 90 02 81         [24]  476 	mov	dptr,#(_descBuffer + 0x0001)
      00104F 74 03            [12]  477 	mov	a,#0x03
      001051 F0               [24]  478 	movx	@dptr,a
                                    479 ;	../../../usb/descriptor.c:57: for (uint16_t addr = 0x3FFC; addr <= 0x3FFF; addr++) {
      001052 A8 1F            [24]  480 	mov	r0,_bp
      001054 08               [12]  481 	inc	r0
      001055 76 FC            [12]  482 	mov	@r0,#0xfc
      001057 08               [12]  483 	inc	r0
      001058 76 3F            [12]  484 	mov	@r0,#0x3f
      00105A                        485 00103$:
      00105A A8 1F            [24]  486 	mov	r0,_bp
      00105C 08               [12]  487 	inc	r0
      00105D 86 03            [24]  488 	mov	ar3,@r0
      00105F 08               [12]  489 	inc	r0
      001060 86 04            [24]  490 	mov	ar4,@r0
      001062 C3               [12]  491 	clr	c
      001063 74 FF            [12]  492 	mov	a,#0xff
      001065 9B               [12]  493 	subb	a,r3
      001066 74 3F            [12]  494 	mov	a,#0x3f
      001068 9C               [12]  495 	subb	a,r4
      001069 50 03            [24]  496 	jnc	00118$
      00106B 02 11 4B         [24]  497 	ljmp	00101$
      00106E                        498 00118$:
                                    499 ;	../../../usb/descriptor.c:58: uint16_t se = (uint16_t)(*((const uint8_t __CODE*)(addr)));
      00106E A8 1F            [24]  500 	mov	r0,_bp
      001070 08               [12]  501 	inc	r0
      001071 86 82            [24]  502 	mov	dpl,@r0
      001073 08               [12]  503 	inc	r0
      001074 86 83            [24]  504 	mov	dph,@r0
      001076 E4               [12]  505 	clr	a
      001077 93               [24]  506 	movc	a,@a+dptr
      001078 FC               [12]  507 	mov	r4,a
      001079 E5 1F            [12]  508 	mov	a,_bp
      00107B 24 03            [12]  509 	add	a,#0x03
      00107D F8               [12]  510 	mov	r0,a
      00107E A6 04            [24]  511 	mov	@r0,ar4
      001080 08               [12]  512 	inc	r0
      001081 76 00            [12]  513 	mov	@r0,#0x00
                                    514 ;	../../../usb/descriptor.c:59: descBuffer[i++] = itoa[(se >> 4) % 0xF];
      001083 EF               [12]  515 	mov	a,r7
      001084 04               [12]  516 	inc	a
      001085 FA               [12]  517 	mov	r2,a
      001086 EF               [12]  518 	mov	a,r7
      001087 24 80            [12]  519 	add	a,#_descBuffer
      001089 FB               [12]  520 	mov	r3,a
      00108A E4               [12]  521 	clr	a
      00108B 34 02            [12]  522 	addc	a,#(_descBuffer >> 8)
      00108D FC               [12]  523 	mov	r4,a
      00108E E5 1F            [12]  524 	mov	a,_bp
      001090 24 03            [12]  525 	add	a,#0x03
      001092 F8               [12]  526 	mov	r0,a
      001093 86 05            [24]  527 	mov	ar5,@r0
      001095 08               [12]  528 	inc	r0
      001096 E6               [12]  529 	mov	a,@r0
      001097 C4               [12]  530 	swap	a
      001098 CD               [12]  531 	xch	a,r5
      001099 C4               [12]  532 	swap	a
      00109A 54 0F            [12]  533 	anl	a,#0x0f
      00109C 6D               [12]  534 	xrl	a,r5
      00109D CD               [12]  535 	xch	a,r5
      00109E 54 0F            [12]  536 	anl	a,#0x0f
      0010A0 CD               [12]  537 	xch	a,r5
      0010A1 6D               [12]  538 	xrl	a,r5
      0010A2 CD               [12]  539 	xch	a,r5
      0010A3 FE               [12]  540 	mov	r6,a
      0010A4 8D 82            [24]  541 	mov	dpl,r5
      0010A6 8E 83            [24]  542 	mov	dph,r6
      0010A8 C0 04            [24]  543 	push	ar4
      0010AA C0 03            [24]  544 	push	ar3
      0010AC C0 02            [24]  545 	push	ar2
      0010AE 74 0F            [12]  546 	mov	a,#0x0f
      0010B0 C0 E0            [24]  547 	push	acc
      0010B2 E4               [12]  548 	clr	a
      0010B3 C0 E0            [24]  549 	push	acc
      0010B5 12 33 41         [24]  550 	lcall	__moduint
      0010B8 AD 82            [24]  551 	mov	r5,dpl
      0010BA AE 83            [24]  552 	mov	r6,dph
      0010BC 15 81            [12]  553 	dec	sp
      0010BE 15 81            [12]  554 	dec	sp
      0010C0 D0 02            [24]  555 	pop	ar2
      0010C2 D0 03            [24]  556 	pop	ar3
      0010C4 D0 04            [24]  557 	pop	ar4
      0010C6 ED               [12]  558 	mov	a,r5
      0010C7 24 49            [12]  559 	add	a,#_itoa
      0010C9 F5 82            [12]  560 	mov	dpl,a
      0010CB EE               [12]  561 	mov	a,r6
      0010CC 34 36            [12]  562 	addc	a,#(_itoa >> 8)
      0010CE F5 83            [12]  563 	mov	dph,a
      0010D0 E4               [12]  564 	clr	a
      0010D1 93               [24]  565 	movc	a,@a+dptr
      0010D2 8B 82            [24]  566 	mov	dpl,r3
      0010D4 8C 83            [24]  567 	mov	dph,r4
      0010D6 F0               [24]  568 	movx	@dptr,a
                                    569 ;	../../../usb/descriptor.c:60: descBuffer[i++] = 0x00;
      0010D7 EA               [12]  570 	mov	a,r2
      0010D8 04               [12]  571 	inc	a
      0010D9 FE               [12]  572 	mov	r6,a
      0010DA EA               [12]  573 	mov	a,r2
      0010DB 24 80            [12]  574 	add	a,#_descBuffer
      0010DD F5 82            [12]  575 	mov	dpl,a
      0010DF E4               [12]  576 	clr	a
      0010E0 34 02            [12]  577 	addc	a,#(_descBuffer >> 8)
      0010E2 F5 83            [12]  578 	mov	dph,a
      0010E4 E4               [12]  579 	clr	a
      0010E5 F0               [24]  580 	movx	@dptr,a
                                    581 ;	../../../usb/descriptor.c:61: descBuffer[i++] = itoa[(se >> 0) % 0xF];
      0010E6 8E 05            [24]  582 	mov	ar5,r6
      0010E8 0E               [12]  583 	inc	r6
      0010E9 ED               [12]  584 	mov	a,r5
      0010EA 24 80            [12]  585 	add	a,#_descBuffer
      0010EC FD               [12]  586 	mov	r5,a
      0010ED E4               [12]  587 	clr	a
      0010EE 34 02            [12]  588 	addc	a,#(_descBuffer >> 8)
      0010F0 FC               [12]  589 	mov	r4,a
      0010F1 E5 1F            [12]  590 	mov	a,_bp
      0010F3 24 03            [12]  591 	add	a,#0x03
      0010F5 F8               [12]  592 	mov	r0,a
      0010F6 08               [12]  593 	inc	r0
      0010F7 86 03            [24]  594 	mov	ar3,@r0
      0010F9 18               [12]  595 	dec	r0
      0010FA 86 02            [24]  596 	mov	ar2,@r0
      0010FC 8A 82            [24]  597 	mov	dpl,r2
      0010FE 8B 83            [24]  598 	mov	dph,r3
      001100 C0 06            [24]  599 	push	ar6
      001102 C0 05            [24]  600 	push	ar5
      001104 C0 04            [24]  601 	push	ar4
      001106 74 0F            [12]  602 	mov	a,#0x0f
      001108 C0 E0            [24]  603 	push	acc
      00110A E4               [12]  604 	clr	a
      00110B C0 E0            [24]  605 	push	acc
      00110D 12 33 41         [24]  606 	lcall	__moduint
      001110 AA 82            [24]  607 	mov	r2,dpl
      001112 AB 83            [24]  608 	mov	r3,dph
      001114 15 81            [12]  609 	dec	sp
      001116 15 81            [12]  610 	dec	sp
      001118 D0 04            [24]  611 	pop	ar4
      00111A D0 05            [24]  612 	pop	ar5
      00111C D0 06            [24]  613 	pop	ar6
      00111E EA               [12]  614 	mov	a,r2
      00111F 24 49            [12]  615 	add	a,#_itoa
      001121 F5 82            [12]  616 	mov	dpl,a
      001123 EB               [12]  617 	mov	a,r3
      001124 34 36            [12]  618 	addc	a,#(_itoa >> 8)
      001126 F5 83            [12]  619 	mov	dph,a
      001128 E4               [12]  620 	clr	a
      001129 93               [24]  621 	movc	a,@a+dptr
      00112A FB               [12]  622 	mov	r3,a
      00112B 8D 82            [24]  623 	mov	dpl,r5
      00112D 8C 83            [24]  624 	mov	dph,r4
      00112F F0               [24]  625 	movx	@dptr,a
                                    626 ;	../../../usb/descriptor.c:62: descBuffer[i++] = 0x00;
      001130 EE               [12]  627 	mov	a,r6
      001131 04               [12]  628 	inc	a
      001132 FF               [12]  629 	mov	r7,a
      001133 EE               [12]  630 	mov	a,r6
      001134 24 80            [12]  631 	add	a,#_descBuffer
      001136 F5 82            [12]  632 	mov	dpl,a
      001138 E4               [12]  633 	clr	a
      001139 34 02            [12]  634 	addc	a,#(_descBuffer >> 8)
      00113B F5 83            [12]  635 	mov	dph,a
      00113D E4               [12]  636 	clr	a
      00113E F0               [24]  637 	movx	@dptr,a
                                    638 ;	../../../usb/descriptor.c:57: for (uint16_t addr = 0x3FFC; addr <= 0x3FFF; addr++) {
      00113F A8 1F            [24]  639 	mov	r0,_bp
      001141 08               [12]  640 	inc	r0
      001142 06               [12]  641 	inc	@r0
      001143 B6 00 02         [24]  642 	cjne	@r0,#0x00,00119$
      001146 08               [12]  643 	inc	r0
      001147 06               [12]  644 	inc	@r0
      001148                        645 00119$:
      001148 02 10 5A         [24]  646 	ljmp	00103$
      00114B                        647 00101$:
                                    648 ;	../../../usb/descriptor.c:65: descBuffer[0] = i;
      00114B 90 02 80         [24]  649 	mov	dptr,#_descBuffer
      00114E EF               [12]  650 	mov	a,r7
      00114F F0               [24]  651 	movx	@dptr,a
                                    652 ;	../../../usb/descriptor.c:66: return i;
      001150 8F 82            [24]  653 	mov	dpl,r7
                                    654 ;	../../../usb/descriptor.c:67: }
      001152 85 1F 81         [24]  655 	mov	sp,_bp
      001155 D0 1F            [24]  656 	pop	_bp
      001157 22               [24]  657 	ret
                                    658 ;------------------------------------------------------------
                                    659 ;Allocation info for local variables in function 'getStringDescriptor'
                                    660 ;------------------------------------------------------------
                                    661 ;strPtor                   Allocated to stack - _bp -5
                                    662 ;order                     Allocated to registers 
                                    663 ;header                    Allocated to registers r6 
                                    664 ;strlen                    Allocated to registers r5 
                                    665 ;------------------------------------------------------------
                                    666 ;	../../../usb/descriptor.c:76: static uint8_t getStringDescriptor(uint8_t order, uint8_t** strPtor)
                                    667 ;	-----------------------------------------
                                    668 ;	 function getStringDescriptor
                                    669 ;	-----------------------------------------
      001158                        670 _getStringDescriptor:
      001158 C0 1F            [24]  671 	push	_bp
      00115A 85 81 1F         [24]  672 	mov	_bp,sp
      00115D AF 82            [24]  673 	mov	r7,dpl
                                    674 ;	../../../usb/descriptor.c:78: uint8_t header = 0, strlen = 0;
      00115F 7E 00            [12]  675 	mov	r6,#0x00
      001161 7D 00            [12]  676 	mov	r5,#0x00
                                    677 ;	../../../usb/descriptor.c:79: switch (order) {
      001163 EF               [12]  678 	mov	a,r7
      001164 24 FC            [12]  679 	add	a,#0xff - 0x03
      001166 50 03            [24]  680 	jnc	00148$
      001168 02 12 3D         [24]  681 	ljmp	00105$
      00116B                        682 00148$:
      00116B EF               [12]  683 	mov	a,r7
      00116C 2F               [12]  684 	add	a,r7
      00116D 2F               [12]  685 	add	a,r7
      00116E 90 11 72         [24]  686 	mov	dptr,#00149$
      001171 73               [24]  687 	jmp	@a+dptr
      001172                        688 00149$:
      001172 02 11 7E         [24]  689 	ljmp	00101$
      001175 02 11 AB         [24]  690 	ljmp	00102$
      001178 02 11 DE         [24]  691 	ljmp	00103$
      00117B 02 12 11         [24]  692 	ljmp	00104$
                                    693 ;	../../../usb/descriptor.c:80: case STRING_DESCRIPTOR_LANG:
      00117E                        694 00101$:
                                    695 ;	../../../usb/descriptor.c:81: *strPtor = (uint8_t*)&LangStringDesc[0];
      00117E E5 1F            [12]  696 	mov	a,_bp
      001180 24 FB            [12]  697 	add	a,#0xfb
      001182 F8               [12]  698 	mov	r0,a
      001183 86 02            [24]  699 	mov	ar2,@r0
      001185 08               [12]  700 	inc	r0
      001186 86 03            [24]  701 	mov	ar3,@r0
      001188 08               [12]  702 	inc	r0
      001189 86 04            [24]  703 	mov	ar4,@r0
      00118B 8A 82            [24]  704 	mov	dpl,r2
      00118D 8B 83            [24]  705 	mov	dph,r3
      00118F 8C F0            [24]  706 	mov	b,r4
      001191 74 8A            [12]  707 	mov	a,#_LangStringDesc
      001193 12 30 FC         [24]  708 	lcall	__gptrput
      001196 A3               [24]  709 	inc	dptr
      001197 74 34            [12]  710 	mov	a,#(_LangStringDesc >> 8)
      001199 12 30 FC         [24]  711 	lcall	__gptrput
      00119C A3               [24]  712 	inc	dptr
      00119D 74 80            [12]  713 	mov	a,#0x80
      00119F 12 30 FC         [24]  714 	lcall	__gptrput
                                    715 ;	../../../usb/descriptor.c:82: strlen = LangStringDesc[0];
      0011A2 90 34 8A         [24]  716 	mov	dptr,#_LangStringDesc
      0011A5 E4               [12]  717 	clr	a
      0011A6 93               [24]  718 	movc	a,@a+dptr
      0011A7 FD               [12]  719 	mov	r5,a
                                    720 ;	../../../usb/descriptor.c:83: break;
      0011A8 02 12 98         [24]  721 	ljmp	00115$
                                    722 ;	../../../usb/descriptor.c:84: case STRING_DESCRIPTOR_MANUFACTURER:
      0011AB                        723 00102$:
                                    724 ;	../../../usb/descriptor.c:85: strlen = fillDescBuffer(MANUFACTURER);
      0011AB 90 36 59         [24]  725 	mov	dptr,#___str_0
      0011AE 75 F0 80         [24]  726 	mov	b,#0x80
      0011B1 12 0E 61         [24]  727 	lcall	_fillDescBuffer
      0011B4 AC 82            [24]  728 	mov	r4,dpl
      0011B6 8C 05            [24]  729 	mov	ar5,r4
                                    730 ;	../../../usb/descriptor.c:86: *strPtor = descBuffer;
      0011B8 E5 1F            [12]  731 	mov	a,_bp
      0011BA 24 FB            [12]  732 	add	a,#0xfb
      0011BC F8               [12]  733 	mov	r0,a
      0011BD 86 02            [24]  734 	mov	ar2,@r0
      0011BF 08               [12]  735 	inc	r0
      0011C0 86 03            [24]  736 	mov	ar3,@r0
      0011C2 08               [12]  737 	inc	r0
      0011C3 86 04            [24]  738 	mov	ar4,@r0
      0011C5 8A 82            [24]  739 	mov	dpl,r2
      0011C7 8B 83            [24]  740 	mov	dph,r3
      0011C9 8C F0            [24]  741 	mov	b,r4
      0011CB 74 80            [12]  742 	mov	a,#_descBuffer
      0011CD 12 30 FC         [24]  743 	lcall	__gptrput
      0011D0 A3               [24]  744 	inc	dptr
      0011D1 74 02            [12]  745 	mov	a,#(_descBuffer >> 8)
      0011D3 12 30 FC         [24]  746 	lcall	__gptrput
      0011D6 A3               [24]  747 	inc	dptr
      0011D7 E4               [12]  748 	clr	a
      0011D8 12 30 FC         [24]  749 	lcall	__gptrput
                                    750 ;	../../../usb/descriptor.c:87: break;
      0011DB 02 12 98         [24]  751 	ljmp	00115$
                                    752 ;	../../../usb/descriptor.c:88: case STRING_DESCRIPTOR_DEVICE:
      0011DE                        753 00103$:
                                    754 ;	../../../usb/descriptor.c:89: strlen = fillDescBuffer(PRODUCT);
      0011DE 90 36 5D         [24]  755 	mov	dptr,#___str_1
      0011E1 75 F0 80         [24]  756 	mov	b,#0x80
      0011E4 12 0E 61         [24]  757 	lcall	_fillDescBuffer
      0011E7 AC 82            [24]  758 	mov	r4,dpl
      0011E9 8C 05            [24]  759 	mov	ar5,r4
                                    760 ;	../../../usb/descriptor.c:90: *strPtor = descBuffer;
      0011EB E5 1F            [12]  761 	mov	a,_bp
      0011ED 24 FB            [12]  762 	add	a,#0xfb
      0011EF F8               [12]  763 	mov	r0,a
      0011F0 86 02            [24]  764 	mov	ar2,@r0
      0011F2 08               [12]  765 	inc	r0
      0011F3 86 03            [24]  766 	mov	ar3,@r0
      0011F5 08               [12]  767 	inc	r0
      0011F6 86 04            [24]  768 	mov	ar4,@r0
      0011F8 8A 82            [24]  769 	mov	dpl,r2
      0011FA 8B 83            [24]  770 	mov	dph,r3
      0011FC 8C F0            [24]  771 	mov	b,r4
      0011FE 74 80            [12]  772 	mov	a,#_descBuffer
      001200 12 30 FC         [24]  773 	lcall	__gptrput
      001203 A3               [24]  774 	inc	dptr
      001204 74 02            [12]  775 	mov	a,#(_descBuffer >> 8)
      001206 12 30 FC         [24]  776 	lcall	__gptrput
      001209 A3               [24]  777 	inc	dptr
      00120A E4               [12]  778 	clr	a
      00120B 12 30 FC         [24]  779 	lcall	__gptrput
                                    780 ;	../../../usb/descriptor.c:91: break;
      00120E 02 12 98         [24]  781 	ljmp	00115$
                                    782 ;	../../../usb/descriptor.c:92: case STRING_DESCRIPTOR_SERIAL:
      001211                        783 00104$:
                                    784 ;	../../../usb/descriptor.c:93: strlen = fillSerial();
      001211 12 10 40         [24]  785 	lcall	_fillSerial
      001214 AC 82            [24]  786 	mov	r4,dpl
      001216 8C 05            [24]  787 	mov	ar5,r4
                                    788 ;	../../../usb/descriptor.c:94: *strPtor = descBuffer;
      001218 E5 1F            [12]  789 	mov	a,_bp
      00121A 24 FB            [12]  790 	add	a,#0xfb
      00121C F8               [12]  791 	mov	r0,a
      00121D 86 02            [24]  792 	mov	ar2,@r0
      00121F 08               [12]  793 	inc	r0
      001220 86 03            [24]  794 	mov	ar3,@r0
      001222 08               [12]  795 	inc	r0
      001223 86 04            [24]  796 	mov	ar4,@r0
      001225 8A 82            [24]  797 	mov	dpl,r2
      001227 8B 83            [24]  798 	mov	dph,r3
      001229 8C F0            [24]  799 	mov	b,r4
      00122B 74 80            [12]  800 	mov	a,#_descBuffer
      00122D 12 30 FC         [24]  801 	lcall	__gptrput
      001230 A3               [24]  802 	inc	dptr
      001231 74 02            [12]  803 	mov	a,#(_descBuffer >> 8)
      001233 12 30 FC         [24]  804 	lcall	__gptrput
      001236 A3               [24]  805 	inc	dptr
      001237 E4               [12]  806 	clr	a
      001238 12 30 FC         [24]  807 	lcall	__gptrput
                                    808 ;	../../../usb/descriptor.c:95: break;
                                    809 ;	../../../usb/descriptor.c:96: default:
      00123B 80 5B            [24]  810 	sjmp	00115$
      00123D                        811 00105$:
                                    812 ;	../../../usb/descriptor.c:97: if (order >= STRING_DESCRIPTOR_INTERFACE_0 && order < STRING_DESCRIPTOR_INTERFACE_END) {
      00123D BF 04 00         [24]  813 	cjne	r7,#0x04,00150$
      001240                        814 00150$:
      001240 40 54            [24]  815 	jc	00112$
      001242 BF 08 00         [24]  816 	cjne	r7,#0x08,00152$
      001245                        817 00152$:
      001245 50 4F            [24]  818 	jnc	00112$
                                    819 ;	../../../usb/descriptor.c:98: order -= STRING_DESCRIPTOR_INTERFACE_0;
      001247 1F               [12]  820 	dec	r7
      001248 1F               [12]  821 	dec	r7
      001249 1F               [12]  822 	dec	r7
      00124A 1F               [12]  823 	dec	r7
                                    824 ;	../../../usb/descriptor.c:99: do {
      00124B                        825 00108$:
                                    826 ;	../../../usb/descriptor.c:100: header += strlen;
      00124B ED               [12]  827 	mov	a,r5
      00124C 2E               [12]  828 	add	a,r6
      00124D FE               [12]  829 	mov	r6,a
                                    830 ;	../../../usb/descriptor.c:101: if (header >= sizeof(InterfaceStringDesc)) // 超过长度就直接返回
      00124E BE 7A 00         [24]  831 	cjne	r6,#0x7a,00154$
      001251                        832 00154$:
      001251 40 05            [24]  833 	jc	00107$
                                    834 ;	../../../usb/descriptor.c:102: return 0xFF;
      001253 75 82 FF         [24]  835 	mov	dpl,#0xff
      001256 80 42            [24]  836 	sjmp	00116$
      001258                        837 00107$:
                                    838 ;	../../../usb/descriptor.c:104: strlen = InterfaceStringDesc[header];
      001258 EE               [12]  839 	mov	a,r6
      001259 24 8E            [12]  840 	add	a,#_InterfaceStringDesc
      00125B FB               [12]  841 	mov	r3,a
      00125C E4               [12]  842 	clr	a
      00125D 34 34            [12]  843 	addc	a,#(_InterfaceStringDesc >> 8)
      00125F FC               [12]  844 	mov	r4,a
      001260 8B 82            [24]  845 	mov	dpl,r3
      001262 8C 83            [24]  846 	mov	dph,r4
      001264 E4               [12]  847 	clr	a
      001265 93               [24]  848 	movc	a,@a+dptr
      001266 FD               [12]  849 	mov	r5,a
                                    850 ;	../../../usb/descriptor.c:105: } while (order--);
      001267 8F 02            [24]  851 	mov	ar2,r7
      001269 1F               [12]  852 	dec	r7
      00126A EA               [12]  853 	mov	a,r2
      00126B 70 DE            [24]  854 	jnz	00108$
                                    855 ;	../../../usb/descriptor.c:106: *strPtor = (uint8_t*)&InterfaceStringDesc[header];
      00126D C0 05            [24]  856 	push	ar5
      00126F E5 1F            [12]  857 	mov	a,_bp
      001271 24 FB            [12]  858 	add	a,#0xfb
      001273 F8               [12]  859 	mov	r0,a
      001274 86 02            [24]  860 	mov	ar2,@r0
      001276 08               [12]  861 	inc	r0
      001277 86 06            [24]  862 	mov	ar6,@r0
      001279 08               [12]  863 	inc	r0
      00127A 86 07            [24]  864 	mov	ar7,@r0
      00127C 7D 80            [12]  865 	mov	r5,#0x80
      00127E 8A 82            [24]  866 	mov	dpl,r2
      001280 8E 83            [24]  867 	mov	dph,r6
      001282 8F F0            [24]  868 	mov	b,r7
      001284 EB               [12]  869 	mov	a,r3
      001285 12 30 FC         [24]  870 	lcall	__gptrput
      001288 A3               [24]  871 	inc	dptr
      001289 EC               [12]  872 	mov	a,r4
      00128A 12 30 FC         [24]  873 	lcall	__gptrput
      00128D A3               [24]  874 	inc	dptr
      00128E ED               [12]  875 	mov	a,r5
      00128F 12 30 FC         [24]  876 	lcall	__gptrput
      001292 D0 05            [24]  877 	pop	ar5
      001294 80 02            [24]  878 	sjmp	00115$
      001296                        879 00112$:
                                    880 ;	../../../usb/descriptor.c:108: strlen = 0xFF;
      001296 7D FF            [12]  881 	mov	r5,#0xff
                                    882 ;	../../../usb/descriptor.c:111: }
      001298                        883 00115$:
                                    884 ;	../../../usb/descriptor.c:113: return strlen;
      001298 8D 82            [24]  885 	mov	dpl,r5
      00129A                        886 00116$:
                                    887 ;	../../../usb/descriptor.c:114: }
      00129A D0 1F            [24]  888 	pop	_bp
      00129C 22               [24]  889 	ret
                                    890 ;------------------------------------------------------------
                                    891 ;Allocation info for local variables in function 'GetUsbDescriptor'
                                    892 ;------------------------------------------------------------
                                    893 ;type2                     Allocated to stack - _bp -3
                                    894 ;index                     Allocated to stack - _bp -4
                                    895 ;strPtr                    Allocated to stack - _bp -7
                                    896 ;type1                     Allocated to registers r7 
                                    897 ;sloc0                     Allocated to stack - _bp +1
                                    898 ;------------------------------------------------------------
                                    899 ;	../../../usb/descriptor.c:125: uint8_t GetUsbDescriptor(uint8_t type1, uint8_t type2, uint8_t index, uint8_t** strPtr)
                                    900 ;	-----------------------------------------
                                    901 ;	 function GetUsbDescriptor
                                    902 ;	-----------------------------------------
      00129D                        903 _GetUsbDescriptor:
      00129D C0 1F            [24]  904 	push	_bp
      00129F 85 81 1F         [24]  905 	mov	_bp,sp
      0012A2 05 81            [12]  906 	inc	sp
      0012A4 05 81            [12]  907 	inc	sp
      0012A6 05 81            [12]  908 	inc	sp
      0012A8 AF 82            [24]  909 	mov	r7,dpl
                                    910 ;	../../../usb/descriptor.c:128: switch (type1) {
      0012AA BF 01 02         [24]  911 	cjne	r7,#0x01,00132$
      0012AD 80 12            [24]  912 	sjmp	00101$
      0012AF                        913 00132$:
      0012AF BF 02 02         [24]  914 	cjne	r7,#0x02,00133$
      0012B2 80 37            [24]  915 	sjmp	00102$
      0012B4                        916 00133$:
      0012B4 BF 03 02         [24]  917 	cjne	r7,#0x03,00134$
      0012B7 80 5C            [24]  918 	sjmp	00103$
      0012B9                        919 00134$:
      0012B9 BF 22 02         [24]  920 	cjne	r7,#0x22,00135$
      0012BC 80 79            [24]  921 	sjmp	00104$
      0012BE                        922 00135$:
      0012BE 02 13 A8         [24]  923 	ljmp	00108$
                                    924 ;	../../../usb/descriptor.c:130: case 1:
      0012C1                        925 00101$:
                                    926 ;	../../../usb/descriptor.c:131: *strPtr = (uint8_t*)DeviceDescriptor;
      0012C1 E5 1F            [12]  927 	mov	a,_bp
      0012C3 24 F9            [12]  928 	add	a,#0xf9
      0012C5 F8               [12]  929 	mov	r0,a
      0012C6 86 05            [24]  930 	mov	ar5,@r0
      0012C8 08               [12]  931 	inc	r0
      0012C9 86 06            [24]  932 	mov	ar6,@r0
      0012CB 08               [12]  933 	inc	r0
      0012CC 86 07            [24]  934 	mov	ar7,@r0
      0012CE 8D 82            [24]  935 	mov	dpl,r5
      0012D0 8E 83            [24]  936 	mov	dph,r6
      0012D2 8F F0            [24]  937 	mov	b,r7
      0012D4 74 F6            [12]  938 	mov	a,#_DeviceDescriptor
      0012D6 12 30 FC         [24]  939 	lcall	__gptrput
      0012D9 A3               [24]  940 	inc	dptr
      0012DA 74 33            [12]  941 	mov	a,#(_DeviceDescriptor >> 8)
      0012DC 12 30 FC         [24]  942 	lcall	__gptrput
      0012DF A3               [24]  943 	inc	dptr
      0012E0 74 80            [12]  944 	mov	a,#0x80
      0012E2 12 30 FC         [24]  945 	lcall	__gptrput
                                    946 ;	../../../usb/descriptor.c:132: return sizeof(DeviceDescriptor);
      0012E5 75 82 12         [24]  947 	mov	dpl,#0x12
      0012E8 02 13 AB         [24]  948 	ljmp	00110$
                                    949 ;	../../../usb/descriptor.c:134: case 2:
      0012EB                        950 00102$:
                                    951 ;	../../../usb/descriptor.c:135: *strPtr = (uint8_t*)ConfigDescriptor;
      0012EB E5 1F            [12]  952 	mov	a,_bp
      0012ED 24 F9            [12]  953 	add	a,#0xf9
      0012EF F8               [12]  954 	mov	r0,a
      0012F0 86 05            [24]  955 	mov	ar5,@r0
      0012F2 08               [12]  956 	inc	r0
      0012F3 86 06            [24]  957 	mov	ar6,@r0
      0012F5 08               [12]  958 	inc	r0
      0012F6 86 07            [24]  959 	mov	ar7,@r0
      0012F8 8D 82            [24]  960 	mov	dpl,r5
      0012FA 8E 83            [24]  961 	mov	dph,r6
      0012FC 8F F0            [24]  962 	mov	b,r7
      0012FE 74 08            [12]  963 	mov	a,#_ConfigDescriptor
      001300 12 30 FC         [24]  964 	lcall	__gptrput
      001303 A3               [24]  965 	inc	dptr
      001304 74 34            [12]  966 	mov	a,#(_ConfigDescriptor >> 8)
      001306 12 30 FC         [24]  967 	lcall	__gptrput
      001309 A3               [24]  968 	inc	dptr
      00130A 74 80            [12]  969 	mov	a,#0x80
      00130C 12 30 FC         [24]  970 	lcall	__gptrput
                                    971 ;	../../../usb/descriptor.c:136: return sizeof(ConfigDescriptor);
      00130F 75 82 82         [24]  972 	mov	dpl,#0x82
      001312 02 13 AB         [24]  973 	ljmp	00110$
                                    974 ;	../../../usb/descriptor.c:138: case 3:
      001315                        975 00103$:
                                    976 ;	../../../usb/descriptor.c:139: return getStringDescriptor(type2, strPtr);
      001315 E5 1F            [12]  977 	mov	a,_bp
      001317 24 F9            [12]  978 	add	a,#0xf9
      001319 F8               [12]  979 	mov	r0,a
      00131A E6               [12]  980 	mov	a,@r0
      00131B C0 E0            [24]  981 	push	acc
      00131D 08               [12]  982 	inc	r0
      00131E E6               [12]  983 	mov	a,@r0
      00131F C0 E0            [24]  984 	push	acc
      001321 08               [12]  985 	inc	r0
      001322 E6               [12]  986 	mov	a,@r0
      001323 C0 E0            [24]  987 	push	acc
      001325 E5 1F            [12]  988 	mov	a,_bp
      001327 24 FD            [12]  989 	add	a,#0xfd
      001329 F8               [12]  990 	mov	r0,a
      00132A 86 82            [24]  991 	mov	dpl,@r0
      00132C 12 11 58         [24]  992 	lcall	_getStringDescriptor
      00132F 15 81            [12]  993 	dec	sp
      001331 15 81            [12]  994 	dec	sp
      001333 15 81            [12]  995 	dec	sp
                                    996 ;	../../../usb/descriptor.c:141: case 0x22:
      001335 80 74            [24]  997 	sjmp	00110$
      001337                        998 00104$:
                                    999 ;	../../../usb/descriptor.c:142: if (index < sizeof(ReportDescriptor)) {
      001337 E5 1F            [12] 1000 	mov	a,_bp
      001339 24 FC            [12] 1001 	add	a,#0xfc
      00133B F8               [12] 1002 	mov	r0,a
      00133C B6 10 00         [24] 1003 	cjne	@r0,#0x10,00136$
      00133F                       1004 00136$:
      00133F 50 62            [24] 1005 	jnc	00106$
                                   1006 ;	../../../usb/descriptor.c:143: *strPtr = ReportDescriptor[index].pointer;
      001341 E5 1F            [12] 1007 	mov	a,_bp
      001343 24 F9            [12] 1008 	add	a,#0xf9
      001345 F8               [12] 1009 	mov	r0,a
      001346 A9 1F            [24] 1010 	mov	r1,_bp
      001348 09               [12] 1011 	inc	r1
      001349 E6               [12] 1012 	mov	a,@r0
      00134A F7               [12] 1013 	mov	@r1,a
      00134B 08               [12] 1014 	inc	r0
      00134C 09               [12] 1015 	inc	r1
      00134D E6               [12] 1016 	mov	a,@r0
      00134E F7               [12] 1017 	mov	@r1,a
      00134F 08               [12] 1018 	inc	r0
      001350 09               [12] 1019 	inc	r1
      001351 E6               [12] 1020 	mov	a,@r0
      001352 F7               [12] 1021 	mov	@r1,a
      001353 E5 1F            [12] 1022 	mov	a,_bp
      001355 24 FC            [12] 1023 	add	a,#0xfc
      001357 F8               [12] 1024 	mov	r0,a
      001358 E6               [12] 1025 	mov	a,@r0
      001359 75 F0 04         [24] 1026 	mov	b,#0x04
      00135C A4               [48] 1027 	mul	ab
      00135D FB               [12] 1028 	mov	r3,a
      00135E AC F0            [24] 1029 	mov	r4,b
      001360 24 08            [12] 1030 	add	a,#_ReportDescriptor
      001362 F5 82            [12] 1031 	mov	dpl,a
      001364 EC               [12] 1032 	mov	a,r4
      001365 34 35            [12] 1033 	addc	a,#(_ReportDescriptor >> 8)
      001367 F5 83            [12] 1034 	mov	dph,a
      001369 E4               [12] 1035 	clr	a
      00136A 93               [24] 1036 	movc	a,@a+dptr
      00136B FA               [12] 1037 	mov	r2,a
      00136C A3               [24] 1038 	inc	dptr
      00136D E4               [12] 1039 	clr	a
      00136E 93               [24] 1040 	movc	a,@a+dptr
      00136F FE               [12] 1041 	mov	r6,a
      001370 A3               [24] 1042 	inc	dptr
      001371 E4               [12] 1043 	clr	a
      001372 93               [24] 1044 	movc	a,@a+dptr
      001373 FF               [12] 1045 	mov	r7,a
      001374 A8 1F            [24] 1046 	mov	r0,_bp
      001376 08               [12] 1047 	inc	r0
      001377 86 82            [24] 1048 	mov	dpl,@r0
      001379 08               [12] 1049 	inc	r0
      00137A 86 83            [24] 1050 	mov	dph,@r0
      00137C 08               [12] 1051 	inc	r0
      00137D 86 F0            [24] 1052 	mov	b,@r0
      00137F EA               [12] 1053 	mov	a,r2
      001380 12 30 FC         [24] 1054 	lcall	__gptrput
      001383 A3               [24] 1055 	inc	dptr
      001384 EE               [12] 1056 	mov	a,r6
      001385 12 30 FC         [24] 1057 	lcall	__gptrput
      001388 A3               [24] 1058 	inc	dptr
      001389 EF               [12] 1059 	mov	a,r7
      00138A 12 30 FC         [24] 1060 	lcall	__gptrput
                                   1061 ;	../../../usb/descriptor.c:144: return ReportDescriptor[index].length;
      00138D EB               [12] 1062 	mov	a,r3
      00138E 24 08            [12] 1063 	add	a,#_ReportDescriptor
      001390 FB               [12] 1064 	mov	r3,a
      001391 EC               [12] 1065 	mov	a,r4
      001392 34 35            [12] 1066 	addc	a,#(_ReportDescriptor >> 8)
      001394 FC               [12] 1067 	mov	r4,a
      001395 8B 82            [24] 1068 	mov	dpl,r3
      001397 8C 83            [24] 1069 	mov	dph,r4
      001399 A3               [24] 1070 	inc	dptr
      00139A A3               [24] 1071 	inc	dptr
      00139B A3               [24] 1072 	inc	dptr
      00139C E4               [12] 1073 	clr	a
      00139D 93               [24] 1074 	movc	a,@a+dptr
      00139E FF               [12] 1075 	mov	r7,a
      00139F F5 82            [12] 1076 	mov	dpl,a
      0013A1 80 08            [24] 1077 	sjmp	00110$
      0013A3                       1078 00106$:
                                   1079 ;	../../../usb/descriptor.c:147: return 0xff;
      0013A3 75 82 FF         [24] 1080 	mov	dpl,#0xff
                                   1081 ;	../../../usb/descriptor.c:150: default:
      0013A6 80 03            [24] 1082 	sjmp	00110$
      0013A8                       1083 00108$:
                                   1084 ;	../../../usb/descriptor.c:151: return 0xff; //不支持的命令或者出错
      0013A8 75 82 FF         [24] 1085 	mov	dpl,#0xff
                                   1086 ;	../../../usb/descriptor.c:152: }
      0013AB                       1087 00110$:
                                   1088 ;	../../../usb/descriptor.c:153: }
      0013AB 85 1F 81         [24] 1089 	mov	sp,_bp
      0013AE D0 1F            [24] 1090 	pop	_bp
      0013B0 22               [24] 1091 	ret
                                   1092 	.area CSEG    (CODE)
                                   1093 	.area CONST   (CODE)
      0033DD                       1094 _row_pin_array:
      0033DD 19                    1095 	.db #0x19	; 25
      0033DE 1A                    1096 	.db #0x1a	; 26
      0033DF 1B                    1097 	.db #0x1b	; 27
      0033E0 1C                    1098 	.db #0x1c	; 28
      0033E1 12                    1099 	.db #0x12	; 18
      0033E2 13                    1100 	.db #0x13	; 19
      0033E3                       1101 _column_pin_array:
      0033E3 17                    1102 	.db #0x17	; 23
      0033E4 16                    1103 	.db #0x16	; 22
      0033E5 15                    1104 	.db #0x15	; 21
      0033E6 14                    1105 	.db #0x14	; 20
      0033E7 1D                    1106 	.db #0x1d	; 29
      0033E8 07                    1107 	.db #0x07	; 7
      0033E9 06                    1108 	.db #0x06	; 6
      0033EA 08                    1109 	.db #0x08	; 8
      0033EB 09                    1110 	.db #0x09	; 9
      0033EC 0A                    1111 	.db #0x0a	; 10
      0033ED 0B                    1112 	.db #0x0b	; 11
      0033EE 05                    1113 	.db #0x05	; 5
      0033EF 0C                    1114 	.db #0x0c	; 12
      0033F0 0D                    1115 	.db #0x0d	; 13
      0033F1 0E                    1116 	.db #0x0e	; 14
      0033F2 0F                    1117 	.db #0x0f	; 15
      0033F3 04                    1118 	.db #0x04	; 4
      0033F4 10                    1119 	.db #0x10	; 16
      0033F5 11                    1120 	.db #0x11	; 17
      0033F6                       1121 _DeviceDescriptor:
      0033F6 12                    1122 	.db #0x12	; 18
      0033F7 01                    1123 	.db #0x01	; 1
      0033F8 10                    1124 	.db #0x10	; 16
      0033F9 01                    1125 	.db #0x01	; 1
      0033FA 00                    1126 	.db #0x00	; 0
      0033FB 00                    1127 	.db #0x00	; 0
      0033FC 00                    1128 	.db #0x00	; 0
      0033FD 08                    1129 	.db #0x08	; 8
      0033FE 21                    1130 	.db #0x21	; 33
      0033FF 04                    1131 	.db #0x04	; 4
      003400 14                    1132 	.db #0x14	; 20
      003401 03                    1133 	.db #0x03	; 3
      003402 00                    1134 	.db #0x00	; 0
      003403 00                    1135 	.db #0x00	; 0
      003404 01                    1136 	.db #0x01	; 1
      003405 02                    1137 	.db #0x02	; 2
      003406 03                    1138 	.db #0x03	; 3
      003407 01                    1139 	.db #0x01	; 1
      003408                       1140 _ConfigDescriptor:
      003408 09                    1141 	.db #0x09	; 9
      003409 02                    1142 	.db #0x02	; 2
      00340A 82                    1143 	.db #0x82	; 130
      00340B 00                    1144 	.db #0x00	; 0
      00340C 04                    1145 	.db #0x04	; 4
      00340D 01                    1146 	.db #0x01	; 1
      00340E 00                    1147 	.db #0x00	; 0
      00340F 80                    1148 	.db #0x80	; 128
      003410 FA                    1149 	.db #0xfa	; 250
      003411 09                    1150 	.db #0x09	; 9
      003412 04                    1151 	.db #0x04	; 4
      003413 00                    1152 	.db #0x00	; 0
      003414 00                    1153 	.db #0x00	; 0
      003415 02                    1154 	.db #0x02	; 2
      003416 03                    1155 	.db #0x03	; 3
      003417 01                    1156 	.db #0x01	; 1
      003418 01                    1157 	.db #0x01	; 1
      003419 04                    1158 	.db #0x04	; 4
      00341A 09                    1159 	.db #0x09	; 9
      00341B 21                    1160 	.db #0x21	; 33
      00341C 01                    1161 	.db #0x01	; 1
      00341D 01                    1162 	.db #0x01	; 1
      00341E 00                    1163 	.db #0x00	; 0
      00341F 01                    1164 	.db #0x01	; 1
      003420 22                    1165 	.db #0x22	; 34
      003421 3F                    1166 	.db #0x3f	; 63
      003422 00                    1167 	.db #0x00	; 0
      003423 07                    1168 	.db #0x07	; 7
      003424 05                    1169 	.db #0x05	; 5
      003425 81                    1170 	.db #0x81	; 129
      003426 03                    1171 	.db #0x03	; 3
      003427 40                    1172 	.db #0x40	; 64
      003428 00                    1173 	.db #0x00	; 0
      003429 01                    1174 	.db #0x01	; 1
      00342A 07                    1175 	.db #0x07	; 7
      00342B 05                    1176 	.db #0x05	; 5
      00342C 01                    1177 	.db #0x01	; 1
      00342D 03                    1178 	.db #0x03	; 3
      00342E 40                    1179 	.db #0x40	; 64
      00342F 00                    1180 	.db #0x00	; 0
      003430 01                    1181 	.db #0x01	; 1
      003431 09                    1182 	.db #0x09	; 9
      003432 04                    1183 	.db #0x04	; 4
      003433 01                    1184 	.db #0x01	; 1
      003434 00                    1185 	.db #0x00	; 0
      003435 01                    1186 	.db #0x01	; 1
      003436 03                    1187 	.db #0x03	; 3
      003437 00                    1188 	.db #0x00	; 0
      003438 00                    1189 	.db #0x00	; 0
      003439 05                    1190 	.db #0x05	; 5
      00343A 09                    1191 	.db #0x09	; 9
      00343B 21                    1192 	.db #0x21	; 33
      00343C 01                    1193 	.db #0x01	; 1
      00343D 01                    1194 	.db #0x01	; 1
      00343E 00                    1195 	.db #0x00	; 0
      00343F 01                    1196 	.db #0x01	; 1
      003440 22                    1197 	.db #0x22	; 34
      003441 AD                    1198 	.db #0xad	; 173
      003442 00                    1199 	.db #0x00	; 0
      003443 07                    1200 	.db #0x07	; 7
      003444 05                    1201 	.db #0x05	; 5
      003445 82                    1202 	.db #0x82	; 130
      003446 03                    1203 	.db #0x03	; 3
      003447 40                    1204 	.db #0x40	; 64
      003448 00                    1205 	.db #0x00	; 0
      003449 01                    1206 	.db #0x01	; 1
      00344A 09                    1207 	.db #0x09	; 9
      00344B 04                    1208 	.db #0x04	; 4
      00344C 02                    1209 	.db #0x02	; 2
      00344D 00                    1210 	.db #0x00	; 0
      00344E 02                    1211 	.db #0x02	; 2
      00344F 03                    1212 	.db #0x03	; 3
      003450 00                    1213 	.db #0x00	; 0
      003451 00                    1214 	.db #0x00	; 0
      003452 06                    1215 	.db #0x06	; 6
      003453 09                    1216 	.db #0x09	; 9
      003454 21                    1217 	.db #0x21	; 33
      003455 01                    1218 	.db #0x01	; 1
      003456 01                    1219 	.db #0x01	; 1
      003457 00                    1220 	.db #0x00	; 0
      003458 01                    1221 	.db #0x01	; 1
      003459 22                    1222 	.db #0x22	; 34
      00345A 24                    1223 	.db #0x24	; 36
      00345B 00                    1224 	.db #0x00	; 0
      00345C 07                    1225 	.db #0x07	; 7
      00345D 05                    1226 	.db #0x05	; 5
      00345E 83                    1227 	.db #0x83	; 131
      00345F 03                    1228 	.db #0x03	; 3
      003460 40                    1229 	.db #0x40	; 64
      003461 00                    1230 	.db #0x00	; 0
      003462 01                    1231 	.db #0x01	; 1
      003463 07                    1232 	.db #0x07	; 7
      003464 05                    1233 	.db #0x05	; 5
      003465 03                    1234 	.db #0x03	; 3
      003466 03                    1235 	.db #0x03	; 3
      003467 40                    1236 	.db #0x40	; 64
      003468 00                    1237 	.db #0x00	; 0
      003469 01                    1238 	.db #0x01	; 1
      00346A 09                    1239 	.db #0x09	; 9
      00346B 04                    1240 	.db #0x04	; 4
      00346C 03                    1241 	.db #0x03	; 3
      00346D 00                    1242 	.db #0x00	; 0
      00346E 02                    1243 	.db #0x02	; 2
      00346F 03                    1244 	.db #0x03	; 3
      003470 00                    1245 	.db #0x00	; 0
      003471 00                    1246 	.db #0x00	; 0
      003472 07                    1247 	.db #0x07	; 7
      003473 09                    1248 	.db #0x09	; 9
      003474 21                    1249 	.db #0x21	; 33
      003475 01                    1250 	.db #0x01	; 1
      003476 01                    1251 	.db #0x01	; 1
      003477 00                    1252 	.db #0x00	; 0
      003478 01                    1253 	.db #0x01	; 1
      003479 22                    1254 	.db #0x22	; 34
      00347A 21                    1255 	.db #0x21	; 33
      00347B 00                    1256 	.db #0x00	; 0
      00347C 07                    1257 	.db #0x07	; 7
      00347D 05                    1258 	.db #0x05	; 5
      00347E 84                    1259 	.db #0x84	; 132
      00347F 03                    1260 	.db #0x03	; 3
      003480 40                    1261 	.db #0x40	; 64
      003481 00                    1262 	.db #0x00	; 0
      003482 01                    1263 	.db #0x01	; 1
      003483 07                    1264 	.db #0x07	; 7
      003484 05                    1265 	.db #0x05	; 5
      003485 04                    1266 	.db #0x04	; 4
      003486 03                    1267 	.db #0x03	; 3
      003487 40                    1268 	.db #0x40	; 64
      003488 00                    1269 	.db #0x00	; 0
      003489 01                    1270 	.db #0x01	; 1
      00348A                       1271 _LangStringDesc:
      00348A 04                    1272 	.db #0x04	; 4
      00348B 03                    1273 	.db #0x03	; 3
      00348C 09                    1274 	.db #0x09	; 9
      00348D 04                    1275 	.db #0x04	; 4
      00348E                       1276 _InterfaceStringDesc:
      00348E 1A                    1277 	.db #0x1a	; 26
      00348F 03                    1278 	.db #0x03	; 3
      003490 48                    1279 	.db #0x48	; 72	'H'
      003491 00                    1280 	.db #0x00	; 0
      003492 49                    1281 	.db #0x49	; 73	'I'
      003493 00                    1282 	.db #0x00	; 0
      003494 44                    1283 	.db #0x44	; 68	'D'
      003495 00                    1284 	.db #0x00	; 0
      003496 20                    1285 	.db #0x20	; 32
      003497 00                    1286 	.db #0x00	; 0
      003498 4B                    1287 	.db #0x4b	; 75	'K'
      003499 00                    1288 	.db #0x00	; 0
      00349A 65                    1289 	.db #0x65	; 101	'e'
      00349B 00                    1290 	.db #0x00	; 0
      00349C 79                    1291 	.db #0x79	; 121	'y'
      00349D 00                    1292 	.db #0x00	; 0
      00349E 62                    1293 	.db #0x62	; 98	'b'
      00349F 00                    1294 	.db #0x00	; 0
      0034A0 6F                    1295 	.db #0x6f	; 111	'o'
      0034A1 00                    1296 	.db #0x00	; 0
      0034A2 61                    1297 	.db #0x61	; 97	'a'
      0034A3 00                    1298 	.db #0x00	; 0
      0034A4 72                    1299 	.db #0x72	; 114	'r'
      0034A5 00                    1300 	.db #0x00	; 0
      0034A6 64                    1301 	.db #0x64	; 100	'd'
      0034A7 00                    1302 	.db #0x00	; 0
      0034A8 24                    1303 	.db #0x24	; 36
      0034A9 03                    1304 	.db #0x03	; 3
      0034AA 45                    1305 	.db #0x45	; 69	'E'
      0034AB 00                    1306 	.db #0x00	; 0
      0034AC 78                    1307 	.db #0x78	; 120	'x'
      0034AD 00                    1308 	.db #0x00	; 0
      0034AE 74                    1309 	.db #0x74	; 116	't'
      0034AF 00                    1310 	.db #0x00	; 0
      0034B0 72                    1311 	.db #0x72	; 114	'r'
      0034B1 00                    1312 	.db #0x00	; 0
      0034B2 61                    1313 	.db #0x61	; 97	'a'
      0034B3 00                    1314 	.db #0x00	; 0
      0034B4 20                    1315 	.db #0x20	; 32
      0034B5 00                    1316 	.db #0x00	; 0
      0034B6 4B                    1317 	.db #0x4b	; 75	'K'
      0034B7 00                    1318 	.db #0x00	; 0
      0034B8 65                    1319 	.db #0x65	; 101	'e'
      0034B9 00                    1320 	.db #0x00	; 0
      0034BA 79                    1321 	.db #0x79	; 121	'y'
      0034BB 00                    1322 	.db #0x00	; 0
      0034BC 20                    1323 	.db #0x20	; 32
      0034BD 00                    1324 	.db #0x00	; 0
      0034BE 53                    1325 	.db #0x53	; 83	'S'
      0034BF 00                    1326 	.db #0x00	; 0
      0034C0 75                    1327 	.db #0x75	; 117	'u'
      0034C1 00                    1328 	.db #0x00	; 0
      0034C2 70                    1329 	.db #0x70	; 112	'p'
      0034C3 00                    1330 	.db #0x00	; 0
      0034C4 70                    1331 	.db #0x70	; 112	'p'
      0034C5 00                    1332 	.db #0x00	; 0
      0034C6 6F                    1333 	.db #0x6f	; 111	'o'
      0034C7 00                    1334 	.db #0x00	; 0
      0034C8 72                    1335 	.db #0x72	; 114	'r'
      0034C9 00                    1336 	.db #0x00	; 0
      0034CA 74                    1337 	.db #0x74	; 116	't'
      0034CB 00                    1338 	.db #0x00	; 0
      0034CC 28                    1339 	.db #0x28	; 40
      0034CD 03                    1340 	.db #0x03	; 3
      0034CE 4C                    1341 	.db #0x4c	; 76	'L'
      0034CF 00                    1342 	.db #0x00	; 0
      0034D0 6F                    1343 	.db #0x6f	; 111	'o'
      0034D1 00                    1344 	.db #0x00	; 0
      0034D2 74                    1345 	.db #0x74	; 116	't'
      0034D3 00                    1346 	.db #0x00	; 0
      0034D4 6C                    1347 	.db #0x6c	; 108	'l'
      0034D5 00                    1348 	.db #0x00	; 0
      0034D6 61                    1349 	.db #0x61	; 97	'a'
      0034D7 00                    1350 	.db #0x00	; 0
      0034D8 62                    1351 	.db #0x62	; 98	'b'
      0034D9 00                    1352 	.db #0x00	; 0
      0034DA 20                    1353 	.db #0x20	; 32
      0034DB 00                    1354 	.db #0x00	; 0
      0034DC 43                    1355 	.db #0x43	; 67	'C'
      0034DD 00                    1356 	.db #0x00	; 0
      0034DE 6F                    1357 	.db #0x6f	; 111	'o'
      0034DF 00                    1358 	.db #0x00	; 0
      0034E0 6E                    1359 	.db #0x6e	; 110	'n'
      0034E1 00                    1360 	.db #0x00	; 0
      0034E2 66                    1361 	.db #0x66	; 102	'f'
      0034E3 00                    1362 	.db #0x00	; 0
      0034E4 69                    1363 	.db #0x69	; 105	'i'
      0034E5 00                    1364 	.db #0x00	; 0
      0034E6 67                    1365 	.db #0x67	; 103	'g'
      0034E7 00                    1366 	.db #0x00	; 0
      0034E8 75                    1367 	.db #0x75	; 117	'u'
      0034E9 00                    1368 	.db #0x00	; 0
      0034EA 72                    1369 	.db #0x72	; 114	'r'
      0034EB 00                    1370 	.db #0x00	; 0
      0034EC 61                    1371 	.db #0x61	; 97	'a'
      0034ED 00                    1372 	.db #0x00	; 0
      0034EE 74                    1373 	.db #0x74	; 116	't'
      0034EF 00                    1374 	.db #0x00	; 0
      0034F0 6F                    1375 	.db #0x6f	; 111	'o'
      0034F1 00                    1376 	.db #0x00	; 0
      0034F2 72                    1377 	.db #0x72	; 114	'r'
      0034F3 00                    1378 	.db #0x00	; 0
      0034F4 14                    1379 	.db #0x14	; 20
      0034F5 03                    1380 	.db #0x03	; 3
      0034F6 43                    1381 	.db #0x43	; 67	'C'
      0034F7 00                    1382 	.db #0x00	; 0
      0034F8 4D                    1383 	.db #0x4d	; 77	'M'
      0034F9 00                    1384 	.db #0x00	; 0
      0034FA 53                    1385 	.db #0x53	; 83	'S'
      0034FB 00                    1386 	.db #0x00	; 0
      0034FC 49                    1387 	.db #0x49	; 73	'I'
      0034FD 00                    1388 	.db #0x00	; 0
      0034FE 53                    1389 	.db #0x53	; 83	'S'
      0034FF 00                    1390 	.db #0x00	; 0
      003500 2D                    1391 	.db #0x2d	; 45
      003501 00                    1392 	.db #0x00	; 0
      003502 44                    1393 	.db #0x44	; 68	'D'
      003503 00                    1394 	.db #0x00	; 0
      003504 41                    1395 	.db #0x41	; 65	'A'
      003505 00                    1396 	.db #0x00	; 0
      003506 50                    1397 	.db #0x50	; 80	'P'
      003507 00                    1398 	.db #0x00	; 0
      003508                       1399 _ReportDescriptor:
      003508 18 35 80              1400 	.byte (_report_desc_HID0 + 0), ((_report_desc_HID0 + 0) >> 8),#0x80
      00350B 3F                    1401 	.db #0x3f	; 63
      00350C 57 35 80              1402 	.byte (_report_desc_HID1 + 0), ((_report_desc_HID1 + 0) >> 8),#0x80
      00350F AD                    1403 	.db #0xad	; 173
      003510 04 36 80              1404 	.byte (_report_desc_HID2 + 0), ((_report_desc_HID2 + 0) >> 8),#0x80
      003513 24                    1405 	.db #0x24	; 36
      003514 28 36 80              1406 	.byte (_report_desc_HID3 + 0), ((_report_desc_HID3 + 0) >> 8),#0x80
      003517 21                    1407 	.db #0x21	; 33
      003518                       1408 _report_desc_HID0:
      003518 05                    1409 	.db #0x05	; 5
      003519 01                    1410 	.db #0x01	; 1
      00351A 09                    1411 	.db #0x09	; 9
      00351B 06                    1412 	.db #0x06	; 6
      00351C A1                    1413 	.db #0xa1	; 161
      00351D 01                    1414 	.db #0x01	; 1
      00351E 05                    1415 	.db #0x05	; 5
      00351F 07                    1416 	.db #0x07	; 7
      003520 19                    1417 	.db #0x19	; 25
      003521 E0                    1418 	.db #0xe0	; 224
      003522 29                    1419 	.db #0x29	; 41
      003523 E7                    1420 	.db #0xe7	; 231
      003524 15                    1421 	.db #0x15	; 21
      003525 00                    1422 	.db #0x00	; 0
      003526 25                    1423 	.db #0x25	; 37
      003527 01                    1424 	.db #0x01	; 1
      003528 75                    1425 	.db #0x75	; 117	'u'
      003529 01                    1426 	.db #0x01	; 1
      00352A 95                    1427 	.db #0x95	; 149
      00352B 08                    1428 	.db #0x08	; 8
      00352C 81                    1429 	.db #0x81	; 129
      00352D 02                    1430 	.db #0x02	; 2
      00352E 95                    1431 	.db #0x95	; 149
      00352F 01                    1432 	.db #0x01	; 1
      003530 75                    1433 	.db #0x75	; 117	'u'
      003531 08                    1434 	.db #0x08	; 8
      003532 81                    1435 	.db #0x81	; 129
      003533 03                    1436 	.db #0x03	; 3
      003534 95                    1437 	.db #0x95	; 149
      003535 05                    1438 	.db #0x05	; 5
      003536 75                    1439 	.db #0x75	; 117	'u'
      003537 01                    1440 	.db #0x01	; 1
      003538 05                    1441 	.db #0x05	; 5
      003539 08                    1442 	.db #0x08	; 8
      00353A 19                    1443 	.db #0x19	; 25
      00353B 01                    1444 	.db #0x01	; 1
      00353C 29                    1445 	.db #0x29	; 41
      00353D 05                    1446 	.db #0x05	; 5
      00353E 91                    1447 	.db #0x91	; 145
      00353F 02                    1448 	.db #0x02	; 2
      003540 95                    1449 	.db #0x95	; 149
      003541 01                    1450 	.db #0x01	; 1
      003542 75                    1451 	.db #0x75	; 117	'u'
      003543 03                    1452 	.db #0x03	; 3
      003544 91                    1453 	.db #0x91	; 145
      003545 03                    1454 	.db #0x03	; 3
      003546 95                    1455 	.db #0x95	; 149
      003547 06                    1456 	.db #0x06	; 6
      003548 75                    1457 	.db #0x75	; 117	'u'
      003549 08                    1458 	.db #0x08	; 8
      00354A 15                    1459 	.db #0x15	; 21
      00354B 00                    1460 	.db #0x00	; 0
      00354C 25                    1461 	.db #0x25	; 37
      00354D 66                    1462 	.db #0x66	; 102	'f'
      00354E 05                    1463 	.db #0x05	; 5
      00354F 07                    1464 	.db #0x07	; 7
      003550 19                    1465 	.db #0x19	; 25
      003551 00                    1466 	.db #0x00	; 0
      003552 29                    1467 	.db #0x29	; 41
      003553 66                    1468 	.db #0x66	; 102	'f'
      003554 81                    1469 	.db #0x81	; 129
      003555 00                    1470 	.db #0x00	; 0
      003556 C0                    1471 	.db #0xc0	; 192
      003557                       1472 _report_desc_HID1:
      003557 05                    1473 	.db #0x05	; 5
      003558 01                    1474 	.db #0x01	; 1
      003559 09                    1475 	.db #0x09	; 9
      00355A 80                    1476 	.db #0x80	; 128
      00355B A1                    1477 	.db #0xa1	; 161
      00355C 01                    1478 	.db #0x01	; 1
      00355D 85                    1479 	.db #0x85	; 133
      00355E 02                    1480 	.db #0x02	; 2
      00355F 15                    1481 	.db #0x15	; 21
      003560 01                    1482 	.db #0x01	; 1
      003561 26                    1483 	.db #0x26	; 38
      003562 B7                    1484 	.db #0xb7	; 183
      003563 00                    1485 	.db #0x00	; 0
      003564 19                    1486 	.db #0x19	; 25
      003565 01                    1487 	.db #0x01	; 1
      003566 29                    1488 	.db #0x29	; 41
      003567 B7                    1489 	.db #0xb7	; 183
      003568 75                    1490 	.db #0x75	; 117	'u'
      003569 10                    1491 	.db #0x10	; 16
      00356A 95                    1492 	.db #0x95	; 149
      00356B 01                    1493 	.db #0x01	; 1
      00356C 81                    1494 	.db #0x81	; 129
      00356D 00                    1495 	.db #0x00	; 0
      00356E C0                    1496 	.db #0xc0	; 192
      00356F 05                    1497 	.db #0x05	; 5
      003570 0C                    1498 	.db #0x0c	; 12
      003571 09                    1499 	.db #0x09	; 9
      003572 01                    1500 	.db #0x01	; 1
      003573 A1                    1501 	.db #0xa1	; 161
      003574 01                    1502 	.db #0x01	; 1
      003575 85                    1503 	.db #0x85	; 133
      003576 03                    1504 	.db #0x03	; 3
      003577 15                    1505 	.db #0x15	; 21
      003578 01                    1506 	.db #0x01	; 1
      003579 26                    1507 	.db #0x26	; 38
      00357A 9C                    1508 	.db #0x9c	; 156
      00357B 02                    1509 	.db #0x02	; 2
      00357C 19                    1510 	.db #0x19	; 25
      00357D 01                    1511 	.db #0x01	; 1
      00357E 2A                    1512 	.db #0x2a	; 42
      00357F 9C                    1513 	.db #0x9c	; 156
      003580 02                    1514 	.db #0x02	; 2
      003581 75                    1515 	.db #0x75	; 117	'u'
      003582 10                    1516 	.db #0x10	; 16
      003583 95                    1517 	.db #0x95	; 149
      003584 01                    1518 	.db #0x01	; 1
      003585 81                    1519 	.db #0x81	; 129
      003586 00                    1520 	.db #0x00	; 0
      003587 C0                    1521 	.db #0xc0	; 192
      003588 05                    1522 	.db #0x05	; 5
      003589 01                    1523 	.db #0x01	; 1
      00358A 09                    1524 	.db #0x09	; 9
      00358B 06                    1525 	.db #0x06	; 6
      00358C A1                    1526 	.db #0xa1	; 161
      00358D 01                    1527 	.db #0x01	; 1
      00358E 85                    1528 	.db #0x85	; 133
      00358F 80                    1529 	.db #0x80	; 128
      003590 75                    1530 	.db #0x75	; 117	'u'
      003591 01                    1531 	.db #0x01	; 1
      003592 95                    1532 	.db #0x95	; 149
      003593 08                    1533 	.db #0x08	; 8
      003594 05                    1534 	.db #0x05	; 5
      003595 07                    1535 	.db #0x07	; 7
      003596 19                    1536 	.db #0x19	; 25
      003597 E0                    1537 	.db #0xe0	; 224
      003598 29                    1538 	.db #0x29	; 41
      003599 E7                    1539 	.db #0xe7	; 231
      00359A 15                    1540 	.db #0x15	; 21
      00359B 00                    1541 	.db #0x00	; 0
      00359C 25                    1542 	.db #0x25	; 37
      00359D 01                    1543 	.db #0x01	; 1
      00359E 81                    1544 	.db #0x81	; 129
      00359F 02                    1545 	.db #0x02	; 2
      0035A0 95                    1546 	.db #0x95	; 149
      0035A1 D8                    1547 	.db #0xd8	; 216
      0035A2 75                    1548 	.db #0x75	; 117	'u'
      0035A3 01                    1549 	.db #0x01	; 1
      0035A4 15                    1550 	.db #0x15	; 21
      0035A5 00                    1551 	.db #0x00	; 0
      0035A6 25                    1552 	.db #0x25	; 37
      0035A7 01                    1553 	.db #0x01	; 1
      0035A8 05                    1554 	.db #0x05	; 5
      0035A9 07                    1555 	.db #0x07	; 7
      0035AA 19                    1556 	.db #0x19	; 25
      0035AB 00                    1557 	.db #0x00	; 0
      0035AC 29                    1558 	.db #0x29	; 41
      0035AD D7                    1559 	.db #0xd7	; 215
      0035AE 81                    1560 	.db #0x81	; 129
      0035AF 02                    1561 	.db #0x02	; 2
      0035B0 C0                    1562 	.db #0xc0	; 192
      0035B1 05                    1563 	.db #0x05	; 5
      0035B2 01                    1564 	.db #0x01	; 1
      0035B3 09                    1565 	.db #0x09	; 9
      0035B4 02                    1566 	.db #0x02	; 2
      0035B5 A1                    1567 	.db #0xa1	; 161
      0035B6 01                    1568 	.db #0x01	; 1
      0035B7 85                    1569 	.db #0x85	; 133
      0035B8 01                    1570 	.db #0x01	; 1
      0035B9 09                    1571 	.db #0x09	; 9
      0035BA 01                    1572 	.db #0x01	; 1
      0035BB A1                    1573 	.db #0xa1	; 161
      0035BC 00                    1574 	.db #0x00	; 0
      0035BD 05                    1575 	.db #0x05	; 5
      0035BE 09                    1576 	.db #0x09	; 9
      0035BF 19                    1577 	.db #0x19	; 25
      0035C0 01                    1578 	.db #0x01	; 1
      0035C1 29                    1579 	.db #0x29	; 41
      0035C2 05                    1580 	.db #0x05	; 5
      0035C3 15                    1581 	.db #0x15	; 21
      0035C4 00                    1582 	.db #0x00	; 0
      0035C5 25                    1583 	.db #0x25	; 37
      0035C6 01                    1584 	.db #0x01	; 1
      0035C7 75                    1585 	.db #0x75	; 117	'u'
      0035C8 01                    1586 	.db #0x01	; 1
      0035C9 95                    1587 	.db #0x95	; 149
      0035CA 05                    1588 	.db #0x05	; 5
      0035CB 81                    1589 	.db #0x81	; 129
      0035CC 02                    1590 	.db #0x02	; 2
      0035CD 75                    1591 	.db #0x75	; 117	'u'
      0035CE 03                    1592 	.db #0x03	; 3
      0035CF 95                    1593 	.db #0x95	; 149
      0035D0 01                    1594 	.db #0x01	; 1
      0035D1 81                    1595 	.db #0x81	; 129
      0035D2 03                    1596 	.db #0x03	; 3
      0035D3 05                    1597 	.db #0x05	; 5
      0035D4 01                    1598 	.db #0x01	; 1
      0035D5 09                    1599 	.db #0x09	; 9
      0035D6 30                    1600 	.db #0x30	; 48	'0'
      0035D7 09                    1601 	.db #0x09	; 9
      0035D8 31                    1602 	.db #0x31	; 49	'1'
      0035D9 15                    1603 	.db #0x15	; 21
      0035DA 81                    1604 	.db #0x81	; 129
      0035DB 25                    1605 	.db #0x25	; 37
      0035DC 7F                    1606 	.db #0x7f	; 127
      0035DD 75                    1607 	.db #0x75	; 117	'u'
      0035DE 08                    1608 	.db #0x08	; 8
      0035DF 95                    1609 	.db #0x95	; 149
      0035E0 02                    1610 	.db #0x02	; 2
      0035E1 81                    1611 	.db #0x81	; 129
      0035E2 06                    1612 	.db #0x06	; 6
      0035E3 09                    1613 	.db #0x09	; 9
      0035E4 38                    1614 	.db #0x38	; 56	'8'
      0035E5 15                    1615 	.db #0x15	; 21
      0035E6 81                    1616 	.db #0x81	; 129
      0035E7 25                    1617 	.db #0x25	; 37
      0035E8 7F                    1618 	.db #0x7f	; 127
      0035E9 35                    1619 	.db #0x35	; 53	'5'
      0035EA 00                    1620 	.db #0x00	; 0
      0035EB 45                    1621 	.db #0x45	; 69	'E'
      0035EC 00                    1622 	.db #0x00	; 0
      0035ED 75                    1623 	.db #0x75	; 117	'u'
      0035EE 08                    1624 	.db #0x08	; 8
      0035EF 95                    1625 	.db #0x95	; 149
      0035F0 01                    1626 	.db #0x01	; 1
      0035F1 81                    1627 	.db #0x81	; 129
      0035F2 06                    1628 	.db #0x06	; 6
      0035F3 05                    1629 	.db #0x05	; 5
      0035F4 0C                    1630 	.db #0x0c	; 12
      0035F5 0A                    1631 	.db #0x0a	; 10
      0035F6 38                    1632 	.db #0x38	; 56	'8'
      0035F7 02                    1633 	.db #0x02	; 2
      0035F8 15                    1634 	.db #0x15	; 21
      0035F9 81                    1635 	.db #0x81	; 129
      0035FA 25                    1636 	.db #0x25	; 37
      0035FB 7F                    1637 	.db #0x7f	; 127
      0035FC 75                    1638 	.db #0x75	; 117	'u'
      0035FD 08                    1639 	.db #0x08	; 8
      0035FE 95                    1640 	.db #0x95	; 149
      0035FF 01                    1641 	.db #0x01	; 1
      003600 81                    1642 	.db #0x81	; 129
      003601 06                    1643 	.db #0x06	; 6
      003602 C0                    1644 	.db #0xc0	; 192
      003603 C0                    1645 	.db #0xc0	; 192
      003604                       1646 _report_desc_HID2:
      003604 06                    1647 	.db #0x06	; 6
      003605 00                    1648 	.db #0x00	; 0
      003606 FF                    1649 	.db #0xff	; 255
      003607 09                    1650 	.db #0x09	; 9
      003608 01                    1651 	.db #0x01	; 1
      003609 A1                    1652 	.db #0xa1	; 161
      00360A 01                    1653 	.db #0x01	; 1
      00360B 85                    1654 	.db #0x85	; 133
      00360C 3F                    1655 	.db #0x3f	; 63
      00360D 95                    1656 	.db #0x95	; 149
      00360E 3F                    1657 	.db #0x3f	; 63
      00360F 75                    1658 	.db #0x75	; 117	'u'
      003610 08                    1659 	.db #0x08	; 8
      003611 25                    1660 	.db #0x25	; 37
      003612 01                    1661 	.db #0x01	; 1
      003613 15                    1662 	.db #0x15	; 21
      003614 01                    1663 	.db #0x01	; 1
      003615 09                    1664 	.db #0x09	; 9
      003616 01                    1665 	.db #0x01	; 1
      003617 81                    1666 	.db #0x81	; 129
      003618 02                    1667 	.db #0x02	; 2
      003619 85                    1668 	.db #0x85	; 133
      00361A 3F                    1669 	.db #0x3f	; 63
      00361B 95                    1670 	.db #0x95	; 149
      00361C 3F                    1671 	.db #0x3f	; 63
      00361D 75                    1672 	.db #0x75	; 117	'u'
      00361E 08                    1673 	.db #0x08	; 8
      00361F 25                    1674 	.db #0x25	; 37
      003620 01                    1675 	.db #0x01	; 1
      003621 15                    1676 	.db #0x15	; 21
      003622 01                    1677 	.db #0x01	; 1
      003623 09                    1678 	.db #0x09	; 9
      003624 01                    1679 	.db #0x01	; 1
      003625 91                    1680 	.db #0x91	; 145
      003626 02                    1681 	.db #0x02	; 2
      003627 C0                    1682 	.db #0xc0	; 192
      003628                       1683 _report_desc_HID3:
      003628 06                    1684 	.db #0x06	; 6
      003629 00                    1685 	.db #0x00	; 0
      00362A FF                    1686 	.db #0xff	; 255
      00362B 09                    1687 	.db #0x09	; 9
      00362C 01                    1688 	.db #0x01	; 1
      00362D A1                    1689 	.db #0xa1	; 161
      00362E 01                    1690 	.db #0x01	; 1
      00362F 15                    1691 	.db #0x15	; 21
      003630 00                    1692 	.db #0x00	; 0
      003631 26                    1693 	.db #0x26	; 38
      003632 FF                    1694 	.db #0xff	; 255
      003633 00                    1695 	.db #0x00	; 0
      003634 75                    1696 	.db #0x75	; 117	'u'
      003635 08                    1697 	.db #0x08	; 8
      003636 95                    1698 	.db #0x95	; 149
      003637 40                    1699 	.db #0x40	; 64
      003638 09                    1700 	.db #0x09	; 9
      003639 01                    1701 	.db #0x01	; 1
      00363A 81                    1702 	.db #0x81	; 129
      00363B 02                    1703 	.db #0x02	; 2
      00363C 95                    1704 	.db #0x95	; 149
      00363D 40                    1705 	.db #0x40	; 64
      00363E 09                    1706 	.db #0x09	; 9
      00363F 01                    1707 	.db #0x01	; 1
      003640 91                    1708 	.db #0x91	; 145
      003641 02                    1709 	.db #0x02	; 2
      003642 95                    1710 	.db #0x95	; 149
      003643 40                    1711 	.db #0x40	; 64
      003644 09                    1712 	.db #0x09	; 9
      003645 01                    1713 	.db #0x01	; 1
      003646 B1                    1714 	.db #0xb1	; 177
      003647 02                    1715 	.db #0x02	; 2
      003648 C0                    1716 	.db #0xc0	; 192
      003649                       1717 _itoa:
      003649 30                    1718 	.db #0x30	; 48	'0'
      00364A 31                    1719 	.db #0x31	; 49	'1'
      00364B 32                    1720 	.db #0x32	; 50	'2'
      00364C 33                    1721 	.db #0x33	; 51	'3'
      00364D 34                    1722 	.db #0x34	; 52	'4'
      00364E 35                    1723 	.db #0x35	; 53	'5'
      00364F 36                    1724 	.db #0x36	; 54	'6'
      003650 37                    1725 	.db #0x37	; 55	'7'
      003651 38                    1726 	.db #0x38	; 56	'8'
      003652 39                    1727 	.db #0x39	; 57	'9'
      003653 41                    1728 	.db #0x41	; 65	'A'
      003654 42                    1729 	.db #0x42	; 66	'B'
      003655 43                    1730 	.db #0x43	; 67	'C'
      003656 44                    1731 	.db #0x44	; 68	'D'
      003657 45                    1732 	.db #0x45	; 69	'E'
      003658 46                    1733 	.db #0x46	; 70	'F'
                                   1734 	.area CONST   (CODE)
      003659                       1735 ___str_0:
      003659 4C 69 6E              1736 	.ascii "Lin"
      00365C 00                    1737 	.db 0x00
                                   1738 	.area CSEG    (CODE)
                                   1739 	.area CONST   (CODE)
      00365D                       1740 ___str_1:
      00365D 4B 6E 69 67 68 74 31  1741 	.ascii "Knight101"
             30 31
      003666 00                    1742 	.db 0x00
                                   1743 	.area CSEG    (CODE)
                                   1744 	.area XINIT   (CODE)
                                   1745 	.area CABS    (ABS,CODE)

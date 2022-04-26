                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_itc
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ITC_GetCPUCC
                                     12 	.globl _ITC_DeInit
                                     13 	.globl _ITC_GetSoftIntStatus
                                     14 	.globl _ITC_GetSoftwarePriority
                                     15 	.globl _ITC_SetSoftwarePriority
                                     16 ;--------------------------------------------------------
                                     17 ; ram data
                                     18 ;--------------------------------------------------------
                                     19 	.area DATA
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area INITIALIZED
                                     24 ;--------------------------------------------------------
                                     25 ; absolute external ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area DABS (ABS)
                                     28 
                                     29 ; default segment ordering for linker
                                     30 	.area HOME
                                     31 	.area GSINIT
                                     32 	.area GSFINAL
                                     33 	.area CONST
                                     34 	.area INITIALIZER
                                     35 	.area CODE
                                     36 
                                     37 ;--------------------------------------------------------
                                     38 ; global & static initialisations
                                     39 ;--------------------------------------------------------
                                     40 	.area HOME
                                     41 	.area GSINIT
                                     42 	.area GSFINAL
                                     43 	.area GSINIT
                                     44 ;--------------------------------------------------------
                                     45 ; Home
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
                                     48 	.area HOME
                                     49 ;--------------------------------------------------------
                                     50 ; code
                                     51 ;--------------------------------------------------------
                                     52 	.area CODE
                           000000    53 	Sstm8s_itc$ITC_GetCPUCC$0 ==.
                                     54 ;	../SPL/src/stm8s_itc.c: 50: uint8_t ITC_GetCPUCC(void)
                                     55 ; genLabel
                                     56 ;	-----------------------------------------
                                     57 ;	 function ITC_GetCPUCC
                                     58 ;	-----------------------------------------
                                     59 ;	Register assignment is optimal.
                                     60 ;	Stack space usage: 0 bytes.
      0095D6                         61 _ITC_GetCPUCC:
                           000000    62 	Sstm8s_itc$ITC_GetCPUCC$1 ==.
                           000000    63 	Sstm8s_itc$ITC_GetCPUCC$2 ==.
                                     64 ;	../SPL/src/stm8s_itc.c: 59: __asm__("push cc");
                                     65 ;	genInline
      0095D6 8A               [ 1]   66 	push	cc
                           000001    67 	Sstm8s_itc$ITC_GetCPUCC$3 ==.
                                     68 ;	../SPL/src/stm8s_itc.c: 60: __asm__("pop a");
                                     69 ;	genInline
      0095D7 84               [ 1]   70 	pop	a
                                     71 ; genLabel
      0095D8                         72 00101$:
                           000002    73 	Sstm8s_itc$ITC_GetCPUCC$4 ==.
                                     74 ;	../SPL/src/stm8s_itc.c: 65: }
                                     75 ; genEndFunction
                           000002    76 	Sstm8s_itc$ITC_GetCPUCC$5 ==.
                           000002    77 	XG$ITC_GetCPUCC$0$0 ==.
      0095D8 81               [ 4]   78 	ret
                           000003    79 	Sstm8s_itc$ITC_GetCPUCC$6 ==.
                           000003    80 	Sstm8s_itc$ITC_DeInit$7 ==.
                                     81 ;	../SPL/src/stm8s_itc.c: 83: void ITC_DeInit(void)
                                     82 ; genLabel
                                     83 ;	-----------------------------------------
                                     84 ;	 function ITC_DeInit
                                     85 ;	-----------------------------------------
                                     86 ;	Register assignment is optimal.
                                     87 ;	Stack space usage: 0 bytes.
      0095D9                         88 _ITC_DeInit:
                           000003    89 	Sstm8s_itc$ITC_DeInit$8 ==.
                           000003    90 	Sstm8s_itc$ITC_DeInit$9 ==.
                                     91 ;	../SPL/src/stm8s_itc.c: 85: ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
                                     92 ; genPointerSet
      0095D9 35 FF 7F 70      [ 1]   93 	mov	0x7f70+0, #0xff
                           000007    94 	Sstm8s_itc$ITC_DeInit$10 ==.
                                     95 ;	../SPL/src/stm8s_itc.c: 86: ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
                                     96 ; genPointerSet
      0095DD 35 FF 7F 71      [ 1]   97 	mov	0x7f71+0, #0xff
                           00000B    98 	Sstm8s_itc$ITC_DeInit$11 ==.
                                     99 ;	../SPL/src/stm8s_itc.c: 87: ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
                                    100 ; genPointerSet
      0095E1 35 FF 7F 72      [ 1]  101 	mov	0x7f72+0, #0xff
                           00000F   102 	Sstm8s_itc$ITC_DeInit$12 ==.
                                    103 ;	../SPL/src/stm8s_itc.c: 88: ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
                                    104 ; genPointerSet
      0095E5 35 FF 7F 73      [ 1]  105 	mov	0x7f73+0, #0xff
                           000013   106 	Sstm8s_itc$ITC_DeInit$13 ==.
                                    107 ;	../SPL/src/stm8s_itc.c: 89: ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
                                    108 ; genPointerSet
      0095E9 35 FF 7F 74      [ 1]  109 	mov	0x7f74+0, #0xff
                           000017   110 	Sstm8s_itc$ITC_DeInit$14 ==.
                                    111 ;	../SPL/src/stm8s_itc.c: 90: ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
                                    112 ; genPointerSet
      0095ED 35 FF 7F 75      [ 1]  113 	mov	0x7f75+0, #0xff
                           00001B   114 	Sstm8s_itc$ITC_DeInit$15 ==.
                                    115 ;	../SPL/src/stm8s_itc.c: 91: ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
                                    116 ; genPointerSet
      0095F1 35 FF 7F 76      [ 1]  117 	mov	0x7f76+0, #0xff
                           00001F   118 	Sstm8s_itc$ITC_DeInit$16 ==.
                                    119 ;	../SPL/src/stm8s_itc.c: 92: ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
                                    120 ; genPointerSet
      0095F5 35 FF 7F 77      [ 1]  121 	mov	0x7f77+0, #0xff
                                    122 ; genLabel
      0095F9                        123 00101$:
                           000023   124 	Sstm8s_itc$ITC_DeInit$17 ==.
                                    125 ;	../SPL/src/stm8s_itc.c: 93: }
                                    126 ; genEndFunction
                           000023   127 	Sstm8s_itc$ITC_DeInit$18 ==.
                           000023   128 	XG$ITC_DeInit$0$0 ==.
      0095F9 81               [ 4]  129 	ret
                           000024   130 	Sstm8s_itc$ITC_DeInit$19 ==.
                           000024   131 	Sstm8s_itc$ITC_GetSoftIntStatus$20 ==.
                                    132 ;	../SPL/src/stm8s_itc.c: 100: uint8_t ITC_GetSoftIntStatus(void)
                                    133 ; genLabel
                                    134 ;	-----------------------------------------
                                    135 ;	 function ITC_GetSoftIntStatus
                                    136 ;	-----------------------------------------
                                    137 ;	Register assignment is optimal.
                                    138 ;	Stack space usage: 0 bytes.
      0095FA                        139 _ITC_GetSoftIntStatus:
                           000024   140 	Sstm8s_itc$ITC_GetSoftIntStatus$21 ==.
                           000024   141 	Sstm8s_itc$ITC_GetSoftIntStatus$22 ==.
                                    142 ;	../SPL/src/stm8s_itc.c: 102: return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
                                    143 ; genCall
      0095FA CD 95 D6         [ 4]  144 	call	_ITC_GetCPUCC
                                    145 ; genAnd
      0095FD A4 28            [ 1]  146 	and	a, #0x28
                                    147 ; genReturn
                                    148 ; genLabel
      0095FF                        149 00101$:
                           000029   150 	Sstm8s_itc$ITC_GetSoftIntStatus$23 ==.
                                    151 ;	../SPL/src/stm8s_itc.c: 103: }
                                    152 ; genEndFunction
                           000029   153 	Sstm8s_itc$ITC_GetSoftIntStatus$24 ==.
                           000029   154 	XG$ITC_GetSoftIntStatus$0$0 ==.
      0095FF 81               [ 4]  155 	ret
                           00002A   156 	Sstm8s_itc$ITC_GetSoftIntStatus$25 ==.
                           00002A   157 	Sstm8s_itc$ITC_GetSoftwarePriority$26 ==.
                                    158 ;	../SPL/src/stm8s_itc.c: 110: ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
                                    159 ; genLabel
                                    160 ;	-----------------------------------------
                                    161 ;	 function ITC_GetSoftwarePriority
                                    162 ;	-----------------------------------------
                                    163 ;	Register assignment might be sub-optimal.
                                    164 ;	Stack space usage: 2 bytes.
      009600                        165 _ITC_GetSoftwarePriority:
                           00002A   166 	Sstm8s_itc$ITC_GetSoftwarePriority$27 ==.
      009600 89               [ 2]  167 	pushw	x
                           00002B   168 	Sstm8s_itc$ITC_GetSoftwarePriority$28 ==.
                           00002B   169 	Sstm8s_itc$ITC_GetSoftwarePriority$29 ==.
                                    170 ;	../SPL/src/stm8s_itc.c: 112: uint8_t Value = 0;
                                    171 ; genAssign
      009601 5F               [ 1]  172 	clrw	x
                           00002C   173 	Sstm8s_itc$ITC_GetSoftwarePriority$30 ==.
                                    174 ;	../SPL/src/stm8s_itc.c: 119: Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
                                    175 ; genCast
                                    176 ; genAssign
      009602 7B 05            [ 1]  177 	ld	a, (0x05, sp)
      009604 90 5F            [ 1]  178 	clrw	y
                                    179 ; genAnd
      009606 A4 03            [ 1]  180 	and	a, #0x03
      009608 95               [ 1]  181 	ld	xh, a
      009609 4F               [ 1]  182 	clr	a
                                    183 ; genCast
                                    184 ; genAssign
      00960A 9E               [ 1]  185 	ld	a, xh
                                    186 ; genLeftShiftLiteral
      00960B 48               [ 1]  187 	sll	a
      00960C 6B 01            [ 1]  188 	ld	(0x01, sp), a
                                    189 ; genLeftShift
      00960E A6 03            [ 1]  190 	ld	a, #0x03
      009610 6B 02            [ 1]  191 	ld	(0x02, sp), a
      009612 7B 01            [ 1]  192 	ld	a, (0x01, sp)
      009614 27 05            [ 1]  193 	jreq	00136$
      009616                        194 00135$:
      009616 08 02            [ 1]  195 	sll	(0x02, sp)
      009618 4A               [ 1]  196 	dec	a
      009619 26 FB            [ 1]  197 	jrne	00135$
      00961B                        198 00136$:
                           000045   199 	Sstm8s_itc$ITC_GetSoftwarePriority$31 ==.
                                    200 ;	../SPL/src/stm8s_itc.c: 121: switch (IrqNum)
                                    201 ; genCmp
                                    202 ; genCmpTop
      00961B 7B 05            [ 1]  203 	ld	a, (0x05, sp)
      00961D A1 18            [ 1]  204 	cp	a, #0x18
      00961F 23 03            [ 2]  205 	jrule	00137$
      009621 CC 96 9B         [ 2]  206 	jp	00127$
      009624                        207 00137$:
                                    208 ; skipping generated iCode
                                    209 ; genJumpTab
      009624 5F               [ 1]  210 	clrw	x
      009625 7B 05            [ 1]  211 	ld	a, (0x05, sp)
      009627 97               [ 1]  212 	ld	xl, a
      009628 58               [ 2]  213 	sllw	x
      009629 DE 96 2D         [ 2]  214 	ldw	x, (#00138$, x)
      00962C FC               [ 2]  215 	jp	(x)
      00962D                        216 00138$:
      00962D 96 5F                  217 	.dw	#00104$
      00962F 96 5F                  218 	.dw	#00104$
      009631 96 5F                  219 	.dw	#00104$
      009633 96 5F                  220 	.dw	#00104$
      009635 96 68                  221 	.dw	#00108$
      009637 96 68                  222 	.dw	#00108$
      009639 96 68                  223 	.dw	#00108$
      00963B 96 68                  224 	.dw	#00108$
      00963D 96 71                  225 	.dw	#00112$
      00963F 96 71                  226 	.dw	#00112$
      009641 96 71                  227 	.dw	#00112$
      009643 96 71                  228 	.dw	#00112$
      009645 96 7A                  229 	.dw	#00116$
      009647 96 7A                  230 	.dw	#00116$
      009649 96 7A                  231 	.dw	#00116$
      00964B 96 7A                  232 	.dw	#00116$
      00964D 96 83                  233 	.dw	#00120$
      00964F 96 83                  234 	.dw	#00120$
      009651 96 83                  235 	.dw	#00120$
      009653 96 83                  236 	.dw	#00120$
      009655 96 8C                  237 	.dw	#00124$
      009657 96 8C                  238 	.dw	#00124$
      009659 96 8C                  239 	.dw	#00124$
      00965B 96 8C                  240 	.dw	#00124$
      00965D 96 95                  241 	.dw	#00125$
                           000089   242 	Sstm8s_itc$ITC_GetSoftwarePriority$32 ==.
                           000089   243 	Sstm8s_itc$ITC_GetSoftwarePriority$33 ==.
                                    244 ;	../SPL/src/stm8s_itc.c: 126: case ITC_IRQ_PORTA:
                                    245 ; genLabel
      00965F                        246 00104$:
                           000089   247 	Sstm8s_itc$ITC_GetSoftwarePriority$34 ==.
                                    248 ;	../SPL/src/stm8s_itc.c: 127: Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
                                    249 ; genPointerGet
      00965F C6 7F 70         [ 1]  250 	ld	a, 0x7f70
                                    251 ; genAnd
      009662 14 02            [ 1]  252 	and	a, (0x02, sp)
      009664 97               [ 1]  253 	ld	xl, a
                           00008F   254 	Sstm8s_itc$ITC_GetSoftwarePriority$35 ==.
                                    255 ;	../SPL/src/stm8s_itc.c: 128: break;
                                    256 ; genGoto
      009665 CC 96 9B         [ 2]  257 	jp	00127$
                           000092   258 	Sstm8s_itc$ITC_GetSoftwarePriority$36 ==.
                                    259 ;	../SPL/src/stm8s_itc.c: 133: case ITC_IRQ_PORTE:
                                    260 ; genLabel
      009668                        261 00108$:
                           000092   262 	Sstm8s_itc$ITC_GetSoftwarePriority$37 ==.
                                    263 ;	../SPL/src/stm8s_itc.c: 134: Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
                                    264 ; genPointerGet
      009668 C6 7F 71         [ 1]  265 	ld	a, 0x7f71
                                    266 ; genAnd
      00966B 14 02            [ 1]  267 	and	a, (0x02, sp)
      00966D 97               [ 1]  268 	ld	xl, a
                           000098   269 	Sstm8s_itc$ITC_GetSoftwarePriority$38 ==.
                                    270 ;	../SPL/src/stm8s_itc.c: 135: break;
                                    271 ; genGoto
      00966E CC 96 9B         [ 2]  272 	jp	00127$
                           00009B   273 	Sstm8s_itc$ITC_GetSoftwarePriority$39 ==.
                                    274 ;	../SPL/src/stm8s_itc.c: 145: case ITC_IRQ_TIM1_OVF:
                                    275 ; genLabel
      009671                        276 00112$:
                           00009B   277 	Sstm8s_itc$ITC_GetSoftwarePriority$40 ==.
                                    278 ;	../SPL/src/stm8s_itc.c: 146: Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
                                    279 ; genPointerGet
      009671 C6 7F 72         [ 1]  280 	ld	a, 0x7f72
                                    281 ; genAnd
      009674 14 02            [ 1]  282 	and	a, (0x02, sp)
      009676 97               [ 1]  283 	ld	xl, a
                           0000A1   284 	Sstm8s_itc$ITC_GetSoftwarePriority$41 ==.
                                    285 ;	../SPL/src/stm8s_itc.c: 147: break;
                                    286 ; genGoto
      009677 CC 96 9B         [ 2]  287 	jp	00127$
                           0000A4   288 	Sstm8s_itc$ITC_GetSoftwarePriority$42 ==.
                                    289 ;	../SPL/src/stm8s_itc.c: 157: case ITC_IRQ_TIM3_OVF:
                                    290 ; genLabel
      00967A                        291 00116$:
                           0000A4   292 	Sstm8s_itc$ITC_GetSoftwarePriority$43 ==.
                                    293 ;	../SPL/src/stm8s_itc.c: 158: Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
                                    294 ; genPointerGet
      00967A C6 7F 73         [ 1]  295 	ld	a, 0x7f73
                                    296 ; genAnd
      00967D 14 02            [ 1]  297 	and	a, (0x02, sp)
      00967F 97               [ 1]  298 	ld	xl, a
                           0000AA   299 	Sstm8s_itc$ITC_GetSoftwarePriority$44 ==.
                                    300 ;	../SPL/src/stm8s_itc.c: 159: break;
                                    301 ; genGoto
      009680 CC 96 9B         [ 2]  302 	jp	00127$
                           0000AD   303 	Sstm8s_itc$ITC_GetSoftwarePriority$45 ==.
                                    304 ;	../SPL/src/stm8s_itc.c: 171: case ITC_IRQ_I2C:
                                    305 ; genLabel
      009683                        306 00120$:
                           0000AD   307 	Sstm8s_itc$ITC_GetSoftwarePriority$46 ==.
                                    308 ;	../SPL/src/stm8s_itc.c: 172: Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
                                    309 ; genPointerGet
      009683 C6 7F 74         [ 1]  310 	ld	a, 0x7f74
                                    311 ; genAnd
      009686 14 02            [ 1]  312 	and	a, (0x02, sp)
      009688 97               [ 1]  313 	ld	xl, a
                           0000B3   314 	Sstm8s_itc$ITC_GetSoftwarePriority$47 ==.
                                    315 ;	../SPL/src/stm8s_itc.c: 173: break;
                                    316 ; genGoto
      009689 CC 96 9B         [ 2]  317 	jp	00127$
                           0000B6   318 	Sstm8s_itc$ITC_GetSoftwarePriority$48 ==.
                                    319 ;	../SPL/src/stm8s_itc.c: 192: case ITC_IRQ_TIM4_OVF:
                                    320 ; genLabel
      00968C                        321 00124$:
                           0000B6   322 	Sstm8s_itc$ITC_GetSoftwarePriority$49 ==.
                                    323 ;	../SPL/src/stm8s_itc.c: 194: Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
                                    324 ; genPointerGet
      00968C C6 7F 75         [ 1]  325 	ld	a, 0x7f75
                                    326 ; genAnd
      00968F 14 02            [ 1]  327 	and	a, (0x02, sp)
      009691 97               [ 1]  328 	ld	xl, a
                           0000BC   329 	Sstm8s_itc$ITC_GetSoftwarePriority$50 ==.
                                    330 ;	../SPL/src/stm8s_itc.c: 195: break;
                                    331 ; genGoto
      009692 CC 96 9B         [ 2]  332 	jp	00127$
                           0000BF   333 	Sstm8s_itc$ITC_GetSoftwarePriority$51 ==.
                                    334 ;	../SPL/src/stm8s_itc.c: 197: case ITC_IRQ_EEPROM_EEC:
                                    335 ; genLabel
      009695                        336 00125$:
                           0000BF   337 	Sstm8s_itc$ITC_GetSoftwarePriority$52 ==.
                                    338 ;	../SPL/src/stm8s_itc.c: 198: Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
                                    339 ; genPointerGet
      009695 C6 7F 76         [ 1]  340 	ld	a, 0x7f76
                                    341 ; genAnd
      009698 14 02            [ 1]  342 	and	a, (0x02, sp)
      00969A 97               [ 1]  343 	ld	xl, a
                           0000C5   344 	Sstm8s_itc$ITC_GetSoftwarePriority$53 ==.
                           0000C5   345 	Sstm8s_itc$ITC_GetSoftwarePriority$54 ==.
                                    346 ;	../SPL/src/stm8s_itc.c: 203: }
                                    347 ; genLabel
      00969B                        348 00127$:
                           0000C5   349 	Sstm8s_itc$ITC_GetSoftwarePriority$55 ==.
                                    350 ;	../SPL/src/stm8s_itc.c: 205: Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
                                    351 ; genRightShift
      00969B 7B 01            [ 1]  352 	ld	a, (0x01, sp)
      00969D 27 06            [ 1]  353 	jreq	00140$
      00969F                        354 00139$:
      00969F 41               [ 1]  355 	exg	a, xl
      0096A0 44               [ 1]  356 	srl	a
      0096A1 41               [ 1]  357 	exg	a, xl
      0096A2 4A               [ 1]  358 	dec	a
      0096A3 26 FA            [ 1]  359 	jrne	00139$
      0096A5                        360 00140$:
                                    361 ; genAssign
      0096A5 9F               [ 1]  362 	ld	a, xl
                           0000D0   363 	Sstm8s_itc$ITC_GetSoftwarePriority$56 ==.
                                    364 ;	../SPL/src/stm8s_itc.c: 207: return((ITC_PriorityLevel_TypeDef)Value);
                                    365 ; genReturn
                                    366 ; genLabel
      0096A6                        367 00128$:
                           0000D0   368 	Sstm8s_itc$ITC_GetSoftwarePriority$57 ==.
                                    369 ;	../SPL/src/stm8s_itc.c: 208: }
                                    370 ; genEndFunction
      0096A6 85               [ 2]  371 	popw	x
                           0000D1   372 	Sstm8s_itc$ITC_GetSoftwarePriority$58 ==.
                           0000D1   373 	Sstm8s_itc$ITC_GetSoftwarePriority$59 ==.
                           0000D1   374 	XG$ITC_GetSoftwarePriority$0$0 ==.
      0096A7 81               [ 4]  375 	ret
                           0000D2   376 	Sstm8s_itc$ITC_GetSoftwarePriority$60 ==.
                           0000D2   377 	Sstm8s_itc$ITC_SetSoftwarePriority$61 ==.
                                    378 ;	../SPL/src/stm8s_itc.c: 223: void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
                                    379 ; genLabel
                                    380 ;	-----------------------------------------
                                    381 ;	 function ITC_SetSoftwarePriority
                                    382 ;	-----------------------------------------
                                    383 ;	Register assignment might be sub-optimal.
                                    384 ;	Stack space usage: 2 bytes.
      0096A8                        385 _ITC_SetSoftwarePriority:
                           0000D2   386 	Sstm8s_itc$ITC_SetSoftwarePriority$62 ==.
      0096A8 89               [ 2]  387 	pushw	x
                           0000D3   388 	Sstm8s_itc$ITC_SetSoftwarePriority$63 ==.
                           0000D3   389 	Sstm8s_itc$ITC_SetSoftwarePriority$64 ==.
                                    390 ;	../SPL/src/stm8s_itc.c: 237: Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
                                    391 ; genCast
                                    392 ; genAssign
      0096A9 7B 05            [ 1]  393 	ld	a, (0x05, sp)
      0096AB 5F               [ 1]  394 	clrw	x
                                    395 ; genAnd
      0096AC A4 03            [ 1]  396 	and	a, #0x03
      0096AE 97               [ 1]  397 	ld	xl, a
      0096AF 4F               [ 1]  398 	clr	a
                                    399 ; genCast
                                    400 ; genAssign
                                    401 ; genLeftShiftLiteral
      0096B0 58               [ 2]  402 	sllw	x
                                    403 ; genLeftShift
      0096B1 A6 03            [ 1]  404 	ld	a, #0x03
      0096B3 88               [ 1]  405 	push	a
                           0000DE   406 	Sstm8s_itc$ITC_SetSoftwarePriority$65 ==.
      0096B4 9F               [ 1]  407 	ld	a, xl
      0096B5 4D               [ 1]  408 	tnz	a
      0096B6 27 05            [ 1]  409 	jreq	00136$
      0096B8                        410 00135$:
      0096B8 08 01            [ 1]  411 	sll	(1, sp)
      0096BA 4A               [ 1]  412 	dec	a
      0096BB 26 FB            [ 1]  413 	jrne	00135$
      0096BD                        414 00136$:
      0096BD 84               [ 1]  415 	pop	a
                           0000E8   416 	Sstm8s_itc$ITC_SetSoftwarePriority$66 ==.
                                    417 ; genCpl
      0096BE 43               [ 1]  418 	cpl	a
                                    419 ; genAssign
      0096BF 6B 01            [ 1]  420 	ld	(0x01, sp), a
                           0000EB   421 	Sstm8s_itc$ITC_SetSoftwarePriority$67 ==.
                                    422 ;	../SPL/src/stm8s_itc.c: 240: NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
                                    423 ; genLeftShift
      0096C1 7B 06            [ 1]  424 	ld	a, (0x06, sp)
      0096C3 88               [ 1]  425 	push	a
                           0000EE   426 	Sstm8s_itc$ITC_SetSoftwarePriority$68 ==.
      0096C4 9F               [ 1]  427 	ld	a, xl
      0096C5 4D               [ 1]  428 	tnz	a
      0096C6 27 05            [ 1]  429 	jreq	00138$
      0096C8                        430 00137$:
      0096C8 08 01            [ 1]  431 	sll	(1, sp)
      0096CA 4A               [ 1]  432 	dec	a
      0096CB 26 FB            [ 1]  433 	jrne	00137$
      0096CD                        434 00138$:
      0096CD 84               [ 1]  435 	pop	a
                           0000F8   436 	Sstm8s_itc$ITC_SetSoftwarePriority$69 ==.
                                    437 ; genAssign
      0096CE 6B 02            [ 1]  438 	ld	(0x02, sp), a
                           0000FA   439 	Sstm8s_itc$ITC_SetSoftwarePriority$70 ==.
                                    440 ;	../SPL/src/stm8s_itc.c: 242: switch (IrqNum)
                                    441 ; genCmp
                                    442 ; genCmpTop
      0096D0 7B 05            [ 1]  443 	ld	a, (0x05, sp)
      0096D2 A1 18            [ 1]  444 	cp	a, #0x18
      0096D4 23 03            [ 2]  445 	jrule	00139$
      0096D6 CC 97 96         [ 2]  446 	jp	00128$
      0096D9                        447 00139$:
                                    448 ; skipping generated iCode
                                    449 ; genJumpTab
      0096D9 5F               [ 1]  450 	clrw	x
      0096DA 7B 05            [ 1]  451 	ld	a, (0x05, sp)
      0096DC 97               [ 1]  452 	ld	xl, a
      0096DD 58               [ 2]  453 	sllw	x
      0096DE DE 96 E2         [ 2]  454 	ldw	x, (#00140$, x)
      0096E1 FC               [ 2]  455 	jp	(x)
      0096E2                        456 00140$:
      0096E2 97 14                  457 	.dw	#00104$
      0096E4 97 14                  458 	.dw	#00104$
      0096E6 97 14                  459 	.dw	#00104$
      0096E8 97 14                  460 	.dw	#00104$
      0096EA 97 27                  461 	.dw	#00108$
      0096EC 97 27                  462 	.dw	#00108$
      0096EE 97 27                  463 	.dw	#00108$
      0096F0 97 27                  464 	.dw	#00108$
      0096F2 97 3A                  465 	.dw	#00112$
      0096F4 97 3A                  466 	.dw	#00112$
      0096F6 97 3A                  467 	.dw	#00112$
      0096F8 97 3A                  468 	.dw	#00112$
      0096FA 97 4D                  469 	.dw	#00116$
      0096FC 97 4D                  470 	.dw	#00116$
      0096FE 97 4D                  471 	.dw	#00116$
      009700 97 4D                  472 	.dw	#00116$
      009702 97 60                  473 	.dw	#00120$
      009704 97 60                  474 	.dw	#00120$
      009706 97 60                  475 	.dw	#00120$
      009708 97 60                  476 	.dw	#00120$
      00970A 97 73                  477 	.dw	#00124$
      00970C 97 73                  478 	.dw	#00124$
      00970E 97 73                  479 	.dw	#00124$
      009710 97 73                  480 	.dw	#00124$
      009712 97 86                  481 	.dw	#00125$
                           00013E   482 	Sstm8s_itc$ITC_SetSoftwarePriority$71 ==.
                           00013E   483 	Sstm8s_itc$ITC_SetSoftwarePriority$72 ==.
                                    484 ;	../SPL/src/stm8s_itc.c: 247: case ITC_IRQ_PORTA:
                                    485 ; genLabel
      009714                        486 00104$:
                           00013E   487 	Sstm8s_itc$ITC_SetSoftwarePriority$73 ==.
                                    488 ;	../SPL/src/stm8s_itc.c: 248: ITC->ISPR1 &= Mask;
                                    489 ; genPointerGet
      009714 C6 7F 70         [ 1]  490 	ld	a, 0x7f70
                                    491 ; genAnd
      009717 14 01            [ 1]  492 	and	a, (0x01, sp)
                                    493 ; genPointerSet
      009719 C7 7F 70         [ 1]  494 	ld	0x7f70, a
                           000146   495 	Sstm8s_itc$ITC_SetSoftwarePriority$74 ==.
                                    496 ;	../SPL/src/stm8s_itc.c: 249: ITC->ISPR1 |= NewPriority;
                                    497 ; genPointerGet
      00971C C6 7F 70         [ 1]  498 	ld	a, 0x7f70
                                    499 ; genOr
      00971F 1A 02            [ 1]  500 	or	a, (0x02, sp)
                                    501 ; genPointerSet
      009721 C7 7F 70         [ 1]  502 	ld	0x7f70, a
                           00014E   503 	Sstm8s_itc$ITC_SetSoftwarePriority$75 ==.
                                    504 ;	../SPL/src/stm8s_itc.c: 250: break;
                                    505 ; genGoto
      009724 CC 97 96         [ 2]  506 	jp	00128$
                           000151   507 	Sstm8s_itc$ITC_SetSoftwarePriority$76 ==.
                                    508 ;	../SPL/src/stm8s_itc.c: 255: case ITC_IRQ_PORTE:
                                    509 ; genLabel
      009727                        510 00108$:
                           000151   511 	Sstm8s_itc$ITC_SetSoftwarePriority$77 ==.
                                    512 ;	../SPL/src/stm8s_itc.c: 256: ITC->ISPR2 &= Mask;
                                    513 ; genPointerGet
      009727 C6 7F 71         [ 1]  514 	ld	a, 0x7f71
                                    515 ; genAnd
      00972A 14 01            [ 1]  516 	and	a, (0x01, sp)
                                    517 ; genPointerSet
      00972C C7 7F 71         [ 1]  518 	ld	0x7f71, a
                           000159   519 	Sstm8s_itc$ITC_SetSoftwarePriority$78 ==.
                                    520 ;	../SPL/src/stm8s_itc.c: 257: ITC->ISPR2 |= NewPriority;
                                    521 ; genPointerGet
      00972F C6 7F 71         [ 1]  522 	ld	a, 0x7f71
                                    523 ; genOr
      009732 1A 02            [ 1]  524 	or	a, (0x02, sp)
                                    525 ; genPointerSet
      009734 C7 7F 71         [ 1]  526 	ld	0x7f71, a
                           000161   527 	Sstm8s_itc$ITC_SetSoftwarePriority$79 ==.
                                    528 ;	../SPL/src/stm8s_itc.c: 258: break;
                                    529 ; genGoto
      009737 CC 97 96         [ 2]  530 	jp	00128$
                           000164   531 	Sstm8s_itc$ITC_SetSoftwarePriority$80 ==.
                                    532 ;	../SPL/src/stm8s_itc.c: 268: case ITC_IRQ_TIM1_OVF:
                                    533 ; genLabel
      00973A                        534 00112$:
                           000164   535 	Sstm8s_itc$ITC_SetSoftwarePriority$81 ==.
                                    536 ;	../SPL/src/stm8s_itc.c: 269: ITC->ISPR3 &= Mask;
                                    537 ; genPointerGet
      00973A C6 7F 72         [ 1]  538 	ld	a, 0x7f72
                                    539 ; genAnd
      00973D 14 01            [ 1]  540 	and	a, (0x01, sp)
                                    541 ; genPointerSet
      00973F C7 7F 72         [ 1]  542 	ld	0x7f72, a
                           00016C   543 	Sstm8s_itc$ITC_SetSoftwarePriority$82 ==.
                                    544 ;	../SPL/src/stm8s_itc.c: 270: ITC->ISPR3 |= NewPriority;
                                    545 ; genPointerGet
      009742 C6 7F 72         [ 1]  546 	ld	a, 0x7f72
                                    547 ; genOr
      009745 1A 02            [ 1]  548 	or	a, (0x02, sp)
                                    549 ; genPointerSet
      009747 C7 7F 72         [ 1]  550 	ld	0x7f72, a
                           000174   551 	Sstm8s_itc$ITC_SetSoftwarePriority$83 ==.
                                    552 ;	../SPL/src/stm8s_itc.c: 271: break;
                                    553 ; genGoto
      00974A CC 97 96         [ 2]  554 	jp	00128$
                           000177   555 	Sstm8s_itc$ITC_SetSoftwarePriority$84 ==.
                                    556 ;	../SPL/src/stm8s_itc.c: 281: case ITC_IRQ_TIM3_OVF:
                                    557 ; genLabel
      00974D                        558 00116$:
                           000177   559 	Sstm8s_itc$ITC_SetSoftwarePriority$85 ==.
                                    560 ;	../SPL/src/stm8s_itc.c: 282: ITC->ISPR4 &= Mask;
                                    561 ; genPointerGet
      00974D C6 7F 73         [ 1]  562 	ld	a, 0x7f73
                                    563 ; genAnd
      009750 14 01            [ 1]  564 	and	a, (0x01, sp)
                                    565 ; genPointerSet
      009752 C7 7F 73         [ 1]  566 	ld	0x7f73, a
                           00017F   567 	Sstm8s_itc$ITC_SetSoftwarePriority$86 ==.
                                    568 ;	../SPL/src/stm8s_itc.c: 283: ITC->ISPR4 |= NewPriority;
                                    569 ; genPointerGet
      009755 C6 7F 73         [ 1]  570 	ld	a, 0x7f73
                                    571 ; genOr
      009758 1A 02            [ 1]  572 	or	a, (0x02, sp)
                                    573 ; genPointerSet
      00975A C7 7F 73         [ 1]  574 	ld	0x7f73, a
                           000187   575 	Sstm8s_itc$ITC_SetSoftwarePriority$87 ==.
                                    576 ;	../SPL/src/stm8s_itc.c: 284: break;
                                    577 ; genGoto
      00975D CC 97 96         [ 2]  578 	jp	00128$
                           00018A   579 	Sstm8s_itc$ITC_SetSoftwarePriority$88 ==.
                                    580 ;	../SPL/src/stm8s_itc.c: 296: case ITC_IRQ_I2C:
                                    581 ; genLabel
      009760                        582 00120$:
                           00018A   583 	Sstm8s_itc$ITC_SetSoftwarePriority$89 ==.
                                    584 ;	../SPL/src/stm8s_itc.c: 297: ITC->ISPR5 &= Mask;
                                    585 ; genPointerGet
      009760 C6 7F 74         [ 1]  586 	ld	a, 0x7f74
                                    587 ; genAnd
      009763 14 01            [ 1]  588 	and	a, (0x01, sp)
                                    589 ; genPointerSet
      009765 C7 7F 74         [ 1]  590 	ld	0x7f74, a
                           000192   591 	Sstm8s_itc$ITC_SetSoftwarePriority$90 ==.
                                    592 ;	../SPL/src/stm8s_itc.c: 298: ITC->ISPR5 |= NewPriority;
                                    593 ; genPointerGet
      009768 C6 7F 74         [ 1]  594 	ld	a, 0x7f74
                                    595 ; genOr
      00976B 1A 02            [ 1]  596 	or	a, (0x02, sp)
                                    597 ; genPointerSet
      00976D C7 7F 74         [ 1]  598 	ld	0x7f74, a
                           00019A   599 	Sstm8s_itc$ITC_SetSoftwarePriority$91 ==.
                                    600 ;	../SPL/src/stm8s_itc.c: 299: break;
                                    601 ; genGoto
      009770 CC 97 96         [ 2]  602 	jp	00128$
                           00019D   603 	Sstm8s_itc$ITC_SetSoftwarePriority$92 ==.
                                    604 ;	../SPL/src/stm8s_itc.c: 321: case ITC_IRQ_TIM4_OVF:
                                    605 ; genLabel
      009773                        606 00124$:
                           00019D   607 	Sstm8s_itc$ITC_SetSoftwarePriority$93 ==.
                                    608 ;	../SPL/src/stm8s_itc.c: 323: ITC->ISPR6 &= Mask;
                                    609 ; genPointerGet
      009773 C6 7F 75         [ 1]  610 	ld	a, 0x7f75
                                    611 ; genAnd
      009776 14 01            [ 1]  612 	and	a, (0x01, sp)
                                    613 ; genPointerSet
      009778 C7 7F 75         [ 1]  614 	ld	0x7f75, a
                           0001A5   615 	Sstm8s_itc$ITC_SetSoftwarePriority$94 ==.
                                    616 ;	../SPL/src/stm8s_itc.c: 324: ITC->ISPR6 |= NewPriority;
                                    617 ; genPointerGet
      00977B C6 7F 75         [ 1]  618 	ld	a, 0x7f75
                                    619 ; genOr
      00977E 1A 02            [ 1]  620 	or	a, (0x02, sp)
                                    621 ; genPointerSet
      009780 C7 7F 75         [ 1]  622 	ld	0x7f75, a
                           0001AD   623 	Sstm8s_itc$ITC_SetSoftwarePriority$95 ==.
                                    624 ;	../SPL/src/stm8s_itc.c: 325: break;
                                    625 ; genGoto
      009783 CC 97 96         [ 2]  626 	jp	00128$
                           0001B0   627 	Sstm8s_itc$ITC_SetSoftwarePriority$96 ==.
                                    628 ;	../SPL/src/stm8s_itc.c: 327: case ITC_IRQ_EEPROM_EEC:
                                    629 ; genLabel
      009786                        630 00125$:
                           0001B0   631 	Sstm8s_itc$ITC_SetSoftwarePriority$97 ==.
                                    632 ;	../SPL/src/stm8s_itc.c: 328: ITC->ISPR7 &= Mask;
                                    633 ; genPointerGet
      009786 C6 7F 76         [ 1]  634 	ld	a, 0x7f76
                                    635 ; genAnd
      009789 14 01            [ 1]  636 	and	a, (0x01, sp)
                                    637 ; genPointerSet
      00978B C7 7F 76         [ 1]  638 	ld	0x7f76, a
                           0001B8   639 	Sstm8s_itc$ITC_SetSoftwarePriority$98 ==.
                                    640 ;	../SPL/src/stm8s_itc.c: 329: ITC->ISPR7 |= NewPriority;
                                    641 ; genPointerGet
      00978E C6 7F 76         [ 1]  642 	ld	a, 0x7f76
                                    643 ; genOr
      009791 1A 02            [ 1]  644 	or	a, (0x02, sp)
                                    645 ; genPointerSet
      009793 C7 7F 76         [ 1]  646 	ld	0x7f76, a
                           0001C0   647 	Sstm8s_itc$ITC_SetSoftwarePriority$99 ==.
                           0001C0   648 	Sstm8s_itc$ITC_SetSoftwarePriority$100 ==.
                                    649 ;	../SPL/src/stm8s_itc.c: 334: }
                                    650 ; genLabel
      009796                        651 00128$:
                           0001C0   652 	Sstm8s_itc$ITC_SetSoftwarePriority$101 ==.
                                    653 ;	../SPL/src/stm8s_itc.c: 335: }
                                    654 ; genEndFunction
      009796 85               [ 2]  655 	popw	x
                           0001C1   656 	Sstm8s_itc$ITC_SetSoftwarePriority$102 ==.
                           0001C1   657 	Sstm8s_itc$ITC_SetSoftwarePriority$103 ==.
                           0001C1   658 	XG$ITC_SetSoftwarePriority$0$0 ==.
      009797 81               [ 4]  659 	ret
                           0001C2   660 	Sstm8s_itc$ITC_SetSoftwarePriority$104 ==.
                                    661 	.area CODE
                                    662 	.area CONST
                                    663 	.area INITIALIZER
                                    664 	.area CABS (ABS)
                                    665 
                                    666 	.area .debug_line (NOLOAD)
      002046 00 00 02 87            667 	.dw	0,Ldebug_line_end-Ldebug_line_start
      00204A                        668 Ldebug_line_start:
      00204A 00 02                  669 	.dw	2
      00204C 00 00 00 77            670 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      002050 01                     671 	.db	1
      002051 01                     672 	.db	1
      002052 FB                     673 	.db	-5
      002053 0F                     674 	.db	15
      002054 0A                     675 	.db	10
      002055 00                     676 	.db	0
      002056 01                     677 	.db	1
      002057 01                     678 	.db	1
      002058 01                     679 	.db	1
      002059 01                     680 	.db	1
      00205A 00                     681 	.db	0
      00205B 00                     682 	.db	0
      00205C 00                     683 	.db	0
      00205D 01                     684 	.db	1
      00205E 43 3A 5C 50 72 6F 67   685 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      002086 00                     686 	.db	0
      002087 43 3A 5C 50 72 6F 67   687 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      0020AA 00                     688 	.db	0
      0020AB 00                     689 	.db	0
      0020AC 2E 2E 2F 53 50 4C 2F   690 	.ascii "../SPL/src/stm8s_itc.c"
             73 72 63 2F 73 74 6D
             38 73 5F 69 74 63 2E
             63
      0020C2 00                     691 	.db	0
      0020C3 00                     692 	.uleb128	0
      0020C4 00                     693 	.uleb128	0
      0020C5 00                     694 	.uleb128	0
      0020C6 00                     695 	.db	0
      0020C7                        696 Ldebug_line_stmt:
      0020C7 00                     697 	.db	0
      0020C8 05                     698 	.uleb128	5
      0020C9 02                     699 	.db	2
      0020CA 00 00 95 D6            700 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$0)
      0020CE 03                     701 	.db	3
      0020CF 31                     702 	.sleb128	49
      0020D0 01                     703 	.db	1
      0020D1 09                     704 	.db	9
      0020D2 00 00                  705 	.dw	Sstm8s_itc$ITC_GetCPUCC$2-Sstm8s_itc$ITC_GetCPUCC$0
      0020D4 03                     706 	.db	3
      0020D5 09                     707 	.sleb128	9
      0020D6 01                     708 	.db	1
      0020D7 09                     709 	.db	9
      0020D8 00 01                  710 	.dw	Sstm8s_itc$ITC_GetCPUCC$3-Sstm8s_itc$ITC_GetCPUCC$2
      0020DA 03                     711 	.db	3
      0020DB 01                     712 	.sleb128	1
      0020DC 01                     713 	.db	1
      0020DD 09                     714 	.db	9
      0020DE 00 01                  715 	.dw	Sstm8s_itc$ITC_GetCPUCC$4-Sstm8s_itc$ITC_GetCPUCC$3
      0020E0 03                     716 	.db	3
      0020E1 05                     717 	.sleb128	5
      0020E2 01                     718 	.db	1
      0020E3 09                     719 	.db	9
      0020E4 00 01                  720 	.dw	1+Sstm8s_itc$ITC_GetCPUCC$5-Sstm8s_itc$ITC_GetCPUCC$4
      0020E6 00                     721 	.db	0
      0020E7 01                     722 	.uleb128	1
      0020E8 01                     723 	.db	1
      0020E9 00                     724 	.db	0
      0020EA 05                     725 	.uleb128	5
      0020EB 02                     726 	.db	2
      0020EC 00 00 95 D9            727 	.dw	0,(Sstm8s_itc$ITC_DeInit$7)
      0020F0 03                     728 	.db	3
      0020F1 D2 00                  729 	.sleb128	82
      0020F3 01                     730 	.db	1
      0020F4 09                     731 	.db	9
      0020F5 00 00                  732 	.dw	Sstm8s_itc$ITC_DeInit$9-Sstm8s_itc$ITC_DeInit$7
      0020F7 03                     733 	.db	3
      0020F8 02                     734 	.sleb128	2
      0020F9 01                     735 	.db	1
      0020FA 09                     736 	.db	9
      0020FB 00 04                  737 	.dw	Sstm8s_itc$ITC_DeInit$10-Sstm8s_itc$ITC_DeInit$9
      0020FD 03                     738 	.db	3
      0020FE 01                     739 	.sleb128	1
      0020FF 01                     740 	.db	1
      002100 09                     741 	.db	9
      002101 00 04                  742 	.dw	Sstm8s_itc$ITC_DeInit$11-Sstm8s_itc$ITC_DeInit$10
      002103 03                     743 	.db	3
      002104 01                     744 	.sleb128	1
      002105 01                     745 	.db	1
      002106 09                     746 	.db	9
      002107 00 04                  747 	.dw	Sstm8s_itc$ITC_DeInit$12-Sstm8s_itc$ITC_DeInit$11
      002109 03                     748 	.db	3
      00210A 01                     749 	.sleb128	1
      00210B 01                     750 	.db	1
      00210C 09                     751 	.db	9
      00210D 00 04                  752 	.dw	Sstm8s_itc$ITC_DeInit$13-Sstm8s_itc$ITC_DeInit$12
      00210F 03                     753 	.db	3
      002110 01                     754 	.sleb128	1
      002111 01                     755 	.db	1
      002112 09                     756 	.db	9
      002113 00 04                  757 	.dw	Sstm8s_itc$ITC_DeInit$14-Sstm8s_itc$ITC_DeInit$13
      002115 03                     758 	.db	3
      002116 01                     759 	.sleb128	1
      002117 01                     760 	.db	1
      002118 09                     761 	.db	9
      002119 00 04                  762 	.dw	Sstm8s_itc$ITC_DeInit$15-Sstm8s_itc$ITC_DeInit$14
      00211B 03                     763 	.db	3
      00211C 01                     764 	.sleb128	1
      00211D 01                     765 	.db	1
      00211E 09                     766 	.db	9
      00211F 00 04                  767 	.dw	Sstm8s_itc$ITC_DeInit$16-Sstm8s_itc$ITC_DeInit$15
      002121 03                     768 	.db	3
      002122 01                     769 	.sleb128	1
      002123 01                     770 	.db	1
      002124 09                     771 	.db	9
      002125 00 04                  772 	.dw	Sstm8s_itc$ITC_DeInit$17-Sstm8s_itc$ITC_DeInit$16
      002127 03                     773 	.db	3
      002128 01                     774 	.sleb128	1
      002129 01                     775 	.db	1
      00212A 09                     776 	.db	9
      00212B 00 01                  777 	.dw	1+Sstm8s_itc$ITC_DeInit$18-Sstm8s_itc$ITC_DeInit$17
      00212D 00                     778 	.db	0
      00212E 01                     779 	.uleb128	1
      00212F 01                     780 	.db	1
      002130 00                     781 	.db	0
      002131 05                     782 	.uleb128	5
      002132 02                     783 	.db	2
      002133 00 00 95 FA            784 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$20)
      002137 03                     785 	.db	3
      002138 E3 00                  786 	.sleb128	99
      00213A 01                     787 	.db	1
      00213B 09                     788 	.db	9
      00213C 00 00                  789 	.dw	Sstm8s_itc$ITC_GetSoftIntStatus$22-Sstm8s_itc$ITC_GetSoftIntStatus$20
      00213E 03                     790 	.db	3
      00213F 02                     791 	.sleb128	2
      002140 01                     792 	.db	1
      002141 09                     793 	.db	9
      002142 00 05                  794 	.dw	Sstm8s_itc$ITC_GetSoftIntStatus$23-Sstm8s_itc$ITC_GetSoftIntStatus$22
      002144 03                     795 	.db	3
      002145 01                     796 	.sleb128	1
      002146 01                     797 	.db	1
      002147 09                     798 	.db	9
      002148 00 01                  799 	.dw	1+Sstm8s_itc$ITC_GetSoftIntStatus$24-Sstm8s_itc$ITC_GetSoftIntStatus$23
      00214A 00                     800 	.db	0
      00214B 01                     801 	.uleb128	1
      00214C 01                     802 	.db	1
      00214D 00                     803 	.db	0
      00214E 05                     804 	.uleb128	5
      00214F 02                     805 	.db	2
      002150 00 00 96 00            806 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$26)
      002154 03                     807 	.db	3
      002155 ED 00                  808 	.sleb128	109
      002157 01                     809 	.db	1
      002158 09                     810 	.db	9
      002159 00 01                  811 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$29-Sstm8s_itc$ITC_GetSoftwarePriority$26
      00215B 03                     812 	.db	3
      00215C 02                     813 	.sleb128	2
      00215D 01                     814 	.db	1
      00215E 09                     815 	.db	9
      00215F 00 01                  816 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$30-Sstm8s_itc$ITC_GetSoftwarePriority$29
      002161 03                     817 	.db	3
      002162 07                     818 	.sleb128	7
      002163 01                     819 	.db	1
      002164 09                     820 	.db	9
      002165 00 19                  821 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$31-Sstm8s_itc$ITC_GetSoftwarePriority$30
      002167 03                     822 	.db	3
      002168 02                     823 	.sleb128	2
      002169 01                     824 	.db	1
      00216A 09                     825 	.db	9
      00216B 00 44                  826 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$33-Sstm8s_itc$ITC_GetSoftwarePriority$31
      00216D 03                     827 	.db	3
      00216E 05                     828 	.sleb128	5
      00216F 01                     829 	.db	1
      002170 09                     830 	.db	9
      002171 00 00                  831 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$34-Sstm8s_itc$ITC_GetSoftwarePriority$33
      002173 03                     832 	.db	3
      002174 01                     833 	.sleb128	1
      002175 01                     834 	.db	1
      002176 09                     835 	.db	9
      002177 00 06                  836 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$35-Sstm8s_itc$ITC_GetSoftwarePriority$34
      002179 03                     837 	.db	3
      00217A 01                     838 	.sleb128	1
      00217B 01                     839 	.db	1
      00217C 09                     840 	.db	9
      00217D 00 03                  841 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$36-Sstm8s_itc$ITC_GetSoftwarePriority$35
      00217F 03                     842 	.db	3
      002180 05                     843 	.sleb128	5
      002181 01                     844 	.db	1
      002182 09                     845 	.db	9
      002183 00 00                  846 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$37-Sstm8s_itc$ITC_GetSoftwarePriority$36
      002185 03                     847 	.db	3
      002186 01                     848 	.sleb128	1
      002187 01                     849 	.db	1
      002188 09                     850 	.db	9
      002189 00 06                  851 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$38-Sstm8s_itc$ITC_GetSoftwarePriority$37
      00218B 03                     852 	.db	3
      00218C 01                     853 	.sleb128	1
      00218D 01                     854 	.db	1
      00218E 09                     855 	.db	9
      00218F 00 03                  856 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$39-Sstm8s_itc$ITC_GetSoftwarePriority$38
      002191 03                     857 	.db	3
      002192 0A                     858 	.sleb128	10
      002193 01                     859 	.db	1
      002194 09                     860 	.db	9
      002195 00 00                  861 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$40-Sstm8s_itc$ITC_GetSoftwarePriority$39
      002197 03                     862 	.db	3
      002198 01                     863 	.sleb128	1
      002199 01                     864 	.db	1
      00219A 09                     865 	.db	9
      00219B 00 06                  866 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$41-Sstm8s_itc$ITC_GetSoftwarePriority$40
      00219D 03                     867 	.db	3
      00219E 01                     868 	.sleb128	1
      00219F 01                     869 	.db	1
      0021A0 09                     870 	.db	9
      0021A1 00 03                  871 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$42-Sstm8s_itc$ITC_GetSoftwarePriority$41
      0021A3 03                     872 	.db	3
      0021A4 0A                     873 	.sleb128	10
      0021A5 01                     874 	.db	1
      0021A6 09                     875 	.db	9
      0021A7 00 00                  876 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$43-Sstm8s_itc$ITC_GetSoftwarePriority$42
      0021A9 03                     877 	.db	3
      0021AA 01                     878 	.sleb128	1
      0021AB 01                     879 	.db	1
      0021AC 09                     880 	.db	9
      0021AD 00 06                  881 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$44-Sstm8s_itc$ITC_GetSoftwarePriority$43
      0021AF 03                     882 	.db	3
      0021B0 01                     883 	.sleb128	1
      0021B1 01                     884 	.db	1
      0021B2 09                     885 	.db	9
      0021B3 00 03                  886 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$45-Sstm8s_itc$ITC_GetSoftwarePriority$44
      0021B5 03                     887 	.db	3
      0021B6 0C                     888 	.sleb128	12
      0021B7 01                     889 	.db	1
      0021B8 09                     890 	.db	9
      0021B9 00 00                  891 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$46-Sstm8s_itc$ITC_GetSoftwarePriority$45
      0021BB 03                     892 	.db	3
      0021BC 01                     893 	.sleb128	1
      0021BD 01                     894 	.db	1
      0021BE 09                     895 	.db	9
      0021BF 00 06                  896 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$47-Sstm8s_itc$ITC_GetSoftwarePriority$46
      0021C1 03                     897 	.db	3
      0021C2 01                     898 	.sleb128	1
      0021C3 01                     899 	.db	1
      0021C4 09                     900 	.db	9
      0021C5 00 03                  901 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$48-Sstm8s_itc$ITC_GetSoftwarePriority$47
      0021C7 03                     902 	.db	3
      0021C8 13                     903 	.sleb128	19
      0021C9 01                     904 	.db	1
      0021CA 09                     905 	.db	9
      0021CB 00 00                  906 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$49-Sstm8s_itc$ITC_GetSoftwarePriority$48
      0021CD 03                     907 	.db	3
      0021CE 02                     908 	.sleb128	2
      0021CF 01                     909 	.db	1
      0021D0 09                     910 	.db	9
      0021D1 00 06                  911 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$50-Sstm8s_itc$ITC_GetSoftwarePriority$49
      0021D3 03                     912 	.db	3
      0021D4 01                     913 	.sleb128	1
      0021D5 01                     914 	.db	1
      0021D6 09                     915 	.db	9
      0021D7 00 03                  916 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$51-Sstm8s_itc$ITC_GetSoftwarePriority$50
      0021D9 03                     917 	.db	3
      0021DA 02                     918 	.sleb128	2
      0021DB 01                     919 	.db	1
      0021DC 09                     920 	.db	9
      0021DD 00 00                  921 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$52-Sstm8s_itc$ITC_GetSoftwarePriority$51
      0021DF 03                     922 	.db	3
      0021E0 01                     923 	.sleb128	1
      0021E1 01                     924 	.db	1
      0021E2 09                     925 	.db	9
      0021E3 00 06                  926 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$54-Sstm8s_itc$ITC_GetSoftwarePriority$52
      0021E5 03                     927 	.db	3
      0021E6 05                     928 	.sleb128	5
      0021E7 01                     929 	.db	1
      0021E8 09                     930 	.db	9
      0021E9 00 00                  931 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$55-Sstm8s_itc$ITC_GetSoftwarePriority$54
      0021EB 03                     932 	.db	3
      0021EC 02                     933 	.sleb128	2
      0021ED 01                     934 	.db	1
      0021EE 09                     935 	.db	9
      0021EF 00 0B                  936 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$56-Sstm8s_itc$ITC_GetSoftwarePriority$55
      0021F1 03                     937 	.db	3
      0021F2 02                     938 	.sleb128	2
      0021F3 01                     939 	.db	1
      0021F4 09                     940 	.db	9
      0021F5 00 00                  941 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$57-Sstm8s_itc$ITC_GetSoftwarePriority$56
      0021F7 03                     942 	.db	3
      0021F8 01                     943 	.sleb128	1
      0021F9 01                     944 	.db	1
      0021FA 09                     945 	.db	9
      0021FB 00 02                  946 	.dw	1+Sstm8s_itc$ITC_GetSoftwarePriority$59-Sstm8s_itc$ITC_GetSoftwarePriority$57
      0021FD 00                     947 	.db	0
      0021FE 01                     948 	.uleb128	1
      0021FF 01                     949 	.db	1
      002200 00                     950 	.db	0
      002201 05                     951 	.uleb128	5
      002202 02                     952 	.db	2
      002203 00 00 96 A8            953 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$61)
      002207 03                     954 	.db	3
      002208 DE 01                  955 	.sleb128	222
      00220A 01                     956 	.db	1
      00220B 09                     957 	.db	9
      00220C 00 01                  958 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$64-Sstm8s_itc$ITC_SetSoftwarePriority$61
      00220E 03                     959 	.db	3
      00220F 0E                     960 	.sleb128	14
      002210 01                     961 	.db	1
      002211 09                     962 	.db	9
      002212 00 18                  963 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$67-Sstm8s_itc$ITC_SetSoftwarePriority$64
      002214 03                     964 	.db	3
      002215 03                     965 	.sleb128	3
      002216 01                     966 	.db	1
      002217 09                     967 	.db	9
      002218 00 0F                  968 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$70-Sstm8s_itc$ITC_SetSoftwarePriority$67
      00221A 03                     969 	.db	3
      00221B 02                     970 	.sleb128	2
      00221C 01                     971 	.db	1
      00221D 09                     972 	.db	9
      00221E 00 44                  973 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$72-Sstm8s_itc$ITC_SetSoftwarePriority$70
      002220 03                     974 	.db	3
      002221 05                     975 	.sleb128	5
      002222 01                     976 	.db	1
      002223 09                     977 	.db	9
      002224 00 00                  978 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$73-Sstm8s_itc$ITC_SetSoftwarePriority$72
      002226 03                     979 	.db	3
      002227 01                     980 	.sleb128	1
      002228 01                     981 	.db	1
      002229 09                     982 	.db	9
      00222A 00 08                  983 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$74-Sstm8s_itc$ITC_SetSoftwarePriority$73
      00222C 03                     984 	.db	3
      00222D 01                     985 	.sleb128	1
      00222E 01                     986 	.db	1
      00222F 09                     987 	.db	9
      002230 00 08                  988 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$75-Sstm8s_itc$ITC_SetSoftwarePriority$74
      002232 03                     989 	.db	3
      002233 01                     990 	.sleb128	1
      002234 01                     991 	.db	1
      002235 09                     992 	.db	9
      002236 00 03                  993 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$76-Sstm8s_itc$ITC_SetSoftwarePriority$75
      002238 03                     994 	.db	3
      002239 05                     995 	.sleb128	5
      00223A 01                     996 	.db	1
      00223B 09                     997 	.db	9
      00223C 00 00                  998 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$77-Sstm8s_itc$ITC_SetSoftwarePriority$76
      00223E 03                     999 	.db	3
      00223F 01                    1000 	.sleb128	1
      002240 01                    1001 	.db	1
      002241 09                    1002 	.db	9
      002242 00 08                 1003 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$78-Sstm8s_itc$ITC_SetSoftwarePriority$77
      002244 03                    1004 	.db	3
      002245 01                    1005 	.sleb128	1
      002246 01                    1006 	.db	1
      002247 09                    1007 	.db	9
      002248 00 08                 1008 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$79-Sstm8s_itc$ITC_SetSoftwarePriority$78
      00224A 03                    1009 	.db	3
      00224B 01                    1010 	.sleb128	1
      00224C 01                    1011 	.db	1
      00224D 09                    1012 	.db	9
      00224E 00 03                 1013 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$80-Sstm8s_itc$ITC_SetSoftwarePriority$79
      002250 03                    1014 	.db	3
      002251 0A                    1015 	.sleb128	10
      002252 01                    1016 	.db	1
      002253 09                    1017 	.db	9
      002254 00 00                 1018 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$81-Sstm8s_itc$ITC_SetSoftwarePriority$80
      002256 03                    1019 	.db	3
      002257 01                    1020 	.sleb128	1
      002258 01                    1021 	.db	1
      002259 09                    1022 	.db	9
      00225A 00 08                 1023 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$82-Sstm8s_itc$ITC_SetSoftwarePriority$81
      00225C 03                    1024 	.db	3
      00225D 01                    1025 	.sleb128	1
      00225E 01                    1026 	.db	1
      00225F 09                    1027 	.db	9
      002260 00 08                 1028 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$83-Sstm8s_itc$ITC_SetSoftwarePriority$82
      002262 03                    1029 	.db	3
      002263 01                    1030 	.sleb128	1
      002264 01                    1031 	.db	1
      002265 09                    1032 	.db	9
      002266 00 03                 1033 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$84-Sstm8s_itc$ITC_SetSoftwarePriority$83
      002268 03                    1034 	.db	3
      002269 0A                    1035 	.sleb128	10
      00226A 01                    1036 	.db	1
      00226B 09                    1037 	.db	9
      00226C 00 00                 1038 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$85-Sstm8s_itc$ITC_SetSoftwarePriority$84
      00226E 03                    1039 	.db	3
      00226F 01                    1040 	.sleb128	1
      002270 01                    1041 	.db	1
      002271 09                    1042 	.db	9
      002272 00 08                 1043 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$86-Sstm8s_itc$ITC_SetSoftwarePriority$85
      002274 03                    1044 	.db	3
      002275 01                    1045 	.sleb128	1
      002276 01                    1046 	.db	1
      002277 09                    1047 	.db	9
      002278 00 08                 1048 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$87-Sstm8s_itc$ITC_SetSoftwarePriority$86
      00227A 03                    1049 	.db	3
      00227B 01                    1050 	.sleb128	1
      00227C 01                    1051 	.db	1
      00227D 09                    1052 	.db	9
      00227E 00 03                 1053 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$88-Sstm8s_itc$ITC_SetSoftwarePriority$87
      002280 03                    1054 	.db	3
      002281 0C                    1055 	.sleb128	12
      002282 01                    1056 	.db	1
      002283 09                    1057 	.db	9
      002284 00 00                 1058 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$89-Sstm8s_itc$ITC_SetSoftwarePriority$88
      002286 03                    1059 	.db	3
      002287 01                    1060 	.sleb128	1
      002288 01                    1061 	.db	1
      002289 09                    1062 	.db	9
      00228A 00 08                 1063 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$90-Sstm8s_itc$ITC_SetSoftwarePriority$89
      00228C 03                    1064 	.db	3
      00228D 01                    1065 	.sleb128	1
      00228E 01                    1066 	.db	1
      00228F 09                    1067 	.db	9
      002290 00 08                 1068 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$91-Sstm8s_itc$ITC_SetSoftwarePriority$90
      002292 03                    1069 	.db	3
      002293 01                    1070 	.sleb128	1
      002294 01                    1071 	.db	1
      002295 09                    1072 	.db	9
      002296 00 03                 1073 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$92-Sstm8s_itc$ITC_SetSoftwarePriority$91
      002298 03                    1074 	.db	3
      002299 16                    1075 	.sleb128	22
      00229A 01                    1076 	.db	1
      00229B 09                    1077 	.db	9
      00229C 00 00                 1078 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$93-Sstm8s_itc$ITC_SetSoftwarePriority$92
      00229E 03                    1079 	.db	3
      00229F 02                    1080 	.sleb128	2
      0022A0 01                    1081 	.db	1
      0022A1 09                    1082 	.db	9
      0022A2 00 08                 1083 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$94-Sstm8s_itc$ITC_SetSoftwarePriority$93
      0022A4 03                    1084 	.db	3
      0022A5 01                    1085 	.sleb128	1
      0022A6 01                    1086 	.db	1
      0022A7 09                    1087 	.db	9
      0022A8 00 08                 1088 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$95-Sstm8s_itc$ITC_SetSoftwarePriority$94
      0022AA 03                    1089 	.db	3
      0022AB 01                    1090 	.sleb128	1
      0022AC 01                    1091 	.db	1
      0022AD 09                    1092 	.db	9
      0022AE 00 03                 1093 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$96-Sstm8s_itc$ITC_SetSoftwarePriority$95
      0022B0 03                    1094 	.db	3
      0022B1 02                    1095 	.sleb128	2
      0022B2 01                    1096 	.db	1
      0022B3 09                    1097 	.db	9
      0022B4 00 00                 1098 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$97-Sstm8s_itc$ITC_SetSoftwarePriority$96
      0022B6 03                    1099 	.db	3
      0022B7 01                    1100 	.sleb128	1
      0022B8 01                    1101 	.db	1
      0022B9 09                    1102 	.db	9
      0022BA 00 08                 1103 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$98-Sstm8s_itc$ITC_SetSoftwarePriority$97
      0022BC 03                    1104 	.db	3
      0022BD 01                    1105 	.sleb128	1
      0022BE 01                    1106 	.db	1
      0022BF 09                    1107 	.db	9
      0022C0 00 08                 1108 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$100-Sstm8s_itc$ITC_SetSoftwarePriority$98
      0022C2 03                    1109 	.db	3
      0022C3 05                    1110 	.sleb128	5
      0022C4 01                    1111 	.db	1
      0022C5 09                    1112 	.db	9
      0022C6 00 00                 1113 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$101-Sstm8s_itc$ITC_SetSoftwarePriority$100
      0022C8 03                    1114 	.db	3
      0022C9 01                    1115 	.sleb128	1
      0022CA 01                    1116 	.db	1
      0022CB 09                    1117 	.db	9
      0022CC 00 02                 1118 	.dw	1+Sstm8s_itc$ITC_SetSoftwarePriority$103-Sstm8s_itc$ITC_SetSoftwarePriority$101
      0022CE 00                    1119 	.db	0
      0022CF 01                    1120 	.uleb128	1
      0022D0 01                    1121 	.db	1
      0022D1                       1122 Ldebug_line_end:
                                   1123 
                                   1124 	.area .debug_loc (NOLOAD)
      002B08                       1125 Ldebug_loc_start:
      002B08 00 00 97 97           1126 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$102)
      002B0C 00 00 97 98           1127 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$104)
      002B10 00 02                 1128 	.dw	2
      002B12 78                    1129 	.db	120
      002B13 01                    1130 	.sleb128	1
      002B14 00 00 96 CE           1131 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$69)
      002B18 00 00 97 97           1132 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$102)
      002B1C 00 02                 1133 	.dw	2
      002B1E 78                    1134 	.db	120
      002B1F 03                    1135 	.sleb128	3
      002B20 00 00 96 C4           1136 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$68)
      002B24 00 00 96 CE           1137 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$69)
      002B28 00 02                 1138 	.dw	2
      002B2A 78                    1139 	.db	120
      002B2B 04                    1140 	.sleb128	4
      002B2C 00 00 96 BE           1141 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$66)
      002B30 00 00 96 C4           1142 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$68)
      002B34 00 02                 1143 	.dw	2
      002B36 78                    1144 	.db	120
      002B37 03                    1145 	.sleb128	3
      002B38 00 00 96 B4           1146 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$65)
      002B3C 00 00 96 BE           1147 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$66)
      002B40 00 02                 1148 	.dw	2
      002B42 78                    1149 	.db	120
      002B43 04                    1150 	.sleb128	4
      002B44 00 00 96 A9           1151 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$63)
      002B48 00 00 96 B4           1152 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$65)
      002B4C 00 02                 1153 	.dw	2
      002B4E 78                    1154 	.db	120
      002B4F 03                    1155 	.sleb128	3
      002B50 00 00 96 A8           1156 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$62)
      002B54 00 00 96 A9           1157 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$63)
      002B58 00 02                 1158 	.dw	2
      002B5A 78                    1159 	.db	120
      002B5B 01                    1160 	.sleb128	1
      002B5C 00 00 00 00           1161 	.dw	0,0
      002B60 00 00 00 00           1162 	.dw	0,0
      002B64 00 00 96 A7           1163 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$58)
      002B68 00 00 96 A8           1164 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$60)
      002B6C 00 02                 1165 	.dw	2
      002B6E 78                    1166 	.db	120
      002B6F 01                    1167 	.sleb128	1
      002B70 00 00 96 01           1168 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$28)
      002B74 00 00 96 A7           1169 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$58)
      002B78 00 02                 1170 	.dw	2
      002B7A 78                    1171 	.db	120
      002B7B 03                    1172 	.sleb128	3
      002B7C 00 00 96 00           1173 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$27)
      002B80 00 00 96 01           1174 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$28)
      002B84 00 02                 1175 	.dw	2
      002B86 78                    1176 	.db	120
      002B87 01                    1177 	.sleb128	1
      002B88 00 00 00 00           1178 	.dw	0,0
      002B8C 00 00 00 00           1179 	.dw	0,0
      002B90 00 00 95 FA           1180 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$21)
      002B94 00 00 96 00           1181 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$25)
      002B98 00 02                 1182 	.dw	2
      002B9A 78                    1183 	.db	120
      002B9B 01                    1184 	.sleb128	1
      002B9C 00 00 00 00           1185 	.dw	0,0
      002BA0 00 00 00 00           1186 	.dw	0,0
      002BA4 00 00 95 D9           1187 	.dw	0,(Sstm8s_itc$ITC_DeInit$8)
      002BA8 00 00 95 FA           1188 	.dw	0,(Sstm8s_itc$ITC_DeInit$19)
      002BAC 00 02                 1189 	.dw	2
      002BAE 78                    1190 	.db	120
      002BAF 01                    1191 	.sleb128	1
      002BB0 00 00 00 00           1192 	.dw	0,0
      002BB4 00 00 00 00           1193 	.dw	0,0
      002BB8 00 00 95 D6           1194 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$1)
      002BBC 00 00 95 D9           1195 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$6)
      002BC0 00 02                 1196 	.dw	2
      002BC2 78                    1197 	.db	120
      002BC3 01                    1198 	.sleb128	1
      002BC4 00 00 00 00           1199 	.dw	0,0
      002BC8 00 00 00 00           1200 	.dw	0,0
                                   1201 
                                   1202 	.area .debug_abbrev (NOLOAD)
      0005A7                       1203 Ldebug_abbrev:
      0005A7 03                    1204 	.uleb128	3
      0005A8 2E                    1205 	.uleb128	46
      0005A9 00                    1206 	.db	0
      0005AA 03                    1207 	.uleb128	3
      0005AB 08                    1208 	.uleb128	8
      0005AC 11                    1209 	.uleb128	17
      0005AD 01                    1210 	.uleb128	1
      0005AE 12                    1211 	.uleb128	18
      0005AF 01                    1212 	.uleb128	1
      0005B0 3F                    1213 	.uleb128	63
      0005B1 0C                    1214 	.uleb128	12
      0005B2 40                    1215 	.uleb128	64
      0005B3 06                    1216 	.uleb128	6
      0005B4 49                    1217 	.uleb128	73
      0005B5 13                    1218 	.uleb128	19
      0005B6 00                    1219 	.uleb128	0
      0005B7 00                    1220 	.uleb128	0
      0005B8 06                    1221 	.uleb128	6
      0005B9 05                    1222 	.uleb128	5
      0005BA 00                    1223 	.db	0
      0005BB 02                    1224 	.uleb128	2
      0005BC 0A                    1225 	.uleb128	10
      0005BD 03                    1226 	.uleb128	3
      0005BE 08                    1227 	.uleb128	8
      0005BF 49                    1228 	.uleb128	73
      0005C0 13                    1229 	.uleb128	19
      0005C1 00                    1230 	.uleb128	0
      0005C2 00                    1231 	.uleb128	0
      0005C3 08                    1232 	.uleb128	8
      0005C4 34                    1233 	.uleb128	52
      0005C5 00                    1234 	.db	0
      0005C6 02                    1235 	.uleb128	2
      0005C7 0A                    1236 	.uleb128	10
      0005C8 03                    1237 	.uleb128	3
      0005C9 08                    1238 	.uleb128	8
      0005CA 49                    1239 	.uleb128	73
      0005CB 13                    1240 	.uleb128	19
      0005CC 00                    1241 	.uleb128	0
      0005CD 00                    1242 	.uleb128	0
      0005CE 05                    1243 	.uleb128	5
      0005CF 2E                    1244 	.uleb128	46
      0005D0 01                    1245 	.db	1
      0005D1 01                    1246 	.uleb128	1
      0005D2 13                    1247 	.uleb128	19
      0005D3 03                    1248 	.uleb128	3
      0005D4 08                    1249 	.uleb128	8
      0005D5 11                    1250 	.uleb128	17
      0005D6 01                    1251 	.uleb128	1
      0005D7 12                    1252 	.uleb128	18
      0005D8 01                    1253 	.uleb128	1
      0005D9 3F                    1254 	.uleb128	63
      0005DA 0C                    1255 	.uleb128	12
      0005DB 40                    1256 	.uleb128	64
      0005DC 06                    1257 	.uleb128	6
      0005DD 49                    1258 	.uleb128	73
      0005DE 13                    1259 	.uleb128	19
      0005DF 00                    1260 	.uleb128	0
      0005E0 00                    1261 	.uleb128	0
      0005E1 01                    1262 	.uleb128	1
      0005E2 11                    1263 	.uleb128	17
      0005E3 01                    1264 	.db	1
      0005E4 03                    1265 	.uleb128	3
      0005E5 08                    1266 	.uleb128	8
      0005E6 10                    1267 	.uleb128	16
      0005E7 06                    1268 	.uleb128	6
      0005E8 13                    1269 	.uleb128	19
      0005E9 0B                    1270 	.uleb128	11
      0005EA 25                    1271 	.uleb128	37
      0005EB 08                    1272 	.uleb128	8
      0005EC 00                    1273 	.uleb128	0
      0005ED 00                    1274 	.uleb128	0
      0005EE 07                    1275 	.uleb128	7
      0005EF 0B                    1276 	.uleb128	11
      0005F0 00                    1277 	.db	0
      0005F1 11                    1278 	.uleb128	17
      0005F2 01                    1279 	.uleb128	1
      0005F3 12                    1280 	.uleb128	18
      0005F4 01                    1281 	.uleb128	1
      0005F5 00                    1282 	.uleb128	0
      0005F6 00                    1283 	.uleb128	0
      0005F7 04                    1284 	.uleb128	4
      0005F8 2E                    1285 	.uleb128	46
      0005F9 00                    1286 	.db	0
      0005FA 03                    1287 	.uleb128	3
      0005FB 08                    1288 	.uleb128	8
      0005FC 11                    1289 	.uleb128	17
      0005FD 01                    1290 	.uleb128	1
      0005FE 12                    1291 	.uleb128	18
      0005FF 01                    1292 	.uleb128	1
      000600 3F                    1293 	.uleb128	63
      000601 0C                    1294 	.uleb128	12
      000602 40                    1295 	.uleb128	64
      000603 06                    1296 	.uleb128	6
      000604 00                    1297 	.uleb128	0
      000605 00                    1298 	.uleb128	0
      000606 09                    1299 	.uleb128	9
      000607 2E                    1300 	.uleb128	46
      000608 01                    1301 	.db	1
      000609 03                    1302 	.uleb128	3
      00060A 08                    1303 	.uleb128	8
      00060B 11                    1304 	.uleb128	17
      00060C 01                    1305 	.uleb128	1
      00060D 12                    1306 	.uleb128	18
      00060E 01                    1307 	.uleb128	1
      00060F 3F                    1308 	.uleb128	63
      000610 0C                    1309 	.uleb128	12
      000611 40                    1310 	.uleb128	64
      000612 06                    1311 	.uleb128	6
      000613 00                    1312 	.uleb128	0
      000614 00                    1313 	.uleb128	0
      000615 02                    1314 	.uleb128	2
      000616 24                    1315 	.uleb128	36
      000617 00                    1316 	.db	0
      000618 03                    1317 	.uleb128	3
      000619 08                    1318 	.uleb128	8
      00061A 0B                    1319 	.uleb128	11
      00061B 0B                    1320 	.uleb128	11
      00061C 3E                    1321 	.uleb128	62
      00061D 0B                    1322 	.uleb128	11
      00061E 00                    1323 	.uleb128	0
      00061F 00                    1324 	.uleb128	0
      000620 00                    1325 	.uleb128	0
                                   1326 
                                   1327 	.area .debug_info (NOLOAD)
      003584 00 00 01 88           1328 	.dw	0,Ldebug_info_end-Ldebug_info_start
      003588                       1329 Ldebug_info_start:
      003588 00 02                 1330 	.dw	2
      00358A 00 00 05 A7           1331 	.dw	0,(Ldebug_abbrev)
      00358E 04                    1332 	.db	4
      00358F 01                    1333 	.uleb128	1
      003590 2E 2E 2F 53 50 4C 2F  1334 	.ascii "../SPL/src/stm8s_itc.c"
             73 72 63 2F 73 74 6D
             38 73 5F 69 74 63 2E
             63
      0035A6 00                    1335 	.db	0
      0035A7 00 00 20 46           1336 	.dw	0,(Ldebug_line_start+-4)
      0035AB 01                    1337 	.db	1
      0035AC 53 44 43 43 20 76 65  1338 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      0035C5 00                    1339 	.db	0
      0035C6 02                    1340 	.uleb128	2
      0035C7 75 6E 73 69 67 6E 65  1341 	.ascii "unsigned char"
             64 20 63 68 61 72
      0035D4 00                    1342 	.db	0
      0035D5 01                    1343 	.db	1
      0035D6 08                    1344 	.db	8
      0035D7 03                    1345 	.uleb128	3
      0035D8 49 54 43 5F 47 65 74  1346 	.ascii "ITC_GetCPUCC"
             43 50 55 43 43
      0035E4 00                    1347 	.db	0
      0035E5 00 00 95 D6           1348 	.dw	0,(_ITC_GetCPUCC)
      0035E9 00 00 95 D9           1349 	.dw	0,(XG$ITC_GetCPUCC$0$0+1)
      0035ED 01                    1350 	.db	1
      0035EE 00 00 2B B8           1351 	.dw	0,(Ldebug_loc_start+176)
      0035F2 00 00 00 42           1352 	.dw	0,66
      0035F6 04                    1353 	.uleb128	4
      0035F7 49 54 43 5F 44 65 49  1354 	.ascii "ITC_DeInit"
             6E 69 74
      003601 00                    1355 	.db	0
      003602 00 00 95 D9           1356 	.dw	0,(_ITC_DeInit)
      003606 00 00 95 FA           1357 	.dw	0,(XG$ITC_DeInit$0$0+1)
      00360A 01                    1358 	.db	1
      00360B 00 00 2B A4           1359 	.dw	0,(Ldebug_loc_start+156)
      00360F 03                    1360 	.uleb128	3
      003610 49 54 43 5F 47 65 74  1361 	.ascii "ITC_GetSoftIntStatus"
             53 6F 66 74 49 6E 74
             53 74 61 74 75 73
      003624 00                    1362 	.db	0
      003625 00 00 95 FA           1363 	.dw	0,(_ITC_GetSoftIntStatus)
      003629 00 00 96 00           1364 	.dw	0,(XG$ITC_GetSoftIntStatus$0$0+1)
      00362D 01                    1365 	.db	1
      00362E 00 00 2B 90           1366 	.dw	0,(Ldebug_loc_start+136)
      003632 00 00 00 42           1367 	.dw	0,66
      003636 05                    1368 	.uleb128	5
      003637 00 00 01 13           1369 	.dw	0,275
      00363B 49 54 43 5F 47 65 74  1370 	.ascii "ITC_GetSoftwarePriority"
             53 6F 66 74 77 61 72
             65 50 72 69 6F 72 69
             74 79
      003652 00                    1371 	.db	0
      003653 00 00 96 00           1372 	.dw	0,(_ITC_GetSoftwarePriority)
      003657 00 00 96 A8           1373 	.dw	0,(XG$ITC_GetSoftwarePriority$0$0+1)
      00365B 01                    1374 	.db	1
      00365C 00 00 2B 64           1375 	.dw	0,(Ldebug_loc_start+92)
      003660 00 00 00 42           1376 	.dw	0,66
      003664 06                    1377 	.uleb128	6
      003665 02                    1378 	.db	2
      003666 91                    1379 	.db	145
      003667 02                    1380 	.sleb128	2
      003668 49 72 71 4E 75 6D     1381 	.ascii "IrqNum"
      00366E 00                    1382 	.db	0
      00366F 00 00 00 42           1383 	.dw	0,66
      003673 07                    1384 	.uleb128	7
      003674 00 00 96 5F           1385 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$32)
      003678 00 00 96 9B           1386 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$53)
      00367C 08                    1387 	.uleb128	8
      00367D 01                    1388 	.db	1
      00367E 50                    1389 	.db	80
      00367F 56 61 6C 75 65        1390 	.ascii "Value"
      003684 00                    1391 	.db	0
      003685 00 00 00 42           1392 	.dw	0,66
      003689 08                    1393 	.uleb128	8
      00368A 02                    1394 	.db	2
      00368B 91                    1395 	.db	145
      00368C 7F                    1396 	.sleb128	-1
      00368D 4D 61 73 6B           1397 	.ascii "Mask"
      003691 00                    1398 	.db	0
      003692 00 00 00 42           1399 	.dw	0,66
      003696 00                    1400 	.uleb128	0
      003697 09                    1401 	.uleb128	9
      003698 49 54 43 5F 53 65 74  1402 	.ascii "ITC_SetSoftwarePriority"
             53 6F 66 74 77 61 72
             65 50 72 69 6F 72 69
             74 79
      0036AF 00                    1403 	.db	0
      0036B0 00 00 96 A8           1404 	.dw	0,(_ITC_SetSoftwarePriority)
      0036B4 00 00 97 98           1405 	.dw	0,(XG$ITC_SetSoftwarePriority$0$0+1)
      0036B8 01                    1406 	.db	1
      0036B9 00 00 2B 08           1407 	.dw	0,(Ldebug_loc_start)
      0036BD 06                    1408 	.uleb128	6
      0036BE 02                    1409 	.db	2
      0036BF 91                    1410 	.db	145
      0036C0 02                    1411 	.sleb128	2
      0036C1 49 72 71 4E 75 6D     1412 	.ascii "IrqNum"
      0036C7 00                    1413 	.db	0
      0036C8 00 00 00 42           1414 	.dw	0,66
      0036CC 06                    1415 	.uleb128	6
      0036CD 02                    1416 	.db	2
      0036CE 91                    1417 	.db	145
      0036CF 03                    1418 	.sleb128	3
      0036D0 50 72 69 6F 72 69 74  1419 	.ascii "PriorityValue"
             79 56 61 6C 75 65
      0036DD 00                    1420 	.db	0
      0036DE 00 00 00 42           1421 	.dw	0,66
      0036E2 07                    1422 	.uleb128	7
      0036E3 00 00 97 14           1423 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$71)
      0036E7 00 00 97 96           1424 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$99)
      0036EB 08                    1425 	.uleb128	8
      0036EC 02                    1426 	.db	2
      0036ED 91                    1427 	.db	145
      0036EE 7E                    1428 	.sleb128	-2
      0036EF 4D 61 73 6B           1429 	.ascii "Mask"
      0036F3 00                    1430 	.db	0
      0036F4 00 00 00 42           1431 	.dw	0,66
      0036F8 08                    1432 	.uleb128	8
      0036F9 02                    1433 	.db	2
      0036FA 91                    1434 	.db	145
      0036FB 7F                    1435 	.sleb128	-1
      0036FC 4E 65 77 50 72 69 6F  1436 	.ascii "NewPriority"
             72 69 74 79
      003707 00                    1437 	.db	0
      003708 00 00 00 42           1438 	.dw	0,66
      00370C 00                    1439 	.uleb128	0
      00370D 00                    1440 	.uleb128	0
      00370E 00                    1441 	.uleb128	0
      00370F 00                    1442 	.uleb128	0
      003710                       1443 Ldebug_info_end:
                                   1444 
                                   1445 	.area .debug_pubnames (NOLOAD)
      000A72 00 00 00 7F           1446 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000A76                       1447 Ldebug_pubnames_start:
      000A76 00 02                 1448 	.dw	2
      000A78 00 00 35 84           1449 	.dw	0,(Ldebug_info_start-4)
      000A7C 00 00 01 8C           1450 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000A80 00 00 00 53           1451 	.dw	0,83
      000A84 49 54 43 5F 47 65 74  1452 	.ascii "ITC_GetCPUCC"
             43 50 55 43 43
      000A90 00                    1453 	.db	0
      000A91 00 00 00 72           1454 	.dw	0,114
      000A95 49 54 43 5F 44 65 49  1455 	.ascii "ITC_DeInit"
             6E 69 74
      000A9F 00                    1456 	.db	0
      000AA0 00 00 00 8B           1457 	.dw	0,139
      000AA4 49 54 43 5F 47 65 74  1458 	.ascii "ITC_GetSoftIntStatus"
             53 6F 66 74 49 6E 74
             53 74 61 74 75 73
      000AB8 00                    1459 	.db	0
      000AB9 00 00 00 B2           1460 	.dw	0,178
      000ABD 49 54 43 5F 47 65 74  1461 	.ascii "ITC_GetSoftwarePriority"
             53 6F 66 74 77 61 72
             65 50 72 69 6F 72 69
             74 79
      000AD4 00                    1462 	.db	0
      000AD5 00 00 01 13           1463 	.dw	0,275
      000AD9 49 54 43 5F 53 65 74  1464 	.ascii "ITC_SetSoftwarePriority"
             53 6F 66 74 77 61 72
             65 50 72 69 6F 72 69
             74 79
      000AF0 00                    1465 	.db	0
      000AF1 00 00 00 00           1466 	.dw	0,0
      000AF5                       1467 Ldebug_pubnames_end:
                                   1468 
                                   1469 	.area .debug_frame (NOLOAD)
      002732 00 00                 1470 	.dw	0
      002734 00 0E                 1471 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      002736                       1472 Ldebug_CIE0_start:
      002736 FF FF                 1473 	.dw	0xffff
      002738 FF FF                 1474 	.dw	0xffff
      00273A 01                    1475 	.db	1
      00273B 00                    1476 	.db	0
      00273C 01                    1477 	.uleb128	1
      00273D 7F                    1478 	.sleb128	-1
      00273E 09                    1479 	.db	9
      00273F 0C                    1480 	.db	12
      002740 08                    1481 	.uleb128	8
      002741 02                    1482 	.uleb128	2
      002742 89                    1483 	.db	137
      002743 01                    1484 	.uleb128	1
      002744                       1485 Ldebug_CIE0_end:
      002744 00 00 00 3D           1486 	.dw	0,61
      002748 00 00 27 32           1487 	.dw	0,(Ldebug_CIE0_start-4)
      00274C 00 00 96 A8           1488 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$62)	;initial loc
      002750 00 00 00 F0           1489 	.dw	0,Sstm8s_itc$ITC_SetSoftwarePriority$104-Sstm8s_itc$ITC_SetSoftwarePriority$62
      002754 01                    1490 	.db	1
      002755 00 00 96 A8           1491 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$62)
      002759 0E                    1492 	.db	14
      00275A 02                    1493 	.uleb128	2
      00275B 01                    1494 	.db	1
      00275C 00 00 96 A9           1495 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$63)
      002760 0E                    1496 	.db	14
      002761 04                    1497 	.uleb128	4
      002762 01                    1498 	.db	1
      002763 00 00 96 B4           1499 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$65)
      002767 0E                    1500 	.db	14
      002768 05                    1501 	.uleb128	5
      002769 01                    1502 	.db	1
      00276A 00 00 96 BE           1503 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$66)
      00276E 0E                    1504 	.db	14
      00276F 04                    1505 	.uleb128	4
      002770 01                    1506 	.db	1
      002771 00 00 96 C4           1507 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$68)
      002775 0E                    1508 	.db	14
      002776 05                    1509 	.uleb128	5
      002777 01                    1510 	.db	1
      002778 00 00 96 CE           1511 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$69)
      00277C 0E                    1512 	.db	14
      00277D 04                    1513 	.uleb128	4
      00277E 01                    1514 	.db	1
      00277F 00 00 97 97           1515 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$102)
      002783 0E                    1516 	.db	14
      002784 02                    1517 	.uleb128	2
                                   1518 
                                   1519 	.area .debug_frame (NOLOAD)
      002785 00 00                 1520 	.dw	0
      002787 00 0E                 1521 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      002789                       1522 Ldebug_CIE1_start:
      002789 FF FF                 1523 	.dw	0xffff
      00278B FF FF                 1524 	.dw	0xffff
      00278D 01                    1525 	.db	1
      00278E 00                    1526 	.db	0
      00278F 01                    1527 	.uleb128	1
      002790 7F                    1528 	.sleb128	-1
      002791 09                    1529 	.db	9
      002792 0C                    1530 	.db	12
      002793 08                    1531 	.uleb128	8
      002794 02                    1532 	.uleb128	2
      002795 89                    1533 	.db	137
      002796 01                    1534 	.uleb128	1
      002797                       1535 Ldebug_CIE1_end:
      002797 00 00 00 21           1536 	.dw	0,33
      00279B 00 00 27 85           1537 	.dw	0,(Ldebug_CIE1_start-4)
      00279F 00 00 96 00           1538 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$27)	;initial loc
      0027A3 00 00 00 A8           1539 	.dw	0,Sstm8s_itc$ITC_GetSoftwarePriority$60-Sstm8s_itc$ITC_GetSoftwarePriority$27
      0027A7 01                    1540 	.db	1
      0027A8 00 00 96 00           1541 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$27)
      0027AC 0E                    1542 	.db	14
      0027AD 02                    1543 	.uleb128	2
      0027AE 01                    1544 	.db	1
      0027AF 00 00 96 01           1545 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$28)
      0027B3 0E                    1546 	.db	14
      0027B4 04                    1547 	.uleb128	4
      0027B5 01                    1548 	.db	1
      0027B6 00 00 96 A7           1549 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$58)
      0027BA 0E                    1550 	.db	14
      0027BB 02                    1551 	.uleb128	2
                                   1552 
                                   1553 	.area .debug_frame (NOLOAD)
      0027BC 00 00                 1554 	.dw	0
      0027BE 00 0E                 1555 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      0027C0                       1556 Ldebug_CIE2_start:
      0027C0 FF FF                 1557 	.dw	0xffff
      0027C2 FF FF                 1558 	.dw	0xffff
      0027C4 01                    1559 	.db	1
      0027C5 00                    1560 	.db	0
      0027C6 01                    1561 	.uleb128	1
      0027C7 7F                    1562 	.sleb128	-1
      0027C8 09                    1563 	.db	9
      0027C9 0C                    1564 	.db	12
      0027CA 08                    1565 	.uleb128	8
      0027CB 02                    1566 	.uleb128	2
      0027CC 89                    1567 	.db	137
      0027CD 01                    1568 	.uleb128	1
      0027CE                       1569 Ldebug_CIE2_end:
      0027CE 00 00 00 13           1570 	.dw	0,19
      0027D2 00 00 27 BC           1571 	.dw	0,(Ldebug_CIE2_start-4)
      0027D6 00 00 95 FA           1572 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$21)	;initial loc
      0027DA 00 00 00 06           1573 	.dw	0,Sstm8s_itc$ITC_GetSoftIntStatus$25-Sstm8s_itc$ITC_GetSoftIntStatus$21
      0027DE 01                    1574 	.db	1
      0027DF 00 00 95 FA           1575 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$21)
      0027E3 0E                    1576 	.db	14
      0027E4 02                    1577 	.uleb128	2
                                   1578 
                                   1579 	.area .debug_frame (NOLOAD)
      0027E5 00 00                 1580 	.dw	0
      0027E7 00 0E                 1581 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      0027E9                       1582 Ldebug_CIE3_start:
      0027E9 FF FF                 1583 	.dw	0xffff
      0027EB FF FF                 1584 	.dw	0xffff
      0027ED 01                    1585 	.db	1
      0027EE 00                    1586 	.db	0
      0027EF 01                    1587 	.uleb128	1
      0027F0 7F                    1588 	.sleb128	-1
      0027F1 09                    1589 	.db	9
      0027F2 0C                    1590 	.db	12
      0027F3 08                    1591 	.uleb128	8
      0027F4 02                    1592 	.uleb128	2
      0027F5 89                    1593 	.db	137
      0027F6 01                    1594 	.uleb128	1
      0027F7                       1595 Ldebug_CIE3_end:
      0027F7 00 00 00 13           1596 	.dw	0,19
      0027FB 00 00 27 E5           1597 	.dw	0,(Ldebug_CIE3_start-4)
      0027FF 00 00 95 D9           1598 	.dw	0,(Sstm8s_itc$ITC_DeInit$8)	;initial loc
      002803 00 00 00 21           1599 	.dw	0,Sstm8s_itc$ITC_DeInit$19-Sstm8s_itc$ITC_DeInit$8
      002807 01                    1600 	.db	1
      002808 00 00 95 D9           1601 	.dw	0,(Sstm8s_itc$ITC_DeInit$8)
      00280C 0E                    1602 	.db	14
      00280D 02                    1603 	.uleb128	2
                                   1604 
                                   1605 	.area .debug_frame (NOLOAD)
      00280E 00 00                 1606 	.dw	0
      002810 00 0E                 1607 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      002812                       1608 Ldebug_CIE4_start:
      002812 FF FF                 1609 	.dw	0xffff
      002814 FF FF                 1610 	.dw	0xffff
      002816 01                    1611 	.db	1
      002817 00                    1612 	.db	0
      002818 01                    1613 	.uleb128	1
      002819 7F                    1614 	.sleb128	-1
      00281A 09                    1615 	.db	9
      00281B 0C                    1616 	.db	12
      00281C 08                    1617 	.uleb128	8
      00281D 02                    1618 	.uleb128	2
      00281E 89                    1619 	.db	137
      00281F 01                    1620 	.uleb128	1
      002820                       1621 Ldebug_CIE4_end:
      002820 00 00 00 13           1622 	.dw	0,19
      002824 00 00 28 0E           1623 	.dw	0,(Ldebug_CIE4_start-4)
      002828 00 00 95 D6           1624 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$1)	;initial loc
      00282C 00 00 00 03           1625 	.dw	0,Sstm8s_itc$ITC_GetCPUCC$6-Sstm8s_itc$ITC_GetCPUCC$1
      002830 01                    1626 	.db	1
      002831 00 00 95 D6           1627 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$1)
      002835 0E                    1628 	.db	14
      002836 02                    1629 	.uleb128	2

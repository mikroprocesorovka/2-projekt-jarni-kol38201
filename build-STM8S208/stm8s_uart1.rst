                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_uart1
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CLK_GetClockFreq
                                     12 	.globl _UART1_DeInit
                                     13 	.globl _UART1_Init
                                     14 	.globl _UART1_Cmd
                                     15 	.globl _UART1_ITConfig
                                     16 	.globl _UART1_HalfDuplexCmd
                                     17 	.globl _UART1_IrDAConfig
                                     18 	.globl _UART1_IrDACmd
                                     19 	.globl _UART1_LINBreakDetectionConfig
                                     20 	.globl _UART1_LINCmd
                                     21 	.globl _UART1_SmartCardCmd
                                     22 	.globl _UART1_SmartCardNACKCmd
                                     23 	.globl _UART1_WakeUpConfig
                                     24 	.globl _UART1_ReceiverWakeUpCmd
                                     25 	.globl _UART1_ReceiveData8
                                     26 	.globl _UART1_ReceiveData9
                                     27 	.globl _UART1_SendData8
                                     28 	.globl _UART1_SendData9
                                     29 	.globl _UART1_SendBreak
                                     30 	.globl _UART1_SetAddress
                                     31 	.globl _UART1_SetGuardTime
                                     32 	.globl _UART1_SetPrescaler
                                     33 	.globl _UART1_GetFlagStatus
                                     34 	.globl _UART1_ClearFlag
                                     35 	.globl _UART1_GetITStatus
                                     36 	.globl _UART1_ClearITPendingBit
                                     37 ;--------------------------------------------------------
                                     38 ; ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area DATA
                                     41 ;--------------------------------------------------------
                                     42 ; ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area INITIALIZED
                                     45 ;--------------------------------------------------------
                                     46 ; absolute external ram data
                                     47 ;--------------------------------------------------------
                                     48 	.area DABS (ABS)
                                     49 
                                     50 ; default segment ordering for linker
                                     51 	.area HOME
                                     52 	.area GSINIT
                                     53 	.area GSFINAL
                                     54 	.area CONST
                                     55 	.area INITIALIZER
                                     56 	.area CODE
                                     57 
                                     58 ;--------------------------------------------------------
                                     59 ; global & static initialisations
                                     60 ;--------------------------------------------------------
                                     61 	.area HOME
                                     62 	.area GSINIT
                                     63 	.area GSFINAL
                                     64 	.area GSINIT
                                     65 ;--------------------------------------------------------
                                     66 ; Home
                                     67 ;--------------------------------------------------------
                                     68 	.area HOME
                                     69 	.area HOME
                                     70 ;--------------------------------------------------------
                                     71 ; code
                                     72 ;--------------------------------------------------------
                                     73 	.area CODE
                           000000    74 	Sstm8s_uart1$UART1_DeInit$0 ==.
                                     75 ;	../SPL/src/stm8s_uart1.c: 53: void UART1_DeInit(void)
                                     76 ; genLabel
                                     77 ;	-----------------------------------------
                                     78 ;	 function UART1_DeInit
                                     79 ;	-----------------------------------------
                                     80 ;	Register assignment is optimal.
                                     81 ;	Stack space usage: 0 bytes.
      009798                         82 _UART1_DeInit:
                           000000    83 	Sstm8s_uart1$UART1_DeInit$1 ==.
                           000000    84 	Sstm8s_uart1$UART1_DeInit$2 ==.
                                     85 ;	../SPL/src/stm8s_uart1.c: 57: (void)UART1->SR;
                                     86 ; genPointerGet
                                     87 ; Dummy read
      009798 C6 52 30         [ 1]   88 	ld	a, 0x5230
                           000003    89 	Sstm8s_uart1$UART1_DeInit$3 ==.
                                     90 ;	../SPL/src/stm8s_uart1.c: 58: (void)UART1->DR;
                                     91 ; genPointerGet
                                     92 ; Dummy read
      00979B C6 52 31         [ 1]   93 	ld	a, 0x5231
                           000006    94 	Sstm8s_uart1$UART1_DeInit$4 ==.
                                     95 ;	../SPL/src/stm8s_uart1.c: 60: UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
                                     96 ; genPointerSet
      00979E 35 00 52 33      [ 1]   97 	mov	0x5233+0, #0x00
                           00000A    98 	Sstm8s_uart1$UART1_DeInit$5 ==.
                                     99 ;	../SPL/src/stm8s_uart1.c: 61: UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
                                    100 ; genPointerSet
      0097A2 35 00 52 32      [ 1]  101 	mov	0x5232+0, #0x00
                           00000E   102 	Sstm8s_uart1$UART1_DeInit$6 ==.
                                    103 ;	../SPL/src/stm8s_uart1.c: 63: UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
                                    104 ; genPointerSet
      0097A6 35 00 52 34      [ 1]  105 	mov	0x5234+0, #0x00
                           000012   106 	Sstm8s_uart1$UART1_DeInit$7 ==.
                                    107 ;	../SPL/src/stm8s_uart1.c: 64: UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
                                    108 ; genPointerSet
      0097AA 35 00 52 35      [ 1]  109 	mov	0x5235+0, #0x00
                           000016   110 	Sstm8s_uart1$UART1_DeInit$8 ==.
                                    111 ;	../SPL/src/stm8s_uart1.c: 65: UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
                                    112 ; genPointerSet
      0097AE 35 00 52 36      [ 1]  113 	mov	0x5236+0, #0x00
                           00001A   114 	Sstm8s_uart1$UART1_DeInit$9 ==.
                                    115 ;	../SPL/src/stm8s_uart1.c: 66: UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
                                    116 ; genPointerSet
      0097B2 35 00 52 37      [ 1]  117 	mov	0x5237+0, #0x00
                           00001E   118 	Sstm8s_uart1$UART1_DeInit$10 ==.
                                    119 ;	../SPL/src/stm8s_uart1.c: 67: UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
                                    120 ; genPointerSet
      0097B6 35 00 52 38      [ 1]  121 	mov	0x5238+0, #0x00
                           000022   122 	Sstm8s_uart1$UART1_DeInit$11 ==.
                                    123 ;	../SPL/src/stm8s_uart1.c: 69: UART1->GTR = UART1_GTR_RESET_VALUE;
                                    124 ; genPointerSet
      0097BA 35 00 52 39      [ 1]  125 	mov	0x5239+0, #0x00
                           000026   126 	Sstm8s_uart1$UART1_DeInit$12 ==.
                                    127 ;	../SPL/src/stm8s_uart1.c: 70: UART1->PSCR = UART1_PSCR_RESET_VALUE;
                                    128 ; genPointerSet
      0097BE 35 00 52 3A      [ 1]  129 	mov	0x523a+0, #0x00
                                    130 ; genLabel
      0097C2                        131 00101$:
                           00002A   132 	Sstm8s_uart1$UART1_DeInit$13 ==.
                                    133 ;	../SPL/src/stm8s_uart1.c: 71: }
                                    134 ; genEndFunction
                           00002A   135 	Sstm8s_uart1$UART1_DeInit$14 ==.
                           00002A   136 	XG$UART1_DeInit$0$0 ==.
      0097C2 81               [ 4]  137 	ret
                           00002B   138 	Sstm8s_uart1$UART1_DeInit$15 ==.
                           00002B   139 	Sstm8s_uart1$UART1_Init$16 ==.
                                    140 ;	../SPL/src/stm8s_uart1.c: 90: void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
                                    141 ; genLabel
                                    142 ;	-----------------------------------------
                                    143 ;	 function UART1_Init
                                    144 ;	-----------------------------------------
                                    145 ;	Register assignment might be sub-optimal.
                                    146 ;	Stack space usage: 17 bytes.
      0097C3                        147 _UART1_Init:
                           00002B   148 	Sstm8s_uart1$UART1_Init$17 ==.
      0097C3 52 11            [ 2]  149 	sub	sp, #17
                           00002D   150 	Sstm8s_uart1$UART1_Init$18 ==.
                           00002D   151 	Sstm8s_uart1$UART1_Init$19 ==.
                                    152 ;	../SPL/src/stm8s_uart1.c: 105: UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
                                    153 ; genPointerGet
      0097C5 C6 52 34         [ 1]  154 	ld	a, 0x5234
                                    155 ; genAnd
      0097C8 A4 EF            [ 1]  156 	and	a, #0xef
                                    157 ; genPointerSet
      0097CA C7 52 34         [ 1]  158 	ld	0x5234, a
                           000035   159 	Sstm8s_uart1$UART1_Init$20 ==.
                                    160 ;	../SPL/src/stm8s_uart1.c: 108: UART1->CR1 |= (uint8_t)WordLength;
                                    161 ; genPointerGet
      0097CD C6 52 34         [ 1]  162 	ld	a, 0x5234
                                    163 ; genOr
      0097D0 1A 18            [ 1]  164 	or	a, (0x18, sp)
                                    165 ; genPointerSet
      0097D2 C7 52 34         [ 1]  166 	ld	0x5234, a
                           00003D   167 	Sstm8s_uart1$UART1_Init$21 ==.
                                    168 ;	../SPL/src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
                                    169 ; genPointerGet
      0097D5 C6 52 36         [ 1]  170 	ld	a, 0x5236
                                    171 ; genAnd
      0097D8 A4 CF            [ 1]  172 	and	a, #0xcf
                                    173 ; genPointerSet
      0097DA C7 52 36         [ 1]  174 	ld	0x5236, a
                           000045   175 	Sstm8s_uart1$UART1_Init$22 ==.
                                    176 ;	../SPL/src/stm8s_uart1.c: 113: UART1->CR3 |= (uint8_t)StopBits;  
                                    177 ; genPointerGet
      0097DD C6 52 36         [ 1]  178 	ld	a, 0x5236
                                    179 ; genOr
      0097E0 1A 19            [ 1]  180 	or	a, (0x19, sp)
                                    181 ; genPointerSet
      0097E2 C7 52 36         [ 1]  182 	ld	0x5236, a
                           00004D   183 	Sstm8s_uart1$UART1_Init$23 ==.
                                    184 ;	../SPL/src/stm8s_uart1.c: 116: UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
                                    185 ; genPointerGet
      0097E5 C6 52 34         [ 1]  186 	ld	a, 0x5234
                                    187 ; genAnd
      0097E8 A4 F9            [ 1]  188 	and	a, #0xf9
                                    189 ; genPointerSet
      0097EA C7 52 34         [ 1]  190 	ld	0x5234, a
                           000055   191 	Sstm8s_uart1$UART1_Init$24 ==.
                                    192 ;	../SPL/src/stm8s_uart1.c: 118: UART1->CR1 |= (uint8_t)Parity;  
                                    193 ; genPointerGet
      0097ED C6 52 34         [ 1]  194 	ld	a, 0x5234
                                    195 ; genOr
      0097F0 1A 1A            [ 1]  196 	or	a, (0x1a, sp)
                                    197 ; genPointerSet
      0097F2 C7 52 34         [ 1]  198 	ld	0x5234, a
                           00005D   199 	Sstm8s_uart1$UART1_Init$25 ==.
                                    200 ;	../SPL/src/stm8s_uart1.c: 121: UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
                                    201 ; genPointerGet
                                    202 ; Dummy read
      0097F5 C6 52 32         [ 1]  203 	ld	a, 0x5232
                                    204 ; genPointerSet
      0097F8 35 00 52 32      [ 1]  205 	mov	0x5232+0, #0x00
                           000064   206 	Sstm8s_uart1$UART1_Init$26 ==.
                                    207 ;	../SPL/src/stm8s_uart1.c: 123: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
                                    208 ; genPointerGet
      0097FC C6 52 33         [ 1]  209 	ld	a, 0x5233
                                    210 ; genAnd
      0097FF A4 0F            [ 1]  211 	and	a, #0x0f
                                    212 ; genPointerSet
      009801 C7 52 33         [ 1]  213 	ld	0x5233, a
                           00006C   214 	Sstm8s_uart1$UART1_Init$27 ==.
                                    215 ;	../SPL/src/stm8s_uart1.c: 125: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
                                    216 ; genPointerGet
      009804 C6 52 33         [ 1]  217 	ld	a, 0x5233
                                    218 ; genAnd
      009807 A4 F0            [ 1]  219 	and	a, #0xf0
                                    220 ; genPointerSet
      009809 C7 52 33         [ 1]  221 	ld	0x5233, a
                           000074   222 	Sstm8s_uart1$UART1_Init$28 ==.
                                    223 ;	../SPL/src/stm8s_uart1.c: 128: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
                                    224 ; genCall
      00980C CD 93 7A         [ 4]  225 	call	_CLK_GetClockFreq
      00980F 1F 10            [ 2]  226 	ldw	(0x10, sp), x
                                    227 ; genLeftShift
      009811 1E 14            [ 2]  228 	ldw	x, (0x14, sp)
      009813 1F 0A            [ 2]  229 	ldw	(0x0a, sp), x
      009815 1E 16            [ 2]  230 	ldw	x, (0x16, sp)
      009817 A6 04            [ 1]  231 	ld	a, #0x04
      009819                        232 00127$:
      009819 58               [ 2]  233 	sllw	x
      00981A 09 0B            [ 1]  234 	rlc	(0x0b, sp)
      00981C 09 0A            [ 1]  235 	rlc	(0x0a, sp)
      00981E 4A               [ 1]  236 	dec	a
      00981F 26 F8            [ 1]  237 	jrne	00127$
      009821                        238 00128$:
      009821 1F 0C            [ 2]  239 	ldw	(0x0c, sp), x
                                    240 ; genIPush
      009823 1E 0C            [ 2]  241 	ldw	x, (0x0c, sp)
      009825 89               [ 2]  242 	pushw	x
                           00008E   243 	Sstm8s_uart1$UART1_Init$29 ==.
      009826 1E 0C            [ 2]  244 	ldw	x, (0x0c, sp)
      009828 89               [ 2]  245 	pushw	x
                           000091   246 	Sstm8s_uart1$UART1_Init$30 ==.
                                    247 ; genIPush
      009829 1E 14            [ 2]  248 	ldw	x, (0x14, sp)
      00982B 89               [ 2]  249 	pushw	x
                           000094   250 	Sstm8s_uart1$UART1_Init$31 ==.
      00982C 90 89            [ 2]  251 	pushw	y
                           000096   252 	Sstm8s_uart1$UART1_Init$32 ==.
                                    253 ; genCall
      00982E CD A4 48         [ 4]  254 	call	__divulong
      009831 5B 08            [ 2]  255 	addw	sp, #8
                           00009B   256 	Sstm8s_uart1$UART1_Init$33 ==.
      009833 1F 10            [ 2]  257 	ldw	(0x10, sp), x
      009835 17 0E            [ 2]  258 	ldw	(0x0e, sp), y
                                    259 ; genAssign
      009837 16 10            [ 2]  260 	ldw	y, (0x10, sp)
      009839 17 03            [ 2]  261 	ldw	(0x03, sp), y
      00983B 16 0E            [ 2]  262 	ldw	y, (0x0e, sp)
      00983D 17 01            [ 2]  263 	ldw	(0x01, sp), y
                           0000A7   264 	Sstm8s_uart1$UART1_Init$34 ==.
                                    265 ;	../SPL/src/stm8s_uart1.c: 129: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
                                    266 ; genCall
      00983F CD 93 7A         [ 4]  267 	call	_CLK_GetClockFreq
      009842 1F 10            [ 2]  268 	ldw	(0x10, sp), x
      009844 17 0E            [ 2]  269 	ldw	(0x0e, sp), y
                                    270 ; genIPush
      009846 1E 10            [ 2]  271 	ldw	x, (0x10, sp)
      009848 89               [ 2]  272 	pushw	x
                           0000B1   273 	Sstm8s_uart1$UART1_Init$35 ==.
      009849 1E 10            [ 2]  274 	ldw	x, (0x10, sp)
      00984B 89               [ 2]  275 	pushw	x
                           0000B4   276 	Sstm8s_uart1$UART1_Init$36 ==.
                                    277 ; genIPush
      00984C 4B 64            [ 1]  278 	push	#0x64
                           0000B6   279 	Sstm8s_uart1$UART1_Init$37 ==.
      00984E 5F               [ 1]  280 	clrw	x
      00984F 89               [ 2]  281 	pushw	x
                           0000B8   282 	Sstm8s_uart1$UART1_Init$38 ==.
      009850 4B 00            [ 1]  283 	push	#0x00
                           0000BA   284 	Sstm8s_uart1$UART1_Init$39 ==.
                                    285 ; genCall
      009852 CD A4 C6         [ 4]  286 	call	__mullong
      009855 5B 08            [ 2]  287 	addw	sp, #8
                           0000BF   288 	Sstm8s_uart1$UART1_Init$40 ==.
      009857 1F 10            [ 2]  289 	ldw	(0x10, sp), x
                                    290 ; genIPush
      009859 1E 0C            [ 2]  291 	ldw	x, (0x0c, sp)
      00985B 89               [ 2]  292 	pushw	x
                           0000C4   293 	Sstm8s_uart1$UART1_Init$41 ==.
      00985C 1E 0C            [ 2]  294 	ldw	x, (0x0c, sp)
      00985E 89               [ 2]  295 	pushw	x
                           0000C7   296 	Sstm8s_uart1$UART1_Init$42 ==.
                                    297 ; genIPush
      00985F 1E 14            [ 2]  298 	ldw	x, (0x14, sp)
      009861 89               [ 2]  299 	pushw	x
                           0000CA   300 	Sstm8s_uart1$UART1_Init$43 ==.
      009862 90 89            [ 2]  301 	pushw	y
                           0000CC   302 	Sstm8s_uart1$UART1_Init$44 ==.
                                    303 ; genCall
      009864 CD A4 48         [ 4]  304 	call	__divulong
      009867 5B 08            [ 2]  305 	addw	sp, #8
                           0000D1   306 	Sstm8s_uart1$UART1_Init$45 ==.
                                    307 ; genAssign
      009869 1F 07            [ 2]  308 	ldw	(0x07, sp), x
      00986B 17 05            [ 2]  309 	ldw	(0x05, sp), y
                           0000D5   310 	Sstm8s_uart1$UART1_Init$46 ==.
                                    311 ;	../SPL/src/stm8s_uart1.c: 131: UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
                                    312 ; genPointerGet
      00986D C6 52 33         [ 1]  313 	ld	a, 0x5233
      009870 6B 09            [ 1]  314 	ld	(0x09, sp), a
                                    315 ; genIPush
      009872 1E 03            [ 2]  316 	ldw	x, (0x03, sp)
      009874 89               [ 2]  317 	pushw	x
                           0000DD   318 	Sstm8s_uart1$UART1_Init$47 ==.
      009875 1E 03            [ 2]  319 	ldw	x, (0x03, sp)
      009877 89               [ 2]  320 	pushw	x
                           0000E0   321 	Sstm8s_uart1$UART1_Init$48 ==.
                                    322 ; genIPush
      009878 4B 64            [ 1]  323 	push	#0x64
                           0000E2   324 	Sstm8s_uart1$UART1_Init$49 ==.
      00987A 5F               [ 1]  325 	clrw	x
      00987B 89               [ 2]  326 	pushw	x
                           0000E4   327 	Sstm8s_uart1$UART1_Init$50 ==.
      00987C 4B 00            [ 1]  328 	push	#0x00
                           0000E6   329 	Sstm8s_uart1$UART1_Init$51 ==.
                                    330 ; genCall
      00987E CD A4 C6         [ 4]  331 	call	__mullong
      009881 5B 08            [ 2]  332 	addw	sp, #8
                           0000EB   333 	Sstm8s_uart1$UART1_Init$52 ==.
      009883 1F 0C            [ 2]  334 	ldw	(0x0c, sp), x
      009885 17 0A            [ 2]  335 	ldw	(0x0a, sp), y
                                    336 ; genMinus
      009887 1E 07            [ 2]  337 	ldw	x, (0x07, sp)
      009889 72 F0 0C         [ 2]  338 	subw	x, (0x0c, sp)
      00988C 1F 10            [ 2]  339 	ldw	(0x10, sp), x
      00988E 7B 06            [ 1]  340 	ld	a, (0x06, sp)
      009890 12 0B            [ 1]  341 	sbc	a, (0x0b, sp)
      009892 6B 0F            [ 1]  342 	ld	(0x0f, sp), a
      009894 7B 05            [ 1]  343 	ld	a, (0x05, sp)
      009896 12 0A            [ 1]  344 	sbc	a, (0x0a, sp)
      009898 6B 0E            [ 1]  345 	ld	(0x0e, sp), a
                                    346 ; genLeftShift
      00989A 1E 10            [ 2]  347 	ldw	x, (0x10, sp)
      00989C 16 0E            [ 2]  348 	ldw	y, (0x0e, sp)
      00989E A6 04            [ 1]  349 	ld	a, #0x04
      0098A0                        350 00129$:
      0098A0 58               [ 2]  351 	sllw	x
      0098A1 90 59            [ 2]  352 	rlcw	y
      0098A3 4A               [ 1]  353 	dec	a
      0098A4 26 FA            [ 1]  354 	jrne	00129$
      0098A6                        355 00130$:
                                    356 ; genIPush
      0098A6 4B 64            [ 1]  357 	push	#0x64
                           000110   358 	Sstm8s_uart1$UART1_Init$53 ==.
      0098A8 4B 00            [ 1]  359 	push	#0x00
                           000112   360 	Sstm8s_uart1$UART1_Init$54 ==.
      0098AA 4B 00            [ 1]  361 	push	#0x00
                           000114   362 	Sstm8s_uart1$UART1_Init$55 ==.
      0098AC 4B 00            [ 1]  363 	push	#0x00
                           000116   364 	Sstm8s_uart1$UART1_Init$56 ==.
                                    365 ; genIPush
      0098AE 89               [ 2]  366 	pushw	x
                           000117   367 	Sstm8s_uart1$UART1_Init$57 ==.
      0098AF 90 89            [ 2]  368 	pushw	y
                           000119   369 	Sstm8s_uart1$UART1_Init$58 ==.
                                    370 ; genCall
      0098B1 CD A4 48         [ 4]  371 	call	__divulong
      0098B4 5B 08            [ 2]  372 	addw	sp, #8
                           00011E   373 	Sstm8s_uart1$UART1_Init$59 ==.
      0098B6 9F               [ 1]  374 	ld	a, xl
                                    375 ; genCast
                                    376 ; genAssign
                                    377 ; genAnd
      0098B7 A4 0F            [ 1]  378 	and	a, #0x0f
                                    379 ; genOr
      0098B9 1A 09            [ 1]  380 	or	a, (0x09, sp)
                                    381 ; genPointerSet
      0098BB C7 52 33         [ 1]  382 	ld	0x5233, a
                           000126   383 	Sstm8s_uart1$UART1_Init$60 ==.
                                    384 ;	../SPL/src/stm8s_uart1.c: 133: UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
                                    385 ; genPointerGet
      0098BE C6 52 33         [ 1]  386 	ld	a, 0x5233
      0098C1 6B 11            [ 1]  387 	ld	(0x11, sp), a
                                    388 ; genCast
                                    389 ; genAssign
      0098C3 1E 03            [ 2]  390 	ldw	x, (0x03, sp)
                                    391 ; genRightShiftLiteral
      0098C5 A6 10            [ 1]  392 	ld	a, #0x10
      0098C7 62               [ 2]  393 	div	x, a
                                    394 ; genCast
                                    395 ; genAssign
      0098C8 9F               [ 1]  396 	ld	a, xl
                                    397 ; genAnd
      0098C9 A4 F0            [ 1]  398 	and	a, #0xf0
                                    399 ; genOr
      0098CB 1A 11            [ 1]  400 	or	a, (0x11, sp)
                                    401 ; genPointerSet
      0098CD C7 52 33         [ 1]  402 	ld	0x5233, a
                           000138   403 	Sstm8s_uart1$UART1_Init$61 ==.
                                    404 ;	../SPL/src/stm8s_uart1.c: 135: UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
                                    405 ; genPointerGet
      0098D0 C6 52 32         [ 1]  406 	ld	a, 0x5232
      0098D3 6B 11            [ 1]  407 	ld	(0x11, sp), a
                                    408 ; genCast
                                    409 ; genAssign
      0098D5 7B 04            [ 1]  410 	ld	a, (0x04, sp)
                                    411 ; genOr
      0098D7 1A 11            [ 1]  412 	or	a, (0x11, sp)
                                    413 ; genPointerSet
      0098D9 C7 52 32         [ 1]  414 	ld	0x5232, a
                           000144   415 	Sstm8s_uart1$UART1_Init$62 ==.
                                    416 ;	../SPL/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
                                    417 ; genPointerGet
      0098DC C6 52 35         [ 1]  418 	ld	a, 0x5235
                                    419 ; genAnd
      0098DF A4 F3            [ 1]  420 	and	a, #0xf3
                                    421 ; genPointerSet
      0098E1 C7 52 35         [ 1]  422 	ld	0x5235, a
                           00014C   423 	Sstm8s_uart1$UART1_Init$63 ==.
                                    424 ;	../SPL/src/stm8s_uart1.c: 140: UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
                                    425 ; genPointerGet
      0098E4 C6 52 36         [ 1]  426 	ld	a, 0x5236
                                    427 ; genAnd
      0098E7 A4 F8            [ 1]  428 	and	a, #0xf8
                                    429 ; genPointerSet
      0098E9 C7 52 36         [ 1]  430 	ld	0x5236, a
                           000154   431 	Sstm8s_uart1$UART1_Init$64 ==.
                                    432 ;	../SPL/src/stm8s_uart1.c: 142: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
                                    433 ; genPointerGet
      0098EC C6 52 36         [ 1]  434 	ld	a, 0x5236
      0098EF 6B 11            [ 1]  435 	ld	(0x11, sp), a
                                    436 ; genAnd
      0098F1 7B 1B            [ 1]  437 	ld	a, (0x1b, sp)
      0098F3 A4 07            [ 1]  438 	and	a, #0x07
                                    439 ; genOr
      0098F5 1A 11            [ 1]  440 	or	a, (0x11, sp)
                                    441 ; genPointerSet
      0098F7 C7 52 36         [ 1]  442 	ld	0x5236, a
                           000162   443 	Sstm8s_uart1$UART1_Init$65 ==.
                                    444 ;	../SPL/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
                                    445 ; genPointerGet
      0098FA C6 52 35         [ 1]  446 	ld	a, 0x5235
                           000165   447 	Sstm8s_uart1$UART1_Init$66 ==.
                                    448 ;	../SPL/src/stm8s_uart1.c: 145: if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
                                    449 ; genAnd
      0098FD 88               [ 1]  450 	push	a
                           000166   451 	Sstm8s_uart1$UART1_Init$67 ==.
      0098FE 7B 1D            [ 1]  452 	ld	a, (0x1d, sp)
      009900 A5 04            [ 1]  453 	bcp	a, #0x04
      009902 84               [ 1]  454 	pop	a
                           00016B   455 	Sstm8s_uart1$UART1_Init$68 ==.
      009903 26 03            [ 1]  456 	jrne	00131$
      009905 CC 99 10         [ 2]  457 	jp	00102$
      009908                        458 00131$:
                                    459 ; skipping generated iCode
                           000170   460 	Sstm8s_uart1$UART1_Init$69 ==.
                           000170   461 	Sstm8s_uart1$UART1_Init$70 ==.
                                    462 ;	../SPL/src/stm8s_uart1.c: 148: UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
                                    463 ; genOr
      009908 AA 08            [ 1]  464 	or	a, #0x08
                                    465 ; genPointerSet
      00990A C7 52 35         [ 1]  466 	ld	0x5235, a
                           000175   467 	Sstm8s_uart1$UART1_Init$71 ==.
                                    468 ; genGoto
      00990D CC 99 15         [ 2]  469 	jp	00103$
                                    470 ; genLabel
      009910                        471 00102$:
                           000178   472 	Sstm8s_uart1$UART1_Init$72 ==.
                           000178   473 	Sstm8s_uart1$UART1_Init$73 ==.
                                    474 ;	../SPL/src/stm8s_uart1.c: 153: UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
                                    475 ; genAnd
      009910 A4 F7            [ 1]  476 	and	a, #0xf7
                                    477 ; genPointerSet
      009912 C7 52 35         [ 1]  478 	ld	0x5235, a
                           00017D   479 	Sstm8s_uart1$UART1_Init$74 ==.
                                    480 ; genLabel
      009915                        481 00103$:
                           00017D   482 	Sstm8s_uart1$UART1_Init$75 ==.
                                    483 ;	../SPL/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
                                    484 ; genPointerGet
      009915 C6 52 35         [ 1]  485 	ld	a, 0x5235
                           000180   486 	Sstm8s_uart1$UART1_Init$76 ==.
                                    487 ;	../SPL/src/stm8s_uart1.c: 155: if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
                                    488 ; genAnd
      009918 88               [ 1]  489 	push	a
                           000181   490 	Sstm8s_uart1$UART1_Init$77 ==.
      009919 7B 1D            [ 1]  491 	ld	a, (0x1d, sp)
      00991B A5 08            [ 1]  492 	bcp	a, #0x08
      00991D 84               [ 1]  493 	pop	a
                           000186   494 	Sstm8s_uart1$UART1_Init$78 ==.
      00991E 26 03            [ 1]  495 	jrne	00132$
      009920 CC 99 2B         [ 2]  496 	jp	00105$
      009923                        497 00132$:
                                    498 ; skipping generated iCode
                           00018B   499 	Sstm8s_uart1$UART1_Init$79 ==.
                           00018B   500 	Sstm8s_uart1$UART1_Init$80 ==.
                                    501 ;	../SPL/src/stm8s_uart1.c: 158: UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
                                    502 ; genOr
      009923 AA 04            [ 1]  503 	or	a, #0x04
                                    504 ; genPointerSet
      009925 C7 52 35         [ 1]  505 	ld	0x5235, a
                           000190   506 	Sstm8s_uart1$UART1_Init$81 ==.
                                    507 ; genGoto
      009928 CC 99 30         [ 2]  508 	jp	00106$
                                    509 ; genLabel
      00992B                        510 00105$:
                           000193   511 	Sstm8s_uart1$UART1_Init$82 ==.
                           000193   512 	Sstm8s_uart1$UART1_Init$83 ==.
                                    513 ;	../SPL/src/stm8s_uart1.c: 163: UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
                                    514 ; genAnd
      00992B A4 FB            [ 1]  515 	and	a, #0xfb
                                    516 ; genPointerSet
      00992D C7 52 35         [ 1]  517 	ld	0x5235, a
                           000198   518 	Sstm8s_uart1$UART1_Init$84 ==.
                                    519 ; genLabel
      009930                        520 00106$:
                           000198   521 	Sstm8s_uart1$UART1_Init$85 ==.
                                    522 ;	../SPL/src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
                                    523 ; genPointerGet
      009930 C6 52 36         [ 1]  524 	ld	a, 0x5236
                           00019B   525 	Sstm8s_uart1$UART1_Init$86 ==.
                                    526 ;	../SPL/src/stm8s_uart1.c: 167: if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
                                    527 ; genAnd
      009933 0D 1B            [ 1]  528 	tnz	(0x1b, sp)
      009935 2B 03            [ 1]  529 	jrmi	00133$
      009937 CC 99 42         [ 2]  530 	jp	00108$
      00993A                        531 00133$:
                                    532 ; skipping generated iCode
                           0001A2   533 	Sstm8s_uart1$UART1_Init$87 ==.
                           0001A2   534 	Sstm8s_uart1$UART1_Init$88 ==.
                                    535 ;	../SPL/src/stm8s_uart1.c: 170: UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
                                    536 ; genAnd
      00993A A4 F7            [ 1]  537 	and	a, #0xf7
                                    538 ; genPointerSet
      00993C C7 52 36         [ 1]  539 	ld	0x5236, a
                           0001A7   540 	Sstm8s_uart1$UART1_Init$89 ==.
                                    541 ; genGoto
      00993F CC 99 4F         [ 2]  542 	jp	00110$
                                    543 ; genLabel
      009942                        544 00108$:
                           0001AA   545 	Sstm8s_uart1$UART1_Init$90 ==.
                           0001AA   546 	Sstm8s_uart1$UART1_Init$91 ==.
                                    547 ;	../SPL/src/stm8s_uart1.c: 174: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
                                    548 ; genAnd
      009942 88               [ 1]  549 	push	a
                           0001AB   550 	Sstm8s_uart1$UART1_Init$92 ==.
      009943 7B 1C            [ 1]  551 	ld	a, (0x1c, sp)
      009945 A4 08            [ 1]  552 	and	a, #0x08
      009947 6B 12            [ 1]  553 	ld	(0x12, sp), a
      009949 84               [ 1]  554 	pop	a
                           0001B2   555 	Sstm8s_uart1$UART1_Init$93 ==.
                                    556 ; genOr
      00994A 1A 11            [ 1]  557 	or	a, (0x11, sp)
                                    558 ; genPointerSet
      00994C C7 52 36         [ 1]  559 	ld	0x5236, a
                           0001B7   560 	Sstm8s_uart1$UART1_Init$94 ==.
                                    561 ; genLabel
      00994F                        562 00110$:
                           0001B7   563 	Sstm8s_uart1$UART1_Init$95 ==.
                                    564 ;	../SPL/src/stm8s_uart1.c: 176: }
                                    565 ; genEndFunction
      00994F 5B 11            [ 2]  566 	addw	sp, #17
                           0001B9   567 	Sstm8s_uart1$UART1_Init$96 ==.
                           0001B9   568 	Sstm8s_uart1$UART1_Init$97 ==.
                           0001B9   569 	XG$UART1_Init$0$0 ==.
      009951 81               [ 4]  570 	ret
                           0001BA   571 	Sstm8s_uart1$UART1_Init$98 ==.
                           0001BA   572 	Sstm8s_uart1$UART1_Cmd$99 ==.
                                    573 ;	../SPL/src/stm8s_uart1.c: 184: void UART1_Cmd(FunctionalState NewState)
                                    574 ; genLabel
                                    575 ;	-----------------------------------------
                                    576 ;	 function UART1_Cmd
                                    577 ;	-----------------------------------------
                                    578 ;	Register assignment is optimal.
                                    579 ;	Stack space usage: 0 bytes.
      009952                        580 _UART1_Cmd:
                           0001BA   581 	Sstm8s_uart1$UART1_Cmd$100 ==.
                           0001BA   582 	Sstm8s_uart1$UART1_Cmd$101 ==.
                                    583 ;	../SPL/src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
                                    584 ; genPointerGet
      009952 C6 52 34         [ 1]  585 	ld	a, 0x5234
                           0001BD   586 	Sstm8s_uart1$UART1_Cmd$102 ==.
                                    587 ;	../SPL/src/stm8s_uart1.c: 186: if (NewState != DISABLE)
                                    588 ; genIfx
      009955 0D 03            [ 1]  589 	tnz	(0x03, sp)
      009957 26 03            [ 1]  590 	jrne	00111$
      009959 CC 99 64         [ 2]  591 	jp	00102$
      00995C                        592 00111$:
                           0001C4   593 	Sstm8s_uart1$UART1_Cmd$103 ==.
                           0001C4   594 	Sstm8s_uart1$UART1_Cmd$104 ==.
                                    595 ;	../SPL/src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
                                    596 ; genAnd
      00995C A4 DF            [ 1]  597 	and	a, #0xdf
                                    598 ; genPointerSet
      00995E C7 52 34         [ 1]  599 	ld	0x5234, a
                           0001C9   600 	Sstm8s_uart1$UART1_Cmd$105 ==.
                                    601 ; genGoto
      009961 CC 99 69         [ 2]  602 	jp	00104$
                                    603 ; genLabel
      009964                        604 00102$:
                           0001CC   605 	Sstm8s_uart1$UART1_Cmd$106 ==.
                           0001CC   606 	Sstm8s_uart1$UART1_Cmd$107 ==.
                                    607 ;	../SPL/src/stm8s_uart1.c: 194: UART1->CR1 |= UART1_CR1_UARTD;  
                                    608 ; genOr
      009964 AA 20            [ 1]  609 	or	a, #0x20
                                    610 ; genPointerSet
      009966 C7 52 34         [ 1]  611 	ld	0x5234, a
                           0001D1   612 	Sstm8s_uart1$UART1_Cmd$108 ==.
                                    613 ; genLabel
      009969                        614 00104$:
                           0001D1   615 	Sstm8s_uart1$UART1_Cmd$109 ==.
                                    616 ;	../SPL/src/stm8s_uart1.c: 196: }
                                    617 ; genEndFunction
                           0001D1   618 	Sstm8s_uart1$UART1_Cmd$110 ==.
                           0001D1   619 	XG$UART1_Cmd$0$0 ==.
      009969 81               [ 4]  620 	ret
                           0001D2   621 	Sstm8s_uart1$UART1_Cmd$111 ==.
                           0001D2   622 	Sstm8s_uart1$UART1_ITConfig$112 ==.
                                    623 ;	../SPL/src/stm8s_uart1.c: 211: void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
                                    624 ; genLabel
                                    625 ;	-----------------------------------------
                                    626 ;	 function UART1_ITConfig
                                    627 ;	-----------------------------------------
                                    628 ;	Register assignment might be sub-optimal.
                                    629 ;	Stack space usage: 2 bytes.
      00996A                        630 _UART1_ITConfig:
                           0001D2   631 	Sstm8s_uart1$UART1_ITConfig$113 ==.
      00996A 89               [ 2]  632 	pushw	x
                           0001D3   633 	Sstm8s_uart1$UART1_ITConfig$114 ==.
                           0001D3   634 	Sstm8s_uart1$UART1_ITConfig$115 ==.
                                    635 ;	../SPL/src/stm8s_uart1.c: 220: uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
                                    636 ; genCast
                                    637 ; genAssign
      00996B 1E 05            [ 2]  638 	ldw	x, (0x05, sp)
                                    639 ; genRightShiftLiteral
      00996D 4F               [ 1]  640 	clr	a
                                    641 ; genCast
                                    642 ; genAssign
                           0001D6   643 	Sstm8s_uart1$UART1_ITConfig$116 ==.
                                    644 ;	../SPL/src/stm8s_uart1.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
                                    645 ; genCast
                                    646 ; genAssign
      00996E 7B 06            [ 1]  647 	ld	a, (0x06, sp)
                                    648 ; genAnd
      009970 A4 0F            [ 1]  649 	and	a, #0x0f
                                    650 ; genLeftShift
      009972 88               [ 1]  651 	push	a
                           0001DB   652 	Sstm8s_uart1$UART1_ITConfig$117 ==.
      009973 A6 01            [ 1]  653 	ld	a, #0x01
      009975 6B 03            [ 1]  654 	ld	(0x03, sp), a
      009977 84               [ 1]  655 	pop	a
                           0001E0   656 	Sstm8s_uart1$UART1_ITConfig$118 ==.
      009978 4D               [ 1]  657 	tnz	a
      009979 27 05            [ 1]  658 	jreq	00144$
      00997B                        659 00143$:
      00997B 08 02            [ 1]  660 	sll	(0x02, sp)
      00997D 4A               [ 1]  661 	dec	a
      00997E 26 FB            [ 1]  662 	jrne	00143$
      009980                        663 00144$:
                           0001E8   664 	Sstm8s_uart1$UART1_ITConfig$119 ==.
                                    665 ;	../SPL/src/stm8s_uart1.c: 227: if (uartreg == 0x01)
                                    666 ; genCmpEQorNE
      009980 9E               [ 1]  667 	ld	a, xh
      009981 4A               [ 1]  668 	dec	a
      009982 26 07            [ 1]  669 	jrne	00146$
      009984 A6 01            [ 1]  670 	ld	a, #0x01
      009986 6B 01            [ 1]  671 	ld	(0x01, sp), a
      009988 CC 99 8D         [ 2]  672 	jp	00147$
      00998B                        673 00146$:
      00998B 0F 01            [ 1]  674 	clr	(0x01, sp)
      00998D                        675 00147$:
                           0001F5   676 	Sstm8s_uart1$UART1_ITConfig$120 ==.
                           0001F5   677 	Sstm8s_uart1$UART1_ITConfig$121 ==.
                                    678 ;	../SPL/src/stm8s_uart1.c: 231: else if (uartreg == 0x02)
                                    679 ; genCmpEQorNE
      00998D 9E               [ 1]  680 	ld	a, xh
      00998E A1 02            [ 1]  681 	cp	a, #0x02
      009990 26 05            [ 1]  682 	jrne	00149$
      009992 A6 01            [ 1]  683 	ld	a, #0x01
      009994 CC 99 98         [ 2]  684 	jp	00150$
      009997                        685 00149$:
      009997 4F               [ 1]  686 	clr	a
      009998                        687 00150$:
                           000200   688 	Sstm8s_uart1$UART1_ITConfig$122 ==.
                           000200   689 	Sstm8s_uart1$UART1_ITConfig$123 ==.
                                    690 ;	../SPL/src/stm8s_uart1.c: 224: if (NewState != DISABLE)
                                    691 ; genIfx
      009998 0D 07            [ 1]  692 	tnz	(0x07, sp)
      00999A 26 03            [ 1]  693 	jrne	00151$
      00999C CC 99 CD         [ 2]  694 	jp	00114$
      00999F                        695 00151$:
                           000207   696 	Sstm8s_uart1$UART1_ITConfig$124 ==.
                           000207   697 	Sstm8s_uart1$UART1_ITConfig$125 ==.
                                    698 ;	../SPL/src/stm8s_uart1.c: 227: if (uartreg == 0x01)
                                    699 ; genIfx
      00999F 0D 01            [ 1]  700 	tnz	(0x01, sp)
      0099A1 26 03            [ 1]  701 	jrne	00152$
      0099A3 CC 99 B1         [ 2]  702 	jp	00105$
      0099A6                        703 00152$:
                           00020E   704 	Sstm8s_uart1$UART1_ITConfig$126 ==.
                           00020E   705 	Sstm8s_uart1$UART1_ITConfig$127 ==.
                                    706 ;	../SPL/src/stm8s_uart1.c: 229: UART1->CR1 |= itpos;
                                    707 ; genPointerGet
      0099A6 C6 52 34         [ 1]  708 	ld	a, 0x5234
                                    709 ; genOr
      0099A9 1A 02            [ 1]  710 	or	a, (0x02, sp)
                                    711 ; genPointerSet
      0099AB C7 52 34         [ 1]  712 	ld	0x5234, a
                           000216   713 	Sstm8s_uart1$UART1_ITConfig$128 ==.
                                    714 ; genGoto
      0099AE CC 99 FC         [ 2]  715 	jp	00116$
                                    716 ; genLabel
      0099B1                        717 00105$:
                           000219   718 	Sstm8s_uart1$UART1_ITConfig$129 ==.
                                    719 ;	../SPL/src/stm8s_uart1.c: 231: else if (uartreg == 0x02)
                                    720 ; genIfx
      0099B1 4D               [ 1]  721 	tnz	a
      0099B2 26 03            [ 1]  722 	jrne	00153$
      0099B4 CC 99 C2         [ 2]  723 	jp	00102$
      0099B7                        724 00153$:
                           00021F   725 	Sstm8s_uart1$UART1_ITConfig$130 ==.
                           00021F   726 	Sstm8s_uart1$UART1_ITConfig$131 ==.
                                    727 ;	../SPL/src/stm8s_uart1.c: 233: UART1->CR2 |= itpos;
                                    728 ; genPointerGet
      0099B7 C6 52 35         [ 1]  729 	ld	a, 0x5235
                                    730 ; genOr
      0099BA 1A 02            [ 1]  731 	or	a, (0x02, sp)
                                    732 ; genPointerSet
      0099BC C7 52 35         [ 1]  733 	ld	0x5235, a
                           000227   734 	Sstm8s_uart1$UART1_ITConfig$132 ==.
                                    735 ; genGoto
      0099BF CC 99 FC         [ 2]  736 	jp	00116$
                                    737 ; genLabel
      0099C2                        738 00102$:
                           00022A   739 	Sstm8s_uart1$UART1_ITConfig$133 ==.
                           00022A   740 	Sstm8s_uart1$UART1_ITConfig$134 ==.
                                    741 ;	../SPL/src/stm8s_uart1.c: 237: UART1->CR4 |= itpos;
                                    742 ; genPointerGet
      0099C2 C6 52 37         [ 1]  743 	ld	a, 0x5237
                                    744 ; genOr
      0099C5 1A 02            [ 1]  745 	or	a, (0x02, sp)
                                    746 ; genPointerSet
      0099C7 C7 52 37         [ 1]  747 	ld	0x5237, a
                           000232   748 	Sstm8s_uart1$UART1_ITConfig$135 ==.
                                    749 ; genGoto
      0099CA CC 99 FC         [ 2]  750 	jp	00116$
                                    751 ; genLabel
      0099CD                        752 00114$:
                           000235   753 	Sstm8s_uart1$UART1_ITConfig$136 ==.
                                    754 ;	../SPL/src/stm8s_uart1.c: 245: UART1->CR1 &= (uint8_t)(~itpos);
                                    755 ; genCpl
      0099CD 88               [ 1]  756 	push	a
                           000236   757 	Sstm8s_uart1$UART1_ITConfig$137 ==.
      0099CE 03 03            [ 1]  758 	cpl	(0x03, sp)
      0099D0 84               [ 1]  759 	pop	a
                           000239   760 	Sstm8s_uart1$UART1_ITConfig$138 ==.
                           000239   761 	Sstm8s_uart1$UART1_ITConfig$139 ==.
                           000239   762 	Sstm8s_uart1$UART1_ITConfig$140 ==.
                                    763 ;	../SPL/src/stm8s_uart1.c: 243: if (uartreg == 0x01)
                                    764 ; genIfx
      0099D1 0D 01            [ 1]  765 	tnz	(0x01, sp)
      0099D3 26 03            [ 1]  766 	jrne	00154$
      0099D5 CC 99 E3         [ 2]  767 	jp	00111$
      0099D8                        768 00154$:
                           000240   769 	Sstm8s_uart1$UART1_ITConfig$141 ==.
                           000240   770 	Sstm8s_uart1$UART1_ITConfig$142 ==.
                                    771 ;	../SPL/src/stm8s_uart1.c: 245: UART1->CR1 &= (uint8_t)(~itpos);
                                    772 ; genPointerGet
      0099D8 C6 52 34         [ 1]  773 	ld	a, 0x5234
                                    774 ; genAnd
      0099DB 14 02            [ 1]  775 	and	a, (0x02, sp)
                                    776 ; genPointerSet
      0099DD C7 52 34         [ 1]  777 	ld	0x5234, a
                           000248   778 	Sstm8s_uart1$UART1_ITConfig$143 ==.
                                    779 ; genGoto
      0099E0 CC 99 FC         [ 2]  780 	jp	00116$
                                    781 ; genLabel
      0099E3                        782 00111$:
                           00024B   783 	Sstm8s_uart1$UART1_ITConfig$144 ==.
                                    784 ;	../SPL/src/stm8s_uart1.c: 247: else if (uartreg == 0x02)
                                    785 ; genIfx
      0099E3 4D               [ 1]  786 	tnz	a
      0099E4 26 03            [ 1]  787 	jrne	00155$
      0099E6 CC 99 F4         [ 2]  788 	jp	00108$
      0099E9                        789 00155$:
                           000251   790 	Sstm8s_uart1$UART1_ITConfig$145 ==.
                           000251   791 	Sstm8s_uart1$UART1_ITConfig$146 ==.
                                    792 ;	../SPL/src/stm8s_uart1.c: 249: UART1->CR2 &= (uint8_t)(~itpos);
                                    793 ; genPointerGet
      0099E9 C6 52 35         [ 1]  794 	ld	a, 0x5235
                                    795 ; genAnd
      0099EC 14 02            [ 1]  796 	and	a, (0x02, sp)
                                    797 ; genPointerSet
      0099EE C7 52 35         [ 1]  798 	ld	0x5235, a
                           000259   799 	Sstm8s_uart1$UART1_ITConfig$147 ==.
                                    800 ; genGoto
      0099F1 CC 99 FC         [ 2]  801 	jp	00116$
                                    802 ; genLabel
      0099F4                        803 00108$:
                           00025C   804 	Sstm8s_uart1$UART1_ITConfig$148 ==.
                           00025C   805 	Sstm8s_uart1$UART1_ITConfig$149 ==.
                                    806 ;	../SPL/src/stm8s_uart1.c: 253: UART1->CR4 &= (uint8_t)(~itpos);
                                    807 ; genPointerGet
      0099F4 C6 52 37         [ 1]  808 	ld	a, 0x5237
                                    809 ; genAnd
      0099F7 14 02            [ 1]  810 	and	a, (0x02, sp)
                                    811 ; genPointerSet
      0099F9 C7 52 37         [ 1]  812 	ld	0x5237, a
                           000264   813 	Sstm8s_uart1$UART1_ITConfig$150 ==.
                                    814 ; genLabel
      0099FC                        815 00116$:
                           000264   816 	Sstm8s_uart1$UART1_ITConfig$151 ==.
                                    817 ;	../SPL/src/stm8s_uart1.c: 257: }
                                    818 ; genEndFunction
      0099FC 85               [ 2]  819 	popw	x
                           000265   820 	Sstm8s_uart1$UART1_ITConfig$152 ==.
                           000265   821 	Sstm8s_uart1$UART1_ITConfig$153 ==.
                           000265   822 	XG$UART1_ITConfig$0$0 ==.
      0099FD 81               [ 4]  823 	ret
                           000266   824 	Sstm8s_uart1$UART1_ITConfig$154 ==.
                           000266   825 	Sstm8s_uart1$UART1_HalfDuplexCmd$155 ==.
                                    826 ;	../SPL/src/stm8s_uart1.c: 265: void UART1_HalfDuplexCmd(FunctionalState NewState)
                                    827 ; genLabel
                                    828 ;	-----------------------------------------
                                    829 ;	 function UART1_HalfDuplexCmd
                                    830 ;	-----------------------------------------
                                    831 ;	Register assignment is optimal.
                                    832 ;	Stack space usage: 0 bytes.
      0099FE                        833 _UART1_HalfDuplexCmd:
                           000266   834 	Sstm8s_uart1$UART1_HalfDuplexCmd$156 ==.
                           000266   835 	Sstm8s_uart1$UART1_HalfDuplexCmd$157 ==.
                                    836 ;	../SPL/src/stm8s_uart1.c: 271: UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
                                    837 ; genPointerGet
      0099FE C6 52 38         [ 1]  838 	ld	a, 0x5238
                           000269   839 	Sstm8s_uart1$UART1_HalfDuplexCmd$158 ==.
                                    840 ;	../SPL/src/stm8s_uart1.c: 269: if (NewState != DISABLE)
                                    841 ; genIfx
      009A01 0D 03            [ 1]  842 	tnz	(0x03, sp)
      009A03 26 03            [ 1]  843 	jrne	00111$
      009A05 CC 9A 10         [ 2]  844 	jp	00102$
      009A08                        845 00111$:
                           000270   846 	Sstm8s_uart1$UART1_HalfDuplexCmd$159 ==.
                           000270   847 	Sstm8s_uart1$UART1_HalfDuplexCmd$160 ==.
                                    848 ;	../SPL/src/stm8s_uart1.c: 271: UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
                                    849 ; genOr
      009A08 AA 08            [ 1]  850 	or	a, #0x08
                                    851 ; genPointerSet
      009A0A C7 52 38         [ 1]  852 	ld	0x5238, a
                           000275   853 	Sstm8s_uart1$UART1_HalfDuplexCmd$161 ==.
                                    854 ; genGoto
      009A0D CC 9A 15         [ 2]  855 	jp	00104$
                                    856 ; genLabel
      009A10                        857 00102$:
                           000278   858 	Sstm8s_uart1$UART1_HalfDuplexCmd$162 ==.
                           000278   859 	Sstm8s_uart1$UART1_HalfDuplexCmd$163 ==.
                                    860 ;	../SPL/src/stm8s_uart1.c: 275: UART1->CR5 &= (uint8_t)~UART1_CR5_HDSEL; /**< UART1 Half Duplex Disable */
                                    861 ; genAnd
      009A10 A4 F7            [ 1]  862 	and	a, #0xf7
                                    863 ; genPointerSet
      009A12 C7 52 38         [ 1]  864 	ld	0x5238, a
                           00027D   865 	Sstm8s_uart1$UART1_HalfDuplexCmd$164 ==.
                                    866 ; genLabel
      009A15                        867 00104$:
                           00027D   868 	Sstm8s_uart1$UART1_HalfDuplexCmd$165 ==.
                                    869 ;	../SPL/src/stm8s_uart1.c: 277: }
                                    870 ; genEndFunction
                           00027D   871 	Sstm8s_uart1$UART1_HalfDuplexCmd$166 ==.
                           00027D   872 	XG$UART1_HalfDuplexCmd$0$0 ==.
      009A15 81               [ 4]  873 	ret
                           00027E   874 	Sstm8s_uart1$UART1_HalfDuplexCmd$167 ==.
                           00027E   875 	Sstm8s_uart1$UART1_IrDAConfig$168 ==.
                                    876 ;	../SPL/src/stm8s_uart1.c: 285: void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
                                    877 ; genLabel
                                    878 ;	-----------------------------------------
                                    879 ;	 function UART1_IrDAConfig
                                    880 ;	-----------------------------------------
                                    881 ;	Register assignment is optimal.
                                    882 ;	Stack space usage: 0 bytes.
      009A16                        883 _UART1_IrDAConfig:
                           00027E   884 	Sstm8s_uart1$UART1_IrDAConfig$169 ==.
                           00027E   885 	Sstm8s_uart1$UART1_IrDAConfig$170 ==.
                                    886 ;	../SPL/src/stm8s_uart1.c: 291: UART1->CR5 |= UART1_CR5_IRLP;
                                    887 ; genPointerGet
      009A16 C6 52 38         [ 1]  888 	ld	a, 0x5238
                           000281   889 	Sstm8s_uart1$UART1_IrDAConfig$171 ==.
                                    890 ;	../SPL/src/stm8s_uart1.c: 289: if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
                                    891 ; genIfx
      009A19 0D 03            [ 1]  892 	tnz	(0x03, sp)
      009A1B 26 03            [ 1]  893 	jrne	00111$
      009A1D CC 9A 28         [ 2]  894 	jp	00102$
      009A20                        895 00111$:
                           000288   896 	Sstm8s_uart1$UART1_IrDAConfig$172 ==.
                           000288   897 	Sstm8s_uart1$UART1_IrDAConfig$173 ==.
                                    898 ;	../SPL/src/stm8s_uart1.c: 291: UART1->CR5 |= UART1_CR5_IRLP;
                                    899 ; genOr
      009A20 AA 04            [ 1]  900 	or	a, #0x04
                                    901 ; genPointerSet
      009A22 C7 52 38         [ 1]  902 	ld	0x5238, a
                           00028D   903 	Sstm8s_uart1$UART1_IrDAConfig$174 ==.
                                    904 ; genGoto
      009A25 CC 9A 2D         [ 2]  905 	jp	00104$
                                    906 ; genLabel
      009A28                        907 00102$:
                           000290   908 	Sstm8s_uart1$UART1_IrDAConfig$175 ==.
                           000290   909 	Sstm8s_uart1$UART1_IrDAConfig$176 ==.
                                    910 ;	../SPL/src/stm8s_uart1.c: 295: UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
                                    911 ; genAnd
      009A28 A4 FB            [ 1]  912 	and	a, #0xfb
                                    913 ; genPointerSet
      009A2A C7 52 38         [ 1]  914 	ld	0x5238, a
                           000295   915 	Sstm8s_uart1$UART1_IrDAConfig$177 ==.
                                    916 ; genLabel
      009A2D                        917 00104$:
                           000295   918 	Sstm8s_uart1$UART1_IrDAConfig$178 ==.
                                    919 ;	../SPL/src/stm8s_uart1.c: 297: }
                                    920 ; genEndFunction
                           000295   921 	Sstm8s_uart1$UART1_IrDAConfig$179 ==.
                           000295   922 	XG$UART1_IrDAConfig$0$0 ==.
      009A2D 81               [ 4]  923 	ret
                           000296   924 	Sstm8s_uart1$UART1_IrDAConfig$180 ==.
                           000296   925 	Sstm8s_uart1$UART1_IrDACmd$181 ==.
                                    926 ;	../SPL/src/stm8s_uart1.c: 305: void UART1_IrDACmd(FunctionalState NewState)
                                    927 ; genLabel
                                    928 ;	-----------------------------------------
                                    929 ;	 function UART1_IrDACmd
                                    930 ;	-----------------------------------------
                                    931 ;	Register assignment is optimal.
                                    932 ;	Stack space usage: 0 bytes.
      009A2E                        933 _UART1_IrDACmd:
                           000296   934 	Sstm8s_uart1$UART1_IrDACmd$182 ==.
                           000296   935 	Sstm8s_uart1$UART1_IrDACmd$183 ==.
                                    936 ;	../SPL/src/stm8s_uart1.c: 313: UART1->CR5 |= UART1_CR5_IREN;
                                    937 ; genPointerGet
      009A2E C6 52 38         [ 1]  938 	ld	a, 0x5238
                           000299   939 	Sstm8s_uart1$UART1_IrDACmd$184 ==.
                                    940 ;	../SPL/src/stm8s_uart1.c: 310: if (NewState != DISABLE)
                                    941 ; genIfx
      009A31 0D 03            [ 1]  942 	tnz	(0x03, sp)
      009A33 26 03            [ 1]  943 	jrne	00111$
      009A35 CC 9A 40         [ 2]  944 	jp	00102$
      009A38                        945 00111$:
                           0002A0   946 	Sstm8s_uart1$UART1_IrDACmd$185 ==.
                           0002A0   947 	Sstm8s_uart1$UART1_IrDACmd$186 ==.
                                    948 ;	../SPL/src/stm8s_uart1.c: 313: UART1->CR5 |= UART1_CR5_IREN;
                                    949 ; genOr
      009A38 AA 02            [ 1]  950 	or	a, #0x02
                                    951 ; genPointerSet
      009A3A C7 52 38         [ 1]  952 	ld	0x5238, a
                           0002A5   953 	Sstm8s_uart1$UART1_IrDACmd$187 ==.
                                    954 ; genGoto
      009A3D CC 9A 45         [ 2]  955 	jp	00104$
                                    956 ; genLabel
      009A40                        957 00102$:
                           0002A8   958 	Sstm8s_uart1$UART1_IrDACmd$188 ==.
                           0002A8   959 	Sstm8s_uart1$UART1_IrDACmd$189 ==.
                                    960 ;	../SPL/src/stm8s_uart1.c: 318: UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
                                    961 ; genAnd
      009A40 A4 FD            [ 1]  962 	and	a, #0xfd
                                    963 ; genPointerSet
      009A42 C7 52 38         [ 1]  964 	ld	0x5238, a
                           0002AD   965 	Sstm8s_uart1$UART1_IrDACmd$190 ==.
                                    966 ; genLabel
      009A45                        967 00104$:
                           0002AD   968 	Sstm8s_uart1$UART1_IrDACmd$191 ==.
                                    969 ;	../SPL/src/stm8s_uart1.c: 320: }
                                    970 ; genEndFunction
                           0002AD   971 	Sstm8s_uart1$UART1_IrDACmd$192 ==.
                           0002AD   972 	XG$UART1_IrDACmd$0$0 ==.
      009A45 81               [ 4]  973 	ret
                           0002AE   974 	Sstm8s_uart1$UART1_IrDACmd$193 ==.
                           0002AE   975 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$194 ==.
                                    976 ;	../SPL/src/stm8s_uart1.c: 329: void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
                                    977 ; genLabel
                                    978 ;	-----------------------------------------
                                    979 ;	 function UART1_LINBreakDetectionConfig
                                    980 ;	-----------------------------------------
                                    981 ;	Register assignment is optimal.
                                    982 ;	Stack space usage: 0 bytes.
      009A46                        983 _UART1_LINBreakDetectionConfig:
                           0002AE   984 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$195 ==.
                           0002AE   985 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$196 ==.
                                    986 ;	../SPL/src/stm8s_uart1.c: 335: UART1->CR4 |= UART1_CR4_LBDL;
                                    987 ; genPointerGet
      009A46 C6 52 37         [ 1]  988 	ld	a, 0x5237
                           0002B1   989 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$197 ==.
                                    990 ;	../SPL/src/stm8s_uart1.c: 333: if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
                                    991 ; genIfx
      009A49 0D 03            [ 1]  992 	tnz	(0x03, sp)
      009A4B 26 03            [ 1]  993 	jrne	00111$
      009A4D CC 9A 58         [ 2]  994 	jp	00102$
      009A50                        995 00111$:
                           0002B8   996 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$198 ==.
                           0002B8   997 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$199 ==.
                                    998 ;	../SPL/src/stm8s_uart1.c: 335: UART1->CR4 |= UART1_CR4_LBDL;
                                    999 ; genOr
      009A50 AA 20            [ 1] 1000 	or	a, #0x20
                                   1001 ; genPointerSet
      009A52 C7 52 37         [ 1] 1002 	ld	0x5237, a
                           0002BD  1003 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$200 ==.
                                   1004 ; genGoto
      009A55 CC 9A 5D         [ 2] 1005 	jp	00104$
                                   1006 ; genLabel
      009A58                       1007 00102$:
                           0002C0  1008 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$201 ==.
                           0002C0  1009 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$202 ==.
                                   1010 ;	../SPL/src/stm8s_uart1.c: 339: UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
                                   1011 ; genAnd
      009A58 A4 DF            [ 1] 1012 	and	a, #0xdf
                                   1013 ; genPointerSet
      009A5A C7 52 37         [ 1] 1014 	ld	0x5237, a
                           0002C5  1015 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$203 ==.
                                   1016 ; genLabel
      009A5D                       1017 00104$:
                           0002C5  1018 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$204 ==.
                                   1019 ;	../SPL/src/stm8s_uart1.c: 341: }
                                   1020 ; genEndFunction
                           0002C5  1021 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$205 ==.
                           0002C5  1022 	XG$UART1_LINBreakDetectionConfig$0$0 ==.
      009A5D 81               [ 4] 1023 	ret
                           0002C6  1024 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$206 ==.
                           0002C6  1025 	Sstm8s_uart1$UART1_LINCmd$207 ==.
                                   1026 ;	../SPL/src/stm8s_uart1.c: 349: void UART1_LINCmd(FunctionalState NewState)
                                   1027 ; genLabel
                                   1028 ;	-----------------------------------------
                                   1029 ;	 function UART1_LINCmd
                                   1030 ;	-----------------------------------------
                                   1031 ;	Register assignment is optimal.
                                   1032 ;	Stack space usage: 0 bytes.
      009A5E                       1033 _UART1_LINCmd:
                           0002C6  1034 	Sstm8s_uart1$UART1_LINCmd$208 ==.
                           0002C6  1035 	Sstm8s_uart1$UART1_LINCmd$209 ==.
                                   1036 ;	../SPL/src/stm8s_uart1.c: 356: UART1->CR3 |= UART1_CR3_LINEN;
                                   1037 ; genPointerGet
      009A5E C6 52 36         [ 1] 1038 	ld	a, 0x5236
                           0002C9  1039 	Sstm8s_uart1$UART1_LINCmd$210 ==.
                                   1040 ;	../SPL/src/stm8s_uart1.c: 353: if (NewState != DISABLE)
                                   1041 ; genIfx
      009A61 0D 03            [ 1] 1042 	tnz	(0x03, sp)
      009A63 26 03            [ 1] 1043 	jrne	00111$
      009A65 CC 9A 70         [ 2] 1044 	jp	00102$
      009A68                       1045 00111$:
                           0002D0  1046 	Sstm8s_uart1$UART1_LINCmd$211 ==.
                           0002D0  1047 	Sstm8s_uart1$UART1_LINCmd$212 ==.
                                   1048 ;	../SPL/src/stm8s_uart1.c: 356: UART1->CR3 |= UART1_CR3_LINEN;
                                   1049 ; genOr
      009A68 AA 40            [ 1] 1050 	or	a, #0x40
                                   1051 ; genPointerSet
      009A6A C7 52 36         [ 1] 1052 	ld	0x5236, a
                           0002D5  1053 	Sstm8s_uart1$UART1_LINCmd$213 ==.
                                   1054 ; genGoto
      009A6D CC 9A 75         [ 2] 1055 	jp	00104$
                                   1056 ; genLabel
      009A70                       1057 00102$:
                           0002D8  1058 	Sstm8s_uart1$UART1_LINCmd$214 ==.
                           0002D8  1059 	Sstm8s_uart1$UART1_LINCmd$215 ==.
                                   1060 ;	../SPL/src/stm8s_uart1.c: 361: UART1->CR3 &= ((uint8_t)~UART1_CR3_LINEN);
                                   1061 ; genAnd
      009A70 A4 BF            [ 1] 1062 	and	a, #0xbf
                                   1063 ; genPointerSet
      009A72 C7 52 36         [ 1] 1064 	ld	0x5236, a
                           0002DD  1065 	Sstm8s_uart1$UART1_LINCmd$216 ==.
                                   1066 ; genLabel
      009A75                       1067 00104$:
                           0002DD  1068 	Sstm8s_uart1$UART1_LINCmd$217 ==.
                                   1069 ;	../SPL/src/stm8s_uart1.c: 363: }
                                   1070 ; genEndFunction
                           0002DD  1071 	Sstm8s_uart1$UART1_LINCmd$218 ==.
                           0002DD  1072 	XG$UART1_LINCmd$0$0 ==.
      009A75 81               [ 4] 1073 	ret
                           0002DE  1074 	Sstm8s_uart1$UART1_LINCmd$219 ==.
                           0002DE  1075 	Sstm8s_uart1$UART1_SmartCardCmd$220 ==.
                                   1076 ;	../SPL/src/stm8s_uart1.c: 371: void UART1_SmartCardCmd(FunctionalState NewState)
                                   1077 ; genLabel
                                   1078 ;	-----------------------------------------
                                   1079 ;	 function UART1_SmartCardCmd
                                   1080 ;	-----------------------------------------
                                   1081 ;	Register assignment is optimal.
                                   1082 ;	Stack space usage: 0 bytes.
      009A76                       1083 _UART1_SmartCardCmd:
                           0002DE  1084 	Sstm8s_uart1$UART1_SmartCardCmd$221 ==.
                           0002DE  1085 	Sstm8s_uart1$UART1_SmartCardCmd$222 ==.
                                   1086 ;	../SPL/src/stm8s_uart1.c: 378: UART1->CR5 |= UART1_CR5_SCEN;
                                   1087 ; genPointerGet
      009A76 C6 52 38         [ 1] 1088 	ld	a, 0x5238
                           0002E1  1089 	Sstm8s_uart1$UART1_SmartCardCmd$223 ==.
                                   1090 ;	../SPL/src/stm8s_uart1.c: 375: if (NewState != DISABLE)
                                   1091 ; genIfx
      009A79 0D 03            [ 1] 1092 	tnz	(0x03, sp)
      009A7B 26 03            [ 1] 1093 	jrne	00111$
      009A7D CC 9A 88         [ 2] 1094 	jp	00102$
      009A80                       1095 00111$:
                           0002E8  1096 	Sstm8s_uart1$UART1_SmartCardCmd$224 ==.
                           0002E8  1097 	Sstm8s_uart1$UART1_SmartCardCmd$225 ==.
                                   1098 ;	../SPL/src/stm8s_uart1.c: 378: UART1->CR5 |= UART1_CR5_SCEN;
                                   1099 ; genOr
      009A80 AA 20            [ 1] 1100 	or	a, #0x20
                                   1101 ; genPointerSet
      009A82 C7 52 38         [ 1] 1102 	ld	0x5238, a
                           0002ED  1103 	Sstm8s_uart1$UART1_SmartCardCmd$226 ==.
                                   1104 ; genGoto
      009A85 CC 9A 8D         [ 2] 1105 	jp	00104$
                                   1106 ; genLabel
      009A88                       1107 00102$:
                           0002F0  1108 	Sstm8s_uart1$UART1_SmartCardCmd$227 ==.
                           0002F0  1109 	Sstm8s_uart1$UART1_SmartCardCmd$228 ==.
                                   1110 ;	../SPL/src/stm8s_uart1.c: 383: UART1->CR5 &= ((uint8_t)(~UART1_CR5_SCEN));
                                   1111 ; genAnd
      009A88 A4 DF            [ 1] 1112 	and	a, #0xdf
                                   1113 ; genPointerSet
      009A8A C7 52 38         [ 1] 1114 	ld	0x5238, a
                           0002F5  1115 	Sstm8s_uart1$UART1_SmartCardCmd$229 ==.
                                   1116 ; genLabel
      009A8D                       1117 00104$:
                           0002F5  1118 	Sstm8s_uart1$UART1_SmartCardCmd$230 ==.
                                   1119 ;	../SPL/src/stm8s_uart1.c: 385: }
                                   1120 ; genEndFunction
                           0002F5  1121 	Sstm8s_uart1$UART1_SmartCardCmd$231 ==.
                           0002F5  1122 	XG$UART1_SmartCardCmd$0$0 ==.
      009A8D 81               [ 4] 1123 	ret
                           0002F6  1124 	Sstm8s_uart1$UART1_SmartCardCmd$232 ==.
                           0002F6  1125 	Sstm8s_uart1$UART1_SmartCardNACKCmd$233 ==.
                                   1126 ;	../SPL/src/stm8s_uart1.c: 394: void UART1_SmartCardNACKCmd(FunctionalState NewState)
                                   1127 ; genLabel
                                   1128 ;	-----------------------------------------
                                   1129 ;	 function UART1_SmartCardNACKCmd
                                   1130 ;	-----------------------------------------
                                   1131 ;	Register assignment is optimal.
                                   1132 ;	Stack space usage: 0 bytes.
      009A8E                       1133 _UART1_SmartCardNACKCmd:
                           0002F6  1134 	Sstm8s_uart1$UART1_SmartCardNACKCmd$234 ==.
                           0002F6  1135 	Sstm8s_uart1$UART1_SmartCardNACKCmd$235 ==.
                                   1136 ;	../SPL/src/stm8s_uart1.c: 401: UART1->CR5 |= UART1_CR5_NACK;
                                   1137 ; genPointerGet
      009A8E C6 52 38         [ 1] 1138 	ld	a, 0x5238
                           0002F9  1139 	Sstm8s_uart1$UART1_SmartCardNACKCmd$236 ==.
                                   1140 ;	../SPL/src/stm8s_uart1.c: 398: if (NewState != DISABLE)
                                   1141 ; genIfx
      009A91 0D 03            [ 1] 1142 	tnz	(0x03, sp)
      009A93 26 03            [ 1] 1143 	jrne	00111$
      009A95 CC 9A A0         [ 2] 1144 	jp	00102$
      009A98                       1145 00111$:
                           000300  1146 	Sstm8s_uart1$UART1_SmartCardNACKCmd$237 ==.
                           000300  1147 	Sstm8s_uart1$UART1_SmartCardNACKCmd$238 ==.
                                   1148 ;	../SPL/src/stm8s_uart1.c: 401: UART1->CR5 |= UART1_CR5_NACK;
                                   1149 ; genOr
      009A98 AA 10            [ 1] 1150 	or	a, #0x10
                                   1151 ; genPointerSet
      009A9A C7 52 38         [ 1] 1152 	ld	0x5238, a
                           000305  1153 	Sstm8s_uart1$UART1_SmartCardNACKCmd$239 ==.
                                   1154 ; genGoto
      009A9D CC 9A A5         [ 2] 1155 	jp	00104$
                                   1156 ; genLabel
      009AA0                       1157 00102$:
                           000308  1158 	Sstm8s_uart1$UART1_SmartCardNACKCmd$240 ==.
                           000308  1159 	Sstm8s_uart1$UART1_SmartCardNACKCmd$241 ==.
                                   1160 ;	../SPL/src/stm8s_uart1.c: 406: UART1->CR5 &= ((uint8_t)~(UART1_CR5_NACK));
                                   1161 ; genAnd
      009AA0 A4 EF            [ 1] 1162 	and	a, #0xef
                                   1163 ; genPointerSet
      009AA2 C7 52 38         [ 1] 1164 	ld	0x5238, a
                           00030D  1165 	Sstm8s_uart1$UART1_SmartCardNACKCmd$242 ==.
                                   1166 ; genLabel
      009AA5                       1167 00104$:
                           00030D  1168 	Sstm8s_uart1$UART1_SmartCardNACKCmd$243 ==.
                                   1169 ;	../SPL/src/stm8s_uart1.c: 408: }
                                   1170 ; genEndFunction
                           00030D  1171 	Sstm8s_uart1$UART1_SmartCardNACKCmd$244 ==.
                           00030D  1172 	XG$UART1_SmartCardNACKCmd$0$0 ==.
      009AA5 81               [ 4] 1173 	ret
                           00030E  1174 	Sstm8s_uart1$UART1_SmartCardNACKCmd$245 ==.
                           00030E  1175 	Sstm8s_uart1$UART1_WakeUpConfig$246 ==.
                                   1176 ;	../SPL/src/stm8s_uart1.c: 416: void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp)
                                   1177 ; genLabel
                                   1178 ;	-----------------------------------------
                                   1179 ;	 function UART1_WakeUpConfig
                                   1180 ;	-----------------------------------------
                                   1181 ;	Register assignment is optimal.
                                   1182 ;	Stack space usage: 0 bytes.
      009AA6                       1183 _UART1_WakeUpConfig:
                           00030E  1184 	Sstm8s_uart1$UART1_WakeUpConfig$247 ==.
                           00030E  1185 	Sstm8s_uart1$UART1_WakeUpConfig$248 ==.
                                   1186 ;	../SPL/src/stm8s_uart1.c: 420: UART1->CR1 &= ((uint8_t)~UART1_CR1_WAKE);
                                   1187 ; genPointerGet
      009AA6 C6 52 34         [ 1] 1188 	ld	a, 0x5234
                                   1189 ; genAnd
      009AA9 A4 F7            [ 1] 1190 	and	a, #0xf7
                                   1191 ; genPointerSet
      009AAB C7 52 34         [ 1] 1192 	ld	0x5234, a
                           000316  1193 	Sstm8s_uart1$UART1_WakeUpConfig$249 ==.
                                   1194 ;	../SPL/src/stm8s_uart1.c: 421: UART1->CR1 |= (uint8_t)UART1_WakeUp;
                                   1195 ; genPointerGet
      009AAE C6 52 34         [ 1] 1196 	ld	a, 0x5234
                                   1197 ; genOr
      009AB1 1A 03            [ 1] 1198 	or	a, (0x03, sp)
                                   1199 ; genPointerSet
      009AB3 C7 52 34         [ 1] 1200 	ld	0x5234, a
                                   1201 ; genLabel
      009AB6                       1202 00101$:
                           00031E  1203 	Sstm8s_uart1$UART1_WakeUpConfig$250 ==.
                                   1204 ;	../SPL/src/stm8s_uart1.c: 422: }
                                   1205 ; genEndFunction
                           00031E  1206 	Sstm8s_uart1$UART1_WakeUpConfig$251 ==.
                           00031E  1207 	XG$UART1_WakeUpConfig$0$0 ==.
      009AB6 81               [ 4] 1208 	ret
                           00031F  1209 	Sstm8s_uart1$UART1_WakeUpConfig$252 ==.
                           00031F  1210 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$253 ==.
                                   1211 ;	../SPL/src/stm8s_uart1.c: 430: void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
                                   1212 ; genLabel
                                   1213 ;	-----------------------------------------
                                   1214 ;	 function UART1_ReceiverWakeUpCmd
                                   1215 ;	-----------------------------------------
                                   1216 ;	Register assignment is optimal.
                                   1217 ;	Stack space usage: 0 bytes.
      009AB7                       1218 _UART1_ReceiverWakeUpCmd:
                           00031F  1219 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$254 ==.
                           00031F  1220 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$255 ==.
                                   1221 ;	../SPL/src/stm8s_uart1.c: 437: UART1->CR2 |= UART1_CR2_RWU;
                                   1222 ; genPointerGet
      009AB7 C6 52 35         [ 1] 1223 	ld	a, 0x5235
                           000322  1224 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$256 ==.
                                   1225 ;	../SPL/src/stm8s_uart1.c: 434: if (NewState != DISABLE)
                                   1226 ; genIfx
      009ABA 0D 03            [ 1] 1227 	tnz	(0x03, sp)
      009ABC 26 03            [ 1] 1228 	jrne	00111$
      009ABE CC 9A C9         [ 2] 1229 	jp	00102$
      009AC1                       1230 00111$:
                           000329  1231 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$257 ==.
                           000329  1232 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$258 ==.
                                   1233 ;	../SPL/src/stm8s_uart1.c: 437: UART1->CR2 |= UART1_CR2_RWU;
                                   1234 ; genOr
      009AC1 AA 02            [ 1] 1235 	or	a, #0x02
                                   1236 ; genPointerSet
      009AC3 C7 52 35         [ 1] 1237 	ld	0x5235, a
                           00032E  1238 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$259 ==.
                                   1239 ; genGoto
      009AC6 CC 9A CE         [ 2] 1240 	jp	00104$
                                   1241 ; genLabel
      009AC9                       1242 00102$:
                           000331  1243 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$260 ==.
                           000331  1244 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$261 ==.
                                   1245 ;	../SPL/src/stm8s_uart1.c: 442: UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
                                   1246 ; genAnd
      009AC9 A4 FD            [ 1] 1247 	and	a, #0xfd
                                   1248 ; genPointerSet
      009ACB C7 52 35         [ 1] 1249 	ld	0x5235, a
                           000336  1250 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$262 ==.
                                   1251 ; genLabel
      009ACE                       1252 00104$:
                           000336  1253 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$263 ==.
                                   1254 ;	../SPL/src/stm8s_uart1.c: 444: }
                                   1255 ; genEndFunction
                           000336  1256 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$264 ==.
                           000336  1257 	XG$UART1_ReceiverWakeUpCmd$0$0 ==.
      009ACE 81               [ 4] 1258 	ret
                           000337  1259 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$265 ==.
                           000337  1260 	Sstm8s_uart1$UART1_ReceiveData8$266 ==.
                                   1261 ;	../SPL/src/stm8s_uart1.c: 451: uint8_t UART1_ReceiveData8(void)
                                   1262 ; genLabel
                                   1263 ;	-----------------------------------------
                                   1264 ;	 function UART1_ReceiveData8
                                   1265 ;	-----------------------------------------
                                   1266 ;	Register assignment is optimal.
                                   1267 ;	Stack space usage: 0 bytes.
      009ACF                       1268 _UART1_ReceiveData8:
                           000337  1269 	Sstm8s_uart1$UART1_ReceiveData8$267 ==.
                           000337  1270 	Sstm8s_uart1$UART1_ReceiveData8$268 ==.
                                   1271 ;	../SPL/src/stm8s_uart1.c: 453: return ((uint8_t)UART1->DR);
                                   1272 ; genPointerGet
      009ACF C6 52 31         [ 1] 1273 	ld	a, 0x5231
                                   1274 ; genReturn
                                   1275 ; genLabel
      009AD2                       1276 00101$:
                           00033A  1277 	Sstm8s_uart1$UART1_ReceiveData8$269 ==.
                                   1278 ;	../SPL/src/stm8s_uart1.c: 454: }
                                   1279 ; genEndFunction
                           00033A  1280 	Sstm8s_uart1$UART1_ReceiveData8$270 ==.
                           00033A  1281 	XG$UART1_ReceiveData8$0$0 ==.
      009AD2 81               [ 4] 1282 	ret
                           00033B  1283 	Sstm8s_uart1$UART1_ReceiveData8$271 ==.
                           00033B  1284 	Sstm8s_uart1$UART1_ReceiveData9$272 ==.
                                   1285 ;	../SPL/src/stm8s_uart1.c: 461: uint16_t UART1_ReceiveData9(void)
                                   1286 ; genLabel
                                   1287 ;	-----------------------------------------
                                   1288 ;	 function UART1_ReceiveData9
                                   1289 ;	-----------------------------------------
                                   1290 ;	Register assignment might be sub-optimal.
                                   1291 ;	Stack space usage: 2 bytes.
      009AD3                       1292 _UART1_ReceiveData9:
                           00033B  1293 	Sstm8s_uart1$UART1_ReceiveData9$273 ==.
      009AD3 89               [ 2] 1294 	pushw	x
                           00033C  1295 	Sstm8s_uart1$UART1_ReceiveData9$274 ==.
                           00033C  1296 	Sstm8s_uart1$UART1_ReceiveData9$275 ==.
                                   1297 ;	../SPL/src/stm8s_uart1.c: 465: temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
                                   1298 ; genPointerGet
      009AD4 C6 52 34         [ 1] 1299 	ld	a, 0x5234
                                   1300 ; genCast
                                   1301 ; genAssign
      009AD7 5F               [ 1] 1302 	clrw	x
                                   1303 ; genAnd
      009AD8 A4 80            [ 1] 1304 	and	a, #0x80
      009ADA 97               [ 1] 1305 	ld	xl, a
      009ADB 4F               [ 1] 1306 	clr	a
                                   1307 ; genLeftShiftLiteral
      009ADC 95               [ 1] 1308 	ld	xh, a
      009ADD 58               [ 2] 1309 	sllw	x
                                   1310 ; genAssign
      009ADE 1F 01            [ 2] 1311 	ldw	(0x01, sp), x
                           000348  1312 	Sstm8s_uart1$UART1_ReceiveData9$276 ==.
                                   1313 ;	../SPL/src/stm8s_uart1.c: 466: return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
                                   1314 ; genPointerGet
      009AE0 C6 52 31         [ 1] 1315 	ld	a, 0x5231
                                   1316 ; genCast
                                   1317 ; genAssign
      009AE3 5F               [ 1] 1318 	clrw	x
                                   1319 ; genOr
      009AE4 1A 02            [ 1] 1320 	or	a, (0x02, sp)
      009AE6 97               [ 1] 1321 	ld	xl, a
      009AE7 9E               [ 1] 1322 	ld	a, xh
      009AE8 1A 01            [ 1] 1323 	or	a, (0x01, sp)
                                   1324 ; genAnd
      009AEA A4 01            [ 1] 1325 	and	a, #0x01
      009AEC 95               [ 1] 1326 	ld	xh, a
                                   1327 ; genReturn
                                   1328 ; genLabel
      009AED                       1329 00101$:
                           000355  1330 	Sstm8s_uart1$UART1_ReceiveData9$277 ==.
                                   1331 ;	../SPL/src/stm8s_uart1.c: 467: }
                                   1332 ; genEndFunction
      009AED 5B 02            [ 2] 1333 	addw	sp, #2
                           000357  1334 	Sstm8s_uart1$UART1_ReceiveData9$278 ==.
                           000357  1335 	Sstm8s_uart1$UART1_ReceiveData9$279 ==.
                           000357  1336 	XG$UART1_ReceiveData9$0$0 ==.
      009AEF 81               [ 4] 1337 	ret
                           000358  1338 	Sstm8s_uart1$UART1_ReceiveData9$280 ==.
                           000358  1339 	Sstm8s_uart1$UART1_SendData8$281 ==.
                                   1340 ;	../SPL/src/stm8s_uart1.c: 474: void UART1_SendData8(uint8_t Data)
                                   1341 ; genLabel
                                   1342 ;	-----------------------------------------
                                   1343 ;	 function UART1_SendData8
                                   1344 ;	-----------------------------------------
                                   1345 ;	Register assignment is optimal.
                                   1346 ;	Stack space usage: 0 bytes.
      009AF0                       1347 _UART1_SendData8:
                           000358  1348 	Sstm8s_uart1$UART1_SendData8$282 ==.
                           000358  1349 	Sstm8s_uart1$UART1_SendData8$283 ==.
                                   1350 ;	../SPL/src/stm8s_uart1.c: 477: UART1->DR = Data;
                                   1351 ; genPointerSet
      009AF0 AE 52 31         [ 2] 1352 	ldw	x, #0x5231
      009AF3 7B 03            [ 1] 1353 	ld	a, (0x03, sp)
      009AF5 F7               [ 1] 1354 	ld	(x), a
                                   1355 ; genLabel
      009AF6                       1356 00101$:
                           00035E  1357 	Sstm8s_uart1$UART1_SendData8$284 ==.
                                   1358 ;	../SPL/src/stm8s_uart1.c: 478: }
                                   1359 ; genEndFunction
                           00035E  1360 	Sstm8s_uart1$UART1_SendData8$285 ==.
                           00035E  1361 	XG$UART1_SendData8$0$0 ==.
      009AF6 81               [ 4] 1362 	ret
                           00035F  1363 	Sstm8s_uart1$UART1_SendData8$286 ==.
                           00035F  1364 	Sstm8s_uart1$UART1_SendData9$287 ==.
                                   1365 ;	../SPL/src/stm8s_uart1.c: 486: void UART1_SendData9(uint16_t Data)
                                   1366 ; genLabel
                                   1367 ;	-----------------------------------------
                                   1368 ;	 function UART1_SendData9
                                   1369 ;	-----------------------------------------
                                   1370 ;	Register assignment might be sub-optimal.
                                   1371 ;	Stack space usage: 1 bytes.
      009AF7                       1372 _UART1_SendData9:
                           00035F  1373 	Sstm8s_uart1$UART1_SendData9$288 ==.
      009AF7 88               [ 1] 1374 	push	a
                           000360  1375 	Sstm8s_uart1$UART1_SendData9$289 ==.
                           000360  1376 	Sstm8s_uart1$UART1_SendData9$290 ==.
                                   1377 ;	../SPL/src/stm8s_uart1.c: 489: UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
                                   1378 ; genPointerGet
      009AF8 C6 52 34         [ 1] 1379 	ld	a, 0x5234
                                   1380 ; genAnd
      009AFB A4 BF            [ 1] 1381 	and	a, #0xbf
                                   1382 ; genPointerSet
      009AFD C7 52 34         [ 1] 1383 	ld	0x5234, a
                           000368  1384 	Sstm8s_uart1$UART1_SendData9$291 ==.
                                   1385 ;	../SPL/src/stm8s_uart1.c: 491: UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
                                   1386 ; genPointerGet
      009B00 C6 52 34         [ 1] 1387 	ld	a, 0x5234
      009B03 6B 01            [ 1] 1388 	ld	(0x01, sp), a
                                   1389 ; genRightShiftLiteral
      009B05 1E 04            [ 2] 1390 	ldw	x, (0x04, sp)
      009B07 54               [ 2] 1391 	srlw	x
      009B08 54               [ 2] 1392 	srlw	x
                                   1393 ; genCast
                                   1394 ; genAssign
      009B09 9F               [ 1] 1395 	ld	a, xl
                                   1396 ; genAnd
      009B0A A4 40            [ 1] 1397 	and	a, #0x40
                                   1398 ; genOr
      009B0C 1A 01            [ 1] 1399 	or	a, (0x01, sp)
                                   1400 ; genPointerSet
      009B0E C7 52 34         [ 1] 1401 	ld	0x5234, a
                           000379  1402 	Sstm8s_uart1$UART1_SendData9$292 ==.
                                   1403 ;	../SPL/src/stm8s_uart1.c: 493: UART1->DR   = (uint8_t)(Data);
                                   1404 ; genCast
                                   1405 ; genAssign
      009B11 7B 05            [ 1] 1406 	ld	a, (0x05, sp)
                                   1407 ; genPointerSet
      009B13 C7 52 31         [ 1] 1408 	ld	0x5231, a
                                   1409 ; genLabel
      009B16                       1410 00101$:
                           00037E  1411 	Sstm8s_uart1$UART1_SendData9$293 ==.
                                   1412 ;	../SPL/src/stm8s_uart1.c: 494: }
                                   1413 ; genEndFunction
      009B16 84               [ 1] 1414 	pop	a
                           00037F  1415 	Sstm8s_uart1$UART1_SendData9$294 ==.
                           00037F  1416 	Sstm8s_uart1$UART1_SendData9$295 ==.
                           00037F  1417 	XG$UART1_SendData9$0$0 ==.
      009B17 81               [ 4] 1418 	ret
                           000380  1419 	Sstm8s_uart1$UART1_SendData9$296 ==.
                           000380  1420 	Sstm8s_uart1$UART1_SendBreak$297 ==.
                                   1421 ;	../SPL/src/stm8s_uart1.c: 501: void UART1_SendBreak(void)
                                   1422 ; genLabel
                                   1423 ;	-----------------------------------------
                                   1424 ;	 function UART1_SendBreak
                                   1425 ;	-----------------------------------------
                                   1426 ;	Register assignment is optimal.
                                   1427 ;	Stack space usage: 0 bytes.
      009B18                       1428 _UART1_SendBreak:
                           000380  1429 	Sstm8s_uart1$UART1_SendBreak$298 ==.
                           000380  1430 	Sstm8s_uart1$UART1_SendBreak$299 ==.
                                   1431 ;	../SPL/src/stm8s_uart1.c: 503: UART1->CR2 |= UART1_CR2_SBK;
                                   1432 ; genPointerGet
      009B18 C6 52 35         [ 1] 1433 	ld	a, 0x5235
                                   1434 ; genOr
      009B1B AA 01            [ 1] 1435 	or	a, #0x01
                                   1436 ; genPointerSet
      009B1D C7 52 35         [ 1] 1437 	ld	0x5235, a
                                   1438 ; genLabel
      009B20                       1439 00101$:
                           000388  1440 	Sstm8s_uart1$UART1_SendBreak$300 ==.
                                   1441 ;	../SPL/src/stm8s_uart1.c: 504: }
                                   1442 ; genEndFunction
                           000388  1443 	Sstm8s_uart1$UART1_SendBreak$301 ==.
                           000388  1444 	XG$UART1_SendBreak$0$0 ==.
      009B20 81               [ 4] 1445 	ret
                           000389  1446 	Sstm8s_uart1$UART1_SendBreak$302 ==.
                           000389  1447 	Sstm8s_uart1$UART1_SetAddress$303 ==.
                                   1448 ;	../SPL/src/stm8s_uart1.c: 511: void UART1_SetAddress(uint8_t UART1_Address)
                                   1449 ; genLabel
                                   1450 ;	-----------------------------------------
                                   1451 ;	 function UART1_SetAddress
                                   1452 ;	-----------------------------------------
                                   1453 ;	Register assignment is optimal.
                                   1454 ;	Stack space usage: 0 bytes.
      009B21                       1455 _UART1_SetAddress:
                           000389  1456 	Sstm8s_uart1$UART1_SetAddress$304 ==.
                           000389  1457 	Sstm8s_uart1$UART1_SetAddress$305 ==.
                                   1458 ;	../SPL/src/stm8s_uart1.c: 517: UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
                                   1459 ; genPointerGet
      009B21 C6 52 37         [ 1] 1460 	ld	a, 0x5237
                                   1461 ; genAnd
      009B24 A4 F0            [ 1] 1462 	and	a, #0xf0
                                   1463 ; genPointerSet
      009B26 C7 52 37         [ 1] 1464 	ld	0x5237, a
                           000391  1465 	Sstm8s_uart1$UART1_SetAddress$306 ==.
                                   1466 ;	../SPL/src/stm8s_uart1.c: 519: UART1->CR4 |= UART1_Address;
                                   1467 ; genPointerGet
      009B29 C6 52 37         [ 1] 1468 	ld	a, 0x5237
                                   1469 ; genOr
      009B2C 1A 03            [ 1] 1470 	or	a, (0x03, sp)
                                   1471 ; genPointerSet
      009B2E C7 52 37         [ 1] 1472 	ld	0x5237, a
                                   1473 ; genLabel
      009B31                       1474 00101$:
                           000399  1475 	Sstm8s_uart1$UART1_SetAddress$307 ==.
                                   1476 ;	../SPL/src/stm8s_uart1.c: 520: }
                                   1477 ; genEndFunction
                           000399  1478 	Sstm8s_uart1$UART1_SetAddress$308 ==.
                           000399  1479 	XG$UART1_SetAddress$0$0 ==.
      009B31 81               [ 4] 1480 	ret
                           00039A  1481 	Sstm8s_uart1$UART1_SetAddress$309 ==.
                           00039A  1482 	Sstm8s_uart1$UART1_SetGuardTime$310 ==.
                                   1483 ;	../SPL/src/stm8s_uart1.c: 528: void UART1_SetGuardTime(uint8_t UART1_GuardTime)
                                   1484 ; genLabel
                                   1485 ;	-----------------------------------------
                                   1486 ;	 function UART1_SetGuardTime
                                   1487 ;	-----------------------------------------
                                   1488 ;	Register assignment is optimal.
                                   1489 ;	Stack space usage: 0 bytes.
      009B32                       1490 _UART1_SetGuardTime:
                           00039A  1491 	Sstm8s_uart1$UART1_SetGuardTime$311 ==.
                           00039A  1492 	Sstm8s_uart1$UART1_SetGuardTime$312 ==.
                                   1493 ;	../SPL/src/stm8s_uart1.c: 531: UART1->GTR = UART1_GuardTime;
                                   1494 ; genPointerSet
      009B32 AE 52 39         [ 2] 1495 	ldw	x, #0x5239
      009B35 7B 03            [ 1] 1496 	ld	a, (0x03, sp)
      009B37 F7               [ 1] 1497 	ld	(x), a
                                   1498 ; genLabel
      009B38                       1499 00101$:
                           0003A0  1500 	Sstm8s_uart1$UART1_SetGuardTime$313 ==.
                                   1501 ;	../SPL/src/stm8s_uart1.c: 532: }
                                   1502 ; genEndFunction
                           0003A0  1503 	Sstm8s_uart1$UART1_SetGuardTime$314 ==.
                           0003A0  1504 	XG$UART1_SetGuardTime$0$0 ==.
      009B38 81               [ 4] 1505 	ret
                           0003A1  1506 	Sstm8s_uart1$UART1_SetGuardTime$315 ==.
                           0003A1  1507 	Sstm8s_uart1$UART1_SetPrescaler$316 ==.
                                   1508 ;	../SPL/src/stm8s_uart1.c: 556: void UART1_SetPrescaler(uint8_t UART1_Prescaler)
                                   1509 ; genLabel
                                   1510 ;	-----------------------------------------
                                   1511 ;	 function UART1_SetPrescaler
                                   1512 ;	-----------------------------------------
                                   1513 ;	Register assignment is optimal.
                                   1514 ;	Stack space usage: 0 bytes.
      009B39                       1515 _UART1_SetPrescaler:
                           0003A1  1516 	Sstm8s_uart1$UART1_SetPrescaler$317 ==.
                           0003A1  1517 	Sstm8s_uart1$UART1_SetPrescaler$318 ==.
                                   1518 ;	../SPL/src/stm8s_uart1.c: 559: UART1->PSCR = UART1_Prescaler;
                                   1519 ; genPointerSet
      009B39 AE 52 3A         [ 2] 1520 	ldw	x, #0x523a
      009B3C 7B 03            [ 1] 1521 	ld	a, (0x03, sp)
      009B3E F7               [ 1] 1522 	ld	(x), a
                                   1523 ; genLabel
      009B3F                       1524 00101$:
                           0003A7  1525 	Sstm8s_uart1$UART1_SetPrescaler$319 ==.
                                   1526 ;	../SPL/src/stm8s_uart1.c: 560: }
                                   1527 ; genEndFunction
                           0003A7  1528 	Sstm8s_uart1$UART1_SetPrescaler$320 ==.
                           0003A7  1529 	XG$UART1_SetPrescaler$0$0 ==.
      009B3F 81               [ 4] 1530 	ret
                           0003A8  1531 	Sstm8s_uart1$UART1_SetPrescaler$321 ==.
                           0003A8  1532 	Sstm8s_uart1$UART1_GetFlagStatus$322 ==.
                                   1533 ;	../SPL/src/stm8s_uart1.c: 568: FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
                                   1534 ; genLabel
                                   1535 ;	-----------------------------------------
                                   1536 ;	 function UART1_GetFlagStatus
                                   1537 ;	-----------------------------------------
                                   1538 ;	Register assignment might be sub-optimal.
                                   1539 ;	Stack space usage: 3 bytes.
      009B40                       1540 _UART1_GetFlagStatus:
                           0003A8  1541 	Sstm8s_uart1$UART1_GetFlagStatus$323 ==.
      009B40 52 03            [ 2] 1542 	sub	sp, #3
                           0003AA  1543 	Sstm8s_uart1$UART1_GetFlagStatus$324 ==.
                           0003AA  1544 	Sstm8s_uart1$UART1_GetFlagStatus$325 ==.
                                   1545 ;	../SPL/src/stm8s_uart1.c: 577: if (UART1_FLAG == UART1_FLAG_LBDF)
                                   1546 ; genCast
                                   1547 ; genAssign
      009B42 16 06            [ 2] 1548 	ldw	y, (0x06, sp)
      009B44 17 01            [ 2] 1549 	ldw	(0x01, sp), y
                           0003AE  1550 	Sstm8s_uart1$UART1_GetFlagStatus$326 ==.
                                   1551 ;	../SPL/src/stm8s_uart1.c: 579: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
                                   1552 ; genCast
                                   1553 ; genAssign
      009B46 7B 07            [ 1] 1554 	ld	a, (0x07, sp)
      009B48 6B 03            [ 1] 1555 	ld	(0x03, sp), a
                           0003B2  1556 	Sstm8s_uart1$UART1_GetFlagStatus$327 ==.
                                   1557 ;	../SPL/src/stm8s_uart1.c: 577: if (UART1_FLAG == UART1_FLAG_LBDF)
                                   1558 ; genCmpEQorNE
      009B4A 1E 01            [ 2] 1559 	ldw	x, (0x01, sp)
      009B4C A3 02 10         [ 2] 1560 	cpw	x, #0x0210
      009B4F 26 03            [ 1] 1561 	jrne	00144$
      009B51 CC 9B 57         [ 2] 1562 	jp	00145$
      009B54                       1563 00144$:
      009B54 CC 9B 6B         [ 2] 1564 	jp	00114$
      009B57                       1565 00145$:
                           0003BF  1566 	Sstm8s_uart1$UART1_GetFlagStatus$328 ==.
                                   1567 ; skipping generated iCode
                           0003BF  1568 	Sstm8s_uart1$UART1_GetFlagStatus$329 ==.
                           0003BF  1569 	Sstm8s_uart1$UART1_GetFlagStatus$330 ==.
                                   1570 ;	../SPL/src/stm8s_uart1.c: 579: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
                                   1571 ; genPointerGet
      009B57 C6 52 37         [ 1] 1572 	ld	a, 0x5237
                                   1573 ; genAnd
      009B5A 14 03            [ 1] 1574 	and	a, (0x03, sp)
                                   1575 ; genIfx
      009B5C 4D               [ 1] 1576 	tnz	a
      009B5D 26 03            [ 1] 1577 	jrne	00146$
      009B5F CC 9B 67         [ 2] 1578 	jp	00102$
      009B62                       1579 00146$:
                           0003CA  1580 	Sstm8s_uart1$UART1_GetFlagStatus$331 ==.
                           0003CA  1581 	Sstm8s_uart1$UART1_GetFlagStatus$332 ==.
                                   1582 ;	../SPL/src/stm8s_uart1.c: 582: status = SET;
                                   1583 ; genAssign
      009B62 A6 01            [ 1] 1584 	ld	a, #0x01
                           0003CC  1585 	Sstm8s_uart1$UART1_GetFlagStatus$333 ==.
                                   1586 ; genGoto
      009B64 CC 9B 9D         [ 2] 1587 	jp	00115$
                                   1588 ; genLabel
      009B67                       1589 00102$:
                           0003CF  1590 	Sstm8s_uart1$UART1_GetFlagStatus$334 ==.
                           0003CF  1591 	Sstm8s_uart1$UART1_GetFlagStatus$335 ==.
                                   1592 ;	../SPL/src/stm8s_uart1.c: 587: status = RESET;
                                   1593 ; genAssign
      009B67 4F               [ 1] 1594 	clr	a
                           0003D0  1595 	Sstm8s_uart1$UART1_GetFlagStatus$336 ==.
                                   1596 ; genGoto
      009B68 CC 9B 9D         [ 2] 1597 	jp	00115$
                                   1598 ; genLabel
      009B6B                       1599 00114$:
                           0003D3  1600 	Sstm8s_uart1$UART1_GetFlagStatus$337 ==.
                                   1601 ;	../SPL/src/stm8s_uart1.c: 590: else if (UART1_FLAG == UART1_FLAG_SBK)
                                   1602 ; genCmpEQorNE
      009B6B 1E 01            [ 2] 1603 	ldw	x, (0x01, sp)
      009B6D A3 01 01         [ 2] 1604 	cpw	x, #0x0101
      009B70 26 03            [ 1] 1605 	jrne	00148$
      009B72 CC 9B 78         [ 2] 1606 	jp	00149$
      009B75                       1607 00148$:
      009B75 CC 9B 8C         [ 2] 1608 	jp	00111$
      009B78                       1609 00149$:
                           0003E0  1610 	Sstm8s_uart1$UART1_GetFlagStatus$338 ==.
                                   1611 ; skipping generated iCode
                           0003E0  1612 	Sstm8s_uart1$UART1_GetFlagStatus$339 ==.
                           0003E0  1613 	Sstm8s_uart1$UART1_GetFlagStatus$340 ==.
                                   1614 ;	../SPL/src/stm8s_uart1.c: 592: if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
                                   1615 ; genPointerGet
      009B78 C6 52 35         [ 1] 1616 	ld	a, 0x5235
                                   1617 ; genAnd
      009B7B 14 03            [ 1] 1618 	and	a, (0x03, sp)
                                   1619 ; genIfx
      009B7D 4D               [ 1] 1620 	tnz	a
      009B7E 26 03            [ 1] 1621 	jrne	00150$
      009B80 CC 9B 88         [ 2] 1622 	jp	00105$
      009B83                       1623 00150$:
                           0003EB  1624 	Sstm8s_uart1$UART1_GetFlagStatus$341 ==.
                           0003EB  1625 	Sstm8s_uart1$UART1_GetFlagStatus$342 ==.
                                   1626 ;	../SPL/src/stm8s_uart1.c: 595: status = SET;
                                   1627 ; genAssign
      009B83 A6 01            [ 1] 1628 	ld	a, #0x01
                           0003ED  1629 	Sstm8s_uart1$UART1_GetFlagStatus$343 ==.
                                   1630 ; genGoto
      009B85 CC 9B 9D         [ 2] 1631 	jp	00115$
                                   1632 ; genLabel
      009B88                       1633 00105$:
                           0003F0  1634 	Sstm8s_uart1$UART1_GetFlagStatus$344 ==.
                           0003F0  1635 	Sstm8s_uart1$UART1_GetFlagStatus$345 ==.
                                   1636 ;	../SPL/src/stm8s_uart1.c: 600: status = RESET;
                                   1637 ; genAssign
      009B88 4F               [ 1] 1638 	clr	a
                           0003F1  1639 	Sstm8s_uart1$UART1_GetFlagStatus$346 ==.
                                   1640 ; genGoto
      009B89 CC 9B 9D         [ 2] 1641 	jp	00115$
                                   1642 ; genLabel
      009B8C                       1643 00111$:
                           0003F4  1644 	Sstm8s_uart1$UART1_GetFlagStatus$347 ==.
                           0003F4  1645 	Sstm8s_uart1$UART1_GetFlagStatus$348 ==.
                                   1646 ;	../SPL/src/stm8s_uart1.c: 605: if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
                                   1647 ; genPointerGet
      009B8C C6 52 30         [ 1] 1648 	ld	a, 0x5230
                                   1649 ; genAnd
      009B8F 14 03            [ 1] 1650 	and	a, (0x03, sp)
                                   1651 ; genIfx
      009B91 4D               [ 1] 1652 	tnz	a
      009B92 26 03            [ 1] 1653 	jrne	00151$
      009B94 CC 9B 9C         [ 2] 1654 	jp	00108$
      009B97                       1655 00151$:
                           0003FF  1656 	Sstm8s_uart1$UART1_GetFlagStatus$349 ==.
                           0003FF  1657 	Sstm8s_uart1$UART1_GetFlagStatus$350 ==.
                                   1658 ;	../SPL/src/stm8s_uart1.c: 608: status = SET;
                                   1659 ; genAssign
      009B97 A6 01            [ 1] 1660 	ld	a, #0x01
                           000401  1661 	Sstm8s_uart1$UART1_GetFlagStatus$351 ==.
                                   1662 ; genGoto
      009B99 CC 9B 9D         [ 2] 1663 	jp	00115$
                                   1664 ; genLabel
      009B9C                       1665 00108$:
                           000404  1666 	Sstm8s_uart1$UART1_GetFlagStatus$352 ==.
                           000404  1667 	Sstm8s_uart1$UART1_GetFlagStatus$353 ==.
                                   1668 ;	../SPL/src/stm8s_uart1.c: 613: status = RESET;
                                   1669 ; genAssign
      009B9C 4F               [ 1] 1670 	clr	a
                           000405  1671 	Sstm8s_uart1$UART1_GetFlagStatus$354 ==.
                                   1672 ; genLabel
      009B9D                       1673 00115$:
                           000405  1674 	Sstm8s_uart1$UART1_GetFlagStatus$355 ==.
                                   1675 ;	../SPL/src/stm8s_uart1.c: 617: return status;
                                   1676 ; genReturn
                                   1677 ; genLabel
      009B9D                       1678 00116$:
                           000405  1679 	Sstm8s_uart1$UART1_GetFlagStatus$356 ==.
                                   1680 ;	../SPL/src/stm8s_uart1.c: 618: }
                                   1681 ; genEndFunction
      009B9D 5B 03            [ 2] 1682 	addw	sp, #3
                           000407  1683 	Sstm8s_uart1$UART1_GetFlagStatus$357 ==.
                           000407  1684 	Sstm8s_uart1$UART1_GetFlagStatus$358 ==.
                           000407  1685 	XG$UART1_GetFlagStatus$0$0 ==.
      009B9F 81               [ 4] 1686 	ret
                           000408  1687 	Sstm8s_uart1$UART1_GetFlagStatus$359 ==.
                           000408  1688 	Sstm8s_uart1$UART1_ClearFlag$360 ==.
                                   1689 ;	../SPL/src/stm8s_uart1.c: 646: void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
                                   1690 ; genLabel
                                   1691 ;	-----------------------------------------
                                   1692 ;	 function UART1_ClearFlag
                                   1693 ;	-----------------------------------------
                                   1694 ;	Register assignment is optimal.
                                   1695 ;	Stack space usage: 0 bytes.
      009BA0                       1696 _UART1_ClearFlag:
                           000408  1697 	Sstm8s_uart1$UART1_ClearFlag$361 ==.
                           000408  1698 	Sstm8s_uart1$UART1_ClearFlag$362 ==.
                                   1699 ;	../SPL/src/stm8s_uart1.c: 651: if (UART1_FLAG == UART1_FLAG_RXNE)
                                   1700 ; genCast
                                   1701 ; genAssign
      009BA0 1E 03            [ 2] 1702 	ldw	x, (0x03, sp)
                                   1703 ; genCmpEQorNE
      009BA2 A3 00 20         [ 2] 1704 	cpw	x, #0x0020
      009BA5 26 03            [ 1] 1705 	jrne	00112$
      009BA7 CC 9B AD         [ 2] 1706 	jp	00113$
      009BAA                       1707 00112$:
      009BAA CC 9B B4         [ 2] 1708 	jp	00102$
      009BAD                       1709 00113$:
                           000415  1710 	Sstm8s_uart1$UART1_ClearFlag$363 ==.
                                   1711 ; skipping generated iCode
                           000415  1712 	Sstm8s_uart1$UART1_ClearFlag$364 ==.
                           000415  1713 	Sstm8s_uart1$UART1_ClearFlag$365 ==.
                                   1714 ;	../SPL/src/stm8s_uart1.c: 653: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
                                   1715 ; genPointerSet
      009BAD 35 DF 52 30      [ 1] 1716 	mov	0x5230+0, #0xdf
                           000419  1717 	Sstm8s_uart1$UART1_ClearFlag$366 ==.
                                   1718 ; genGoto
      009BB1 CC 9B BC         [ 2] 1719 	jp	00104$
                                   1720 ; genLabel
      009BB4                       1721 00102$:
                           00041C  1722 	Sstm8s_uart1$UART1_ClearFlag$367 ==.
                           00041C  1723 	Sstm8s_uart1$UART1_ClearFlag$368 ==.
                                   1724 ;	../SPL/src/stm8s_uart1.c: 658: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
                                   1725 ; genPointerGet
      009BB4 C6 52 37         [ 1] 1726 	ld	a, 0x5237
                                   1727 ; genAnd
      009BB7 A4 EF            [ 1] 1728 	and	a, #0xef
                                   1729 ; genPointerSet
      009BB9 C7 52 37         [ 1] 1730 	ld	0x5237, a
                           000424  1731 	Sstm8s_uart1$UART1_ClearFlag$369 ==.
                                   1732 ; genLabel
      009BBC                       1733 00104$:
                           000424  1734 	Sstm8s_uart1$UART1_ClearFlag$370 ==.
                                   1735 ;	../SPL/src/stm8s_uart1.c: 660: }
                                   1736 ; genEndFunction
                           000424  1737 	Sstm8s_uart1$UART1_ClearFlag$371 ==.
                           000424  1738 	XG$UART1_ClearFlag$0$0 ==.
      009BBC 81               [ 4] 1739 	ret
                           000425  1740 	Sstm8s_uart1$UART1_ClearFlag$372 ==.
                           000425  1741 	Sstm8s_uart1$UART1_GetITStatus$373 ==.
                                   1742 ;	../SPL/src/stm8s_uart1.c: 675: ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
                                   1743 ; genLabel
                                   1744 ;	-----------------------------------------
                                   1745 ;	 function UART1_GetITStatus
                                   1746 ;	-----------------------------------------
                                   1747 ;	Register assignment might be sub-optimal.
                                   1748 ;	Stack space usage: 4 bytes.
      009BBD                       1749 _UART1_GetITStatus:
                           000425  1750 	Sstm8s_uart1$UART1_GetITStatus$374 ==.
      009BBD 52 04            [ 2] 1751 	sub	sp, #4
                           000427  1752 	Sstm8s_uart1$UART1_GetITStatus$375 ==.
                           000427  1753 	Sstm8s_uart1$UART1_GetITStatus$376 ==.
                                   1754 ;	../SPL/src/stm8s_uart1.c: 687: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
                                   1755 ; genCast
                                   1756 ; genAssign
      009BBF 7B 08            [ 1] 1757 	ld	a, (0x08, sp)
      009BC1 97               [ 1] 1758 	ld	xl, a
                                   1759 ; genAnd
      009BC2 9F               [ 1] 1760 	ld	a, xl
      009BC3 A4 0F            [ 1] 1761 	and	a, #0x0f
                                   1762 ; genLeftShift
      009BC5 88               [ 1] 1763 	push	a
                           00042E  1764 	Sstm8s_uart1$UART1_GetITStatus$377 ==.
      009BC6 A6 01            [ 1] 1765 	ld	a, #0x01
      009BC8 6B 02            [ 1] 1766 	ld	(0x02, sp), a
      009BCA 84               [ 1] 1767 	pop	a
                           000433  1768 	Sstm8s_uart1$UART1_GetITStatus$378 ==.
      009BCB 4D               [ 1] 1769 	tnz	a
      009BCC 27 05            [ 1] 1770 	jreq	00162$
      009BCE                       1771 00161$:
      009BCE 08 01            [ 1] 1772 	sll	(0x01, sp)
      009BD0 4A               [ 1] 1773 	dec	a
      009BD1 26 FB            [ 1] 1774 	jrne	00161$
      009BD3                       1775 00162$:
                           00043B  1776 	Sstm8s_uart1$UART1_GetITStatus$379 ==.
                                   1777 ;	../SPL/src/stm8s_uart1.c: 689: itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
                                   1778 ; genRightShiftLiteral
      009BD3 9F               [ 1] 1779 	ld	a, xl
      009BD4 4E               [ 1] 1780 	swap	a
      009BD5 A4 0F            [ 1] 1781 	and	a, #0x0f
                           00043F  1782 	Sstm8s_uart1$UART1_GetITStatus$380 ==.
                                   1783 ;	../SPL/src/stm8s_uart1.c: 691: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
                                   1784 ; genLeftShift
      009BD7 88               [ 1] 1785 	push	a
                           000440  1786 	Sstm8s_uart1$UART1_GetITStatus$381 ==.
      009BD8 A6 01            [ 1] 1787 	ld	a, #0x01
      009BDA 6B 03            [ 1] 1788 	ld	(0x03, sp), a
      009BDC 84               [ 1] 1789 	pop	a
                           000445  1790 	Sstm8s_uart1$UART1_GetITStatus$382 ==.
      009BDD 4D               [ 1] 1791 	tnz	a
      009BDE 27 05            [ 1] 1792 	jreq	00164$
      009BE0                       1793 00163$:
      009BE0 08 02            [ 1] 1794 	sll	(0x02, sp)
      009BE2 4A               [ 1] 1795 	dec	a
      009BE3 26 FB            [ 1] 1796 	jrne	00163$
      009BE5                       1797 00164$:
                           00044D  1798 	Sstm8s_uart1$UART1_GetITStatus$383 ==.
                                   1799 ;	../SPL/src/stm8s_uart1.c: 695: if (UART1_IT == UART1_IT_PE)
                                   1800 ; genCast
                                   1801 ; genAssign
      009BE5 16 07            [ 2] 1802 	ldw	y, (0x07, sp)
      009BE7 17 03            [ 2] 1803 	ldw	(0x03, sp), y
                                   1804 ; genCmpEQorNE
      009BE9 1E 03            [ 2] 1805 	ldw	x, (0x03, sp)
      009BEB A3 01 00         [ 2] 1806 	cpw	x, #0x0100
      009BEE 26 03            [ 1] 1807 	jrne	00166$
      009BF0 CC 9B F6         [ 2] 1808 	jp	00167$
      009BF3                       1809 00166$:
      009BF3 CC 9C 17         [ 2] 1810 	jp	00117$
      009BF6                       1811 00167$:
                           00045E  1812 	Sstm8s_uart1$UART1_GetITStatus$384 ==.
                                   1813 ; skipping generated iCode
                           00045E  1814 	Sstm8s_uart1$UART1_GetITStatus$385 ==.
                           00045E  1815 	Sstm8s_uart1$UART1_GetITStatus$386 ==.
                                   1816 ;	../SPL/src/stm8s_uart1.c: 698: enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
                                   1817 ; genPointerGet
      009BF6 C6 52 34         [ 1] 1818 	ld	a, 0x5234
                                   1819 ; genAnd
      009BF9 14 02            [ 1] 1820 	and	a, (0x02, sp)
      009BFB 97               [ 1] 1821 	ld	xl, a
                           000464  1822 	Sstm8s_uart1$UART1_GetITStatus$387 ==.
                                   1823 ;	../SPL/src/stm8s_uart1.c: 701: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
                                   1824 ; genPointerGet
      009BFC C6 52 30         [ 1] 1825 	ld	a, 0x5230
                                   1826 ; genAnd
      009BFF 14 01            [ 1] 1827 	and	a, (0x01, sp)
                                   1828 ; genIfx
      009C01 4D               [ 1] 1829 	tnz	a
      009C02 26 03            [ 1] 1830 	jrne	00168$
      009C04 CC 9C 13         [ 2] 1831 	jp	00102$
      009C07                       1832 00168$:
                                   1833 ; genIfx
      009C07 9F               [ 1] 1834 	ld	a, xl
      009C08 4D               [ 1] 1835 	tnz	a
      009C09 26 03            [ 1] 1836 	jrne	00169$
      009C0B CC 9C 13         [ 2] 1837 	jp	00102$
      009C0E                       1838 00169$:
                           000476  1839 	Sstm8s_uart1$UART1_GetITStatus$388 ==.
                           000476  1840 	Sstm8s_uart1$UART1_GetITStatus$389 ==.
                                   1841 ;	../SPL/src/stm8s_uart1.c: 704: pendingbitstatus = SET;
                                   1842 ; genAssign
      009C0E A6 01            [ 1] 1843 	ld	a, #0x01
                           000478  1844 	Sstm8s_uart1$UART1_GetITStatus$390 ==.
                                   1845 ; genGoto
      009C10 CC 9C 63         [ 2] 1846 	jp	00118$
                                   1847 ; genLabel
      009C13                       1848 00102$:
                           00047B  1849 	Sstm8s_uart1$UART1_GetITStatus$391 ==.
                           00047B  1850 	Sstm8s_uart1$UART1_GetITStatus$392 ==.
                                   1851 ;	../SPL/src/stm8s_uart1.c: 709: pendingbitstatus = RESET;
                                   1852 ; genAssign
      009C13 4F               [ 1] 1853 	clr	a
                           00047C  1854 	Sstm8s_uart1$UART1_GetITStatus$393 ==.
                                   1855 ; genGoto
      009C14 CC 9C 63         [ 2] 1856 	jp	00118$
                                   1857 ; genLabel
      009C17                       1858 00117$:
                           00047F  1859 	Sstm8s_uart1$UART1_GetITStatus$394 ==.
                                   1860 ;	../SPL/src/stm8s_uart1.c: 713: else if (UART1_IT == UART1_IT_LBDF)
                                   1861 ; genCmpEQorNE
      009C17 1E 03            [ 2] 1862 	ldw	x, (0x03, sp)
      009C19 A3 03 46         [ 2] 1863 	cpw	x, #0x0346
      009C1C 26 03            [ 1] 1864 	jrne	00171$
      009C1E CC 9C 24         [ 2] 1865 	jp	00172$
      009C21                       1866 00171$:
      009C21 CC 9C 45         [ 2] 1867 	jp	00114$
      009C24                       1868 00172$:
                           00048C  1869 	Sstm8s_uart1$UART1_GetITStatus$395 ==.
                                   1870 ; skipping generated iCode
                           00048C  1871 	Sstm8s_uart1$UART1_GetITStatus$396 ==.
                           00048C  1872 	Sstm8s_uart1$UART1_GetITStatus$397 ==.
                                   1873 ;	../SPL/src/stm8s_uart1.c: 716: enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
                                   1874 ; genPointerGet
      009C24 C6 52 37         [ 1] 1875 	ld	a, 0x5237
                                   1876 ; genAnd
      009C27 14 02            [ 1] 1877 	and	a, (0x02, sp)
                                   1878 ; genAssign
      009C29 97               [ 1] 1879 	ld	xl, a
                           000492  1880 	Sstm8s_uart1$UART1_GetITStatus$398 ==.
                                   1881 ;	../SPL/src/stm8s_uart1.c: 718: if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
                                   1882 ; genPointerGet
      009C2A C6 52 37         [ 1] 1883 	ld	a, 0x5237
                                   1884 ; genAnd
      009C2D 14 01            [ 1] 1885 	and	a, (0x01, sp)
                                   1886 ; genIfx
      009C2F 4D               [ 1] 1887 	tnz	a
      009C30 26 03            [ 1] 1888 	jrne	00173$
      009C32 CC 9C 41         [ 2] 1889 	jp	00106$
      009C35                       1890 00173$:
                                   1891 ; genIfx
      009C35 9F               [ 1] 1892 	ld	a, xl
      009C36 4D               [ 1] 1893 	tnz	a
      009C37 26 03            [ 1] 1894 	jrne	00174$
      009C39 CC 9C 41         [ 2] 1895 	jp	00106$
      009C3C                       1896 00174$:
                           0004A4  1897 	Sstm8s_uart1$UART1_GetITStatus$399 ==.
                           0004A4  1898 	Sstm8s_uart1$UART1_GetITStatus$400 ==.
                                   1899 ;	../SPL/src/stm8s_uart1.c: 721: pendingbitstatus = SET;
                                   1900 ; genAssign
      009C3C A6 01            [ 1] 1901 	ld	a, #0x01
                           0004A6  1902 	Sstm8s_uart1$UART1_GetITStatus$401 ==.
                                   1903 ; genGoto
      009C3E CC 9C 63         [ 2] 1904 	jp	00118$
                                   1905 ; genLabel
      009C41                       1906 00106$:
                           0004A9  1907 	Sstm8s_uart1$UART1_GetITStatus$402 ==.
                           0004A9  1908 	Sstm8s_uart1$UART1_GetITStatus$403 ==.
                                   1909 ;	../SPL/src/stm8s_uart1.c: 726: pendingbitstatus = RESET;
                                   1910 ; genAssign
      009C41 4F               [ 1] 1911 	clr	a
                           0004AA  1912 	Sstm8s_uart1$UART1_GetITStatus$404 ==.
                                   1913 ; genGoto
      009C42 CC 9C 63         [ 2] 1914 	jp	00118$
                                   1915 ; genLabel
      009C45                       1916 00114$:
                           0004AD  1917 	Sstm8s_uart1$UART1_GetITStatus$405 ==.
                           0004AD  1918 	Sstm8s_uart1$UART1_GetITStatus$406 ==.
                                   1919 ;	../SPL/src/stm8s_uart1.c: 732: enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
                                   1920 ; genPointerGet
      009C45 C6 52 35         [ 1] 1921 	ld	a, 0x5235
                                   1922 ; genAnd
      009C48 14 02            [ 1] 1923 	and	a, (0x02, sp)
      009C4A 97               [ 1] 1924 	ld	xl, a
                           0004B3  1925 	Sstm8s_uart1$UART1_GetITStatus$407 ==.
                                   1926 ;	../SPL/src/stm8s_uart1.c: 734: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
                                   1927 ; genPointerGet
      009C4B C6 52 30         [ 1] 1928 	ld	a, 0x5230
                                   1929 ; genAnd
      009C4E 14 01            [ 1] 1930 	and	a, (0x01, sp)
                                   1931 ; genIfx
      009C50 4D               [ 1] 1932 	tnz	a
      009C51 26 03            [ 1] 1933 	jrne	00175$
      009C53 CC 9C 62         [ 2] 1934 	jp	00110$
      009C56                       1935 00175$:
                                   1936 ; genIfx
      009C56 9F               [ 1] 1937 	ld	a, xl
      009C57 4D               [ 1] 1938 	tnz	a
      009C58 26 03            [ 1] 1939 	jrne	00176$
      009C5A CC 9C 62         [ 2] 1940 	jp	00110$
      009C5D                       1941 00176$:
                           0004C5  1942 	Sstm8s_uart1$UART1_GetITStatus$408 ==.
                           0004C5  1943 	Sstm8s_uart1$UART1_GetITStatus$409 ==.
                                   1944 ;	../SPL/src/stm8s_uart1.c: 737: pendingbitstatus = SET;
                                   1945 ; genAssign
      009C5D A6 01            [ 1] 1946 	ld	a, #0x01
                           0004C7  1947 	Sstm8s_uart1$UART1_GetITStatus$410 ==.
                                   1948 ; genGoto
      009C5F CC 9C 63         [ 2] 1949 	jp	00118$
                                   1950 ; genLabel
      009C62                       1951 00110$:
                           0004CA  1952 	Sstm8s_uart1$UART1_GetITStatus$411 ==.
                           0004CA  1953 	Sstm8s_uart1$UART1_GetITStatus$412 ==.
                                   1954 ;	../SPL/src/stm8s_uart1.c: 742: pendingbitstatus = RESET;
                                   1955 ; genAssign
      009C62 4F               [ 1] 1956 	clr	a
                           0004CB  1957 	Sstm8s_uart1$UART1_GetITStatus$413 ==.
                                   1958 ; genLabel
      009C63                       1959 00118$:
                           0004CB  1960 	Sstm8s_uart1$UART1_GetITStatus$414 ==.
                                   1961 ;	../SPL/src/stm8s_uart1.c: 747: return  pendingbitstatus;
                                   1962 ; genReturn
                                   1963 ; genLabel
      009C63                       1964 00119$:
                           0004CB  1965 	Sstm8s_uart1$UART1_GetITStatus$415 ==.
                                   1966 ;	../SPL/src/stm8s_uart1.c: 748: }
                                   1967 ; genEndFunction
      009C63 5B 04            [ 2] 1968 	addw	sp, #4
                           0004CD  1969 	Sstm8s_uart1$UART1_GetITStatus$416 ==.
                           0004CD  1970 	Sstm8s_uart1$UART1_GetITStatus$417 ==.
                           0004CD  1971 	XG$UART1_GetITStatus$0$0 ==.
      009C65 81               [ 4] 1972 	ret
                           0004CE  1973 	Sstm8s_uart1$UART1_GetITStatus$418 ==.
                           0004CE  1974 	Sstm8s_uart1$UART1_ClearITPendingBit$419 ==.
                                   1975 ;	../SPL/src/stm8s_uart1.c: 775: void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
                                   1976 ; genLabel
                                   1977 ;	-----------------------------------------
                                   1978 ;	 function UART1_ClearITPendingBit
                                   1979 ;	-----------------------------------------
                                   1980 ;	Register assignment is optimal.
                                   1981 ;	Stack space usage: 0 bytes.
      009C66                       1982 _UART1_ClearITPendingBit:
                           0004CE  1983 	Sstm8s_uart1$UART1_ClearITPendingBit$420 ==.
                           0004CE  1984 	Sstm8s_uart1$UART1_ClearITPendingBit$421 ==.
                                   1985 ;	../SPL/src/stm8s_uart1.c: 780: if (UART1_IT == UART1_IT_RXNE)
                                   1986 ; genCast
                                   1987 ; genAssign
      009C66 1E 03            [ 2] 1988 	ldw	x, (0x03, sp)
                                   1989 ; genCmpEQorNE
      009C68 A3 02 55         [ 2] 1990 	cpw	x, #0x0255
      009C6B 26 03            [ 1] 1991 	jrne	00112$
      009C6D CC 9C 73         [ 2] 1992 	jp	00113$
      009C70                       1993 00112$:
      009C70 CC 9C 7A         [ 2] 1994 	jp	00102$
      009C73                       1995 00113$:
                           0004DB  1996 	Sstm8s_uart1$UART1_ClearITPendingBit$422 ==.
                                   1997 ; skipping generated iCode
                           0004DB  1998 	Sstm8s_uart1$UART1_ClearITPendingBit$423 ==.
                           0004DB  1999 	Sstm8s_uart1$UART1_ClearITPendingBit$424 ==.
                                   2000 ;	../SPL/src/stm8s_uart1.c: 782: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
                                   2001 ; genPointerSet
      009C73 35 DF 52 30      [ 1] 2002 	mov	0x5230+0, #0xdf
                           0004DF  2003 	Sstm8s_uart1$UART1_ClearITPendingBit$425 ==.
                                   2004 ; genGoto
      009C77 CC 9C 82         [ 2] 2005 	jp	00104$
                                   2006 ; genLabel
      009C7A                       2007 00102$:
                           0004E2  2008 	Sstm8s_uart1$UART1_ClearITPendingBit$426 ==.
                           0004E2  2009 	Sstm8s_uart1$UART1_ClearITPendingBit$427 ==.
                                   2010 ;	../SPL/src/stm8s_uart1.c: 787: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
                                   2011 ; genPointerGet
      009C7A C6 52 37         [ 1] 2012 	ld	a, 0x5237
                                   2013 ; genAnd
      009C7D A4 EF            [ 1] 2014 	and	a, #0xef
                                   2015 ; genPointerSet
      009C7F C7 52 37         [ 1] 2016 	ld	0x5237, a
                           0004EA  2017 	Sstm8s_uart1$UART1_ClearITPendingBit$428 ==.
                                   2018 ; genLabel
      009C82                       2019 00104$:
                           0004EA  2020 	Sstm8s_uart1$UART1_ClearITPendingBit$429 ==.
                                   2021 ;	../SPL/src/stm8s_uart1.c: 789: }
                                   2022 ; genEndFunction
                           0004EA  2023 	Sstm8s_uart1$UART1_ClearITPendingBit$430 ==.
                           0004EA  2024 	XG$UART1_ClearITPendingBit$0$0 ==.
      009C82 81               [ 4] 2025 	ret
                           0004EB  2026 	Sstm8s_uart1$UART1_ClearITPendingBit$431 ==.
                                   2027 	.area CODE
                                   2028 	.area CONST
                                   2029 	.area INITIALIZER
                                   2030 	.area CABS (ABS)
                                   2031 
                                   2032 	.area .debug_line (NOLOAD)
      0022D1 00 00 06 1D           2033 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0022D5                       2034 Ldebug_line_start:
      0022D5 00 02                 2035 	.dw	2
      0022D7 00 00 00 79           2036 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0022DB 01                    2037 	.db	1
      0022DC 01                    2038 	.db	1
      0022DD FB                    2039 	.db	-5
      0022DE 0F                    2040 	.db	15
      0022DF 0A                    2041 	.db	10
      0022E0 00                    2042 	.db	0
      0022E1 01                    2043 	.db	1
      0022E2 01                    2044 	.db	1
      0022E3 01                    2045 	.db	1
      0022E4 01                    2046 	.db	1
      0022E5 00                    2047 	.db	0
      0022E6 00                    2048 	.db	0
      0022E7 00                    2049 	.db	0
      0022E8 01                    2050 	.db	1
      0022E9 43 3A 5C 50 72 6F 67  2051 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      002311 00                    2052 	.db	0
      002312 43 3A 5C 50 72 6F 67  2053 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      002335 00                    2054 	.db	0
      002336 00                    2055 	.db	0
      002337 2E 2E 2F 53 50 4C 2F  2056 	.ascii "../SPL/src/stm8s_uart1.c"
             73 72 63 2F 73 74 6D
             38 73 5F 75 61 72 74
             31 2E 63
      00234F 00                    2057 	.db	0
      002350 00                    2058 	.uleb128	0
      002351 00                    2059 	.uleb128	0
      002352 00                    2060 	.uleb128	0
      002353 00                    2061 	.db	0
      002354                       2062 Ldebug_line_stmt:
      002354 00                    2063 	.db	0
      002355 05                    2064 	.uleb128	5
      002356 02                    2065 	.db	2
      002357 00 00 97 98           2066 	.dw	0,(Sstm8s_uart1$UART1_DeInit$0)
      00235B 03                    2067 	.db	3
      00235C 34                    2068 	.sleb128	52
      00235D 01                    2069 	.db	1
      00235E 09                    2070 	.db	9
      00235F 00 00                 2071 	.dw	Sstm8s_uart1$UART1_DeInit$2-Sstm8s_uart1$UART1_DeInit$0
      002361 03                    2072 	.db	3
      002362 04                    2073 	.sleb128	4
      002363 01                    2074 	.db	1
      002364 09                    2075 	.db	9
      002365 00 03                 2076 	.dw	Sstm8s_uart1$UART1_DeInit$3-Sstm8s_uart1$UART1_DeInit$2
      002367 03                    2077 	.db	3
      002368 01                    2078 	.sleb128	1
      002369 01                    2079 	.db	1
      00236A 09                    2080 	.db	9
      00236B 00 03                 2081 	.dw	Sstm8s_uart1$UART1_DeInit$4-Sstm8s_uart1$UART1_DeInit$3
      00236D 03                    2082 	.db	3
      00236E 02                    2083 	.sleb128	2
      00236F 01                    2084 	.db	1
      002370 09                    2085 	.db	9
      002371 00 04                 2086 	.dw	Sstm8s_uart1$UART1_DeInit$5-Sstm8s_uart1$UART1_DeInit$4
      002373 03                    2087 	.db	3
      002374 01                    2088 	.sleb128	1
      002375 01                    2089 	.db	1
      002376 09                    2090 	.db	9
      002377 00 04                 2091 	.dw	Sstm8s_uart1$UART1_DeInit$6-Sstm8s_uart1$UART1_DeInit$5
      002379 03                    2092 	.db	3
      00237A 02                    2093 	.sleb128	2
      00237B 01                    2094 	.db	1
      00237C 09                    2095 	.db	9
      00237D 00 04                 2096 	.dw	Sstm8s_uart1$UART1_DeInit$7-Sstm8s_uart1$UART1_DeInit$6
      00237F 03                    2097 	.db	3
      002380 01                    2098 	.sleb128	1
      002381 01                    2099 	.db	1
      002382 09                    2100 	.db	9
      002383 00 04                 2101 	.dw	Sstm8s_uart1$UART1_DeInit$8-Sstm8s_uart1$UART1_DeInit$7
      002385 03                    2102 	.db	3
      002386 01                    2103 	.sleb128	1
      002387 01                    2104 	.db	1
      002388 09                    2105 	.db	9
      002389 00 04                 2106 	.dw	Sstm8s_uart1$UART1_DeInit$9-Sstm8s_uart1$UART1_DeInit$8
      00238B 03                    2107 	.db	3
      00238C 01                    2108 	.sleb128	1
      00238D 01                    2109 	.db	1
      00238E 09                    2110 	.db	9
      00238F 00 04                 2111 	.dw	Sstm8s_uart1$UART1_DeInit$10-Sstm8s_uart1$UART1_DeInit$9
      002391 03                    2112 	.db	3
      002392 01                    2113 	.sleb128	1
      002393 01                    2114 	.db	1
      002394 09                    2115 	.db	9
      002395 00 04                 2116 	.dw	Sstm8s_uart1$UART1_DeInit$11-Sstm8s_uart1$UART1_DeInit$10
      002397 03                    2117 	.db	3
      002398 02                    2118 	.sleb128	2
      002399 01                    2119 	.db	1
      00239A 09                    2120 	.db	9
      00239B 00 04                 2121 	.dw	Sstm8s_uart1$UART1_DeInit$12-Sstm8s_uart1$UART1_DeInit$11
      00239D 03                    2122 	.db	3
      00239E 01                    2123 	.sleb128	1
      00239F 01                    2124 	.db	1
      0023A0 09                    2125 	.db	9
      0023A1 00 04                 2126 	.dw	Sstm8s_uart1$UART1_DeInit$13-Sstm8s_uart1$UART1_DeInit$12
      0023A3 03                    2127 	.db	3
      0023A4 01                    2128 	.sleb128	1
      0023A5 01                    2129 	.db	1
      0023A6 09                    2130 	.db	9
      0023A7 00 01                 2131 	.dw	1+Sstm8s_uart1$UART1_DeInit$14-Sstm8s_uart1$UART1_DeInit$13
      0023A9 00                    2132 	.db	0
      0023AA 01                    2133 	.uleb128	1
      0023AB 01                    2134 	.db	1
      0023AC 00                    2135 	.db	0
      0023AD 05                    2136 	.uleb128	5
      0023AE 02                    2137 	.db	2
      0023AF 00 00 97 C3           2138 	.dw	0,(Sstm8s_uart1$UART1_Init$16)
      0023B3 03                    2139 	.db	3
      0023B4 D9 00                 2140 	.sleb128	89
      0023B6 01                    2141 	.db	1
      0023B7 09                    2142 	.db	9
      0023B8 00 02                 2143 	.dw	Sstm8s_uart1$UART1_Init$19-Sstm8s_uart1$UART1_Init$16
      0023BA 03                    2144 	.db	3
      0023BB 0F                    2145 	.sleb128	15
      0023BC 01                    2146 	.db	1
      0023BD 09                    2147 	.db	9
      0023BE 00 08                 2148 	.dw	Sstm8s_uart1$UART1_Init$20-Sstm8s_uart1$UART1_Init$19
      0023C0 03                    2149 	.db	3
      0023C1 03                    2150 	.sleb128	3
      0023C2 01                    2151 	.db	1
      0023C3 09                    2152 	.db	9
      0023C4 00 08                 2153 	.dw	Sstm8s_uart1$UART1_Init$21-Sstm8s_uart1$UART1_Init$20
      0023C6 03                    2154 	.db	3
      0023C7 03                    2155 	.sleb128	3
      0023C8 01                    2156 	.db	1
      0023C9 09                    2157 	.db	9
      0023CA 00 08                 2158 	.dw	Sstm8s_uart1$UART1_Init$22-Sstm8s_uart1$UART1_Init$21
      0023CC 03                    2159 	.db	3
      0023CD 02                    2160 	.sleb128	2
      0023CE 01                    2161 	.db	1
      0023CF 09                    2162 	.db	9
      0023D0 00 08                 2163 	.dw	Sstm8s_uart1$UART1_Init$23-Sstm8s_uart1$UART1_Init$22
      0023D2 03                    2164 	.db	3
      0023D3 03                    2165 	.sleb128	3
      0023D4 01                    2166 	.db	1
      0023D5 09                    2167 	.db	9
      0023D6 00 08                 2168 	.dw	Sstm8s_uart1$UART1_Init$24-Sstm8s_uart1$UART1_Init$23
      0023D8 03                    2169 	.db	3
      0023D9 02                    2170 	.sleb128	2
      0023DA 01                    2171 	.db	1
      0023DB 09                    2172 	.db	9
      0023DC 00 08                 2173 	.dw	Sstm8s_uart1$UART1_Init$25-Sstm8s_uart1$UART1_Init$24
      0023DE 03                    2174 	.db	3
      0023DF 03                    2175 	.sleb128	3
      0023E0 01                    2176 	.db	1
      0023E1 09                    2177 	.db	9
      0023E2 00 07                 2178 	.dw	Sstm8s_uart1$UART1_Init$26-Sstm8s_uart1$UART1_Init$25
      0023E4 03                    2179 	.db	3
      0023E5 02                    2180 	.sleb128	2
      0023E6 01                    2181 	.db	1
      0023E7 09                    2182 	.db	9
      0023E8 00 08                 2183 	.dw	Sstm8s_uart1$UART1_Init$27-Sstm8s_uart1$UART1_Init$26
      0023EA 03                    2184 	.db	3
      0023EB 02                    2185 	.sleb128	2
      0023EC 01                    2186 	.db	1
      0023ED 09                    2187 	.db	9
      0023EE 00 08                 2188 	.dw	Sstm8s_uart1$UART1_Init$28-Sstm8s_uart1$UART1_Init$27
      0023F0 03                    2189 	.db	3
      0023F1 03                    2190 	.sleb128	3
      0023F2 01                    2191 	.db	1
      0023F3 09                    2192 	.db	9
      0023F4 00 33                 2193 	.dw	Sstm8s_uart1$UART1_Init$34-Sstm8s_uart1$UART1_Init$28
      0023F6 03                    2194 	.db	3
      0023F7 01                    2195 	.sleb128	1
      0023F8 01                    2196 	.db	1
      0023F9 09                    2197 	.db	9
      0023FA 00 2E                 2198 	.dw	Sstm8s_uart1$UART1_Init$46-Sstm8s_uart1$UART1_Init$34
      0023FC 03                    2199 	.db	3
      0023FD 02                    2200 	.sleb128	2
      0023FE 01                    2201 	.db	1
      0023FF 09                    2202 	.db	9
      002400 00 51                 2203 	.dw	Sstm8s_uart1$UART1_Init$60-Sstm8s_uart1$UART1_Init$46
      002402 03                    2204 	.db	3
      002403 02                    2205 	.sleb128	2
      002404 01                    2206 	.db	1
      002405 09                    2207 	.db	9
      002406 00 12                 2208 	.dw	Sstm8s_uart1$UART1_Init$61-Sstm8s_uart1$UART1_Init$60
      002408 03                    2209 	.db	3
      002409 02                    2210 	.sleb128	2
      00240A 01                    2211 	.db	1
      00240B 09                    2212 	.db	9
      00240C 00 0C                 2213 	.dw	Sstm8s_uart1$UART1_Init$62-Sstm8s_uart1$UART1_Init$61
      00240E 03                    2214 	.db	3
      00240F 03                    2215 	.sleb128	3
      002410 01                    2216 	.db	1
      002411 09                    2217 	.db	9
      002412 00 08                 2218 	.dw	Sstm8s_uart1$UART1_Init$63-Sstm8s_uart1$UART1_Init$62
      002414 03                    2219 	.db	3
      002415 02                    2220 	.sleb128	2
      002416 01                    2221 	.db	1
      002417 09                    2222 	.db	9
      002418 00 08                 2223 	.dw	Sstm8s_uart1$UART1_Init$64-Sstm8s_uart1$UART1_Init$63
      00241A 03                    2224 	.db	3
      00241B 02                    2225 	.sleb128	2
      00241C 01                    2226 	.db	1
      00241D 09                    2227 	.db	9
      00241E 00 0E                 2228 	.dw	Sstm8s_uart1$UART1_Init$65-Sstm8s_uart1$UART1_Init$64
      002420 03                    2229 	.db	3
      002421 7C                    2230 	.sleb128	-4
      002422 01                    2231 	.db	1
      002423 09                    2232 	.db	9
      002424 00 03                 2233 	.dw	Sstm8s_uart1$UART1_Init$66-Sstm8s_uart1$UART1_Init$65
      002426 03                    2234 	.db	3
      002427 07                    2235 	.sleb128	7
      002428 01                    2236 	.db	1
      002429 09                    2237 	.db	9
      00242A 00 0B                 2238 	.dw	Sstm8s_uart1$UART1_Init$70-Sstm8s_uart1$UART1_Init$66
      00242C 03                    2239 	.db	3
      00242D 03                    2240 	.sleb128	3
      00242E 01                    2241 	.db	1
      00242F 09                    2242 	.db	9
      002430 00 08                 2243 	.dw	Sstm8s_uart1$UART1_Init$73-Sstm8s_uart1$UART1_Init$70
      002432 03                    2244 	.db	3
      002433 05                    2245 	.sleb128	5
      002434 01                    2246 	.db	1
      002435 09                    2247 	.db	9
      002436 00 05                 2248 	.dw	Sstm8s_uart1$UART1_Init$75-Sstm8s_uart1$UART1_Init$73
      002438 03                    2249 	.db	3
      002439 71                    2250 	.sleb128	-15
      00243A 01                    2251 	.db	1
      00243B 09                    2252 	.db	9
      00243C 00 03                 2253 	.dw	Sstm8s_uart1$UART1_Init$76-Sstm8s_uart1$UART1_Init$75
      00243E 03                    2254 	.db	3
      00243F 11                    2255 	.sleb128	17
      002440 01                    2256 	.db	1
      002441 09                    2257 	.db	9
      002442 00 0B                 2258 	.dw	Sstm8s_uart1$UART1_Init$80-Sstm8s_uart1$UART1_Init$76
      002444 03                    2259 	.db	3
      002445 03                    2260 	.sleb128	3
      002446 01                    2261 	.db	1
      002447 09                    2262 	.db	9
      002448 00 08                 2263 	.dw	Sstm8s_uart1$UART1_Init$83-Sstm8s_uart1$UART1_Init$80
      00244A 03                    2264 	.db	3
      00244B 05                    2265 	.sleb128	5
      00244C 01                    2266 	.db	1
      00244D 09                    2267 	.db	9
      00244E 00 05                 2268 	.dw	Sstm8s_uart1$UART1_Init$85-Sstm8s_uart1$UART1_Init$83
      002450 03                    2269 	.db	3
      002451 4C                    2270 	.sleb128	-52
      002452 01                    2271 	.db	1
      002453 09                    2272 	.db	9
      002454 00 03                 2273 	.dw	Sstm8s_uart1$UART1_Init$86-Sstm8s_uart1$UART1_Init$85
      002456 03                    2274 	.db	3
      002457 38                    2275 	.sleb128	56
      002458 01                    2276 	.db	1
      002459 09                    2277 	.db	9
      00245A 00 07                 2278 	.dw	Sstm8s_uart1$UART1_Init$88-Sstm8s_uart1$UART1_Init$86
      00245C 03                    2279 	.db	3
      00245D 03                    2280 	.sleb128	3
      00245E 01                    2281 	.db	1
      00245F 09                    2282 	.db	9
      002460 00 08                 2283 	.dw	Sstm8s_uart1$UART1_Init$91-Sstm8s_uart1$UART1_Init$88
      002462 03                    2284 	.db	3
      002463 04                    2285 	.sleb128	4
      002464 01                    2286 	.db	1
      002465 09                    2287 	.db	9
      002466 00 0D                 2288 	.dw	Sstm8s_uart1$UART1_Init$95-Sstm8s_uart1$UART1_Init$91
      002468 03                    2289 	.db	3
      002469 02                    2290 	.sleb128	2
      00246A 01                    2291 	.db	1
      00246B 09                    2292 	.db	9
      00246C 00 03                 2293 	.dw	1+Sstm8s_uart1$UART1_Init$97-Sstm8s_uart1$UART1_Init$95
      00246E 00                    2294 	.db	0
      00246F 01                    2295 	.uleb128	1
      002470 01                    2296 	.db	1
      002471 00                    2297 	.db	0
      002472 05                    2298 	.uleb128	5
      002473 02                    2299 	.db	2
      002474 00 00 99 52           2300 	.dw	0,(Sstm8s_uart1$UART1_Cmd$99)
      002478 03                    2301 	.db	3
      002479 B7 01                 2302 	.sleb128	183
      00247B 01                    2303 	.db	1
      00247C 09                    2304 	.db	9
      00247D 00 00                 2305 	.dw	Sstm8s_uart1$UART1_Cmd$101-Sstm8s_uart1$UART1_Cmd$99
      00247F 03                    2306 	.db	3
      002480 05                    2307 	.sleb128	5
      002481 01                    2308 	.db	1
      002482 09                    2309 	.db	9
      002483 00 03                 2310 	.dw	Sstm8s_uart1$UART1_Cmd$102-Sstm8s_uart1$UART1_Cmd$101
      002485 03                    2311 	.db	3
      002486 7D                    2312 	.sleb128	-3
      002487 01                    2313 	.db	1
      002488 09                    2314 	.db	9
      002489 00 07                 2315 	.dw	Sstm8s_uart1$UART1_Cmd$104-Sstm8s_uart1$UART1_Cmd$102
      00248B 03                    2316 	.db	3
      00248C 03                    2317 	.sleb128	3
      00248D 01                    2318 	.db	1
      00248E 09                    2319 	.db	9
      00248F 00 08                 2320 	.dw	Sstm8s_uart1$UART1_Cmd$107-Sstm8s_uart1$UART1_Cmd$104
      002491 03                    2321 	.db	3
      002492 05                    2322 	.sleb128	5
      002493 01                    2323 	.db	1
      002494 09                    2324 	.db	9
      002495 00 05                 2325 	.dw	Sstm8s_uart1$UART1_Cmd$109-Sstm8s_uart1$UART1_Cmd$107
      002497 03                    2326 	.db	3
      002498 02                    2327 	.sleb128	2
      002499 01                    2328 	.db	1
      00249A 09                    2329 	.db	9
      00249B 00 01                 2330 	.dw	1+Sstm8s_uart1$UART1_Cmd$110-Sstm8s_uart1$UART1_Cmd$109
      00249D 00                    2331 	.db	0
      00249E 01                    2332 	.uleb128	1
      00249F 01                    2333 	.db	1
      0024A0 00                    2334 	.db	0
      0024A1 05                    2335 	.uleb128	5
      0024A2 02                    2336 	.db	2
      0024A3 00 00 99 6A           2337 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$112)
      0024A7 03                    2338 	.db	3
      0024A8 D2 01                 2339 	.sleb128	210
      0024AA 01                    2340 	.db	1
      0024AB 09                    2341 	.db	9
      0024AC 00 01                 2342 	.dw	Sstm8s_uart1$UART1_ITConfig$115-Sstm8s_uart1$UART1_ITConfig$112
      0024AE 03                    2343 	.db	3
      0024AF 09                    2344 	.sleb128	9
      0024B0 01                    2345 	.db	1
      0024B1 09                    2346 	.db	9
      0024B2 00 03                 2347 	.dw	Sstm8s_uart1$UART1_ITConfig$116-Sstm8s_uart1$UART1_ITConfig$115
      0024B4 03                    2348 	.db	3
      0024B5 02                    2349 	.sleb128	2
      0024B6 01                    2350 	.db	1
      0024B7 09                    2351 	.db	9
      0024B8 00 12                 2352 	.dw	Sstm8s_uart1$UART1_ITConfig$119-Sstm8s_uart1$UART1_ITConfig$116
      0024BA 03                    2353 	.db	3
      0024BB 05                    2354 	.sleb128	5
      0024BC 01                    2355 	.db	1
      0024BD 09                    2356 	.db	9
      0024BE 00 0D                 2357 	.dw	Sstm8s_uart1$UART1_ITConfig$121-Sstm8s_uart1$UART1_ITConfig$119
      0024C0 03                    2358 	.db	3
      0024C1 04                    2359 	.sleb128	4
      0024C2 01                    2360 	.db	1
      0024C3 09                    2361 	.db	9
      0024C4 00 0B                 2362 	.dw	Sstm8s_uart1$UART1_ITConfig$123-Sstm8s_uart1$UART1_ITConfig$121
      0024C6 03                    2363 	.db	3
      0024C7 79                    2364 	.sleb128	-7
      0024C8 01                    2365 	.db	1
      0024C9 09                    2366 	.db	9
      0024CA 00 07                 2367 	.dw	Sstm8s_uart1$UART1_ITConfig$125-Sstm8s_uart1$UART1_ITConfig$123
      0024CC 03                    2368 	.db	3
      0024CD 03                    2369 	.sleb128	3
      0024CE 01                    2370 	.db	1
      0024CF 09                    2371 	.db	9
      0024D0 00 07                 2372 	.dw	Sstm8s_uart1$UART1_ITConfig$127-Sstm8s_uart1$UART1_ITConfig$125
      0024D2 03                    2373 	.db	3
      0024D3 02                    2374 	.sleb128	2
      0024D4 01                    2375 	.db	1
      0024D5 09                    2376 	.db	9
      0024D6 00 0B                 2377 	.dw	Sstm8s_uart1$UART1_ITConfig$129-Sstm8s_uart1$UART1_ITConfig$127
      0024D8 03                    2378 	.db	3
      0024D9 02                    2379 	.sleb128	2
      0024DA 01                    2380 	.db	1
      0024DB 09                    2381 	.db	9
      0024DC 00 06                 2382 	.dw	Sstm8s_uart1$UART1_ITConfig$131-Sstm8s_uart1$UART1_ITConfig$129
      0024DE 03                    2383 	.db	3
      0024DF 02                    2384 	.sleb128	2
      0024E0 01                    2385 	.db	1
      0024E1 09                    2386 	.db	9
      0024E2 00 0B                 2387 	.dw	Sstm8s_uart1$UART1_ITConfig$134-Sstm8s_uart1$UART1_ITConfig$131
      0024E4 03                    2388 	.db	3
      0024E5 04                    2389 	.sleb128	4
      0024E6 01                    2390 	.db	1
      0024E7 09                    2391 	.db	9
      0024E8 00 0B                 2392 	.dw	Sstm8s_uart1$UART1_ITConfig$136-Sstm8s_uart1$UART1_ITConfig$134
      0024EA 03                    2393 	.db	3
      0024EB 08                    2394 	.sleb128	8
      0024EC 01                    2395 	.db	1
      0024ED 09                    2396 	.db	9
      0024EE 00 04                 2397 	.dw	Sstm8s_uart1$UART1_ITConfig$140-Sstm8s_uart1$UART1_ITConfig$136
      0024F0 03                    2398 	.db	3
      0024F1 7E                    2399 	.sleb128	-2
      0024F2 01                    2400 	.db	1
      0024F3 09                    2401 	.db	9
      0024F4 00 07                 2402 	.dw	Sstm8s_uart1$UART1_ITConfig$142-Sstm8s_uart1$UART1_ITConfig$140
      0024F6 03                    2403 	.db	3
      0024F7 02                    2404 	.sleb128	2
      0024F8 01                    2405 	.db	1
      0024F9 09                    2406 	.db	9
      0024FA 00 0B                 2407 	.dw	Sstm8s_uart1$UART1_ITConfig$144-Sstm8s_uart1$UART1_ITConfig$142
      0024FC 03                    2408 	.db	3
      0024FD 02                    2409 	.sleb128	2
      0024FE 01                    2410 	.db	1
      0024FF 09                    2411 	.db	9
      002500 00 06                 2412 	.dw	Sstm8s_uart1$UART1_ITConfig$146-Sstm8s_uart1$UART1_ITConfig$144
      002502 03                    2413 	.db	3
      002503 02                    2414 	.sleb128	2
      002504 01                    2415 	.db	1
      002505 09                    2416 	.db	9
      002506 00 0B                 2417 	.dw	Sstm8s_uart1$UART1_ITConfig$149-Sstm8s_uart1$UART1_ITConfig$146
      002508 03                    2418 	.db	3
      002509 04                    2419 	.sleb128	4
      00250A 01                    2420 	.db	1
      00250B 09                    2421 	.db	9
      00250C 00 08                 2422 	.dw	Sstm8s_uart1$UART1_ITConfig$151-Sstm8s_uart1$UART1_ITConfig$149
      00250E 03                    2423 	.db	3
      00250F 04                    2424 	.sleb128	4
      002510 01                    2425 	.db	1
      002511 09                    2426 	.db	9
      002512 00 02                 2427 	.dw	1+Sstm8s_uart1$UART1_ITConfig$153-Sstm8s_uart1$UART1_ITConfig$151
      002514 00                    2428 	.db	0
      002515 01                    2429 	.uleb128	1
      002516 01                    2430 	.db	1
      002517 00                    2431 	.db	0
      002518 05                    2432 	.uleb128	5
      002519 02                    2433 	.db	2
      00251A 00 00 99 FE           2434 	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$155)
      00251E 03                    2435 	.db	3
      00251F 88 02                 2436 	.sleb128	264
      002521 01                    2437 	.db	1
      002522 09                    2438 	.db	9
      002523 00 00                 2439 	.dw	Sstm8s_uart1$UART1_HalfDuplexCmd$157-Sstm8s_uart1$UART1_HalfDuplexCmd$155
      002525 03                    2440 	.db	3
      002526 06                    2441 	.sleb128	6
      002527 01                    2442 	.db	1
      002528 09                    2443 	.db	9
      002529 00 03                 2444 	.dw	Sstm8s_uart1$UART1_HalfDuplexCmd$158-Sstm8s_uart1$UART1_HalfDuplexCmd$157
      00252B 03                    2445 	.db	3
      00252C 7E                    2446 	.sleb128	-2
      00252D 01                    2447 	.db	1
      00252E 09                    2448 	.db	9
      00252F 00 07                 2449 	.dw	Sstm8s_uart1$UART1_HalfDuplexCmd$160-Sstm8s_uart1$UART1_HalfDuplexCmd$158
      002531 03                    2450 	.db	3
      002532 02                    2451 	.sleb128	2
      002533 01                    2452 	.db	1
      002534 09                    2453 	.db	9
      002535 00 08                 2454 	.dw	Sstm8s_uart1$UART1_HalfDuplexCmd$163-Sstm8s_uart1$UART1_HalfDuplexCmd$160
      002537 03                    2455 	.db	3
      002538 04                    2456 	.sleb128	4
      002539 01                    2457 	.db	1
      00253A 09                    2458 	.db	9
      00253B 00 05                 2459 	.dw	Sstm8s_uart1$UART1_HalfDuplexCmd$165-Sstm8s_uart1$UART1_HalfDuplexCmd$163
      00253D 03                    2460 	.db	3
      00253E 02                    2461 	.sleb128	2
      00253F 01                    2462 	.db	1
      002540 09                    2463 	.db	9
      002541 00 01                 2464 	.dw	1+Sstm8s_uart1$UART1_HalfDuplexCmd$166-Sstm8s_uart1$UART1_HalfDuplexCmd$165
      002543 00                    2465 	.db	0
      002544 01                    2466 	.uleb128	1
      002545 01                    2467 	.db	1
      002546 00                    2468 	.db	0
      002547 05                    2469 	.uleb128	5
      002548 02                    2470 	.db	2
      002549 00 00 9A 16           2471 	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$168)
      00254D 03                    2472 	.db	3
      00254E 9C 02                 2473 	.sleb128	284
      002550 01                    2474 	.db	1
      002551 09                    2475 	.db	9
      002552 00 00                 2476 	.dw	Sstm8s_uart1$UART1_IrDAConfig$170-Sstm8s_uart1$UART1_IrDAConfig$168
      002554 03                    2477 	.db	3
      002555 06                    2478 	.sleb128	6
      002556 01                    2479 	.db	1
      002557 09                    2480 	.db	9
      002558 00 03                 2481 	.dw	Sstm8s_uart1$UART1_IrDAConfig$171-Sstm8s_uart1$UART1_IrDAConfig$170
      00255A 03                    2482 	.db	3
      00255B 7E                    2483 	.sleb128	-2
      00255C 01                    2484 	.db	1
      00255D 09                    2485 	.db	9
      00255E 00 07                 2486 	.dw	Sstm8s_uart1$UART1_IrDAConfig$173-Sstm8s_uart1$UART1_IrDAConfig$171
      002560 03                    2487 	.db	3
      002561 02                    2488 	.sleb128	2
      002562 01                    2489 	.db	1
      002563 09                    2490 	.db	9
      002564 00 08                 2491 	.dw	Sstm8s_uart1$UART1_IrDAConfig$176-Sstm8s_uart1$UART1_IrDAConfig$173
      002566 03                    2492 	.db	3
      002567 04                    2493 	.sleb128	4
      002568 01                    2494 	.db	1
      002569 09                    2495 	.db	9
      00256A 00 05                 2496 	.dw	Sstm8s_uart1$UART1_IrDAConfig$178-Sstm8s_uart1$UART1_IrDAConfig$176
      00256C 03                    2497 	.db	3
      00256D 02                    2498 	.sleb128	2
      00256E 01                    2499 	.db	1
      00256F 09                    2500 	.db	9
      002570 00 01                 2501 	.dw	1+Sstm8s_uart1$UART1_IrDAConfig$179-Sstm8s_uart1$UART1_IrDAConfig$178
      002572 00                    2502 	.db	0
      002573 01                    2503 	.uleb128	1
      002574 01                    2504 	.db	1
      002575 00                    2505 	.db	0
      002576 05                    2506 	.uleb128	5
      002577 02                    2507 	.db	2
      002578 00 00 9A 2E           2508 	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$181)
      00257C 03                    2509 	.db	3
      00257D B0 02                 2510 	.sleb128	304
      00257F 01                    2511 	.db	1
      002580 09                    2512 	.db	9
      002581 00 00                 2513 	.dw	Sstm8s_uart1$UART1_IrDACmd$183-Sstm8s_uart1$UART1_IrDACmd$181
      002583 03                    2514 	.db	3
      002584 08                    2515 	.sleb128	8
      002585 01                    2516 	.db	1
      002586 09                    2517 	.db	9
      002587 00 03                 2518 	.dw	Sstm8s_uart1$UART1_IrDACmd$184-Sstm8s_uart1$UART1_IrDACmd$183
      002589 03                    2519 	.db	3
      00258A 7D                    2520 	.sleb128	-3
      00258B 01                    2521 	.db	1
      00258C 09                    2522 	.db	9
      00258D 00 07                 2523 	.dw	Sstm8s_uart1$UART1_IrDACmd$186-Sstm8s_uart1$UART1_IrDACmd$184
      00258F 03                    2524 	.db	3
      002590 03                    2525 	.sleb128	3
      002591 01                    2526 	.db	1
      002592 09                    2527 	.db	9
      002593 00 08                 2528 	.dw	Sstm8s_uart1$UART1_IrDACmd$189-Sstm8s_uart1$UART1_IrDACmd$186
      002595 03                    2529 	.db	3
      002596 05                    2530 	.sleb128	5
      002597 01                    2531 	.db	1
      002598 09                    2532 	.db	9
      002599 00 05                 2533 	.dw	Sstm8s_uart1$UART1_IrDACmd$191-Sstm8s_uart1$UART1_IrDACmd$189
      00259B 03                    2534 	.db	3
      00259C 02                    2535 	.sleb128	2
      00259D 01                    2536 	.db	1
      00259E 09                    2537 	.db	9
      00259F 00 01                 2538 	.dw	1+Sstm8s_uart1$UART1_IrDACmd$192-Sstm8s_uart1$UART1_IrDACmd$191
      0025A1 00                    2539 	.db	0
      0025A2 01                    2540 	.uleb128	1
      0025A3 01                    2541 	.db	1
      0025A4 00                    2542 	.db	0
      0025A5 05                    2543 	.uleb128	5
      0025A6 02                    2544 	.db	2
      0025A7 00 00 9A 46           2545 	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$194)
      0025AB 03                    2546 	.db	3
      0025AC C8 02                 2547 	.sleb128	328
      0025AE 01                    2548 	.db	1
      0025AF 09                    2549 	.db	9
      0025B0 00 00                 2550 	.dw	Sstm8s_uart1$UART1_LINBreakDetectionConfig$196-Sstm8s_uart1$UART1_LINBreakDetectionConfig$194
      0025B2 03                    2551 	.db	3
      0025B3 06                    2552 	.sleb128	6
      0025B4 01                    2553 	.db	1
      0025B5 09                    2554 	.db	9
      0025B6 00 03                 2555 	.dw	Sstm8s_uart1$UART1_LINBreakDetectionConfig$197-Sstm8s_uart1$UART1_LINBreakDetectionConfig$196
      0025B8 03                    2556 	.db	3
      0025B9 7E                    2557 	.sleb128	-2
      0025BA 01                    2558 	.db	1
      0025BB 09                    2559 	.db	9
      0025BC 00 07                 2560 	.dw	Sstm8s_uart1$UART1_LINBreakDetectionConfig$199-Sstm8s_uart1$UART1_LINBreakDetectionConfig$197
      0025BE 03                    2561 	.db	3
      0025BF 02                    2562 	.sleb128	2
      0025C0 01                    2563 	.db	1
      0025C1 09                    2564 	.db	9
      0025C2 00 08                 2565 	.dw	Sstm8s_uart1$UART1_LINBreakDetectionConfig$202-Sstm8s_uart1$UART1_LINBreakDetectionConfig$199
      0025C4 03                    2566 	.db	3
      0025C5 04                    2567 	.sleb128	4
      0025C6 01                    2568 	.db	1
      0025C7 09                    2569 	.db	9
      0025C8 00 05                 2570 	.dw	Sstm8s_uart1$UART1_LINBreakDetectionConfig$204-Sstm8s_uart1$UART1_LINBreakDetectionConfig$202
      0025CA 03                    2571 	.db	3
      0025CB 02                    2572 	.sleb128	2
      0025CC 01                    2573 	.db	1
      0025CD 09                    2574 	.db	9
      0025CE 00 01                 2575 	.dw	1+Sstm8s_uart1$UART1_LINBreakDetectionConfig$205-Sstm8s_uart1$UART1_LINBreakDetectionConfig$204
      0025D0 00                    2576 	.db	0
      0025D1 01                    2577 	.uleb128	1
      0025D2 01                    2578 	.db	1
      0025D3 00                    2579 	.db	0
      0025D4 05                    2580 	.uleb128	5
      0025D5 02                    2581 	.db	2
      0025D6 00 00 9A 5E           2582 	.dw	0,(Sstm8s_uart1$UART1_LINCmd$207)
      0025DA 03                    2583 	.db	3
      0025DB DC 02                 2584 	.sleb128	348
      0025DD 01                    2585 	.db	1
      0025DE 09                    2586 	.db	9
      0025DF 00 00                 2587 	.dw	Sstm8s_uart1$UART1_LINCmd$209-Sstm8s_uart1$UART1_LINCmd$207
      0025E1 03                    2588 	.db	3
      0025E2 07                    2589 	.sleb128	7
      0025E3 01                    2590 	.db	1
      0025E4 09                    2591 	.db	9
      0025E5 00 03                 2592 	.dw	Sstm8s_uart1$UART1_LINCmd$210-Sstm8s_uart1$UART1_LINCmd$209
      0025E7 03                    2593 	.db	3
      0025E8 7D                    2594 	.sleb128	-3
      0025E9 01                    2595 	.db	1
      0025EA 09                    2596 	.db	9
      0025EB 00 07                 2597 	.dw	Sstm8s_uart1$UART1_LINCmd$212-Sstm8s_uart1$UART1_LINCmd$210
      0025ED 03                    2598 	.db	3
      0025EE 03                    2599 	.sleb128	3
      0025EF 01                    2600 	.db	1
      0025F0 09                    2601 	.db	9
      0025F1 00 08                 2602 	.dw	Sstm8s_uart1$UART1_LINCmd$215-Sstm8s_uart1$UART1_LINCmd$212
      0025F3 03                    2603 	.db	3
      0025F4 05                    2604 	.sleb128	5
      0025F5 01                    2605 	.db	1
      0025F6 09                    2606 	.db	9
      0025F7 00 05                 2607 	.dw	Sstm8s_uart1$UART1_LINCmd$217-Sstm8s_uart1$UART1_LINCmd$215
      0025F9 03                    2608 	.db	3
      0025FA 02                    2609 	.sleb128	2
      0025FB 01                    2610 	.db	1
      0025FC 09                    2611 	.db	9
      0025FD 00 01                 2612 	.dw	1+Sstm8s_uart1$UART1_LINCmd$218-Sstm8s_uart1$UART1_LINCmd$217
      0025FF 00                    2613 	.db	0
      002600 01                    2614 	.uleb128	1
      002601 01                    2615 	.db	1
      002602 00                    2616 	.db	0
      002603 05                    2617 	.uleb128	5
      002604 02                    2618 	.db	2
      002605 00 00 9A 76           2619 	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$220)
      002609 03                    2620 	.db	3
      00260A F2 02                 2621 	.sleb128	370
      00260C 01                    2622 	.db	1
      00260D 09                    2623 	.db	9
      00260E 00 00                 2624 	.dw	Sstm8s_uart1$UART1_SmartCardCmd$222-Sstm8s_uart1$UART1_SmartCardCmd$220
      002610 03                    2625 	.db	3
      002611 07                    2626 	.sleb128	7
      002612 01                    2627 	.db	1
      002613 09                    2628 	.db	9
      002614 00 03                 2629 	.dw	Sstm8s_uart1$UART1_SmartCardCmd$223-Sstm8s_uart1$UART1_SmartCardCmd$222
      002616 03                    2630 	.db	3
      002617 7D                    2631 	.sleb128	-3
      002618 01                    2632 	.db	1
      002619 09                    2633 	.db	9
      00261A 00 07                 2634 	.dw	Sstm8s_uart1$UART1_SmartCardCmd$225-Sstm8s_uart1$UART1_SmartCardCmd$223
      00261C 03                    2635 	.db	3
      00261D 03                    2636 	.sleb128	3
      00261E 01                    2637 	.db	1
      00261F 09                    2638 	.db	9
      002620 00 08                 2639 	.dw	Sstm8s_uart1$UART1_SmartCardCmd$228-Sstm8s_uart1$UART1_SmartCardCmd$225
      002622 03                    2640 	.db	3
      002623 05                    2641 	.sleb128	5
      002624 01                    2642 	.db	1
      002625 09                    2643 	.db	9
      002626 00 05                 2644 	.dw	Sstm8s_uart1$UART1_SmartCardCmd$230-Sstm8s_uart1$UART1_SmartCardCmd$228
      002628 03                    2645 	.db	3
      002629 02                    2646 	.sleb128	2
      00262A 01                    2647 	.db	1
      00262B 09                    2648 	.db	9
      00262C 00 01                 2649 	.dw	1+Sstm8s_uart1$UART1_SmartCardCmd$231-Sstm8s_uart1$UART1_SmartCardCmd$230
      00262E 00                    2650 	.db	0
      00262F 01                    2651 	.uleb128	1
      002630 01                    2652 	.db	1
      002631 00                    2653 	.db	0
      002632 05                    2654 	.uleb128	5
      002633 02                    2655 	.db	2
      002634 00 00 9A 8E           2656 	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$233)
      002638 03                    2657 	.db	3
      002639 89 03                 2658 	.sleb128	393
      00263B 01                    2659 	.db	1
      00263C 09                    2660 	.db	9
      00263D 00 00                 2661 	.dw	Sstm8s_uart1$UART1_SmartCardNACKCmd$235-Sstm8s_uart1$UART1_SmartCardNACKCmd$233
      00263F 03                    2662 	.db	3
      002640 07                    2663 	.sleb128	7
      002641 01                    2664 	.db	1
      002642 09                    2665 	.db	9
      002643 00 03                 2666 	.dw	Sstm8s_uart1$UART1_SmartCardNACKCmd$236-Sstm8s_uart1$UART1_SmartCardNACKCmd$235
      002645 03                    2667 	.db	3
      002646 7D                    2668 	.sleb128	-3
      002647 01                    2669 	.db	1
      002648 09                    2670 	.db	9
      002649 00 07                 2671 	.dw	Sstm8s_uart1$UART1_SmartCardNACKCmd$238-Sstm8s_uart1$UART1_SmartCardNACKCmd$236
      00264B 03                    2672 	.db	3
      00264C 03                    2673 	.sleb128	3
      00264D 01                    2674 	.db	1
      00264E 09                    2675 	.db	9
      00264F 00 08                 2676 	.dw	Sstm8s_uart1$UART1_SmartCardNACKCmd$241-Sstm8s_uart1$UART1_SmartCardNACKCmd$238
      002651 03                    2677 	.db	3
      002652 05                    2678 	.sleb128	5
      002653 01                    2679 	.db	1
      002654 09                    2680 	.db	9
      002655 00 05                 2681 	.dw	Sstm8s_uart1$UART1_SmartCardNACKCmd$243-Sstm8s_uart1$UART1_SmartCardNACKCmd$241
      002657 03                    2682 	.db	3
      002658 02                    2683 	.sleb128	2
      002659 01                    2684 	.db	1
      00265A 09                    2685 	.db	9
      00265B 00 01                 2686 	.dw	1+Sstm8s_uart1$UART1_SmartCardNACKCmd$244-Sstm8s_uart1$UART1_SmartCardNACKCmd$243
      00265D 00                    2687 	.db	0
      00265E 01                    2688 	.uleb128	1
      00265F 01                    2689 	.db	1
      002660 00                    2690 	.db	0
      002661 05                    2691 	.uleb128	5
      002662 02                    2692 	.db	2
      002663 00 00 9A A6           2693 	.dw	0,(Sstm8s_uart1$UART1_WakeUpConfig$246)
      002667 03                    2694 	.db	3
      002668 9F 03                 2695 	.sleb128	415
      00266A 01                    2696 	.db	1
      00266B 09                    2697 	.db	9
      00266C 00 00                 2698 	.dw	Sstm8s_uart1$UART1_WakeUpConfig$248-Sstm8s_uart1$UART1_WakeUpConfig$246
      00266E 03                    2699 	.db	3
      00266F 04                    2700 	.sleb128	4
      002670 01                    2701 	.db	1
      002671 09                    2702 	.db	9
      002672 00 08                 2703 	.dw	Sstm8s_uart1$UART1_WakeUpConfig$249-Sstm8s_uart1$UART1_WakeUpConfig$248
      002674 03                    2704 	.db	3
      002675 01                    2705 	.sleb128	1
      002676 01                    2706 	.db	1
      002677 09                    2707 	.db	9
      002678 00 08                 2708 	.dw	Sstm8s_uart1$UART1_WakeUpConfig$250-Sstm8s_uart1$UART1_WakeUpConfig$249
      00267A 03                    2709 	.db	3
      00267B 01                    2710 	.sleb128	1
      00267C 01                    2711 	.db	1
      00267D 09                    2712 	.db	9
      00267E 00 01                 2713 	.dw	1+Sstm8s_uart1$UART1_WakeUpConfig$251-Sstm8s_uart1$UART1_WakeUpConfig$250
      002680 00                    2714 	.db	0
      002681 01                    2715 	.uleb128	1
      002682 01                    2716 	.db	1
      002683 00                    2717 	.db	0
      002684 05                    2718 	.uleb128	5
      002685 02                    2719 	.db	2
      002686 00 00 9A B7           2720 	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$253)
      00268A 03                    2721 	.db	3
      00268B AD 03                 2722 	.sleb128	429
      00268D 01                    2723 	.db	1
      00268E 09                    2724 	.db	9
      00268F 00 00                 2725 	.dw	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$255-Sstm8s_uart1$UART1_ReceiverWakeUpCmd$253
      002691 03                    2726 	.db	3
      002692 07                    2727 	.sleb128	7
      002693 01                    2728 	.db	1
      002694 09                    2729 	.db	9
      002695 00 03                 2730 	.dw	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$256-Sstm8s_uart1$UART1_ReceiverWakeUpCmd$255
      002697 03                    2731 	.db	3
      002698 7D                    2732 	.sleb128	-3
      002699 01                    2733 	.db	1
      00269A 09                    2734 	.db	9
      00269B 00 07                 2735 	.dw	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$258-Sstm8s_uart1$UART1_ReceiverWakeUpCmd$256
      00269D 03                    2736 	.db	3
      00269E 03                    2737 	.sleb128	3
      00269F 01                    2738 	.db	1
      0026A0 09                    2739 	.db	9
      0026A1 00 08                 2740 	.dw	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$261-Sstm8s_uart1$UART1_ReceiverWakeUpCmd$258
      0026A3 03                    2741 	.db	3
      0026A4 05                    2742 	.sleb128	5
      0026A5 01                    2743 	.db	1
      0026A6 09                    2744 	.db	9
      0026A7 00 05                 2745 	.dw	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$263-Sstm8s_uart1$UART1_ReceiverWakeUpCmd$261
      0026A9 03                    2746 	.db	3
      0026AA 02                    2747 	.sleb128	2
      0026AB 01                    2748 	.db	1
      0026AC 09                    2749 	.db	9
      0026AD 00 01                 2750 	.dw	1+Sstm8s_uart1$UART1_ReceiverWakeUpCmd$264-Sstm8s_uart1$UART1_ReceiverWakeUpCmd$263
      0026AF 00                    2751 	.db	0
      0026B0 01                    2752 	.uleb128	1
      0026B1 01                    2753 	.db	1
      0026B2 00                    2754 	.db	0
      0026B3 05                    2755 	.uleb128	5
      0026B4 02                    2756 	.db	2
      0026B5 00 00 9A CF           2757 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$266)
      0026B9 03                    2758 	.db	3
      0026BA C2 03                 2759 	.sleb128	450
      0026BC 01                    2760 	.db	1
      0026BD 09                    2761 	.db	9
      0026BE 00 00                 2762 	.dw	Sstm8s_uart1$UART1_ReceiveData8$268-Sstm8s_uart1$UART1_ReceiveData8$266
      0026C0 03                    2763 	.db	3
      0026C1 02                    2764 	.sleb128	2
      0026C2 01                    2765 	.db	1
      0026C3 09                    2766 	.db	9
      0026C4 00 03                 2767 	.dw	Sstm8s_uart1$UART1_ReceiveData8$269-Sstm8s_uart1$UART1_ReceiveData8$268
      0026C6 03                    2768 	.db	3
      0026C7 01                    2769 	.sleb128	1
      0026C8 01                    2770 	.db	1
      0026C9 09                    2771 	.db	9
      0026CA 00 01                 2772 	.dw	1+Sstm8s_uart1$UART1_ReceiveData8$270-Sstm8s_uart1$UART1_ReceiveData8$269
      0026CC 00                    2773 	.db	0
      0026CD 01                    2774 	.uleb128	1
      0026CE 01                    2775 	.db	1
      0026CF 00                    2776 	.db	0
      0026D0 05                    2777 	.uleb128	5
      0026D1 02                    2778 	.db	2
      0026D2 00 00 9A D3           2779 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$272)
      0026D6 03                    2780 	.db	3
      0026D7 CC 03                 2781 	.sleb128	460
      0026D9 01                    2782 	.db	1
      0026DA 09                    2783 	.db	9
      0026DB 00 01                 2784 	.dw	Sstm8s_uart1$UART1_ReceiveData9$275-Sstm8s_uart1$UART1_ReceiveData9$272
      0026DD 03                    2785 	.db	3
      0026DE 04                    2786 	.sleb128	4
      0026DF 01                    2787 	.db	1
      0026E0 09                    2788 	.db	9
      0026E1 00 0C                 2789 	.dw	Sstm8s_uart1$UART1_ReceiveData9$276-Sstm8s_uart1$UART1_ReceiveData9$275
      0026E3 03                    2790 	.db	3
      0026E4 01                    2791 	.sleb128	1
      0026E5 01                    2792 	.db	1
      0026E6 09                    2793 	.db	9
      0026E7 00 0D                 2794 	.dw	Sstm8s_uart1$UART1_ReceiveData9$277-Sstm8s_uart1$UART1_ReceiveData9$276
      0026E9 03                    2795 	.db	3
      0026EA 01                    2796 	.sleb128	1
      0026EB 01                    2797 	.db	1
      0026EC 09                    2798 	.db	9
      0026ED 00 03                 2799 	.dw	1+Sstm8s_uart1$UART1_ReceiveData9$279-Sstm8s_uart1$UART1_ReceiveData9$277
      0026EF 00                    2800 	.db	0
      0026F0 01                    2801 	.uleb128	1
      0026F1 01                    2802 	.db	1
      0026F2 00                    2803 	.db	0
      0026F3 05                    2804 	.uleb128	5
      0026F4 02                    2805 	.db	2
      0026F5 00 00 9A F0           2806 	.dw	0,(Sstm8s_uart1$UART1_SendData8$281)
      0026F9 03                    2807 	.db	3
      0026FA D9 03                 2808 	.sleb128	473
      0026FC 01                    2809 	.db	1
      0026FD 09                    2810 	.db	9
      0026FE 00 00                 2811 	.dw	Sstm8s_uart1$UART1_SendData8$283-Sstm8s_uart1$UART1_SendData8$281
      002700 03                    2812 	.db	3
      002701 03                    2813 	.sleb128	3
      002702 01                    2814 	.db	1
      002703 09                    2815 	.db	9
      002704 00 06                 2816 	.dw	Sstm8s_uart1$UART1_SendData8$284-Sstm8s_uart1$UART1_SendData8$283
      002706 03                    2817 	.db	3
      002707 01                    2818 	.sleb128	1
      002708 01                    2819 	.db	1
      002709 09                    2820 	.db	9
      00270A 00 01                 2821 	.dw	1+Sstm8s_uart1$UART1_SendData8$285-Sstm8s_uart1$UART1_SendData8$284
      00270C 00                    2822 	.db	0
      00270D 01                    2823 	.uleb128	1
      00270E 01                    2824 	.db	1
      00270F 00                    2825 	.db	0
      002710 05                    2826 	.uleb128	5
      002711 02                    2827 	.db	2
      002712 00 00 9A F7           2828 	.dw	0,(Sstm8s_uart1$UART1_SendData9$287)
      002716 03                    2829 	.db	3
      002717 E5 03                 2830 	.sleb128	485
      002719 01                    2831 	.db	1
      00271A 09                    2832 	.db	9
      00271B 00 01                 2833 	.dw	Sstm8s_uart1$UART1_SendData9$290-Sstm8s_uart1$UART1_SendData9$287
      00271D 03                    2834 	.db	3
      00271E 03                    2835 	.sleb128	3
      00271F 01                    2836 	.db	1
      002720 09                    2837 	.db	9
      002721 00 08                 2838 	.dw	Sstm8s_uart1$UART1_SendData9$291-Sstm8s_uart1$UART1_SendData9$290
      002723 03                    2839 	.db	3
      002724 02                    2840 	.sleb128	2
      002725 01                    2841 	.db	1
      002726 09                    2842 	.db	9
      002727 00 11                 2843 	.dw	Sstm8s_uart1$UART1_SendData9$292-Sstm8s_uart1$UART1_SendData9$291
      002729 03                    2844 	.db	3
      00272A 02                    2845 	.sleb128	2
      00272B 01                    2846 	.db	1
      00272C 09                    2847 	.db	9
      00272D 00 05                 2848 	.dw	Sstm8s_uart1$UART1_SendData9$293-Sstm8s_uart1$UART1_SendData9$292
      00272F 03                    2849 	.db	3
      002730 01                    2850 	.sleb128	1
      002731 01                    2851 	.db	1
      002732 09                    2852 	.db	9
      002733 00 02                 2853 	.dw	1+Sstm8s_uart1$UART1_SendData9$295-Sstm8s_uart1$UART1_SendData9$293
      002735 00                    2854 	.db	0
      002736 01                    2855 	.uleb128	1
      002737 01                    2856 	.db	1
      002738 00                    2857 	.db	0
      002739 05                    2858 	.uleb128	5
      00273A 02                    2859 	.db	2
      00273B 00 00 9B 18           2860 	.dw	0,(Sstm8s_uart1$UART1_SendBreak$297)
      00273F 03                    2861 	.db	3
      002740 F4 03                 2862 	.sleb128	500
      002742 01                    2863 	.db	1
      002743 09                    2864 	.db	9
      002744 00 00                 2865 	.dw	Sstm8s_uart1$UART1_SendBreak$299-Sstm8s_uart1$UART1_SendBreak$297
      002746 03                    2866 	.db	3
      002747 02                    2867 	.sleb128	2
      002748 01                    2868 	.db	1
      002749 09                    2869 	.db	9
      00274A 00 08                 2870 	.dw	Sstm8s_uart1$UART1_SendBreak$300-Sstm8s_uart1$UART1_SendBreak$299
      00274C 03                    2871 	.db	3
      00274D 01                    2872 	.sleb128	1
      00274E 01                    2873 	.db	1
      00274F 09                    2874 	.db	9
      002750 00 01                 2875 	.dw	1+Sstm8s_uart1$UART1_SendBreak$301-Sstm8s_uart1$UART1_SendBreak$300
      002752 00                    2876 	.db	0
      002753 01                    2877 	.uleb128	1
      002754 01                    2878 	.db	1
      002755 00                    2879 	.db	0
      002756 05                    2880 	.uleb128	5
      002757 02                    2881 	.db	2
      002758 00 00 9B 21           2882 	.dw	0,(Sstm8s_uart1$UART1_SetAddress$303)
      00275C 03                    2883 	.db	3
      00275D FE 03                 2884 	.sleb128	510
      00275F 01                    2885 	.db	1
      002760 09                    2886 	.db	9
      002761 00 00                 2887 	.dw	Sstm8s_uart1$UART1_SetAddress$305-Sstm8s_uart1$UART1_SetAddress$303
      002763 03                    2888 	.db	3
      002764 06                    2889 	.sleb128	6
      002765 01                    2890 	.db	1
      002766 09                    2891 	.db	9
      002767 00 08                 2892 	.dw	Sstm8s_uart1$UART1_SetAddress$306-Sstm8s_uart1$UART1_SetAddress$305
      002769 03                    2893 	.db	3
      00276A 02                    2894 	.sleb128	2
      00276B 01                    2895 	.db	1
      00276C 09                    2896 	.db	9
      00276D 00 08                 2897 	.dw	Sstm8s_uart1$UART1_SetAddress$307-Sstm8s_uart1$UART1_SetAddress$306
      00276F 03                    2898 	.db	3
      002770 01                    2899 	.sleb128	1
      002771 01                    2900 	.db	1
      002772 09                    2901 	.db	9
      002773 00 01                 2902 	.dw	1+Sstm8s_uart1$UART1_SetAddress$308-Sstm8s_uart1$UART1_SetAddress$307
      002775 00                    2903 	.db	0
      002776 01                    2904 	.uleb128	1
      002777 01                    2905 	.db	1
      002778 00                    2906 	.db	0
      002779 05                    2907 	.uleb128	5
      00277A 02                    2908 	.db	2
      00277B 00 00 9B 32           2909 	.dw	0,(Sstm8s_uart1$UART1_SetGuardTime$310)
      00277F 03                    2910 	.db	3
      002780 8F 04                 2911 	.sleb128	527
      002782 01                    2912 	.db	1
      002783 09                    2913 	.db	9
      002784 00 00                 2914 	.dw	Sstm8s_uart1$UART1_SetGuardTime$312-Sstm8s_uart1$UART1_SetGuardTime$310
      002786 03                    2915 	.db	3
      002787 03                    2916 	.sleb128	3
      002788 01                    2917 	.db	1
      002789 09                    2918 	.db	9
      00278A 00 06                 2919 	.dw	Sstm8s_uart1$UART1_SetGuardTime$313-Sstm8s_uart1$UART1_SetGuardTime$312
      00278C 03                    2920 	.db	3
      00278D 01                    2921 	.sleb128	1
      00278E 01                    2922 	.db	1
      00278F 09                    2923 	.db	9
      002790 00 01                 2924 	.dw	1+Sstm8s_uart1$UART1_SetGuardTime$314-Sstm8s_uart1$UART1_SetGuardTime$313
      002792 00                    2925 	.db	0
      002793 01                    2926 	.uleb128	1
      002794 01                    2927 	.db	1
      002795 00                    2928 	.db	0
      002796 05                    2929 	.uleb128	5
      002797 02                    2930 	.db	2
      002798 00 00 9B 39           2931 	.dw	0,(Sstm8s_uart1$UART1_SetPrescaler$316)
      00279C 03                    2932 	.db	3
      00279D AB 04                 2933 	.sleb128	555
      00279F 01                    2934 	.db	1
      0027A0 09                    2935 	.db	9
      0027A1 00 00                 2936 	.dw	Sstm8s_uart1$UART1_SetPrescaler$318-Sstm8s_uart1$UART1_SetPrescaler$316
      0027A3 03                    2937 	.db	3
      0027A4 03                    2938 	.sleb128	3
      0027A5 01                    2939 	.db	1
      0027A6 09                    2940 	.db	9
      0027A7 00 06                 2941 	.dw	Sstm8s_uart1$UART1_SetPrescaler$319-Sstm8s_uart1$UART1_SetPrescaler$318
      0027A9 03                    2942 	.db	3
      0027AA 01                    2943 	.sleb128	1
      0027AB 01                    2944 	.db	1
      0027AC 09                    2945 	.db	9
      0027AD 00 01                 2946 	.dw	1+Sstm8s_uart1$UART1_SetPrescaler$320-Sstm8s_uart1$UART1_SetPrescaler$319
      0027AF 00                    2947 	.db	0
      0027B0 01                    2948 	.uleb128	1
      0027B1 01                    2949 	.db	1
      0027B2 00                    2950 	.db	0
      0027B3 05                    2951 	.uleb128	5
      0027B4 02                    2952 	.db	2
      0027B5 00 00 9B 40           2953 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$322)
      0027B9 03                    2954 	.db	3
      0027BA B7 04                 2955 	.sleb128	567
      0027BC 01                    2956 	.db	1
      0027BD 09                    2957 	.db	9
      0027BE 00 02                 2958 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$325-Sstm8s_uart1$UART1_GetFlagStatus$322
      0027C0 03                    2959 	.db	3
      0027C1 09                    2960 	.sleb128	9
      0027C2 01                    2961 	.db	1
      0027C3 09                    2962 	.db	9
      0027C4 00 04                 2963 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$326-Sstm8s_uart1$UART1_GetFlagStatus$325
      0027C6 03                    2964 	.db	3
      0027C7 02                    2965 	.sleb128	2
      0027C8 01                    2966 	.db	1
      0027C9 09                    2967 	.db	9
      0027CA 00 04                 2968 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$327-Sstm8s_uart1$UART1_GetFlagStatus$326
      0027CC 03                    2969 	.db	3
      0027CD 7E                    2970 	.sleb128	-2
      0027CE 01                    2971 	.db	1
      0027CF 09                    2972 	.db	9
      0027D0 00 0D                 2973 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$330-Sstm8s_uart1$UART1_GetFlagStatus$327
      0027D2 03                    2974 	.db	3
      0027D3 02                    2975 	.sleb128	2
      0027D4 01                    2976 	.db	1
      0027D5 09                    2977 	.db	9
      0027D6 00 0B                 2978 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$332-Sstm8s_uart1$UART1_GetFlagStatus$330
      0027D8 03                    2979 	.db	3
      0027D9 03                    2980 	.sleb128	3
      0027DA 01                    2981 	.db	1
      0027DB 09                    2982 	.db	9
      0027DC 00 05                 2983 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$335-Sstm8s_uart1$UART1_GetFlagStatus$332
      0027DE 03                    2984 	.db	3
      0027DF 05                    2985 	.sleb128	5
      0027E0 01                    2986 	.db	1
      0027E1 09                    2987 	.db	9
      0027E2 00 04                 2988 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$337-Sstm8s_uart1$UART1_GetFlagStatus$335
      0027E4 03                    2989 	.db	3
      0027E5 03                    2990 	.sleb128	3
      0027E6 01                    2991 	.db	1
      0027E7 09                    2992 	.db	9
      0027E8 00 0D                 2993 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$340-Sstm8s_uart1$UART1_GetFlagStatus$337
      0027EA 03                    2994 	.db	3
      0027EB 02                    2995 	.sleb128	2
      0027EC 01                    2996 	.db	1
      0027ED 09                    2997 	.db	9
      0027EE 00 0B                 2998 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$342-Sstm8s_uart1$UART1_GetFlagStatus$340
      0027F0 03                    2999 	.db	3
      0027F1 03                    3000 	.sleb128	3
      0027F2 01                    3001 	.db	1
      0027F3 09                    3002 	.db	9
      0027F4 00 05                 3003 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$345-Sstm8s_uart1$UART1_GetFlagStatus$342
      0027F6 03                    3004 	.db	3
      0027F7 05                    3005 	.sleb128	5
      0027F8 01                    3006 	.db	1
      0027F9 09                    3007 	.db	9
      0027FA 00 04                 3008 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$348-Sstm8s_uart1$UART1_GetFlagStatus$345
      0027FC 03                    3009 	.db	3
      0027FD 05                    3010 	.sleb128	5
      0027FE 01                    3011 	.db	1
      0027FF 09                    3012 	.db	9
      002800 00 0B                 3013 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$350-Sstm8s_uart1$UART1_GetFlagStatus$348
      002802 03                    3014 	.db	3
      002803 03                    3015 	.sleb128	3
      002804 01                    3016 	.db	1
      002805 09                    3017 	.db	9
      002806 00 05                 3018 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$353-Sstm8s_uart1$UART1_GetFlagStatus$350
      002808 03                    3019 	.db	3
      002809 05                    3020 	.sleb128	5
      00280A 01                    3021 	.db	1
      00280B 09                    3022 	.db	9
      00280C 00 01                 3023 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$355-Sstm8s_uart1$UART1_GetFlagStatus$353
      00280E 03                    3024 	.db	3
      00280F 04                    3025 	.sleb128	4
      002810 01                    3026 	.db	1
      002811 09                    3027 	.db	9
      002812 00 00                 3028 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$356-Sstm8s_uart1$UART1_GetFlagStatus$355
      002814 03                    3029 	.db	3
      002815 01                    3030 	.sleb128	1
      002816 01                    3031 	.db	1
      002817 09                    3032 	.db	9
      002818 00 03                 3033 	.dw	1+Sstm8s_uart1$UART1_GetFlagStatus$358-Sstm8s_uart1$UART1_GetFlagStatus$356
      00281A 00                    3034 	.db	0
      00281B 01                    3035 	.uleb128	1
      00281C 01                    3036 	.db	1
      00281D 00                    3037 	.db	0
      00281E 05                    3038 	.uleb128	5
      00281F 02                    3039 	.db	2
      002820 00 00 9B A0           3040 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$360)
      002824 03                    3041 	.db	3
      002825 85 05                 3042 	.sleb128	645
      002827 01                    3043 	.db	1
      002828 09                    3044 	.db	9
      002829 00 00                 3045 	.dw	Sstm8s_uart1$UART1_ClearFlag$362-Sstm8s_uart1$UART1_ClearFlag$360
      00282B 03                    3046 	.db	3
      00282C 05                    3047 	.sleb128	5
      00282D 01                    3048 	.db	1
      00282E 09                    3049 	.db	9
      00282F 00 0D                 3050 	.dw	Sstm8s_uart1$UART1_ClearFlag$365-Sstm8s_uart1$UART1_ClearFlag$362
      002831 03                    3051 	.db	3
      002832 02                    3052 	.sleb128	2
      002833 01                    3053 	.db	1
      002834 09                    3054 	.db	9
      002835 00 07                 3055 	.dw	Sstm8s_uart1$UART1_ClearFlag$368-Sstm8s_uart1$UART1_ClearFlag$365
      002837 03                    3056 	.db	3
      002838 05                    3057 	.sleb128	5
      002839 01                    3058 	.db	1
      00283A 09                    3059 	.db	9
      00283B 00 08                 3060 	.dw	Sstm8s_uart1$UART1_ClearFlag$370-Sstm8s_uart1$UART1_ClearFlag$368
      00283D 03                    3061 	.db	3
      00283E 02                    3062 	.sleb128	2
      00283F 01                    3063 	.db	1
      002840 09                    3064 	.db	9
      002841 00 01                 3065 	.dw	1+Sstm8s_uart1$UART1_ClearFlag$371-Sstm8s_uart1$UART1_ClearFlag$370
      002843 00                    3066 	.db	0
      002844 01                    3067 	.uleb128	1
      002845 01                    3068 	.db	1
      002846 00                    3069 	.db	0
      002847 05                    3070 	.uleb128	5
      002848 02                    3071 	.db	2
      002849 00 00 9B BD           3072 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$373)
      00284D 03                    3073 	.db	3
      00284E A2 05                 3074 	.sleb128	674
      002850 01                    3075 	.db	1
      002851 09                    3076 	.db	9
      002852 00 02                 3077 	.dw	Sstm8s_uart1$UART1_GetITStatus$376-Sstm8s_uart1$UART1_GetITStatus$373
      002854 03                    3078 	.db	3
      002855 0C                    3079 	.sleb128	12
      002856 01                    3080 	.db	1
      002857 09                    3081 	.db	9
      002858 00 14                 3082 	.dw	Sstm8s_uart1$UART1_GetITStatus$379-Sstm8s_uart1$UART1_GetITStatus$376
      00285A 03                    3083 	.db	3
      00285B 02                    3084 	.sleb128	2
      00285C 01                    3085 	.db	1
      00285D 09                    3086 	.db	9
      00285E 00 04                 3087 	.dw	Sstm8s_uart1$UART1_GetITStatus$380-Sstm8s_uart1$UART1_GetITStatus$379
      002860 03                    3088 	.db	3
      002861 02                    3089 	.sleb128	2
      002862 01                    3090 	.db	1
      002863 09                    3091 	.db	9
      002864 00 0E                 3092 	.dw	Sstm8s_uart1$UART1_GetITStatus$383-Sstm8s_uart1$UART1_GetITStatus$380
      002866 03                    3093 	.db	3
      002867 04                    3094 	.sleb128	4
      002868 01                    3095 	.db	1
      002869 09                    3096 	.db	9
      00286A 00 11                 3097 	.dw	Sstm8s_uart1$UART1_GetITStatus$386-Sstm8s_uart1$UART1_GetITStatus$383
      00286C 03                    3098 	.db	3
      00286D 03                    3099 	.sleb128	3
      00286E 01                    3100 	.db	1
      00286F 09                    3101 	.db	9
      002870 00 06                 3102 	.dw	Sstm8s_uart1$UART1_GetITStatus$387-Sstm8s_uart1$UART1_GetITStatus$386
      002872 03                    3103 	.db	3
      002873 03                    3104 	.sleb128	3
      002874 01                    3105 	.db	1
      002875 09                    3106 	.db	9
      002876 00 12                 3107 	.dw	Sstm8s_uart1$UART1_GetITStatus$389-Sstm8s_uart1$UART1_GetITStatus$387
      002878 03                    3108 	.db	3
      002879 03                    3109 	.sleb128	3
      00287A 01                    3110 	.db	1
      00287B 09                    3111 	.db	9
      00287C 00 05                 3112 	.dw	Sstm8s_uart1$UART1_GetITStatus$392-Sstm8s_uart1$UART1_GetITStatus$389
      00287E 03                    3113 	.db	3
      00287F 05                    3114 	.sleb128	5
      002880 01                    3115 	.db	1
      002881 09                    3116 	.db	9
      002882 00 04                 3117 	.dw	Sstm8s_uart1$UART1_GetITStatus$394-Sstm8s_uart1$UART1_GetITStatus$392
      002884 03                    3118 	.db	3
      002885 04                    3119 	.sleb128	4
      002886 01                    3120 	.db	1
      002887 09                    3121 	.db	9
      002888 00 0D                 3122 	.dw	Sstm8s_uart1$UART1_GetITStatus$397-Sstm8s_uart1$UART1_GetITStatus$394
      00288A 03                    3123 	.db	3
      00288B 03                    3124 	.sleb128	3
      00288C 01                    3125 	.db	1
      00288D 09                    3126 	.db	9
      00288E 00 06                 3127 	.dw	Sstm8s_uart1$UART1_GetITStatus$398-Sstm8s_uart1$UART1_GetITStatus$397
      002890 03                    3128 	.db	3
      002891 02                    3129 	.sleb128	2
      002892 01                    3130 	.db	1
      002893 09                    3131 	.db	9
      002894 00 12                 3132 	.dw	Sstm8s_uart1$UART1_GetITStatus$400-Sstm8s_uart1$UART1_GetITStatus$398
      002896 03                    3133 	.db	3
      002897 03                    3134 	.sleb128	3
      002898 01                    3135 	.db	1
      002899 09                    3136 	.db	9
      00289A 00 05                 3137 	.dw	Sstm8s_uart1$UART1_GetITStatus$403-Sstm8s_uart1$UART1_GetITStatus$400
      00289C 03                    3138 	.db	3
      00289D 05                    3139 	.sleb128	5
      00289E 01                    3140 	.db	1
      00289F 09                    3141 	.db	9
      0028A0 00 04                 3142 	.dw	Sstm8s_uart1$UART1_GetITStatus$406-Sstm8s_uart1$UART1_GetITStatus$403
      0028A2 03                    3143 	.db	3
      0028A3 06                    3144 	.sleb128	6
      0028A4 01                    3145 	.db	1
      0028A5 09                    3146 	.db	9
      0028A6 00 06                 3147 	.dw	Sstm8s_uart1$UART1_GetITStatus$407-Sstm8s_uart1$UART1_GetITStatus$406
      0028A8 03                    3148 	.db	3
      0028A9 02                    3149 	.sleb128	2
      0028AA 01                    3150 	.db	1
      0028AB 09                    3151 	.db	9
      0028AC 00 12                 3152 	.dw	Sstm8s_uart1$UART1_GetITStatus$409-Sstm8s_uart1$UART1_GetITStatus$407
      0028AE 03                    3153 	.db	3
      0028AF 03                    3154 	.sleb128	3
      0028B0 01                    3155 	.db	1
      0028B1 09                    3156 	.db	9
      0028B2 00 05                 3157 	.dw	Sstm8s_uart1$UART1_GetITStatus$412-Sstm8s_uart1$UART1_GetITStatus$409
      0028B4 03                    3158 	.db	3
      0028B5 05                    3159 	.sleb128	5
      0028B6 01                    3160 	.db	1
      0028B7 09                    3161 	.db	9
      0028B8 00 01                 3162 	.dw	Sstm8s_uart1$UART1_GetITStatus$414-Sstm8s_uart1$UART1_GetITStatus$412
      0028BA 03                    3163 	.db	3
      0028BB 05                    3164 	.sleb128	5
      0028BC 01                    3165 	.db	1
      0028BD 09                    3166 	.db	9
      0028BE 00 00                 3167 	.dw	Sstm8s_uart1$UART1_GetITStatus$415-Sstm8s_uart1$UART1_GetITStatus$414
      0028C0 03                    3168 	.db	3
      0028C1 01                    3169 	.sleb128	1
      0028C2 01                    3170 	.db	1
      0028C3 09                    3171 	.db	9
      0028C4 00 03                 3172 	.dw	1+Sstm8s_uart1$UART1_GetITStatus$417-Sstm8s_uart1$UART1_GetITStatus$415
      0028C6 00                    3173 	.db	0
      0028C7 01                    3174 	.uleb128	1
      0028C8 01                    3175 	.db	1
      0028C9 00                    3176 	.db	0
      0028CA 05                    3177 	.uleb128	5
      0028CB 02                    3178 	.db	2
      0028CC 00 00 9C 66           3179 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$419)
      0028D0 03                    3180 	.db	3
      0028D1 86 06                 3181 	.sleb128	774
      0028D3 01                    3182 	.db	1
      0028D4 09                    3183 	.db	9
      0028D5 00 00                 3184 	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$421-Sstm8s_uart1$UART1_ClearITPendingBit$419
      0028D7 03                    3185 	.db	3
      0028D8 05                    3186 	.sleb128	5
      0028D9 01                    3187 	.db	1
      0028DA 09                    3188 	.db	9
      0028DB 00 0D                 3189 	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$424-Sstm8s_uart1$UART1_ClearITPendingBit$421
      0028DD 03                    3190 	.db	3
      0028DE 02                    3191 	.sleb128	2
      0028DF 01                    3192 	.db	1
      0028E0 09                    3193 	.db	9
      0028E1 00 07                 3194 	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$427-Sstm8s_uart1$UART1_ClearITPendingBit$424
      0028E3 03                    3195 	.db	3
      0028E4 05                    3196 	.sleb128	5
      0028E5 01                    3197 	.db	1
      0028E6 09                    3198 	.db	9
      0028E7 00 08                 3199 	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$429-Sstm8s_uart1$UART1_ClearITPendingBit$427
      0028E9 03                    3200 	.db	3
      0028EA 02                    3201 	.sleb128	2
      0028EB 01                    3202 	.db	1
      0028EC 09                    3203 	.db	9
      0028ED 00 01                 3204 	.dw	1+Sstm8s_uart1$UART1_ClearITPendingBit$430-Sstm8s_uart1$UART1_ClearITPendingBit$429
      0028EF 00                    3205 	.db	0
      0028F0 01                    3206 	.uleb128	1
      0028F1 01                    3207 	.db	1
      0028F2                       3208 Ldebug_line_end:
                                   3209 
                                   3210 	.area .debug_loc (NOLOAD)
      002BCC                       3211 Ldebug_loc_start:
      002BCC 00 00 9C 73           3212 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$422)
      002BD0 00 00 9C 83           3213 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$431)
      002BD4 00 02                 3214 	.dw	2
      002BD6 78                    3215 	.db	120
      002BD7 01                    3216 	.sleb128	1
      002BD8 00 00 9C 66           3217 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$420)
      002BDC 00 00 9C 73           3218 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$422)
      002BE0 00 02                 3219 	.dw	2
      002BE2 78                    3220 	.db	120
      002BE3 01                    3221 	.sleb128	1
      002BE4 00 00 00 00           3222 	.dw	0,0
      002BE8 00 00 00 00           3223 	.dw	0,0
      002BEC 00 00 9C 65           3224 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$416)
      002BF0 00 00 9C 66           3225 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$418)
      002BF4 00 02                 3226 	.dw	2
      002BF6 78                    3227 	.db	120
      002BF7 01                    3228 	.sleb128	1
      002BF8 00 00 9C 24           3229 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$395)
      002BFC 00 00 9C 65           3230 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$416)
      002C00 00 02                 3231 	.dw	2
      002C02 78                    3232 	.db	120
      002C03 05                    3233 	.sleb128	5
      002C04 00 00 9B F6           3234 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$384)
      002C08 00 00 9C 24           3235 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$395)
      002C0C 00 02                 3236 	.dw	2
      002C0E 78                    3237 	.db	120
      002C0F 05                    3238 	.sleb128	5
      002C10 00 00 9B DD           3239 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$382)
      002C14 00 00 9B F6           3240 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$384)
      002C18 00 02                 3241 	.dw	2
      002C1A 78                    3242 	.db	120
      002C1B 05                    3243 	.sleb128	5
      002C1C 00 00 9B D8           3244 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$381)
      002C20 00 00 9B DD           3245 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$382)
      002C24 00 02                 3246 	.dw	2
      002C26 78                    3247 	.db	120
      002C27 06                    3248 	.sleb128	6
      002C28 00 00 9B CB           3249 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$378)
      002C2C 00 00 9B D8           3250 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$381)
      002C30 00 02                 3251 	.dw	2
      002C32 78                    3252 	.db	120
      002C33 05                    3253 	.sleb128	5
      002C34 00 00 9B C6           3254 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$377)
      002C38 00 00 9B CB           3255 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$378)
      002C3C 00 02                 3256 	.dw	2
      002C3E 78                    3257 	.db	120
      002C3F 06                    3258 	.sleb128	6
      002C40 00 00 9B BF           3259 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$375)
      002C44 00 00 9B C6           3260 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$377)
      002C48 00 02                 3261 	.dw	2
      002C4A 78                    3262 	.db	120
      002C4B 05                    3263 	.sleb128	5
      002C4C 00 00 9B BD           3264 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$374)
      002C50 00 00 9B BF           3265 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$375)
      002C54 00 02                 3266 	.dw	2
      002C56 78                    3267 	.db	120
      002C57 01                    3268 	.sleb128	1
      002C58 00 00 00 00           3269 	.dw	0,0
      002C5C 00 00 00 00           3270 	.dw	0,0
      002C60 00 00 9B AD           3271 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$363)
      002C64 00 00 9B BD           3272 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$372)
      002C68 00 02                 3273 	.dw	2
      002C6A 78                    3274 	.db	120
      002C6B 01                    3275 	.sleb128	1
      002C6C 00 00 9B A0           3276 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$361)
      002C70 00 00 9B AD           3277 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$363)
      002C74 00 02                 3278 	.dw	2
      002C76 78                    3279 	.db	120
      002C77 01                    3280 	.sleb128	1
      002C78 00 00 00 00           3281 	.dw	0,0
      002C7C 00 00 00 00           3282 	.dw	0,0
      002C80 00 00 9B 9F           3283 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$357)
      002C84 00 00 9B A0           3284 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$359)
      002C88 00 02                 3285 	.dw	2
      002C8A 78                    3286 	.db	120
      002C8B 01                    3287 	.sleb128	1
      002C8C 00 00 9B 78           3288 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$338)
      002C90 00 00 9B 9F           3289 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$357)
      002C94 00 02                 3290 	.dw	2
      002C96 78                    3291 	.db	120
      002C97 04                    3292 	.sleb128	4
      002C98 00 00 9B 57           3293 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$328)
      002C9C 00 00 9B 78           3294 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$338)
      002CA0 00 02                 3295 	.dw	2
      002CA2 78                    3296 	.db	120
      002CA3 04                    3297 	.sleb128	4
      002CA4 00 00 9B 42           3298 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$324)
      002CA8 00 00 9B 57           3299 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$328)
      002CAC 00 02                 3300 	.dw	2
      002CAE 78                    3301 	.db	120
      002CAF 04                    3302 	.sleb128	4
      002CB0 00 00 9B 40           3303 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$323)
      002CB4 00 00 9B 42           3304 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$324)
      002CB8 00 02                 3305 	.dw	2
      002CBA 78                    3306 	.db	120
      002CBB 01                    3307 	.sleb128	1
      002CBC 00 00 00 00           3308 	.dw	0,0
      002CC0 00 00 00 00           3309 	.dw	0,0
      002CC4 00 00 9B 39           3310 	.dw	0,(Sstm8s_uart1$UART1_SetPrescaler$317)
      002CC8 00 00 9B 40           3311 	.dw	0,(Sstm8s_uart1$UART1_SetPrescaler$321)
      002CCC 00 02                 3312 	.dw	2
      002CCE 78                    3313 	.db	120
      002CCF 01                    3314 	.sleb128	1
      002CD0 00 00 00 00           3315 	.dw	0,0
      002CD4 00 00 00 00           3316 	.dw	0,0
      002CD8 00 00 9B 32           3317 	.dw	0,(Sstm8s_uart1$UART1_SetGuardTime$311)
      002CDC 00 00 9B 39           3318 	.dw	0,(Sstm8s_uart1$UART1_SetGuardTime$315)
      002CE0 00 02                 3319 	.dw	2
      002CE2 78                    3320 	.db	120
      002CE3 01                    3321 	.sleb128	1
      002CE4 00 00 00 00           3322 	.dw	0,0
      002CE8 00 00 00 00           3323 	.dw	0,0
      002CEC 00 00 9B 21           3324 	.dw	0,(Sstm8s_uart1$UART1_SetAddress$304)
      002CF0 00 00 9B 32           3325 	.dw	0,(Sstm8s_uart1$UART1_SetAddress$309)
      002CF4 00 02                 3326 	.dw	2
      002CF6 78                    3327 	.db	120
      002CF7 01                    3328 	.sleb128	1
      002CF8 00 00 00 00           3329 	.dw	0,0
      002CFC 00 00 00 00           3330 	.dw	0,0
      002D00 00 00 9B 18           3331 	.dw	0,(Sstm8s_uart1$UART1_SendBreak$298)
      002D04 00 00 9B 21           3332 	.dw	0,(Sstm8s_uart1$UART1_SendBreak$302)
      002D08 00 02                 3333 	.dw	2
      002D0A 78                    3334 	.db	120
      002D0B 01                    3335 	.sleb128	1
      002D0C 00 00 00 00           3336 	.dw	0,0
      002D10 00 00 00 00           3337 	.dw	0,0
      002D14 00 00 9B 17           3338 	.dw	0,(Sstm8s_uart1$UART1_SendData9$294)
      002D18 00 00 9B 18           3339 	.dw	0,(Sstm8s_uart1$UART1_SendData9$296)
      002D1C 00 02                 3340 	.dw	2
      002D1E 78                    3341 	.db	120
      002D1F 01                    3342 	.sleb128	1
      002D20 00 00 9A F8           3343 	.dw	0,(Sstm8s_uart1$UART1_SendData9$289)
      002D24 00 00 9B 17           3344 	.dw	0,(Sstm8s_uart1$UART1_SendData9$294)
      002D28 00 02                 3345 	.dw	2
      002D2A 78                    3346 	.db	120
      002D2B 02                    3347 	.sleb128	2
      002D2C 00 00 9A F7           3348 	.dw	0,(Sstm8s_uart1$UART1_SendData9$288)
      002D30 00 00 9A F8           3349 	.dw	0,(Sstm8s_uart1$UART1_SendData9$289)
      002D34 00 02                 3350 	.dw	2
      002D36 78                    3351 	.db	120
      002D37 01                    3352 	.sleb128	1
      002D38 00 00 00 00           3353 	.dw	0,0
      002D3C 00 00 00 00           3354 	.dw	0,0
      002D40 00 00 9A F0           3355 	.dw	0,(Sstm8s_uart1$UART1_SendData8$282)
      002D44 00 00 9A F7           3356 	.dw	0,(Sstm8s_uart1$UART1_SendData8$286)
      002D48 00 02                 3357 	.dw	2
      002D4A 78                    3358 	.db	120
      002D4B 01                    3359 	.sleb128	1
      002D4C 00 00 00 00           3360 	.dw	0,0
      002D50 00 00 00 00           3361 	.dw	0,0
      002D54 00 00 9A EF           3362 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$278)
      002D58 00 00 9A F0           3363 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$280)
      002D5C 00 02                 3364 	.dw	2
      002D5E 78                    3365 	.db	120
      002D5F 01                    3366 	.sleb128	1
      002D60 00 00 9A D4           3367 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$274)
      002D64 00 00 9A EF           3368 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$278)
      002D68 00 02                 3369 	.dw	2
      002D6A 78                    3370 	.db	120
      002D6B 03                    3371 	.sleb128	3
      002D6C 00 00 9A D3           3372 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$273)
      002D70 00 00 9A D4           3373 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$274)
      002D74 00 02                 3374 	.dw	2
      002D76 78                    3375 	.db	120
      002D77 01                    3376 	.sleb128	1
      002D78 00 00 00 00           3377 	.dw	0,0
      002D7C 00 00 00 00           3378 	.dw	0,0
      002D80 00 00 9A CF           3379 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$267)
      002D84 00 00 9A D3           3380 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$271)
      002D88 00 02                 3381 	.dw	2
      002D8A 78                    3382 	.db	120
      002D8B 01                    3383 	.sleb128	1
      002D8C 00 00 00 00           3384 	.dw	0,0
      002D90 00 00 00 00           3385 	.dw	0,0
      002D94 00 00 9A B7           3386 	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$254)
      002D98 00 00 9A CF           3387 	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$265)
      002D9C 00 02                 3388 	.dw	2
      002D9E 78                    3389 	.db	120
      002D9F 01                    3390 	.sleb128	1
      002DA0 00 00 00 00           3391 	.dw	0,0
      002DA4 00 00 00 00           3392 	.dw	0,0
      002DA8 00 00 9A A6           3393 	.dw	0,(Sstm8s_uart1$UART1_WakeUpConfig$247)
      002DAC 00 00 9A B7           3394 	.dw	0,(Sstm8s_uart1$UART1_WakeUpConfig$252)
      002DB0 00 02                 3395 	.dw	2
      002DB2 78                    3396 	.db	120
      002DB3 01                    3397 	.sleb128	1
      002DB4 00 00 00 00           3398 	.dw	0,0
      002DB8 00 00 00 00           3399 	.dw	0,0
      002DBC 00 00 9A 8E           3400 	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$234)
      002DC0 00 00 9A A6           3401 	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$245)
      002DC4 00 02                 3402 	.dw	2
      002DC6 78                    3403 	.db	120
      002DC7 01                    3404 	.sleb128	1
      002DC8 00 00 00 00           3405 	.dw	0,0
      002DCC 00 00 00 00           3406 	.dw	0,0
      002DD0 00 00 9A 76           3407 	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$221)
      002DD4 00 00 9A 8E           3408 	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$232)
      002DD8 00 02                 3409 	.dw	2
      002DDA 78                    3410 	.db	120
      002DDB 01                    3411 	.sleb128	1
      002DDC 00 00 00 00           3412 	.dw	0,0
      002DE0 00 00 00 00           3413 	.dw	0,0
      002DE4 00 00 9A 5E           3414 	.dw	0,(Sstm8s_uart1$UART1_LINCmd$208)
      002DE8 00 00 9A 76           3415 	.dw	0,(Sstm8s_uart1$UART1_LINCmd$219)
      002DEC 00 02                 3416 	.dw	2
      002DEE 78                    3417 	.db	120
      002DEF 01                    3418 	.sleb128	1
      002DF0 00 00 00 00           3419 	.dw	0,0
      002DF4 00 00 00 00           3420 	.dw	0,0
      002DF8 00 00 9A 46           3421 	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$195)
      002DFC 00 00 9A 5E           3422 	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$206)
      002E00 00 02                 3423 	.dw	2
      002E02 78                    3424 	.db	120
      002E03 01                    3425 	.sleb128	1
      002E04 00 00 00 00           3426 	.dw	0,0
      002E08 00 00 00 00           3427 	.dw	0,0
      002E0C 00 00 9A 2E           3428 	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$182)
      002E10 00 00 9A 46           3429 	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$193)
      002E14 00 02                 3430 	.dw	2
      002E16 78                    3431 	.db	120
      002E17 01                    3432 	.sleb128	1
      002E18 00 00 00 00           3433 	.dw	0,0
      002E1C 00 00 00 00           3434 	.dw	0,0
      002E20 00 00 9A 16           3435 	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$169)
      002E24 00 00 9A 2E           3436 	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$180)
      002E28 00 02                 3437 	.dw	2
      002E2A 78                    3438 	.db	120
      002E2B 01                    3439 	.sleb128	1
      002E2C 00 00 00 00           3440 	.dw	0,0
      002E30 00 00 00 00           3441 	.dw	0,0
      002E34 00 00 99 FE           3442 	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$156)
      002E38 00 00 9A 16           3443 	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$167)
      002E3C 00 02                 3444 	.dw	2
      002E3E 78                    3445 	.db	120
      002E3F 01                    3446 	.sleb128	1
      002E40 00 00 00 00           3447 	.dw	0,0
      002E44 00 00 00 00           3448 	.dw	0,0
      002E48 00 00 99 FD           3449 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$152)
      002E4C 00 00 99 FE           3450 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$154)
      002E50 00 02                 3451 	.dw	2
      002E52 78                    3452 	.db	120
      002E53 01                    3453 	.sleb128	1
      002E54 00 00 99 D1           3454 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$138)
      002E58 00 00 99 FD           3455 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$152)
      002E5C 00 02                 3456 	.dw	2
      002E5E 78                    3457 	.db	120
      002E5F 03                    3458 	.sleb128	3
      002E60 00 00 99 CE           3459 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$137)
      002E64 00 00 99 D1           3460 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$138)
      002E68 00 02                 3461 	.dw	2
      002E6A 78                    3462 	.db	120
      002E6B 04                    3463 	.sleb128	4
      002E6C 00 00 99 98           3464 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$122)
      002E70 00 00 99 CE           3465 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$137)
      002E74 00 02                 3466 	.dw	2
      002E76 78                    3467 	.db	120
      002E77 03                    3468 	.sleb128	3
      002E78 00 00 99 8D           3469 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$120)
      002E7C 00 00 99 98           3470 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$122)
      002E80 00 02                 3471 	.dw	2
      002E82 78                    3472 	.db	120
      002E83 03                    3473 	.sleb128	3
      002E84 00 00 99 78           3474 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$118)
      002E88 00 00 99 8D           3475 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$120)
      002E8C 00 02                 3476 	.dw	2
      002E8E 78                    3477 	.db	120
      002E8F 03                    3478 	.sleb128	3
      002E90 00 00 99 73           3479 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$117)
      002E94 00 00 99 78           3480 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$118)
      002E98 00 02                 3481 	.dw	2
      002E9A 78                    3482 	.db	120
      002E9B 04                    3483 	.sleb128	4
      002E9C 00 00 99 6B           3484 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$114)
      002EA0 00 00 99 73           3485 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$117)
      002EA4 00 02                 3486 	.dw	2
      002EA6 78                    3487 	.db	120
      002EA7 03                    3488 	.sleb128	3
      002EA8 00 00 99 6A           3489 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$113)
      002EAC 00 00 99 6B           3490 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$114)
      002EB0 00 02                 3491 	.dw	2
      002EB2 78                    3492 	.db	120
      002EB3 01                    3493 	.sleb128	1
      002EB4 00 00 00 00           3494 	.dw	0,0
      002EB8 00 00 00 00           3495 	.dw	0,0
      002EBC 00 00 99 52           3496 	.dw	0,(Sstm8s_uart1$UART1_Cmd$100)
      002EC0 00 00 99 6A           3497 	.dw	0,(Sstm8s_uart1$UART1_Cmd$111)
      002EC4 00 02                 3498 	.dw	2
      002EC6 78                    3499 	.db	120
      002EC7 01                    3500 	.sleb128	1
      002EC8 00 00 00 00           3501 	.dw	0,0
      002ECC 00 00 00 00           3502 	.dw	0,0
      002ED0 00 00 99 51           3503 	.dw	0,(Sstm8s_uart1$UART1_Init$96)
      002ED4 00 00 99 52           3504 	.dw	0,(Sstm8s_uart1$UART1_Init$98)
      002ED8 00 02                 3505 	.dw	2
      002EDA 78                    3506 	.db	120
      002EDB 01                    3507 	.sleb128	1
      002EDC 00 00 99 4A           3508 	.dw	0,(Sstm8s_uart1$UART1_Init$93)
      002EE0 00 00 99 51           3509 	.dw	0,(Sstm8s_uart1$UART1_Init$96)
      002EE4 00 02                 3510 	.dw	2
      002EE6 78                    3511 	.db	120
      002EE7 12                    3512 	.sleb128	18
      002EE8 00 00 99 43           3513 	.dw	0,(Sstm8s_uart1$UART1_Init$92)
      002EEC 00 00 99 4A           3514 	.dw	0,(Sstm8s_uart1$UART1_Init$93)
      002EF0 00 02                 3515 	.dw	2
      002EF2 78                    3516 	.db	120
      002EF3 13                    3517 	.sleb128	19
      002EF4 00 00 99 1E           3518 	.dw	0,(Sstm8s_uart1$UART1_Init$78)
      002EF8 00 00 99 43           3519 	.dw	0,(Sstm8s_uart1$UART1_Init$92)
      002EFC 00 02                 3520 	.dw	2
      002EFE 78                    3521 	.db	120
      002EFF 12                    3522 	.sleb128	18
      002F00 00 00 99 19           3523 	.dw	0,(Sstm8s_uart1$UART1_Init$77)
      002F04 00 00 99 1E           3524 	.dw	0,(Sstm8s_uart1$UART1_Init$78)
      002F08 00 02                 3525 	.dw	2
      002F0A 78                    3526 	.db	120
      002F0B 13                    3527 	.sleb128	19
      002F0C 00 00 99 03           3528 	.dw	0,(Sstm8s_uart1$UART1_Init$68)
      002F10 00 00 99 19           3529 	.dw	0,(Sstm8s_uart1$UART1_Init$77)
      002F14 00 02                 3530 	.dw	2
      002F16 78                    3531 	.db	120
      002F17 12                    3532 	.sleb128	18
      002F18 00 00 98 FE           3533 	.dw	0,(Sstm8s_uart1$UART1_Init$67)
      002F1C 00 00 99 03           3534 	.dw	0,(Sstm8s_uart1$UART1_Init$68)
      002F20 00 02                 3535 	.dw	2
      002F22 78                    3536 	.db	120
      002F23 13                    3537 	.sleb128	19
      002F24 00 00 98 B6           3538 	.dw	0,(Sstm8s_uart1$UART1_Init$59)
      002F28 00 00 98 FE           3539 	.dw	0,(Sstm8s_uart1$UART1_Init$67)
      002F2C 00 02                 3540 	.dw	2
      002F2E 78                    3541 	.db	120
      002F2F 12                    3542 	.sleb128	18
      002F30 00 00 98 B1           3543 	.dw	0,(Sstm8s_uart1$UART1_Init$58)
      002F34 00 00 98 B6           3544 	.dw	0,(Sstm8s_uart1$UART1_Init$59)
      002F38 00 02                 3545 	.dw	2
      002F3A 78                    3546 	.db	120
      002F3B 1A                    3547 	.sleb128	26
      002F3C 00 00 98 AF           3548 	.dw	0,(Sstm8s_uart1$UART1_Init$57)
      002F40 00 00 98 B1           3549 	.dw	0,(Sstm8s_uart1$UART1_Init$58)
      002F44 00 02                 3550 	.dw	2
      002F46 78                    3551 	.db	120
      002F47 18                    3552 	.sleb128	24
      002F48 00 00 98 AE           3553 	.dw	0,(Sstm8s_uart1$UART1_Init$56)
      002F4C 00 00 98 AF           3554 	.dw	0,(Sstm8s_uart1$UART1_Init$57)
      002F50 00 02                 3555 	.dw	2
      002F52 78                    3556 	.db	120
      002F53 16                    3557 	.sleb128	22
      002F54 00 00 98 AC           3558 	.dw	0,(Sstm8s_uart1$UART1_Init$55)
      002F58 00 00 98 AE           3559 	.dw	0,(Sstm8s_uart1$UART1_Init$56)
      002F5C 00 02                 3560 	.dw	2
      002F5E 78                    3561 	.db	120
      002F5F 15                    3562 	.sleb128	21
      002F60 00 00 98 AA           3563 	.dw	0,(Sstm8s_uart1$UART1_Init$54)
      002F64 00 00 98 AC           3564 	.dw	0,(Sstm8s_uart1$UART1_Init$55)
      002F68 00 02                 3565 	.dw	2
      002F6A 78                    3566 	.db	120
      002F6B 14                    3567 	.sleb128	20
      002F6C 00 00 98 A8           3568 	.dw	0,(Sstm8s_uart1$UART1_Init$53)
      002F70 00 00 98 AA           3569 	.dw	0,(Sstm8s_uart1$UART1_Init$54)
      002F74 00 02                 3570 	.dw	2
      002F76 78                    3571 	.db	120
      002F77 13                    3572 	.sleb128	19
      002F78 00 00 98 83           3573 	.dw	0,(Sstm8s_uart1$UART1_Init$52)
      002F7C 00 00 98 A8           3574 	.dw	0,(Sstm8s_uart1$UART1_Init$53)
      002F80 00 02                 3575 	.dw	2
      002F82 78                    3576 	.db	120
      002F83 12                    3577 	.sleb128	18
      002F84 00 00 98 7E           3578 	.dw	0,(Sstm8s_uart1$UART1_Init$51)
      002F88 00 00 98 83           3579 	.dw	0,(Sstm8s_uart1$UART1_Init$52)
      002F8C 00 02                 3580 	.dw	2
      002F8E 78                    3581 	.db	120
      002F8F 1A                    3582 	.sleb128	26
      002F90 00 00 98 7C           3583 	.dw	0,(Sstm8s_uart1$UART1_Init$50)
      002F94 00 00 98 7E           3584 	.dw	0,(Sstm8s_uart1$UART1_Init$51)
      002F98 00 02                 3585 	.dw	2
      002F9A 78                    3586 	.db	120
      002F9B 19                    3587 	.sleb128	25
      002F9C 00 00 98 7A           3588 	.dw	0,(Sstm8s_uart1$UART1_Init$49)
      002FA0 00 00 98 7C           3589 	.dw	0,(Sstm8s_uart1$UART1_Init$50)
      002FA4 00 02                 3590 	.dw	2
      002FA6 78                    3591 	.db	120
      002FA7 17                    3592 	.sleb128	23
      002FA8 00 00 98 78           3593 	.dw	0,(Sstm8s_uart1$UART1_Init$48)
      002FAC 00 00 98 7A           3594 	.dw	0,(Sstm8s_uart1$UART1_Init$49)
      002FB0 00 02                 3595 	.dw	2
      002FB2 78                    3596 	.db	120
      002FB3 16                    3597 	.sleb128	22
      002FB4 00 00 98 75           3598 	.dw	0,(Sstm8s_uart1$UART1_Init$47)
      002FB8 00 00 98 78           3599 	.dw	0,(Sstm8s_uart1$UART1_Init$48)
      002FBC 00 02                 3600 	.dw	2
      002FBE 78                    3601 	.db	120
      002FBF 14                    3602 	.sleb128	20
      002FC0 00 00 98 69           3603 	.dw	0,(Sstm8s_uart1$UART1_Init$45)
      002FC4 00 00 98 75           3604 	.dw	0,(Sstm8s_uart1$UART1_Init$47)
      002FC8 00 02                 3605 	.dw	2
      002FCA 78                    3606 	.db	120
      002FCB 12                    3607 	.sleb128	18
      002FCC 00 00 98 64           3608 	.dw	0,(Sstm8s_uart1$UART1_Init$44)
      002FD0 00 00 98 69           3609 	.dw	0,(Sstm8s_uart1$UART1_Init$45)
      002FD4 00 02                 3610 	.dw	2
      002FD6 78                    3611 	.db	120
      002FD7 1A                    3612 	.sleb128	26
      002FD8 00 00 98 62           3613 	.dw	0,(Sstm8s_uart1$UART1_Init$43)
      002FDC 00 00 98 64           3614 	.dw	0,(Sstm8s_uart1$UART1_Init$44)
      002FE0 00 02                 3615 	.dw	2
      002FE2 78                    3616 	.db	120
      002FE3 18                    3617 	.sleb128	24
      002FE4 00 00 98 5F           3618 	.dw	0,(Sstm8s_uart1$UART1_Init$42)
      002FE8 00 00 98 62           3619 	.dw	0,(Sstm8s_uart1$UART1_Init$43)
      002FEC 00 02                 3620 	.dw	2
      002FEE 78                    3621 	.db	120
      002FEF 16                    3622 	.sleb128	22
      002FF0 00 00 98 5C           3623 	.dw	0,(Sstm8s_uart1$UART1_Init$41)
      002FF4 00 00 98 5F           3624 	.dw	0,(Sstm8s_uart1$UART1_Init$42)
      002FF8 00 02                 3625 	.dw	2
      002FFA 78                    3626 	.db	120
      002FFB 14                    3627 	.sleb128	20
      002FFC 00 00 98 57           3628 	.dw	0,(Sstm8s_uart1$UART1_Init$40)
      003000 00 00 98 5C           3629 	.dw	0,(Sstm8s_uart1$UART1_Init$41)
      003004 00 02                 3630 	.dw	2
      003006 78                    3631 	.db	120
      003007 12                    3632 	.sleb128	18
      003008 00 00 98 52           3633 	.dw	0,(Sstm8s_uart1$UART1_Init$39)
      00300C 00 00 98 57           3634 	.dw	0,(Sstm8s_uart1$UART1_Init$40)
      003010 00 02                 3635 	.dw	2
      003012 78                    3636 	.db	120
      003013 1A                    3637 	.sleb128	26
      003014 00 00 98 50           3638 	.dw	0,(Sstm8s_uart1$UART1_Init$38)
      003018 00 00 98 52           3639 	.dw	0,(Sstm8s_uart1$UART1_Init$39)
      00301C 00 02                 3640 	.dw	2
      00301E 78                    3641 	.db	120
      00301F 19                    3642 	.sleb128	25
      003020 00 00 98 4E           3643 	.dw	0,(Sstm8s_uart1$UART1_Init$37)
      003024 00 00 98 50           3644 	.dw	0,(Sstm8s_uart1$UART1_Init$38)
      003028 00 02                 3645 	.dw	2
      00302A 78                    3646 	.db	120
      00302B 17                    3647 	.sleb128	23
      00302C 00 00 98 4C           3648 	.dw	0,(Sstm8s_uart1$UART1_Init$36)
      003030 00 00 98 4E           3649 	.dw	0,(Sstm8s_uart1$UART1_Init$37)
      003034 00 02                 3650 	.dw	2
      003036 78                    3651 	.db	120
      003037 16                    3652 	.sleb128	22
      003038 00 00 98 49           3653 	.dw	0,(Sstm8s_uart1$UART1_Init$35)
      00303C 00 00 98 4C           3654 	.dw	0,(Sstm8s_uart1$UART1_Init$36)
      003040 00 02                 3655 	.dw	2
      003042 78                    3656 	.db	120
      003043 14                    3657 	.sleb128	20
      003044 00 00 98 33           3658 	.dw	0,(Sstm8s_uart1$UART1_Init$33)
      003048 00 00 98 49           3659 	.dw	0,(Sstm8s_uart1$UART1_Init$35)
      00304C 00 02                 3660 	.dw	2
      00304E 78                    3661 	.db	120
      00304F 12                    3662 	.sleb128	18
      003050 00 00 98 2E           3663 	.dw	0,(Sstm8s_uart1$UART1_Init$32)
      003054 00 00 98 33           3664 	.dw	0,(Sstm8s_uart1$UART1_Init$33)
      003058 00 02                 3665 	.dw	2
      00305A 78                    3666 	.db	120
      00305B 1A                    3667 	.sleb128	26
      00305C 00 00 98 2C           3668 	.dw	0,(Sstm8s_uart1$UART1_Init$31)
      003060 00 00 98 2E           3669 	.dw	0,(Sstm8s_uart1$UART1_Init$32)
      003064 00 02                 3670 	.dw	2
      003066 78                    3671 	.db	120
      003067 18                    3672 	.sleb128	24
      003068 00 00 98 29           3673 	.dw	0,(Sstm8s_uart1$UART1_Init$30)
      00306C 00 00 98 2C           3674 	.dw	0,(Sstm8s_uart1$UART1_Init$31)
      003070 00 02                 3675 	.dw	2
      003072 78                    3676 	.db	120
      003073 16                    3677 	.sleb128	22
      003074 00 00 98 26           3678 	.dw	0,(Sstm8s_uart1$UART1_Init$29)
      003078 00 00 98 29           3679 	.dw	0,(Sstm8s_uart1$UART1_Init$30)
      00307C 00 02                 3680 	.dw	2
      00307E 78                    3681 	.db	120
      00307F 14                    3682 	.sleb128	20
      003080 00 00 97 C5           3683 	.dw	0,(Sstm8s_uart1$UART1_Init$18)
      003084 00 00 98 26           3684 	.dw	0,(Sstm8s_uart1$UART1_Init$29)
      003088 00 02                 3685 	.dw	2
      00308A 78                    3686 	.db	120
      00308B 12                    3687 	.sleb128	18
      00308C 00 00 97 C3           3688 	.dw	0,(Sstm8s_uart1$UART1_Init$17)
      003090 00 00 97 C5           3689 	.dw	0,(Sstm8s_uart1$UART1_Init$18)
      003094 00 02                 3690 	.dw	2
      003096 78                    3691 	.db	120
      003097 01                    3692 	.sleb128	1
      003098 00 00 00 00           3693 	.dw	0,0
      00309C 00 00 00 00           3694 	.dw	0,0
      0030A0 00 00 97 98           3695 	.dw	0,(Sstm8s_uart1$UART1_DeInit$1)
      0030A4 00 00 97 C3           3696 	.dw	0,(Sstm8s_uart1$UART1_DeInit$15)
      0030A8 00 02                 3697 	.dw	2
      0030AA 78                    3698 	.db	120
      0030AB 01                    3699 	.sleb128	1
      0030AC 00 00 00 00           3700 	.dw	0,0
      0030B0 00 00 00 00           3701 	.dw	0,0
                                   3702 
                                   3703 	.area .debug_abbrev (NOLOAD)
      000621                       3704 Ldebug_abbrev:
      000621 09                    3705 	.uleb128	9
      000622 2E                    3706 	.uleb128	46
      000623 00                    3707 	.db	0
      000624 03                    3708 	.uleb128	3
      000625 08                    3709 	.uleb128	8
      000626 11                    3710 	.uleb128	17
      000627 01                    3711 	.uleb128	1
      000628 12                    3712 	.uleb128	18
      000629 01                    3713 	.uleb128	1
      00062A 3F                    3714 	.uleb128	63
      00062B 0C                    3715 	.uleb128	12
      00062C 40                    3716 	.uleb128	64
      00062D 06                    3717 	.uleb128	6
      00062E 49                    3718 	.uleb128	73
      00062F 13                    3719 	.uleb128	19
      000630 00                    3720 	.uleb128	0
      000631 00                    3721 	.uleb128	0
      000632 04                    3722 	.uleb128	4
      000633 05                    3723 	.uleb128	5
      000634 00                    3724 	.db	0
      000635 02                    3725 	.uleb128	2
      000636 0A                    3726 	.uleb128	10
      000637 03                    3727 	.uleb128	3
      000638 08                    3728 	.uleb128	8
      000639 49                    3729 	.uleb128	73
      00063A 13                    3730 	.uleb128	19
      00063B 00                    3731 	.uleb128	0
      00063C 00                    3732 	.uleb128	0
      00063D 03                    3733 	.uleb128	3
      00063E 2E                    3734 	.uleb128	46
      00063F 01                    3735 	.db	1
      000640 01                    3736 	.uleb128	1
      000641 13                    3737 	.uleb128	19
      000642 03                    3738 	.uleb128	3
      000643 08                    3739 	.uleb128	8
      000644 11                    3740 	.uleb128	17
      000645 01                    3741 	.uleb128	1
      000646 12                    3742 	.uleb128	18
      000647 01                    3743 	.uleb128	1
      000648 3F                    3744 	.uleb128	63
      000649 0C                    3745 	.uleb128	12
      00064A 40                    3746 	.uleb128	64
      00064B 06                    3747 	.uleb128	6
      00064C 00                    3748 	.uleb128	0
      00064D 00                    3749 	.uleb128	0
      00064E 06                    3750 	.uleb128	6
      00064F 34                    3751 	.uleb128	52
      000650 00                    3752 	.db	0
      000651 02                    3753 	.uleb128	2
      000652 0A                    3754 	.uleb128	10
      000653 03                    3755 	.uleb128	3
      000654 08                    3756 	.uleb128	8
      000655 49                    3757 	.uleb128	73
      000656 13                    3758 	.uleb128	19
      000657 00                    3759 	.uleb128	0
      000658 00                    3760 	.uleb128	0
      000659 0A                    3761 	.uleb128	10
      00065A 2E                    3762 	.uleb128	46
      00065B 01                    3763 	.db	1
      00065C 01                    3764 	.uleb128	1
      00065D 13                    3765 	.uleb128	19
      00065E 03                    3766 	.uleb128	3
      00065F 08                    3767 	.uleb128	8
      000660 11                    3768 	.uleb128	17
      000661 01                    3769 	.uleb128	1
      000662 12                    3770 	.uleb128	18
      000663 01                    3771 	.uleb128	1
      000664 3F                    3772 	.uleb128	63
      000665 0C                    3773 	.uleb128	12
      000666 40                    3774 	.uleb128	64
      000667 06                    3775 	.uleb128	6
      000668 49                    3776 	.uleb128	73
      000669 13                    3777 	.uleb128	19
      00066A 00                    3778 	.uleb128	0
      00066B 00                    3779 	.uleb128	0
      00066C 01                    3780 	.uleb128	1
      00066D 11                    3781 	.uleb128	17
      00066E 01                    3782 	.db	1
      00066F 03                    3783 	.uleb128	3
      000670 08                    3784 	.uleb128	8
      000671 10                    3785 	.uleb128	16
      000672 06                    3786 	.uleb128	6
      000673 13                    3787 	.uleb128	19
      000674 0B                    3788 	.uleb128	11
      000675 25                    3789 	.uleb128	37
      000676 08                    3790 	.uleb128	8
      000677 00                    3791 	.uleb128	0
      000678 00                    3792 	.uleb128	0
      000679 05                    3793 	.uleb128	5
      00067A 0B                    3794 	.uleb128	11
      00067B 00                    3795 	.db	0
      00067C 11                    3796 	.uleb128	17
      00067D 01                    3797 	.uleb128	1
      00067E 12                    3798 	.uleb128	18
      00067F 01                    3799 	.uleb128	1
      000680 00                    3800 	.uleb128	0
      000681 00                    3801 	.uleb128	0
      000682 08                    3802 	.uleb128	8
      000683 0B                    3803 	.uleb128	11
      000684 01                    3804 	.db	1
      000685 01                    3805 	.uleb128	1
      000686 13                    3806 	.uleb128	19
      000687 11                    3807 	.uleb128	17
      000688 01                    3808 	.uleb128	1
      000689 00                    3809 	.uleb128	0
      00068A 00                    3810 	.uleb128	0
      00068B 02                    3811 	.uleb128	2
      00068C 2E                    3812 	.uleb128	46
      00068D 00                    3813 	.db	0
      00068E 03                    3814 	.uleb128	3
      00068F 08                    3815 	.uleb128	8
      000690 11                    3816 	.uleb128	17
      000691 01                    3817 	.uleb128	1
      000692 12                    3818 	.uleb128	18
      000693 01                    3819 	.uleb128	1
      000694 3F                    3820 	.uleb128	63
      000695 0C                    3821 	.uleb128	12
      000696 40                    3822 	.uleb128	64
      000697 06                    3823 	.uleb128	6
      000698 00                    3824 	.uleb128	0
      000699 00                    3825 	.uleb128	0
      00069A 0B                    3826 	.uleb128	11
      00069B 2E                    3827 	.uleb128	46
      00069C 01                    3828 	.db	1
      00069D 03                    3829 	.uleb128	3
      00069E 08                    3830 	.uleb128	8
      00069F 11                    3831 	.uleb128	17
      0006A0 01                    3832 	.uleb128	1
      0006A1 12                    3833 	.uleb128	18
      0006A2 01                    3834 	.uleb128	1
      0006A3 3F                    3835 	.uleb128	63
      0006A4 0C                    3836 	.uleb128	12
      0006A5 40                    3837 	.uleb128	64
      0006A6 06                    3838 	.uleb128	6
      0006A7 00                    3839 	.uleb128	0
      0006A8 00                    3840 	.uleb128	0
      0006A9 07                    3841 	.uleb128	7
      0006AA 24                    3842 	.uleb128	36
      0006AB 00                    3843 	.db	0
      0006AC 03                    3844 	.uleb128	3
      0006AD 08                    3845 	.uleb128	8
      0006AE 0B                    3846 	.uleb128	11
      0006AF 0B                    3847 	.uleb128	11
      0006B0 3E                    3848 	.uleb128	62
      0006B1 0B                    3849 	.uleb128	11
      0006B2 00                    3850 	.uleb128	0
      0006B3 00                    3851 	.uleb128	0
      0006B4 00                    3852 	.uleb128	0
                                   3853 
                                   3854 	.area .debug_info (NOLOAD)
      003710 00 00 08 C7           3855 	.dw	0,Ldebug_info_end-Ldebug_info_start
      003714                       3856 Ldebug_info_start:
      003714 00 02                 3857 	.dw	2
      003716 00 00 06 21           3858 	.dw	0,(Ldebug_abbrev)
      00371A 04                    3859 	.db	4
      00371B 01                    3860 	.uleb128	1
      00371C 2E 2E 2F 53 50 4C 2F  3861 	.ascii "../SPL/src/stm8s_uart1.c"
             73 72 63 2F 73 74 6D
             38 73 5F 75 61 72 74
             31 2E 63
      003734 00                    3862 	.db	0
      003735 00 00 22 D1           3863 	.dw	0,(Ldebug_line_start+-4)
      003739 01                    3864 	.db	1
      00373A 53 44 43 43 20 76 65  3865 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      003753 00                    3866 	.db	0
      003754 02                    3867 	.uleb128	2
      003755 55 41 52 54 31 5F 44  3868 	.ascii "UART1_DeInit"
             65 49 6E 69 74
      003761 00                    3869 	.db	0
      003762 00 00 97 98           3870 	.dw	0,(_UART1_DeInit)
      003766 00 00 97 C3           3871 	.dw	0,(XG$UART1_DeInit$0$0+1)
      00376A 01                    3872 	.db	1
      00376B 00 00 30 A0           3873 	.dw	0,(Ldebug_loc_start+1236)
      00376F 03                    3874 	.uleb128	3
      003770 00 00 01 4C           3875 	.dw	0,332
      003774 55 41 52 54 31 5F 49  3876 	.ascii "UART1_Init"
             6E 69 74
      00377E 00                    3877 	.db	0
      00377F 00 00 97 C3           3878 	.dw	0,(_UART1_Init)
      003783 00 00 99 52           3879 	.dw	0,(XG$UART1_Init$0$0+1)
      003787 01                    3880 	.db	1
      003788 00 00 2E D0           3881 	.dw	0,(Ldebug_loc_start+772)
      00378C 04                    3882 	.uleb128	4
      00378D 02                    3883 	.db	2
      00378E 91                    3884 	.db	145
      00378F 02                    3885 	.sleb128	2
      003790 42 61 75 64 52 61 74  3886 	.ascii "BaudRate"
             65
      003798 00                    3887 	.db	0
      003799 00 00 01 4C           3888 	.dw	0,332
      00379D 04                    3889 	.uleb128	4
      00379E 02                    3890 	.db	2
      00379F 91                    3891 	.db	145
      0037A0 06                    3892 	.sleb128	6
      0037A1 57 6F 72 64 4C 65 6E  3893 	.ascii "WordLength"
             67 74 68
      0037AB 00                    3894 	.db	0
      0037AC 00 00 01 5D           3895 	.dw	0,349
      0037B0 04                    3896 	.uleb128	4
      0037B1 02                    3897 	.db	2
      0037B2 91                    3898 	.db	145
      0037B3 07                    3899 	.sleb128	7
      0037B4 53 74 6F 70 42 69 74  3900 	.ascii "StopBits"
             73
      0037BC 00                    3901 	.db	0
      0037BD 00 00 01 5D           3902 	.dw	0,349
      0037C1 04                    3903 	.uleb128	4
      0037C2 02                    3904 	.db	2
      0037C3 91                    3905 	.db	145
      0037C4 08                    3906 	.sleb128	8
      0037C5 50 61 72 69 74 79     3907 	.ascii "Parity"
      0037CB 00                    3908 	.db	0
      0037CC 00 00 01 5D           3909 	.dw	0,349
      0037D0 04                    3910 	.uleb128	4
      0037D1 02                    3911 	.db	2
      0037D2 91                    3912 	.db	145
      0037D3 09                    3913 	.sleb128	9
      0037D4 53 79 6E 63 4D 6F 64  3914 	.ascii "SyncMode"
             65
      0037DC 00                    3915 	.db	0
      0037DD 00 00 01 5D           3916 	.dw	0,349
      0037E1 04                    3917 	.uleb128	4
      0037E2 02                    3918 	.db	2
      0037E3 91                    3919 	.db	145
      0037E4 0A                    3920 	.sleb128	10
      0037E5 4D 6F 64 65           3921 	.ascii "Mode"
      0037E9 00                    3922 	.db	0
      0037EA 00 00 01 5D           3923 	.dw	0,349
      0037EE 05                    3924 	.uleb128	5
      0037EF 00 00 99 08           3925 	.dw	0,(Sstm8s_uart1$UART1_Init$69)
      0037F3 00 00 99 0D           3926 	.dw	0,(Sstm8s_uart1$UART1_Init$71)
      0037F7 05                    3927 	.uleb128	5
      0037F8 00 00 99 10           3928 	.dw	0,(Sstm8s_uart1$UART1_Init$72)
      0037FC 00 00 99 15           3929 	.dw	0,(Sstm8s_uart1$UART1_Init$74)
      003800 05                    3930 	.uleb128	5
      003801 00 00 99 23           3931 	.dw	0,(Sstm8s_uart1$UART1_Init$79)
      003805 00 00 99 28           3932 	.dw	0,(Sstm8s_uart1$UART1_Init$81)
      003809 05                    3933 	.uleb128	5
      00380A 00 00 99 2B           3934 	.dw	0,(Sstm8s_uart1$UART1_Init$82)
      00380E 00 00 99 30           3935 	.dw	0,(Sstm8s_uart1$UART1_Init$84)
      003812 05                    3936 	.uleb128	5
      003813 00 00 99 3A           3937 	.dw	0,(Sstm8s_uart1$UART1_Init$87)
      003817 00 00 99 3F           3938 	.dw	0,(Sstm8s_uart1$UART1_Init$89)
      00381B 05                    3939 	.uleb128	5
      00381C 00 00 99 42           3940 	.dw	0,(Sstm8s_uart1$UART1_Init$90)
      003820 00 00 99 4F           3941 	.dw	0,(Sstm8s_uart1$UART1_Init$94)
      003824 06                    3942 	.uleb128	6
      003825 02                    3943 	.db	2
      003826 91                    3944 	.db	145
      003827 6F                    3945 	.sleb128	-17
      003828 42 61 75 64 52 61 74  3946 	.ascii "BaudRate_Mantissa"
             65 5F 4D 61 6E 74 69
             73 73 61
      003839 00                    3947 	.db	0
      00383A 00 00 01 4C           3948 	.dw	0,332
      00383E 06                    3949 	.uleb128	6
      00383F 02                    3950 	.db	2
      003840 91                    3951 	.db	145
      003841 73                    3952 	.sleb128	-13
      003842 42 61 75 64 52 61 74  3953 	.ascii "BaudRate_Mantissa100"
             65 5F 4D 61 6E 74 69
             73 73 61 31 30 30
      003856 00                    3954 	.db	0
      003857 00 00 01 4C           3955 	.dw	0,332
      00385B 00                    3956 	.uleb128	0
      00385C 07                    3957 	.uleb128	7
      00385D 75 6E 73 69 67 6E 65  3958 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      00386A 00                    3959 	.db	0
      00386B 04                    3960 	.db	4
      00386C 07                    3961 	.db	7
      00386D 07                    3962 	.uleb128	7
      00386E 75 6E 73 69 67 6E 65  3963 	.ascii "unsigned char"
             64 20 63 68 61 72
      00387B 00                    3964 	.db	0
      00387C 01                    3965 	.db	1
      00387D 08                    3966 	.db	8
      00387E 03                    3967 	.uleb128	3
      00387F 00 00 01 AE           3968 	.dw	0,430
      003883 55 41 52 54 31 5F 43  3969 	.ascii "UART1_Cmd"
             6D 64
      00388C 00                    3970 	.db	0
      00388D 00 00 99 52           3971 	.dw	0,(_UART1_Cmd)
      003891 00 00 99 6A           3972 	.dw	0,(XG$UART1_Cmd$0$0+1)
      003895 01                    3973 	.db	1
      003896 00 00 2E BC           3974 	.dw	0,(Ldebug_loc_start+752)
      00389A 04                    3975 	.uleb128	4
      00389B 02                    3976 	.db	2
      00389C 91                    3977 	.db	145
      00389D 02                    3978 	.sleb128	2
      00389E 4E 65 77 53 74 61 74  3979 	.ascii "NewState"
             65
      0038A6 00                    3980 	.db	0
      0038A7 00 00 01 5D           3981 	.dw	0,349
      0038AB 05                    3982 	.uleb128	5
      0038AC 00 00 99 5C           3983 	.dw	0,(Sstm8s_uart1$UART1_Cmd$103)
      0038B0 00 00 99 61           3984 	.dw	0,(Sstm8s_uart1$UART1_Cmd$105)
      0038B4 05                    3985 	.uleb128	5
      0038B5 00 00 99 64           3986 	.dw	0,(Sstm8s_uart1$UART1_Cmd$106)
      0038B9 00 00 99 69           3987 	.dw	0,(Sstm8s_uart1$UART1_Cmd$108)
      0038BD 00                    3988 	.uleb128	0
      0038BE 03                    3989 	.uleb128	3
      0038BF 00 00 02 59           3990 	.dw	0,601
      0038C3 55 41 52 54 31 5F 49  3991 	.ascii "UART1_ITConfig"
             54 43 6F 6E 66 69 67
      0038D1 00                    3992 	.db	0
      0038D2 00 00 99 6A           3993 	.dw	0,(_UART1_ITConfig)
      0038D6 00 00 99 FE           3994 	.dw	0,(XG$UART1_ITConfig$0$0+1)
      0038DA 01                    3995 	.db	1
      0038DB 00 00 2E 48           3996 	.dw	0,(Ldebug_loc_start+636)
      0038DF 04                    3997 	.uleb128	4
      0038E0 02                    3998 	.db	2
      0038E1 91                    3999 	.db	145
      0038E2 02                    4000 	.sleb128	2
      0038E3 55 41 52 54 31 5F 49  4001 	.ascii "UART1_IT"
             54
      0038EB 00                    4002 	.db	0
      0038EC 00 00 02 59           4003 	.dw	0,601
      0038F0 04                    4004 	.uleb128	4
      0038F1 02                    4005 	.db	2
      0038F2 91                    4006 	.db	145
      0038F3 04                    4007 	.sleb128	4
      0038F4 4E 65 77 53 74 61 74  4008 	.ascii "NewState"
             65
      0038FC 00                    4009 	.db	0
      0038FD 00 00 01 5D           4010 	.dw	0,349
      003901 08                    4011 	.uleb128	8
      003902 00 00 02 16           4012 	.dw	0,534
      003906 00 00 99 9F           4013 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$124)
      00390A 05                    4014 	.uleb128	5
      00390B 00 00 99 A6           4015 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$126)
      00390F 00 00 99 AE           4016 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$128)
      003913 05                    4017 	.uleb128	5
      003914 00 00 99 B7           4018 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$130)
      003918 00 00 99 BF           4019 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$132)
      00391C 05                    4020 	.uleb128	5
      00391D 00 00 99 C2           4021 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$133)
      003921 00 00 99 CA           4022 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$135)
      003925 00                    4023 	.uleb128	0
      003926 08                    4024 	.uleb128	8
      003927 00 00 02 3B           4025 	.dw	0,571
      00392B 00 00 99 D1           4026 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$139)
      00392F 05                    4027 	.uleb128	5
      003930 00 00 99 D8           4028 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$141)
      003934 00 00 99 E0           4029 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$143)
      003938 05                    4030 	.uleb128	5
      003939 00 00 99 E9           4031 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$145)
      00393D 00 00 99 F1           4032 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$147)
      003941 05                    4033 	.uleb128	5
      003942 00 00 99 F4           4034 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$148)
      003946 00 00 99 FC           4035 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$150)
      00394A 00                    4036 	.uleb128	0
      00394B 06                    4037 	.uleb128	6
      00394C 01                    4038 	.db	1
      00394D 52                    4039 	.db	82
      00394E 75 61 72 74 72 65 67  4040 	.ascii "uartreg"
      003955 00                    4041 	.db	0
      003956 00 00 01 5D           4042 	.dw	0,349
      00395A 06                    4043 	.uleb128	6
      00395B 02                    4044 	.db	2
      00395C 91                    4045 	.db	145
      00395D 7F                    4046 	.sleb128	-1
      00395E 69 74 70 6F 73        4047 	.ascii "itpos"
      003963 00                    4048 	.db	0
      003964 00 00 01 5D           4049 	.dw	0,349
      003968 00                    4050 	.uleb128	0
      003969 07                    4051 	.uleb128	7
      00396A 75 6E 73 69 67 6E 65  4052 	.ascii "unsigned int"
             64 20 69 6E 74
      003976 00                    4053 	.db	0
      003977 02                    4054 	.db	2
      003978 07                    4055 	.db	7
      003979 03                    4056 	.uleb128	3
      00397A 00 00 02 B3           4057 	.dw	0,691
      00397E 55 41 52 54 31 5F 48  4058 	.ascii "UART1_HalfDuplexCmd"
             61 6C 66 44 75 70 6C
             65 78 43 6D 64
      003991 00                    4059 	.db	0
      003992 00 00 99 FE           4060 	.dw	0,(_UART1_HalfDuplexCmd)
      003996 00 00 9A 16           4061 	.dw	0,(XG$UART1_HalfDuplexCmd$0$0+1)
      00399A 01                    4062 	.db	1
      00399B 00 00 2E 34           4063 	.dw	0,(Ldebug_loc_start+616)
      00399F 04                    4064 	.uleb128	4
      0039A0 02                    4065 	.db	2
      0039A1 91                    4066 	.db	145
      0039A2 02                    4067 	.sleb128	2
      0039A3 4E 65 77 53 74 61 74  4068 	.ascii "NewState"
             65
      0039AB 00                    4069 	.db	0
      0039AC 00 00 01 5D           4070 	.dw	0,349
      0039B0 05                    4071 	.uleb128	5
      0039B1 00 00 9A 08           4072 	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$159)
      0039B5 00 00 9A 0D           4073 	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$161)
      0039B9 05                    4074 	.uleb128	5
      0039BA 00 00 9A 10           4075 	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$162)
      0039BE 00 00 9A 15           4076 	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$164)
      0039C2 00                    4077 	.uleb128	0
      0039C3 03                    4078 	.uleb128	3
      0039C4 00 00 03 00           4079 	.dw	0,768
      0039C8 55 41 52 54 31 5F 49  4080 	.ascii "UART1_IrDAConfig"
             72 44 41 43 6F 6E 66
             69 67
      0039D8 00                    4081 	.db	0
      0039D9 00 00 9A 16           4082 	.dw	0,(_UART1_IrDAConfig)
      0039DD 00 00 9A 2E           4083 	.dw	0,(XG$UART1_IrDAConfig$0$0+1)
      0039E1 01                    4084 	.db	1
      0039E2 00 00 2E 20           4085 	.dw	0,(Ldebug_loc_start+596)
      0039E6 04                    4086 	.uleb128	4
      0039E7 02                    4087 	.db	2
      0039E8 91                    4088 	.db	145
      0039E9 02                    4089 	.sleb128	2
      0039EA 55 41 52 54 31 5F 49  4090 	.ascii "UART1_IrDAMode"
             72 44 41 4D 6F 64 65
      0039F8 00                    4091 	.db	0
      0039F9 00 00 01 5D           4092 	.dw	0,349
      0039FD 05                    4093 	.uleb128	5
      0039FE 00 00 9A 20           4094 	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$172)
      003A02 00 00 9A 25           4095 	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$174)
      003A06 05                    4096 	.uleb128	5
      003A07 00 00 9A 28           4097 	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$175)
      003A0B 00 00 9A 2D           4098 	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$177)
      003A0F 00                    4099 	.uleb128	0
      003A10 03                    4100 	.uleb128	3
      003A11 00 00 03 44           4101 	.dw	0,836
      003A15 55 41 52 54 31 5F 49  4102 	.ascii "UART1_IrDACmd"
             72 44 41 43 6D 64
      003A22 00                    4103 	.db	0
      003A23 00 00 9A 2E           4104 	.dw	0,(_UART1_IrDACmd)
      003A27 00 00 9A 46           4105 	.dw	0,(XG$UART1_IrDACmd$0$0+1)
      003A2B 01                    4106 	.db	1
      003A2C 00 00 2E 0C           4107 	.dw	0,(Ldebug_loc_start+576)
      003A30 04                    4108 	.uleb128	4
      003A31 02                    4109 	.db	2
      003A32 91                    4110 	.db	145
      003A33 02                    4111 	.sleb128	2
      003A34 4E 65 77 53 74 61 74  4112 	.ascii "NewState"
             65
      003A3C 00                    4113 	.db	0
      003A3D 00 00 01 5D           4114 	.dw	0,349
      003A41 05                    4115 	.uleb128	5
      003A42 00 00 9A 38           4116 	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$185)
      003A46 00 00 9A 3D           4117 	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$187)
      003A4A 05                    4118 	.uleb128	5
      003A4B 00 00 9A 40           4119 	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$188)
      003A4F 00 00 9A 45           4120 	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$190)
      003A53 00                    4121 	.uleb128	0
      003A54 03                    4122 	.uleb128	3
      003A55 00 00 03 AD           4123 	.dw	0,941
      003A59 55 41 52 54 31 5F 4C  4124 	.ascii "UART1_LINBreakDetectionConfig"
             49 4E 42 72 65 61 6B
             44 65 74 65 63 74 69
             6F 6E 43 6F 6E 66 69
             67
      003A76 00                    4125 	.db	0
      003A77 00 00 9A 46           4126 	.dw	0,(_UART1_LINBreakDetectionConfig)
      003A7B 00 00 9A 5E           4127 	.dw	0,(XG$UART1_LINBreakDetectionConfig$0$0+1)
      003A7F 01                    4128 	.db	1
      003A80 00 00 2D F8           4129 	.dw	0,(Ldebug_loc_start+556)
      003A84 04                    4130 	.uleb128	4
      003A85 02                    4131 	.db	2
      003A86 91                    4132 	.db	145
      003A87 02                    4133 	.sleb128	2
      003A88 55 41 52 54 31 5F 4C  4134 	.ascii "UART1_LINBreakDetectionLength"
             49 4E 42 72 65 61 6B
             44 65 74 65 63 74 69
             6F 6E 4C 65 6E 67 74
             68
      003AA5 00                    4135 	.db	0
      003AA6 00 00 01 5D           4136 	.dw	0,349
      003AAA 05                    4137 	.uleb128	5
      003AAB 00 00 9A 50           4138 	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$198)
      003AAF 00 00 9A 55           4139 	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$200)
      003AB3 05                    4140 	.uleb128	5
      003AB4 00 00 9A 58           4141 	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$201)
      003AB8 00 00 9A 5D           4142 	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$203)
      003ABC 00                    4143 	.uleb128	0
      003ABD 03                    4144 	.uleb128	3
      003ABE 00 00 03 F0           4145 	.dw	0,1008
      003AC2 55 41 52 54 31 5F 4C  4146 	.ascii "UART1_LINCmd"
             49 4E 43 6D 64
      003ACE 00                    4147 	.db	0
      003ACF 00 00 9A 5E           4148 	.dw	0,(_UART1_LINCmd)
      003AD3 00 00 9A 76           4149 	.dw	0,(XG$UART1_LINCmd$0$0+1)
      003AD7 01                    4150 	.db	1
      003AD8 00 00 2D E4           4151 	.dw	0,(Ldebug_loc_start+536)
      003ADC 04                    4152 	.uleb128	4
      003ADD 02                    4153 	.db	2
      003ADE 91                    4154 	.db	145
      003ADF 02                    4155 	.sleb128	2
      003AE0 4E 65 77 53 74 61 74  4156 	.ascii "NewState"
             65
      003AE8 00                    4157 	.db	0
      003AE9 00 00 01 5D           4158 	.dw	0,349
      003AED 05                    4159 	.uleb128	5
      003AEE 00 00 9A 68           4160 	.dw	0,(Sstm8s_uart1$UART1_LINCmd$211)
      003AF2 00 00 9A 6D           4161 	.dw	0,(Sstm8s_uart1$UART1_LINCmd$213)
      003AF6 05                    4162 	.uleb128	5
      003AF7 00 00 9A 70           4163 	.dw	0,(Sstm8s_uart1$UART1_LINCmd$214)
      003AFB 00 00 9A 75           4164 	.dw	0,(Sstm8s_uart1$UART1_LINCmd$216)
      003AFF 00                    4165 	.uleb128	0
      003B00 03                    4166 	.uleb128	3
      003B01 00 00 04 39           4167 	.dw	0,1081
      003B05 55 41 52 54 31 5F 53  4168 	.ascii "UART1_SmartCardCmd"
             6D 61 72 74 43 61 72
             64 43 6D 64
      003B17 00                    4169 	.db	0
      003B18 00 00 9A 76           4170 	.dw	0,(_UART1_SmartCardCmd)
      003B1C 00 00 9A 8E           4171 	.dw	0,(XG$UART1_SmartCardCmd$0$0+1)
      003B20 01                    4172 	.db	1
      003B21 00 00 2D D0           4173 	.dw	0,(Ldebug_loc_start+516)
      003B25 04                    4174 	.uleb128	4
      003B26 02                    4175 	.db	2
      003B27 91                    4176 	.db	145
      003B28 02                    4177 	.sleb128	2
      003B29 4E 65 77 53 74 61 74  4178 	.ascii "NewState"
             65
      003B31 00                    4179 	.db	0
      003B32 00 00 01 5D           4180 	.dw	0,349
      003B36 05                    4181 	.uleb128	5
      003B37 00 00 9A 80           4182 	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$224)
      003B3B 00 00 9A 85           4183 	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$226)
      003B3F 05                    4184 	.uleb128	5
      003B40 00 00 9A 88           4185 	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$227)
      003B44 00 00 9A 8D           4186 	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$229)
      003B48 00                    4187 	.uleb128	0
      003B49 03                    4188 	.uleb128	3
      003B4A 00 00 04 86           4189 	.dw	0,1158
      003B4E 55 41 52 54 31 5F 53  4190 	.ascii "UART1_SmartCardNACKCmd"
             6D 61 72 74 43 61 72
             64 4E 41 43 4B 43 6D
             64
      003B64 00                    4191 	.db	0
      003B65 00 00 9A 8E           4192 	.dw	0,(_UART1_SmartCardNACKCmd)
      003B69 00 00 9A A6           4193 	.dw	0,(XG$UART1_SmartCardNACKCmd$0$0+1)
      003B6D 01                    4194 	.db	1
      003B6E 00 00 2D BC           4195 	.dw	0,(Ldebug_loc_start+496)
      003B72 04                    4196 	.uleb128	4
      003B73 02                    4197 	.db	2
      003B74 91                    4198 	.db	145
      003B75 02                    4199 	.sleb128	2
      003B76 4E 65 77 53 74 61 74  4200 	.ascii "NewState"
             65
      003B7E 00                    4201 	.db	0
      003B7F 00 00 01 5D           4202 	.dw	0,349
      003B83 05                    4203 	.uleb128	5
      003B84 00 00 9A 98           4204 	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$237)
      003B88 00 00 9A 9D           4205 	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$239)
      003B8C 05                    4206 	.uleb128	5
      003B8D 00 00 9A A0           4207 	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$240)
      003B91 00 00 9A A5           4208 	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$242)
      003B95 00                    4209 	.uleb128	0
      003B96 03                    4210 	.uleb128	3
      003B97 00 00 04 C1           4211 	.dw	0,1217
      003B9B 55 41 52 54 31 5F 57  4212 	.ascii "UART1_WakeUpConfig"
             61 6B 65 55 70 43 6F
             6E 66 69 67
      003BAD 00                    4213 	.db	0
      003BAE 00 00 9A A6           4214 	.dw	0,(_UART1_WakeUpConfig)
      003BB2 00 00 9A B7           4215 	.dw	0,(XG$UART1_WakeUpConfig$0$0+1)
      003BB6 01                    4216 	.db	1
      003BB7 00 00 2D A8           4217 	.dw	0,(Ldebug_loc_start+476)
      003BBB 04                    4218 	.uleb128	4
      003BBC 02                    4219 	.db	2
      003BBD 91                    4220 	.db	145
      003BBE 02                    4221 	.sleb128	2
      003BBF 55 41 52 54 31 5F 57  4222 	.ascii "UART1_WakeUp"
             61 6B 65 55 70
      003BCB 00                    4223 	.db	0
      003BCC 00 00 01 5D           4224 	.dw	0,349
      003BD0 00                    4225 	.uleb128	0
      003BD1 03                    4226 	.uleb128	3
      003BD2 00 00 05 0F           4227 	.dw	0,1295
      003BD6 55 41 52 54 31 5F 52  4228 	.ascii "UART1_ReceiverWakeUpCmd"
             65 63 65 69 76 65 72
             57 61 6B 65 55 70 43
             6D 64
      003BED 00                    4229 	.db	0
      003BEE 00 00 9A B7           4230 	.dw	0,(_UART1_ReceiverWakeUpCmd)
      003BF2 00 00 9A CF           4231 	.dw	0,(XG$UART1_ReceiverWakeUpCmd$0$0+1)
      003BF6 01                    4232 	.db	1
      003BF7 00 00 2D 94           4233 	.dw	0,(Ldebug_loc_start+456)
      003BFB 04                    4234 	.uleb128	4
      003BFC 02                    4235 	.db	2
      003BFD 91                    4236 	.db	145
      003BFE 02                    4237 	.sleb128	2
      003BFF 4E 65 77 53 74 61 74  4238 	.ascii "NewState"
             65
      003C07 00                    4239 	.db	0
      003C08 00 00 01 5D           4240 	.dw	0,349
      003C0C 05                    4241 	.uleb128	5
      003C0D 00 00 9A C1           4242 	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$257)
      003C11 00 00 9A C6           4243 	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$259)
      003C15 05                    4244 	.uleb128	5
      003C16 00 00 9A C9           4245 	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$260)
      003C1A 00 00 9A CE           4246 	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$262)
      003C1E 00                    4247 	.uleb128	0
      003C1F 09                    4248 	.uleb128	9
      003C20 55 41 52 54 31 5F 52  4249 	.ascii "UART1_ReceiveData8"
             65 63 65 69 76 65 44
             61 74 61 38
      003C32 00                    4250 	.db	0
      003C33 00 00 9A CF           4251 	.dw	0,(_UART1_ReceiveData8)
      003C37 00 00 9A D3           4252 	.dw	0,(XG$UART1_ReceiveData8$0$0+1)
      003C3B 01                    4253 	.db	1
      003C3C 00 00 2D 80           4254 	.dw	0,(Ldebug_loc_start+436)
      003C40 00 00 01 5D           4255 	.dw	0,349
      003C44 07                    4256 	.uleb128	7
      003C45 75 6E 73 69 67 6E 65  4257 	.ascii "unsigned int"
             64 20 69 6E 74
      003C51 00                    4258 	.db	0
      003C52 02                    4259 	.db	2
      003C53 07                    4260 	.db	7
      003C54 0A                    4261 	.uleb128	10
      003C55 00 00 05 7B           4262 	.dw	0,1403
      003C59 55 41 52 54 31 5F 52  4263 	.ascii "UART1_ReceiveData9"
             65 63 65 69 76 65 44
             61 74 61 39
      003C6B 00                    4264 	.db	0
      003C6C 00 00 9A D3           4265 	.dw	0,(_UART1_ReceiveData9)
      003C70 00 00 9A F0           4266 	.dw	0,(XG$UART1_ReceiveData9$0$0+1)
      003C74 01                    4267 	.db	1
      003C75 00 00 2D 54           4268 	.dw	0,(Ldebug_loc_start+392)
      003C79 00 00 05 34           4269 	.dw	0,1332
      003C7D 06                    4270 	.uleb128	6
      003C7E 02                    4271 	.db	2
      003C7F 91                    4272 	.db	145
      003C80 7E                    4273 	.sleb128	-2
      003C81 74 65 6D 70           4274 	.ascii "temp"
      003C85 00                    4275 	.db	0
      003C86 00 00 05 34           4276 	.dw	0,1332
      003C8A 00                    4277 	.uleb128	0
      003C8B 03                    4278 	.uleb128	3
      003C8C 00 00 05 AB           4279 	.dw	0,1451
      003C90 55 41 52 54 31 5F 53  4280 	.ascii "UART1_SendData8"
             65 6E 64 44 61 74 61
             38
      003C9F 00                    4281 	.db	0
      003CA0 00 00 9A F0           4282 	.dw	0,(_UART1_SendData8)
      003CA4 00 00 9A F7           4283 	.dw	0,(XG$UART1_SendData8$0$0+1)
      003CA8 01                    4284 	.db	1
      003CA9 00 00 2D 40           4285 	.dw	0,(Ldebug_loc_start+372)
      003CAD 04                    4286 	.uleb128	4
      003CAE 02                    4287 	.db	2
      003CAF 91                    4288 	.db	145
      003CB0 02                    4289 	.sleb128	2
      003CB1 44 61 74 61           4290 	.ascii "Data"
      003CB5 00                    4291 	.db	0
      003CB6 00 00 01 5D           4292 	.dw	0,349
      003CBA 00                    4293 	.uleb128	0
      003CBB 03                    4294 	.uleb128	3
      003CBC 00 00 05 DB           4295 	.dw	0,1499
      003CC0 55 41 52 54 31 5F 53  4296 	.ascii "UART1_SendData9"
             65 6E 64 44 61 74 61
             39
      003CCF 00                    4297 	.db	0
      003CD0 00 00 9A F7           4298 	.dw	0,(_UART1_SendData9)
      003CD4 00 00 9B 18           4299 	.dw	0,(XG$UART1_SendData9$0$0+1)
      003CD8 01                    4300 	.db	1
      003CD9 00 00 2D 14           4301 	.dw	0,(Ldebug_loc_start+328)
      003CDD 04                    4302 	.uleb128	4
      003CDE 02                    4303 	.db	2
      003CDF 91                    4304 	.db	145
      003CE0 02                    4305 	.sleb128	2
      003CE1 44 61 74 61           4306 	.ascii "Data"
      003CE5 00                    4307 	.db	0
      003CE6 00 00 05 34           4308 	.dw	0,1332
      003CEA 00                    4309 	.uleb128	0
      003CEB 02                    4310 	.uleb128	2
      003CEC 55 41 52 54 31 5F 53  4311 	.ascii "UART1_SendBreak"
             65 6E 64 42 72 65 61
             6B
      003CFB 00                    4312 	.db	0
      003CFC 00 00 9B 18           4313 	.dw	0,(_UART1_SendBreak)
      003D00 00 00 9B 21           4314 	.dw	0,(XG$UART1_SendBreak$0$0+1)
      003D04 01                    4315 	.db	1
      003D05 00 00 2D 00           4316 	.dw	0,(Ldebug_loc_start+308)
      003D09 03                    4317 	.uleb128	3
      003D0A 00 00 06 33           4318 	.dw	0,1587
      003D0E 55 41 52 54 31 5F 53  4319 	.ascii "UART1_SetAddress"
             65 74 41 64 64 72 65
             73 73
      003D1E 00                    4320 	.db	0
      003D1F 00 00 9B 21           4321 	.dw	0,(_UART1_SetAddress)
      003D23 00 00 9B 32           4322 	.dw	0,(XG$UART1_SetAddress$0$0+1)
      003D27 01                    4323 	.db	1
      003D28 00 00 2C EC           4324 	.dw	0,(Ldebug_loc_start+288)
      003D2C 04                    4325 	.uleb128	4
      003D2D 02                    4326 	.db	2
      003D2E 91                    4327 	.db	145
      003D2F 02                    4328 	.sleb128	2
      003D30 55 41 52 54 31 5F 41  4329 	.ascii "UART1_Address"
             64 64 72 65 73 73
      003D3D 00                    4330 	.db	0
      003D3E 00 00 01 5D           4331 	.dw	0,349
      003D42 00                    4332 	.uleb128	0
      003D43 03                    4333 	.uleb128	3
      003D44 00 00 06 71           4334 	.dw	0,1649
      003D48 55 41 52 54 31 5F 53  4335 	.ascii "UART1_SetGuardTime"
             65 74 47 75 61 72 64
             54 69 6D 65
      003D5A 00                    4336 	.db	0
      003D5B 00 00 9B 32           4337 	.dw	0,(_UART1_SetGuardTime)
      003D5F 00 00 9B 39           4338 	.dw	0,(XG$UART1_SetGuardTime$0$0+1)
      003D63 01                    4339 	.db	1
      003D64 00 00 2C D8           4340 	.dw	0,(Ldebug_loc_start+268)
      003D68 04                    4341 	.uleb128	4
      003D69 02                    4342 	.db	2
      003D6A 91                    4343 	.db	145
      003D6B 02                    4344 	.sleb128	2
      003D6C 55 41 52 54 31 5F 47  4345 	.ascii "UART1_GuardTime"
             75 61 72 64 54 69 6D
             65
      003D7B 00                    4346 	.db	0
      003D7C 00 00 01 5D           4347 	.dw	0,349
      003D80 00                    4348 	.uleb128	0
      003D81 03                    4349 	.uleb128	3
      003D82 00 00 06 AF           4350 	.dw	0,1711
      003D86 55 41 52 54 31 5F 53  4351 	.ascii "UART1_SetPrescaler"
             65 74 50 72 65 73 63
             61 6C 65 72
      003D98 00                    4352 	.db	0
      003D99 00 00 9B 39           4353 	.dw	0,(_UART1_SetPrescaler)
      003D9D 00 00 9B 40           4354 	.dw	0,(XG$UART1_SetPrescaler$0$0+1)
      003DA1 01                    4355 	.db	1
      003DA2 00 00 2C C4           4356 	.dw	0,(Ldebug_loc_start+248)
      003DA6 04                    4357 	.uleb128	4
      003DA7 02                    4358 	.db	2
      003DA8 91                    4359 	.db	145
      003DA9 02                    4360 	.sleb128	2
      003DAA 55 41 52 54 31 5F 50  4361 	.ascii "UART1_Prescaler"
             72 65 73 63 61 6C 65
             72
      003DB9 00                    4362 	.db	0
      003DBA 00 00 01 5D           4363 	.dw	0,349
      003DBE 00                    4364 	.uleb128	0
      003DBF 0A                    4365 	.uleb128	10
      003DC0 00 00 07 4F           4366 	.dw	0,1871
      003DC4 55 41 52 54 31 5F 47  4367 	.ascii "UART1_GetFlagStatus"
             65 74 46 6C 61 67 53
             74 61 74 75 73
      003DD7 00                    4368 	.db	0
      003DD8 00 00 9B 40           4369 	.dw	0,(_UART1_GetFlagStatus)
      003DDC 00 00 9B A0           4370 	.dw	0,(XG$UART1_GetFlagStatus$0$0+1)
      003DE0 01                    4371 	.db	1
      003DE1 00 00 2C 80           4372 	.dw	0,(Ldebug_loc_start+180)
      003DE5 00 00 01 5D           4373 	.dw	0,349
      003DE9 04                    4374 	.uleb128	4
      003DEA 02                    4375 	.db	2
      003DEB 91                    4376 	.db	145
      003DEC 02                    4377 	.sleb128	2
      003DED 55 41 52 54 31 5F 46  4378 	.ascii "UART1_FLAG"
             4C 41 47
      003DF7 00                    4379 	.db	0
      003DF8 00 00 02 59           4380 	.dw	0,601
      003DFC 08                    4381 	.uleb128	8
      003DFD 00 00 07 08           4382 	.dw	0,1800
      003E01 00 00 9B 57           4383 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$329)
      003E05 05                    4384 	.uleb128	5
      003E06 00 00 9B 62           4385 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$331)
      003E0A 00 00 9B 64           4386 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$333)
      003E0E 05                    4387 	.uleb128	5
      003E0F 00 00 9B 67           4388 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$334)
      003E13 00 00 9B 68           4389 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$336)
      003E17 00                    4390 	.uleb128	0
      003E18 08                    4391 	.uleb128	8
      003E19 00 00 07 24           4392 	.dw	0,1828
      003E1D 00 00 9B 78           4393 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$339)
      003E21 05                    4394 	.uleb128	5
      003E22 00 00 9B 83           4395 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$341)
      003E26 00 00 9B 85           4396 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$343)
      003E2A 05                    4397 	.uleb128	5
      003E2B 00 00 9B 88           4398 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$344)
      003E2F 00 00 9B 89           4399 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$346)
      003E33 00                    4400 	.uleb128	0
      003E34 08                    4401 	.uleb128	8
      003E35 00 00 07 40           4402 	.dw	0,1856
      003E39 00 00 9B 8C           4403 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$347)
      003E3D 05                    4404 	.uleb128	5
      003E3E 00 00 9B 97           4405 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$349)
      003E42 00 00 9B 99           4406 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$351)
      003E46 05                    4407 	.uleb128	5
      003E47 00 00 9B 9C           4408 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$352)
      003E4B 00 00 9B 9D           4409 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$354)
      003E4F 00                    4410 	.uleb128	0
      003E50 06                    4411 	.uleb128	6
      003E51 01                    4412 	.db	1
      003E52 50                    4413 	.db	80
      003E53 73 74 61 74 75 73     4414 	.ascii "status"
      003E59 00                    4415 	.db	0
      003E5A 00 00 01 5D           4416 	.dw	0,349
      003E5E 00                    4417 	.uleb128	0
      003E5F 03                    4418 	.uleb128	3
      003E60 00 00 07 97           4419 	.dw	0,1943
      003E64 55 41 52 54 31 5F 43  4420 	.ascii "UART1_ClearFlag"
             6C 65 61 72 46 6C 61
             67
      003E73 00                    4421 	.db	0
      003E74 00 00 9B A0           4422 	.dw	0,(_UART1_ClearFlag)
      003E78 00 00 9B BD           4423 	.dw	0,(XG$UART1_ClearFlag$0$0+1)
      003E7C 01                    4424 	.db	1
      003E7D 00 00 2C 60           4425 	.dw	0,(Ldebug_loc_start+148)
      003E81 04                    4426 	.uleb128	4
      003E82 02                    4427 	.db	2
      003E83 91                    4428 	.db	145
      003E84 02                    4429 	.sleb128	2
      003E85 55 41 52 54 31 5F 46  4430 	.ascii "UART1_FLAG"
             4C 41 47
      003E8F 00                    4431 	.db	0
      003E90 00 00 02 59           4432 	.dw	0,601
      003E94 05                    4433 	.uleb128	5
      003E95 00 00 9B AD           4434 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$364)
      003E99 00 00 9B B1           4435 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$366)
      003E9D 05                    4436 	.uleb128	5
      003E9E 00 00 9B B4           4437 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$367)
      003EA2 00 00 9B BC           4438 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$369)
      003EA6 00                    4439 	.uleb128	0
      003EA7 0A                    4440 	.uleb128	10
      003EA8 00 00 08 7E           4441 	.dw	0,2174
      003EAC 55 41 52 54 31 5F 47  4442 	.ascii "UART1_GetITStatus"
             65 74 49 54 53 74 61
             74 75 73
      003EBD 00                    4443 	.db	0
      003EBE 00 00 9B BD           4444 	.dw	0,(_UART1_GetITStatus)
      003EC2 00 00 9C 66           4445 	.dw	0,(XG$UART1_GetITStatus$0$0+1)
      003EC6 01                    4446 	.db	1
      003EC7 00 00 2B EC           4447 	.dw	0,(Ldebug_loc_start+32)
      003ECB 00 00 01 5D           4448 	.dw	0,349
      003ECF 04                    4449 	.uleb128	4
      003ED0 02                    4450 	.db	2
      003ED1 91                    4451 	.db	145
      003ED2 02                    4452 	.sleb128	2
      003ED3 55 41 52 54 31 5F 49  4453 	.ascii "UART1_IT"
             54
      003EDB 00                    4454 	.db	0
      003EDC 00 00 02 59           4455 	.dw	0,601
      003EE0 08                    4456 	.uleb128	8
      003EE1 00 00 07 EC           4457 	.dw	0,2028
      003EE5 00 00 9B F6           4458 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$385)
      003EE9 05                    4459 	.uleb128	5
      003EEA 00 00 9C 0E           4460 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$388)
      003EEE 00 00 9C 10           4461 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$390)
      003EF2 05                    4462 	.uleb128	5
      003EF3 00 00 9C 13           4463 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$391)
      003EF7 00 00 9C 14           4464 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$393)
      003EFB 00                    4465 	.uleb128	0
      003EFC 08                    4466 	.uleb128	8
      003EFD 00 00 08 08           4467 	.dw	0,2056
      003F01 00 00 9C 24           4468 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$396)
      003F05 05                    4469 	.uleb128	5
      003F06 00 00 9C 3C           4470 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$399)
      003F0A 00 00 9C 3E           4471 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$401)
      003F0E 05                    4472 	.uleb128	5
      003F0F 00 00 9C 41           4473 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$402)
      003F13 00 00 9C 42           4474 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$404)
      003F17 00                    4475 	.uleb128	0
      003F18 08                    4476 	.uleb128	8
      003F19 00 00 08 24           4477 	.dw	0,2084
      003F1D 00 00 9C 45           4478 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$405)
      003F21 05                    4479 	.uleb128	5
      003F22 00 00 9C 5D           4480 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$408)
      003F26 00 00 9C 5F           4481 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$410)
      003F2A 05                    4482 	.uleb128	5
      003F2B 00 00 9C 62           4483 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$411)
      003F2F 00 00 9C 63           4484 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$413)
      003F33 00                    4485 	.uleb128	0
      003F34 06                    4486 	.uleb128	6
      003F35 01                    4487 	.db	1
      003F36 50                    4488 	.db	80
      003F37 70 65 6E 64 69 6E 67  4489 	.ascii "pendingbitstatus"
             62 69 74 73 74 61 74
             75 73
      003F47 00                    4490 	.db	0
      003F48 00 00 01 5D           4491 	.dw	0,349
      003F4C 06                    4492 	.uleb128	6
      003F4D 02                    4493 	.db	2
      003F4E 91                    4494 	.db	145
      003F4F 7C                    4495 	.sleb128	-4
      003F50 69 74 70 6F 73        4496 	.ascii "itpos"
      003F55 00                    4497 	.db	0
      003F56 00 00 01 5D           4498 	.dw	0,349
      003F5A 06                    4499 	.uleb128	6
      003F5B 01                    4500 	.db	1
      003F5C 50                    4501 	.db	80
      003F5D 69 74 6D 61 73 6B 31  4502 	.ascii "itmask1"
      003F64 00                    4503 	.db	0
      003F65 00 00 01 5D           4504 	.dw	0,349
      003F69 06                    4505 	.uleb128	6
      003F6A 02                    4506 	.db	2
      003F6B 91                    4507 	.db	145
      003F6C 7D                    4508 	.sleb128	-3
      003F6D 69 74 6D 61 73 6B 32  4509 	.ascii "itmask2"
      003F74 00                    4510 	.db	0
      003F75 00 00 01 5D           4511 	.dw	0,349
      003F79 06                    4512 	.uleb128	6
      003F7A 01                    4513 	.db	1
      003F7B 51                    4514 	.db	81
      003F7C 65 6E 61 62 6C 65 73  4515 	.ascii "enablestatus"
             74 61 74 75 73
      003F88 00                    4516 	.db	0
      003F89 00 00 01 5D           4517 	.dw	0,349
      003F8D 00                    4518 	.uleb128	0
      003F8E 0B                    4519 	.uleb128	11
      003F8F 55 41 52 54 31 5F 43  4520 	.ascii "UART1_ClearITPendingBit"
             6C 65 61 72 49 54 50
             65 6E 64 69 6E 67 42
             69 74
      003FA6 00                    4521 	.db	0
      003FA7 00 00 9C 66           4522 	.dw	0,(_UART1_ClearITPendingBit)
      003FAB 00 00 9C 83           4523 	.dw	0,(XG$UART1_ClearITPendingBit$0$0+1)
      003FAF 01                    4524 	.db	1
      003FB0 00 00 2B CC           4525 	.dw	0,(Ldebug_loc_start)
      003FB4 04                    4526 	.uleb128	4
      003FB5 02                    4527 	.db	2
      003FB6 91                    4528 	.db	145
      003FB7 02                    4529 	.sleb128	2
      003FB8 55 41 52 54 31 5F 49  4530 	.ascii "UART1_IT"
             54
      003FC0 00                    4531 	.db	0
      003FC1 00 00 02 59           4532 	.dw	0,601
      003FC5 05                    4533 	.uleb128	5
      003FC6 00 00 9C 73           4534 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$423)
      003FCA 00 00 9C 77           4535 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$425)
      003FCE 05                    4536 	.uleb128	5
      003FCF 00 00 9C 7A           4537 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$426)
      003FD3 00 00 9C 82           4538 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$428)
      003FD7 00                    4539 	.uleb128	0
      003FD8 00                    4540 	.uleb128	0
      003FD9 00                    4541 	.uleb128	0
      003FDA 00                    4542 	.uleb128	0
      003FDB                       4543 Ldebug_info_end:
                                   4544 
                                   4545 	.area .debug_pubnames (NOLOAD)
      000AF5 00 00 02 31           4546 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000AF9                       4547 Ldebug_pubnames_start:
      000AF9 00 02                 4548 	.dw	2
      000AFB 00 00 37 10           4549 	.dw	0,(Ldebug_info_start-4)
      000AFF 00 00 08 CB           4550 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000B03 00 00 00 44           4551 	.dw	0,68
      000B07 55 41 52 54 31 5F 44  4552 	.ascii "UART1_DeInit"
             65 49 6E 69 74
      000B13 00                    4553 	.db	0
      000B14 00 00 00 5F           4554 	.dw	0,95
      000B18 55 41 52 54 31 5F 49  4555 	.ascii "UART1_Init"
             6E 69 74
      000B22 00                    4556 	.db	0
      000B23 00 00 01 6E           4557 	.dw	0,366
      000B27 55 41 52 54 31 5F 43  4558 	.ascii "UART1_Cmd"
             6D 64
      000B30 00                    4559 	.db	0
      000B31 00 00 01 AE           4560 	.dw	0,430
      000B35 55 41 52 54 31 5F 49  4561 	.ascii "UART1_ITConfig"
             54 43 6F 6E 66 69 67
      000B43 00                    4562 	.db	0
      000B44 00 00 02 69           4563 	.dw	0,617
      000B48 55 41 52 54 31 5F 48  4564 	.ascii "UART1_HalfDuplexCmd"
             61 6C 66 44 75 70 6C
             65 78 43 6D 64
      000B5B 00                    4565 	.db	0
      000B5C 00 00 02 B3           4566 	.dw	0,691
      000B60 55 41 52 54 31 5F 49  4567 	.ascii "UART1_IrDAConfig"
             72 44 41 43 6F 6E 66
             69 67
      000B70 00                    4568 	.db	0
      000B71 00 00 03 00           4569 	.dw	0,768
      000B75 55 41 52 54 31 5F 49  4570 	.ascii "UART1_IrDACmd"
             72 44 41 43 6D 64
      000B82 00                    4571 	.db	0
      000B83 00 00 03 44           4572 	.dw	0,836
      000B87 55 41 52 54 31 5F 4C  4573 	.ascii "UART1_LINBreakDetectionConfig"
             49 4E 42 72 65 61 6B
             44 65 74 65 63 74 69
             6F 6E 43 6F 6E 66 69
             67
      000BA4 00                    4574 	.db	0
      000BA5 00 00 03 AD           4575 	.dw	0,941
      000BA9 55 41 52 54 31 5F 4C  4576 	.ascii "UART1_LINCmd"
             49 4E 43 6D 64
      000BB5 00                    4577 	.db	0
      000BB6 00 00 03 F0           4578 	.dw	0,1008
      000BBA 55 41 52 54 31 5F 53  4579 	.ascii "UART1_SmartCardCmd"
             6D 61 72 74 43 61 72
             64 43 6D 64
      000BCC 00                    4580 	.db	0
      000BCD 00 00 04 39           4581 	.dw	0,1081
      000BD1 55 41 52 54 31 5F 53  4582 	.ascii "UART1_SmartCardNACKCmd"
             6D 61 72 74 43 61 72
             64 4E 41 43 4B 43 6D
             64
      000BE7 00                    4583 	.db	0
      000BE8 00 00 04 86           4584 	.dw	0,1158
      000BEC 55 41 52 54 31 5F 57  4585 	.ascii "UART1_WakeUpConfig"
             61 6B 65 55 70 43 6F
             6E 66 69 67
      000BFE 00                    4586 	.db	0
      000BFF 00 00 04 C1           4587 	.dw	0,1217
      000C03 55 41 52 54 31 5F 52  4588 	.ascii "UART1_ReceiverWakeUpCmd"
             65 63 65 69 76 65 72
             57 61 6B 65 55 70 43
             6D 64
      000C1A 00                    4589 	.db	0
      000C1B 00 00 05 0F           4590 	.dw	0,1295
      000C1F 55 41 52 54 31 5F 52  4591 	.ascii "UART1_ReceiveData8"
             65 63 65 69 76 65 44
             61 74 61 38
      000C31 00                    4592 	.db	0
      000C32 00 00 05 44           4593 	.dw	0,1348
      000C36 55 41 52 54 31 5F 52  4594 	.ascii "UART1_ReceiveData9"
             65 63 65 69 76 65 44
             61 74 61 39
      000C48 00                    4595 	.db	0
      000C49 00 00 05 7B           4596 	.dw	0,1403
      000C4D 55 41 52 54 31 5F 53  4597 	.ascii "UART1_SendData8"
             65 6E 64 44 61 74 61
             38
      000C5C 00                    4598 	.db	0
      000C5D 00 00 05 AB           4599 	.dw	0,1451
      000C61 55 41 52 54 31 5F 53  4600 	.ascii "UART1_SendData9"
             65 6E 64 44 61 74 61
             39
      000C70 00                    4601 	.db	0
      000C71 00 00 05 DB           4602 	.dw	0,1499
      000C75 55 41 52 54 31 5F 53  4603 	.ascii "UART1_SendBreak"
             65 6E 64 42 72 65 61
             6B
      000C84 00                    4604 	.db	0
      000C85 00 00 05 F9           4605 	.dw	0,1529
      000C89 55 41 52 54 31 5F 53  4606 	.ascii "UART1_SetAddress"
             65 74 41 64 64 72 65
             73 73
      000C99 00                    4607 	.db	0
      000C9A 00 00 06 33           4608 	.dw	0,1587
      000C9E 55 41 52 54 31 5F 53  4609 	.ascii "UART1_SetGuardTime"
             65 74 47 75 61 72 64
             54 69 6D 65
      000CB0 00                    4610 	.db	0
      000CB1 00 00 06 71           4611 	.dw	0,1649
      000CB5 55 41 52 54 31 5F 53  4612 	.ascii "UART1_SetPrescaler"
             65 74 50 72 65 73 63
             61 6C 65 72
      000CC7 00                    4613 	.db	0
      000CC8 00 00 06 AF           4614 	.dw	0,1711
      000CCC 55 41 52 54 31 5F 47  4615 	.ascii "UART1_GetFlagStatus"
             65 74 46 6C 61 67 53
             74 61 74 75 73
      000CDF 00                    4616 	.db	0
      000CE0 00 00 07 4F           4617 	.dw	0,1871
      000CE4 55 41 52 54 31 5F 43  4618 	.ascii "UART1_ClearFlag"
             6C 65 61 72 46 6C 61
             67
      000CF3 00                    4619 	.db	0
      000CF4 00 00 07 97           4620 	.dw	0,1943
      000CF8 55 41 52 54 31 5F 47  4621 	.ascii "UART1_GetITStatus"
             65 74 49 54 53 74 61
             74 75 73
      000D09 00                    4622 	.db	0
      000D0A 00 00 08 7E           4623 	.dw	0,2174
      000D0E 55 41 52 54 31 5F 43  4624 	.ascii "UART1_ClearITPendingBit"
             6C 65 61 72 49 54 50
             65 6E 64 69 6E 67 42
             69 74
      000D25 00                    4625 	.db	0
      000D26 00 00 00 00           4626 	.dw	0,0
      000D2A                       4627 Ldebug_pubnames_end:
                                   4628 
                                   4629 	.area .debug_frame (NOLOAD)
      002837 00 00                 4630 	.dw	0
      002839 00 0E                 4631 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      00283B                       4632 Ldebug_CIE0_start:
      00283B FF FF                 4633 	.dw	0xffff
      00283D FF FF                 4634 	.dw	0xffff
      00283F 01                    4635 	.db	1
      002840 00                    4636 	.db	0
      002841 01                    4637 	.uleb128	1
      002842 7F                    4638 	.sleb128	-1
      002843 09                    4639 	.db	9
      002844 0C                    4640 	.db	12
      002845 08                    4641 	.uleb128	8
      002846 02                    4642 	.uleb128	2
      002847 89                    4643 	.db	137
      002848 01                    4644 	.uleb128	1
      002849                       4645 Ldebug_CIE0_end:
      002849 00 00 00 1A           4646 	.dw	0,26
      00284D 00 00 28 37           4647 	.dw	0,(Ldebug_CIE0_start-4)
      002851 00 00 9C 66           4648 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$420)	;initial loc
      002855 00 00 00 1D           4649 	.dw	0,Sstm8s_uart1$UART1_ClearITPendingBit$431-Sstm8s_uart1$UART1_ClearITPendingBit$420
      002859 01                    4650 	.db	1
      00285A 00 00 9C 66           4651 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$420)
      00285E 0E                    4652 	.db	14
      00285F 02                    4653 	.uleb128	2
      002860 01                    4654 	.db	1
      002861 00 00 9C 73           4655 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$422)
      002865 0E                    4656 	.db	14
      002866 02                    4657 	.uleb128	2
                                   4658 
                                   4659 	.area .debug_frame (NOLOAD)
      002867 00 00                 4660 	.dw	0
      002869 00 0E                 4661 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      00286B                       4662 Ldebug_CIE1_start:
      00286B FF FF                 4663 	.dw	0xffff
      00286D FF FF                 4664 	.dw	0xffff
      00286F 01                    4665 	.db	1
      002870 00                    4666 	.db	0
      002871 01                    4667 	.uleb128	1
      002872 7F                    4668 	.sleb128	-1
      002873 09                    4669 	.db	9
      002874 0C                    4670 	.db	12
      002875 08                    4671 	.uleb128	8
      002876 02                    4672 	.uleb128	2
      002877 89                    4673 	.db	137
      002878 01                    4674 	.uleb128	1
      002879                       4675 Ldebug_CIE1_end:
      002879 00 00 00 4B           4676 	.dw	0,75
      00287D 00 00 28 67           4677 	.dw	0,(Ldebug_CIE1_start-4)
      002881 00 00 9B BD           4678 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$374)	;initial loc
      002885 00 00 00 A9           4679 	.dw	0,Sstm8s_uart1$UART1_GetITStatus$418-Sstm8s_uart1$UART1_GetITStatus$374
      002889 01                    4680 	.db	1
      00288A 00 00 9B BD           4681 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$374)
      00288E 0E                    4682 	.db	14
      00288F 02                    4683 	.uleb128	2
      002890 01                    4684 	.db	1
      002891 00 00 9B BF           4685 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$375)
      002895 0E                    4686 	.db	14
      002896 06                    4687 	.uleb128	6
      002897 01                    4688 	.db	1
      002898 00 00 9B C6           4689 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$377)
      00289C 0E                    4690 	.db	14
      00289D 07                    4691 	.uleb128	7
      00289E 01                    4692 	.db	1
      00289F 00 00 9B CB           4693 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$378)
      0028A3 0E                    4694 	.db	14
      0028A4 06                    4695 	.uleb128	6
      0028A5 01                    4696 	.db	1
      0028A6 00 00 9B D8           4697 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$381)
      0028AA 0E                    4698 	.db	14
      0028AB 07                    4699 	.uleb128	7
      0028AC 01                    4700 	.db	1
      0028AD 00 00 9B DD           4701 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$382)
      0028B1 0E                    4702 	.db	14
      0028B2 06                    4703 	.uleb128	6
      0028B3 01                    4704 	.db	1
      0028B4 00 00 9B F6           4705 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$384)
      0028B8 0E                    4706 	.db	14
      0028B9 06                    4707 	.uleb128	6
      0028BA 01                    4708 	.db	1
      0028BB 00 00 9C 24           4709 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$395)
      0028BF 0E                    4710 	.db	14
      0028C0 06                    4711 	.uleb128	6
      0028C1 01                    4712 	.db	1
      0028C2 00 00 9C 65           4713 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$416)
      0028C6 0E                    4714 	.db	14
      0028C7 02                    4715 	.uleb128	2
                                   4716 
                                   4717 	.area .debug_frame (NOLOAD)
      0028C8 00 00                 4718 	.dw	0
      0028CA 00 0E                 4719 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      0028CC                       4720 Ldebug_CIE2_start:
      0028CC FF FF                 4721 	.dw	0xffff
      0028CE FF FF                 4722 	.dw	0xffff
      0028D0 01                    4723 	.db	1
      0028D1 00                    4724 	.db	0
      0028D2 01                    4725 	.uleb128	1
      0028D3 7F                    4726 	.sleb128	-1
      0028D4 09                    4727 	.db	9
      0028D5 0C                    4728 	.db	12
      0028D6 08                    4729 	.uleb128	8
      0028D7 02                    4730 	.uleb128	2
      0028D8 89                    4731 	.db	137
      0028D9 01                    4732 	.uleb128	1
      0028DA                       4733 Ldebug_CIE2_end:
      0028DA 00 00 00 1A           4734 	.dw	0,26
      0028DE 00 00 28 C8           4735 	.dw	0,(Ldebug_CIE2_start-4)
      0028E2 00 00 9B A0           4736 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$361)	;initial loc
      0028E6 00 00 00 1D           4737 	.dw	0,Sstm8s_uart1$UART1_ClearFlag$372-Sstm8s_uart1$UART1_ClearFlag$361
      0028EA 01                    4738 	.db	1
      0028EB 00 00 9B A0           4739 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$361)
      0028EF 0E                    4740 	.db	14
      0028F0 02                    4741 	.uleb128	2
      0028F1 01                    4742 	.db	1
      0028F2 00 00 9B AD           4743 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$363)
      0028F6 0E                    4744 	.db	14
      0028F7 02                    4745 	.uleb128	2
                                   4746 
                                   4747 	.area .debug_frame (NOLOAD)
      0028F8 00 00                 4748 	.dw	0
      0028FA 00 0E                 4749 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      0028FC                       4750 Ldebug_CIE3_start:
      0028FC FF FF                 4751 	.dw	0xffff
      0028FE FF FF                 4752 	.dw	0xffff
      002900 01                    4753 	.db	1
      002901 00                    4754 	.db	0
      002902 01                    4755 	.uleb128	1
      002903 7F                    4756 	.sleb128	-1
      002904 09                    4757 	.db	9
      002905 0C                    4758 	.db	12
      002906 08                    4759 	.uleb128	8
      002907 02                    4760 	.uleb128	2
      002908 89                    4761 	.db	137
      002909 01                    4762 	.uleb128	1
      00290A                       4763 Ldebug_CIE3_end:
      00290A 00 00 00 2F           4764 	.dw	0,47
      00290E 00 00 28 F8           4765 	.dw	0,(Ldebug_CIE3_start-4)
      002912 00 00 9B 40           4766 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$323)	;initial loc
      002916 00 00 00 60           4767 	.dw	0,Sstm8s_uart1$UART1_GetFlagStatus$359-Sstm8s_uart1$UART1_GetFlagStatus$323
      00291A 01                    4768 	.db	1
      00291B 00 00 9B 40           4769 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$323)
      00291F 0E                    4770 	.db	14
      002920 02                    4771 	.uleb128	2
      002921 01                    4772 	.db	1
      002922 00 00 9B 42           4773 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$324)
      002926 0E                    4774 	.db	14
      002927 05                    4775 	.uleb128	5
      002928 01                    4776 	.db	1
      002929 00 00 9B 57           4777 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$328)
      00292D 0E                    4778 	.db	14
      00292E 05                    4779 	.uleb128	5
      00292F 01                    4780 	.db	1
      002930 00 00 9B 78           4781 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$338)
      002934 0E                    4782 	.db	14
      002935 05                    4783 	.uleb128	5
      002936 01                    4784 	.db	1
      002937 00 00 9B 9F           4785 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$357)
      00293B 0E                    4786 	.db	14
      00293C 02                    4787 	.uleb128	2
                                   4788 
                                   4789 	.area .debug_frame (NOLOAD)
      00293D 00 00                 4790 	.dw	0
      00293F 00 0E                 4791 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      002941                       4792 Ldebug_CIE4_start:
      002941 FF FF                 4793 	.dw	0xffff
      002943 FF FF                 4794 	.dw	0xffff
      002945 01                    4795 	.db	1
      002946 00                    4796 	.db	0
      002947 01                    4797 	.uleb128	1
      002948 7F                    4798 	.sleb128	-1
      002949 09                    4799 	.db	9
      00294A 0C                    4800 	.db	12
      00294B 08                    4801 	.uleb128	8
      00294C 02                    4802 	.uleb128	2
      00294D 89                    4803 	.db	137
      00294E 01                    4804 	.uleb128	1
      00294F                       4805 Ldebug_CIE4_end:
      00294F 00 00 00 13           4806 	.dw	0,19
      002953 00 00 29 3D           4807 	.dw	0,(Ldebug_CIE4_start-4)
      002957 00 00 9B 39           4808 	.dw	0,(Sstm8s_uart1$UART1_SetPrescaler$317)	;initial loc
      00295B 00 00 00 07           4809 	.dw	0,Sstm8s_uart1$UART1_SetPrescaler$321-Sstm8s_uart1$UART1_SetPrescaler$317
      00295F 01                    4810 	.db	1
      002960 00 00 9B 39           4811 	.dw	0,(Sstm8s_uart1$UART1_SetPrescaler$317)
      002964 0E                    4812 	.db	14
      002965 02                    4813 	.uleb128	2
                                   4814 
                                   4815 	.area .debug_frame (NOLOAD)
      002966 00 00                 4816 	.dw	0
      002968 00 0E                 4817 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      00296A                       4818 Ldebug_CIE5_start:
      00296A FF FF                 4819 	.dw	0xffff
      00296C FF FF                 4820 	.dw	0xffff
      00296E 01                    4821 	.db	1
      00296F 00                    4822 	.db	0
      002970 01                    4823 	.uleb128	1
      002971 7F                    4824 	.sleb128	-1
      002972 09                    4825 	.db	9
      002973 0C                    4826 	.db	12
      002974 08                    4827 	.uleb128	8
      002975 02                    4828 	.uleb128	2
      002976 89                    4829 	.db	137
      002977 01                    4830 	.uleb128	1
      002978                       4831 Ldebug_CIE5_end:
      002978 00 00 00 13           4832 	.dw	0,19
      00297C 00 00 29 66           4833 	.dw	0,(Ldebug_CIE5_start-4)
      002980 00 00 9B 32           4834 	.dw	0,(Sstm8s_uart1$UART1_SetGuardTime$311)	;initial loc
      002984 00 00 00 07           4835 	.dw	0,Sstm8s_uart1$UART1_SetGuardTime$315-Sstm8s_uart1$UART1_SetGuardTime$311
      002988 01                    4836 	.db	1
      002989 00 00 9B 32           4837 	.dw	0,(Sstm8s_uart1$UART1_SetGuardTime$311)
      00298D 0E                    4838 	.db	14
      00298E 02                    4839 	.uleb128	2
                                   4840 
                                   4841 	.area .debug_frame (NOLOAD)
      00298F 00 00                 4842 	.dw	0
      002991 00 0E                 4843 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      002993                       4844 Ldebug_CIE6_start:
      002993 FF FF                 4845 	.dw	0xffff
      002995 FF FF                 4846 	.dw	0xffff
      002997 01                    4847 	.db	1
      002998 00                    4848 	.db	0
      002999 01                    4849 	.uleb128	1
      00299A 7F                    4850 	.sleb128	-1
      00299B 09                    4851 	.db	9
      00299C 0C                    4852 	.db	12
      00299D 08                    4853 	.uleb128	8
      00299E 02                    4854 	.uleb128	2
      00299F 89                    4855 	.db	137
      0029A0 01                    4856 	.uleb128	1
      0029A1                       4857 Ldebug_CIE6_end:
      0029A1 00 00 00 13           4858 	.dw	0,19
      0029A5 00 00 29 8F           4859 	.dw	0,(Ldebug_CIE6_start-4)
      0029A9 00 00 9B 21           4860 	.dw	0,(Sstm8s_uart1$UART1_SetAddress$304)	;initial loc
      0029AD 00 00 00 11           4861 	.dw	0,Sstm8s_uart1$UART1_SetAddress$309-Sstm8s_uart1$UART1_SetAddress$304
      0029B1 01                    4862 	.db	1
      0029B2 00 00 9B 21           4863 	.dw	0,(Sstm8s_uart1$UART1_SetAddress$304)
      0029B6 0E                    4864 	.db	14
      0029B7 02                    4865 	.uleb128	2
                                   4866 
                                   4867 	.area .debug_frame (NOLOAD)
      0029B8 00 00                 4868 	.dw	0
      0029BA 00 0E                 4869 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      0029BC                       4870 Ldebug_CIE7_start:
      0029BC FF FF                 4871 	.dw	0xffff
      0029BE FF FF                 4872 	.dw	0xffff
      0029C0 01                    4873 	.db	1
      0029C1 00                    4874 	.db	0
      0029C2 01                    4875 	.uleb128	1
      0029C3 7F                    4876 	.sleb128	-1
      0029C4 09                    4877 	.db	9
      0029C5 0C                    4878 	.db	12
      0029C6 08                    4879 	.uleb128	8
      0029C7 02                    4880 	.uleb128	2
      0029C8 89                    4881 	.db	137
      0029C9 01                    4882 	.uleb128	1
      0029CA                       4883 Ldebug_CIE7_end:
      0029CA 00 00 00 13           4884 	.dw	0,19
      0029CE 00 00 29 B8           4885 	.dw	0,(Ldebug_CIE7_start-4)
      0029D2 00 00 9B 18           4886 	.dw	0,(Sstm8s_uart1$UART1_SendBreak$298)	;initial loc
      0029D6 00 00 00 09           4887 	.dw	0,Sstm8s_uart1$UART1_SendBreak$302-Sstm8s_uart1$UART1_SendBreak$298
      0029DA 01                    4888 	.db	1
      0029DB 00 00 9B 18           4889 	.dw	0,(Sstm8s_uart1$UART1_SendBreak$298)
      0029DF 0E                    4890 	.db	14
      0029E0 02                    4891 	.uleb128	2
                                   4892 
                                   4893 	.area .debug_frame (NOLOAD)
      0029E1 00 00                 4894 	.dw	0
      0029E3 00 0E                 4895 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      0029E5                       4896 Ldebug_CIE8_start:
      0029E5 FF FF                 4897 	.dw	0xffff
      0029E7 FF FF                 4898 	.dw	0xffff
      0029E9 01                    4899 	.db	1
      0029EA 00                    4900 	.db	0
      0029EB 01                    4901 	.uleb128	1
      0029EC 7F                    4902 	.sleb128	-1
      0029ED 09                    4903 	.db	9
      0029EE 0C                    4904 	.db	12
      0029EF 08                    4905 	.uleb128	8
      0029F0 02                    4906 	.uleb128	2
      0029F1 89                    4907 	.db	137
      0029F2 01                    4908 	.uleb128	1
      0029F3                       4909 Ldebug_CIE8_end:
      0029F3 00 00 00 21           4910 	.dw	0,33
      0029F7 00 00 29 E1           4911 	.dw	0,(Ldebug_CIE8_start-4)
      0029FB 00 00 9A F7           4912 	.dw	0,(Sstm8s_uart1$UART1_SendData9$288)	;initial loc
      0029FF 00 00 00 21           4913 	.dw	0,Sstm8s_uart1$UART1_SendData9$296-Sstm8s_uart1$UART1_SendData9$288
      002A03 01                    4914 	.db	1
      002A04 00 00 9A F7           4915 	.dw	0,(Sstm8s_uart1$UART1_SendData9$288)
      002A08 0E                    4916 	.db	14
      002A09 02                    4917 	.uleb128	2
      002A0A 01                    4918 	.db	1
      002A0B 00 00 9A F8           4919 	.dw	0,(Sstm8s_uart1$UART1_SendData9$289)
      002A0F 0E                    4920 	.db	14
      002A10 03                    4921 	.uleb128	3
      002A11 01                    4922 	.db	1
      002A12 00 00 9B 17           4923 	.dw	0,(Sstm8s_uart1$UART1_SendData9$294)
      002A16 0E                    4924 	.db	14
      002A17 02                    4925 	.uleb128	2
                                   4926 
                                   4927 	.area .debug_frame (NOLOAD)
      002A18 00 00                 4928 	.dw	0
      002A1A 00 0E                 4929 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      002A1C                       4930 Ldebug_CIE9_start:
      002A1C FF FF                 4931 	.dw	0xffff
      002A1E FF FF                 4932 	.dw	0xffff
      002A20 01                    4933 	.db	1
      002A21 00                    4934 	.db	0
      002A22 01                    4935 	.uleb128	1
      002A23 7F                    4936 	.sleb128	-1
      002A24 09                    4937 	.db	9
      002A25 0C                    4938 	.db	12
      002A26 08                    4939 	.uleb128	8
      002A27 02                    4940 	.uleb128	2
      002A28 89                    4941 	.db	137
      002A29 01                    4942 	.uleb128	1
      002A2A                       4943 Ldebug_CIE9_end:
      002A2A 00 00 00 13           4944 	.dw	0,19
      002A2E 00 00 2A 18           4945 	.dw	0,(Ldebug_CIE9_start-4)
      002A32 00 00 9A F0           4946 	.dw	0,(Sstm8s_uart1$UART1_SendData8$282)	;initial loc
      002A36 00 00 00 07           4947 	.dw	0,Sstm8s_uart1$UART1_SendData8$286-Sstm8s_uart1$UART1_SendData8$282
      002A3A 01                    4948 	.db	1
      002A3B 00 00 9A F0           4949 	.dw	0,(Sstm8s_uart1$UART1_SendData8$282)
      002A3F 0E                    4950 	.db	14
      002A40 02                    4951 	.uleb128	2
                                   4952 
                                   4953 	.area .debug_frame (NOLOAD)
      002A41 00 00                 4954 	.dw	0
      002A43 00 0E                 4955 	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
      002A45                       4956 Ldebug_CIE10_start:
      002A45 FF FF                 4957 	.dw	0xffff
      002A47 FF FF                 4958 	.dw	0xffff
      002A49 01                    4959 	.db	1
      002A4A 00                    4960 	.db	0
      002A4B 01                    4961 	.uleb128	1
      002A4C 7F                    4962 	.sleb128	-1
      002A4D 09                    4963 	.db	9
      002A4E 0C                    4964 	.db	12
      002A4F 08                    4965 	.uleb128	8
      002A50 02                    4966 	.uleb128	2
      002A51 89                    4967 	.db	137
      002A52 01                    4968 	.uleb128	1
      002A53                       4969 Ldebug_CIE10_end:
      002A53 00 00 00 21           4970 	.dw	0,33
      002A57 00 00 2A 41           4971 	.dw	0,(Ldebug_CIE10_start-4)
      002A5B 00 00 9A D3           4972 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$273)	;initial loc
      002A5F 00 00 00 1D           4973 	.dw	0,Sstm8s_uart1$UART1_ReceiveData9$280-Sstm8s_uart1$UART1_ReceiveData9$273
      002A63 01                    4974 	.db	1
      002A64 00 00 9A D3           4975 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$273)
      002A68 0E                    4976 	.db	14
      002A69 02                    4977 	.uleb128	2
      002A6A 01                    4978 	.db	1
      002A6B 00 00 9A D4           4979 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$274)
      002A6F 0E                    4980 	.db	14
      002A70 04                    4981 	.uleb128	4
      002A71 01                    4982 	.db	1
      002A72 00 00 9A EF           4983 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$278)
      002A76 0E                    4984 	.db	14
      002A77 02                    4985 	.uleb128	2
                                   4986 
                                   4987 	.area .debug_frame (NOLOAD)
      002A78 00 00                 4988 	.dw	0
      002A7A 00 0E                 4989 	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
      002A7C                       4990 Ldebug_CIE11_start:
      002A7C FF FF                 4991 	.dw	0xffff
      002A7E FF FF                 4992 	.dw	0xffff
      002A80 01                    4993 	.db	1
      002A81 00                    4994 	.db	0
      002A82 01                    4995 	.uleb128	1
      002A83 7F                    4996 	.sleb128	-1
      002A84 09                    4997 	.db	9
      002A85 0C                    4998 	.db	12
      002A86 08                    4999 	.uleb128	8
      002A87 02                    5000 	.uleb128	2
      002A88 89                    5001 	.db	137
      002A89 01                    5002 	.uleb128	1
      002A8A                       5003 Ldebug_CIE11_end:
      002A8A 00 00 00 13           5004 	.dw	0,19
      002A8E 00 00 2A 78           5005 	.dw	0,(Ldebug_CIE11_start-4)
      002A92 00 00 9A CF           5006 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$267)	;initial loc
      002A96 00 00 00 04           5007 	.dw	0,Sstm8s_uart1$UART1_ReceiveData8$271-Sstm8s_uart1$UART1_ReceiveData8$267
      002A9A 01                    5008 	.db	1
      002A9B 00 00 9A CF           5009 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$267)
      002A9F 0E                    5010 	.db	14
      002AA0 02                    5011 	.uleb128	2
                                   5012 
                                   5013 	.area .debug_frame (NOLOAD)
      002AA1 00 00                 5014 	.dw	0
      002AA3 00 0E                 5015 	.dw	Ldebug_CIE12_end-Ldebug_CIE12_start
      002AA5                       5016 Ldebug_CIE12_start:
      002AA5 FF FF                 5017 	.dw	0xffff
      002AA7 FF FF                 5018 	.dw	0xffff
      002AA9 01                    5019 	.db	1
      002AAA 00                    5020 	.db	0
      002AAB 01                    5021 	.uleb128	1
      002AAC 7F                    5022 	.sleb128	-1
      002AAD 09                    5023 	.db	9
      002AAE 0C                    5024 	.db	12
      002AAF 08                    5025 	.uleb128	8
      002AB0 02                    5026 	.uleb128	2
      002AB1 89                    5027 	.db	137
      002AB2 01                    5028 	.uleb128	1
      002AB3                       5029 Ldebug_CIE12_end:
      002AB3 00 00 00 13           5030 	.dw	0,19
      002AB7 00 00 2A A1           5031 	.dw	0,(Ldebug_CIE12_start-4)
      002ABB 00 00 9A B7           5032 	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$254)	;initial loc
      002ABF 00 00 00 18           5033 	.dw	0,Sstm8s_uart1$UART1_ReceiverWakeUpCmd$265-Sstm8s_uart1$UART1_ReceiverWakeUpCmd$254
      002AC3 01                    5034 	.db	1
      002AC4 00 00 9A B7           5035 	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$254)
      002AC8 0E                    5036 	.db	14
      002AC9 02                    5037 	.uleb128	2
                                   5038 
                                   5039 	.area .debug_frame (NOLOAD)
      002ACA 00 00                 5040 	.dw	0
      002ACC 00 0E                 5041 	.dw	Ldebug_CIE13_end-Ldebug_CIE13_start
      002ACE                       5042 Ldebug_CIE13_start:
      002ACE FF FF                 5043 	.dw	0xffff
      002AD0 FF FF                 5044 	.dw	0xffff
      002AD2 01                    5045 	.db	1
      002AD3 00                    5046 	.db	0
      002AD4 01                    5047 	.uleb128	1
      002AD5 7F                    5048 	.sleb128	-1
      002AD6 09                    5049 	.db	9
      002AD7 0C                    5050 	.db	12
      002AD8 08                    5051 	.uleb128	8
      002AD9 02                    5052 	.uleb128	2
      002ADA 89                    5053 	.db	137
      002ADB 01                    5054 	.uleb128	1
      002ADC                       5055 Ldebug_CIE13_end:
      002ADC 00 00 00 13           5056 	.dw	0,19
      002AE0 00 00 2A CA           5057 	.dw	0,(Ldebug_CIE13_start-4)
      002AE4 00 00 9A A6           5058 	.dw	0,(Sstm8s_uart1$UART1_WakeUpConfig$247)	;initial loc
      002AE8 00 00 00 11           5059 	.dw	0,Sstm8s_uart1$UART1_WakeUpConfig$252-Sstm8s_uart1$UART1_WakeUpConfig$247
      002AEC 01                    5060 	.db	1
      002AED 00 00 9A A6           5061 	.dw	0,(Sstm8s_uart1$UART1_WakeUpConfig$247)
      002AF1 0E                    5062 	.db	14
      002AF2 02                    5063 	.uleb128	2
                                   5064 
                                   5065 	.area .debug_frame (NOLOAD)
      002AF3 00 00                 5066 	.dw	0
      002AF5 00 0E                 5067 	.dw	Ldebug_CIE14_end-Ldebug_CIE14_start
      002AF7                       5068 Ldebug_CIE14_start:
      002AF7 FF FF                 5069 	.dw	0xffff
      002AF9 FF FF                 5070 	.dw	0xffff
      002AFB 01                    5071 	.db	1
      002AFC 00                    5072 	.db	0
      002AFD 01                    5073 	.uleb128	1
      002AFE 7F                    5074 	.sleb128	-1
      002AFF 09                    5075 	.db	9
      002B00 0C                    5076 	.db	12
      002B01 08                    5077 	.uleb128	8
      002B02 02                    5078 	.uleb128	2
      002B03 89                    5079 	.db	137
      002B04 01                    5080 	.uleb128	1
      002B05                       5081 Ldebug_CIE14_end:
      002B05 00 00 00 13           5082 	.dw	0,19
      002B09 00 00 2A F3           5083 	.dw	0,(Ldebug_CIE14_start-4)
      002B0D 00 00 9A 8E           5084 	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$234)	;initial loc
      002B11 00 00 00 18           5085 	.dw	0,Sstm8s_uart1$UART1_SmartCardNACKCmd$245-Sstm8s_uart1$UART1_SmartCardNACKCmd$234
      002B15 01                    5086 	.db	1
      002B16 00 00 9A 8E           5087 	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$234)
      002B1A 0E                    5088 	.db	14
      002B1B 02                    5089 	.uleb128	2
                                   5090 
                                   5091 	.area .debug_frame (NOLOAD)
      002B1C 00 00                 5092 	.dw	0
      002B1E 00 0E                 5093 	.dw	Ldebug_CIE15_end-Ldebug_CIE15_start
      002B20                       5094 Ldebug_CIE15_start:
      002B20 FF FF                 5095 	.dw	0xffff
      002B22 FF FF                 5096 	.dw	0xffff
      002B24 01                    5097 	.db	1
      002B25 00                    5098 	.db	0
      002B26 01                    5099 	.uleb128	1
      002B27 7F                    5100 	.sleb128	-1
      002B28 09                    5101 	.db	9
      002B29 0C                    5102 	.db	12
      002B2A 08                    5103 	.uleb128	8
      002B2B 02                    5104 	.uleb128	2
      002B2C 89                    5105 	.db	137
      002B2D 01                    5106 	.uleb128	1
      002B2E                       5107 Ldebug_CIE15_end:
      002B2E 00 00 00 13           5108 	.dw	0,19
      002B32 00 00 2B 1C           5109 	.dw	0,(Ldebug_CIE15_start-4)
      002B36 00 00 9A 76           5110 	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$221)	;initial loc
      002B3A 00 00 00 18           5111 	.dw	0,Sstm8s_uart1$UART1_SmartCardCmd$232-Sstm8s_uart1$UART1_SmartCardCmd$221
      002B3E 01                    5112 	.db	1
      002B3F 00 00 9A 76           5113 	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$221)
      002B43 0E                    5114 	.db	14
      002B44 02                    5115 	.uleb128	2
                                   5116 
                                   5117 	.area .debug_frame (NOLOAD)
      002B45 00 00                 5118 	.dw	0
      002B47 00 0E                 5119 	.dw	Ldebug_CIE16_end-Ldebug_CIE16_start
      002B49                       5120 Ldebug_CIE16_start:
      002B49 FF FF                 5121 	.dw	0xffff
      002B4B FF FF                 5122 	.dw	0xffff
      002B4D 01                    5123 	.db	1
      002B4E 00                    5124 	.db	0
      002B4F 01                    5125 	.uleb128	1
      002B50 7F                    5126 	.sleb128	-1
      002B51 09                    5127 	.db	9
      002B52 0C                    5128 	.db	12
      002B53 08                    5129 	.uleb128	8
      002B54 02                    5130 	.uleb128	2
      002B55 89                    5131 	.db	137
      002B56 01                    5132 	.uleb128	1
      002B57                       5133 Ldebug_CIE16_end:
      002B57 00 00 00 13           5134 	.dw	0,19
      002B5B 00 00 2B 45           5135 	.dw	0,(Ldebug_CIE16_start-4)
      002B5F 00 00 9A 5E           5136 	.dw	0,(Sstm8s_uart1$UART1_LINCmd$208)	;initial loc
      002B63 00 00 00 18           5137 	.dw	0,Sstm8s_uart1$UART1_LINCmd$219-Sstm8s_uart1$UART1_LINCmd$208
      002B67 01                    5138 	.db	1
      002B68 00 00 9A 5E           5139 	.dw	0,(Sstm8s_uart1$UART1_LINCmd$208)
      002B6C 0E                    5140 	.db	14
      002B6D 02                    5141 	.uleb128	2
                                   5142 
                                   5143 	.area .debug_frame (NOLOAD)
      002B6E 00 00                 5144 	.dw	0
      002B70 00 0E                 5145 	.dw	Ldebug_CIE17_end-Ldebug_CIE17_start
      002B72                       5146 Ldebug_CIE17_start:
      002B72 FF FF                 5147 	.dw	0xffff
      002B74 FF FF                 5148 	.dw	0xffff
      002B76 01                    5149 	.db	1
      002B77 00                    5150 	.db	0
      002B78 01                    5151 	.uleb128	1
      002B79 7F                    5152 	.sleb128	-1
      002B7A 09                    5153 	.db	9
      002B7B 0C                    5154 	.db	12
      002B7C 08                    5155 	.uleb128	8
      002B7D 02                    5156 	.uleb128	2
      002B7E 89                    5157 	.db	137
      002B7F 01                    5158 	.uleb128	1
      002B80                       5159 Ldebug_CIE17_end:
      002B80 00 00 00 13           5160 	.dw	0,19
      002B84 00 00 2B 6E           5161 	.dw	0,(Ldebug_CIE17_start-4)
      002B88 00 00 9A 46           5162 	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$195)	;initial loc
      002B8C 00 00 00 18           5163 	.dw	0,Sstm8s_uart1$UART1_LINBreakDetectionConfig$206-Sstm8s_uart1$UART1_LINBreakDetectionConfig$195
      002B90 01                    5164 	.db	1
      002B91 00 00 9A 46           5165 	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$195)
      002B95 0E                    5166 	.db	14
      002B96 02                    5167 	.uleb128	2
                                   5168 
                                   5169 	.area .debug_frame (NOLOAD)
      002B97 00 00                 5170 	.dw	0
      002B99 00 0E                 5171 	.dw	Ldebug_CIE18_end-Ldebug_CIE18_start
      002B9B                       5172 Ldebug_CIE18_start:
      002B9B FF FF                 5173 	.dw	0xffff
      002B9D FF FF                 5174 	.dw	0xffff
      002B9F 01                    5175 	.db	1
      002BA0 00                    5176 	.db	0
      002BA1 01                    5177 	.uleb128	1
      002BA2 7F                    5178 	.sleb128	-1
      002BA3 09                    5179 	.db	9
      002BA4 0C                    5180 	.db	12
      002BA5 08                    5181 	.uleb128	8
      002BA6 02                    5182 	.uleb128	2
      002BA7 89                    5183 	.db	137
      002BA8 01                    5184 	.uleb128	1
      002BA9                       5185 Ldebug_CIE18_end:
      002BA9 00 00 00 13           5186 	.dw	0,19
      002BAD 00 00 2B 97           5187 	.dw	0,(Ldebug_CIE18_start-4)
      002BB1 00 00 9A 2E           5188 	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$182)	;initial loc
      002BB5 00 00 00 18           5189 	.dw	0,Sstm8s_uart1$UART1_IrDACmd$193-Sstm8s_uart1$UART1_IrDACmd$182
      002BB9 01                    5190 	.db	1
      002BBA 00 00 9A 2E           5191 	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$182)
      002BBE 0E                    5192 	.db	14
      002BBF 02                    5193 	.uleb128	2
                                   5194 
                                   5195 	.area .debug_frame (NOLOAD)
      002BC0 00 00                 5196 	.dw	0
      002BC2 00 0E                 5197 	.dw	Ldebug_CIE19_end-Ldebug_CIE19_start
      002BC4                       5198 Ldebug_CIE19_start:
      002BC4 FF FF                 5199 	.dw	0xffff
      002BC6 FF FF                 5200 	.dw	0xffff
      002BC8 01                    5201 	.db	1
      002BC9 00                    5202 	.db	0
      002BCA 01                    5203 	.uleb128	1
      002BCB 7F                    5204 	.sleb128	-1
      002BCC 09                    5205 	.db	9
      002BCD 0C                    5206 	.db	12
      002BCE 08                    5207 	.uleb128	8
      002BCF 02                    5208 	.uleb128	2
      002BD0 89                    5209 	.db	137
      002BD1 01                    5210 	.uleb128	1
      002BD2                       5211 Ldebug_CIE19_end:
      002BD2 00 00 00 13           5212 	.dw	0,19
      002BD6 00 00 2B C0           5213 	.dw	0,(Ldebug_CIE19_start-4)
      002BDA 00 00 9A 16           5214 	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$169)	;initial loc
      002BDE 00 00 00 18           5215 	.dw	0,Sstm8s_uart1$UART1_IrDAConfig$180-Sstm8s_uart1$UART1_IrDAConfig$169
      002BE2 01                    5216 	.db	1
      002BE3 00 00 9A 16           5217 	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$169)
      002BE7 0E                    5218 	.db	14
      002BE8 02                    5219 	.uleb128	2
                                   5220 
                                   5221 	.area .debug_frame (NOLOAD)
      002BE9 00 00                 5222 	.dw	0
      002BEB 00 0E                 5223 	.dw	Ldebug_CIE20_end-Ldebug_CIE20_start
      002BED                       5224 Ldebug_CIE20_start:
      002BED FF FF                 5225 	.dw	0xffff
      002BEF FF FF                 5226 	.dw	0xffff
      002BF1 01                    5227 	.db	1
      002BF2 00                    5228 	.db	0
      002BF3 01                    5229 	.uleb128	1
      002BF4 7F                    5230 	.sleb128	-1
      002BF5 09                    5231 	.db	9
      002BF6 0C                    5232 	.db	12
      002BF7 08                    5233 	.uleb128	8
      002BF8 02                    5234 	.uleb128	2
      002BF9 89                    5235 	.db	137
      002BFA 01                    5236 	.uleb128	1
      002BFB                       5237 Ldebug_CIE20_end:
      002BFB 00 00 00 13           5238 	.dw	0,19
      002BFF 00 00 2B E9           5239 	.dw	0,(Ldebug_CIE20_start-4)
      002C03 00 00 99 FE           5240 	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$156)	;initial loc
      002C07 00 00 00 18           5241 	.dw	0,Sstm8s_uart1$UART1_HalfDuplexCmd$167-Sstm8s_uart1$UART1_HalfDuplexCmd$156
      002C0B 01                    5242 	.db	1
      002C0C 00 00 99 FE           5243 	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$156)
      002C10 0E                    5244 	.db	14
      002C11 02                    5245 	.uleb128	2
                                   5246 
                                   5247 	.area .debug_frame (NOLOAD)
      002C12 00 00                 5248 	.dw	0
      002C14 00 0E                 5249 	.dw	Ldebug_CIE21_end-Ldebug_CIE21_start
      002C16                       5250 Ldebug_CIE21_start:
      002C16 FF FF                 5251 	.dw	0xffff
      002C18 FF FF                 5252 	.dw	0xffff
      002C1A 01                    5253 	.db	1
      002C1B 00                    5254 	.db	0
      002C1C 01                    5255 	.uleb128	1
      002C1D 7F                    5256 	.sleb128	-1
      002C1E 09                    5257 	.db	9
      002C1F 0C                    5258 	.db	12
      002C20 08                    5259 	.uleb128	8
      002C21 02                    5260 	.uleb128	2
      002C22 89                    5261 	.db	137
      002C23 01                    5262 	.uleb128	1
      002C24                       5263 Ldebug_CIE21_end:
      002C24 00 00 00 4B           5264 	.dw	0,75
      002C28 00 00 2C 12           5265 	.dw	0,(Ldebug_CIE21_start-4)
      002C2C 00 00 99 6A           5266 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$113)	;initial loc
      002C30 00 00 00 94           5267 	.dw	0,Sstm8s_uart1$UART1_ITConfig$154-Sstm8s_uart1$UART1_ITConfig$113
      002C34 01                    5268 	.db	1
      002C35 00 00 99 6A           5269 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$113)
      002C39 0E                    5270 	.db	14
      002C3A 02                    5271 	.uleb128	2
      002C3B 01                    5272 	.db	1
      002C3C 00 00 99 6B           5273 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$114)
      002C40 0E                    5274 	.db	14
      002C41 04                    5275 	.uleb128	4
      002C42 01                    5276 	.db	1
      002C43 00 00 99 73           5277 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$117)
      002C47 0E                    5278 	.db	14
      002C48 05                    5279 	.uleb128	5
      002C49 01                    5280 	.db	1
      002C4A 00 00 99 78           5281 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$118)
      002C4E 0E                    5282 	.db	14
      002C4F 04                    5283 	.uleb128	4
      002C50 01                    5284 	.db	1
      002C51 00 00 99 8D           5285 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$120)
      002C55 0E                    5286 	.db	14
      002C56 04                    5287 	.uleb128	4
      002C57 01                    5288 	.db	1
      002C58 00 00 99 98           5289 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$122)
      002C5C 0E                    5290 	.db	14
      002C5D 04                    5291 	.uleb128	4
      002C5E 01                    5292 	.db	1
      002C5F 00 00 99 CE           5293 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$137)
      002C63 0E                    5294 	.db	14
      002C64 05                    5295 	.uleb128	5
      002C65 01                    5296 	.db	1
      002C66 00 00 99 D1           5297 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$138)
      002C6A 0E                    5298 	.db	14
      002C6B 04                    5299 	.uleb128	4
      002C6C 01                    5300 	.db	1
      002C6D 00 00 99 FD           5301 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$152)
      002C71 0E                    5302 	.db	14
      002C72 02                    5303 	.uleb128	2
                                   5304 
                                   5305 	.area .debug_frame (NOLOAD)
      002C73 00 00                 5306 	.dw	0
      002C75 00 0E                 5307 	.dw	Ldebug_CIE22_end-Ldebug_CIE22_start
      002C77                       5308 Ldebug_CIE22_start:
      002C77 FF FF                 5309 	.dw	0xffff
      002C79 FF FF                 5310 	.dw	0xffff
      002C7B 01                    5311 	.db	1
      002C7C 00                    5312 	.db	0
      002C7D 01                    5313 	.uleb128	1
      002C7E 7F                    5314 	.sleb128	-1
      002C7F 09                    5315 	.db	9
      002C80 0C                    5316 	.db	12
      002C81 08                    5317 	.uleb128	8
      002C82 02                    5318 	.uleb128	2
      002C83 89                    5319 	.db	137
      002C84 01                    5320 	.uleb128	1
      002C85                       5321 Ldebug_CIE22_end:
      002C85 00 00 00 13           5322 	.dw	0,19
      002C89 00 00 2C 73           5323 	.dw	0,(Ldebug_CIE22_start-4)
      002C8D 00 00 99 52           5324 	.dw	0,(Sstm8s_uart1$UART1_Cmd$100)	;initial loc
      002C91 00 00 00 18           5325 	.dw	0,Sstm8s_uart1$UART1_Cmd$111-Sstm8s_uart1$UART1_Cmd$100
      002C95 01                    5326 	.db	1
      002C96 00 00 99 52           5327 	.dw	0,(Sstm8s_uart1$UART1_Cmd$100)
      002C9A 0E                    5328 	.db	14
      002C9B 02                    5329 	.uleb128	2
                                   5330 
                                   5331 	.area .debug_frame (NOLOAD)
      002C9C 00 00                 5332 	.dw	0
      002C9E 00 0E                 5333 	.dw	Ldebug_CIE23_end-Ldebug_CIE23_start
      002CA0                       5334 Ldebug_CIE23_start:
      002CA0 FF FF                 5335 	.dw	0xffff
      002CA2 FF FF                 5336 	.dw	0xffff
      002CA4 01                    5337 	.db	1
      002CA5 00                    5338 	.db	0
      002CA6 01                    5339 	.uleb128	1
      002CA7 7F                    5340 	.sleb128	-1
      002CA8 09                    5341 	.db	9
      002CA9 0C                    5342 	.db	12
      002CAA 08                    5343 	.uleb128	8
      002CAB 02                    5344 	.uleb128	2
      002CAC 89                    5345 	.db	137
      002CAD 01                    5346 	.uleb128	1
      002CAE                       5347 Ldebug_CIE23_end:
      002CAE 00 00 01 16           5348 	.dw	0,278
      002CB2 00 00 2C 9C           5349 	.dw	0,(Ldebug_CIE23_start-4)
      002CB6 00 00 97 C3           5350 	.dw	0,(Sstm8s_uart1$UART1_Init$17)	;initial loc
      002CBA 00 00 01 8F           5351 	.dw	0,Sstm8s_uart1$UART1_Init$98-Sstm8s_uart1$UART1_Init$17
      002CBE 01                    5352 	.db	1
      002CBF 00 00 97 C3           5353 	.dw	0,(Sstm8s_uart1$UART1_Init$17)
      002CC3 0E                    5354 	.db	14
      002CC4 02                    5355 	.uleb128	2
      002CC5 01                    5356 	.db	1
      002CC6 00 00 97 C5           5357 	.dw	0,(Sstm8s_uart1$UART1_Init$18)
      002CCA 0E                    5358 	.db	14
      002CCB 13                    5359 	.uleb128	19
      002CCC 01                    5360 	.db	1
      002CCD 00 00 98 26           5361 	.dw	0,(Sstm8s_uart1$UART1_Init$29)
      002CD1 0E                    5362 	.db	14
      002CD2 15                    5363 	.uleb128	21
      002CD3 01                    5364 	.db	1
      002CD4 00 00 98 29           5365 	.dw	0,(Sstm8s_uart1$UART1_Init$30)
      002CD8 0E                    5366 	.db	14
      002CD9 17                    5367 	.uleb128	23
      002CDA 01                    5368 	.db	1
      002CDB 00 00 98 2C           5369 	.dw	0,(Sstm8s_uart1$UART1_Init$31)
      002CDF 0E                    5370 	.db	14
      002CE0 19                    5371 	.uleb128	25
      002CE1 01                    5372 	.db	1
      002CE2 00 00 98 2E           5373 	.dw	0,(Sstm8s_uart1$UART1_Init$32)
      002CE6 0E                    5374 	.db	14
      002CE7 1B                    5375 	.uleb128	27
      002CE8 01                    5376 	.db	1
      002CE9 00 00 98 33           5377 	.dw	0,(Sstm8s_uart1$UART1_Init$33)
      002CED 0E                    5378 	.db	14
      002CEE 13                    5379 	.uleb128	19
      002CEF 01                    5380 	.db	1
      002CF0 00 00 98 49           5381 	.dw	0,(Sstm8s_uart1$UART1_Init$35)
      002CF4 0E                    5382 	.db	14
      002CF5 15                    5383 	.uleb128	21
      002CF6 01                    5384 	.db	1
      002CF7 00 00 98 4C           5385 	.dw	0,(Sstm8s_uart1$UART1_Init$36)
      002CFB 0E                    5386 	.db	14
      002CFC 17                    5387 	.uleb128	23
      002CFD 01                    5388 	.db	1
      002CFE 00 00 98 4E           5389 	.dw	0,(Sstm8s_uart1$UART1_Init$37)
      002D02 0E                    5390 	.db	14
      002D03 18                    5391 	.uleb128	24
      002D04 01                    5392 	.db	1
      002D05 00 00 98 50           5393 	.dw	0,(Sstm8s_uart1$UART1_Init$38)
      002D09 0E                    5394 	.db	14
      002D0A 1A                    5395 	.uleb128	26
      002D0B 01                    5396 	.db	1
      002D0C 00 00 98 52           5397 	.dw	0,(Sstm8s_uart1$UART1_Init$39)
      002D10 0E                    5398 	.db	14
      002D11 1B                    5399 	.uleb128	27
      002D12 01                    5400 	.db	1
      002D13 00 00 98 57           5401 	.dw	0,(Sstm8s_uart1$UART1_Init$40)
      002D17 0E                    5402 	.db	14
      002D18 13                    5403 	.uleb128	19
      002D19 01                    5404 	.db	1
      002D1A 00 00 98 5C           5405 	.dw	0,(Sstm8s_uart1$UART1_Init$41)
      002D1E 0E                    5406 	.db	14
      002D1F 15                    5407 	.uleb128	21
      002D20 01                    5408 	.db	1
      002D21 00 00 98 5F           5409 	.dw	0,(Sstm8s_uart1$UART1_Init$42)
      002D25 0E                    5410 	.db	14
      002D26 17                    5411 	.uleb128	23
      002D27 01                    5412 	.db	1
      002D28 00 00 98 62           5413 	.dw	0,(Sstm8s_uart1$UART1_Init$43)
      002D2C 0E                    5414 	.db	14
      002D2D 19                    5415 	.uleb128	25
      002D2E 01                    5416 	.db	1
      002D2F 00 00 98 64           5417 	.dw	0,(Sstm8s_uart1$UART1_Init$44)
      002D33 0E                    5418 	.db	14
      002D34 1B                    5419 	.uleb128	27
      002D35 01                    5420 	.db	1
      002D36 00 00 98 69           5421 	.dw	0,(Sstm8s_uart1$UART1_Init$45)
      002D3A 0E                    5422 	.db	14
      002D3B 13                    5423 	.uleb128	19
      002D3C 01                    5424 	.db	1
      002D3D 00 00 98 75           5425 	.dw	0,(Sstm8s_uart1$UART1_Init$47)
      002D41 0E                    5426 	.db	14
      002D42 15                    5427 	.uleb128	21
      002D43 01                    5428 	.db	1
      002D44 00 00 98 78           5429 	.dw	0,(Sstm8s_uart1$UART1_Init$48)
      002D48 0E                    5430 	.db	14
      002D49 17                    5431 	.uleb128	23
      002D4A 01                    5432 	.db	1
      002D4B 00 00 98 7A           5433 	.dw	0,(Sstm8s_uart1$UART1_Init$49)
      002D4F 0E                    5434 	.db	14
      002D50 18                    5435 	.uleb128	24
      002D51 01                    5436 	.db	1
      002D52 00 00 98 7C           5437 	.dw	0,(Sstm8s_uart1$UART1_Init$50)
      002D56 0E                    5438 	.db	14
      002D57 1A                    5439 	.uleb128	26
      002D58 01                    5440 	.db	1
      002D59 00 00 98 7E           5441 	.dw	0,(Sstm8s_uart1$UART1_Init$51)
      002D5D 0E                    5442 	.db	14
      002D5E 1B                    5443 	.uleb128	27
      002D5F 01                    5444 	.db	1
      002D60 00 00 98 83           5445 	.dw	0,(Sstm8s_uart1$UART1_Init$52)
      002D64 0E                    5446 	.db	14
      002D65 13                    5447 	.uleb128	19
      002D66 01                    5448 	.db	1
      002D67 00 00 98 A8           5449 	.dw	0,(Sstm8s_uart1$UART1_Init$53)
      002D6B 0E                    5450 	.db	14
      002D6C 14                    5451 	.uleb128	20
      002D6D 01                    5452 	.db	1
      002D6E 00 00 98 AA           5453 	.dw	0,(Sstm8s_uart1$UART1_Init$54)
      002D72 0E                    5454 	.db	14
      002D73 15                    5455 	.uleb128	21
      002D74 01                    5456 	.db	1
      002D75 00 00 98 AC           5457 	.dw	0,(Sstm8s_uart1$UART1_Init$55)
      002D79 0E                    5458 	.db	14
      002D7A 16                    5459 	.uleb128	22
      002D7B 01                    5460 	.db	1
      002D7C 00 00 98 AE           5461 	.dw	0,(Sstm8s_uart1$UART1_Init$56)
      002D80 0E                    5462 	.db	14
      002D81 17                    5463 	.uleb128	23
      002D82 01                    5464 	.db	1
      002D83 00 00 98 AF           5465 	.dw	0,(Sstm8s_uart1$UART1_Init$57)
      002D87 0E                    5466 	.db	14
      002D88 19                    5467 	.uleb128	25
      002D89 01                    5468 	.db	1
      002D8A 00 00 98 B1           5469 	.dw	0,(Sstm8s_uart1$UART1_Init$58)
      002D8E 0E                    5470 	.db	14
      002D8F 1B                    5471 	.uleb128	27
      002D90 01                    5472 	.db	1
      002D91 00 00 98 B6           5473 	.dw	0,(Sstm8s_uart1$UART1_Init$59)
      002D95 0E                    5474 	.db	14
      002D96 13                    5475 	.uleb128	19
      002D97 01                    5476 	.db	1
      002D98 00 00 98 FE           5477 	.dw	0,(Sstm8s_uart1$UART1_Init$67)
      002D9C 0E                    5478 	.db	14
      002D9D 14                    5479 	.uleb128	20
      002D9E 01                    5480 	.db	1
      002D9F 00 00 99 03           5481 	.dw	0,(Sstm8s_uart1$UART1_Init$68)
      002DA3 0E                    5482 	.db	14
      002DA4 13                    5483 	.uleb128	19
      002DA5 01                    5484 	.db	1
      002DA6 00 00 99 19           5485 	.dw	0,(Sstm8s_uart1$UART1_Init$77)
      002DAA 0E                    5486 	.db	14
      002DAB 14                    5487 	.uleb128	20
      002DAC 01                    5488 	.db	1
      002DAD 00 00 99 1E           5489 	.dw	0,(Sstm8s_uart1$UART1_Init$78)
      002DB1 0E                    5490 	.db	14
      002DB2 13                    5491 	.uleb128	19
      002DB3 01                    5492 	.db	1
      002DB4 00 00 99 43           5493 	.dw	0,(Sstm8s_uart1$UART1_Init$92)
      002DB8 0E                    5494 	.db	14
      002DB9 14                    5495 	.uleb128	20
      002DBA 01                    5496 	.db	1
      002DBB 00 00 99 4A           5497 	.dw	0,(Sstm8s_uart1$UART1_Init$93)
      002DBF 0E                    5498 	.db	14
      002DC0 13                    5499 	.uleb128	19
      002DC1 01                    5500 	.db	1
      002DC2 00 00 99 51           5501 	.dw	0,(Sstm8s_uart1$UART1_Init$96)
      002DC6 0E                    5502 	.db	14
      002DC7 02                    5503 	.uleb128	2
                                   5504 
                                   5505 	.area .debug_frame (NOLOAD)
      002DC8 00 00                 5506 	.dw	0
      002DCA 00 0E                 5507 	.dw	Ldebug_CIE24_end-Ldebug_CIE24_start
      002DCC                       5508 Ldebug_CIE24_start:
      002DCC FF FF                 5509 	.dw	0xffff
      002DCE FF FF                 5510 	.dw	0xffff
      002DD0 01                    5511 	.db	1
      002DD1 00                    5512 	.db	0
      002DD2 01                    5513 	.uleb128	1
      002DD3 7F                    5514 	.sleb128	-1
      002DD4 09                    5515 	.db	9
      002DD5 0C                    5516 	.db	12
      002DD6 08                    5517 	.uleb128	8
      002DD7 02                    5518 	.uleb128	2
      002DD8 89                    5519 	.db	137
      002DD9 01                    5520 	.uleb128	1
      002DDA                       5521 Ldebug_CIE24_end:
      002DDA 00 00 00 13           5522 	.dw	0,19
      002DDE 00 00 2D C8           5523 	.dw	0,(Ldebug_CIE24_start-4)
      002DE2 00 00 97 98           5524 	.dw	0,(Sstm8s_uart1$UART1_DeInit$1)	;initial loc
      002DE6 00 00 00 2B           5525 	.dw	0,Sstm8s_uart1$UART1_DeInit$15-Sstm8s_uart1$UART1_DeInit$1
      002DEA 01                    5526 	.db	1
      002DEB 00 00 97 98           5527 	.dw	0,(Sstm8s_uart1$UART1_DeInit$1)
      002DEF 0E                    5528 	.db	14
      002DF0 02                    5529 	.uleb128	2

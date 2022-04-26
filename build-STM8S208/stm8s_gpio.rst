                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_gpio
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _GPIO_DeInit
                                     12 	.globl _GPIO_Init
                                     13 	.globl _GPIO_Write
                                     14 	.globl _GPIO_WriteHigh
                                     15 	.globl _GPIO_WriteLow
                                     16 	.globl _GPIO_WriteReverse
                                     17 	.globl _GPIO_ReadOutputData
                                     18 	.globl _GPIO_ReadInputData
                                     19 	.globl _GPIO_ReadInputPin
                                     20 	.globl _GPIO_ExternalPullUpConfig
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area DATA
                                     25 ;--------------------------------------------------------
                                     26 ; ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area INITIALIZED
                                     29 ;--------------------------------------------------------
                                     30 ; absolute external ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DABS (ABS)
                                     33 
                                     34 ; default segment ordering for linker
                                     35 	.area HOME
                                     36 	.area GSINIT
                                     37 	.area GSFINAL
                                     38 	.area CONST
                                     39 	.area INITIALIZER
                                     40 	.area CODE
                                     41 
                                     42 ;--------------------------------------------------------
                                     43 ; global & static initialisations
                                     44 ;--------------------------------------------------------
                                     45 	.area HOME
                                     46 	.area GSINIT
                                     47 	.area GSFINAL
                                     48 	.area GSINIT
                                     49 ;--------------------------------------------------------
                                     50 ; Home
                                     51 ;--------------------------------------------------------
                                     52 	.area HOME
                                     53 	.area HOME
                                     54 ;--------------------------------------------------------
                                     55 ; code
                                     56 ;--------------------------------------------------------
                                     57 	.area CODE
                           000000    58 	Sstm8s_gpio$GPIO_DeInit$0 ==.
                                     59 ;	../SPL/src/stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     60 ; genLabel
                                     61 ;	-----------------------------------------
                                     62 ;	 function GPIO_DeInit
                                     63 ;	-----------------------------------------
                                     64 ;	Register assignment might be sub-optimal.
                                     65 ;	Stack space usage: 0 bytes.
      008F65                         66 _GPIO_DeInit:
                           000000    67 	Sstm8s_gpio$GPIO_DeInit$1 ==.
                           000000    68 	Sstm8s_gpio$GPIO_DeInit$2 ==.
                                     69 ;	../SPL/src/stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
                                     70 ; genAssign
      008F65 16 03            [ 2]   71 	ldw	y, (0x03, sp)
                                     72 ; genPointerSet
      008F67 90 7F            [ 1]   73 	clr	(y)
                           000004    74 	Sstm8s_gpio$GPIO_DeInit$3 ==.
                                     75 ;	../SPL/src/stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
                                     76 ; genPlus
      008F69 93               [ 1]   77 	ldw	x, y
      008F6A 5C               [ 1]   78 	incw	x
      008F6B 5C               [ 1]   79 	incw	x
                                     80 ; genPointerSet
      008F6C 7F               [ 1]   81 	clr	(x)
                           000008    82 	Sstm8s_gpio$GPIO_DeInit$4 ==.
                                     83 ;	../SPL/src/stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
                                     84 ; genPlus
      008F6D 93               [ 1]   85 	ldw	x, y
      008F6E 1C 00 03         [ 2]   86 	addw	x, #0x0003
                                     87 ; genPointerSet
      008F71 7F               [ 1]   88 	clr	(x)
                           00000D    89 	Sstm8s_gpio$GPIO_DeInit$5 ==.
                                     90 ;	../SPL/src/stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
                                     91 ; genPlus
      008F72 93               [ 1]   92 	ldw	x, y
      008F73 1C 00 04         [ 2]   93 	addw	x, #0x0004
                                     94 ; genPointerSet
      008F76 7F               [ 1]   95 	clr	(x)
                                     96 ; genLabel
      008F77                         97 00101$:
                           000012    98 	Sstm8s_gpio$GPIO_DeInit$6 ==.
                                     99 ;	../SPL/src/stm8s_gpio.c: 59: }
                                    100 ; genEndFunction
                           000012   101 	Sstm8s_gpio$GPIO_DeInit$7 ==.
                           000012   102 	XG$GPIO_DeInit$0$0 ==.
      008F77 81               [ 4]  103 	ret
                           000013   104 	Sstm8s_gpio$GPIO_DeInit$8 ==.
                           000013   105 	Sstm8s_gpio$GPIO_Init$9 ==.
                                    106 ;	../SPL/src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                    107 ; genLabel
                                    108 ;	-----------------------------------------
                                    109 ;	 function GPIO_Init
                                    110 ;	-----------------------------------------
                                    111 ;	Register assignment might be sub-optimal.
                                    112 ;	Stack space usage: 5 bytes.
      008F78                        113 _GPIO_Init:
                           000013   114 	Sstm8s_gpio$GPIO_Init$10 ==.
      008F78 52 05            [ 2]  115 	sub	sp, #5
                           000015   116 	Sstm8s_gpio$GPIO_Init$11 ==.
                           000015   117 	Sstm8s_gpio$GPIO_Init$12 ==.
                                    118 ;	../SPL/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    119 ; genAssign
      008F7A 16 08            [ 2]  120 	ldw	y, (0x08, sp)
                                    121 ; genPlus
      008F7C 93               [ 1]  122 	ldw	x, y
      008F7D 1C 00 04         [ 2]  123 	addw	x, #0x0004
      008F80 1F 01            [ 2]  124 	ldw	(0x01, sp), x
                                    125 ; genPointerGet
      008F82 1E 01            [ 2]  126 	ldw	x, (0x01, sp)
      008F84 F6               [ 1]  127 	ld	a, (x)
                                    128 ; genCpl
      008F85 88               [ 1]  129 	push	a
                           000021   130 	Sstm8s_gpio$GPIO_Init$13 ==.
      008F86 7B 0B            [ 1]  131 	ld	a, (0x0b, sp)
      008F88 43               [ 1]  132 	cpl	a
      008F89 6B 04            [ 1]  133 	ld	(0x04, sp), a
      008F8B 84               [ 1]  134 	pop	a
                           000027   135 	Sstm8s_gpio$GPIO_Init$14 ==.
                                    136 ; genAnd
      008F8C 14 03            [ 1]  137 	and	a, (0x03, sp)
                                    138 ; genPointerSet
      008F8E 1E 01            [ 2]  139 	ldw	x, (0x01, sp)
      008F90 F7               [ 1]  140 	ld	(x), a
                           00002C   141 	Sstm8s_gpio$GPIO_Init$15 ==.
                                    142 ;	../SPL/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
                                    143 ; genPlus
      008F91 93               [ 1]  144 	ldw	x, y
      008F92 5C               [ 1]  145 	incw	x
      008F93 5C               [ 1]  146 	incw	x
      008F94 1F 04            [ 2]  147 	ldw	(0x04, sp), x
                           000031   148 	Sstm8s_gpio$GPIO_Init$16 ==.
                                    149 ;	../SPL/src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
                                    150 ; genAnd
      008F96 0D 0B            [ 1]  151 	tnz	(0x0b, sp)
      008F98 2B 03            [ 1]  152 	jrmi	00135$
      008F9A CC 8F C0         [ 2]  153 	jp	00105$
      008F9D                        154 00135$:
                                    155 ; skipping generated iCode
                           000038   156 	Sstm8s_gpio$GPIO_Init$17 ==.
                                    157 ;	../SPL/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
                                    158 ; genPointerGet
      008F9D 90 F6            [ 1]  159 	ld	a, (y)
                           00003A   160 	Sstm8s_gpio$GPIO_Init$18 ==.
                           00003A   161 	Sstm8s_gpio$GPIO_Init$19 ==.
                                    162 ;	../SPL/src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
                                    163 ; genAnd
      008F9F 88               [ 1]  164 	push	a
                           00003B   165 	Sstm8s_gpio$GPIO_Init$20 ==.
      008FA0 7B 0C            [ 1]  166 	ld	a, (0x0c, sp)
      008FA2 A5 10            [ 1]  167 	bcp	a, #0x10
      008FA4 84               [ 1]  168 	pop	a
                           000040   169 	Sstm8s_gpio$GPIO_Init$21 ==.
      008FA5 26 03            [ 1]  170 	jrne	00136$
      008FA7 CC 8F B1         [ 2]  171 	jp	00102$
      008FAA                        172 00136$:
                                    173 ; skipping generated iCode
                           000045   174 	Sstm8s_gpio$GPIO_Init$22 ==.
                           000045   175 	Sstm8s_gpio$GPIO_Init$23 ==.
                                    176 ;	../SPL/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
                                    177 ; genOr
      008FAA 1A 0A            [ 1]  178 	or	a, (0x0a, sp)
                                    179 ; genPointerSet
      008FAC 90 F7            [ 1]  180 	ld	(y), a
                           000049   181 	Sstm8s_gpio$GPIO_Init$24 ==.
                                    182 ; genGoto
      008FAE CC 8F B5         [ 2]  183 	jp	00103$
                                    184 ; genLabel
      008FB1                        185 00102$:
                           00004C   186 	Sstm8s_gpio$GPIO_Init$25 ==.
                           00004C   187 	Sstm8s_gpio$GPIO_Init$26 ==.
                                    188 ;	../SPL/src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
                                    189 ; genAnd
      008FB1 14 03            [ 1]  190 	and	a, (0x03, sp)
                                    191 ; genPointerSet
      008FB3 90 F7            [ 1]  192 	ld	(y), a
                           000050   193 	Sstm8s_gpio$GPIO_Init$27 ==.
                                    194 ; genLabel
      008FB5                        195 00103$:
                           000050   196 	Sstm8s_gpio$GPIO_Init$28 ==.
                                    197 ;	../SPL/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
                                    198 ; genPointerGet
      008FB5 1E 04            [ 2]  199 	ldw	x, (0x04, sp)
      008FB7 F6               [ 1]  200 	ld	a, (x)
                                    201 ; genOr
      008FB8 1A 0A            [ 1]  202 	or	a, (0x0a, sp)
                                    203 ; genPointerSet
      008FBA 1E 04            [ 2]  204 	ldw	x, (0x04, sp)
      008FBC F7               [ 1]  205 	ld	(x), a
                           000058   206 	Sstm8s_gpio$GPIO_Init$29 ==.
                                    207 ; genGoto
      008FBD CC 8F C8         [ 2]  208 	jp	00106$
                                    209 ; genLabel
      008FC0                        210 00105$:
                           00005B   211 	Sstm8s_gpio$GPIO_Init$30 ==.
                           00005B   212 	Sstm8s_gpio$GPIO_Init$31 ==.
                                    213 ;	../SPL/src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
                                    214 ; genPointerGet
      008FC0 1E 04            [ 2]  215 	ldw	x, (0x04, sp)
      008FC2 F6               [ 1]  216 	ld	a, (x)
                                    217 ; genAnd
      008FC3 14 03            [ 1]  218 	and	a, (0x03, sp)
                                    219 ; genPointerSet
      008FC5 1E 04            [ 2]  220 	ldw	x, (0x04, sp)
      008FC7 F7               [ 1]  221 	ld	(x), a
                           000063   222 	Sstm8s_gpio$GPIO_Init$32 ==.
                                    223 ; genLabel
      008FC8                        224 00106$:
                           000063   225 	Sstm8s_gpio$GPIO_Init$33 ==.
                                    226 ;	../SPL/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    227 ; genPlus
      008FC8 93               [ 1]  228 	ldw	x, y
      008FC9 1C 00 03         [ 2]  229 	addw	x, #0x0003
                                    230 ; genPointerGet
      008FCC F6               [ 1]  231 	ld	a, (x)
                           000068   232 	Sstm8s_gpio$GPIO_Init$34 ==.
                                    233 ;	../SPL/src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
                                    234 ; genAnd
      008FCD 88               [ 1]  235 	push	a
                           000069   236 	Sstm8s_gpio$GPIO_Init$35 ==.
      008FCE 7B 0C            [ 1]  237 	ld	a, (0x0c, sp)
      008FD0 A5 40            [ 1]  238 	bcp	a, #0x40
      008FD2 84               [ 1]  239 	pop	a
                           00006E   240 	Sstm8s_gpio$GPIO_Init$36 ==.
      008FD3 26 03            [ 1]  241 	jrne	00137$
      008FD5 CC 8F DE         [ 2]  242 	jp	00108$
      008FD8                        243 00137$:
                                    244 ; skipping generated iCode
                           000073   245 	Sstm8s_gpio$GPIO_Init$37 ==.
                           000073   246 	Sstm8s_gpio$GPIO_Init$38 ==.
                                    247 ;	../SPL/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    248 ; genOr
      008FD8 1A 0A            [ 1]  249 	or	a, (0x0a, sp)
                                    250 ; genPointerSet
      008FDA F7               [ 1]  251 	ld	(x), a
                           000076   252 	Sstm8s_gpio$GPIO_Init$39 ==.
                                    253 ; genGoto
      008FDB CC 8F E1         [ 2]  254 	jp	00109$
                                    255 ; genLabel
      008FDE                        256 00108$:
                           000079   257 	Sstm8s_gpio$GPIO_Init$40 ==.
                           000079   258 	Sstm8s_gpio$GPIO_Init$41 ==.
                                    259 ;	../SPL/src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
                                    260 ; genAnd
      008FDE 14 03            [ 1]  261 	and	a, (0x03, sp)
                                    262 ; genPointerSet
      008FE0 F7               [ 1]  263 	ld	(x), a
                           00007C   264 	Sstm8s_gpio$GPIO_Init$42 ==.
                                    265 ; genLabel
      008FE1                        266 00109$:
                           00007C   267 	Sstm8s_gpio$GPIO_Init$43 ==.
                                    268 ;	../SPL/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    269 ; genPointerGet
      008FE1 1E 01            [ 2]  270 	ldw	x, (0x01, sp)
      008FE3 F6               [ 1]  271 	ld	a, (x)
                           00007F   272 	Sstm8s_gpio$GPIO_Init$44 ==.
                                    273 ;	../SPL/src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
                                    274 ; genAnd
      008FE4 88               [ 1]  275 	push	a
                           000080   276 	Sstm8s_gpio$GPIO_Init$45 ==.
      008FE5 7B 0C            [ 1]  277 	ld	a, (0x0c, sp)
      008FE7 A5 20            [ 1]  278 	bcp	a, #0x20
      008FE9 84               [ 1]  279 	pop	a
                           000085   280 	Sstm8s_gpio$GPIO_Init$46 ==.
      008FEA 26 03            [ 1]  281 	jrne	00138$
      008FEC CC 8F F7         [ 2]  282 	jp	00111$
      008FEF                        283 00138$:
                                    284 ; skipping generated iCode
                           00008A   285 	Sstm8s_gpio$GPIO_Init$47 ==.
                           00008A   286 	Sstm8s_gpio$GPIO_Init$48 ==.
                                    287 ;	../SPL/src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
                                    288 ; genOr
      008FEF 1A 0A            [ 1]  289 	or	a, (0x0a, sp)
                                    290 ; genPointerSet
      008FF1 1E 01            [ 2]  291 	ldw	x, (0x01, sp)
      008FF3 F7               [ 1]  292 	ld	(x), a
                           00008F   293 	Sstm8s_gpio$GPIO_Init$49 ==.
                                    294 ; genGoto
      008FF4 CC 8F FC         [ 2]  295 	jp	00113$
                                    296 ; genLabel
      008FF7                        297 00111$:
                           000092   298 	Sstm8s_gpio$GPIO_Init$50 ==.
                           000092   299 	Sstm8s_gpio$GPIO_Init$51 ==.
                                    300 ;	../SPL/src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    301 ; genAnd
      008FF7 14 03            [ 1]  302 	and	a, (0x03, sp)
                                    303 ; genPointerSet
      008FF9 1E 01            [ 2]  304 	ldw	x, (0x01, sp)
      008FFB F7               [ 1]  305 	ld	(x), a
                           000097   306 	Sstm8s_gpio$GPIO_Init$52 ==.
                                    307 ; genLabel
      008FFC                        308 00113$:
                           000097   309 	Sstm8s_gpio$GPIO_Init$53 ==.
                                    310 ;	../SPL/src/stm8s_gpio.c: 131: }
                                    311 ; genEndFunction
      008FFC 5B 05            [ 2]  312 	addw	sp, #5
                           000099   313 	Sstm8s_gpio$GPIO_Init$54 ==.
                           000099   314 	Sstm8s_gpio$GPIO_Init$55 ==.
                           000099   315 	XG$GPIO_Init$0$0 ==.
      008FFE 81               [ 4]  316 	ret
                           00009A   317 	Sstm8s_gpio$GPIO_Init$56 ==.
                           00009A   318 	Sstm8s_gpio$GPIO_Write$57 ==.
                                    319 ;	../SPL/src/stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    320 ; genLabel
                                    321 ;	-----------------------------------------
                                    322 ;	 function GPIO_Write
                                    323 ;	-----------------------------------------
                                    324 ;	Register assignment is optimal.
                                    325 ;	Stack space usage: 0 bytes.
      008FFF                        326 _GPIO_Write:
                           00009A   327 	Sstm8s_gpio$GPIO_Write$58 ==.
                           00009A   328 	Sstm8s_gpio$GPIO_Write$59 ==.
                                    329 ;	../SPL/src/stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
                                    330 ; genAssign
      008FFF 1E 03            [ 2]  331 	ldw	x, (0x03, sp)
                                    332 ; genPointerSet
      009001 7B 05            [ 1]  333 	ld	a, (0x05, sp)
      009003 F7               [ 1]  334 	ld	(x), a
                                    335 ; genLabel
      009004                        336 00101$:
                           00009F   337 	Sstm8s_gpio$GPIO_Write$60 ==.
                                    338 ;	../SPL/src/stm8s_gpio.c: 144: }
                                    339 ; genEndFunction
                           00009F   340 	Sstm8s_gpio$GPIO_Write$61 ==.
                           00009F   341 	XG$GPIO_Write$0$0 ==.
      009004 81               [ 4]  342 	ret
                           0000A0   343 	Sstm8s_gpio$GPIO_Write$62 ==.
                           0000A0   344 	Sstm8s_gpio$GPIO_WriteHigh$63 ==.
                                    345 ;	../SPL/src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    346 ; genLabel
                                    347 ;	-----------------------------------------
                                    348 ;	 function GPIO_WriteHigh
                                    349 ;	-----------------------------------------
                                    350 ;	Register assignment is optimal.
                                    351 ;	Stack space usage: 0 bytes.
      009005                        352 _GPIO_WriteHigh:
                           0000A0   353 	Sstm8s_gpio$GPIO_WriteHigh$64 ==.
                           0000A0   354 	Sstm8s_gpio$GPIO_WriteHigh$65 ==.
                                    355 ;	../SPL/src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
                                    356 ; genAssign
      009005 1E 03            [ 2]  357 	ldw	x, (0x03, sp)
                                    358 ; genPointerGet
      009007 F6               [ 1]  359 	ld	a, (x)
                                    360 ; genOr
      009008 1A 05            [ 1]  361 	or	a, (0x05, sp)
                                    362 ; genPointerSet
      00900A F7               [ 1]  363 	ld	(x), a
                                    364 ; genLabel
      00900B                        365 00101$:
                           0000A6   366 	Sstm8s_gpio$GPIO_WriteHigh$66 ==.
                                    367 ;	../SPL/src/stm8s_gpio.c: 157: }
                                    368 ; genEndFunction
                           0000A6   369 	Sstm8s_gpio$GPIO_WriteHigh$67 ==.
                           0000A6   370 	XG$GPIO_WriteHigh$0$0 ==.
      00900B 81               [ 4]  371 	ret
                           0000A7   372 	Sstm8s_gpio$GPIO_WriteHigh$68 ==.
                           0000A7   373 	Sstm8s_gpio$GPIO_WriteLow$69 ==.
                                    374 ;	../SPL/src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    375 ; genLabel
                                    376 ;	-----------------------------------------
                                    377 ;	 function GPIO_WriteLow
                                    378 ;	-----------------------------------------
                                    379 ;	Register assignment is optimal.
                                    380 ;	Stack space usage: 1 bytes.
      00900C                        381 _GPIO_WriteLow:
                           0000A7   382 	Sstm8s_gpio$GPIO_WriteLow$70 ==.
      00900C 88               [ 1]  383 	push	a
                           0000A8   384 	Sstm8s_gpio$GPIO_WriteLow$71 ==.
                           0000A8   385 	Sstm8s_gpio$GPIO_WriteLow$72 ==.
                                    386 ;	../SPL/src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
                                    387 ; genAssign
      00900D 1E 04            [ 2]  388 	ldw	x, (0x04, sp)
                                    389 ; genPointerGet
      00900F F6               [ 1]  390 	ld	a, (x)
      009010 6B 01            [ 1]  391 	ld	(0x01, sp), a
                                    392 ; genCpl
      009012 7B 06            [ 1]  393 	ld	a, (0x06, sp)
      009014 43               [ 1]  394 	cpl	a
                                    395 ; genAnd
      009015 14 01            [ 1]  396 	and	a, (0x01, sp)
                                    397 ; genPointerSet
      009017 F7               [ 1]  398 	ld	(x), a
                                    399 ; genLabel
      009018                        400 00101$:
                           0000B3   401 	Sstm8s_gpio$GPIO_WriteLow$73 ==.
                                    402 ;	../SPL/src/stm8s_gpio.c: 170: }
                                    403 ; genEndFunction
      009018 84               [ 1]  404 	pop	a
                           0000B4   405 	Sstm8s_gpio$GPIO_WriteLow$74 ==.
                           0000B4   406 	Sstm8s_gpio$GPIO_WriteLow$75 ==.
                           0000B4   407 	XG$GPIO_WriteLow$0$0 ==.
      009019 81               [ 4]  408 	ret
                           0000B5   409 	Sstm8s_gpio$GPIO_WriteLow$76 ==.
                           0000B5   410 	Sstm8s_gpio$GPIO_WriteReverse$77 ==.
                                    411 ;	../SPL/src/stm8s_gpio.c: 180: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    412 ; genLabel
                                    413 ;	-----------------------------------------
                                    414 ;	 function GPIO_WriteReverse
                                    415 ;	-----------------------------------------
                                    416 ;	Register assignment is optimal.
                                    417 ;	Stack space usage: 0 bytes.
      00901A                        418 _GPIO_WriteReverse:
                           0000B5   419 	Sstm8s_gpio$GPIO_WriteReverse$78 ==.
                           0000B5   420 	Sstm8s_gpio$GPIO_WriteReverse$79 ==.
                                    421 ;	../SPL/src/stm8s_gpio.c: 182: GPIOx->ODR ^= (uint8_t)PortPins;
                                    422 ; genAssign
      00901A 1E 03            [ 2]  423 	ldw	x, (0x03, sp)
                                    424 ; genPointerGet
      00901C F6               [ 1]  425 	ld	a, (x)
                                    426 ; genXor
      00901D 18 05            [ 1]  427 	xor	a, (0x05, sp)
                                    428 ; genPointerSet
      00901F F7               [ 1]  429 	ld	(x), a
                                    430 ; genLabel
      009020                        431 00101$:
                           0000BB   432 	Sstm8s_gpio$GPIO_WriteReverse$80 ==.
                                    433 ;	../SPL/src/stm8s_gpio.c: 183: }
                                    434 ; genEndFunction
                           0000BB   435 	Sstm8s_gpio$GPIO_WriteReverse$81 ==.
                           0000BB   436 	XG$GPIO_WriteReverse$0$0 ==.
      009020 81               [ 4]  437 	ret
                           0000BC   438 	Sstm8s_gpio$GPIO_WriteReverse$82 ==.
                           0000BC   439 	Sstm8s_gpio$GPIO_ReadOutputData$83 ==.
                                    440 ;	../SPL/src/stm8s_gpio.c: 191: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    441 ; genLabel
                                    442 ;	-----------------------------------------
                                    443 ;	 function GPIO_ReadOutputData
                                    444 ;	-----------------------------------------
                                    445 ;	Register assignment is optimal.
                                    446 ;	Stack space usage: 0 bytes.
      009021                        447 _GPIO_ReadOutputData:
                           0000BC   448 	Sstm8s_gpio$GPIO_ReadOutputData$84 ==.
                           0000BC   449 	Sstm8s_gpio$GPIO_ReadOutputData$85 ==.
                                    450 ;	../SPL/src/stm8s_gpio.c: 193: return ((uint8_t)GPIOx->ODR);
                                    451 ; genAssign
      009021 1E 03            [ 2]  452 	ldw	x, (0x03, sp)
                                    453 ; genPointerGet
      009023 F6               [ 1]  454 	ld	a, (x)
                                    455 ; genReturn
                                    456 ; genLabel
      009024                        457 00101$:
                           0000BF   458 	Sstm8s_gpio$GPIO_ReadOutputData$86 ==.
                                    459 ;	../SPL/src/stm8s_gpio.c: 194: }
                                    460 ; genEndFunction
                           0000BF   461 	Sstm8s_gpio$GPIO_ReadOutputData$87 ==.
                           0000BF   462 	XG$GPIO_ReadOutputData$0$0 ==.
      009024 81               [ 4]  463 	ret
                           0000C0   464 	Sstm8s_gpio$GPIO_ReadOutputData$88 ==.
                           0000C0   465 	Sstm8s_gpio$GPIO_ReadInputData$89 ==.
                                    466 ;	../SPL/src/stm8s_gpio.c: 202: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    467 ; genLabel
                                    468 ;	-----------------------------------------
                                    469 ;	 function GPIO_ReadInputData
                                    470 ;	-----------------------------------------
                                    471 ;	Register assignment might be sub-optimal.
                                    472 ;	Stack space usage: 0 bytes.
      009025                        473 _GPIO_ReadInputData:
                           0000C0   474 	Sstm8s_gpio$GPIO_ReadInputData$90 ==.
                           0000C0   475 	Sstm8s_gpio$GPIO_ReadInputData$91 ==.
                                    476 ;	../SPL/src/stm8s_gpio.c: 204: return ((uint8_t)GPIOx->IDR);
                                    477 ; genAssign
      009025 1E 03            [ 2]  478 	ldw	x, (0x03, sp)
                                    479 ; genAssign
                                    480 ; genPointerGet
      009027 E6 01            [ 1]  481 	ld	a, (0x1, x)
                                    482 ; genReturn
                                    483 ; genLabel
      009029                        484 00101$:
                           0000C4   485 	Sstm8s_gpio$GPIO_ReadInputData$92 ==.
                                    486 ;	../SPL/src/stm8s_gpio.c: 205: }
                                    487 ; genEndFunction
                           0000C4   488 	Sstm8s_gpio$GPIO_ReadInputData$93 ==.
                           0000C4   489 	XG$GPIO_ReadInputData$0$0 ==.
      009029 81               [ 4]  490 	ret
                           0000C5   491 	Sstm8s_gpio$GPIO_ReadInputData$94 ==.
                           0000C5   492 	Sstm8s_gpio$GPIO_ReadInputPin$95 ==.
                                    493 ;	../SPL/src/stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    494 ; genLabel
                                    495 ;	-----------------------------------------
                                    496 ;	 function GPIO_ReadInputPin
                                    497 ;	-----------------------------------------
                                    498 ;	Register assignment might be sub-optimal.
                                    499 ;	Stack space usage: 0 bytes.
      00902A                        500 _GPIO_ReadInputPin:
                           0000C5   501 	Sstm8s_gpio$GPIO_ReadInputPin$96 ==.
                           0000C5   502 	Sstm8s_gpio$GPIO_ReadInputPin$97 ==.
                                    503 ;	../SPL/src/stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
                                    504 ; genAssign
      00902A 1E 03            [ 2]  505 	ldw	x, (0x03, sp)
                                    506 ; genAssign
                                    507 ; genPointerGet
      00902C E6 01            [ 1]  508 	ld	a, (0x1, x)
                                    509 ; genAnd
      00902E 14 05            [ 1]  510 	and	a, (0x05, sp)
                                    511 ; genReturn
                                    512 ; genLabel
      009030                        513 00101$:
                           0000CB   514 	Sstm8s_gpio$GPIO_ReadInputPin$98 ==.
                                    515 ;	../SPL/src/stm8s_gpio.c: 216: }
                                    516 ; genEndFunction
                           0000CB   517 	Sstm8s_gpio$GPIO_ReadInputPin$99 ==.
                           0000CB   518 	XG$GPIO_ReadInputPin$0$0 ==.
      009030 81               [ 4]  519 	ret
                           0000CC   520 	Sstm8s_gpio$GPIO_ReadInputPin$100 ==.
                           0000CC   521 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$101 ==.
                                    522 ;	../SPL/src/stm8s_gpio.c: 225: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
                                    523 ; genLabel
                                    524 ;	-----------------------------------------
                                    525 ;	 function GPIO_ExternalPullUpConfig
                                    526 ;	-----------------------------------------
                                    527 ;	Register assignment might be sub-optimal.
                                    528 ;	Stack space usage: 1 bytes.
      009031                        529 _GPIO_ExternalPullUpConfig:
                           0000CC   530 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$102 ==.
      009031 88               [ 1]  531 	push	a
                           0000CD   532 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$103 ==.
                           0000CD   533 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$104 ==.
                                    534 ;	../SPL/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    535 ; genAssign
      009032 1E 04            [ 2]  536 	ldw	x, (0x04, sp)
                                    537 ; genPlus
      009034 1C 00 03         [ 2]  538 	addw	x, #0x0003
                                    539 ; genPointerGet
      009037 F6               [ 1]  540 	ld	a, (x)
                           0000D3   541 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$105 ==.
                                    542 ;	../SPL/src/stm8s_gpio.c: 231: if (NewState != DISABLE) /* External Pull-Up Set*/
                                    543 ; genIfx
      009038 0D 07            [ 1]  544 	tnz	(0x07, sp)
      00903A 26 03            [ 1]  545 	jrne	00111$
      00903C CC 90 45         [ 2]  546 	jp	00102$
      00903F                        547 00111$:
                           0000DA   548 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$106 ==.
                           0000DA   549 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$107 ==.
                                    550 ;	../SPL/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    551 ; genOr
      00903F 1A 06            [ 1]  552 	or	a, (0x06, sp)
                                    553 ; genPointerSet
      009041 F7               [ 1]  554 	ld	(x), a
                           0000DD   555 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$108 ==.
                                    556 ; genGoto
      009042 CC 90 4F         [ 2]  557 	jp	00104$
                                    558 ; genLabel
      009045                        559 00102$:
                           0000E0   560 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$109 ==.
                           0000E0   561 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$110 ==.
                                    562 ;	../SPL/src/stm8s_gpio.c: 236: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
                                    563 ; genCpl
      009045 88               [ 1]  564 	push	a
                           0000E1   565 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$111 ==.
      009046 7B 07            [ 1]  566 	ld	a, (0x07, sp)
      009048 43               [ 1]  567 	cpl	a
      009049 6B 02            [ 1]  568 	ld	(0x02, sp), a
      00904B 84               [ 1]  569 	pop	a
                           0000E7   570 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$112 ==.
                                    571 ; genAnd
      00904C 14 01            [ 1]  572 	and	a, (0x01, sp)
                                    573 ; genPointerSet
      00904E F7               [ 1]  574 	ld	(x), a
                           0000EA   575 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$113 ==.
                                    576 ; genLabel
      00904F                        577 00104$:
                           0000EA   578 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$114 ==.
                                    579 ;	../SPL/src/stm8s_gpio.c: 238: }
                                    580 ; genEndFunction
      00904F 84               [ 1]  581 	pop	a
                           0000EB   582 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$115 ==.
                           0000EB   583 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$116 ==.
                           0000EB   584 	XG$GPIO_ExternalPullUpConfig$0$0 ==.
      009050 81               [ 4]  585 	ret
                           0000EC   586 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$117 ==.
                                    587 	.area CODE
                                    588 	.area CONST
                                    589 	.area INITIALIZER
                                    590 	.area CABS (ABS)
                                    591 
                                    592 	.area .debug_line (NOLOAD)
      0014A6 00 00 02 23            593 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0014AA                        594 Ldebug_line_start:
      0014AA 00 02                  595 	.dw	2
      0014AC 00 00 00 78            596 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0014B0 01                     597 	.db	1
      0014B1 01                     598 	.db	1
      0014B2 FB                     599 	.db	-5
      0014B3 0F                     600 	.db	15
      0014B4 0A                     601 	.db	10
      0014B5 00                     602 	.db	0
      0014B6 01                     603 	.db	1
      0014B7 01                     604 	.db	1
      0014B8 01                     605 	.db	1
      0014B9 01                     606 	.db	1
      0014BA 00                     607 	.db	0
      0014BB 00                     608 	.db	0
      0014BC 00                     609 	.db	0
      0014BD 01                     610 	.db	1
      0014BE 43 3A 5C 50 72 6F 67   611 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      0014E6 00                     612 	.db	0
      0014E7 43 3A 5C 50 72 6F 67   613 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      00150A 00                     614 	.db	0
      00150B 00                     615 	.db	0
      00150C 2E 2E 2F 53 50 4C 2F   616 	.ascii "../SPL/src/stm8s_gpio.c"
             73 72 63 2F 73 74 6D
             38 73 5F 67 70 69 6F
             2E 63
      001523 00                     617 	.db	0
      001524 00                     618 	.uleb128	0
      001525 00                     619 	.uleb128	0
      001526 00                     620 	.uleb128	0
      001527 00                     621 	.db	0
      001528                        622 Ldebug_line_stmt:
      001528 00                     623 	.db	0
      001529 05                     624 	.uleb128	5
      00152A 02                     625 	.db	2
      00152B 00 00 8F 65            626 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$0)
      00152F 03                     627 	.db	3
      001530 34                     628 	.sleb128	52
      001531 01                     629 	.db	1
      001532 09                     630 	.db	9
      001533 00 00                  631 	.dw	Sstm8s_gpio$GPIO_DeInit$2-Sstm8s_gpio$GPIO_DeInit$0
      001535 03                     632 	.db	3
      001536 02                     633 	.sleb128	2
      001537 01                     634 	.db	1
      001538 09                     635 	.db	9
      001539 00 04                  636 	.dw	Sstm8s_gpio$GPIO_DeInit$3-Sstm8s_gpio$GPIO_DeInit$2
      00153B 03                     637 	.db	3
      00153C 01                     638 	.sleb128	1
      00153D 01                     639 	.db	1
      00153E 09                     640 	.db	9
      00153F 00 04                  641 	.dw	Sstm8s_gpio$GPIO_DeInit$4-Sstm8s_gpio$GPIO_DeInit$3
      001541 03                     642 	.db	3
      001542 01                     643 	.sleb128	1
      001543 01                     644 	.db	1
      001544 09                     645 	.db	9
      001545 00 05                  646 	.dw	Sstm8s_gpio$GPIO_DeInit$5-Sstm8s_gpio$GPIO_DeInit$4
      001547 03                     647 	.db	3
      001548 01                     648 	.sleb128	1
      001549 01                     649 	.db	1
      00154A 09                     650 	.db	9
      00154B 00 05                  651 	.dw	Sstm8s_gpio$GPIO_DeInit$6-Sstm8s_gpio$GPIO_DeInit$5
      00154D 03                     652 	.db	3
      00154E 01                     653 	.sleb128	1
      00154F 01                     654 	.db	1
      001550 09                     655 	.db	9
      001551 00 01                  656 	.dw	1+Sstm8s_gpio$GPIO_DeInit$7-Sstm8s_gpio$GPIO_DeInit$6
      001553 00                     657 	.db	0
      001554 01                     658 	.uleb128	1
      001555 01                     659 	.db	1
      001556 00                     660 	.db	0
      001557 05                     661 	.uleb128	5
      001558 02                     662 	.db	2
      001559 00 00 8F 78            663 	.dw	0,(Sstm8s_gpio$GPIO_Init$9)
      00155D 03                     664 	.db	3
      00155E C6 00                  665 	.sleb128	70
      001560 01                     666 	.db	1
      001561 09                     667 	.db	9
      001562 00 02                  668 	.dw	Sstm8s_gpio$GPIO_Init$12-Sstm8s_gpio$GPIO_Init$9
      001564 03                     669 	.db	3
      001565 0A                     670 	.sleb128	10
      001566 01                     671 	.db	1
      001567 09                     672 	.db	9
      001568 00 17                  673 	.dw	Sstm8s_gpio$GPIO_Init$15-Sstm8s_gpio$GPIO_Init$12
      00156A 03                     674 	.db	3
      00156B 11                     675 	.sleb128	17
      00156C 01                     676 	.db	1
      00156D 09                     677 	.db	9
      00156E 00 05                  678 	.dw	Sstm8s_gpio$GPIO_Init$16-Sstm8s_gpio$GPIO_Init$15
      001570 03                     679 	.db	3
      001571 75                     680 	.sleb128	-11
      001572 01                     681 	.db	1
      001573 09                     682 	.db	9
      001574 00 07                  683 	.dw	Sstm8s_gpio$GPIO_Init$17-Sstm8s_gpio$GPIO_Init$16
      001576 03                     684 	.db	3
      001577 04                     685 	.sleb128	4
      001578 01                     686 	.db	1
      001579 09                     687 	.db	9
      00157A 00 02                  688 	.dw	Sstm8s_gpio$GPIO_Init$19-Sstm8s_gpio$GPIO_Init$17
      00157C 03                     689 	.db	3
      00157D 7E                     690 	.sleb128	-2
      00157E 01                     691 	.db	1
      00157F 09                     692 	.db	9
      001580 00 0B                  693 	.dw	Sstm8s_gpio$GPIO_Init$23-Sstm8s_gpio$GPIO_Init$19
      001582 03                     694 	.db	3
      001583 02                     695 	.sleb128	2
      001584 01                     696 	.db	1
      001585 09                     697 	.db	9
      001586 00 07                  698 	.dw	Sstm8s_gpio$GPIO_Init$26-Sstm8s_gpio$GPIO_Init$23
      001588 03                     699 	.db	3
      001589 04                     700 	.sleb128	4
      00158A 01                     701 	.db	1
      00158B 09                     702 	.db	9
      00158C 00 04                  703 	.dw	Sstm8s_gpio$GPIO_Init$28-Sstm8s_gpio$GPIO_Init$26
      00158E 03                     704 	.db	3
      00158F 03                     705 	.sleb128	3
      001590 01                     706 	.db	1
      001591 09                     707 	.db	9
      001592 00 0B                  708 	.dw	Sstm8s_gpio$GPIO_Init$31-Sstm8s_gpio$GPIO_Init$28
      001594 03                     709 	.db	3
      001595 05                     710 	.sleb128	5
      001596 01                     711 	.db	1
      001597 09                     712 	.db	9
      001598 00 08                  713 	.dw	Sstm8s_gpio$GPIO_Init$33-Sstm8s_gpio$GPIO_Init$31
      00159A 03                     714 	.db	3
      00159B 09                     715 	.sleb128	9
      00159C 01                     716 	.db	1
      00159D 09                     717 	.db	9
      00159E 00 05                  718 	.dw	Sstm8s_gpio$GPIO_Init$34-Sstm8s_gpio$GPIO_Init$33
      0015A0 03                     719 	.db	3
      0015A1 7E                     720 	.sleb128	-2
      0015A2 01                     721 	.db	1
      0015A3 09                     722 	.db	9
      0015A4 00 0B                  723 	.dw	Sstm8s_gpio$GPIO_Init$38-Sstm8s_gpio$GPIO_Init$34
      0015A6 03                     724 	.db	3
      0015A7 02                     725 	.sleb128	2
      0015A8 01                     726 	.db	1
      0015A9 09                     727 	.db	9
      0015AA 00 06                  728 	.dw	Sstm8s_gpio$GPIO_Init$41-Sstm8s_gpio$GPIO_Init$38
      0015AC 03                     729 	.db	3
      0015AD 04                     730 	.sleb128	4
      0015AE 01                     731 	.db	1
      0015AF 09                     732 	.db	9
      0015B0 00 03                  733 	.dw	Sstm8s_gpio$GPIO_Init$43-Sstm8s_gpio$GPIO_Init$41
      0015B2 03                     734 	.db	3
      0015B3 5D                     735 	.sleb128	-35
      0015B4 01                     736 	.db	1
      0015B5 09                     737 	.db	9
      0015B6 00 03                  738 	.dw	Sstm8s_gpio$GPIO_Init$44-Sstm8s_gpio$GPIO_Init$43
      0015B8 03                     739 	.db	3
      0015B9 2A                     740 	.sleb128	42
      0015BA 01                     741 	.db	1
      0015BB 09                     742 	.db	9
      0015BC 00 0B                  743 	.dw	Sstm8s_gpio$GPIO_Init$48-Sstm8s_gpio$GPIO_Init$44
      0015BE 03                     744 	.db	3
      0015BF 02                     745 	.sleb128	2
      0015C0 01                     746 	.db	1
      0015C1 09                     747 	.db	9
      0015C2 00 08                  748 	.dw	Sstm8s_gpio$GPIO_Init$51-Sstm8s_gpio$GPIO_Init$48
      0015C4 03                     749 	.db	3
      0015C5 04                     750 	.sleb128	4
      0015C6 01                     751 	.db	1
      0015C7 09                     752 	.db	9
      0015C8 00 05                  753 	.dw	Sstm8s_gpio$GPIO_Init$53-Sstm8s_gpio$GPIO_Init$51
      0015CA 03                     754 	.db	3
      0015CB 02                     755 	.sleb128	2
      0015CC 01                     756 	.db	1
      0015CD 09                     757 	.db	9
      0015CE 00 03                  758 	.dw	1+Sstm8s_gpio$GPIO_Init$55-Sstm8s_gpio$GPIO_Init$53
      0015D0 00                     759 	.db	0
      0015D1 01                     760 	.uleb128	1
      0015D2 01                     761 	.db	1
      0015D3 00                     762 	.db	0
      0015D4 05                     763 	.uleb128	5
      0015D5 02                     764 	.db	2
      0015D6 00 00 8F FF            765 	.dw	0,(Sstm8s_gpio$GPIO_Write$57)
      0015DA 03                     766 	.db	3
      0015DB 8C 01                  767 	.sleb128	140
      0015DD 01                     768 	.db	1
      0015DE 09                     769 	.db	9
      0015DF 00 00                  770 	.dw	Sstm8s_gpio$GPIO_Write$59-Sstm8s_gpio$GPIO_Write$57
      0015E1 03                     771 	.db	3
      0015E2 02                     772 	.sleb128	2
      0015E3 01                     773 	.db	1
      0015E4 09                     774 	.db	9
      0015E5 00 05                  775 	.dw	Sstm8s_gpio$GPIO_Write$60-Sstm8s_gpio$GPIO_Write$59
      0015E7 03                     776 	.db	3
      0015E8 01                     777 	.sleb128	1
      0015E9 01                     778 	.db	1
      0015EA 09                     779 	.db	9
      0015EB 00 01                  780 	.dw	1+Sstm8s_gpio$GPIO_Write$61-Sstm8s_gpio$GPIO_Write$60
      0015ED 00                     781 	.db	0
      0015EE 01                     782 	.uleb128	1
      0015EF 01                     783 	.db	1
      0015F0 00                     784 	.db	0
      0015F1 05                     785 	.uleb128	5
      0015F2 02                     786 	.db	2
      0015F3 00 00 90 05            787 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$63)
      0015F7 03                     788 	.db	3
      0015F8 99 01                  789 	.sleb128	153
      0015FA 01                     790 	.db	1
      0015FB 09                     791 	.db	9
      0015FC 00 00                  792 	.dw	Sstm8s_gpio$GPIO_WriteHigh$65-Sstm8s_gpio$GPIO_WriteHigh$63
      0015FE 03                     793 	.db	3
      0015FF 02                     794 	.sleb128	2
      001600 01                     795 	.db	1
      001601 09                     796 	.db	9
      001602 00 06                  797 	.dw	Sstm8s_gpio$GPIO_WriteHigh$66-Sstm8s_gpio$GPIO_WriteHigh$65
      001604 03                     798 	.db	3
      001605 01                     799 	.sleb128	1
      001606 01                     800 	.db	1
      001607 09                     801 	.db	9
      001608 00 01                  802 	.dw	1+Sstm8s_gpio$GPIO_WriteHigh$67-Sstm8s_gpio$GPIO_WriteHigh$66
      00160A 00                     803 	.db	0
      00160B 01                     804 	.uleb128	1
      00160C 01                     805 	.db	1
      00160D 00                     806 	.db	0
      00160E 05                     807 	.uleb128	5
      00160F 02                     808 	.db	2
      001610 00 00 90 0C            809 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$69)
      001614 03                     810 	.db	3
      001615 A6 01                  811 	.sleb128	166
      001617 01                     812 	.db	1
      001618 09                     813 	.db	9
      001619 00 01                  814 	.dw	Sstm8s_gpio$GPIO_WriteLow$72-Sstm8s_gpio$GPIO_WriteLow$69
      00161B 03                     815 	.db	3
      00161C 02                     816 	.sleb128	2
      00161D 01                     817 	.db	1
      00161E 09                     818 	.db	9
      00161F 00 0B                  819 	.dw	Sstm8s_gpio$GPIO_WriteLow$73-Sstm8s_gpio$GPIO_WriteLow$72
      001621 03                     820 	.db	3
      001622 01                     821 	.sleb128	1
      001623 01                     822 	.db	1
      001624 09                     823 	.db	9
      001625 00 02                  824 	.dw	1+Sstm8s_gpio$GPIO_WriteLow$75-Sstm8s_gpio$GPIO_WriteLow$73
      001627 00                     825 	.db	0
      001628 01                     826 	.uleb128	1
      001629 01                     827 	.db	1
      00162A 00                     828 	.db	0
      00162B 05                     829 	.uleb128	5
      00162C 02                     830 	.db	2
      00162D 00 00 90 1A            831 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$77)
      001631 03                     832 	.db	3
      001632 B3 01                  833 	.sleb128	179
      001634 01                     834 	.db	1
      001635 09                     835 	.db	9
      001636 00 00                  836 	.dw	Sstm8s_gpio$GPIO_WriteReverse$79-Sstm8s_gpio$GPIO_WriteReverse$77
      001638 03                     837 	.db	3
      001639 02                     838 	.sleb128	2
      00163A 01                     839 	.db	1
      00163B 09                     840 	.db	9
      00163C 00 06                  841 	.dw	Sstm8s_gpio$GPIO_WriteReverse$80-Sstm8s_gpio$GPIO_WriteReverse$79
      00163E 03                     842 	.db	3
      00163F 01                     843 	.sleb128	1
      001640 01                     844 	.db	1
      001641 09                     845 	.db	9
      001642 00 01                  846 	.dw	1+Sstm8s_gpio$GPIO_WriteReverse$81-Sstm8s_gpio$GPIO_WriteReverse$80
      001644 00                     847 	.db	0
      001645 01                     848 	.uleb128	1
      001646 01                     849 	.db	1
      001647 00                     850 	.db	0
      001648 05                     851 	.uleb128	5
      001649 02                     852 	.db	2
      00164A 00 00 90 21            853 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$83)
      00164E 03                     854 	.db	3
      00164F BE 01                  855 	.sleb128	190
      001651 01                     856 	.db	1
      001652 09                     857 	.db	9
      001653 00 00                  858 	.dw	Sstm8s_gpio$GPIO_ReadOutputData$85-Sstm8s_gpio$GPIO_ReadOutputData$83
      001655 03                     859 	.db	3
      001656 02                     860 	.sleb128	2
      001657 01                     861 	.db	1
      001658 09                     862 	.db	9
      001659 00 03                  863 	.dw	Sstm8s_gpio$GPIO_ReadOutputData$86-Sstm8s_gpio$GPIO_ReadOutputData$85
      00165B 03                     864 	.db	3
      00165C 01                     865 	.sleb128	1
      00165D 01                     866 	.db	1
      00165E 09                     867 	.db	9
      00165F 00 01                  868 	.dw	1+Sstm8s_gpio$GPIO_ReadOutputData$87-Sstm8s_gpio$GPIO_ReadOutputData$86
      001661 00                     869 	.db	0
      001662 01                     870 	.uleb128	1
      001663 01                     871 	.db	1
      001664 00                     872 	.db	0
      001665 05                     873 	.uleb128	5
      001666 02                     874 	.db	2
      001667 00 00 90 25            875 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$89)
      00166B 03                     876 	.db	3
      00166C C9 01                  877 	.sleb128	201
      00166E 01                     878 	.db	1
      00166F 09                     879 	.db	9
      001670 00 00                  880 	.dw	Sstm8s_gpio$GPIO_ReadInputData$91-Sstm8s_gpio$GPIO_ReadInputData$89
      001672 03                     881 	.db	3
      001673 02                     882 	.sleb128	2
      001674 01                     883 	.db	1
      001675 09                     884 	.db	9
      001676 00 04                  885 	.dw	Sstm8s_gpio$GPIO_ReadInputData$92-Sstm8s_gpio$GPIO_ReadInputData$91
      001678 03                     886 	.db	3
      001679 01                     887 	.sleb128	1
      00167A 01                     888 	.db	1
      00167B 09                     889 	.db	9
      00167C 00 01                  890 	.dw	1+Sstm8s_gpio$GPIO_ReadInputData$93-Sstm8s_gpio$GPIO_ReadInputData$92
      00167E 00                     891 	.db	0
      00167F 01                     892 	.uleb128	1
      001680 01                     893 	.db	1
      001681 00                     894 	.db	0
      001682 05                     895 	.uleb128	5
      001683 02                     896 	.db	2
      001684 00 00 90 2A            897 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$95)
      001688 03                     898 	.db	3
      001689 D4 01                  899 	.sleb128	212
      00168B 01                     900 	.db	1
      00168C 09                     901 	.db	9
      00168D 00 00                  902 	.dw	Sstm8s_gpio$GPIO_ReadInputPin$97-Sstm8s_gpio$GPIO_ReadInputPin$95
      00168F 03                     903 	.db	3
      001690 02                     904 	.sleb128	2
      001691 01                     905 	.db	1
      001692 09                     906 	.db	9
      001693 00 06                  907 	.dw	Sstm8s_gpio$GPIO_ReadInputPin$98-Sstm8s_gpio$GPIO_ReadInputPin$97
      001695 03                     908 	.db	3
      001696 01                     909 	.sleb128	1
      001697 01                     910 	.db	1
      001698 09                     911 	.db	9
      001699 00 01                  912 	.dw	1+Sstm8s_gpio$GPIO_ReadInputPin$99-Sstm8s_gpio$GPIO_ReadInputPin$98
      00169B 00                     913 	.db	0
      00169C 01                     914 	.uleb128	1
      00169D 01                     915 	.db	1
      00169E 00                     916 	.db	0
      00169F 05                     917 	.uleb128	5
      0016A0 02                     918 	.db	2
      0016A1 00 00 90 31            919 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$101)
      0016A5 03                     920 	.db	3
      0016A6 E0 01                  921 	.sleb128	224
      0016A8 01                     922 	.db	1
      0016A9 09                     923 	.db	9
      0016AA 00 01                  924 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$104-Sstm8s_gpio$GPIO_ExternalPullUpConfig$101
      0016AC 03                     925 	.db	3
      0016AD 08                     926 	.sleb128	8
      0016AE 01                     927 	.db	1
      0016AF 09                     928 	.db	9
      0016B0 00 06                  929 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$105-Sstm8s_gpio$GPIO_ExternalPullUpConfig$104
      0016B2 03                     930 	.db	3
      0016B3 7E                     931 	.sleb128	-2
      0016B4 01                     932 	.db	1
      0016B5 09                     933 	.db	9
      0016B6 00 07                  934 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$107-Sstm8s_gpio$GPIO_ExternalPullUpConfig$105
      0016B8 03                     935 	.db	3
      0016B9 02                     936 	.sleb128	2
      0016BA 01                     937 	.db	1
      0016BB 09                     938 	.db	9
      0016BC 00 06                  939 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$110-Sstm8s_gpio$GPIO_ExternalPullUpConfig$107
      0016BE 03                     940 	.db	3
      0016BF 03                     941 	.sleb128	3
      0016C0 01                     942 	.db	1
      0016C1 09                     943 	.db	9
      0016C2 00 0A                  944 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$114-Sstm8s_gpio$GPIO_ExternalPullUpConfig$110
      0016C4 03                     945 	.db	3
      0016C5 02                     946 	.sleb128	2
      0016C6 01                     947 	.db	1
      0016C7 09                     948 	.db	9
      0016C8 00 02                  949 	.dw	1+Sstm8s_gpio$GPIO_ExternalPullUpConfig$116-Sstm8s_gpio$GPIO_ExternalPullUpConfig$114
      0016CA 00                     950 	.db	0
      0016CB 01                     951 	.uleb128	1
      0016CC 01                     952 	.db	1
      0016CD                        953 Ldebug_line_end:
                                    954 
                                    955 	.area .debug_loc (NOLOAD)
      002418                        956 Ldebug_loc_start:
      002418 00 00 90 50            957 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$115)
      00241C 00 00 90 51            958 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$117)
      002420 00 02                  959 	.dw	2
      002422 78                     960 	.db	120
      002423 01                     961 	.sleb128	1
      002424 00 00 90 4C            962 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$112)
      002428 00 00 90 50            963 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$115)
      00242C 00 02                  964 	.dw	2
      00242E 78                     965 	.db	120
      00242F 02                     966 	.sleb128	2
      002430 00 00 90 46            967 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$111)
      002434 00 00 90 4C            968 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$112)
      002438 00 02                  969 	.dw	2
      00243A 78                     970 	.db	120
      00243B 03                     971 	.sleb128	3
      00243C 00 00 90 32            972 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$103)
      002440 00 00 90 46            973 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$111)
      002444 00 02                  974 	.dw	2
      002446 78                     975 	.db	120
      002447 02                     976 	.sleb128	2
      002448 00 00 90 31            977 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$102)
      00244C 00 00 90 32            978 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$103)
      002450 00 02                  979 	.dw	2
      002452 78                     980 	.db	120
      002453 01                     981 	.sleb128	1
      002454 00 00 00 00            982 	.dw	0,0
      002458 00 00 00 00            983 	.dw	0,0
      00245C 00 00 90 2A            984 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$96)
      002460 00 00 90 31            985 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$100)
      002464 00 02                  986 	.dw	2
      002466 78                     987 	.db	120
      002467 01                     988 	.sleb128	1
      002468 00 00 00 00            989 	.dw	0,0
      00246C 00 00 00 00            990 	.dw	0,0
      002470 00 00 90 25            991 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$90)
      002474 00 00 90 2A            992 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$94)
      002478 00 02                  993 	.dw	2
      00247A 78                     994 	.db	120
      00247B 01                     995 	.sleb128	1
      00247C 00 00 00 00            996 	.dw	0,0
      002480 00 00 00 00            997 	.dw	0,0
      002484 00 00 90 21            998 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$84)
      002488 00 00 90 25            999 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$88)
      00248C 00 02                 1000 	.dw	2
      00248E 78                    1001 	.db	120
      00248F 01                    1002 	.sleb128	1
      002490 00 00 00 00           1003 	.dw	0,0
      002494 00 00 00 00           1004 	.dw	0,0
      002498 00 00 90 1A           1005 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$78)
      00249C 00 00 90 21           1006 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$82)
      0024A0 00 02                 1007 	.dw	2
      0024A2 78                    1008 	.db	120
      0024A3 01                    1009 	.sleb128	1
      0024A4 00 00 00 00           1010 	.dw	0,0
      0024A8 00 00 00 00           1011 	.dw	0,0
      0024AC 00 00 90 19           1012 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$74)
      0024B0 00 00 90 1A           1013 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$76)
      0024B4 00 02                 1014 	.dw	2
      0024B6 78                    1015 	.db	120
      0024B7 01                    1016 	.sleb128	1
      0024B8 00 00 90 0D           1017 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$71)
      0024BC 00 00 90 19           1018 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$74)
      0024C0 00 02                 1019 	.dw	2
      0024C2 78                    1020 	.db	120
      0024C3 02                    1021 	.sleb128	2
      0024C4 00 00 90 0C           1022 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$70)
      0024C8 00 00 90 0D           1023 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$71)
      0024CC 00 02                 1024 	.dw	2
      0024CE 78                    1025 	.db	120
      0024CF 01                    1026 	.sleb128	1
      0024D0 00 00 00 00           1027 	.dw	0,0
      0024D4 00 00 00 00           1028 	.dw	0,0
      0024D8 00 00 90 05           1029 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$64)
      0024DC 00 00 90 0C           1030 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$68)
      0024E0 00 02                 1031 	.dw	2
      0024E2 78                    1032 	.db	120
      0024E3 01                    1033 	.sleb128	1
      0024E4 00 00 00 00           1034 	.dw	0,0
      0024E8 00 00 00 00           1035 	.dw	0,0
      0024EC 00 00 8F FF           1036 	.dw	0,(Sstm8s_gpio$GPIO_Write$58)
      0024F0 00 00 90 05           1037 	.dw	0,(Sstm8s_gpio$GPIO_Write$62)
      0024F4 00 02                 1038 	.dw	2
      0024F6 78                    1039 	.db	120
      0024F7 01                    1040 	.sleb128	1
      0024F8 00 00 00 00           1041 	.dw	0,0
      0024FC 00 00 00 00           1042 	.dw	0,0
      002500 00 00 8F FE           1043 	.dw	0,(Sstm8s_gpio$GPIO_Init$54)
      002504 00 00 8F FF           1044 	.dw	0,(Sstm8s_gpio$GPIO_Init$56)
      002508 00 02                 1045 	.dw	2
      00250A 78                    1046 	.db	120
      00250B 01                    1047 	.sleb128	1
      00250C 00 00 8F EA           1048 	.dw	0,(Sstm8s_gpio$GPIO_Init$46)
      002510 00 00 8F FE           1049 	.dw	0,(Sstm8s_gpio$GPIO_Init$54)
      002514 00 02                 1050 	.dw	2
      002516 78                    1051 	.db	120
      002517 06                    1052 	.sleb128	6
      002518 00 00 8F E5           1053 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      00251C 00 00 8F EA           1054 	.dw	0,(Sstm8s_gpio$GPIO_Init$46)
      002520 00 02                 1055 	.dw	2
      002522 78                    1056 	.db	120
      002523 07                    1057 	.sleb128	7
      002524 00 00 8F D3           1058 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      002528 00 00 8F E5           1059 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      00252C 00 02                 1060 	.dw	2
      00252E 78                    1061 	.db	120
      00252F 06                    1062 	.sleb128	6
      002530 00 00 8F CE           1063 	.dw	0,(Sstm8s_gpio$GPIO_Init$35)
      002534 00 00 8F D3           1064 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      002538 00 02                 1065 	.dw	2
      00253A 78                    1066 	.db	120
      00253B 07                    1067 	.sleb128	7
      00253C 00 00 8F A5           1068 	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
      002540 00 00 8F CE           1069 	.dw	0,(Sstm8s_gpio$GPIO_Init$35)
      002544 00 02                 1070 	.dw	2
      002546 78                    1071 	.db	120
      002547 06                    1072 	.sleb128	6
      002548 00 00 8F A0           1073 	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
      00254C 00 00 8F A5           1074 	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
      002550 00 02                 1075 	.dw	2
      002552 78                    1076 	.db	120
      002553 07                    1077 	.sleb128	7
      002554 00 00 8F 8C           1078 	.dw	0,(Sstm8s_gpio$GPIO_Init$14)
      002558 00 00 8F A0           1079 	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
      00255C 00 02                 1080 	.dw	2
      00255E 78                    1081 	.db	120
      00255F 06                    1082 	.sleb128	6
      002560 00 00 8F 86           1083 	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
      002564 00 00 8F 8C           1084 	.dw	0,(Sstm8s_gpio$GPIO_Init$14)
      002568 00 02                 1085 	.dw	2
      00256A 78                    1086 	.db	120
      00256B 07                    1087 	.sleb128	7
      00256C 00 00 8F 7A           1088 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      002570 00 00 8F 86           1089 	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
      002574 00 02                 1090 	.dw	2
      002576 78                    1091 	.db	120
      002577 06                    1092 	.sleb128	6
      002578 00 00 8F 78           1093 	.dw	0,(Sstm8s_gpio$GPIO_Init$10)
      00257C 00 00 8F 7A           1094 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      002580 00 02                 1095 	.dw	2
      002582 78                    1096 	.db	120
      002583 01                    1097 	.sleb128	1
      002584 00 00 00 00           1098 	.dw	0,0
      002588 00 00 00 00           1099 	.dw	0,0
      00258C 00 00 8F 65           1100 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)
      002590 00 00 8F 78           1101 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$8)
      002594 00 02                 1102 	.dw	2
      002596 78                    1103 	.db	120
      002597 01                    1104 	.sleb128	1
      002598 00 00 00 00           1105 	.dw	0,0
      00259C 00 00 00 00           1106 	.dw	0,0
                                   1107 
                                   1108 	.area .debug_abbrev (NOLOAD)
      0003CE                       1109 Ldebug_abbrev:
      0003CE 06                    1110 	.uleb128	6
      0003CF 0F                    1111 	.uleb128	15
      0003D0 00                    1112 	.db	0
      0003D1 0B                    1113 	.uleb128	11
      0003D2 0B                    1114 	.uleb128	11
      0003D3 49                    1115 	.uleb128	73
      0003D4 13                    1116 	.uleb128	19
      0003D5 00                    1117 	.uleb128	0
      0003D6 00                    1118 	.uleb128	0
      0003D7 04                    1119 	.uleb128	4
      0003D8 35                    1120 	.uleb128	53
      0003D9 00                    1121 	.db	0
      0003DA 49                    1122 	.uleb128	73
      0003DB 13                    1123 	.uleb128	19
      0003DC 00                    1124 	.uleb128	0
      0003DD 00                    1125 	.uleb128	0
      0003DE 07                    1126 	.uleb128	7
      0003DF 05                    1127 	.uleb128	5
      0003E0 00                    1128 	.db	0
      0003E1 02                    1129 	.uleb128	2
      0003E2 0A                    1130 	.uleb128	10
      0003E3 03                    1131 	.uleb128	3
      0003E4 08                    1132 	.uleb128	8
      0003E5 49                    1133 	.uleb128	73
      0003E6 13                    1134 	.uleb128	19
      0003E7 00                    1135 	.uleb128	0
      0003E8 00                    1136 	.uleb128	0
      0003E9 02                    1137 	.uleb128	2
      0003EA 2E                    1138 	.uleb128	46
      0003EB 01                    1139 	.db	1
      0003EC 01                    1140 	.uleb128	1
      0003ED 13                    1141 	.uleb128	19
      0003EE 03                    1142 	.uleb128	3
      0003EF 08                    1143 	.uleb128	8
      0003F0 11                    1144 	.uleb128	17
      0003F1 01                    1145 	.uleb128	1
      0003F2 12                    1146 	.uleb128	18
      0003F3 01                    1147 	.uleb128	1
      0003F4 3F                    1148 	.uleb128	63
      0003F5 0C                    1149 	.uleb128	12
      0003F6 40                    1150 	.uleb128	64
      0003F7 06                    1151 	.uleb128	6
      0003F8 00                    1152 	.uleb128	0
      0003F9 00                    1153 	.uleb128	0
      0003FA 0B                    1154 	.uleb128	11
      0003FB 2E                    1155 	.uleb128	46
      0003FC 01                    1156 	.db	1
      0003FD 01                    1157 	.uleb128	1
      0003FE 13                    1158 	.uleb128	19
      0003FF 03                    1159 	.uleb128	3
      000400 08                    1160 	.uleb128	8
      000401 11                    1161 	.uleb128	17
      000402 01                    1162 	.uleb128	1
      000403 12                    1163 	.uleb128	18
      000404 01                    1164 	.uleb128	1
      000405 3F                    1165 	.uleb128	63
      000406 0C                    1166 	.uleb128	12
      000407 40                    1167 	.uleb128	64
      000408 06                    1168 	.uleb128	6
      000409 49                    1169 	.uleb128	73
      00040A 13                    1170 	.uleb128	19
      00040B 00                    1171 	.uleb128	0
      00040C 00                    1172 	.uleb128	0
      00040D 01                    1173 	.uleb128	1
      00040E 11                    1174 	.uleb128	17
      00040F 01                    1175 	.db	1
      000410 03                    1176 	.uleb128	3
      000411 08                    1177 	.uleb128	8
      000412 10                    1178 	.uleb128	16
      000413 06                    1179 	.uleb128	6
      000414 13                    1180 	.uleb128	19
      000415 0B                    1181 	.uleb128	11
      000416 25                    1182 	.uleb128	37
      000417 08                    1183 	.uleb128	8
      000418 00                    1184 	.uleb128	0
      000419 00                    1185 	.uleb128	0
      00041A 05                    1186 	.uleb128	5
      00041B 0D                    1187 	.uleb128	13
      00041C 00                    1188 	.db	0
      00041D 03                    1189 	.uleb128	3
      00041E 08                    1190 	.uleb128	8
      00041F 38                    1191 	.uleb128	56
      000420 0A                    1192 	.uleb128	10
      000421 49                    1193 	.uleb128	73
      000422 13                    1194 	.uleb128	19
      000423 00                    1195 	.uleb128	0
      000424 00                    1196 	.uleb128	0
      000425 0A                    1197 	.uleb128	10
      000426 0B                    1198 	.uleb128	11
      000427 00                    1199 	.db	0
      000428 11                    1200 	.uleb128	17
      000429 01                    1201 	.uleb128	1
      00042A 12                    1202 	.uleb128	18
      00042B 01                    1203 	.uleb128	1
      00042C 00                    1204 	.uleb128	0
      00042D 00                    1205 	.uleb128	0
      00042E 0C                    1206 	.uleb128	12
      00042F 2E                    1207 	.uleb128	46
      000430 01                    1208 	.db	1
      000431 03                    1209 	.uleb128	3
      000432 08                    1210 	.uleb128	8
      000433 11                    1211 	.uleb128	17
      000434 01                    1212 	.uleb128	1
      000435 12                    1213 	.uleb128	18
      000436 01                    1214 	.uleb128	1
      000437 3F                    1215 	.uleb128	63
      000438 0C                    1216 	.uleb128	12
      000439 40                    1217 	.uleb128	64
      00043A 06                    1218 	.uleb128	6
      00043B 00                    1219 	.uleb128	0
      00043C 00                    1220 	.uleb128	0
      00043D 09                    1221 	.uleb128	9
      00043E 0B                    1222 	.uleb128	11
      00043F 01                    1223 	.db	1
      000440 01                    1224 	.uleb128	1
      000441 13                    1225 	.uleb128	19
      000442 11                    1226 	.uleb128	17
      000443 01                    1227 	.uleb128	1
      000444 12                    1228 	.uleb128	18
      000445 01                    1229 	.uleb128	1
      000446 00                    1230 	.uleb128	0
      000447 00                    1231 	.uleb128	0
      000448 03                    1232 	.uleb128	3
      000449 13                    1233 	.uleb128	19
      00044A 01                    1234 	.db	1
      00044B 01                    1235 	.uleb128	1
      00044C 13                    1236 	.uleb128	19
      00044D 03                    1237 	.uleb128	3
      00044E 08                    1238 	.uleb128	8
      00044F 0B                    1239 	.uleb128	11
      000450 0B                    1240 	.uleb128	11
      000451 00                    1241 	.uleb128	0
      000452 00                    1242 	.uleb128	0
      000453 08                    1243 	.uleb128	8
      000454 24                    1244 	.uleb128	36
      000455 00                    1245 	.db	0
      000456 03                    1246 	.uleb128	3
      000457 08                    1247 	.uleb128	8
      000458 0B                    1248 	.uleb128	11
      000459 0B                    1249 	.uleb128	11
      00045A 3E                    1250 	.uleb128	62
      00045B 0B                    1251 	.uleb128	11
      00045C 00                    1252 	.uleb128	0
      00045D 00                    1253 	.uleb128	0
      00045E 00                    1254 	.uleb128	0
                                   1255 
                                   1256 	.area .debug_info (NOLOAD)
      0023B4 00 00 03 AB           1257 	.dw	0,Ldebug_info_end-Ldebug_info_start
      0023B8                       1258 Ldebug_info_start:
      0023B8 00 02                 1259 	.dw	2
      0023BA 00 00 03 CE           1260 	.dw	0,(Ldebug_abbrev)
      0023BE 04                    1261 	.db	4
      0023BF 01                    1262 	.uleb128	1
      0023C0 2E 2E 2F 53 50 4C 2F  1263 	.ascii "../SPL/src/stm8s_gpio.c"
             73 72 63 2F 73 74 6D
             38 73 5F 67 70 69 6F
             2E 63
      0023D7 00                    1264 	.db	0
      0023D8 00 00 14 A6           1265 	.dw	0,(Ldebug_line_start+-4)
      0023DC 01                    1266 	.db	1
      0023DD 53 44 43 43 20 76 65  1267 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      0023F6 00                    1268 	.db	0
      0023F7 02                    1269 	.uleb128	2
      0023F8 00 00 00 CA           1270 	.dw	0,202
      0023FC 47 50 49 4F 5F 44 65  1271 	.ascii "GPIO_DeInit"
             49 6E 69 74
      002407 00                    1272 	.db	0
      002408 00 00 8F 65           1273 	.dw	0,(_GPIO_DeInit)
      00240C 00 00 8F 78           1274 	.dw	0,(XG$GPIO_DeInit$0$0+1)
      002410 01                    1275 	.db	1
      002411 00 00 25 8C           1276 	.dw	0,(Ldebug_loc_start+372)
      002415 03                    1277 	.uleb128	3
      002416 00 00 00 B5           1278 	.dw	0,181
      00241A 47 50 49 4F 5F 73 74  1279 	.ascii "GPIO_struct"
             72 75 63 74
      002425 00                    1280 	.db	0
      002426 05                    1281 	.db	5
      002427 04                    1282 	.uleb128	4
      002428 00 00 00 CA           1283 	.dw	0,202
      00242C 05                    1284 	.uleb128	5
      00242D 4F 44 52              1285 	.ascii "ODR"
      002430 00                    1286 	.db	0
      002431 02                    1287 	.db	2
      002432 23                    1288 	.db	35
      002433 00                    1289 	.uleb128	0
      002434 00 00 00 73           1290 	.dw	0,115
      002438 05                    1291 	.uleb128	5
      002439 49 44 52              1292 	.ascii "IDR"
      00243C 00                    1293 	.db	0
      00243D 02                    1294 	.db	2
      00243E 23                    1295 	.db	35
      00243F 01                    1296 	.uleb128	1
      002440 00 00 00 73           1297 	.dw	0,115
      002444 05                    1298 	.uleb128	5
      002445 44 44 52              1299 	.ascii "DDR"
      002448 00                    1300 	.db	0
      002449 02                    1301 	.db	2
      00244A 23                    1302 	.db	35
      00244B 02                    1303 	.uleb128	2
      00244C 00 00 00 73           1304 	.dw	0,115
      002450 05                    1305 	.uleb128	5
      002451 43 52 31              1306 	.ascii "CR1"
      002454 00                    1307 	.db	0
      002455 02                    1308 	.db	2
      002456 23                    1309 	.db	35
      002457 03                    1310 	.uleb128	3
      002458 00 00 00 73           1311 	.dw	0,115
      00245C 05                    1312 	.uleb128	5
      00245D 43 52 32              1313 	.ascii "CR2"
      002460 00                    1314 	.db	0
      002461 02                    1315 	.db	2
      002462 23                    1316 	.db	35
      002463 04                    1317 	.uleb128	4
      002464 00 00 00 73           1318 	.dw	0,115
      002468 00                    1319 	.uleb128	0
      002469 06                    1320 	.uleb128	6
      00246A 02                    1321 	.db	2
      00246B 00 00 00 61           1322 	.dw	0,97
      00246F 07                    1323 	.uleb128	7
      002470 02                    1324 	.db	2
      002471 91                    1325 	.db	145
      002472 02                    1326 	.sleb128	2
      002473 47 50 49 4F 78        1327 	.ascii "GPIOx"
      002478 00                    1328 	.db	0
      002479 00 00 00 B5           1329 	.dw	0,181
      00247D 00                    1330 	.uleb128	0
      00247E 08                    1331 	.uleb128	8
      00247F 75 6E 73 69 67 6E 65  1332 	.ascii "unsigned char"
             64 20 63 68 61 72
      00248C 00                    1333 	.db	0
      00248D 01                    1334 	.db	1
      00248E 08                    1335 	.db	8
      00248F 02                    1336 	.uleb128	2
      002490 00 00 01 76           1337 	.dw	0,374
      002494 47 50 49 4F 5F 49 6E  1338 	.ascii "GPIO_Init"
             69 74
      00249D 00                    1339 	.db	0
      00249E 00 00 8F 78           1340 	.dw	0,(_GPIO_Init)
      0024A2 00 00 8F FF           1341 	.dw	0,(XG$GPIO_Init$0$0+1)
      0024A6 01                    1342 	.db	1
      0024A7 00 00 25 00           1343 	.dw	0,(Ldebug_loc_start+232)
      0024AB 07                    1344 	.uleb128	7
      0024AC 02                    1345 	.db	2
      0024AD 91                    1346 	.db	145
      0024AE 02                    1347 	.sleb128	2
      0024AF 47 50 49 4F 78        1348 	.ascii "GPIOx"
      0024B4 00                    1349 	.db	0
      0024B5 00 00 00 B5           1350 	.dw	0,181
      0024B9 07                    1351 	.uleb128	7
      0024BA 02                    1352 	.db	2
      0024BB 91                    1353 	.db	145
      0024BC 04                    1354 	.sleb128	4
      0024BD 47 50 49 4F 5F 50 69  1355 	.ascii "GPIO_Pin"
             6E
      0024C5 00                    1356 	.db	0
      0024C6 00 00 01 76           1357 	.dw	0,374
      0024CA 07                    1358 	.uleb128	7
      0024CB 02                    1359 	.db	2
      0024CC 91                    1360 	.db	145
      0024CD 05                    1361 	.sleb128	5
      0024CE 47 50 49 4F 5F 4D 6F  1362 	.ascii "GPIO_Mode"
             64 65
      0024D7 00                    1363 	.db	0
      0024D8 00 00 01 76           1364 	.dw	0,374
      0024DC 09                    1365 	.uleb128	9
      0024DD 00 00 01 48           1366 	.dw	0,328
      0024E1 00 00 8F 9F           1367 	.dw	0,(Sstm8s_gpio$GPIO_Init$18)
      0024E5 00 00 8F BD           1368 	.dw	0,(Sstm8s_gpio$GPIO_Init$29)
      0024E9 0A                    1369 	.uleb128	10
      0024EA 00 00 8F AA           1370 	.dw	0,(Sstm8s_gpio$GPIO_Init$22)
      0024EE 00 00 8F AE           1371 	.dw	0,(Sstm8s_gpio$GPIO_Init$24)
      0024F2 0A                    1372 	.uleb128	10
      0024F3 00 00 8F B1           1373 	.dw	0,(Sstm8s_gpio$GPIO_Init$25)
      0024F7 00 00 8F B5           1374 	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
      0024FB 00                    1375 	.uleb128	0
      0024FC 0A                    1376 	.uleb128	10
      0024FD 00 00 8F C0           1377 	.dw	0,(Sstm8s_gpio$GPIO_Init$30)
      002501 00 00 8F C8           1378 	.dw	0,(Sstm8s_gpio$GPIO_Init$32)
      002505 0A                    1379 	.uleb128	10
      002506 00 00 8F D8           1380 	.dw	0,(Sstm8s_gpio$GPIO_Init$37)
      00250A 00 00 8F DB           1381 	.dw	0,(Sstm8s_gpio$GPIO_Init$39)
      00250E 0A                    1382 	.uleb128	10
      00250F 00 00 8F DE           1383 	.dw	0,(Sstm8s_gpio$GPIO_Init$40)
      002513 00 00 8F E1           1384 	.dw	0,(Sstm8s_gpio$GPIO_Init$42)
      002517 0A                    1385 	.uleb128	10
      002518 00 00 8F EF           1386 	.dw	0,(Sstm8s_gpio$GPIO_Init$47)
      00251C 00 00 8F F4           1387 	.dw	0,(Sstm8s_gpio$GPIO_Init$49)
      002520 0A                    1388 	.uleb128	10
      002521 00 00 8F F7           1389 	.dw	0,(Sstm8s_gpio$GPIO_Init$50)
      002525 00 00 8F FC           1390 	.dw	0,(Sstm8s_gpio$GPIO_Init$52)
      002529 00                    1391 	.uleb128	0
      00252A 08                    1392 	.uleb128	8
      00252B 75 6E 73 69 67 6E 65  1393 	.ascii "unsigned char"
             64 20 63 68 61 72
      002538 00                    1394 	.db	0
      002539 01                    1395 	.db	1
      00253A 08                    1396 	.db	8
      00253B 02                    1397 	.uleb128	2
      00253C 00 00 01 C3           1398 	.dw	0,451
      002540 47 50 49 4F 5F 57 72  1399 	.ascii "GPIO_Write"
             69 74 65
      00254A 00                    1400 	.db	0
      00254B 00 00 8F FF           1401 	.dw	0,(_GPIO_Write)
      00254F 00 00 90 05           1402 	.dw	0,(XG$GPIO_Write$0$0+1)
      002553 01                    1403 	.db	1
      002554 00 00 24 EC           1404 	.dw	0,(Ldebug_loc_start+212)
      002558 07                    1405 	.uleb128	7
      002559 02                    1406 	.db	2
      00255A 91                    1407 	.db	145
      00255B 02                    1408 	.sleb128	2
      00255C 47 50 49 4F 78        1409 	.ascii "GPIOx"
      002561 00                    1410 	.db	0
      002562 00 00 00 B5           1411 	.dw	0,181
      002566 07                    1412 	.uleb128	7
      002567 02                    1413 	.db	2
      002568 91                    1414 	.db	145
      002569 04                    1415 	.sleb128	4
      00256A 50 6F 72 74 56 61 6C  1416 	.ascii "PortVal"
      002571 00                    1417 	.db	0
      002572 00 00 01 76           1418 	.dw	0,374
      002576 00                    1419 	.uleb128	0
      002577 02                    1420 	.uleb128	2
      002578 00 00 02 04           1421 	.dw	0,516
      00257C 47 50 49 4F 5F 57 72  1422 	.ascii "GPIO_WriteHigh"
             69 74 65 48 69 67 68
      00258A 00                    1423 	.db	0
      00258B 00 00 90 05           1424 	.dw	0,(_GPIO_WriteHigh)
      00258F 00 00 90 0C           1425 	.dw	0,(XG$GPIO_WriteHigh$0$0+1)
      002593 01                    1426 	.db	1
      002594 00 00 24 D8           1427 	.dw	0,(Ldebug_loc_start+192)
      002598 07                    1428 	.uleb128	7
      002599 02                    1429 	.db	2
      00259A 91                    1430 	.db	145
      00259B 02                    1431 	.sleb128	2
      00259C 47 50 49 4F 78        1432 	.ascii "GPIOx"
      0025A1 00                    1433 	.db	0
      0025A2 00 00 00 B5           1434 	.dw	0,181
      0025A6 07                    1435 	.uleb128	7
      0025A7 02                    1436 	.db	2
      0025A8 91                    1437 	.db	145
      0025A9 04                    1438 	.sleb128	4
      0025AA 50 6F 72 74 50 69 6E  1439 	.ascii "PortPins"
             73
      0025B2 00                    1440 	.db	0
      0025B3 00 00 01 76           1441 	.dw	0,374
      0025B7 00                    1442 	.uleb128	0
      0025B8 02                    1443 	.uleb128	2
      0025B9 00 00 02 44           1444 	.dw	0,580
      0025BD 47 50 49 4F 5F 57 72  1445 	.ascii "GPIO_WriteLow"
             69 74 65 4C 6F 77
      0025CA 00                    1446 	.db	0
      0025CB 00 00 90 0C           1447 	.dw	0,(_GPIO_WriteLow)
      0025CF 00 00 90 1A           1448 	.dw	0,(XG$GPIO_WriteLow$0$0+1)
      0025D3 01                    1449 	.db	1
      0025D4 00 00 24 AC           1450 	.dw	0,(Ldebug_loc_start+148)
      0025D8 07                    1451 	.uleb128	7
      0025D9 02                    1452 	.db	2
      0025DA 91                    1453 	.db	145
      0025DB 02                    1454 	.sleb128	2
      0025DC 47 50 49 4F 78        1455 	.ascii "GPIOx"
      0025E1 00                    1456 	.db	0
      0025E2 00 00 00 B5           1457 	.dw	0,181
      0025E6 07                    1458 	.uleb128	7
      0025E7 02                    1459 	.db	2
      0025E8 91                    1460 	.db	145
      0025E9 04                    1461 	.sleb128	4
      0025EA 50 6F 72 74 50 69 6E  1462 	.ascii "PortPins"
             73
      0025F2 00                    1463 	.db	0
      0025F3 00 00 01 76           1464 	.dw	0,374
      0025F7 00                    1465 	.uleb128	0
      0025F8 02                    1466 	.uleb128	2
      0025F9 00 00 02 88           1467 	.dw	0,648
      0025FD 47 50 49 4F 5F 57 72  1468 	.ascii "GPIO_WriteReverse"
             69 74 65 52 65 76 65
             72 73 65
      00260E 00                    1469 	.db	0
      00260F 00 00 90 1A           1470 	.dw	0,(_GPIO_WriteReverse)
      002613 00 00 90 21           1471 	.dw	0,(XG$GPIO_WriteReverse$0$0+1)
      002617 01                    1472 	.db	1
      002618 00 00 24 98           1473 	.dw	0,(Ldebug_loc_start+128)
      00261C 07                    1474 	.uleb128	7
      00261D 02                    1475 	.db	2
      00261E 91                    1476 	.db	145
      00261F 02                    1477 	.sleb128	2
      002620 47 50 49 4F 78        1478 	.ascii "GPIOx"
      002625 00                    1479 	.db	0
      002626 00 00 00 B5           1480 	.dw	0,181
      00262A 07                    1481 	.uleb128	7
      00262B 02                    1482 	.db	2
      00262C 91                    1483 	.db	145
      00262D 04                    1484 	.sleb128	4
      00262E 50 6F 72 74 50 69 6E  1485 	.ascii "PortPins"
             73
      002636 00                    1486 	.db	0
      002637 00 00 01 76           1487 	.dw	0,374
      00263B 00                    1488 	.uleb128	0
      00263C 0B                    1489 	.uleb128	11
      00263D 00 00 02 C1           1490 	.dw	0,705
      002641 47 50 49 4F 5F 52 65  1491 	.ascii "GPIO_ReadOutputData"
             61 64 4F 75 74 70 75
             74 44 61 74 61
      002654 00                    1492 	.db	0
      002655 00 00 90 21           1493 	.dw	0,(_GPIO_ReadOutputData)
      002659 00 00 90 25           1494 	.dw	0,(XG$GPIO_ReadOutputData$0$0+1)
      00265D 01                    1495 	.db	1
      00265E 00 00 24 84           1496 	.dw	0,(Ldebug_loc_start+108)
      002662 00 00 01 76           1497 	.dw	0,374
      002666 07                    1498 	.uleb128	7
      002667 02                    1499 	.db	2
      002668 91                    1500 	.db	145
      002669 02                    1501 	.sleb128	2
      00266A 47 50 49 4F 78        1502 	.ascii "GPIOx"
      00266F 00                    1503 	.db	0
      002670 00 00 00 B5           1504 	.dw	0,181
      002674 00                    1505 	.uleb128	0
      002675 0B                    1506 	.uleb128	11
      002676 00 00 02 F9           1507 	.dw	0,761
      00267A 47 50 49 4F 5F 52 65  1508 	.ascii "GPIO_ReadInputData"
             61 64 49 6E 70 75 74
             44 61 74 61
      00268C 00                    1509 	.db	0
      00268D 00 00 90 25           1510 	.dw	0,(_GPIO_ReadInputData)
      002691 00 00 90 2A           1511 	.dw	0,(XG$GPIO_ReadInputData$0$0+1)
      002695 01                    1512 	.db	1
      002696 00 00 24 70           1513 	.dw	0,(Ldebug_loc_start+88)
      00269A 00 00 01 76           1514 	.dw	0,374
      00269E 07                    1515 	.uleb128	7
      00269F 02                    1516 	.db	2
      0026A0 91                    1517 	.db	145
      0026A1 02                    1518 	.sleb128	2
      0026A2 47 50 49 4F 78        1519 	.ascii "GPIOx"
      0026A7 00                    1520 	.db	0
      0026A8 00 00 00 B5           1521 	.dw	0,181
      0026AC 00                    1522 	.uleb128	0
      0026AD 0B                    1523 	.uleb128	11
      0026AE 00 00 03 41           1524 	.dw	0,833
      0026B2 47 50 49 4F 5F 52 65  1525 	.ascii "GPIO_ReadInputPin"
             61 64 49 6E 70 75 74
             50 69 6E
      0026C3 00                    1526 	.db	0
      0026C4 00 00 90 2A           1527 	.dw	0,(_GPIO_ReadInputPin)
      0026C8 00 00 90 31           1528 	.dw	0,(XG$GPIO_ReadInputPin$0$0+1)
      0026CC 01                    1529 	.db	1
      0026CD 00 00 24 5C           1530 	.dw	0,(Ldebug_loc_start+68)
      0026D1 00 00 01 76           1531 	.dw	0,374
      0026D5 07                    1532 	.uleb128	7
      0026D6 02                    1533 	.db	2
      0026D7 91                    1534 	.db	145
      0026D8 02                    1535 	.sleb128	2
      0026D9 47 50 49 4F 78        1536 	.ascii "GPIOx"
      0026DE 00                    1537 	.db	0
      0026DF 00 00 00 B5           1538 	.dw	0,181
      0026E3 07                    1539 	.uleb128	7
      0026E4 02                    1540 	.db	2
      0026E5 91                    1541 	.db	145
      0026E6 04                    1542 	.sleb128	4
      0026E7 47 50 49 4F 5F 50 69  1543 	.ascii "GPIO_Pin"
             6E
      0026EF 00                    1544 	.db	0
      0026F0 00 00 01 76           1545 	.dw	0,374
      0026F4 00                    1546 	.uleb128	0
      0026F5 0C                    1547 	.uleb128	12
      0026F6 47 50 49 4F 5F 45 78  1548 	.ascii "GPIO_ExternalPullUpConfig"
             74 65 72 6E 61 6C 50
             75 6C 6C 55 70 43 6F
             6E 66 69 67
      00270F 00                    1549 	.db	0
      002710 00 00 90 31           1550 	.dw	0,(_GPIO_ExternalPullUpConfig)
      002714 00 00 90 51           1551 	.dw	0,(XG$GPIO_ExternalPullUpConfig$0$0+1)
      002718 01                    1552 	.db	1
      002719 00 00 24 18           1553 	.dw	0,(Ldebug_loc_start)
      00271D 07                    1554 	.uleb128	7
      00271E 02                    1555 	.db	2
      00271F 91                    1556 	.db	145
      002720 02                    1557 	.sleb128	2
      002721 47 50 49 4F 78        1558 	.ascii "GPIOx"
      002726 00                    1559 	.db	0
      002727 00 00 00 B5           1560 	.dw	0,181
      00272B 07                    1561 	.uleb128	7
      00272C 02                    1562 	.db	2
      00272D 91                    1563 	.db	145
      00272E 04                    1564 	.sleb128	4
      00272F 47 50 49 4F 5F 50 69  1565 	.ascii "GPIO_Pin"
             6E
      002737 00                    1566 	.db	0
      002738 00 00 01 76           1567 	.dw	0,374
      00273C 07                    1568 	.uleb128	7
      00273D 02                    1569 	.db	2
      00273E 91                    1570 	.db	145
      00273F 05                    1571 	.sleb128	5
      002740 4E 65 77 53 74 61 74  1572 	.ascii "NewState"
             65
      002748 00                    1573 	.db	0
      002749 00 00 01 76           1574 	.dw	0,374
      00274D 0A                    1575 	.uleb128	10
      00274E 00 00 90 3F           1576 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$106)
      002752 00 00 90 42           1577 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$108)
      002756 0A                    1578 	.uleb128	10
      002757 00 00 90 45           1579 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$109)
      00275B 00 00 90 4F           1580 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$113)
      00275F 00                    1581 	.uleb128	0
      002760 00                    1582 	.uleb128	0
      002761 00                    1583 	.uleb128	0
      002762 00                    1584 	.uleb128	0
      002763                       1585 Ldebug_info_end:
                                   1586 
                                   1587 	.area .debug_pubnames (NOLOAD)
      0005AE 00 00 00 D9           1588 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      0005B2                       1589 Ldebug_pubnames_start:
      0005B2 00 02                 1590 	.dw	2
      0005B4 00 00 23 B4           1591 	.dw	0,(Ldebug_info_start-4)
      0005B8 00 00 03 AF           1592 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0005BC 00 00 00 43           1593 	.dw	0,67
      0005C0 47 50 49 4F 5F 44 65  1594 	.ascii "GPIO_DeInit"
             49 6E 69 74
      0005CB 00                    1595 	.db	0
      0005CC 00 00 00 DB           1596 	.dw	0,219
      0005D0 47 50 49 4F 5F 49 6E  1597 	.ascii "GPIO_Init"
             69 74
      0005D9 00                    1598 	.db	0
      0005DA 00 00 01 87           1599 	.dw	0,391
      0005DE 47 50 49 4F 5F 57 72  1600 	.ascii "GPIO_Write"
             69 74 65
      0005E8 00                    1601 	.db	0
      0005E9 00 00 01 C3           1602 	.dw	0,451
      0005ED 47 50 49 4F 5F 57 72  1603 	.ascii "GPIO_WriteHigh"
             69 74 65 48 69 67 68
      0005FB 00                    1604 	.db	0
      0005FC 00 00 02 04           1605 	.dw	0,516
      000600 47 50 49 4F 5F 57 72  1606 	.ascii "GPIO_WriteLow"
             69 74 65 4C 6F 77
      00060D 00                    1607 	.db	0
      00060E 00 00 02 44           1608 	.dw	0,580
      000612 47 50 49 4F 5F 57 72  1609 	.ascii "GPIO_WriteReverse"
             69 74 65 52 65 76 65
             72 73 65
      000623 00                    1610 	.db	0
      000624 00 00 02 88           1611 	.dw	0,648
      000628 47 50 49 4F 5F 52 65  1612 	.ascii "GPIO_ReadOutputData"
             61 64 4F 75 74 70 75
             74 44 61 74 61
      00063B 00                    1613 	.db	0
      00063C 00 00 02 C1           1614 	.dw	0,705
      000640 47 50 49 4F 5F 52 65  1615 	.ascii "GPIO_ReadInputData"
             61 64 49 6E 70 75 74
             44 61 74 61
      000652 00                    1616 	.db	0
      000653 00 00 02 F9           1617 	.dw	0,761
      000657 47 50 49 4F 5F 52 65  1618 	.ascii "GPIO_ReadInputPin"
             61 64 49 6E 70 75 74
             50 69 6E
      000668 00                    1619 	.db	0
      000669 00 00 03 41           1620 	.dw	0,833
      00066D 47 50 49 4F 5F 45 78  1621 	.ascii "GPIO_ExternalPullUpConfig"
             74 65 72 6E 61 6C 50
             75 6C 6C 55 70 43 6F
             6E 66 69 67
      000686 00                    1622 	.db	0
      000687 00 00 00 00           1623 	.dw	0,0
      00068B                       1624 Ldebug_pubnames_end:
                                   1625 
                                   1626 	.area .debug_frame (NOLOAD)
      001D4E 00 00                 1627 	.dw	0
      001D50 00 0E                 1628 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      001D52                       1629 Ldebug_CIE0_start:
      001D52 FF FF                 1630 	.dw	0xffff
      001D54 FF FF                 1631 	.dw	0xffff
      001D56 01                    1632 	.db	1
      001D57 00                    1633 	.db	0
      001D58 01                    1634 	.uleb128	1
      001D59 7F                    1635 	.sleb128	-1
      001D5A 09                    1636 	.db	9
      001D5B 0C                    1637 	.db	12
      001D5C 08                    1638 	.uleb128	8
      001D5D 02                    1639 	.uleb128	2
      001D5E 89                    1640 	.db	137
      001D5F 01                    1641 	.uleb128	1
      001D60                       1642 Ldebug_CIE0_end:
      001D60 00 00 00 2F           1643 	.dw	0,47
      001D64 00 00 1D 4E           1644 	.dw	0,(Ldebug_CIE0_start-4)
      001D68 00 00 90 31           1645 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$102)	;initial loc
      001D6C 00 00 00 20           1646 	.dw	0,Sstm8s_gpio$GPIO_ExternalPullUpConfig$117-Sstm8s_gpio$GPIO_ExternalPullUpConfig$102
      001D70 01                    1647 	.db	1
      001D71 00 00 90 31           1648 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$102)
      001D75 0E                    1649 	.db	14
      001D76 02                    1650 	.uleb128	2
      001D77 01                    1651 	.db	1
      001D78 00 00 90 32           1652 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$103)
      001D7C 0E                    1653 	.db	14
      001D7D 03                    1654 	.uleb128	3
      001D7E 01                    1655 	.db	1
      001D7F 00 00 90 46           1656 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$111)
      001D83 0E                    1657 	.db	14
      001D84 04                    1658 	.uleb128	4
      001D85 01                    1659 	.db	1
      001D86 00 00 90 4C           1660 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$112)
      001D8A 0E                    1661 	.db	14
      001D8B 03                    1662 	.uleb128	3
      001D8C 01                    1663 	.db	1
      001D8D 00 00 90 50           1664 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$115)
      001D91 0E                    1665 	.db	14
      001D92 02                    1666 	.uleb128	2
                                   1667 
                                   1668 	.area .debug_frame (NOLOAD)
      001D93 00 00                 1669 	.dw	0
      001D95 00 0E                 1670 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      001D97                       1671 Ldebug_CIE1_start:
      001D97 FF FF                 1672 	.dw	0xffff
      001D99 FF FF                 1673 	.dw	0xffff
      001D9B 01                    1674 	.db	1
      001D9C 00                    1675 	.db	0
      001D9D 01                    1676 	.uleb128	1
      001D9E 7F                    1677 	.sleb128	-1
      001D9F 09                    1678 	.db	9
      001DA0 0C                    1679 	.db	12
      001DA1 08                    1680 	.uleb128	8
      001DA2 02                    1681 	.uleb128	2
      001DA3 89                    1682 	.db	137
      001DA4 01                    1683 	.uleb128	1
      001DA5                       1684 Ldebug_CIE1_end:
      001DA5 00 00 00 13           1685 	.dw	0,19
      001DA9 00 00 1D 93           1686 	.dw	0,(Ldebug_CIE1_start-4)
      001DAD 00 00 90 2A           1687 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$96)	;initial loc
      001DB1 00 00 00 07           1688 	.dw	0,Sstm8s_gpio$GPIO_ReadInputPin$100-Sstm8s_gpio$GPIO_ReadInputPin$96
      001DB5 01                    1689 	.db	1
      001DB6 00 00 90 2A           1690 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$96)
      001DBA 0E                    1691 	.db	14
      001DBB 02                    1692 	.uleb128	2
                                   1693 
                                   1694 	.area .debug_frame (NOLOAD)
      001DBC 00 00                 1695 	.dw	0
      001DBE 00 0E                 1696 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      001DC0                       1697 Ldebug_CIE2_start:
      001DC0 FF FF                 1698 	.dw	0xffff
      001DC2 FF FF                 1699 	.dw	0xffff
      001DC4 01                    1700 	.db	1
      001DC5 00                    1701 	.db	0
      001DC6 01                    1702 	.uleb128	1
      001DC7 7F                    1703 	.sleb128	-1
      001DC8 09                    1704 	.db	9
      001DC9 0C                    1705 	.db	12
      001DCA 08                    1706 	.uleb128	8
      001DCB 02                    1707 	.uleb128	2
      001DCC 89                    1708 	.db	137
      001DCD 01                    1709 	.uleb128	1
      001DCE                       1710 Ldebug_CIE2_end:
      001DCE 00 00 00 13           1711 	.dw	0,19
      001DD2 00 00 1D BC           1712 	.dw	0,(Ldebug_CIE2_start-4)
      001DD6 00 00 90 25           1713 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$90)	;initial loc
      001DDA 00 00 00 05           1714 	.dw	0,Sstm8s_gpio$GPIO_ReadInputData$94-Sstm8s_gpio$GPIO_ReadInputData$90
      001DDE 01                    1715 	.db	1
      001DDF 00 00 90 25           1716 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$90)
      001DE3 0E                    1717 	.db	14
      001DE4 02                    1718 	.uleb128	2
                                   1719 
                                   1720 	.area .debug_frame (NOLOAD)
      001DE5 00 00                 1721 	.dw	0
      001DE7 00 0E                 1722 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      001DE9                       1723 Ldebug_CIE3_start:
      001DE9 FF FF                 1724 	.dw	0xffff
      001DEB FF FF                 1725 	.dw	0xffff
      001DED 01                    1726 	.db	1
      001DEE 00                    1727 	.db	0
      001DEF 01                    1728 	.uleb128	1
      001DF0 7F                    1729 	.sleb128	-1
      001DF1 09                    1730 	.db	9
      001DF2 0C                    1731 	.db	12
      001DF3 08                    1732 	.uleb128	8
      001DF4 02                    1733 	.uleb128	2
      001DF5 89                    1734 	.db	137
      001DF6 01                    1735 	.uleb128	1
      001DF7                       1736 Ldebug_CIE3_end:
      001DF7 00 00 00 13           1737 	.dw	0,19
      001DFB 00 00 1D E5           1738 	.dw	0,(Ldebug_CIE3_start-4)
      001DFF 00 00 90 21           1739 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$84)	;initial loc
      001E03 00 00 00 04           1740 	.dw	0,Sstm8s_gpio$GPIO_ReadOutputData$88-Sstm8s_gpio$GPIO_ReadOutputData$84
      001E07 01                    1741 	.db	1
      001E08 00 00 90 21           1742 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$84)
      001E0C 0E                    1743 	.db	14
      001E0D 02                    1744 	.uleb128	2
                                   1745 
                                   1746 	.area .debug_frame (NOLOAD)
      001E0E 00 00                 1747 	.dw	0
      001E10 00 0E                 1748 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      001E12                       1749 Ldebug_CIE4_start:
      001E12 FF FF                 1750 	.dw	0xffff
      001E14 FF FF                 1751 	.dw	0xffff
      001E16 01                    1752 	.db	1
      001E17 00                    1753 	.db	0
      001E18 01                    1754 	.uleb128	1
      001E19 7F                    1755 	.sleb128	-1
      001E1A 09                    1756 	.db	9
      001E1B 0C                    1757 	.db	12
      001E1C 08                    1758 	.uleb128	8
      001E1D 02                    1759 	.uleb128	2
      001E1E 89                    1760 	.db	137
      001E1F 01                    1761 	.uleb128	1
      001E20                       1762 Ldebug_CIE4_end:
      001E20 00 00 00 13           1763 	.dw	0,19
      001E24 00 00 1E 0E           1764 	.dw	0,(Ldebug_CIE4_start-4)
      001E28 00 00 90 1A           1765 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$78)	;initial loc
      001E2C 00 00 00 07           1766 	.dw	0,Sstm8s_gpio$GPIO_WriteReverse$82-Sstm8s_gpio$GPIO_WriteReverse$78
      001E30 01                    1767 	.db	1
      001E31 00 00 90 1A           1768 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$78)
      001E35 0E                    1769 	.db	14
      001E36 02                    1770 	.uleb128	2
                                   1771 
                                   1772 	.area .debug_frame (NOLOAD)
      001E37 00 00                 1773 	.dw	0
      001E39 00 0E                 1774 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      001E3B                       1775 Ldebug_CIE5_start:
      001E3B FF FF                 1776 	.dw	0xffff
      001E3D FF FF                 1777 	.dw	0xffff
      001E3F 01                    1778 	.db	1
      001E40 00                    1779 	.db	0
      001E41 01                    1780 	.uleb128	1
      001E42 7F                    1781 	.sleb128	-1
      001E43 09                    1782 	.db	9
      001E44 0C                    1783 	.db	12
      001E45 08                    1784 	.uleb128	8
      001E46 02                    1785 	.uleb128	2
      001E47 89                    1786 	.db	137
      001E48 01                    1787 	.uleb128	1
      001E49                       1788 Ldebug_CIE5_end:
      001E49 00 00 00 21           1789 	.dw	0,33
      001E4D 00 00 1E 37           1790 	.dw	0,(Ldebug_CIE5_start-4)
      001E51 00 00 90 0C           1791 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$70)	;initial loc
      001E55 00 00 00 0E           1792 	.dw	0,Sstm8s_gpio$GPIO_WriteLow$76-Sstm8s_gpio$GPIO_WriteLow$70
      001E59 01                    1793 	.db	1
      001E5A 00 00 90 0C           1794 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$70)
      001E5E 0E                    1795 	.db	14
      001E5F 02                    1796 	.uleb128	2
      001E60 01                    1797 	.db	1
      001E61 00 00 90 0D           1798 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$71)
      001E65 0E                    1799 	.db	14
      001E66 03                    1800 	.uleb128	3
      001E67 01                    1801 	.db	1
      001E68 00 00 90 19           1802 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$74)
      001E6C 0E                    1803 	.db	14
      001E6D 02                    1804 	.uleb128	2
                                   1805 
                                   1806 	.area .debug_frame (NOLOAD)
      001E6E 00 00                 1807 	.dw	0
      001E70 00 0E                 1808 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      001E72                       1809 Ldebug_CIE6_start:
      001E72 FF FF                 1810 	.dw	0xffff
      001E74 FF FF                 1811 	.dw	0xffff
      001E76 01                    1812 	.db	1
      001E77 00                    1813 	.db	0
      001E78 01                    1814 	.uleb128	1
      001E79 7F                    1815 	.sleb128	-1
      001E7A 09                    1816 	.db	9
      001E7B 0C                    1817 	.db	12
      001E7C 08                    1818 	.uleb128	8
      001E7D 02                    1819 	.uleb128	2
      001E7E 89                    1820 	.db	137
      001E7F 01                    1821 	.uleb128	1
      001E80                       1822 Ldebug_CIE6_end:
      001E80 00 00 00 13           1823 	.dw	0,19
      001E84 00 00 1E 6E           1824 	.dw	0,(Ldebug_CIE6_start-4)
      001E88 00 00 90 05           1825 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$64)	;initial loc
      001E8C 00 00 00 07           1826 	.dw	0,Sstm8s_gpio$GPIO_WriteHigh$68-Sstm8s_gpio$GPIO_WriteHigh$64
      001E90 01                    1827 	.db	1
      001E91 00 00 90 05           1828 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$64)
      001E95 0E                    1829 	.db	14
      001E96 02                    1830 	.uleb128	2
                                   1831 
                                   1832 	.area .debug_frame (NOLOAD)
      001E97 00 00                 1833 	.dw	0
      001E99 00 0E                 1834 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      001E9B                       1835 Ldebug_CIE7_start:
      001E9B FF FF                 1836 	.dw	0xffff
      001E9D FF FF                 1837 	.dw	0xffff
      001E9F 01                    1838 	.db	1
      001EA0 00                    1839 	.db	0
      001EA1 01                    1840 	.uleb128	1
      001EA2 7F                    1841 	.sleb128	-1
      001EA3 09                    1842 	.db	9
      001EA4 0C                    1843 	.db	12
      001EA5 08                    1844 	.uleb128	8
      001EA6 02                    1845 	.uleb128	2
      001EA7 89                    1846 	.db	137
      001EA8 01                    1847 	.uleb128	1
      001EA9                       1848 Ldebug_CIE7_end:
      001EA9 00 00 00 13           1849 	.dw	0,19
      001EAD 00 00 1E 97           1850 	.dw	0,(Ldebug_CIE7_start-4)
      001EB1 00 00 8F FF           1851 	.dw	0,(Sstm8s_gpio$GPIO_Write$58)	;initial loc
      001EB5 00 00 00 06           1852 	.dw	0,Sstm8s_gpio$GPIO_Write$62-Sstm8s_gpio$GPIO_Write$58
      001EB9 01                    1853 	.db	1
      001EBA 00 00 8F FF           1854 	.dw	0,(Sstm8s_gpio$GPIO_Write$58)
      001EBE 0E                    1855 	.db	14
      001EBF 02                    1856 	.uleb128	2
                                   1857 
                                   1858 	.area .debug_frame (NOLOAD)
      001EC0 00 00                 1859 	.dw	0
      001EC2 00 0E                 1860 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      001EC4                       1861 Ldebug_CIE8_start:
      001EC4 FF FF                 1862 	.dw	0xffff
      001EC6 FF FF                 1863 	.dw	0xffff
      001EC8 01                    1864 	.db	1
      001EC9 00                    1865 	.db	0
      001ECA 01                    1866 	.uleb128	1
      001ECB 7F                    1867 	.sleb128	-1
      001ECC 09                    1868 	.db	9
      001ECD 0C                    1869 	.db	12
      001ECE 08                    1870 	.uleb128	8
      001ECF 02                    1871 	.uleb128	2
      001ED0 89                    1872 	.db	137
      001ED1 01                    1873 	.uleb128	1
      001ED2                       1874 Ldebug_CIE8_end:
      001ED2 00 00 00 59           1875 	.dw	0,89
      001ED6 00 00 1E C0           1876 	.dw	0,(Ldebug_CIE8_start-4)
      001EDA 00 00 8F 78           1877 	.dw	0,(Sstm8s_gpio$GPIO_Init$10)	;initial loc
      001EDE 00 00 00 87           1878 	.dw	0,Sstm8s_gpio$GPIO_Init$56-Sstm8s_gpio$GPIO_Init$10
      001EE2 01                    1879 	.db	1
      001EE3 00 00 8F 78           1880 	.dw	0,(Sstm8s_gpio$GPIO_Init$10)
      001EE7 0E                    1881 	.db	14
      001EE8 02                    1882 	.uleb128	2
      001EE9 01                    1883 	.db	1
      001EEA 00 00 8F 7A           1884 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      001EEE 0E                    1885 	.db	14
      001EEF 07                    1886 	.uleb128	7
      001EF0 01                    1887 	.db	1
      001EF1 00 00 8F 86           1888 	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
      001EF5 0E                    1889 	.db	14
      001EF6 08                    1890 	.uleb128	8
      001EF7 01                    1891 	.db	1
      001EF8 00 00 8F 8C           1892 	.dw	0,(Sstm8s_gpio$GPIO_Init$14)
      001EFC 0E                    1893 	.db	14
      001EFD 07                    1894 	.uleb128	7
      001EFE 01                    1895 	.db	1
      001EFF 00 00 8F A0           1896 	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
      001F03 0E                    1897 	.db	14
      001F04 08                    1898 	.uleb128	8
      001F05 01                    1899 	.db	1
      001F06 00 00 8F A5           1900 	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
      001F0A 0E                    1901 	.db	14
      001F0B 07                    1902 	.uleb128	7
      001F0C 01                    1903 	.db	1
      001F0D 00 00 8F CE           1904 	.dw	0,(Sstm8s_gpio$GPIO_Init$35)
      001F11 0E                    1905 	.db	14
      001F12 08                    1906 	.uleb128	8
      001F13 01                    1907 	.db	1
      001F14 00 00 8F D3           1908 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      001F18 0E                    1909 	.db	14
      001F19 07                    1910 	.uleb128	7
      001F1A 01                    1911 	.db	1
      001F1B 00 00 8F E5           1912 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      001F1F 0E                    1913 	.db	14
      001F20 08                    1914 	.uleb128	8
      001F21 01                    1915 	.db	1
      001F22 00 00 8F EA           1916 	.dw	0,(Sstm8s_gpio$GPIO_Init$46)
      001F26 0E                    1917 	.db	14
      001F27 07                    1918 	.uleb128	7
      001F28 01                    1919 	.db	1
      001F29 00 00 8F FE           1920 	.dw	0,(Sstm8s_gpio$GPIO_Init$54)
      001F2D 0E                    1921 	.db	14
      001F2E 02                    1922 	.uleb128	2
                                   1923 
                                   1924 	.area .debug_frame (NOLOAD)
      001F2F 00 00                 1925 	.dw	0
      001F31 00 0E                 1926 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      001F33                       1927 Ldebug_CIE9_start:
      001F33 FF FF                 1928 	.dw	0xffff
      001F35 FF FF                 1929 	.dw	0xffff
      001F37 01                    1930 	.db	1
      001F38 00                    1931 	.db	0
      001F39 01                    1932 	.uleb128	1
      001F3A 7F                    1933 	.sleb128	-1
      001F3B 09                    1934 	.db	9
      001F3C 0C                    1935 	.db	12
      001F3D 08                    1936 	.uleb128	8
      001F3E 02                    1937 	.uleb128	2
      001F3F 89                    1938 	.db	137
      001F40 01                    1939 	.uleb128	1
      001F41                       1940 Ldebug_CIE9_end:
      001F41 00 00 00 13           1941 	.dw	0,19
      001F45 00 00 1F 2F           1942 	.dw	0,(Ldebug_CIE9_start-4)
      001F49 00 00 8F 65           1943 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)	;initial loc
      001F4D 00 00 00 13           1944 	.dw	0,Sstm8s_gpio$GPIO_DeInit$8-Sstm8s_gpio$GPIO_DeInit$1
      001F51 01                    1945 	.db	1
      001F52 00 00 8F 65           1946 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)
      001F56 0E                    1947 	.db	14
      001F57 02                    1948 	.uleb128	2

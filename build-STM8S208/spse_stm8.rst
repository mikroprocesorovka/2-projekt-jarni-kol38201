                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module spse_stm8
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ADC2_GetConversionValue
                                     12 	.globl _ADC_get
                                     13 	.globl _ADC2_Select_Channel
                                     14 	.globl _ADC2_AlignConfig
                                     15 	.globl _ADC2_Startup_Wait
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
                           000000    53 	Sspse_stm8$_delay_cycl$0 ==.
                                     54 ;	inc/delay.h: 14: static @inline void _delay_cycl( unsigned short __ticks )
                                     55 ; genLabel
                                     56 ;	-----------------------------------------
                                     57 ;	 function _delay_cycl
                                     58 ;	-----------------------------------------
                                     59 ;	Register assignment is optimal.
                                     60 ;	Stack space usage: 0 bytes.
      0081D0                         61 __delay_cycl:
                           000000    62 	Sspse_stm8$_delay_cycl$1 ==.
                           000000    63 	Sspse_stm8$_delay_cycl$2 ==.
                                     64 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                     65 ;	genInline
      0081D0 9D               [ 1]   66 	nop
      0081D1 9D               [ 1]   67 	nop
                           000002    68 	Sspse_stm8$_delay_cycl$3 ==.
                                     69 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                     70 ; genAssign
      0081D2 1E 03            [ 2]   71 	ldw	x, (0x03, sp)
                                     72 ; genLabel
      0081D4                         73 00101$:
                           000004    74 	Sspse_stm8$_delay_cycl$4 ==.
                           000004    75 	Sspse_stm8$_delay_cycl$5 ==.
                                     76 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                     77 ; genMinus
      0081D4 5A               [ 2]   78 	decw	x
                           000005    79 	Sspse_stm8$_delay_cycl$6 ==.
                           000005    80 	Sspse_stm8$_delay_cycl$7 ==.
                                     81 ;	inc/delay.h: 28: } while ( __ticks );
                                     82 ; genIfx
      0081D5 5D               [ 2]   83 	tnzw	x
      0081D6 27 03            [ 1]   84 	jreq	00117$
      0081D8 CC 81 D4         [ 2]   85 	jp	00101$
      0081DB                         86 00117$:
                           00000B    87 	Sspse_stm8$_delay_cycl$8 ==.
                                     88 ;	inc/delay.h: 29: __asm__("nop\n");
                                     89 ;	genInline
      0081DB 9D               [ 1]   90 	nop
                                     91 ; genLabel
      0081DC                         92 00104$:
                           00000C    93 	Sspse_stm8$_delay_cycl$9 ==.
                                     94 ;	inc/delay.h: 39: }
                                     95 ; genEndFunction
                           00000C    96 	Sspse_stm8$_delay_cycl$10 ==.
                           00000C    97 	XFspse_stm8$_delay_cycl$0$0 ==.
      0081DC 81               [ 4]   98 	ret
                           00000D    99 	Sspse_stm8$_delay_cycl$11 ==.
                           00000D   100 	Sspse_stm8$_delay_us$12 ==.
                                    101 ;	inc/delay.h: 41: static @inline void _delay_us( const unsigned short __us ){
                                    102 ; genLabel
                                    103 ;	-----------------------------------------
                                    104 ;	 function _delay_us
                                    105 ;	-----------------------------------------
                                    106 ;	Register assignment might be sub-optimal.
                                    107 ;	Stack space usage: 0 bytes.
      0081DD                        108 __delay_us:
                           00000D   109 	Sspse_stm8$_delay_us$13 ==.
                           00000D   110 	Sspse_stm8$_delay_us$14 ==.
                                    111 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                    112 ; genCast
                                    113 ; genAssign
      0081DD 16 03            [ 2]  114 	ldw	y, (0x03, sp)
      0081DF 5F               [ 1]  115 	clrw	x
                                    116 ; genIPush
      0081E0 90 89            [ 2]  117 	pushw	y
                           000012   118 	Sspse_stm8$_delay_us$15 ==.
      0081E2 89               [ 2]  119 	pushw	x
                           000013   120 	Sspse_stm8$_delay_us$16 ==.
                                    121 ; genIPush
      0081E3 4B 00            [ 1]  122 	push	#0x00
                           000015   123 	Sspse_stm8$_delay_us$17 ==.
      0081E5 4B 24            [ 1]  124 	push	#0x24
                           000017   125 	Sspse_stm8$_delay_us$18 ==.
      0081E7 4B F4            [ 1]  126 	push	#0xf4
                           000019   127 	Sspse_stm8$_delay_us$19 ==.
      0081E9 4B 00            [ 1]  128 	push	#0x00
                           00001B   129 	Sspse_stm8$_delay_us$20 ==.
                                    130 ; genCall
      0081EB CD A4 C6         [ 4]  131 	call	__mullong
      0081EE 5B 08            [ 2]  132 	addw	sp, #8
                           000020   133 	Sspse_stm8$_delay_us$21 ==.
                           000020   134 	Sspse_stm8$_delay_us$22 ==.
                                    135 ; genCast
                                    136 ; genAssign
                                    137 ; genIPush
      0081F0 4B 40            [ 1]  138 	push	#0x40
                           000022   139 	Sspse_stm8$_delay_us$23 ==.
      0081F2 4B 42            [ 1]  140 	push	#0x42
                           000024   141 	Sspse_stm8$_delay_us$24 ==.
      0081F4 4B 0F            [ 1]  142 	push	#0x0f
                           000026   143 	Sspse_stm8$_delay_us$25 ==.
      0081F6 4B 00            [ 1]  144 	push	#0x00
                           000028   145 	Sspse_stm8$_delay_us$26 ==.
                                    146 ; genIPush
      0081F8 89               [ 2]  147 	pushw	x
                           000029   148 	Sspse_stm8$_delay_us$27 ==.
      0081F9 90 89            [ 2]  149 	pushw	y
                           00002B   150 	Sspse_stm8$_delay_us$28 ==.
                                    151 ; genCall
      0081FB CD A4 48         [ 4]  152 	call	__divulong
      0081FE 5B 08            [ 2]  153 	addw	sp, #8
                           000030   154 	Sspse_stm8$_delay_us$29 ==.
                           000030   155 	Sspse_stm8$_delay_us$30 ==.
                                    156 ; genRightShiftLiteral
      008200 90 54            [ 2]  157 	srlw	y
      008202 56               [ 2]  158 	rrcw	x
      008203 90 54            [ 2]  159 	srlw	y
      008205 56               [ 2]  160 	rrcw	x
      008206 90 54            [ 2]  161 	srlw	y
      008208 56               [ 2]  162 	rrcw	x
                                    163 ; genCast
                                    164 ; genAssign
                           000039   165 	Sspse_stm8$_delay_us$31 ==.
                                    166 ; genPlus
      008209 5C               [ 1]  167 	incw	x
                                    168 ; genAssign
                                    169 ; genAssign
                           00003A   170 	Sspse_stm8$_delay_us$32 ==.
                                    171 ; genAssign
                           00003A   172 	Sspse_stm8$_delay_us$33 ==.
                                    173 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                    174 ;	genInline
      00820A 9D               [ 1]  175 	nop
      00820B 9D               [ 1]  176 	nop
                           00003C   177 	Sspse_stm8$_delay_us$34 ==.
                           00003C   178 	Sspse_stm8$_delay_us$35 ==.
                                    179 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                    180 ; genAssign
                                    181 ; genLabel
      00820C                        182 00101$:
                           00003C   183 	Sspse_stm8$_delay_us$36 ==.
                                    184 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                    185 ; genMinus
      00820C 5A               [ 2]  186 	decw	x
                           00003D   187 	Sspse_stm8$_delay_us$37 ==.
                                    188 ;	inc/delay.h: 28: } while ( __ticks );
                                    189 ; genIfx
      00820D 5D               [ 2]  190 	tnzw	x
      00820E 27 03            [ 1]  191 	jreq	00118$
      008210 CC 82 0C         [ 2]  192 	jp	00101$
      008213                        193 00118$:
                                    194 ;	inc/delay.h: 29: __asm__("nop\n");
                                    195 ;	genInline
      008213 9D               [ 1]  196 	nop
                           000044   197 	Sspse_stm8$_delay_us$38 ==.
                           000044   198 	Sspse_stm8$_delay_us$39 ==.
                                    199 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                    200 ; genLabel
      008214                        201 00105$:
                           000044   202 	Sspse_stm8$_delay_us$40 ==.
                                    203 ;	inc/delay.h: 43: }
                                    204 ; genEndFunction
                           000044   205 	Sspse_stm8$_delay_us$41 ==.
                           000044   206 	XFspse_stm8$_delay_us$0$0 ==.
      008214 81               [ 4]  207 	ret
                           000045   208 	Sspse_stm8$_delay_us$42 ==.
                           000045   209 	Sspse_stm8$ADC_get$43 ==.
                                    210 ;	./src/spse_stm8.c: 10: uint16_t ADC_get(ADC2_Channel_TypeDef ADC2_Channel){
                                    211 ; genLabel
                                    212 ;	-----------------------------------------
                                    213 ;	 function ADC_get
                                    214 ;	-----------------------------------------
                                    215 ;	Register assignment is optimal.
                                    216 ;	Stack space usage: 0 bytes.
      008215                        217 _ADC_get:
                           000045   218 	Sspse_stm8$ADC_get$44 ==.
                           000045   219 	Sspse_stm8$ADC_get$45 ==.
                                    220 ;	./src/spse_stm8.c: 11: ADC2_Select_Channel(ADC2_Channel); // vybere kanál / nastavuje analogový multiplexer
                                    221 ; genIPush
      008215 7B 03            [ 1]  222 	ld	a, (0x03, sp)
      008217 88               [ 1]  223 	push	a
                           000048   224 	Sspse_stm8$ADC_get$46 ==.
                                    225 ; genCall
      008218 CD 82 39         [ 4]  226 	call	_ADC2_Select_Channel
      00821B 84               [ 1]  227 	pop	a
                           00004C   228 	Sspse_stm8$ADC_get$47 ==.
                           00004C   229 	Sspse_stm8$ADC_get$48 ==.
                                    230 ;	./src/spse_stm8.c: 12: ADC2->CR1 |= ADC2_CR1_ADON; // Start Conversion (ADON must be SET before => ADC must be enabled !)
                                    231 ; genPointerGet
      00821C C6 54 01         [ 1]  232 	ld	a, 0x5401
                                    233 ; genOr
      00821F AA 01            [ 1]  234 	or	a, #0x01
                                    235 ; genPointerSet
      008221 C7 54 01         [ 1]  236 	ld	0x5401, a
                           000054   237 	Sspse_stm8$ADC_get$49 ==.
                                    238 ;	./src/spse_stm8.c: 13: while(!(ADC2->CSR & ADC2_CSR_EOC)); // èeká na dokonèení pøevodu (End Of Conversion)
                                    239 ; genLabel
      008224                        240 00101$:
                                    241 ; genPointerGet
      008224 C6 54 00         [ 1]  242 	ld	a, 0x5400
                                    243 ; genAnd
      008227 4D               [ 1]  244 	tnz	a
      008228 2B 03            [ 1]  245 	jrmi	00116$
      00822A CC 82 24         [ 2]  246 	jp	00101$
      00822D                        247 00116$:
                                    248 ; skipping generated iCode
                           00005D   249 	Sspse_stm8$ADC_get$50 ==.
                                    250 ;	./src/spse_stm8.c: 14: ADC2->CSR &=~ADC2_CSR_EOC; // maže vlajku 
                                    251 ; genPointerGet
      00822D C6 54 00         [ 1]  252 	ld	a, 0x5400
                                    253 ; genAnd
      008230 A4 7F            [ 1]  254 	and	a, #0x7f
                                    255 ; genPointerSet
      008232 C7 54 00         [ 1]  256 	ld	0x5400, a
                           000065   257 	Sspse_stm8$ADC_get$51 ==.
                                    258 ;	./src/spse_stm8.c: 15: return ADC2_GetConversionValue(); // vrací výsledek
                                    259 ; genCall
      008235 CC 9E 0E         [ 2]  260 	jp	_ADC2_GetConversionValue
                                    261 ; genReturn
                                    262 ; genLabel
      008238                        263 00104$:
                           000068   264 	Sspse_stm8$ADC_get$52 ==.
                                    265 ;	./src/spse_stm8.c: 16: }
                                    266 ; genEndFunction
                           000068   267 	Sspse_stm8$ADC_get$53 ==.
                           000068   268 	XG$ADC_get$0$0 ==.
      008238 81               [ 4]  269 	ret
                           000069   270 	Sspse_stm8$ADC_get$54 ==.
                           000069   271 	Sspse_stm8$ADC2_Select_Channel$55 ==.
                                    272 ;	./src/spse_stm8.c: 21: void ADC2_Select_Channel(ADC2_Channel_TypeDef ADC2_Channel){
                                    273 ; genLabel
                                    274 ;	-----------------------------------------
                                    275 ;	 function ADC2_Select_Channel
                                    276 ;	-----------------------------------------
                                    277 ;	Register assignment is optimal.
                                    278 ;	Stack space usage: 1 bytes.
      008239                        279 _ADC2_Select_Channel:
                           000069   280 	Sspse_stm8$ADC2_Select_Channel$56 ==.
      008239 88               [ 1]  281 	push	a
                           00006A   282 	Sspse_stm8$ADC2_Select_Channel$57 ==.
                           00006A   283 	Sspse_stm8$ADC2_Select_Channel$58 ==.
                                    284 ;	./src/spse_stm8.c: 22: uint8_t tmp = (ADC2->CSR) & (~ADC2_CSR_CH);
                                    285 ; genPointerGet
      00823A C6 54 00         [ 1]  286 	ld	a, 0x5400
                                    287 ; genAnd
      00823D A4 F0            [ 1]  288 	and	a, #0xf0
      00823F 6B 01            [ 1]  289 	ld	(0x01, sp), a
                           000071   290 	Sspse_stm8$ADC2_Select_Channel$59 ==.
                                    291 ;	./src/spse_stm8.c: 23: tmp |= ADC2_Channel | ADC2_CSR_EOC;
                                    292 ; genOr
      008241 7B 04            [ 1]  293 	ld	a, (0x04, sp)
      008243 AA 80            [ 1]  294 	or	a, #0x80
                                    295 ; genOr
      008245 1A 01            [ 1]  296 	or	a, (0x01, sp)
                                    297 ; genAssign
                           000077   298 	Sspse_stm8$ADC2_Select_Channel$60 ==.
                                    299 ;	./src/spse_stm8.c: 24: ADC2->CSR = tmp;
                                    300 ; genPointerSet
      008247 C7 54 00         [ 1]  301 	ld	0x5400, a
                                    302 ; genLabel
      00824A                        303 00101$:
                           00007A   304 	Sspse_stm8$ADC2_Select_Channel$61 ==.
                                    305 ;	./src/spse_stm8.c: 25: }
                                    306 ; genEndFunction
      00824A 84               [ 1]  307 	pop	a
                           00007B   308 	Sspse_stm8$ADC2_Select_Channel$62 ==.
                           00007B   309 	Sspse_stm8$ADC2_Select_Channel$63 ==.
                           00007B   310 	XG$ADC2_Select_Channel$0$0 ==.
      00824B 81               [ 4]  311 	ret
                           00007C   312 	Sspse_stm8$ADC2_Select_Channel$64 ==.
                           00007C   313 	Sspse_stm8$ADC2_AlignConfig$65 ==.
                                    314 ;	./src/spse_stm8.c: 30: void ADC2_AlignConfig(ADC2_Align_TypeDef ADC2_Align){
                                    315 ; genLabel
                                    316 ;	-----------------------------------------
                                    317 ;	 function ADC2_AlignConfig
                                    318 ;	-----------------------------------------
                                    319 ;	Register assignment is optimal.
                                    320 ;	Stack space usage: 0 bytes.
      00824C                        321 _ADC2_AlignConfig:
                           00007C   322 	Sspse_stm8$ADC2_AlignConfig$66 ==.
                           00007C   323 	Sspse_stm8$ADC2_AlignConfig$67 ==.
                                    324 ;	./src/spse_stm8.c: 32: ADC2->CR2 |= (uint8_t)(ADC2_Align);
                                    325 ; genPointerGet
      00824C C6 54 02         [ 1]  326 	ld	a, 0x5402
                           00007F   327 	Sspse_stm8$ADC2_AlignConfig$68 ==.
                                    328 ;	./src/spse_stm8.c: 31: if(ADC2_Align){
                                    329 ; genIfx
      00824F 0D 03            [ 1]  330 	tnz	(0x03, sp)
      008251 26 03            [ 1]  331 	jrne	00111$
      008253 CC 82 5E         [ 2]  332 	jp	00102$
      008256                        333 00111$:
                           000086   334 	Sspse_stm8$ADC2_AlignConfig$69 ==.
                           000086   335 	Sspse_stm8$ADC2_AlignConfig$70 ==.
                                    336 ;	./src/spse_stm8.c: 32: ADC2->CR2 |= (uint8_t)(ADC2_Align);
                                    337 ; genOr
      008256 1A 03            [ 1]  338 	or	a, (0x03, sp)
                                    339 ; genPointerSet
      008258 C7 54 02         [ 1]  340 	ld	0x5402, a
                           00008B   341 	Sspse_stm8$ADC2_AlignConfig$71 ==.
                                    342 ; genGoto
      00825B CC 82 63         [ 2]  343 	jp	00104$
                                    344 ; genLabel
      00825E                        345 00102$:
                           00008E   346 	Sspse_stm8$ADC2_AlignConfig$72 ==.
                           00008E   347 	Sspse_stm8$ADC2_AlignConfig$73 ==.
                                    348 ;	./src/spse_stm8.c: 34: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_ALIGN);
                                    349 ; genAnd
      00825E A4 F7            [ 1]  350 	and	a, #0xf7
                                    351 ; genPointerSet
      008260 C7 54 02         [ 1]  352 	ld	0x5402, a
                           000093   353 	Sspse_stm8$ADC2_AlignConfig$74 ==.
                                    354 ; genLabel
      008263                        355 00104$:
                           000093   356 	Sspse_stm8$ADC2_AlignConfig$75 ==.
                                    357 ;	./src/spse_stm8.c: 36: }
                                    358 ; genEndFunction
                           000093   359 	Sspse_stm8$ADC2_AlignConfig$76 ==.
                           000093   360 	XG$ADC2_AlignConfig$0$0 ==.
      008263 81               [ 4]  361 	ret
                           000094   362 	Sspse_stm8$ADC2_AlignConfig$77 ==.
                           000094   363 	Sspse_stm8$ADC2_Startup_Wait$78 ==.
                                    364 ;	./src/spse_stm8.c: 40: void ADC2_Startup_Wait(void){
                                    365 ; genLabel
                                    366 ;	-----------------------------------------
                                    367 ;	 function ADC2_Startup_Wait
                                    368 ;	-----------------------------------------
                                    369 ;	Register assignment is optimal.
                                    370 ;	Stack space usage: 0 bytes.
      008264                        371 _ADC2_Startup_Wait:
                           000094   372 	Sspse_stm8$ADC2_Startup_Wait$79 ==.
                           000094   373 	Sspse_stm8$ADC2_Startup_Wait$80 ==.
                                    374 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                    375 ; genAssign
      008264 AE 00 0F         [ 2]  376 	ldw	x, #0x000f
                           000097   377 	Sspse_stm8$ADC2_Startup_Wait$81 ==.
                                    378 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                    379 ;	genInline
      008267 9D               [ 1]  380 	nop
      008268 9D               [ 1]  381 	nop
                           000099   382 	Sspse_stm8$ADC2_Startup_Wait$82 ==.
                           000099   383 	Sspse_stm8$ADC2_Startup_Wait$83 ==.
                                    384 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                    385 ; genAssign
                                    386 ; genLabel
      008269                        387 00101$:
                           000099   388 	Sspse_stm8$ADC2_Startup_Wait$84 ==.
                                    389 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                    390 ; genMinus
      008269 5A               [ 2]  391 	decw	x
                           00009A   392 	Sspse_stm8$ADC2_Startup_Wait$85 ==.
                                    393 ;	inc/delay.h: 28: } while ( __ticks );
                                    394 ; genIfx
      00826A 5D               [ 2]  395 	tnzw	x
      00826B 27 03            [ 1]  396 	jreq	00119$
      00826D CC 82 69         [ 2]  397 	jp	00101$
      008270                        398 00119$:
                                    399 ;	inc/delay.h: 29: __asm__("nop\n");
                                    400 ;	genInline
      008270 9D               [ 1]  401 	nop
                           0000A1   402 	Sspse_stm8$ADC2_Startup_Wait$86 ==.
                           0000A1   403 	Sspse_stm8$ADC2_Startup_Wait$87 ==.
                                    404 ;	./src/spse_stm8.c: 41: _delay_us(ADC_TSTAB);
                                    405 ; genLabel
      008271                        406 00106$:
                           0000A1   407 	Sspse_stm8$ADC2_Startup_Wait$88 ==.
                                    408 ;	./src/spse_stm8.c: 42: }
                                    409 ; genEndFunction
                           0000A1   410 	Sspse_stm8$ADC2_Startup_Wait$89 ==.
                           0000A1   411 	XG$ADC2_Startup_Wait$0$0 ==.
      008271 81               [ 4]  412 	ret
                           0000A2   413 	Sspse_stm8$ADC2_Startup_Wait$90 ==.
                                    414 	.area CODE
                                    415 	.area CONST
                                    416 	.area INITIALIZER
                                    417 	.area CABS (ABS)
                                    418 
                                    419 	.area .debug_line (NOLOAD)
      00021D 00 00 01 95            420 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000221                        421 Ldebug_line_start:
      000221 00 02                  422 	.dw	2
      000223 00 00 00 81            423 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000227 01                     424 	.db	1
      000228 01                     425 	.db	1
      000229 FB                     426 	.db	-5
      00022A 0F                     427 	.db	15
      00022B 0A                     428 	.db	10
      00022C 00                     429 	.db	0
      00022D 01                     430 	.db	1
      00022E 01                     431 	.db	1
      00022F 01                     432 	.db	1
      000230 01                     433 	.db	1
      000231 00                     434 	.db	0
      000232 00                     435 	.db	0
      000233 00                     436 	.db	0
      000234 01                     437 	.db	1
      000235 43 3A 5C 50 72 6F 67   438 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      00025D 00                     439 	.db	0
      00025E 43 3A 5C 50 72 6F 67   440 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      000281 00                     441 	.db	0
      000282 00                     442 	.db	0
      000283 69 6E 63 2F 64 65 6C   443 	.ascii "inc/delay.h"
             61 79 2E 68
      00028E 00                     444 	.db	0
      00028F 00                     445 	.uleb128	0
      000290 00                     446 	.uleb128	0
      000291 00                     447 	.uleb128	0
      000292 2E 2F 73 72 63 2F 73   448 	.ascii "./src/spse_stm8.c"
             70 73 65 5F 73 74 6D
             38 2E 63
      0002A3 00                     449 	.db	0
      0002A4 00                     450 	.uleb128	0
      0002A5 00                     451 	.uleb128	0
      0002A6 00                     452 	.uleb128	0
      0002A7 00                     453 	.db	0
      0002A8                        454 Ldebug_line_stmt:
      0002A8 00                     455 	.db	0
      0002A9 05                     456 	.uleb128	5
      0002AA 02                     457 	.db	2
      0002AB 00 00 81 D0            458 	.dw	0,(Sspse_stm8$_delay_cycl$0)
      0002AF 03                     459 	.db	3
      0002B0 0D                     460 	.sleb128	13
      0002B1 01                     461 	.db	1
      0002B2 09                     462 	.db	9
      0002B3 00 00                  463 	.dw	Sspse_stm8$_delay_cycl$2-Sspse_stm8$_delay_cycl$0
      0002B5 03                     464 	.db	3
      0002B6 0B                     465 	.sleb128	11
      0002B7 01                     466 	.db	1
      0002B8 09                     467 	.db	9
      0002B9 00 02                  468 	.dw	Sspse_stm8$_delay_cycl$3-Sspse_stm8$_delay_cycl$2
      0002BB 03                     469 	.db	3
      0002BC 01                     470 	.sleb128	1
      0002BD 01                     471 	.db	1
      0002BE 09                     472 	.db	9
      0002BF 00 02                  473 	.dw	Sspse_stm8$_delay_cycl$5-Sspse_stm8$_delay_cycl$3
      0002C1 03                     474 	.db	3
      0002C2 01                     475 	.sleb128	1
      0002C3 01                     476 	.db	1
      0002C4 09                     477 	.db	9
      0002C5 00 01                  478 	.dw	Sspse_stm8$_delay_cycl$7-Sspse_stm8$_delay_cycl$5
      0002C7 03                     479 	.db	3
      0002C8 01                     480 	.sleb128	1
      0002C9 01                     481 	.db	1
      0002CA 09                     482 	.db	9
      0002CB 00 06                  483 	.dw	Sspse_stm8$_delay_cycl$8-Sspse_stm8$_delay_cycl$7
      0002CD 03                     484 	.db	3
      0002CE 01                     485 	.sleb128	1
      0002CF 01                     486 	.db	1
      0002D0 09                     487 	.db	9
      0002D1 00 01                  488 	.dw	Sspse_stm8$_delay_cycl$9-Sspse_stm8$_delay_cycl$8
      0002D3 03                     489 	.db	3
      0002D4 0A                     490 	.sleb128	10
      0002D5 01                     491 	.db	1
      0002D6 09                     492 	.db	9
      0002D7 00 01                  493 	.dw	1+Sspse_stm8$_delay_cycl$10-Sspse_stm8$_delay_cycl$9
      0002D9 00                     494 	.db	0
      0002DA 01                     495 	.uleb128	1
      0002DB 01                     496 	.db	1
      0002DC 00                     497 	.db	0
      0002DD 05                     498 	.uleb128	5
      0002DE 02                     499 	.db	2
      0002DF 00 00 81 DD            500 	.dw	0,(Sspse_stm8$_delay_us$12)
      0002E3 03                     501 	.db	3
      0002E4 28                     502 	.sleb128	40
      0002E5 01                     503 	.db	1
      0002E6 09                     504 	.db	9
      0002E7 00 2F                  505 	.dw	Sspse_stm8$_delay_us$35-Sspse_stm8$_delay_us$12
      0002E9 03                     506 	.db	3
      0002EA 71                     507 	.sleb128	-15
      0002EB 01                     508 	.db	1
      0002EC 09                     509 	.db	9
      0002ED 00 08                  510 	.dw	Sspse_stm8$_delay_us$39-Sspse_stm8$_delay_us$35
      0002EF 03                     511 	.db	3
      0002F0 10                     512 	.sleb128	16
      0002F1 01                     513 	.db	1
      0002F2 09                     514 	.db	9
      0002F3 00 00                  515 	.dw	Sspse_stm8$_delay_us$40-Sspse_stm8$_delay_us$39
      0002F5 03                     516 	.db	3
      0002F6 01                     517 	.sleb128	1
      0002F7 01                     518 	.db	1
      0002F8 09                     519 	.db	9
      0002F9 00 01                  520 	.dw	1+Sspse_stm8$_delay_us$41-Sspse_stm8$_delay_us$40
      0002FB 00                     521 	.db	0
      0002FC 01                     522 	.uleb128	1
      0002FD 01                     523 	.db	1
      0002FE 04                     524 	.db	4
      0002FF 02                     525 	.uleb128	2
      000300 00                     526 	.db	0
      000301 05                     527 	.uleb128	5
      000302 02                     528 	.db	2
      000303 00 00 82 15            529 	.dw	0,(Sspse_stm8$ADC_get$43)
      000307 03                     530 	.db	3
      000308 09                     531 	.sleb128	9
      000309 01                     532 	.db	1
      00030A 09                     533 	.db	9
      00030B 00 00                  534 	.dw	Sspse_stm8$ADC_get$45-Sspse_stm8$ADC_get$43
      00030D 03                     535 	.db	3
      00030E 01                     536 	.sleb128	1
      00030F 01                     537 	.db	1
      000310 09                     538 	.db	9
      000311 00 07                  539 	.dw	Sspse_stm8$ADC_get$48-Sspse_stm8$ADC_get$45
      000313 03                     540 	.db	3
      000314 01                     541 	.sleb128	1
      000315 01                     542 	.db	1
      000316 09                     543 	.db	9
      000317 00 08                  544 	.dw	Sspse_stm8$ADC_get$49-Sspse_stm8$ADC_get$48
      000319 03                     545 	.db	3
      00031A 01                     546 	.sleb128	1
      00031B 01                     547 	.db	1
      00031C 09                     548 	.db	9
      00031D 00 09                  549 	.dw	Sspse_stm8$ADC_get$50-Sspse_stm8$ADC_get$49
      00031F 03                     550 	.db	3
      000320 01                     551 	.sleb128	1
      000321 01                     552 	.db	1
      000322 09                     553 	.db	9
      000323 00 08                  554 	.dw	Sspse_stm8$ADC_get$51-Sspse_stm8$ADC_get$50
      000325 03                     555 	.db	3
      000326 01                     556 	.sleb128	1
      000327 01                     557 	.db	1
      000328 09                     558 	.db	9
      000329 00 03                  559 	.dw	Sspse_stm8$ADC_get$52-Sspse_stm8$ADC_get$51
      00032B 03                     560 	.db	3
      00032C 01                     561 	.sleb128	1
      00032D 01                     562 	.db	1
      00032E 09                     563 	.db	9
      00032F 00 01                  564 	.dw	1+Sspse_stm8$ADC_get$53-Sspse_stm8$ADC_get$52
      000331 00                     565 	.db	0
      000332 01                     566 	.uleb128	1
      000333 01                     567 	.db	1
      000334 04                     568 	.db	4
      000335 02                     569 	.uleb128	2
      000336 00                     570 	.db	0
      000337 05                     571 	.uleb128	5
      000338 02                     572 	.db	2
      000339 00 00 82 39            573 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$55)
      00033D 03                     574 	.db	3
      00033E 14                     575 	.sleb128	20
      00033F 01                     576 	.db	1
      000340 09                     577 	.db	9
      000341 00 01                  578 	.dw	Sspse_stm8$ADC2_Select_Channel$58-Sspse_stm8$ADC2_Select_Channel$55
      000343 03                     579 	.db	3
      000344 01                     580 	.sleb128	1
      000345 01                     581 	.db	1
      000346 09                     582 	.db	9
      000347 00 07                  583 	.dw	Sspse_stm8$ADC2_Select_Channel$59-Sspse_stm8$ADC2_Select_Channel$58
      000349 03                     584 	.db	3
      00034A 01                     585 	.sleb128	1
      00034B 01                     586 	.db	1
      00034C 09                     587 	.db	9
      00034D 00 06                  588 	.dw	Sspse_stm8$ADC2_Select_Channel$60-Sspse_stm8$ADC2_Select_Channel$59
      00034F 03                     589 	.db	3
      000350 01                     590 	.sleb128	1
      000351 01                     591 	.db	1
      000352 09                     592 	.db	9
      000353 00 03                  593 	.dw	Sspse_stm8$ADC2_Select_Channel$61-Sspse_stm8$ADC2_Select_Channel$60
      000355 03                     594 	.db	3
      000356 01                     595 	.sleb128	1
      000357 01                     596 	.db	1
      000358 09                     597 	.db	9
      000359 00 02                  598 	.dw	1+Sspse_stm8$ADC2_Select_Channel$63-Sspse_stm8$ADC2_Select_Channel$61
      00035B 00                     599 	.db	0
      00035C 01                     600 	.uleb128	1
      00035D 01                     601 	.db	1
      00035E 04                     602 	.db	4
      00035F 02                     603 	.uleb128	2
      000360 00                     604 	.db	0
      000361 05                     605 	.uleb128	5
      000362 02                     606 	.db	2
      000363 00 00 82 4C            607 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$65)
      000367 03                     608 	.db	3
      000368 1D                     609 	.sleb128	29
      000369 01                     610 	.db	1
      00036A 09                     611 	.db	9
      00036B 00 00                  612 	.dw	Sspse_stm8$ADC2_AlignConfig$67-Sspse_stm8$ADC2_AlignConfig$65
      00036D 03                     613 	.db	3
      00036E 02                     614 	.sleb128	2
      00036F 01                     615 	.db	1
      000370 09                     616 	.db	9
      000371 00 03                  617 	.dw	Sspse_stm8$ADC2_AlignConfig$68-Sspse_stm8$ADC2_AlignConfig$67
      000373 03                     618 	.db	3
      000374 7F                     619 	.sleb128	-1
      000375 01                     620 	.db	1
      000376 09                     621 	.db	9
      000377 00 07                  622 	.dw	Sspse_stm8$ADC2_AlignConfig$70-Sspse_stm8$ADC2_AlignConfig$68
      000379 03                     623 	.db	3
      00037A 01                     624 	.sleb128	1
      00037B 01                     625 	.db	1
      00037C 09                     626 	.db	9
      00037D 00 08                  627 	.dw	Sspse_stm8$ADC2_AlignConfig$73-Sspse_stm8$ADC2_AlignConfig$70
      00037F 03                     628 	.db	3
      000380 02                     629 	.sleb128	2
      000381 01                     630 	.db	1
      000382 09                     631 	.db	9
      000383 00 05                  632 	.dw	Sspse_stm8$ADC2_AlignConfig$75-Sspse_stm8$ADC2_AlignConfig$73
      000385 03                     633 	.db	3
      000386 02                     634 	.sleb128	2
      000387 01                     635 	.db	1
      000388 09                     636 	.db	9
      000389 00 01                  637 	.dw	1+Sspse_stm8$ADC2_AlignConfig$76-Sspse_stm8$ADC2_AlignConfig$75
      00038B 00                     638 	.db	0
      00038C 01                     639 	.uleb128	1
      00038D 01                     640 	.db	1
      00038E 04                     641 	.db	4
      00038F 02                     642 	.uleb128	2
      000390 00                     643 	.db	0
      000391 05                     644 	.uleb128	5
      000392 02                     645 	.db	2
      000393 00 00 82 64            646 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$78)
      000397 03                     647 	.db	3
      000398 27                     648 	.sleb128	39
      000399 01                     649 	.db	1
      00039A 04                     650 	.db	4
      00039B 01                     651 	.uleb128	1
      00039C 09                     652 	.db	9
      00039D 00 05                  653 	.dw	Sspse_stm8$ADC2_Startup_Wait$83-Sspse_stm8$ADC2_Startup_Wait$78
      00039F 03                     654 	.db	3
      0003A0 72                     655 	.sleb128	-14
      0003A1 01                     656 	.db	1
      0003A2 04                     657 	.db	4
      0003A3 02                     658 	.uleb128	2
      0003A4 09                     659 	.db	9
      0003A5 00 08                  660 	.dw	Sspse_stm8$ADC2_Startup_Wait$87-Sspse_stm8$ADC2_Startup_Wait$83
      0003A7 03                     661 	.db	3
      0003A8 0F                     662 	.sleb128	15
      0003A9 01                     663 	.db	1
      0003AA 09                     664 	.db	9
      0003AB 00 00                  665 	.dw	Sspse_stm8$ADC2_Startup_Wait$88-Sspse_stm8$ADC2_Startup_Wait$87
      0003AD 03                     666 	.db	3
      0003AE 01                     667 	.sleb128	1
      0003AF 01                     668 	.db	1
      0003B0 09                     669 	.db	9
      0003B1 00 01                  670 	.dw	1+Sspse_stm8$ADC2_Startup_Wait$89-Sspse_stm8$ADC2_Startup_Wait$88
      0003B3 00                     671 	.db	0
      0003B4 01                     672 	.uleb128	1
      0003B5 01                     673 	.db	1
      0003B6                        674 Ldebug_line_end:
                                    675 
                                    676 	.area .debug_loc (NOLOAD)
      000370                        677 Ldebug_loc_start:
      000370 00 00 82 64            678 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$79)
      000374 00 00 82 72            679 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$90)
      000378 00 02                  680 	.dw	2
      00037A 78                     681 	.db	120
      00037B 01                     682 	.sleb128	1
      00037C 00 00 00 00            683 	.dw	0,0
      000380 00 00 00 00            684 	.dw	0,0
      000384 00 00 82 4C            685 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$66)
      000388 00 00 82 64            686 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$77)
      00038C 00 02                  687 	.dw	2
      00038E 78                     688 	.db	120
      00038F 01                     689 	.sleb128	1
      000390 00 00 00 00            690 	.dw	0,0
      000394 00 00 00 00            691 	.dw	0,0
      000398 00 00 82 4B            692 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$62)
      00039C 00 00 82 4C            693 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$64)
      0003A0 00 02                  694 	.dw	2
      0003A2 78                     695 	.db	120
      0003A3 01                     696 	.sleb128	1
      0003A4 00 00 82 3A            697 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$57)
      0003A8 00 00 82 4B            698 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$62)
      0003AC 00 02                  699 	.dw	2
      0003AE 78                     700 	.db	120
      0003AF 02                     701 	.sleb128	2
      0003B0 00 00 82 39            702 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$56)
      0003B4 00 00 82 3A            703 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$57)
      0003B8 00 02                  704 	.dw	2
      0003BA 78                     705 	.db	120
      0003BB 01                     706 	.sleb128	1
      0003BC 00 00 00 00            707 	.dw	0,0
      0003C0 00 00 00 00            708 	.dw	0,0
      0003C4 00 00 82 1C            709 	.dw	0,(Sspse_stm8$ADC_get$47)
      0003C8 00 00 82 39            710 	.dw	0,(Sspse_stm8$ADC_get$54)
      0003CC 00 02                  711 	.dw	2
      0003CE 78                     712 	.db	120
      0003CF 01                     713 	.sleb128	1
      0003D0 00 00 82 18            714 	.dw	0,(Sspse_stm8$ADC_get$46)
      0003D4 00 00 82 1C            715 	.dw	0,(Sspse_stm8$ADC_get$47)
      0003D8 00 02                  716 	.dw	2
      0003DA 78                     717 	.db	120
      0003DB 02                     718 	.sleb128	2
      0003DC 00 00 82 15            719 	.dw	0,(Sspse_stm8$ADC_get$44)
      0003E0 00 00 82 18            720 	.dw	0,(Sspse_stm8$ADC_get$46)
      0003E4 00 02                  721 	.dw	2
      0003E6 78                     722 	.db	120
      0003E7 01                     723 	.sleb128	1
      0003E8 00 00 00 00            724 	.dw	0,0
      0003EC 00 00 00 00            725 	.dw	0,0
      0003F0 00 00 82 00            726 	.dw	0,(Sspse_stm8$_delay_us$29)
      0003F4 00 00 82 15            727 	.dw	0,(Sspse_stm8$_delay_us$42)
      0003F8 00 02                  728 	.dw	2
      0003FA 78                     729 	.db	120
      0003FB 01                     730 	.sleb128	1
      0003FC 00 00 81 FB            731 	.dw	0,(Sspse_stm8$_delay_us$28)
      000400 00 00 82 00            732 	.dw	0,(Sspse_stm8$_delay_us$29)
      000404 00 02                  733 	.dw	2
      000406 78                     734 	.db	120
      000407 09                     735 	.sleb128	9
      000408 00 00 81 F9            736 	.dw	0,(Sspse_stm8$_delay_us$27)
      00040C 00 00 81 FB            737 	.dw	0,(Sspse_stm8$_delay_us$28)
      000410 00 02                  738 	.dw	2
      000412 78                     739 	.db	120
      000413 07                     740 	.sleb128	7
      000414 00 00 81 F8            741 	.dw	0,(Sspse_stm8$_delay_us$26)
      000418 00 00 81 F9            742 	.dw	0,(Sspse_stm8$_delay_us$27)
      00041C 00 02                  743 	.dw	2
      00041E 78                     744 	.db	120
      00041F 05                     745 	.sleb128	5
      000420 00 00 81 F6            746 	.dw	0,(Sspse_stm8$_delay_us$25)
      000424 00 00 81 F8            747 	.dw	0,(Sspse_stm8$_delay_us$26)
      000428 00 02                  748 	.dw	2
      00042A 78                     749 	.db	120
      00042B 04                     750 	.sleb128	4
      00042C 00 00 81 F4            751 	.dw	0,(Sspse_stm8$_delay_us$24)
      000430 00 00 81 F6            752 	.dw	0,(Sspse_stm8$_delay_us$25)
      000434 00 02                  753 	.dw	2
      000436 78                     754 	.db	120
      000437 03                     755 	.sleb128	3
      000438 00 00 81 F2            756 	.dw	0,(Sspse_stm8$_delay_us$23)
      00043C 00 00 81 F4            757 	.dw	0,(Sspse_stm8$_delay_us$24)
      000440 00 02                  758 	.dw	2
      000442 78                     759 	.db	120
      000443 02                     760 	.sleb128	2
      000444 00 00 81 F0            761 	.dw	0,(Sspse_stm8$_delay_us$21)
      000448 00 00 81 F2            762 	.dw	0,(Sspse_stm8$_delay_us$23)
      00044C 00 02                  763 	.dw	2
      00044E 78                     764 	.db	120
      00044F 01                     765 	.sleb128	1
      000450 00 00 81 EB            766 	.dw	0,(Sspse_stm8$_delay_us$20)
      000454 00 00 81 F0            767 	.dw	0,(Sspse_stm8$_delay_us$21)
      000458 00 02                  768 	.dw	2
      00045A 78                     769 	.db	120
      00045B 09                     770 	.sleb128	9
      00045C 00 00 81 E9            771 	.dw	0,(Sspse_stm8$_delay_us$19)
      000460 00 00 81 EB            772 	.dw	0,(Sspse_stm8$_delay_us$20)
      000464 00 02                  773 	.dw	2
      000466 78                     774 	.db	120
      000467 08                     775 	.sleb128	8
      000468 00 00 81 E7            776 	.dw	0,(Sspse_stm8$_delay_us$18)
      00046C 00 00 81 E9            777 	.dw	0,(Sspse_stm8$_delay_us$19)
      000470 00 02                  778 	.dw	2
      000472 78                     779 	.db	120
      000473 07                     780 	.sleb128	7
      000474 00 00 81 E5            781 	.dw	0,(Sspse_stm8$_delay_us$17)
      000478 00 00 81 E7            782 	.dw	0,(Sspse_stm8$_delay_us$18)
      00047C 00 02                  783 	.dw	2
      00047E 78                     784 	.db	120
      00047F 06                     785 	.sleb128	6
      000480 00 00 81 E3            786 	.dw	0,(Sspse_stm8$_delay_us$16)
      000484 00 00 81 E5            787 	.dw	0,(Sspse_stm8$_delay_us$17)
      000488 00 02                  788 	.dw	2
      00048A 78                     789 	.db	120
      00048B 05                     790 	.sleb128	5
      00048C 00 00 81 E2            791 	.dw	0,(Sspse_stm8$_delay_us$15)
      000490 00 00 81 E3            792 	.dw	0,(Sspse_stm8$_delay_us$16)
      000494 00 02                  793 	.dw	2
      000496 78                     794 	.db	120
      000497 03                     795 	.sleb128	3
      000498 00 00 81 DD            796 	.dw	0,(Sspse_stm8$_delay_us$13)
      00049C 00 00 81 E2            797 	.dw	0,(Sspse_stm8$_delay_us$15)
      0004A0 00 02                  798 	.dw	2
      0004A2 78                     799 	.db	120
      0004A3 01                     800 	.sleb128	1
      0004A4 00 00 00 00            801 	.dw	0,0
      0004A8 00 00 00 00            802 	.dw	0,0
      0004AC 00 00 81 D0            803 	.dw	0,(Sspse_stm8$_delay_cycl$1)
      0004B0 00 00 81 DD            804 	.dw	0,(Sspse_stm8$_delay_cycl$11)
      0004B4 00 02                  805 	.dw	2
      0004B6 78                     806 	.db	120
      0004B7 01                     807 	.sleb128	1
      0004B8 00 00 00 00            808 	.dw	0,0
      0004BC 00 00 00 00            809 	.dw	0,0
                                    810 
                                    811 	.area .debug_abbrev (NOLOAD)
      0000DE                        812 Ldebug_abbrev:
      0000DE 0D                     813 	.uleb128	13
      0000DF 0B                     814 	.uleb128	11
      0000E0 01                     815 	.db	1
      0000E1 00                     816 	.uleb128	0
      0000E2 00                     817 	.uleb128	0
      0000E3 03                     818 	.uleb128	3
      0000E4 05                     819 	.uleb128	5
      0000E5 00                     820 	.db	0
      0000E6 02                     821 	.uleb128	2
      0000E7 0A                     822 	.uleb128	10
      0000E8 03                     823 	.uleb128	3
      0000E9 08                     824 	.uleb128	8
      0000EA 49                     825 	.uleb128	73
      0000EB 13                     826 	.uleb128	19
      0000EC 00                     827 	.uleb128	0
      0000ED 00                     828 	.uleb128	0
      0000EE 02                     829 	.uleb128	2
      0000EF 2E                     830 	.uleb128	46
      0000F0 01                     831 	.db	1
      0000F1 01                     832 	.uleb128	1
      0000F2 13                     833 	.uleb128	19
      0000F3 03                     834 	.uleb128	3
      0000F4 08                     835 	.uleb128	8
      0000F5 11                     836 	.uleb128	17
      0000F6 01                     837 	.uleb128	1
      0000F7 12                     838 	.uleb128	18
      0000F8 01                     839 	.uleb128	1
      0000F9 3F                     840 	.uleb128	63
      0000FA 0C                     841 	.uleb128	12
      0000FB 40                     842 	.uleb128	64
      0000FC 06                     843 	.uleb128	6
      0000FD 00                     844 	.uleb128	0
      0000FE 00                     845 	.uleb128	0
      0000FF 0A                     846 	.uleb128	10
      000100 34                     847 	.uleb128	52
      000101 00                     848 	.db	0
      000102 02                     849 	.uleb128	2
      000103 0A                     850 	.uleb128	10
      000104 03                     851 	.uleb128	3
      000105 08                     852 	.uleb128	8
      000106 49                     853 	.uleb128	73
      000107 13                     854 	.uleb128	19
      000108 00                     855 	.uleb128	0
      000109 00                     856 	.uleb128	0
      00010A 0B                     857 	.uleb128	11
      00010B 2E                     858 	.uleb128	46
      00010C 01                     859 	.db	1
      00010D 01                     860 	.uleb128	1
      00010E 13                     861 	.uleb128	19
      00010F 03                     862 	.uleb128	3
      000110 08                     863 	.uleb128	8
      000111 11                     864 	.uleb128	17
      000112 01                     865 	.uleb128	1
      000113 12                     866 	.uleb128	18
      000114 01                     867 	.uleb128	1
      000115 3F                     868 	.uleb128	63
      000116 0C                     869 	.uleb128	12
      000117 40                     870 	.uleb128	64
      000118 06                     871 	.uleb128	6
      000119 49                     872 	.uleb128	73
      00011A 13                     873 	.uleb128	19
      00011B 00                     874 	.uleb128	0
      00011C 00                     875 	.uleb128	0
      00011D 0E                     876 	.uleb128	14
      00011E 0B                     877 	.uleb128	11
      00011F 01                     878 	.db	1
      000120 01                     879 	.uleb128	1
      000121 13                     880 	.uleb128	19
      000122 00                     881 	.uleb128	0
      000123 00                     882 	.uleb128	0
      000124 06                     883 	.uleb128	6
      000125 26                     884 	.uleb128	38
      000126 00                     885 	.db	0
      000127 49                     886 	.uleb128	73
      000128 13                     887 	.uleb128	19
      000129 00                     888 	.uleb128	0
      00012A 00                     889 	.uleb128	0
      00012B 01                     890 	.uleb128	1
      00012C 11                     891 	.uleb128	17
      00012D 01                     892 	.db	1
      00012E 03                     893 	.uleb128	3
      00012F 08                     894 	.uleb128	8
      000130 10                     895 	.uleb128	16
      000131 06                     896 	.uleb128	6
      000132 13                     897 	.uleb128	19
      000133 0B                     898 	.uleb128	11
      000134 25                     899 	.uleb128	37
      000135 08                     900 	.uleb128	8
      000136 00                     901 	.uleb128	0
      000137 00                     902 	.uleb128	0
      000138 04                     903 	.uleb128	4
      000139 0B                     904 	.uleb128	11
      00013A 00                     905 	.db	0
      00013B 11                     906 	.uleb128	17
      00013C 01                     907 	.uleb128	1
      00013D 12                     908 	.uleb128	18
      00013E 01                     909 	.uleb128	1
      00013F 00                     910 	.uleb128	0
      000140 00                     911 	.uleb128	0
      000141 07                     912 	.uleb128	7
      000142 0B                     913 	.uleb128	11
      000143 01                     914 	.db	1
      000144 11                     915 	.uleb128	17
      000145 01                     916 	.uleb128	1
      000146 12                     917 	.uleb128	18
      000147 01                     918 	.uleb128	1
      000148 00                     919 	.uleb128	0
      000149 00                     920 	.uleb128	0
      00014A 08                     921 	.uleb128	8
      00014B 0B                     922 	.uleb128	11
      00014C 01                     923 	.db	1
      00014D 01                     924 	.uleb128	1
      00014E 13                     925 	.uleb128	19
      00014F 11                     926 	.uleb128	17
      000150 01                     927 	.uleb128	1
      000151 00                     928 	.uleb128	0
      000152 00                     929 	.uleb128	0
      000153 0C                     930 	.uleb128	12
      000154 2E                     931 	.uleb128	46
      000155 01                     932 	.db	1
      000156 03                     933 	.uleb128	3
      000157 08                     934 	.uleb128	8
      000158 11                     935 	.uleb128	17
      000159 01                     936 	.uleb128	1
      00015A 12                     937 	.uleb128	18
      00015B 01                     938 	.uleb128	1
      00015C 3F                     939 	.uleb128	63
      00015D 0C                     940 	.uleb128	12
      00015E 40                     941 	.uleb128	64
      00015F 06                     942 	.uleb128	6
      000160 00                     943 	.uleb128	0
      000161 00                     944 	.uleb128	0
      000162 09                     945 	.uleb128	9
      000163 0B                     946 	.uleb128	11
      000164 01                     947 	.db	1
      000165 01                     948 	.uleb128	1
      000166 13                     949 	.uleb128	19
      000167 11                     950 	.uleb128	17
      000168 01                     951 	.uleb128	1
      000169 12                     952 	.uleb128	18
      00016A 01                     953 	.uleb128	1
      00016B 00                     954 	.uleb128	0
      00016C 00                     955 	.uleb128	0
      00016D 05                     956 	.uleb128	5
      00016E 24                     957 	.uleb128	36
      00016F 00                     958 	.db	0
      000170 03                     959 	.uleb128	3
      000171 08                     960 	.uleb128	8
      000172 0B                     961 	.uleb128	11
      000173 0B                     962 	.uleb128	11
      000174 3E                     963 	.uleb128	62
      000175 0B                     964 	.uleb128	11
      000176 00                     965 	.uleb128	0
      000177 00                     966 	.uleb128	0
      000178 00                     967 	.uleb128	0
                                    968 
                                    969 	.area .debug_info (NOLOAD)
      000209 00 00 02 7D            970 	.dw	0,Ldebug_info_end-Ldebug_info_start
      00020D                        971 Ldebug_info_start:
      00020D 00 02                  972 	.dw	2
      00020F 00 00 00 DE            973 	.dw	0,(Ldebug_abbrev)
      000213 04                     974 	.db	4
      000214 01                     975 	.uleb128	1
      000215 2E 2F 73 72 63 2F 73   976 	.ascii "./src/spse_stm8.c"
             70 73 65 5F 73 74 6D
             38 2E 63
      000226 00                     977 	.db	0
      000227 00 00 02 1D            978 	.dw	0,(Ldebug_line_start+-4)
      00022B 01                     979 	.db	1
      00022C 53 44 43 43 20 76 65   980 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      000245 00                     981 	.db	0
      000246 02                     982 	.uleb128	2
      000247 00 00 00 75            983 	.dw	0,117
      00024B 5F 64 65 6C 61 79 5F   984 	.ascii "_delay_cycl"
             63 79 63 6C
      000256 00                     985 	.db	0
      000257 00 00 81 D0            986 	.dw	0,(__delay_cycl)
      00025B 00 00 81 DD            987 	.dw	0,(XFspse_stm8$_delay_cycl$0$0+1)
      00025F 00                     988 	.db	0
      000260 00 00 04 AC            989 	.dw	0,(Ldebug_loc_start+316)
      000264 03                     990 	.uleb128	3
      000265 02                     991 	.db	2
      000266 91                     992 	.db	145
      000267 02                     993 	.sleb128	2
      000268 5F 5F 74 69 63 6B 73   994 	.ascii "__ticks"
      00026F 00                     995 	.db	0
      000270 00 00 00 75            996 	.dw	0,117
      000274 04                     997 	.uleb128	4
      000275 00 00 81 D4            998 	.dw	0,(Sspse_stm8$_delay_cycl$4)
      000279 00 00 81 D5            999 	.dw	0,(Sspse_stm8$_delay_cycl$6)
      00027D 00                    1000 	.uleb128	0
      00027E 05                    1001 	.uleb128	5
      00027F 75 6E 73 69 67 6E 65  1002 	.ascii "unsigned int"
             64 20 69 6E 74
      00028B 00                    1003 	.db	0
      00028C 02                    1004 	.db	2
      00028D 07                    1005 	.db	7
      00028E 02                    1006 	.uleb128	2
      00028F 00 00 01 0C           1007 	.dw	0,268
      000293 5F 64 65 6C 61 79 5F  1008 	.ascii "_delay_us"
             75 73
      00029C 00                    1009 	.db	0
      00029D 00 00 81 DD           1010 	.dw	0,(__delay_us)
      0002A1 00 00 82 15           1011 	.dw	0,(XFspse_stm8$_delay_us$0$0+1)
      0002A5 00                    1012 	.db	0
      0002A6 00 00 03 F0           1013 	.dw	0,(Ldebug_loc_start+128)
      0002AA 06                    1014 	.uleb128	6
      0002AB 00 00 00 75           1015 	.dw	0,117
      0002AF 03                    1016 	.uleb128	3
      0002B0 02                    1017 	.db	2
      0002B1 91                    1018 	.db	145
      0002B2 02                    1019 	.sleb128	2
      0002B3 5F 5F 75 73           1020 	.ascii "__us"
      0002B7 00                    1021 	.db	0
      0002B8 00 00 00 A1           1022 	.dw	0,161
      0002BC 07                    1023 	.uleb128	7
      0002BD 00 00 81 DD           1024 	.dw	0,(Sspse_stm8$_delay_us$14)
      0002C1 00 00 82 09           1025 	.dw	0,(Sspse_stm8$_delay_us$31)
      0002C5 08                    1026 	.uleb128	8
      0002C6 00 00 00 F1           1027 	.dw	0,241
      0002CA 00 00 82 0A           1028 	.dw	0,(Sspse_stm8$_delay_us$32)
      0002CE 09                    1029 	.uleb128	9
      0002CF 00 00 00 DC           1030 	.dw	0,220
      0002D3 00 00 82 0A           1031 	.dw	0,(Sspse_stm8$_delay_us$33)
      0002D7 00 00 82 14           1032 	.dw	0,(Sspse_stm8$_delay_us$38)
      0002DB 04                    1033 	.uleb128	4
      0002DC 00 00 82 0C           1034 	.dw	0,(Sspse_stm8$_delay_us$36)
      0002E0 00 00 82 0D           1035 	.dw	0,(Sspse_stm8$_delay_us$37)
      0002E4 00                    1036 	.uleb128	0
      0002E5 0A                    1037 	.uleb128	10
      0002E6 06                    1038 	.db	6
      0002E7 52                    1039 	.db	82
      0002E8 93                    1040 	.db	147
      0002E9 01                    1041 	.uleb128	1
      0002EA 51                    1042 	.db	81
      0002EB 93                    1043 	.db	147
      0002EC 01                    1044 	.uleb128	1
      0002ED 5F 5F 74 69 63 6B 73  1045 	.ascii "__ticks"
      0002F4 00                    1046 	.db	0
      0002F5 00 00 00 75           1047 	.dw	0,117
      0002F9 00                    1048 	.uleb128	0
      0002FA 0A                    1049 	.uleb128	10
      0002FB 06                    1050 	.db	6
      0002FC 52                    1051 	.db	82
      0002FD 93                    1052 	.db	147
      0002FE 01                    1053 	.uleb128	1
      0002FF 51                    1054 	.db	81
      000300 93                    1055 	.db	147
      000301 01                    1056 	.uleb128	1
      000302 5F 5F 31 33 31 30 37  1057 	.ascii "__1310720010"
             32 30 30 31 30
      00030E 00                    1058 	.db	0
      00030F 00 00 00 75           1059 	.dw	0,117
      000313 00                    1060 	.uleb128	0
      000314 00                    1061 	.uleb128	0
      000315 0B                    1062 	.uleb128	11
      000316 00 00 01 40           1063 	.dw	0,320
      00031A 41 44 43 5F 67 65 74  1064 	.ascii "ADC_get"
      000321 00                    1065 	.db	0
      000322 00 00 82 15           1066 	.dw	0,(_ADC_get)
      000326 00 00 82 39           1067 	.dw	0,(XG$ADC_get$0$0+1)
      00032A 01                    1068 	.db	1
      00032B 00 00 03 C4           1069 	.dw	0,(Ldebug_loc_start+84)
      00032F 00 00 00 75           1070 	.dw	0,117
      000333 03                    1071 	.uleb128	3
      000334 02                    1072 	.db	2
      000335 91                    1073 	.db	145
      000336 02                    1074 	.sleb128	2
      000337 41 44 43 32 5F 43 68  1075 	.ascii "ADC2_Channel"
             61 6E 6E 65 6C
      000343 00                    1076 	.db	0
      000344 00 00 01 40           1077 	.dw	0,320
      000348 00                    1078 	.uleb128	0
      000349 05                    1079 	.uleb128	5
      00034A 75 6E 73 69 67 6E 65  1080 	.ascii "unsigned char"
             64 20 63 68 61 72
      000357 00                    1081 	.db	0
      000358 01                    1082 	.db	1
      000359 08                    1083 	.db	8
      00035A 02                    1084 	.uleb128	2
      00035B 00 00 01 98           1085 	.dw	0,408
      00035F 41 44 43 32 5F 53 65  1086 	.ascii "ADC2_Select_Channel"
             6C 65 63 74 5F 43 68
             61 6E 6E 65 6C
      000372 00                    1087 	.db	0
      000373 00 00 82 39           1088 	.dw	0,(_ADC2_Select_Channel)
      000377 00 00 82 4C           1089 	.dw	0,(XG$ADC2_Select_Channel$0$0+1)
      00037B 01                    1090 	.db	1
      00037C 00 00 03 98           1091 	.dw	0,(Ldebug_loc_start+40)
      000380 03                    1092 	.uleb128	3
      000381 02                    1093 	.db	2
      000382 91                    1094 	.db	145
      000383 02                    1095 	.sleb128	2
      000384 41 44 43 32 5F 43 68  1096 	.ascii "ADC2_Channel"
             61 6E 6E 65 6C
      000390 00                    1097 	.db	0
      000391 00 00 01 40           1098 	.dw	0,320
      000395 0A                    1099 	.uleb128	10
      000396 01                    1100 	.db	1
      000397 50                    1101 	.db	80
      000398 74 6D 70              1102 	.ascii "tmp"
      00039B 00                    1103 	.db	0
      00039C 00 00 01 40           1104 	.dw	0,320
      0003A0 00                    1105 	.uleb128	0
      0003A1 02                    1106 	.uleb128	2
      0003A2 00 00 01 E1           1107 	.dw	0,481
      0003A6 41 44 43 32 5F 41 6C  1108 	.ascii "ADC2_AlignConfig"
             69 67 6E 43 6F 6E 66
             69 67
      0003B6 00                    1109 	.db	0
      0003B7 00 00 82 4C           1110 	.dw	0,(_ADC2_AlignConfig)
      0003BB 00 00 82 64           1111 	.dw	0,(XG$ADC2_AlignConfig$0$0+1)
      0003BF 01                    1112 	.db	1
      0003C0 00 00 03 84           1113 	.dw	0,(Ldebug_loc_start+20)
      0003C4 03                    1114 	.uleb128	3
      0003C5 02                    1115 	.db	2
      0003C6 91                    1116 	.db	145
      0003C7 02                    1117 	.sleb128	2
      0003C8 41 44 43 32 5F 41 6C  1118 	.ascii "ADC2_Align"
             69 67 6E
      0003D2 00                    1119 	.db	0
      0003D3 00 00 01 40           1120 	.dw	0,320
      0003D7 04                    1121 	.uleb128	4
      0003D8 00 00 82 56           1122 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$69)
      0003DC 00 00 82 5B           1123 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$71)
      0003E0 04                    1124 	.uleb128	4
      0003E1 00 00 82 5E           1125 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$72)
      0003E5 00 00 82 63           1126 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$74)
      0003E9 00                    1127 	.uleb128	0
      0003EA 0C                    1128 	.uleb128	12
      0003EB 41 44 43 32 5F 53 74  1129 	.ascii "ADC2_Startup_Wait"
             61 72 74 75 70 5F 57
             61 69 74
      0003FC 00                    1130 	.db	0
      0003FD 00 00 82 64           1131 	.dw	0,(_ADC2_Startup_Wait)
      000401 00 00 82 72           1132 	.dw	0,(XG$ADC2_Startup_Wait$0$0+1)
      000405 01                    1133 	.db	1
      000406 00 00 03 70           1134 	.dw	0,(Ldebug_loc_start)
      00040A 0D                    1135 	.uleb128	13
      00040B 0E                    1136 	.uleb128	14
      00040C 00 00 02 67           1137 	.dw	0,615
      000410 0E                    1138 	.uleb128	14
      000411 00 00 02 59           1139 	.dw	0,601
      000415 0D                    1140 	.uleb128	13
      000416 08                    1141 	.uleb128	8
      000417 00 00 02 42           1142 	.dw	0,578
      00041B 00 00 82 64           1143 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$80)
      00041F 09                    1144 	.uleb128	9
      000420 00 00 02 2D           1145 	.dw	0,557
      000424 00 00 82 67           1146 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$81)
      000428 00 00 82 71           1147 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$86)
      00042C 04                    1148 	.uleb128	4
      00042D 00 00 82 69           1149 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$84)
      000431 00 00 82 6A           1150 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$85)
      000435 00                    1151 	.uleb128	0
      000436 0A                    1152 	.uleb128	10
      000437 06                    1153 	.db	6
      000438 52                    1154 	.db	82
      000439 93                    1155 	.db	147
      00043A 01                    1156 	.uleb128	1
      00043B 51                    1157 	.db	81
      00043C 93                    1158 	.db	147
      00043D 01                    1159 	.uleb128	1
      00043E 5F 5F 74 69 63 6B 73  1160 	.ascii "__ticks"
      000445 00                    1161 	.db	0
      000446 00 00 00 75           1162 	.dw	0,117
      00044A 00                    1163 	.uleb128	0
      00044B 0A                    1164 	.uleb128	10
      00044C 02                    1165 	.db	2
      00044D 91                    1166 	.db	145
      00044E 00                    1167 	.sleb128	0
      00044F 5F 5F 31 33 31 30 37  1168 	.ascii "__1310720010"
             32 30 30 31 30
      00045B 00                    1169 	.db	0
      00045C 00 00 00 75           1170 	.dw	0,117
      000460 00                    1171 	.uleb128	0
      000461 00                    1172 	.uleb128	0
      000462 0A                    1173 	.uleb128	10
      000463 02                    1174 	.db	2
      000464 91                    1175 	.db	145
      000465 00                    1176 	.sleb128	0
      000466 5F 5F 75 73           1177 	.ascii "__us"
      00046A 00                    1178 	.db	0
      00046B 00 00 00 A1           1179 	.dw	0,161
      00046F 00                    1180 	.uleb128	0
      000470 0A                    1181 	.uleb128	10
      000471 02                    1182 	.db	2
      000472 91                    1183 	.db	145
      000473 00                    1184 	.sleb128	0
      000474 5F 5F 31 33 31 30 37  1185 	.ascii "__1310720012"
             32 30 30 31 32
      000480 00                    1186 	.db	0
      000481 00 00 00 A1           1187 	.dw	0,161
      000485 00                    1188 	.uleb128	0
      000486 00                    1189 	.uleb128	0
      000487 00                    1190 	.uleb128	0
      000488 00                    1191 	.uleb128	0
      000489 00                    1192 	.uleb128	0
      00048A                       1193 Ldebug_info_end:
                                   1194 
                                   1195 	.area .debug_pubnames (NOLOAD)
      00007C 00 00 00 5D           1196 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000080                       1197 Ldebug_pubnames_start:
      000080 00 02                 1198 	.dw	2
      000082 00 00 02 09           1199 	.dw	0,(Ldebug_info_start-4)
      000086 00 00 02 81           1200 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      00008A 00 00 01 0C           1201 	.dw	0,268
      00008E 41 44 43 5F 67 65 74  1202 	.ascii "ADC_get"
      000095 00                    1203 	.db	0
      000096 00 00 01 51           1204 	.dw	0,337
      00009A 41 44 43 32 5F 53 65  1205 	.ascii "ADC2_Select_Channel"
             6C 65 63 74 5F 43 68
             61 6E 6E 65 6C
      0000AD 00                    1206 	.db	0
      0000AE 00 00 01 98           1207 	.dw	0,408
      0000B2 41 44 43 32 5F 41 6C  1208 	.ascii "ADC2_AlignConfig"
             69 67 6E 43 6F 6E 66
             69 67
      0000C2 00                    1209 	.db	0
      0000C3 00 00 01 E1           1210 	.dw	0,481
      0000C7 41 44 43 32 5F 53 74  1211 	.ascii "ADC2_Startup_Wait"
             61 72 74 75 70 5F 57
             61 69 74
      0000D8 00                    1212 	.db	0
      0000D9 00 00 00 00           1213 	.dw	0,0
      0000DD                       1214 Ldebug_pubnames_end:
                                   1215 
                                   1216 	.area .debug_frame (NOLOAD)
      000294 00 00                 1217 	.dw	0
      000296 00 0E                 1218 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000298                       1219 Ldebug_CIE0_start:
      000298 FF FF                 1220 	.dw	0xffff
      00029A FF FF                 1221 	.dw	0xffff
      00029C 01                    1222 	.db	1
      00029D 00                    1223 	.db	0
      00029E 01                    1224 	.uleb128	1
      00029F 7F                    1225 	.sleb128	-1
      0002A0 09                    1226 	.db	9
      0002A1 0C                    1227 	.db	12
      0002A2 08                    1228 	.uleb128	8
      0002A3 02                    1229 	.uleb128	2
      0002A4 89                    1230 	.db	137
      0002A5 01                    1231 	.uleb128	1
      0002A6                       1232 Ldebug_CIE0_end:
      0002A6 00 00 00 13           1233 	.dw	0,19
      0002AA 00 00 02 94           1234 	.dw	0,(Ldebug_CIE0_start-4)
      0002AE 00 00 82 64           1235 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$79)	;initial loc
      0002B2 00 00 00 0E           1236 	.dw	0,Sspse_stm8$ADC2_Startup_Wait$90-Sspse_stm8$ADC2_Startup_Wait$79
      0002B6 01                    1237 	.db	1
      0002B7 00 00 82 64           1238 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$79)
      0002BB 0E                    1239 	.db	14
      0002BC 02                    1240 	.uleb128	2
                                   1241 
                                   1242 	.area .debug_frame (NOLOAD)
      0002BD 00 00                 1243 	.dw	0
      0002BF 00 0E                 1244 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0002C1                       1245 Ldebug_CIE1_start:
      0002C1 FF FF                 1246 	.dw	0xffff
      0002C3 FF FF                 1247 	.dw	0xffff
      0002C5 01                    1248 	.db	1
      0002C6 00                    1249 	.db	0
      0002C7 01                    1250 	.uleb128	1
      0002C8 7F                    1251 	.sleb128	-1
      0002C9 09                    1252 	.db	9
      0002CA 0C                    1253 	.db	12
      0002CB 08                    1254 	.uleb128	8
      0002CC 02                    1255 	.uleb128	2
      0002CD 89                    1256 	.db	137
      0002CE 01                    1257 	.uleb128	1
      0002CF                       1258 Ldebug_CIE1_end:
      0002CF 00 00 00 13           1259 	.dw	0,19
      0002D3 00 00 02 BD           1260 	.dw	0,(Ldebug_CIE1_start-4)
      0002D7 00 00 82 4C           1261 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$66)	;initial loc
      0002DB 00 00 00 18           1262 	.dw	0,Sspse_stm8$ADC2_AlignConfig$77-Sspse_stm8$ADC2_AlignConfig$66
      0002DF 01                    1263 	.db	1
      0002E0 00 00 82 4C           1264 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$66)
      0002E4 0E                    1265 	.db	14
      0002E5 02                    1266 	.uleb128	2
                                   1267 
                                   1268 	.area .debug_frame (NOLOAD)
      0002E6 00 00                 1269 	.dw	0
      0002E8 00 0E                 1270 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      0002EA                       1271 Ldebug_CIE2_start:
      0002EA FF FF                 1272 	.dw	0xffff
      0002EC FF FF                 1273 	.dw	0xffff
      0002EE 01                    1274 	.db	1
      0002EF 00                    1275 	.db	0
      0002F0 01                    1276 	.uleb128	1
      0002F1 7F                    1277 	.sleb128	-1
      0002F2 09                    1278 	.db	9
      0002F3 0C                    1279 	.db	12
      0002F4 08                    1280 	.uleb128	8
      0002F5 02                    1281 	.uleb128	2
      0002F6 89                    1282 	.db	137
      0002F7 01                    1283 	.uleb128	1
      0002F8                       1284 Ldebug_CIE2_end:
      0002F8 00 00 00 21           1285 	.dw	0,33
      0002FC 00 00 02 E6           1286 	.dw	0,(Ldebug_CIE2_start-4)
      000300 00 00 82 39           1287 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$56)	;initial loc
      000304 00 00 00 13           1288 	.dw	0,Sspse_stm8$ADC2_Select_Channel$64-Sspse_stm8$ADC2_Select_Channel$56
      000308 01                    1289 	.db	1
      000309 00 00 82 39           1290 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$56)
      00030D 0E                    1291 	.db	14
      00030E 02                    1292 	.uleb128	2
      00030F 01                    1293 	.db	1
      000310 00 00 82 3A           1294 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$57)
      000314 0E                    1295 	.db	14
      000315 03                    1296 	.uleb128	3
      000316 01                    1297 	.db	1
      000317 00 00 82 4B           1298 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$62)
      00031B 0E                    1299 	.db	14
      00031C 02                    1300 	.uleb128	2
                                   1301 
                                   1302 	.area .debug_frame (NOLOAD)
      00031D 00 00                 1303 	.dw	0
      00031F 00 0E                 1304 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      000321                       1305 Ldebug_CIE3_start:
      000321 FF FF                 1306 	.dw	0xffff
      000323 FF FF                 1307 	.dw	0xffff
      000325 01                    1308 	.db	1
      000326 00                    1309 	.db	0
      000327 01                    1310 	.uleb128	1
      000328 7F                    1311 	.sleb128	-1
      000329 09                    1312 	.db	9
      00032A 0C                    1313 	.db	12
      00032B 08                    1314 	.uleb128	8
      00032C 02                    1315 	.uleb128	2
      00032D 89                    1316 	.db	137
      00032E 01                    1317 	.uleb128	1
      00032F                       1318 Ldebug_CIE3_end:
      00032F 00 00 00 21           1319 	.dw	0,33
      000333 00 00 03 1D           1320 	.dw	0,(Ldebug_CIE3_start-4)
      000337 00 00 82 15           1321 	.dw	0,(Sspse_stm8$ADC_get$44)	;initial loc
      00033B 00 00 00 24           1322 	.dw	0,Sspse_stm8$ADC_get$54-Sspse_stm8$ADC_get$44
      00033F 01                    1323 	.db	1
      000340 00 00 82 15           1324 	.dw	0,(Sspse_stm8$ADC_get$44)
      000344 0E                    1325 	.db	14
      000345 02                    1326 	.uleb128	2
      000346 01                    1327 	.db	1
      000347 00 00 82 18           1328 	.dw	0,(Sspse_stm8$ADC_get$46)
      00034B 0E                    1329 	.db	14
      00034C 03                    1330 	.uleb128	3
      00034D 01                    1331 	.db	1
      00034E 00 00 82 1C           1332 	.dw	0,(Sspse_stm8$ADC_get$47)
      000352 0E                    1333 	.db	14
      000353 02                    1334 	.uleb128	2
                                   1335 
                                   1336 	.area .debug_frame (NOLOAD)
      000354 00 00                 1337 	.dw	0
      000356 00 0E                 1338 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      000358                       1339 Ldebug_CIE4_start:
      000358 FF FF                 1340 	.dw	0xffff
      00035A FF FF                 1341 	.dw	0xffff
      00035C 01                    1342 	.db	1
      00035D 00                    1343 	.db	0
      00035E 01                    1344 	.uleb128	1
      00035F 7F                    1345 	.sleb128	-1
      000360 09                    1346 	.db	9
      000361 0C                    1347 	.db	12
      000362 08                    1348 	.uleb128	8
      000363 02                    1349 	.uleb128	2
      000364 89                    1350 	.db	137
      000365 01                    1351 	.uleb128	1
      000366                       1352 Ldebug_CIE4_end:
      000366 00 00 00 75           1353 	.dw	0,117
      00036A 00 00 03 54           1354 	.dw	0,(Ldebug_CIE4_start-4)
      00036E 00 00 81 DD           1355 	.dw	0,(Sspse_stm8$_delay_us$13)	;initial loc
      000372 00 00 00 38           1356 	.dw	0,Sspse_stm8$_delay_us$42-Sspse_stm8$_delay_us$13
      000376 01                    1357 	.db	1
      000377 00 00 81 DD           1358 	.dw	0,(Sspse_stm8$_delay_us$13)
      00037B 0E                    1359 	.db	14
      00037C 02                    1360 	.uleb128	2
      00037D 01                    1361 	.db	1
      00037E 00 00 81 E2           1362 	.dw	0,(Sspse_stm8$_delay_us$15)
      000382 0E                    1363 	.db	14
      000383 04                    1364 	.uleb128	4
      000384 01                    1365 	.db	1
      000385 00 00 81 E3           1366 	.dw	0,(Sspse_stm8$_delay_us$16)
      000389 0E                    1367 	.db	14
      00038A 06                    1368 	.uleb128	6
      00038B 01                    1369 	.db	1
      00038C 00 00 81 E5           1370 	.dw	0,(Sspse_stm8$_delay_us$17)
      000390 0E                    1371 	.db	14
      000391 07                    1372 	.uleb128	7
      000392 01                    1373 	.db	1
      000393 00 00 81 E7           1374 	.dw	0,(Sspse_stm8$_delay_us$18)
      000397 0E                    1375 	.db	14
      000398 08                    1376 	.uleb128	8
      000399 01                    1377 	.db	1
      00039A 00 00 81 E9           1378 	.dw	0,(Sspse_stm8$_delay_us$19)
      00039E 0E                    1379 	.db	14
      00039F 09                    1380 	.uleb128	9
      0003A0 01                    1381 	.db	1
      0003A1 00 00 81 EB           1382 	.dw	0,(Sspse_stm8$_delay_us$20)
      0003A5 0E                    1383 	.db	14
      0003A6 0A                    1384 	.uleb128	10
      0003A7 01                    1385 	.db	1
      0003A8 00 00 81 F0           1386 	.dw	0,(Sspse_stm8$_delay_us$21)
      0003AC 0E                    1387 	.db	14
      0003AD 02                    1388 	.uleb128	2
      0003AE 01                    1389 	.db	1
      0003AF 00 00 81 F2           1390 	.dw	0,(Sspse_stm8$_delay_us$23)
      0003B3 0E                    1391 	.db	14
      0003B4 03                    1392 	.uleb128	3
      0003B5 01                    1393 	.db	1
      0003B6 00 00 81 F4           1394 	.dw	0,(Sspse_stm8$_delay_us$24)
      0003BA 0E                    1395 	.db	14
      0003BB 04                    1396 	.uleb128	4
      0003BC 01                    1397 	.db	1
      0003BD 00 00 81 F6           1398 	.dw	0,(Sspse_stm8$_delay_us$25)
      0003C1 0E                    1399 	.db	14
      0003C2 05                    1400 	.uleb128	5
      0003C3 01                    1401 	.db	1
      0003C4 00 00 81 F8           1402 	.dw	0,(Sspse_stm8$_delay_us$26)
      0003C8 0E                    1403 	.db	14
      0003C9 06                    1404 	.uleb128	6
      0003CA 01                    1405 	.db	1
      0003CB 00 00 81 F9           1406 	.dw	0,(Sspse_stm8$_delay_us$27)
      0003CF 0E                    1407 	.db	14
      0003D0 08                    1408 	.uleb128	8
      0003D1 01                    1409 	.db	1
      0003D2 00 00 81 FB           1410 	.dw	0,(Sspse_stm8$_delay_us$28)
      0003D6 0E                    1411 	.db	14
      0003D7 0A                    1412 	.uleb128	10
      0003D8 01                    1413 	.db	1
      0003D9 00 00 82 00           1414 	.dw	0,(Sspse_stm8$_delay_us$29)
      0003DD 0E                    1415 	.db	14
      0003DE 02                    1416 	.uleb128	2
                                   1417 
                                   1418 	.area .debug_frame (NOLOAD)
      0003DF 00 00                 1419 	.dw	0
      0003E1 00 0E                 1420 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      0003E3                       1421 Ldebug_CIE5_start:
      0003E3 FF FF                 1422 	.dw	0xffff
      0003E5 FF FF                 1423 	.dw	0xffff
      0003E7 01                    1424 	.db	1
      0003E8 00                    1425 	.db	0
      0003E9 01                    1426 	.uleb128	1
      0003EA 7F                    1427 	.sleb128	-1
      0003EB 09                    1428 	.db	9
      0003EC 0C                    1429 	.db	12
      0003ED 08                    1430 	.uleb128	8
      0003EE 02                    1431 	.uleb128	2
      0003EF 89                    1432 	.db	137
      0003F0 01                    1433 	.uleb128	1
      0003F1                       1434 Ldebug_CIE5_end:
      0003F1 00 00 00 13           1435 	.dw	0,19
      0003F5 00 00 03 DF           1436 	.dw	0,(Ldebug_CIE5_start-4)
      0003F9 00 00 81 D0           1437 	.dw	0,(Sspse_stm8$_delay_cycl$1)	;initial loc
      0003FD 00 00 00 0D           1438 	.dw	0,Sspse_stm8$_delay_cycl$11-Sspse_stm8$_delay_cycl$1
      000401 01                    1439 	.db	1
      000402 00 00 81 D0           1440 	.dw	0,(Sspse_stm8$_delay_cycl$1)
      000406 0E                    1441 	.db	14
      000407 02                    1442 	.uleb128	2

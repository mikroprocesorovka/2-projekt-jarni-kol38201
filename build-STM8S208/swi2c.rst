                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module swi2c
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _GPIO_ReadInputPin
                                     12 	.globl _GPIO_WriteLow
                                     13 	.globl _GPIO_WriteHigh
                                     14 	.globl _GPIO_Init
                                     15 	.globl _swi2c_read_buf
                                     16 	.globl _swi2c_write_buf
                                     17 	.globl _swi2c_test_slave
                                     18 	.globl _swi2c_init
                                     19 	.globl _swi2c_readbit
                                     20 	.globl _swi2c_writebit
                                     21 	.globl _swi2c_RESTART
                                     22 	.globl _swi2c_START
                                     23 	.globl _swi2c_STOP
                                     24 	.globl _swi2c_recover
                                     25 ;--------------------------------------------------------
                                     26 ; ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area DATA
                                     29 ;--------------------------------------------------------
                                     30 ; ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area INITIALIZED
                                     33 ;--------------------------------------------------------
                                     34 ; absolute external ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area DABS (ABS)
                                     37 
                                     38 ; default segment ordering for linker
                                     39 	.area HOME
                                     40 	.area GSINIT
                                     41 	.area GSFINAL
                                     42 	.area CONST
                                     43 	.area INITIALIZER
                                     44 	.area CODE
                                     45 
                                     46 ;--------------------------------------------------------
                                     47 ; global & static initialisations
                                     48 ;--------------------------------------------------------
                                     49 	.area HOME
                                     50 	.area GSINIT
                                     51 	.area GSFINAL
                                     52 	.area GSINIT
                                     53 ;--------------------------------------------------------
                                     54 ; Home
                                     55 ;--------------------------------------------------------
                                     56 	.area HOME
                                     57 	.area HOME
                                     58 ;--------------------------------------------------------
                                     59 ; code
                                     60 ;--------------------------------------------------------
                                     61 	.area CODE
                           000000    62 	Sswi2c$_delay_cycl$0 ==.
                                     63 ;	inc/delay.h: 14: static @inline void _delay_cycl( unsigned short __ticks )
                                     64 ; genLabel
                                     65 ;	-----------------------------------------
                                     66 ;	 function _delay_cycl
                                     67 ;	-----------------------------------------
                                     68 ;	Register assignment is optimal.
                                     69 ;	Stack space usage: 0 bytes.
      008770                         70 __delay_cycl:
                           000000    71 	Sswi2c$_delay_cycl$1 ==.
                           000000    72 	Sswi2c$_delay_cycl$2 ==.
                                     73 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                     74 ;	genInline
      008770 9D               [ 1]   75 	nop
      008771 9D               [ 1]   76 	nop
                           000002    77 	Sswi2c$_delay_cycl$3 ==.
                                     78 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                     79 ; genAssign
      008772 1E 03            [ 2]   80 	ldw	x, (0x03, sp)
                                     81 ; genLabel
      008774                         82 00101$:
                           000004    83 	Sswi2c$_delay_cycl$4 ==.
                           000004    84 	Sswi2c$_delay_cycl$5 ==.
                                     85 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                     86 ; genMinus
      008774 5A               [ 2]   87 	decw	x
                           000005    88 	Sswi2c$_delay_cycl$6 ==.
                           000005    89 	Sswi2c$_delay_cycl$7 ==.
                                     90 ;	inc/delay.h: 28: } while ( __ticks );
                                     91 ; genIfx
      008775 5D               [ 2]   92 	tnzw	x
      008776 27 03            [ 1]   93 	jreq	00117$
      008778 CC 87 74         [ 2]   94 	jp	00101$
      00877B                         95 00117$:
                           00000B    96 	Sswi2c$_delay_cycl$8 ==.
                                     97 ;	inc/delay.h: 29: __asm__("nop\n");
                                     98 ;	genInline
      00877B 9D               [ 1]   99 	nop
                                    100 ; genLabel
      00877C                        101 00104$:
                           00000C   102 	Sswi2c$_delay_cycl$9 ==.
                                    103 ;	inc/delay.h: 39: }
                                    104 ; genEndFunction
                           00000C   105 	Sswi2c$_delay_cycl$10 ==.
                           00000C   106 	XFswi2c$_delay_cycl$0$0 ==.
      00877C 81               [ 4]  107 	ret
                           00000D   108 	Sswi2c$_delay_cycl$11 ==.
                           00000D   109 	Sswi2c$_delay_us$12 ==.
                                    110 ;	inc/delay.h: 41: static @inline void _delay_us( const unsigned short __us ){
                                    111 ; genLabel
                                    112 ;	-----------------------------------------
                                    113 ;	 function _delay_us
                                    114 ;	-----------------------------------------
                                    115 ;	Register assignment might be sub-optimal.
                                    116 ;	Stack space usage: 0 bytes.
      00877D                        117 __delay_us:
                           00000D   118 	Sswi2c$_delay_us$13 ==.
                           00000D   119 	Sswi2c$_delay_us$14 ==.
                                    120 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                    121 ; genCast
                                    122 ; genAssign
      00877D 16 03            [ 2]  123 	ldw	y, (0x03, sp)
      00877F 5F               [ 1]  124 	clrw	x
                                    125 ; genIPush
      008780 90 89            [ 2]  126 	pushw	y
                           000012   127 	Sswi2c$_delay_us$15 ==.
      008782 89               [ 2]  128 	pushw	x
                           000013   129 	Sswi2c$_delay_us$16 ==.
                                    130 ; genIPush
      008783 4B 00            [ 1]  131 	push	#0x00
                           000015   132 	Sswi2c$_delay_us$17 ==.
      008785 4B 24            [ 1]  133 	push	#0x24
                           000017   134 	Sswi2c$_delay_us$18 ==.
      008787 4B F4            [ 1]  135 	push	#0xf4
                           000019   136 	Sswi2c$_delay_us$19 ==.
      008789 4B 00            [ 1]  137 	push	#0x00
                           00001B   138 	Sswi2c$_delay_us$20 ==.
                                    139 ; genCall
      00878B CD A4 C6         [ 4]  140 	call	__mullong
      00878E 5B 08            [ 2]  141 	addw	sp, #8
                           000020   142 	Sswi2c$_delay_us$21 ==.
                           000020   143 	Sswi2c$_delay_us$22 ==.
                                    144 ; genCast
                                    145 ; genAssign
                                    146 ; genIPush
      008790 4B 40            [ 1]  147 	push	#0x40
                           000022   148 	Sswi2c$_delay_us$23 ==.
      008792 4B 42            [ 1]  149 	push	#0x42
                           000024   150 	Sswi2c$_delay_us$24 ==.
      008794 4B 0F            [ 1]  151 	push	#0x0f
                           000026   152 	Sswi2c$_delay_us$25 ==.
      008796 4B 00            [ 1]  153 	push	#0x00
                           000028   154 	Sswi2c$_delay_us$26 ==.
                                    155 ; genIPush
      008798 89               [ 2]  156 	pushw	x
                           000029   157 	Sswi2c$_delay_us$27 ==.
      008799 90 89            [ 2]  158 	pushw	y
                           00002B   159 	Sswi2c$_delay_us$28 ==.
                                    160 ; genCall
      00879B CD A4 48         [ 4]  161 	call	__divulong
      00879E 5B 08            [ 2]  162 	addw	sp, #8
                           000030   163 	Sswi2c$_delay_us$29 ==.
                           000030   164 	Sswi2c$_delay_us$30 ==.
                                    165 ; genRightShiftLiteral
      0087A0 90 54            [ 2]  166 	srlw	y
      0087A2 56               [ 2]  167 	rrcw	x
      0087A3 90 54            [ 2]  168 	srlw	y
      0087A5 56               [ 2]  169 	rrcw	x
      0087A6 90 54            [ 2]  170 	srlw	y
      0087A8 56               [ 2]  171 	rrcw	x
                                    172 ; genCast
                                    173 ; genAssign
                           000039   174 	Sswi2c$_delay_us$31 ==.
                                    175 ; genPlus
      0087A9 5C               [ 1]  176 	incw	x
                                    177 ; genAssign
                                    178 ; genAssign
                           00003A   179 	Sswi2c$_delay_us$32 ==.
                                    180 ; genAssign
                           00003A   181 	Sswi2c$_delay_us$33 ==.
                                    182 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                    183 ;	genInline
      0087AA 9D               [ 1]  184 	nop
      0087AB 9D               [ 1]  185 	nop
                           00003C   186 	Sswi2c$_delay_us$34 ==.
                           00003C   187 	Sswi2c$_delay_us$35 ==.
                                    188 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                    189 ; genAssign
                                    190 ; genLabel
      0087AC                        191 00101$:
                           00003C   192 	Sswi2c$_delay_us$36 ==.
                                    193 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                    194 ; genMinus
      0087AC 5A               [ 2]  195 	decw	x
                           00003D   196 	Sswi2c$_delay_us$37 ==.
                                    197 ;	inc/delay.h: 28: } while ( __ticks );
                                    198 ; genIfx
      0087AD 5D               [ 2]  199 	tnzw	x
      0087AE 27 03            [ 1]  200 	jreq	00118$
      0087B0 CC 87 AC         [ 2]  201 	jp	00101$
      0087B3                        202 00118$:
                                    203 ;	inc/delay.h: 29: __asm__("nop\n");
                                    204 ;	genInline
      0087B3 9D               [ 1]  205 	nop
                           000044   206 	Sswi2c$_delay_us$38 ==.
                           000044   207 	Sswi2c$_delay_us$39 ==.
                                    208 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                    209 ; genLabel
      0087B4                        210 00105$:
                           000044   211 	Sswi2c$_delay_us$40 ==.
                                    212 ;	inc/delay.h: 43: }
                                    213 ; genEndFunction
                           000044   214 	Sswi2c$_delay_us$41 ==.
                           000044   215 	XFswi2c$_delay_us$0$0 ==.
      0087B4 81               [ 4]  216 	ret
                           000045   217 	Sswi2c$_delay_us$42 ==.
                           000045   218 	Sswi2c$swi2c_read_buf$43 ==.
                                    219 ;	./src/swi2c.c: 11: uint8_t swi2c_read_buf(uint8_t slv_addr, uint8_t address, uint8_t * data,
                                    220 ; genLabel
                                    221 ;	-----------------------------------------
                                    222 ;	 function swi2c_read_buf
                                    223 ;	-----------------------------------------
                                    224 ;	Register assignment might be sub-optimal.
                                    225 ;	Stack space usage: 3 bytes.
      0087B5                        226 _swi2c_read_buf:
                           000045   227 	Sswi2c$swi2c_read_buf$44 ==.
      0087B5 52 03            [ 2]  228 	sub	sp, #3
                           000047   229 	Sswi2c$swi2c_read_buf$45 ==.
                           000047   230 	Sswi2c$swi2c_read_buf$46 ==.
                                    231 ;	./src/swi2c.c: 19: if (swi2c_START()) {
                                    232 ; genCall
      0087B7 CD 8C BB         [ 4]  233 	call	_swi2c_START
                                    234 ; genIfx
      0087BA 4D               [ 1]  235 	tnz	a
      0087BB 26 03            [ 1]  236 	jrne	00291$
      0087BD CC 87 C5         [ 2]  237 	jp	00102$
      0087C0                        238 00291$:
                           000050   239 	Sswi2c$swi2c_read_buf$47 ==.
                           000050   240 	Sswi2c$swi2c_read_buf$48 ==.
                                    241 ;	./src/swi2c.c: 20: return 0xaa;
                                    242 ; genReturn
      0087C0 A6 AA            [ 1]  243 	ld	a, #0xaa
      0087C2 CC 89 42         [ 2]  244 	jp	00154$
                           000055   245 	Sswi2c$swi2c_read_buf$49 ==.
                                    246 ; genLabel
      0087C5                        247 00102$:
                           000055   248 	Sswi2c$swi2c_read_buf$50 ==.
                                    249 ;	./src/swi2c.c: 23: mask = 1 << 7;
                                    250 ; genAssign
      0087C5 A6 80            [ 1]  251 	ld	a, #0x80
      0087C7 6B 03            [ 1]  252 	ld	(0x03, sp), a
                           000059   253 	Sswi2c$swi2c_read_buf$51 ==.
                                    254 ;	./src/swi2c.c: 24: while (mask) {
                                    255 ; genLabel
      0087C9                        256 00105$:
                                    257 ; genIfx
      0087C9 0D 03            [ 1]  258 	tnz	(0x03, sp)
      0087CB 26 03            [ 1]  259 	jrne	00292$
      0087CD CC 87 EA         [ 2]  260 	jp	00107$
      0087D0                        261 00292$:
                           000060   262 	Sswi2c$swi2c_read_buf$52 ==.
                           000060   263 	Sswi2c$swi2c_read_buf$53 ==.
                                    264 ;	./src/swi2c.c: 25: if (swi2c_writebit(slv_addr & mask)) {
                                    265 ; genAnd
      0087D0 7B 06            [ 1]  266 	ld	a, (0x06, sp)
      0087D2 14 03            [ 1]  267 	and	a, (0x03, sp)
                                    268 ; genIPush
      0087D4 88               [ 1]  269 	push	a
                           000065   270 	Sswi2c$swi2c_read_buf$54 ==.
                                    271 ; genCall
      0087D5 CD 8B 48         [ 4]  272 	call	_swi2c_writebit
      0087D8 5B 01            [ 2]  273 	addw	sp, #1
                           00006A   274 	Sswi2c$swi2c_read_buf$55 ==.
                                    275 ; genIfx
      0087DA 4D               [ 1]  276 	tnz	a
      0087DB 26 03            [ 1]  277 	jrne	00293$
      0087DD CC 87 E5         [ 2]  278 	jp	00104$
      0087E0                        279 00293$:
                           000070   280 	Sswi2c$swi2c_read_buf$56 ==.
                           000070   281 	Sswi2c$swi2c_read_buf$57 ==.
                                    282 ;	./src/swi2c.c: 26: return 0xff;
                                    283 ; genReturn
      0087E0 A6 FF            [ 1]  284 	ld	a, #0xff
      0087E2 CC 89 42         [ 2]  285 	jp	00154$
                           000075   286 	Sswi2c$swi2c_read_buf$58 ==.
                                    287 ; genLabel
      0087E5                        288 00104$:
                           000075   289 	Sswi2c$swi2c_read_buf$59 ==.
                                    290 ;	./src/swi2c.c: 28: mask = mask >> 1;
                                    291 ; genRightShiftLiteral
      0087E5 04 03            [ 1]  292 	srl	(0x03, sp)
                           000077   293 	Sswi2c$swi2c_read_buf$60 ==.
                                    294 ; genGoto
      0087E7 CC 87 C9         [ 2]  295 	jp	00105$
                                    296 ; genLabel
      0087EA                        297 00107$:
                           00007A   298 	Sswi2c$swi2c_read_buf$61 ==.
                                    299 ;	./src/swi2c.c: 30: ack = swi2c_readbit();
                                    300 ; genCall
      0087EA CD 8A B2         [ 4]  301 	call	_swi2c_readbit
                                    302 ; genAssign
      0087ED 6B 03            [ 1]  303 	ld	(0x03, sp), a
                           00007F   304 	Sswi2c$swi2c_read_buf$62 ==.
                                    305 ;	./src/swi2c.c: 31: if (ack) {
                                    306 ; genIfx
      0087EF 0D 03            [ 1]  307 	tnz	(0x03, sp)
      0087F1 26 03            [ 1]  308 	jrne	00294$
      0087F3 CC 88 09         [ 2]  309 	jp	00111$
      0087F6                        310 00294$:
                           000086   311 	Sswi2c$swi2c_read_buf$63 ==.
                           000086   312 	Sswi2c$swi2c_read_buf$64 ==.
                                    313 ;	./src/swi2c.c: 32: if (swi2c_STOP()) {
                                    314 ; genCall
      0087F6 CD 8D 2A         [ 4]  315 	call	_swi2c_STOP
                                    316 ; genIfx
      0087F9 4D               [ 1]  317 	tnz	a
      0087FA 26 03            [ 1]  318 	jrne	00295$
      0087FC CC 88 04         [ 2]  319 	jp	00109$
      0087FF                        320 00295$:
                           00008F   321 	Sswi2c$swi2c_read_buf$65 ==.
                           00008F   322 	Sswi2c$swi2c_read_buf$66 ==.
                                    323 ;	./src/swi2c.c: 33: return 0xff;
                                    324 ; genReturn
      0087FF A6 FF            [ 1]  325 	ld	a, #0xff
      008801 CC 89 42         [ 2]  326 	jp	00154$
                           000094   327 	Sswi2c$swi2c_read_buf$67 ==.
                                    328 ; genLabel
      008804                        329 00109$:
                           000094   330 	Sswi2c$swi2c_read_buf$68 ==.
                                    331 ;	./src/swi2c.c: 35: return ack;
                                    332 ; genReturn
      008804 7B 03            [ 1]  333 	ld	a, (0x03, sp)
      008806 CC 89 42         [ 2]  334 	jp	00154$
                           000099   335 	Sswi2c$swi2c_read_buf$69 ==.
                                    336 ; genLabel
      008809                        337 00111$:
                           000099   338 	Sswi2c$swi2c_read_buf$70 ==.
                                    339 ;	./src/swi2c.c: 38: mask = 1 << 7;
                                    340 ; genAssign
      008809 A6 80            [ 1]  341 	ld	a, #0x80
      00880B 6B 03            [ 1]  342 	ld	(0x03, sp), a
                           00009D   343 	Sswi2c$swi2c_read_buf$71 ==.
                                    344 ;	./src/swi2c.c: 39: while (mask) {
                                    345 ; genLabel
      00880D                        346 00114$:
                                    347 ; genIfx
      00880D 0D 03            [ 1]  348 	tnz	(0x03, sp)
      00880F 26 03            [ 1]  349 	jrne	00296$
      008811 CC 88 2E         [ 2]  350 	jp	00116$
      008814                        351 00296$:
                           0000A4   352 	Sswi2c$swi2c_read_buf$72 ==.
                           0000A4   353 	Sswi2c$swi2c_read_buf$73 ==.
                                    354 ;	./src/swi2c.c: 40: if (swi2c_writebit(address & mask)) {
                                    355 ; genAnd
      008814 7B 07            [ 1]  356 	ld	a, (0x07, sp)
      008816 14 03            [ 1]  357 	and	a, (0x03, sp)
                                    358 ; genIPush
      008818 88               [ 1]  359 	push	a
                           0000A9   360 	Sswi2c$swi2c_read_buf$74 ==.
                                    361 ; genCall
      008819 CD 8B 48         [ 4]  362 	call	_swi2c_writebit
      00881C 5B 01            [ 2]  363 	addw	sp, #1
                           0000AE   364 	Sswi2c$swi2c_read_buf$75 ==.
                                    365 ; genIfx
      00881E 4D               [ 1]  366 	tnz	a
      00881F 26 03            [ 1]  367 	jrne	00297$
      008821 CC 88 29         [ 2]  368 	jp	00113$
      008824                        369 00297$:
                           0000B4   370 	Sswi2c$swi2c_read_buf$76 ==.
                           0000B4   371 	Sswi2c$swi2c_read_buf$77 ==.
                                    372 ;	./src/swi2c.c: 41: return 0xff;
                                    373 ; genReturn
      008824 A6 FF            [ 1]  374 	ld	a, #0xff
      008826 CC 89 42         [ 2]  375 	jp	00154$
                           0000B9   376 	Sswi2c$swi2c_read_buf$78 ==.
                                    377 ; genLabel
      008829                        378 00113$:
                           0000B9   379 	Sswi2c$swi2c_read_buf$79 ==.
                                    380 ;	./src/swi2c.c: 43: mask = mask >> 1;
                                    381 ; genRightShiftLiteral
      008829 04 03            [ 1]  382 	srl	(0x03, sp)
                           0000BB   383 	Sswi2c$swi2c_read_buf$80 ==.
                                    384 ; genGoto
      00882B CC 88 0D         [ 2]  385 	jp	00114$
                                    386 ; genLabel
      00882E                        387 00116$:
                           0000BE   388 	Sswi2c$swi2c_read_buf$81 ==.
                                    389 ;	./src/swi2c.c: 45: ack = swi2c_readbit();
                                    390 ; genCall
      00882E CD 8A B2         [ 4]  391 	call	_swi2c_readbit
                                    392 ; genAssign
      008831 6B 03            [ 1]  393 	ld	(0x03, sp), a
                           0000C3   394 	Sswi2c$swi2c_read_buf$82 ==.
                                    395 ;	./src/swi2c.c: 46: if (ack) {
                                    396 ; genIfx
      008833 0D 03            [ 1]  397 	tnz	(0x03, sp)
      008835 26 03            [ 1]  398 	jrne	00298$
      008837 CC 88 4D         [ 2]  399 	jp	00120$
      00883A                        400 00298$:
                           0000CA   401 	Sswi2c$swi2c_read_buf$83 ==.
                           0000CA   402 	Sswi2c$swi2c_read_buf$84 ==.
                                    403 ;	./src/swi2c.c: 47: if (swi2c_STOP()) {
                                    404 ; genCall
      00883A CD 8D 2A         [ 4]  405 	call	_swi2c_STOP
                                    406 ; genIfx
      00883D 4D               [ 1]  407 	tnz	a
      00883E 26 03            [ 1]  408 	jrne	00299$
      008840 CC 88 48         [ 2]  409 	jp	00118$
      008843                        410 00299$:
                           0000D3   411 	Sswi2c$swi2c_read_buf$85 ==.
                           0000D3   412 	Sswi2c$swi2c_read_buf$86 ==.
                                    413 ;	./src/swi2c.c: 48: return 0xff;
                                    414 ; genReturn
      008843 A6 FF            [ 1]  415 	ld	a, #0xff
      008845 CC 89 42         [ 2]  416 	jp	00154$
                           0000D8   417 	Sswi2c$swi2c_read_buf$87 ==.
                                    418 ; genLabel
      008848                        419 00118$:
                           0000D8   420 	Sswi2c$swi2c_read_buf$88 ==.
                                    421 ;	./src/swi2c.c: 50: return ack;
                                    422 ; genReturn
      008848 7B 03            [ 1]  423 	ld	a, (0x03, sp)
      00884A CC 89 42         [ 2]  424 	jp	00154$
                           0000DD   425 	Sswi2c$swi2c_read_buf$89 ==.
                                    426 ; genLabel
      00884D                        427 00120$:
                           0000DD   428 	Sswi2c$swi2c_read_buf$90 ==.
                                    429 ;	./src/swi2c.c: 53: if (swi2c_RESTART()) {
                                    430 ; genCall
      00884D CD 8B E6         [ 4]  431 	call	_swi2c_RESTART
                                    432 ; genIfx
      008850 4D               [ 1]  433 	tnz	a
      008851 26 03            [ 1]  434 	jrne	00300$
      008853 CC 88 5B         [ 2]  435 	jp	00122$
      008856                        436 00300$:
                           0000E6   437 	Sswi2c$swi2c_read_buf$91 ==.
                           0000E6   438 	Sswi2c$swi2c_read_buf$92 ==.
                                    439 ;	./src/swi2c.c: 54: return 0xff;
                                    440 ; genReturn
      008856 A6 FF            [ 1]  441 	ld	a, #0xff
      008858 CC 89 42         [ 2]  442 	jp	00154$
                           0000EB   443 	Sswi2c$swi2c_read_buf$93 ==.
                                    444 ; genLabel
      00885B                        445 00122$:
                           0000EB   446 	Sswi2c$swi2c_read_buf$94 ==.
                                    447 ;	./src/swi2c.c: 57: mask = 1 << 7;
                                    448 ; genAssign
      00885B A6 80            [ 1]  449 	ld	a, #0x80
      00885D 6B 03            [ 1]  450 	ld	(0x03, sp), a
                           0000EF   451 	Sswi2c$swi2c_read_buf$95 ==.
                           0000EF   452 	Sswi2c$swi2c_read_buf$96 ==.
                                    453 ;	./src/swi2c.c: 58: while (mask) {
                                    454 ; genAssign
      00885F 7B 06            [ 1]  455 	ld	a, (0x06, sp)
                                    456 ; genOr
      008861 AA 01            [ 1]  457 	or	a, #0x01
      008863 6B 02            [ 1]  458 	ld	(0x02, sp), a
                           0000F5   459 	Sswi2c$swi2c_read_buf$97 ==.
                                    460 ; genLabel
      008865                        461 00125$:
                                    462 ; genIfx
      008865 0D 03            [ 1]  463 	tnz	(0x03, sp)
      008867 26 03            [ 1]  464 	jrne	00301$
      008869 CC 88 86         [ 2]  465 	jp	00127$
      00886C                        466 00301$:
                           0000FC   467 	Sswi2c$swi2c_read_buf$98 ==.
                                    468 ;	./src/swi2c.c: 59: if (swi2c_writebit((slv_addr | 1) & mask)) {
                                    469 ; genAnd
      00886C 7B 02            [ 1]  470 	ld	a, (0x02, sp)
      00886E 14 03            [ 1]  471 	and	a, (0x03, sp)
                                    472 ; genIPush
      008870 88               [ 1]  473 	push	a
                           000101   474 	Sswi2c$swi2c_read_buf$99 ==.
                                    475 ; genCall
      008871 CD 8B 48         [ 4]  476 	call	_swi2c_writebit
      008874 5B 01            [ 2]  477 	addw	sp, #1
                           000106   478 	Sswi2c$swi2c_read_buf$100 ==.
                                    479 ; genIfx
      008876 4D               [ 1]  480 	tnz	a
      008877 26 03            [ 1]  481 	jrne	00302$
      008879 CC 88 81         [ 2]  482 	jp	00124$
      00887C                        483 00302$:
                           00010C   484 	Sswi2c$swi2c_read_buf$101 ==.
                           00010C   485 	Sswi2c$swi2c_read_buf$102 ==.
                                    486 ;	./src/swi2c.c: 60: return 0xff;
                                    487 ; genReturn
      00887C A6 FF            [ 1]  488 	ld	a, #0xff
      00887E CC 89 42         [ 2]  489 	jp	00154$
                           000111   490 	Sswi2c$swi2c_read_buf$103 ==.
                                    491 ; genLabel
      008881                        492 00124$:
                           000111   493 	Sswi2c$swi2c_read_buf$104 ==.
                                    494 ;	./src/swi2c.c: 62: mask = mask >> 1;
                                    495 ; genRightShiftLiteral
      008881 04 03            [ 1]  496 	srl	(0x03, sp)
                           000113   497 	Sswi2c$swi2c_read_buf$105 ==.
                                    498 ; genGoto
      008883 CC 88 65         [ 2]  499 	jp	00125$
                                    500 ; genLabel
      008886                        501 00127$:
                           000116   502 	Sswi2c$swi2c_read_buf$106 ==.
                                    503 ;	./src/swi2c.c: 64: ack = swi2c_readbit();
                                    504 ; genCall
      008886 CD 8A B2         [ 4]  505 	call	_swi2c_readbit
                                    506 ; genAssign
      008889 6B 03            [ 1]  507 	ld	(0x03, sp), a
                           00011B   508 	Sswi2c$swi2c_read_buf$107 ==.
                                    509 ;	./src/swi2c.c: 65: if (ack) {
                                    510 ; genIfx
      00888B 0D 03            [ 1]  511 	tnz	(0x03, sp)
      00888D 26 03            [ 1]  512 	jrne	00303$
      00888F CC 88 A5         [ 2]  513 	jp	00131$
      008892                        514 00303$:
                           000122   515 	Sswi2c$swi2c_read_buf$108 ==.
                           000122   516 	Sswi2c$swi2c_read_buf$109 ==.
                                    517 ;	./src/swi2c.c: 66: if (swi2c_STOP()) {
                                    518 ; genCall
      008892 CD 8D 2A         [ 4]  519 	call	_swi2c_STOP
                                    520 ; genIfx
      008895 4D               [ 1]  521 	tnz	a
      008896 26 03            [ 1]  522 	jrne	00304$
      008898 CC 88 A0         [ 2]  523 	jp	00129$
      00889B                        524 00304$:
                           00012B   525 	Sswi2c$swi2c_read_buf$110 ==.
                           00012B   526 	Sswi2c$swi2c_read_buf$111 ==.
                                    527 ;	./src/swi2c.c: 67: return 0xff;
                                    528 ; genReturn
      00889B A6 FF            [ 1]  529 	ld	a, #0xff
      00889D CC 89 42         [ 2]  530 	jp	00154$
                           000130   531 	Sswi2c$swi2c_read_buf$112 ==.
                                    532 ; genLabel
      0088A0                        533 00129$:
                           000130   534 	Sswi2c$swi2c_read_buf$113 ==.
                                    535 ;	./src/swi2c.c: 69: return ack;
                                    536 ; genReturn
      0088A0 7B 03            [ 1]  537 	ld	a, (0x03, sp)
      0088A2 CC 89 42         [ 2]  538 	jp	00154$
                           000135   539 	Sswi2c$swi2c_read_buf$114 ==.
                                    540 ; genLabel
      0088A5                        541 00131$:
                           000135   542 	Sswi2c$swi2c_read_buf$115 ==.
                                    543 ;	./src/swi2c.c: 73: for (i = 0; i < num; i++) {
                                    544 ; genAssign
      0088A5 0F 02            [ 1]  545 	clr	(0x02, sp)
                                    546 ; genLabel
      0088A7                        547 00152$:
                                    548 ; genCast
                                    549 ; genAssign
      0088A7 7B 02            [ 1]  550 	ld	a, (0x02, sp)
      0088A9 5F               [ 1]  551 	clrw	x
                                    552 ; genCmp
                                    553 ; genCmpTop
      0088AA 97               [ 1]  554 	ld	xl, a
      0088AB 13 0A            [ 2]  555 	cpw	x, (0x0a, sp)
      0088AD 25 03            [ 1]  556 	jrc	00305$
      0088AF CC 89 33         [ 2]  557 	jp	00148$
      0088B2                        558 00305$:
                                    559 ; skipping generated iCode
                           000142   560 	Sswi2c$swi2c_read_buf$116 ==.
                           000142   561 	Sswi2c$swi2c_read_buf$117 ==.
                                    562 ;	./src/swi2c.c: 74: mask = 1 << 7;
                                    563 ; genAssign
      0088B2 A6 80            [ 1]  564 	ld	a, #0x80
      0088B4 6B 03            [ 1]  565 	ld	(0x03, sp), a
                           000146   566 	Sswi2c$swi2c_read_buf$118 ==.
                                    567 ;	./src/swi2c.c: 75: while (mask) {
                                    568 ; genLabel
      0088B6                        569 00138$:
                                    570 ; genIfx
      0088B6 0D 03            [ 1]  571 	tnz	(0x03, sp)
      0088B8 26 03            [ 1]  572 	jrne	00306$
      0088BA CC 88 FB         [ 2]  573 	jp	00140$
      0088BD                        574 00306$:
                           00014D   575 	Sswi2c$swi2c_read_buf$119 ==.
                           00014D   576 	Sswi2c$swi2c_read_buf$120 ==.
                                    577 ;	./src/swi2c.c: 76: bit = swi2c_readbit();
                                    578 ; genCall
      0088BD CD 8A B2         [ 4]  579 	call	_swi2c_readbit
                                    580 ; genAssign
      0088C0 90 97            [ 1]  581 	ld	yl, a
                           000152   582 	Sswi2c$swi2c_read_buf$121 ==.
                           000152   583 	Sswi2c$swi2c_read_buf$122 ==.
                                    584 ;	./src/swi2c.c: 78: data[i] &= ~mask;
                                    585 ; genPlus
      0088C2 5F               [ 1]  586 	clrw	x
      0088C3 41               [ 1]  587 	exg	a, xl
      0088C4 7B 02            [ 1]  588 	ld	a, (0x02, sp)
      0088C6 41               [ 1]  589 	exg	a, xl
      0088C7 72 FB 08         [ 2]  590 	addw	x, (0x08, sp)
                           00015A   591 	Sswi2c$swi2c_read_buf$123 ==.
                                    592 ;	./src/swi2c.c: 77: if (bit == 0) {
                                    593 ; genIfx
      0088CA 4D               [ 1]  594 	tnz	a
      0088CB 27 03            [ 1]  595 	jreq	00307$
      0088CD CC 88 DC         [ 2]  596 	jp	00136$
      0088D0                        597 00307$:
                           000160   598 	Sswi2c$swi2c_read_buf$124 ==.
                           000160   599 	Sswi2c$swi2c_read_buf$125 ==.
                                    600 ;	./src/swi2c.c: 78: data[i] &= ~mask;
                                    601 ; genPointerGet
      0088D0 F6               [ 1]  602 	ld	a, (x)
      0088D1 6B 01            [ 1]  603 	ld	(0x01, sp), a
                                    604 ; genCpl
      0088D3 7B 03            [ 1]  605 	ld	a, (0x03, sp)
      0088D5 43               [ 1]  606 	cpl	a
                                    607 ; genAnd
      0088D6 14 01            [ 1]  608 	and	a, (0x01, sp)
                                    609 ; genPointerSet
      0088D8 F7               [ 1]  610 	ld	(x), a
                           000169   611 	Sswi2c$swi2c_read_buf$126 ==.
                                    612 ; genGoto
      0088D9 CC 88 F6         [ 2]  613 	jp	00137$
                                    614 ; genLabel
      0088DC                        615 00136$:
                           00016C   616 	Sswi2c$swi2c_read_buf$127 ==.
                                    617 ;	./src/swi2c.c: 79: } else if (bit == 1) {
                                    618 ; genCmpEQorNE
      0088DC 90 9F            [ 1]  619 	ld	a, yl
      0088DE 4A               [ 1]  620 	dec	a
      0088DF 26 03            [ 1]  621 	jrne	00309$
      0088E1 CC 88 E7         [ 2]  622 	jp	00310$
      0088E4                        623 00309$:
      0088E4 CC 88 EE         [ 2]  624 	jp	00133$
      0088E7                        625 00310$:
                           000177   626 	Sswi2c$swi2c_read_buf$128 ==.
                                    627 ; skipping generated iCode
                           000177   628 	Sswi2c$swi2c_read_buf$129 ==.
                           000177   629 	Sswi2c$swi2c_read_buf$130 ==.
                                    630 ;	./src/swi2c.c: 80: data[i] |= mask;
                                    631 ; genPointerGet
      0088E7 F6               [ 1]  632 	ld	a, (x)
                                    633 ; genOr
      0088E8 1A 03            [ 1]  634 	or	a, (0x03, sp)
                                    635 ; genPointerSet
      0088EA F7               [ 1]  636 	ld	(x), a
                           00017B   637 	Sswi2c$swi2c_read_buf$131 ==.
                                    638 ; genGoto
      0088EB CC 88 F6         [ 2]  639 	jp	00137$
                                    640 ; genLabel
      0088EE                        641 00133$:
                           00017E   642 	Sswi2c$swi2c_read_buf$132 ==.
                           00017E   643 	Sswi2c$swi2c_read_buf$133 ==.
                                    644 ;	./src/swi2c.c: 82: swi2c_STOP();
                                    645 ; genCall
      0088EE CD 8D 2A         [ 4]  646 	call	_swi2c_STOP
                           000181   647 	Sswi2c$swi2c_read_buf$134 ==.
                                    648 ;	./src/swi2c.c: 83: return 0xff;
                                    649 ; genReturn
      0088F1 A6 FF            [ 1]  650 	ld	a, #0xff
      0088F3 CC 89 42         [ 2]  651 	jp	00154$
                           000186   652 	Sswi2c$swi2c_read_buf$135 ==.
                                    653 ; genLabel
      0088F6                        654 00137$:
                           000186   655 	Sswi2c$swi2c_read_buf$136 ==.
                                    656 ;	./src/swi2c.c: 85: mask = mask >> 1;
                                    657 ; genRightShiftLiteral
      0088F6 04 03            [ 1]  658 	srl	(0x03, sp)
                           000188   659 	Sswi2c$swi2c_read_buf$137 ==.
                                    660 ; genGoto
      0088F8 CC 88 B6         [ 2]  661 	jp	00138$
                                    662 ; genLabel
      0088FB                        663 00140$:
                           00018B   664 	Sswi2c$swi2c_read_buf$138 ==.
                                    665 ;	./src/swi2c.c: 87: if ((i + 1) == num) {
                                    666 ; genCast
                                    667 ; genAssign
      0088FB 7B 02            [ 1]  668 	ld	a, (0x02, sp)
      0088FD 5F               [ 1]  669 	clrw	x
                                    670 ; genPlus
      0088FE 97               [ 1]  671 	ld	xl, a
      0088FF 5C               [ 1]  672 	incw	x
                                    673 ; genCast
                                    674 ; genAssign
                                    675 ; genCmpEQorNE
      008900 13 0A            [ 2]  676 	cpw	x, (0x0a, sp)
      008902 26 03            [ 1]  677 	jrne	00312$
      008904 CC 89 0A         [ 2]  678 	jp	00313$
      008907                        679 00312$:
      008907 CC 89 1C         [ 2]  680 	jp	00146$
      00890A                        681 00313$:
                           00019A   682 	Sswi2c$swi2c_read_buf$139 ==.
                                    683 ; skipping generated iCode
                           00019A   684 	Sswi2c$swi2c_read_buf$140 ==.
                           00019A   685 	Sswi2c$swi2c_read_buf$141 ==.
                                    686 ;	./src/swi2c.c: 88: if (swi2c_writebit(1)) {
                                    687 ; genIPush
      00890A 4B 01            [ 1]  688 	push	#0x01
                           00019C   689 	Sswi2c$swi2c_read_buf$142 ==.
                                    690 ; genCall
      00890C CD 8B 48         [ 4]  691 	call	_swi2c_writebit
      00890F 5B 01            [ 2]  692 	addw	sp, #1
                           0001A1   693 	Sswi2c$swi2c_read_buf$143 ==.
                                    694 ; genIfx
      008911 4D               [ 1]  695 	tnz	a
      008912 26 03            [ 1]  696 	jrne	00314$
      008914 CC 89 2E         [ 2]  697 	jp	00153$
      008917                        698 00314$:
                           0001A7   699 	Sswi2c$swi2c_read_buf$144 ==.
                           0001A7   700 	Sswi2c$swi2c_read_buf$145 ==.
                                    701 ;	./src/swi2c.c: 89: return 0xff;
                                    702 ; genReturn
      008917 A6 FF            [ 1]  703 	ld	a, #0xff
      008919 CC 89 42         [ 2]  704 	jp	00154$
                           0001AC   705 	Sswi2c$swi2c_read_buf$146 ==.
                                    706 ; genLabel
      00891C                        707 00146$:
                           0001AC   708 	Sswi2c$swi2c_read_buf$147 ==.
                           0001AC   709 	Sswi2c$swi2c_read_buf$148 ==.
                                    710 ;	./src/swi2c.c: 92: if (swi2c_writebit(0)) {
                                    711 ; genIPush
      00891C 4B 00            [ 1]  712 	push	#0x00
                           0001AE   713 	Sswi2c$swi2c_read_buf$149 ==.
                                    714 ; genCall
      00891E CD 8B 48         [ 4]  715 	call	_swi2c_writebit
      008921 5B 01            [ 2]  716 	addw	sp, #1
                           0001B3   717 	Sswi2c$swi2c_read_buf$150 ==.
                                    718 ; genIfx
      008923 4D               [ 1]  719 	tnz	a
      008924 26 03            [ 1]  720 	jrne	00315$
      008926 CC 89 2E         [ 2]  721 	jp	00153$
      008929                        722 00315$:
                           0001B9   723 	Sswi2c$swi2c_read_buf$151 ==.
                           0001B9   724 	Sswi2c$swi2c_read_buf$152 ==.
                                    725 ;	./src/swi2c.c: 93: return 0xff;
                                    726 ; genReturn
      008929 A6 FF            [ 1]  727 	ld	a, #0xff
      00892B CC 89 42         [ 2]  728 	jp	00154$
                           0001BE   729 	Sswi2c$swi2c_read_buf$153 ==.
                                    730 ; genLabel
      00892E                        731 00153$:
                           0001BE   732 	Sswi2c$swi2c_read_buf$154 ==.
                           0001BE   733 	Sswi2c$swi2c_read_buf$155 ==.
                                    734 ;	./src/swi2c.c: 73: for (i = 0; i < num; i++) {
                                    735 ; genPlus
      00892E 0C 02            [ 1]  736 	inc	(0x02, sp)
                                    737 ; genGoto
      008930 CC 88 A7         [ 2]  738 	jp	00152$
                                    739 ; genLabel
      008933                        740 00148$:
                           0001C3   741 	Sswi2c$swi2c_read_buf$156 ==.
                                    742 ;	./src/swi2c.c: 99: if (swi2c_STOP()) {
                                    743 ; genCall
      008933 CD 8D 2A         [ 4]  744 	call	_swi2c_STOP
                                    745 ; genIfx
      008936 4D               [ 1]  746 	tnz	a
      008937 26 03            [ 1]  747 	jrne	00316$
      008939 CC 89 41         [ 2]  748 	jp	00150$
      00893C                        749 00316$:
                           0001CC   750 	Sswi2c$swi2c_read_buf$157 ==.
                           0001CC   751 	Sswi2c$swi2c_read_buf$158 ==.
                                    752 ;	./src/swi2c.c: 100: return 0xff;
                                    753 ; genReturn
      00893C A6 FF            [ 1]  754 	ld	a, #0xff
      00893E CC 89 42         [ 2]  755 	jp	00154$
                           0001D1   756 	Sswi2c$swi2c_read_buf$159 ==.
                                    757 ; genLabel
      008941                        758 00150$:
                           0001D1   759 	Sswi2c$swi2c_read_buf$160 ==.
                                    760 ;	./src/swi2c.c: 102: return 0;
                                    761 ; genReturn
      008941 4F               [ 1]  762 	clr	a
                                    763 ; genLabel
      008942                        764 00154$:
                           0001D2   765 	Sswi2c$swi2c_read_buf$161 ==.
                                    766 ;	./src/swi2c.c: 103: }
                                    767 ; genEndFunction
      008942 5B 03            [ 2]  768 	addw	sp, #3
                           0001D4   769 	Sswi2c$swi2c_read_buf$162 ==.
                           0001D4   770 	Sswi2c$swi2c_read_buf$163 ==.
                           0001D4   771 	XG$swi2c_read_buf$0$0 ==.
      008944 81               [ 4]  772 	ret
                           0001D5   773 	Sswi2c$swi2c_read_buf$164 ==.
                           0001D5   774 	Sswi2c$swi2c_write_buf$165 ==.
                                    775 ;	./src/swi2c.c: 113: uint8_t swi2c_write_buf(uint8_t slv_addr, uint8_t address, uint8_t * data,
                                    776 ; genLabel
                                    777 ;	-----------------------------------------
                                    778 ;	 function swi2c_write_buf
                                    779 ;	-----------------------------------------
                                    780 ;	Register assignment might be sub-optimal.
                                    781 ;	Stack space usage: 2 bytes.
      008945                        782 _swi2c_write_buf:
                           0001D5   783 	Sswi2c$swi2c_write_buf$166 ==.
      008945 89               [ 2]  784 	pushw	x
                           0001D6   785 	Sswi2c$swi2c_write_buf$167 ==.
                           0001D6   786 	Sswi2c$swi2c_write_buf$168 ==.
                                    787 ;	./src/swi2c.c: 121: if (swi2c_START()) {
                                    788 ; genCall
      008946 CD 8C BB         [ 4]  789 	call	_swi2c_START
                                    790 ; genIfx
      008949 4D               [ 1]  791 	tnz	a
      00894A 26 03            [ 1]  792 	jrne	00233$
      00894C CC 89 54         [ 2]  793 	jp	00102$
      00894F                        794 00233$:
                           0001DF   795 	Sswi2c$swi2c_write_buf$169 ==.
                           0001DF   796 	Sswi2c$swi2c_write_buf$170 ==.
                                    797 ;	./src/swi2c.c: 122: return 0xaa;
                                    798 ; genReturn
      00894F A6 AA            [ 1]  799 	ld	a, #0xaa
      008951 CC 8A 49         [ 2]  800 	jp	00136$
                           0001E4   801 	Sswi2c$swi2c_write_buf$171 ==.
                                    802 ; genLabel
      008954                        803 00102$:
                           0001E4   804 	Sswi2c$swi2c_write_buf$172 ==.
                                    805 ;	./src/swi2c.c: 125: mask = 1 << 7;
                                    806 ; genAssign
      008954 A6 80            [ 1]  807 	ld	a, #0x80
      008956 6B 02            [ 1]  808 	ld	(0x02, sp), a
                           0001E8   809 	Sswi2c$swi2c_write_buf$173 ==.
                                    810 ;	./src/swi2c.c: 126: while (mask) {
                                    811 ; genLabel
      008958                        812 00105$:
                                    813 ; genIfx
      008958 0D 02            [ 1]  814 	tnz	(0x02, sp)
      00895A 26 03            [ 1]  815 	jrne	00234$
      00895C CC 89 79         [ 2]  816 	jp	00107$
      00895F                        817 00234$:
                           0001EF   818 	Sswi2c$swi2c_write_buf$174 ==.
                           0001EF   819 	Sswi2c$swi2c_write_buf$175 ==.
                                    820 ;	./src/swi2c.c: 127: if (swi2c_writebit(slv_addr & mask)) {
                                    821 ; genAnd
      00895F 7B 05            [ 1]  822 	ld	a, (0x05, sp)
      008961 14 02            [ 1]  823 	and	a, (0x02, sp)
                                    824 ; genIPush
      008963 88               [ 1]  825 	push	a
                           0001F4   826 	Sswi2c$swi2c_write_buf$176 ==.
                                    827 ; genCall
      008964 CD 8B 48         [ 4]  828 	call	_swi2c_writebit
      008967 5B 01            [ 2]  829 	addw	sp, #1
                           0001F9   830 	Sswi2c$swi2c_write_buf$177 ==.
                                    831 ; genIfx
      008969 4D               [ 1]  832 	tnz	a
      00896A 26 03            [ 1]  833 	jrne	00235$
      00896C CC 89 74         [ 2]  834 	jp	00104$
      00896F                        835 00235$:
                           0001FF   836 	Sswi2c$swi2c_write_buf$178 ==.
                           0001FF   837 	Sswi2c$swi2c_write_buf$179 ==.
                                    838 ;	./src/swi2c.c: 128: return 0xff;
                                    839 ; genReturn
      00896F A6 FF            [ 1]  840 	ld	a, #0xff
      008971 CC 8A 49         [ 2]  841 	jp	00136$
                           000204   842 	Sswi2c$swi2c_write_buf$180 ==.
                                    843 ; genLabel
      008974                        844 00104$:
                           000204   845 	Sswi2c$swi2c_write_buf$181 ==.
                                    846 ;	./src/swi2c.c: 130: mask = mask >> 1;
                                    847 ; genRightShiftLiteral
      008974 04 02            [ 1]  848 	srl	(0x02, sp)
                           000206   849 	Sswi2c$swi2c_write_buf$182 ==.
                                    850 ; genGoto
      008976 CC 89 58         [ 2]  851 	jp	00105$
                                    852 ; genLabel
      008979                        853 00107$:
                           000209   854 	Sswi2c$swi2c_write_buf$183 ==.
                                    855 ;	./src/swi2c.c: 132: ack = swi2c_readbit();
                                    856 ; genCall
      008979 CD 8A B2         [ 4]  857 	call	_swi2c_readbit
                                    858 ; genAssign
      00897C 6B 02            [ 1]  859 	ld	(0x02, sp), a
                           00020E   860 	Sswi2c$swi2c_write_buf$184 ==.
                                    861 ;	./src/swi2c.c: 133: if (ack) {
                                    862 ; genIfx
      00897E 0D 02            [ 1]  863 	tnz	(0x02, sp)
      008980 26 03            [ 1]  864 	jrne	00236$
      008982 CC 89 98         [ 2]  865 	jp	00111$
      008985                        866 00236$:
                           000215   867 	Sswi2c$swi2c_write_buf$185 ==.
                           000215   868 	Sswi2c$swi2c_write_buf$186 ==.
                                    869 ;	./src/swi2c.c: 134: if (swi2c_STOP()) {
                                    870 ; genCall
      008985 CD 8D 2A         [ 4]  871 	call	_swi2c_STOP
                                    872 ; genIfx
      008988 4D               [ 1]  873 	tnz	a
      008989 26 03            [ 1]  874 	jrne	00237$
      00898B CC 89 93         [ 2]  875 	jp	00109$
      00898E                        876 00237$:
                           00021E   877 	Sswi2c$swi2c_write_buf$187 ==.
                           00021E   878 	Sswi2c$swi2c_write_buf$188 ==.
                                    879 ;	./src/swi2c.c: 135: return 0xff;
                                    880 ; genReturn
      00898E A6 FF            [ 1]  881 	ld	a, #0xff
      008990 CC 8A 49         [ 2]  882 	jp	00136$
                           000223   883 	Sswi2c$swi2c_write_buf$189 ==.
                                    884 ; genLabel
      008993                        885 00109$:
                           000223   886 	Sswi2c$swi2c_write_buf$190 ==.
                                    887 ;	./src/swi2c.c: 137: return ack;
                                    888 ; genReturn
      008993 7B 02            [ 1]  889 	ld	a, (0x02, sp)
      008995 CC 8A 49         [ 2]  890 	jp	00136$
                           000228   891 	Sswi2c$swi2c_write_buf$191 ==.
                                    892 ; genLabel
      008998                        893 00111$:
                           000228   894 	Sswi2c$swi2c_write_buf$192 ==.
                                    895 ;	./src/swi2c.c: 140: mask = 1 << 7;
                                    896 ; genAssign
      008998 A6 80            [ 1]  897 	ld	a, #0x80
      00899A 6B 02            [ 1]  898 	ld	(0x02, sp), a
                           00022C   899 	Sswi2c$swi2c_write_buf$193 ==.
                                    900 ;	./src/swi2c.c: 141: while (mask) {
                                    901 ; genLabel
      00899C                        902 00114$:
                                    903 ; genIfx
      00899C 0D 02            [ 1]  904 	tnz	(0x02, sp)
      00899E 26 03            [ 1]  905 	jrne	00238$
      0089A0 CC 89 BD         [ 2]  906 	jp	00116$
      0089A3                        907 00238$:
                           000233   908 	Sswi2c$swi2c_write_buf$194 ==.
                           000233   909 	Sswi2c$swi2c_write_buf$195 ==.
                                    910 ;	./src/swi2c.c: 142: if (swi2c_writebit(address & mask)) {
                                    911 ; genAnd
      0089A3 7B 06            [ 1]  912 	ld	a, (0x06, sp)
      0089A5 14 02            [ 1]  913 	and	a, (0x02, sp)
                                    914 ; genIPush
      0089A7 88               [ 1]  915 	push	a
                           000238   916 	Sswi2c$swi2c_write_buf$196 ==.
                                    917 ; genCall
      0089A8 CD 8B 48         [ 4]  918 	call	_swi2c_writebit
      0089AB 5B 01            [ 2]  919 	addw	sp, #1
                           00023D   920 	Sswi2c$swi2c_write_buf$197 ==.
                                    921 ; genIfx
      0089AD 4D               [ 1]  922 	tnz	a
      0089AE 26 03            [ 1]  923 	jrne	00239$
      0089B0 CC 89 B8         [ 2]  924 	jp	00113$
      0089B3                        925 00239$:
                           000243   926 	Sswi2c$swi2c_write_buf$198 ==.
                           000243   927 	Sswi2c$swi2c_write_buf$199 ==.
                                    928 ;	./src/swi2c.c: 143: return 0xff;
                                    929 ; genReturn
      0089B3 A6 FF            [ 1]  930 	ld	a, #0xff
      0089B5 CC 8A 49         [ 2]  931 	jp	00136$
                           000248   932 	Sswi2c$swi2c_write_buf$200 ==.
                                    933 ; genLabel
      0089B8                        934 00113$:
                           000248   935 	Sswi2c$swi2c_write_buf$201 ==.
                                    936 ;	./src/swi2c.c: 145: mask = mask >> 1;
                                    937 ; genRightShiftLiteral
      0089B8 04 02            [ 1]  938 	srl	(0x02, sp)
                           00024A   939 	Sswi2c$swi2c_write_buf$202 ==.
                                    940 ; genGoto
      0089BA CC 89 9C         [ 2]  941 	jp	00114$
                                    942 ; genLabel
      0089BD                        943 00116$:
                           00024D   944 	Sswi2c$swi2c_write_buf$203 ==.
                                    945 ;	./src/swi2c.c: 147: ack = swi2c_readbit();
                                    946 ; genCall
      0089BD CD 8A B2         [ 4]  947 	call	_swi2c_readbit
                                    948 ; genAssign
      0089C0 6B 02            [ 1]  949 	ld	(0x02, sp), a
                           000252   950 	Sswi2c$swi2c_write_buf$204 ==.
                                    951 ;	./src/swi2c.c: 148: if (ack) {
                                    952 ; genIfx
      0089C2 0D 02            [ 1]  953 	tnz	(0x02, sp)
      0089C4 26 03            [ 1]  954 	jrne	00240$
      0089C6 CC 89 DC         [ 2]  955 	jp	00120$
      0089C9                        956 00240$:
                           000259   957 	Sswi2c$swi2c_write_buf$205 ==.
                           000259   958 	Sswi2c$swi2c_write_buf$206 ==.
                                    959 ;	./src/swi2c.c: 149: if (swi2c_STOP()) {
                                    960 ; genCall
      0089C9 CD 8D 2A         [ 4]  961 	call	_swi2c_STOP
                                    962 ; genIfx
      0089CC 4D               [ 1]  963 	tnz	a
      0089CD 26 03            [ 1]  964 	jrne	00241$
      0089CF CC 89 D7         [ 2]  965 	jp	00118$
      0089D2                        966 00241$:
                           000262   967 	Sswi2c$swi2c_write_buf$207 ==.
                           000262   968 	Sswi2c$swi2c_write_buf$208 ==.
                                    969 ;	./src/swi2c.c: 150: return 0xff;
                                    970 ; genReturn
      0089D2 A6 FF            [ 1]  971 	ld	a, #0xff
      0089D4 CC 8A 49         [ 2]  972 	jp	00136$
                           000267   973 	Sswi2c$swi2c_write_buf$209 ==.
                                    974 ; genLabel
      0089D7                        975 00118$:
                           000267   976 	Sswi2c$swi2c_write_buf$210 ==.
                                    977 ;	./src/swi2c.c: 152: return ack;
                                    978 ; genReturn
      0089D7 7B 02            [ 1]  979 	ld	a, (0x02, sp)
      0089D9 CC 8A 49         [ 2]  980 	jp	00136$
                           00026C   981 	Sswi2c$swi2c_write_buf$211 ==.
                                    982 ; genLabel
      0089DC                        983 00120$:
                           00026C   984 	Sswi2c$swi2c_write_buf$212 ==.
                                    985 ;	./src/swi2c.c: 155: for (i = 0; i < num; i++) {
                                    986 ; genAssign
      0089DC 0F 01            [ 1]  987 	clr	(0x01, sp)
                                    988 ; genLabel
      0089DE                        989 00134$:
                                    990 ; genCast
                                    991 ; genAssign
      0089DE 7B 01            [ 1]  992 	ld	a, (0x01, sp)
      0089E0 5F               [ 1]  993 	clrw	x
                                    994 ; genCmp
                                    995 ; genCmpTop
      0089E1 97               [ 1]  996 	ld	xl, a
      0089E2 13 09            [ 2]  997 	cpw	x, (0x09, sp)
      0089E4 25 03            [ 1]  998 	jrc	00242$
      0089E6 CC 8A 3A         [ 2]  999 	jp	00130$
      0089E9                       1000 00242$:
                                   1001 ; skipping generated iCode
                           000279  1002 	Sswi2c$swi2c_write_buf$213 ==.
                           000279  1003 	Sswi2c$swi2c_write_buf$214 ==.
                                   1004 ;	./src/swi2c.c: 156: mask = 1 << 7;
                                   1005 ; genAssign
      0089E9 A6 80            [ 1] 1006 	ld	a, #0x80
      0089EB 6B 02            [ 1] 1007 	ld	(0x02, sp), a
                           00027D  1008 	Sswi2c$swi2c_write_buf$215 ==.
                           00027D  1009 	Sswi2c$swi2c_write_buf$216 ==.
                                   1010 ;	./src/swi2c.c: 157: while (mask) {
                                   1011 ; genPlus
      0089ED 5F               [ 1] 1012 	clrw	x
      0089EE 7B 01            [ 1] 1013 	ld	a, (0x01, sp)
      0089F0 97               [ 1] 1014 	ld	xl, a
      0089F1 72 FB 07         [ 2] 1015 	addw	x, (0x07, sp)
                           000284  1016 	Sswi2c$swi2c_write_buf$217 ==.
                                   1017 ; genLabel
      0089F4                       1018 00123$:
                                   1019 ; genIfx
      0089F4 0D 02            [ 1] 1020 	tnz	(0x02, sp)
      0089F6 26 03            [ 1] 1021 	jrne	00243$
      0089F8 CC 8A 16         [ 2] 1022 	jp	00125$
      0089FB                       1023 00243$:
                           00028B  1024 	Sswi2c$swi2c_write_buf$218 ==.
                                   1025 ;	./src/swi2c.c: 158: if (swi2c_writebit(data[i] & mask)) {
                                   1026 ; genPointerGet
      0089FB F6               [ 1] 1027 	ld	a, (x)
                                   1028 ; genAnd
      0089FC 14 02            [ 1] 1029 	and	a, (0x02, sp)
                                   1030 ; genIPush
      0089FE 89               [ 2] 1031 	pushw	x
                           00028F  1032 	Sswi2c$swi2c_write_buf$219 ==.
      0089FF 88               [ 1] 1033 	push	a
                           000290  1034 	Sswi2c$swi2c_write_buf$220 ==.
                                   1035 ; genCall
      008A00 CD 8B 48         [ 4] 1036 	call	_swi2c_writebit
      008A03 5B 01            [ 2] 1037 	addw	sp, #1
                           000295  1038 	Sswi2c$swi2c_write_buf$221 ==.
      008A05 85               [ 2] 1039 	popw	x
                           000296  1040 	Sswi2c$swi2c_write_buf$222 ==.
                                   1041 ; genIfx
      008A06 4D               [ 1] 1042 	tnz	a
      008A07 26 03            [ 1] 1043 	jrne	00244$
      008A09 CC 8A 11         [ 2] 1044 	jp	00122$
      008A0C                       1045 00244$:
                           00029C  1046 	Sswi2c$swi2c_write_buf$223 ==.
                           00029C  1047 	Sswi2c$swi2c_write_buf$224 ==.
                                   1048 ;	./src/swi2c.c: 159: return 0xff;
                                   1049 ; genReturn
      008A0C A6 FF            [ 1] 1050 	ld	a, #0xff
      008A0E CC 8A 49         [ 2] 1051 	jp	00136$
                           0002A1  1052 	Sswi2c$swi2c_write_buf$225 ==.
                                   1053 ; genLabel
      008A11                       1054 00122$:
                           0002A1  1055 	Sswi2c$swi2c_write_buf$226 ==.
                                   1056 ;	./src/swi2c.c: 161: mask = mask >> 1;
                                   1057 ; genRightShiftLiteral
      008A11 04 02            [ 1] 1058 	srl	(0x02, sp)
                           0002A3  1059 	Sswi2c$swi2c_write_buf$227 ==.
                                   1060 ; genGoto
      008A13 CC 89 F4         [ 2] 1061 	jp	00123$
                                   1062 ; genLabel
      008A16                       1063 00125$:
                           0002A6  1064 	Sswi2c$swi2c_write_buf$228 ==.
                                   1065 ;	./src/swi2c.c: 163: ack = swi2c_readbit();
                                   1066 ; genCall
      008A16 CD 8A B2         [ 4] 1067 	call	_swi2c_readbit
                                   1068 ; genAssign
      008A19 6B 02            [ 1] 1069 	ld	(0x02, sp), a
                           0002AB  1070 	Sswi2c$swi2c_write_buf$229 ==.
                                   1071 ;	./src/swi2c.c: 164: if (ack) {
                                   1072 ; genIfx
      008A1B 0D 02            [ 1] 1073 	tnz	(0x02, sp)
      008A1D 26 03            [ 1] 1074 	jrne	00245$
      008A1F CC 8A 35         [ 2] 1075 	jp	00135$
      008A22                       1076 00245$:
                           0002B2  1077 	Sswi2c$swi2c_write_buf$230 ==.
                           0002B2  1078 	Sswi2c$swi2c_write_buf$231 ==.
                                   1079 ;	./src/swi2c.c: 165: if (swi2c_STOP()) {
                                   1080 ; genCall
      008A22 CD 8D 2A         [ 4] 1081 	call	_swi2c_STOP
                                   1082 ; genIfx
      008A25 4D               [ 1] 1083 	tnz	a
      008A26 26 03            [ 1] 1084 	jrne	00246$
      008A28 CC 8A 30         [ 2] 1085 	jp	00127$
      008A2B                       1086 00246$:
                           0002BB  1087 	Sswi2c$swi2c_write_buf$232 ==.
                           0002BB  1088 	Sswi2c$swi2c_write_buf$233 ==.
                                   1089 ;	./src/swi2c.c: 166: return 0xff;
                                   1090 ; genReturn
      008A2B A6 FF            [ 1] 1091 	ld	a, #0xff
      008A2D CC 8A 49         [ 2] 1092 	jp	00136$
                           0002C0  1093 	Sswi2c$swi2c_write_buf$234 ==.
                                   1094 ; genLabel
      008A30                       1095 00127$:
                           0002C0  1096 	Sswi2c$swi2c_write_buf$235 ==.
                                   1097 ;	./src/swi2c.c: 168: return ack;
                                   1098 ; genReturn
      008A30 7B 02            [ 1] 1099 	ld	a, (0x02, sp)
      008A32 CC 8A 49         [ 2] 1100 	jp	00136$
                           0002C5  1101 	Sswi2c$swi2c_write_buf$236 ==.
                                   1102 ; genLabel
      008A35                       1103 00135$:
                           0002C5  1104 	Sswi2c$swi2c_write_buf$237 ==.
                           0002C5  1105 	Sswi2c$swi2c_write_buf$238 ==.
                                   1106 ;	./src/swi2c.c: 155: for (i = 0; i < num; i++) {
                                   1107 ; genPlus
      008A35 0C 01            [ 1] 1108 	inc	(0x01, sp)
                                   1109 ; genGoto
      008A37 CC 89 DE         [ 2] 1110 	jp	00134$
                                   1111 ; genLabel
      008A3A                       1112 00130$:
                           0002CA  1113 	Sswi2c$swi2c_write_buf$239 ==.
                                   1114 ;	./src/swi2c.c: 173: if (swi2c_STOP()) {
                                   1115 ; genCall
      008A3A CD 8D 2A         [ 4] 1116 	call	_swi2c_STOP
                                   1117 ; genIfx
      008A3D 4D               [ 1] 1118 	tnz	a
      008A3E 26 03            [ 1] 1119 	jrne	00247$
      008A40 CC 8A 48         [ 2] 1120 	jp	00132$
      008A43                       1121 00247$:
                           0002D3  1122 	Sswi2c$swi2c_write_buf$240 ==.
                           0002D3  1123 	Sswi2c$swi2c_write_buf$241 ==.
                                   1124 ;	./src/swi2c.c: 174: return 0xff;
                                   1125 ; genReturn
      008A43 A6 FF            [ 1] 1126 	ld	a, #0xff
      008A45 CC 8A 49         [ 2] 1127 	jp	00136$
                           0002D8  1128 	Sswi2c$swi2c_write_buf$242 ==.
                                   1129 ; genLabel
      008A48                       1130 00132$:
                           0002D8  1131 	Sswi2c$swi2c_write_buf$243 ==.
                                   1132 ;	./src/swi2c.c: 176: return 0;
                                   1133 ; genReturn
      008A48 4F               [ 1] 1134 	clr	a
                                   1135 ; genLabel
      008A49                       1136 00136$:
                           0002D9  1137 	Sswi2c$swi2c_write_buf$244 ==.
                                   1138 ;	./src/swi2c.c: 177: }
                                   1139 ; genEndFunction
      008A49 85               [ 2] 1140 	popw	x
                           0002DA  1141 	Sswi2c$swi2c_write_buf$245 ==.
                           0002DA  1142 	Sswi2c$swi2c_write_buf$246 ==.
                           0002DA  1143 	XG$swi2c_write_buf$0$0 ==.
      008A4A 81               [ 4] 1144 	ret
                           0002DB  1145 	Sswi2c$swi2c_write_buf$247 ==.
                           0002DB  1146 	Sswi2c$swi2c_test_slave$248 ==.
                                   1147 ;	./src/swi2c.c: 187: uint8_t swi2c_test_slave(uint8_t slvaddr)
                                   1148 ; genLabel
                                   1149 ;	-----------------------------------------
                                   1150 ;	 function swi2c_test_slave
                                   1151 ;	-----------------------------------------
                                   1152 ;	Register assignment might be sub-optimal.
                                   1153 ;	Stack space usage: 1 bytes.
      008A4B                       1154 _swi2c_test_slave:
                           0002DB  1155 	Sswi2c$swi2c_test_slave$249 ==.
      008A4B 88               [ 1] 1156 	push	a
                           0002DC  1157 	Sswi2c$swi2c_test_slave$250 ==.
                           0002DC  1158 	Sswi2c$swi2c_test_slave$251 ==.
                                   1159 ;	./src/swi2c.c: 190: uint8_t mask = 1 << 7;
                                   1160 ; genAssign
      008A4C A6 80            [ 1] 1161 	ld	a, #0x80
      008A4E 6B 01            [ 1] 1162 	ld	(0x01, sp), a
                           0002E0  1163 	Sswi2c$swi2c_test_slave$252 ==.
                                   1164 ;	./src/swi2c.c: 191: if (swi2c_START()) {
                                   1165 ; genCall
      008A50 CD 8C BB         [ 4] 1166 	call	_swi2c_START
                                   1167 ; genIfx
      008A53 4D               [ 1] 1168 	tnz	a
      008A54 26 03            [ 1] 1169 	jrne	00137$
      008A56 CC 8A 5E         [ 2] 1170 	jp	00105$
      008A59                       1171 00137$:
                           0002E9  1172 	Sswi2c$swi2c_test_slave$253 ==.
                           0002E9  1173 	Sswi2c$swi2c_test_slave$254 ==.
                                   1174 ;	./src/swi2c.c: 192: return 0xaa;
                                   1175 ; genReturn
      008A59 A6 AA            [ 1] 1176 	ld	a, #0xaa
      008A5B CC 8A 94         [ 2] 1177 	jp	00110$
                           0002EE  1178 	Sswi2c$swi2c_test_slave$255 ==.
                           0002EE  1179 	Sswi2c$swi2c_test_slave$256 ==.
                                   1180 ;	./src/swi2c.c: 194: while (mask) {
                                   1181 ; genLabel
      008A5E                       1182 00105$:
                                   1183 ; genIfx
      008A5E 0D 01            [ 1] 1184 	tnz	(0x01, sp)
      008A60 26 03            [ 1] 1185 	jrne	00138$
      008A62 CC 8A 7F         [ 2] 1186 	jp	00107$
      008A65                       1187 00138$:
                           0002F5  1188 	Sswi2c$swi2c_test_slave$257 ==.
                           0002F5  1189 	Sswi2c$swi2c_test_slave$258 ==.
                                   1190 ;	./src/swi2c.c: 195: if (swi2c_writebit(slvaddr & mask)) {
                                   1191 ; genAnd
      008A65 7B 04            [ 1] 1192 	ld	a, (0x04, sp)
      008A67 14 01            [ 1] 1193 	and	a, (0x01, sp)
                                   1194 ; genIPush
      008A69 88               [ 1] 1195 	push	a
                           0002FA  1196 	Sswi2c$swi2c_test_slave$259 ==.
                                   1197 ; genCall
      008A6A CD 8B 48         [ 4] 1198 	call	_swi2c_writebit
      008A6D 5B 01            [ 2] 1199 	addw	sp, #1
                           0002FF  1200 	Sswi2c$swi2c_test_slave$260 ==.
                                   1201 ; genIfx
      008A6F 4D               [ 1] 1202 	tnz	a
      008A70 26 03            [ 1] 1203 	jrne	00139$
      008A72 CC 8A 7A         [ 2] 1204 	jp	00104$
      008A75                       1205 00139$:
                           000305  1206 	Sswi2c$swi2c_test_slave$261 ==.
                           000305  1207 	Sswi2c$swi2c_test_slave$262 ==.
                                   1208 ;	./src/swi2c.c: 196: return 0xff;
                                   1209 ; genReturn
      008A75 A6 FF            [ 1] 1210 	ld	a, #0xff
      008A77 CC 8A 94         [ 2] 1211 	jp	00110$
                           00030A  1212 	Sswi2c$swi2c_test_slave$263 ==.
                                   1213 ; genLabel
      008A7A                       1214 00104$:
                           00030A  1215 	Sswi2c$swi2c_test_slave$264 ==.
                                   1216 ;	./src/swi2c.c: 198: mask = mask >> 1;
                                   1217 ; genRightShiftLiteral
      008A7A 04 01            [ 1] 1218 	srl	(0x01, sp)
                           00030C  1219 	Sswi2c$swi2c_test_slave$265 ==.
                                   1220 ; genGoto
      008A7C CC 8A 5E         [ 2] 1221 	jp	00105$
                                   1222 ; genLabel
      008A7F                       1223 00107$:
                           00030F  1224 	Sswi2c$swi2c_test_slave$266 ==.
                                   1225 ;	./src/swi2c.c: 200: ack = swi2c_readbit();
                                   1226 ; genCall
      008A7F CD 8A B2         [ 4] 1227 	call	_swi2c_readbit
                                   1228 ; genAssign
      008A82 6B 01            [ 1] 1229 	ld	(0x01, sp), a
                           000314  1230 	Sswi2c$swi2c_test_slave$267 ==.
                                   1231 ;	./src/swi2c.c: 201: if (swi2c_STOP()) {
                                   1232 ; genCall
      008A84 CD 8D 2A         [ 4] 1233 	call	_swi2c_STOP
                                   1234 ; genIfx
      008A87 4D               [ 1] 1235 	tnz	a
      008A88 26 03            [ 1] 1236 	jrne	00140$
      008A8A CC 8A 92         [ 2] 1237 	jp	00109$
      008A8D                       1238 00140$:
                           00031D  1239 	Sswi2c$swi2c_test_slave$268 ==.
                           00031D  1240 	Sswi2c$swi2c_test_slave$269 ==.
                                   1241 ;	./src/swi2c.c: 202: return 0xff;
                                   1242 ; genReturn
      008A8D A6 FF            [ 1] 1243 	ld	a, #0xff
      008A8F CC 8A 94         [ 2] 1244 	jp	00110$
                           000322  1245 	Sswi2c$swi2c_test_slave$270 ==.
                                   1246 ; genLabel
      008A92                       1247 00109$:
                           000322  1248 	Sswi2c$swi2c_test_slave$271 ==.
                                   1249 ;	./src/swi2c.c: 204: return ack;
                                   1250 ; genReturn
      008A92 7B 01            [ 1] 1251 	ld	a, (0x01, sp)
                                   1252 ; genLabel
      008A94                       1253 00110$:
                           000324  1254 	Sswi2c$swi2c_test_slave$272 ==.
                                   1255 ;	./src/swi2c.c: 205: }
                                   1256 ; genEndFunction
      008A94 5B 01            [ 2] 1257 	addw	sp, #1
                           000326  1258 	Sswi2c$swi2c_test_slave$273 ==.
                           000326  1259 	Sswi2c$swi2c_test_slave$274 ==.
                           000326  1260 	XG$swi2c_test_slave$0$0 ==.
      008A96 81               [ 4] 1261 	ret
                           000327  1262 	Sswi2c$swi2c_test_slave$275 ==.
                           000327  1263 	Sswi2c$swi2c_init$276 ==.
                                   1264 ;	./src/swi2c.c: 208: void swi2c_init(void)
                                   1265 ; genLabel
                                   1266 ;	-----------------------------------------
                                   1267 ;	 function swi2c_init
                                   1268 ;	-----------------------------------------
                                   1269 ;	Register assignment is optimal.
                                   1270 ;	Stack space usage: 0 bytes.
      008A97                       1271 _swi2c_init:
                           000327  1272 	Sswi2c$swi2c_init$277 ==.
                           000327  1273 	Sswi2c$swi2c_init$278 ==.
                                   1274 ;	./src/swi2c.c: 210: GPIO_Init(SCL_GPIO, SCL_PIN, GPIO_MODE_OUT_OD_HIZ_SLOW);
                                   1275 ; genIPush
      008A97 4B 90            [ 1] 1276 	push	#0x90
                           000329  1277 	Sswi2c$swi2c_init$279 ==.
                                   1278 ; genIPush
      008A99 4B 40            [ 1] 1279 	push	#0x40
                           00032B  1280 	Sswi2c$swi2c_init$280 ==.
                                   1281 ; genIPush
      008A9B 4B 0A            [ 1] 1282 	push	#0x0a
                           00032D  1283 	Sswi2c$swi2c_init$281 ==.
      008A9D 4B 50            [ 1] 1284 	push	#0x50
                           00032F  1285 	Sswi2c$swi2c_init$282 ==.
                                   1286 ; genCall
      008A9F CD 8F 78         [ 4] 1287 	call	_GPIO_Init
      008AA2 5B 04            [ 2] 1288 	addw	sp, #4
                           000334  1289 	Sswi2c$swi2c_init$283 ==.
                           000334  1290 	Sswi2c$swi2c_init$284 ==.
                                   1291 ;	./src/swi2c.c: 211: GPIO_Init(SDA_GPIO, SDA_PIN, GPIO_MODE_OUT_OD_HIZ_SLOW);
                                   1292 ; genIPush
      008AA4 4B 90            [ 1] 1293 	push	#0x90
                           000336  1294 	Sswi2c$swi2c_init$285 ==.
                                   1295 ; genIPush
      008AA6 4B 80            [ 1] 1296 	push	#0x80
                           000338  1297 	Sswi2c$swi2c_init$286 ==.
                                   1298 ; genIPush
      008AA8 4B 0A            [ 1] 1299 	push	#0x0a
                           00033A  1300 	Sswi2c$swi2c_init$287 ==.
      008AAA 4B 50            [ 1] 1301 	push	#0x50
                           00033C  1302 	Sswi2c$swi2c_init$288 ==.
                                   1303 ; genCall
      008AAC CD 8F 78         [ 4] 1304 	call	_GPIO_Init
      008AAF 5B 04            [ 2] 1305 	addw	sp, #4
                           000341  1306 	Sswi2c$swi2c_init$289 ==.
                                   1307 ; genLabel
      008AB1                       1308 00101$:
                           000341  1309 	Sswi2c$swi2c_init$290 ==.
                                   1310 ;	./src/swi2c.c: 212: }
                                   1311 ; genEndFunction
                           000341  1312 	Sswi2c$swi2c_init$291 ==.
                           000341  1313 	XG$swi2c_init$0$0 ==.
      008AB1 81               [ 4] 1314 	ret
                           000342  1315 	Sswi2c$swi2c_init$292 ==.
                           000342  1316 	Sswi2c$swi2c_readbit$293 ==.
                                   1317 ;	./src/swi2c.c: 220: uint8_t swi2c_readbit(void)
                                   1318 ; genLabel
                                   1319 ;	-----------------------------------------
                                   1320 ;	 function swi2c_readbit
                                   1321 ;	-----------------------------------------
                                   1322 ;	Register assignment might be sub-optimal.
                                   1323 ;	Stack space usage: 2 bytes.
      008AB2                       1324 _swi2c_readbit:
                           000342  1325 	Sswi2c$swi2c_readbit$294 ==.
      008AB2 89               [ 2] 1326 	pushw	x
                           000343  1327 	Sswi2c$swi2c_readbit$295 ==.
                           000343  1328 	Sswi2c$swi2c_readbit$296 ==.
                                   1329 ;	./src/swi2c.c: 222: uint16_t timeout = SWI2C_TIMEOUT;
                                   1330 ; genAssign
      008AB3 AE FF FF         [ 2] 1331 	ldw	x, #0xffff
      008AB6 1F 01            [ 2] 1332 	ldw	(0x01, sp), x
                           000348  1333 	Sswi2c$swi2c_readbit$297 ==.
                                   1334 ;	./src/swi2c.c: 224: SDA_HIGH;                   // release SDA
                                   1335 ; genIPush
      008AB8 4B 80            [ 1] 1336 	push	#0x80
                           00034A  1337 	Sswi2c$swi2c_readbit$298 ==.
                                   1338 ; genIPush
      008ABA 4B 0A            [ 1] 1339 	push	#0x0a
                           00034C  1340 	Sswi2c$swi2c_readbit$299 ==.
      008ABC 4B 50            [ 1] 1341 	push	#0x50
                           00034E  1342 	Sswi2c$swi2c_readbit$300 ==.
                                   1343 ; genCall
      008ABE CD 90 05         [ 4] 1344 	call	_GPIO_WriteHigh
      008AC1 5B 03            [ 2] 1345 	addw	sp, #3
                           000353  1346 	Sswi2c$swi2c_readbit$301 ==.
                           000353  1347 	Sswi2c$swi2c_readbit$302 ==.
                                   1348 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   1349 ; genAssign
      008AC3 AE 00 05         [ 2] 1350 	ldw	x, #0x0005
                           000356  1351 	Sswi2c$swi2c_readbit$303 ==.
                                   1352 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   1353 ;	genInline
      008AC6 9D               [ 1] 1354 	nop
      008AC7 9D               [ 1] 1355 	nop
                           000358  1356 	Sswi2c$swi2c_readbit$304 ==.
                           000358  1357 	Sswi2c$swi2c_readbit$305 ==.
                                   1358 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   1359 ; genAssign
                                   1360 ; genLabel
      008AC8                       1361 00110$:
                           000358  1362 	Sswi2c$swi2c_readbit$306 ==.
                                   1363 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   1364 ; genMinus
      008AC8 5A               [ 2] 1365 	decw	x
                           000359  1366 	Sswi2c$swi2c_readbit$307 ==.
                                   1367 ;	inc/delay.h: 28: } while ( __ticks );
                                   1368 ; genIfx
      008AC9 5D               [ 2] 1369 	tnzw	x
      008ACA 27 03            [ 1] 1370 	jreq	00186$
      008ACC CC 8A C8         [ 2] 1371 	jp	00110$
      008ACF                       1372 00186$:
                                   1373 ;	inc/delay.h: 29: __asm__("nop\n");
                                   1374 ;	genInline
      008ACF 9D               [ 1] 1375 	nop
                           000360  1376 	Sswi2c$swi2c_readbit$308 ==.
                           000360  1377 	Sswi2c$swi2c_readbit$309 ==.
                                   1378 ;	./src/swi2c.c: 226: SCL_HIGH;
                                   1379 ; genIPush
      008AD0 4B 40            [ 1] 1380 	push	#0x40
                           000362  1381 	Sswi2c$swi2c_readbit$310 ==.
                                   1382 ; genIPush
      008AD2 4B 0A            [ 1] 1383 	push	#0x0a
                           000364  1384 	Sswi2c$swi2c_readbit$311 ==.
      008AD4 4B 50            [ 1] 1385 	push	#0x50
                           000366  1386 	Sswi2c$swi2c_readbit$312 ==.
                                   1387 ; genCall
      008AD6 CD 90 05         [ 4] 1388 	call	_GPIO_WriteHigh
      008AD9 5B 03            [ 2] 1389 	addw	sp, #3
                           00036B  1390 	Sswi2c$swi2c_readbit$313 ==.
                           00036B  1391 	Sswi2c$swi2c_readbit$314 ==.
                                   1392 ;	./src/swi2c.c: 227: while (SCL_stat() == RESET && timeout) {
                                   1393 ; genAssign
      008ADB 1E 01            [ 2] 1394 	ldw	x, (0x01, sp)
                                   1395 ; genLabel
      008ADD                       1396 00102$:
                                   1397 ; genIPush
      008ADD 89               [ 2] 1398 	pushw	x
                           00036E  1399 	Sswi2c$swi2c_readbit$315 ==.
      008ADE 4B 40            [ 1] 1400 	push	#0x40
                           000370  1401 	Sswi2c$swi2c_readbit$316 ==.
                                   1402 ; genIPush
      008AE0 4B 0A            [ 1] 1403 	push	#0x0a
                           000372  1404 	Sswi2c$swi2c_readbit$317 ==.
      008AE2 4B 50            [ 1] 1405 	push	#0x50
                           000374  1406 	Sswi2c$swi2c_readbit$318 ==.
                                   1407 ; genCall
      008AE4 CD 90 2A         [ 4] 1408 	call	_GPIO_ReadInputPin
      008AE7 5B 03            [ 2] 1409 	addw	sp, #3
                           000379  1410 	Sswi2c$swi2c_readbit$319 ==.
      008AE9 85               [ 2] 1411 	popw	x
                           00037A  1412 	Sswi2c$swi2c_readbit$320 ==.
                                   1413 ; genIfx
      008AEA 4D               [ 1] 1414 	tnz	a
      008AEB 27 03            [ 1] 1415 	jreq	00187$
      008AED CC 8A FA         [ 2] 1416 	jp	00139$
      008AF0                       1417 00187$:
                                   1418 ; genIfx
      008AF0 5D               [ 2] 1419 	tnzw	x
      008AF1 26 03            [ 1] 1420 	jrne	00188$
      008AF3 CC 8A FA         [ 2] 1421 	jp	00139$
      008AF6                       1422 00188$:
                           000386  1423 	Sswi2c$swi2c_readbit$321 ==.
                           000386  1424 	Sswi2c$swi2c_readbit$322 ==.
                                   1425 ;	./src/swi2c.c: 228: timeout--;
                                   1426 ; genMinus
      008AF6 5A               [ 2] 1427 	decw	x
                           000387  1428 	Sswi2c$swi2c_readbit$323 ==.
                                   1429 ; genGoto
      008AF7 CC 8A DD         [ 2] 1430 	jp	00102$
                                   1431 ; genLabel
      008AFA                       1432 00139$:
                                   1433 ; genAssign
      008AFA 1F 01            [ 2] 1434 	ldw	(0x01, sp), x
                           00038C  1435 	Sswi2c$swi2c_readbit$324 ==.
                                   1436 ;	./src/swi2c.c: 230: if (timeout == 0) {
                                   1437 ; genIfx
      008AFC 1E 01            [ 2] 1438 	ldw	x, (0x01, sp)
      008AFE 27 03            [ 1] 1439 	jreq	00189$
      008B00 CC 8B 08         [ 2] 1440 	jp	00106$
      008B03                       1441 00189$:
                           000393  1442 	Sswi2c$swi2c_readbit$325 ==.
                           000393  1443 	Sswi2c$swi2c_readbit$326 ==.
                                   1444 ;	./src/swi2c.c: 231: return 0xff;
                                   1445 ; genReturn
      008B03 A6 FF            [ 1] 1446 	ld	a, #0xff
      008B05 CC 8B 46         [ 2] 1447 	jp	00125$
                           000398  1448 	Sswi2c$swi2c_readbit$327 ==.
                                   1449 ; genLabel
      008B08                       1450 00106$:
                           000398  1451 	Sswi2c$swi2c_readbit$328 ==.
                                   1452 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   1453 ; genAssign
      008B08 AE 00 05         [ 2] 1454 	ldw	x, #0x0005
                           00039B  1455 	Sswi2c$swi2c_readbit$329 ==.
                                   1456 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   1457 ;	genInline
      008B0B 9D               [ 1] 1458 	nop
      008B0C 9D               [ 1] 1459 	nop
                           00039D  1460 	Sswi2c$swi2c_readbit$330 ==.
                           00039D  1461 	Sswi2c$swi2c_readbit$331 ==.
                                   1462 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   1463 ; genAssign
                                   1464 ; genLabel
      008B0D                       1465 00115$:
                           00039D  1466 	Sswi2c$swi2c_readbit$332 ==.
                                   1467 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   1468 ; genMinus
      008B0D 5A               [ 2] 1469 	decw	x
                           00039E  1470 	Sswi2c$swi2c_readbit$333 ==.
                                   1471 ;	inc/delay.h: 28: } while ( __ticks );
                                   1472 ; genIfx
      008B0E 5D               [ 2] 1473 	tnzw	x
      008B0F 27 03            [ 1] 1474 	jreq	00190$
      008B11 CC 8B 0D         [ 2] 1475 	jp	00115$
      008B14                       1476 00190$:
                                   1477 ;	inc/delay.h: 29: __asm__("nop\n");
                                   1478 ;	genInline
      008B14 9D               [ 1] 1479 	nop
                           0003A5  1480 	Sswi2c$swi2c_readbit$334 ==.
                           0003A5  1481 	Sswi2c$swi2c_readbit$335 ==.
                                   1482 ;	./src/swi2c.c: 234: if (SDA_stat() == RESET) {
                                   1483 ; genIPush
      008B15 4B 80            [ 1] 1484 	push	#0x80
                           0003A7  1485 	Sswi2c$swi2c_readbit$336 ==.
                                   1486 ; genIPush
      008B17 4B 0A            [ 1] 1487 	push	#0x0a
                           0003A9  1488 	Sswi2c$swi2c_readbit$337 ==.
      008B19 4B 50            [ 1] 1489 	push	#0x50
                           0003AB  1490 	Sswi2c$swi2c_readbit$338 ==.
                                   1491 ; genCall
      008B1B CD 90 2A         [ 4] 1492 	call	_GPIO_ReadInputPin
      008B1E 5B 03            [ 2] 1493 	addw	sp, #3
                           0003B0  1494 	Sswi2c$swi2c_readbit$339 ==.
                                   1495 ; genIfx
      008B20 4D               [ 1] 1496 	tnz	a
      008B21 27 03            [ 1] 1497 	jreq	00191$
      008B23 CC 8B 2A         [ 2] 1498 	jp	00108$
      008B26                       1499 00191$:
                           0003B6  1500 	Sswi2c$swi2c_readbit$340 ==.
                           0003B6  1501 	Sswi2c$swi2c_readbit$341 ==.
                                   1502 ;	./src/swi2c.c: 235: retval = 0;
                                   1503 ; genAssign
      008B26 4F               [ 1] 1504 	clr	a
                           0003B7  1505 	Sswi2c$swi2c_readbit$342 ==.
                                   1506 ; genGoto
      008B27 CC 8B 2C         [ 2] 1507 	jp	00109$
                                   1508 ; genLabel
      008B2A                       1509 00108$:
                           0003BA  1510 	Sswi2c$swi2c_readbit$343 ==.
                           0003BA  1511 	Sswi2c$swi2c_readbit$344 ==.
                                   1512 ;	./src/swi2c.c: 237: retval = 1;
                                   1513 ; genAssign
      008B2A A6 01            [ 1] 1514 	ld	a, #0x01
                           0003BC  1515 	Sswi2c$swi2c_readbit$345 ==.
                                   1516 ; genLabel
      008B2C                       1517 00109$:
                           0003BC  1518 	Sswi2c$swi2c_readbit$346 ==.
                                   1519 ;	./src/swi2c.c: 239: SCL_LOW;
                                   1520 ; genIPush
      008B2C 88               [ 1] 1521 	push	a
                           0003BD  1522 	Sswi2c$swi2c_readbit$347 ==.
      008B2D 4B 40            [ 1] 1523 	push	#0x40
                           0003BF  1524 	Sswi2c$swi2c_readbit$348 ==.
                                   1525 ; genIPush
      008B2F 4B 0A            [ 1] 1526 	push	#0x0a
                           0003C1  1527 	Sswi2c$swi2c_readbit$349 ==.
      008B31 4B 50            [ 1] 1528 	push	#0x50
                           0003C3  1529 	Sswi2c$swi2c_readbit$350 ==.
                                   1530 ; genCall
      008B33 CD 90 0C         [ 4] 1531 	call	_GPIO_WriteLow
      008B36 5B 03            [ 2] 1532 	addw	sp, #3
                           0003C8  1533 	Sswi2c$swi2c_readbit$351 ==.
      008B38 84               [ 1] 1534 	pop	a
                           0003C9  1535 	Sswi2c$swi2c_readbit$352 ==.
                           0003C9  1536 	Sswi2c$swi2c_readbit$353 ==.
                                   1537 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   1538 ; genAssign
      008B39 AE 00 05         [ 2] 1539 	ldw	x, #0x0005
                           0003CC  1540 	Sswi2c$swi2c_readbit$354 ==.
                                   1541 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   1542 ;	genInline
      008B3C 9D               [ 1] 1543 	nop
      008B3D 9D               [ 1] 1544 	nop
                           0003CE  1545 	Sswi2c$swi2c_readbit$355 ==.
                           0003CE  1546 	Sswi2c$swi2c_readbit$356 ==.
                                   1547 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   1548 ; genAssign
                                   1549 ; genLabel
      008B3E                       1550 00120$:
                           0003CE  1551 	Sswi2c$swi2c_readbit$357 ==.
                                   1552 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   1553 ; genMinus
      008B3E 5A               [ 2] 1554 	decw	x
                           0003CF  1555 	Sswi2c$swi2c_readbit$358 ==.
                                   1556 ;	inc/delay.h: 28: } while ( __ticks );
                                   1557 ; genIfx
      008B3F 5D               [ 2] 1558 	tnzw	x
      008B40 27 03            [ 1] 1559 	jreq	00192$
      008B42 CC 8B 3E         [ 2] 1560 	jp	00120$
      008B45                       1561 00192$:
                                   1562 ;	inc/delay.h: 29: __asm__("nop\n");
                                   1563 ;	genInline
      008B45 9D               [ 1] 1564 	nop
                           0003D6  1565 	Sswi2c$swi2c_readbit$359 ==.
                           0003D6  1566 	Sswi2c$swi2c_readbit$360 ==.
                                   1567 ;	./src/swi2c.c: 241: return retval;
                                   1568 ; genReturn
                                   1569 ; genLabel
      008B46                       1570 00125$:
                           0003D6  1571 	Sswi2c$swi2c_readbit$361 ==.
                                   1572 ;	./src/swi2c.c: 242: }
                                   1573 ; genEndFunction
      008B46 85               [ 2] 1574 	popw	x
                           0003D7  1575 	Sswi2c$swi2c_readbit$362 ==.
                           0003D7  1576 	Sswi2c$swi2c_readbit$363 ==.
                           0003D7  1577 	XG$swi2c_readbit$0$0 ==.
      008B47 81               [ 4] 1578 	ret
                           0003D8  1579 	Sswi2c$swi2c_readbit$364 ==.
                           0003D8  1580 	Sswi2c$swi2c_writebit$365 ==.
                                   1581 ;	./src/swi2c.c: 247: uint8_t swi2c_writebit(uint8_t bit)
                                   1582 ; genLabel
                                   1583 ;	-----------------------------------------
                                   1584 ;	 function swi2c_writebit
                                   1585 ;	-----------------------------------------
                                   1586 ;	Register assignment might be sub-optimal.
                                   1587 ;	Stack space usage: 2 bytes.
      008B48                       1588 _swi2c_writebit:
                           0003D8  1589 	Sswi2c$swi2c_writebit$366 ==.
      008B48 89               [ 2] 1590 	pushw	x
                           0003D9  1591 	Sswi2c$swi2c_writebit$367 ==.
                           0003D9  1592 	Sswi2c$swi2c_writebit$368 ==.
                                   1593 ;	./src/swi2c.c: 249: uint16_t timeout = SWI2C_TIMEOUT;
                                   1594 ; genAssign
      008B49 AE FF FF         [ 2] 1595 	ldw	x, #0xffff
      008B4C 1F 01            [ 2] 1596 	ldw	(0x01, sp), x
                           0003DE  1597 	Sswi2c$swi2c_writebit$369 ==.
                                   1598 ;	./src/swi2c.c: 250: if (bit) {
                                   1599 ; genIfx
      008B4E 0D 05            [ 1] 1600 	tnz	(0x05, sp)
      008B50 26 03            [ 1] 1601 	jrne	00186$
      008B52 CC 8B 63         [ 2] 1602 	jp	00102$
      008B55                       1603 00186$:
                           0003E5  1604 	Sswi2c$swi2c_writebit$370 ==.
                           0003E5  1605 	Sswi2c$swi2c_writebit$371 ==.
                                   1606 ;	./src/swi2c.c: 251: SDA_HIGH;
                                   1607 ; genIPush
      008B55 4B 80            [ 1] 1608 	push	#0x80
                           0003E7  1609 	Sswi2c$swi2c_writebit$372 ==.
                                   1610 ; genIPush
      008B57 4B 0A            [ 1] 1611 	push	#0x0a
                           0003E9  1612 	Sswi2c$swi2c_writebit$373 ==.
      008B59 4B 50            [ 1] 1613 	push	#0x50
                           0003EB  1614 	Sswi2c$swi2c_writebit$374 ==.
                                   1615 ; genCall
      008B5B CD 90 05         [ 4] 1616 	call	_GPIO_WriteHigh
      008B5E 5B 03            [ 2] 1617 	addw	sp, #3
                           0003F0  1618 	Sswi2c$swi2c_writebit$375 ==.
                           0003F0  1619 	Sswi2c$swi2c_writebit$376 ==.
                                   1620 ; genGoto
      008B60 CC 8B 6E         [ 2] 1621 	jp	00103$
                                   1622 ; genLabel
      008B63                       1623 00102$:
                           0003F3  1624 	Sswi2c$swi2c_writebit$377 ==.
                           0003F3  1625 	Sswi2c$swi2c_writebit$378 ==.
                                   1626 ;	./src/swi2c.c: 253: SDA_LOW;
                                   1627 ; genIPush
      008B63 4B 80            [ 1] 1628 	push	#0x80
                           0003F5  1629 	Sswi2c$swi2c_writebit$379 ==.
                                   1630 ; genIPush
      008B65 4B 0A            [ 1] 1631 	push	#0x0a
                           0003F7  1632 	Sswi2c$swi2c_writebit$380 ==.
      008B67 4B 50            [ 1] 1633 	push	#0x50
                           0003F9  1634 	Sswi2c$swi2c_writebit$381 ==.
                                   1635 ; genCall
      008B69 CD 90 0C         [ 4] 1636 	call	_GPIO_WriteLow
      008B6C 5B 03            [ 2] 1637 	addw	sp, #3
                           0003FE  1638 	Sswi2c$swi2c_writebit$382 ==.
                           0003FE  1639 	Sswi2c$swi2c_writebit$383 ==.
                                   1640 ; genLabel
      008B6E                       1641 00103$:
                           0003FE  1642 	Sswi2c$swi2c_writebit$384 ==.
                                   1643 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   1644 ; genAssign
      008B6E AE 00 05         [ 2] 1645 	ldw	x, #0x0005
                           000401  1646 	Sswi2c$swi2c_writebit$385 ==.
                                   1647 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   1648 ;	genInline
      008B71 9D               [ 1] 1649 	nop
      008B72 9D               [ 1] 1650 	nop
                           000403  1651 	Sswi2c$swi2c_writebit$386 ==.
                           000403  1652 	Sswi2c$swi2c_writebit$387 ==.
                                   1653 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   1654 ; genAssign
                                   1655 ; genLabel
      008B73                       1656 00110$:
                           000403  1657 	Sswi2c$swi2c_writebit$388 ==.
                                   1658 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   1659 ; genMinus
      008B73 5A               [ 2] 1660 	decw	x
                           000404  1661 	Sswi2c$swi2c_writebit$389 ==.
                                   1662 ;	inc/delay.h: 28: } while ( __ticks );
                                   1663 ; genIfx
      008B74 5D               [ 2] 1664 	tnzw	x
      008B75 27 03            [ 1] 1665 	jreq	00187$
      008B77 CC 8B 73         [ 2] 1666 	jp	00110$
      008B7A                       1667 00187$:
                                   1668 ;	inc/delay.h: 29: __asm__("nop\n");
                                   1669 ;	genInline
      008B7A 9D               [ 1] 1670 	nop
                           00040B  1671 	Sswi2c$swi2c_writebit$390 ==.
                           00040B  1672 	Sswi2c$swi2c_writebit$391 ==.
                                   1673 ;	./src/swi2c.c: 256: SCL_HIGH;
                                   1674 ; genIPush
      008B7B 4B 40            [ 1] 1675 	push	#0x40
                           00040D  1676 	Sswi2c$swi2c_writebit$392 ==.
                                   1677 ; genIPush
      008B7D 4B 0A            [ 1] 1678 	push	#0x0a
                           00040F  1679 	Sswi2c$swi2c_writebit$393 ==.
      008B7F 4B 50            [ 1] 1680 	push	#0x50
                           000411  1681 	Sswi2c$swi2c_writebit$394 ==.
                                   1682 ; genCall
      008B81 CD 90 05         [ 4] 1683 	call	_GPIO_WriteHigh
      008B84 5B 03            [ 2] 1684 	addw	sp, #3
                           000416  1685 	Sswi2c$swi2c_writebit$395 ==.
                           000416  1686 	Sswi2c$swi2c_writebit$396 ==.
                                   1687 ;	./src/swi2c.c: 257: while (SCL_stat() == RESET && timeout) {
                                   1688 ; genAssign
      008B86 1E 01            [ 2] 1689 	ldw	x, (0x01, sp)
                                   1690 ; genLabel
      008B88                       1691 00105$:
                                   1692 ; genIPush
      008B88 89               [ 2] 1693 	pushw	x
                           000419  1694 	Sswi2c$swi2c_writebit$397 ==.
      008B89 4B 40            [ 1] 1695 	push	#0x40
                           00041B  1696 	Sswi2c$swi2c_writebit$398 ==.
                                   1697 ; genIPush
      008B8B 4B 0A            [ 1] 1698 	push	#0x0a
                           00041D  1699 	Sswi2c$swi2c_writebit$399 ==.
      008B8D 4B 50            [ 1] 1700 	push	#0x50
                           00041F  1701 	Sswi2c$swi2c_writebit$400 ==.
                                   1702 ; genCall
      008B8F CD 90 2A         [ 4] 1703 	call	_GPIO_ReadInputPin
      008B92 5B 03            [ 2] 1704 	addw	sp, #3
                           000424  1705 	Sswi2c$swi2c_writebit$401 ==.
      008B94 85               [ 2] 1706 	popw	x
                           000425  1707 	Sswi2c$swi2c_writebit$402 ==.
                                   1708 ; genIfx
      008B95 4D               [ 1] 1709 	tnz	a
      008B96 27 03            [ 1] 1710 	jreq	00188$
      008B98 CC 8B A5         [ 2] 1711 	jp	00139$
      008B9B                       1712 00188$:
                                   1713 ; genIfx
      008B9B 5D               [ 2] 1714 	tnzw	x
      008B9C 26 03            [ 1] 1715 	jrne	00189$
      008B9E CC 8B A5         [ 2] 1716 	jp	00139$
      008BA1                       1717 00189$:
                           000431  1718 	Sswi2c$swi2c_writebit$403 ==.
                           000431  1719 	Sswi2c$swi2c_writebit$404 ==.
                                   1720 ;	./src/swi2c.c: 258: timeout--;
                                   1721 ; genMinus
      008BA1 5A               [ 2] 1722 	decw	x
                           000432  1723 	Sswi2c$swi2c_writebit$405 ==.
                                   1724 ; genGoto
      008BA2 CC 8B 88         [ 2] 1725 	jp	00105$
                                   1726 ; genLabel
      008BA5                       1727 00139$:
                                   1728 ; genAssign
      008BA5 1F 01            [ 2] 1729 	ldw	(0x01, sp), x
                           000437  1730 	Sswi2c$swi2c_writebit$406 ==.
                                   1731 ;	./src/swi2c.c: 260: if (timeout == 0) {
                                   1732 ; genIfx
      008BA7 1E 01            [ 2] 1733 	ldw	x, (0x01, sp)
      008BA9 27 03            [ 1] 1734 	jreq	00190$
      008BAB CC 8B BE         [ 2] 1735 	jp	00109$
      008BAE                       1736 00190$:
                           00043E  1737 	Sswi2c$swi2c_writebit$407 ==.
                           00043E  1738 	Sswi2c$swi2c_writebit$408 ==.
                                   1739 ;	./src/swi2c.c: 261: SDA_HIGH;
                                   1740 ; genIPush
      008BAE 4B 80            [ 1] 1741 	push	#0x80
                           000440  1742 	Sswi2c$swi2c_writebit$409 ==.
                                   1743 ; genIPush
      008BB0 4B 0A            [ 1] 1744 	push	#0x0a
                           000442  1745 	Sswi2c$swi2c_writebit$410 ==.
      008BB2 4B 50            [ 1] 1746 	push	#0x50
                           000444  1747 	Sswi2c$swi2c_writebit$411 ==.
                                   1748 ; genCall
      008BB4 CD 90 05         [ 4] 1749 	call	_GPIO_WriteHigh
      008BB7 5B 03            [ 2] 1750 	addw	sp, #3
                           000449  1751 	Sswi2c$swi2c_writebit$412 ==.
                           000449  1752 	Sswi2c$swi2c_writebit$413 ==.
                                   1753 ;	./src/swi2c.c: 262: return 0xff;
                                   1754 ; genReturn
      008BB9 A6 FF            [ 1] 1755 	ld	a, #0xff
      008BBB CC 8B E4         [ 2] 1756 	jp	00125$
                           00044E  1757 	Sswi2c$swi2c_writebit$414 ==.
                                   1758 ; genLabel
      008BBE                       1759 00109$:
                           00044E  1760 	Sswi2c$swi2c_writebit$415 ==.
                                   1761 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   1762 ; genAssign
      008BBE AE 00 05         [ 2] 1763 	ldw	x, #0x0005
                           000451  1764 	Sswi2c$swi2c_writebit$416 ==.
                                   1765 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   1766 ;	genInline
      008BC1 9D               [ 1] 1767 	nop
      008BC2 9D               [ 1] 1768 	nop
                           000453  1769 	Sswi2c$swi2c_writebit$417 ==.
                           000453  1770 	Sswi2c$swi2c_writebit$418 ==.
                                   1771 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   1772 ; genAssign
                                   1773 ; genLabel
      008BC3                       1774 00115$:
                           000453  1775 	Sswi2c$swi2c_writebit$419 ==.
                                   1776 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   1777 ; genMinus
      008BC3 5A               [ 2] 1778 	decw	x
                           000454  1779 	Sswi2c$swi2c_writebit$420 ==.
                                   1780 ;	inc/delay.h: 28: } while ( __ticks );
                                   1781 ; genIfx
      008BC4 5D               [ 2] 1782 	tnzw	x
      008BC5 27 03            [ 1] 1783 	jreq	00191$
      008BC7 CC 8B C3         [ 2] 1784 	jp	00115$
      008BCA                       1785 00191$:
                                   1786 ;	inc/delay.h: 29: __asm__("nop\n");
                                   1787 ;	genInline
      008BCA 9D               [ 1] 1788 	nop
                           00045B  1789 	Sswi2c$swi2c_writebit$421 ==.
                           00045B  1790 	Sswi2c$swi2c_writebit$422 ==.
                                   1791 ;	./src/swi2c.c: 265: SCL_LOW;
                                   1792 ; genIPush
      008BCB 4B 40            [ 1] 1793 	push	#0x40
                           00045D  1794 	Sswi2c$swi2c_writebit$423 ==.
                                   1795 ; genIPush
      008BCD 4B 0A            [ 1] 1796 	push	#0x0a
                           00045F  1797 	Sswi2c$swi2c_writebit$424 ==.
      008BCF 4B 50            [ 1] 1798 	push	#0x50
                           000461  1799 	Sswi2c$swi2c_writebit$425 ==.
                                   1800 ; genCall
      008BD1 CD 90 0C         [ 4] 1801 	call	_GPIO_WriteLow
      008BD4 5B 03            [ 2] 1802 	addw	sp, #3
                           000466  1803 	Sswi2c$swi2c_writebit$426 ==.
                           000466  1804 	Sswi2c$swi2c_writebit$427 ==.
                                   1805 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   1806 ; genAssign
      008BD6 AE 00 05         [ 2] 1807 	ldw	x, #0x0005
                           000469  1808 	Sswi2c$swi2c_writebit$428 ==.
                                   1809 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   1810 ;	genInline
      008BD9 9D               [ 1] 1811 	nop
      008BDA 9D               [ 1] 1812 	nop
                           00046B  1813 	Sswi2c$swi2c_writebit$429 ==.
                           00046B  1814 	Sswi2c$swi2c_writebit$430 ==.
                                   1815 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   1816 ; genAssign
                                   1817 ; genLabel
      008BDB                       1818 00120$:
                           00046B  1819 	Sswi2c$swi2c_writebit$431 ==.
                                   1820 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   1821 ; genMinus
      008BDB 5A               [ 2] 1822 	decw	x
                           00046C  1823 	Sswi2c$swi2c_writebit$432 ==.
                                   1824 ;	inc/delay.h: 28: } while ( __ticks );
                                   1825 ; genIfx
      008BDC 5D               [ 2] 1826 	tnzw	x
      008BDD 27 03            [ 1] 1827 	jreq	00192$
      008BDF CC 8B DB         [ 2] 1828 	jp	00120$
      008BE2                       1829 00192$:
                                   1830 ;	inc/delay.h: 29: __asm__("nop\n");
                                   1831 ;	genInline
      008BE2 9D               [ 1] 1832 	nop
                           000473  1833 	Sswi2c$swi2c_writebit$433 ==.
                           000473  1834 	Sswi2c$swi2c_writebit$434 ==.
                                   1835 ;	./src/swi2c.c: 267: return 0;
                                   1836 ; genReturn
      008BE3 4F               [ 1] 1837 	clr	a
                                   1838 ; genLabel
      008BE4                       1839 00125$:
                           000474  1840 	Sswi2c$swi2c_writebit$435 ==.
                                   1841 ;	./src/swi2c.c: 268: }
                                   1842 ; genEndFunction
      008BE4 85               [ 2] 1843 	popw	x
                           000475  1844 	Sswi2c$swi2c_writebit$436 ==.
                           000475  1845 	Sswi2c$swi2c_writebit$437 ==.
                           000475  1846 	XG$swi2c_writebit$0$0 ==.
      008BE5 81               [ 4] 1847 	ret
                           000476  1848 	Sswi2c$swi2c_writebit$438 ==.
                           000476  1849 	Sswi2c$swi2c_RESTART$439 ==.
                                   1850 ;	./src/swi2c.c: 273: uint8_t swi2c_RESTART(void)
                                   1851 ; genLabel
                                   1852 ;	-----------------------------------------
                                   1853 ;	 function swi2c_RESTART
                                   1854 ;	-----------------------------------------
                                   1855 ;	Register assignment might be sub-optimal.
                                   1856 ;	Stack space usage: 2 bytes.
      008BE6                       1857 _swi2c_RESTART:
                           000476  1858 	Sswi2c$swi2c_RESTART$440 ==.
      008BE6 89               [ 2] 1859 	pushw	x
                           000477  1860 	Sswi2c$swi2c_RESTART$441 ==.
                           000477  1861 	Sswi2c$swi2c_RESTART$442 ==.
                                   1862 ;	./src/swi2c.c: 275: uint16_t timeout = SWI2C_TIMEOUT;
                                   1863 ; genAssign
      008BE7 5F               [ 1] 1864 	clrw	x
      008BE8 5A               [ 2] 1865 	decw	x
                           000479  1866 	Sswi2c$swi2c_RESTART$443 ==.
                                   1867 ;	./src/swi2c.c: 276: SCL_LOW;
                                   1868 ; genIPush
      008BE9 89               [ 2] 1869 	pushw	x
                           00047A  1870 	Sswi2c$swi2c_RESTART$444 ==.
      008BEA 4B 40            [ 1] 1871 	push	#0x40
                           00047C  1872 	Sswi2c$swi2c_RESTART$445 ==.
                                   1873 ; genIPush
      008BEC 4B 0A            [ 1] 1874 	push	#0x0a
                           00047E  1875 	Sswi2c$swi2c_RESTART$446 ==.
      008BEE 4B 50            [ 1] 1876 	push	#0x50
                           000480  1877 	Sswi2c$swi2c_RESTART$447 ==.
                                   1878 ; genCall
      008BF0 CD 90 0C         [ 4] 1879 	call	_GPIO_WriteLow
      008BF3 5B 03            [ 2] 1880 	addw	sp, #3
                           000485  1881 	Sswi2c$swi2c_RESTART$448 ==.
      008BF5 85               [ 2] 1882 	popw	x
                           000486  1883 	Sswi2c$swi2c_RESTART$449 ==.
                           000486  1884 	Sswi2c$swi2c_RESTART$450 ==.
                                   1885 ;	./src/swi2c.c: 277: SDA_HIGH;
                                   1886 ; genIPush
      008BF6 89               [ 2] 1887 	pushw	x
                           000487  1888 	Sswi2c$swi2c_RESTART$451 ==.
      008BF7 4B 80            [ 1] 1889 	push	#0x80
                           000489  1890 	Sswi2c$swi2c_RESTART$452 ==.
                                   1891 ; genIPush
      008BF9 4B 0A            [ 1] 1892 	push	#0x0a
                           00048B  1893 	Sswi2c$swi2c_RESTART$453 ==.
      008BFB 4B 50            [ 1] 1894 	push	#0x50
                           00048D  1895 	Sswi2c$swi2c_RESTART$454 ==.
                                   1896 ; genCall
      008BFD CD 90 05         [ 4] 1897 	call	_GPIO_WriteHigh
      008C00 5B 03            [ 2] 1898 	addw	sp, #3
                           000492  1899 	Sswi2c$swi2c_RESTART$455 ==.
      008C02 85               [ 2] 1900 	popw	x
                           000493  1901 	Sswi2c$swi2c_RESTART$456 ==.
                           000493  1902 	Sswi2c$swi2c_RESTART$457 ==.
                                   1903 ;	./src/swi2c.c: 278: while (SDA_stat() == RESET && timeout) {
                                   1904 ; genAssign
                                   1905 ; genLabel
      008C03                       1906 00102$:
                                   1907 ; genIPush
      008C03 89               [ 2] 1908 	pushw	x
                           000494  1909 	Sswi2c$swi2c_RESTART$458 ==.
      008C04 4B 80            [ 1] 1910 	push	#0x80
                           000496  1911 	Sswi2c$swi2c_RESTART$459 ==.
                                   1912 ; genIPush
      008C06 4B 0A            [ 1] 1913 	push	#0x0a
                           000498  1914 	Sswi2c$swi2c_RESTART$460 ==.
      008C08 4B 50            [ 1] 1915 	push	#0x50
                           00049A  1916 	Sswi2c$swi2c_RESTART$461 ==.
                                   1917 ; genCall
      008C0A CD 90 2A         [ 4] 1918 	call	_GPIO_ReadInputPin
      008C0D 5B 03            [ 2] 1919 	addw	sp, #3
                           00049F  1920 	Sswi2c$swi2c_RESTART$462 ==.
      008C0F 85               [ 2] 1921 	popw	x
                           0004A0  1922 	Sswi2c$swi2c_RESTART$463 ==.
                                   1923 ; genIfx
      008C10 4D               [ 1] 1924 	tnz	a
      008C11 27 03            [ 1] 1925 	jreq	00221$
      008C13 CC 8C 20         [ 2] 1926 	jp	00151$
      008C16                       1927 00221$:
                                   1928 ; genIfx
      008C16 5D               [ 2] 1929 	tnzw	x
      008C17 26 03            [ 1] 1930 	jrne	00222$
      008C19 CC 8C 20         [ 2] 1931 	jp	00151$
      008C1C                       1932 00222$:
                           0004AC  1933 	Sswi2c$swi2c_RESTART$464 ==.
                           0004AC  1934 	Sswi2c$swi2c_RESTART$465 ==.
                                   1935 ;	./src/swi2c.c: 279: timeout--;
                                   1936 ; genMinus
      008C1C 5A               [ 2] 1937 	decw	x
                           0004AD  1938 	Sswi2c$swi2c_RESTART$466 ==.
                                   1939 ; genGoto
      008C1D CC 8C 03         [ 2] 1940 	jp	00102$
                                   1941 ; genLabel
      008C20                       1942 00151$:
                                   1943 ; genAssign
      008C20 1F 01            [ 2] 1944 	ldw	(0x01, sp), x
                           0004B2  1945 	Sswi2c$swi2c_RESTART$467 ==.
                                   1946 ;	./src/swi2c.c: 281: if (timeout == 0) {
                                   1947 ; genIfx
      008C22 1E 01            [ 2] 1948 	ldw	x, (0x01, sp)
      008C24 27 03            [ 1] 1949 	jreq	00223$
      008C26 CC 8C 39         [ 2] 1950 	jp	00106$
      008C29                       1951 00223$:
                           0004B9  1952 	Sswi2c$swi2c_RESTART$468 ==.
                           0004B9  1953 	Sswi2c$swi2c_RESTART$469 ==.
                                   1954 ;	./src/swi2c.c: 282: SCL_HIGH;
                                   1955 ; genIPush
      008C29 4B 40            [ 1] 1956 	push	#0x40
                           0004BB  1957 	Sswi2c$swi2c_RESTART$470 ==.
                                   1958 ; genIPush
      008C2B 4B 0A            [ 1] 1959 	push	#0x0a
                           0004BD  1960 	Sswi2c$swi2c_RESTART$471 ==.
      008C2D 4B 50            [ 1] 1961 	push	#0x50
                           0004BF  1962 	Sswi2c$swi2c_RESTART$472 ==.
                                   1963 ; genCall
      008C2F CD 90 05         [ 4] 1964 	call	_GPIO_WriteHigh
      008C32 5B 03            [ 2] 1965 	addw	sp, #3
                           0004C4  1966 	Sswi2c$swi2c_RESTART$473 ==.
                           0004C4  1967 	Sswi2c$swi2c_RESTART$474 ==.
                                   1968 ;	./src/swi2c.c: 283: return 0xff;
                                   1969 ; genReturn
      008C34 A6 FF            [ 1] 1970 	ld	a, #0xff
      008C36 CC 8C B9         [ 2] 1971 	jp	00133$
                           0004C9  1972 	Sswi2c$swi2c_RESTART$475 ==.
                                   1973 ; genLabel
      008C39                       1974 00106$:
                           0004C9  1975 	Sswi2c$swi2c_RESTART$476 ==.
                                   1976 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   1977 ; genAssign
      008C39 AE 00 0B         [ 2] 1978 	ldw	x, #0x000b
                           0004CC  1979 	Sswi2c$swi2c_RESTART$477 ==.
                                   1980 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   1981 ;	genInline
      008C3C 9D               [ 1] 1982 	nop
      008C3D 9D               [ 1] 1983 	nop
                           0004CE  1984 	Sswi2c$swi2c_RESTART$478 ==.
                           0004CE  1985 	Sswi2c$swi2c_RESTART$479 ==.
                                   1986 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   1987 ; genAssign
                                   1988 ; genLabel
      008C3E                       1989 00113$:
                           0004CE  1990 	Sswi2c$swi2c_RESTART$480 ==.
                                   1991 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   1992 ; genMinus
      008C3E 5A               [ 2] 1993 	decw	x
                           0004CF  1994 	Sswi2c$swi2c_RESTART$481 ==.
                                   1995 ;	inc/delay.h: 28: } while ( __ticks );
                                   1996 ; genIfx
      008C3F 5D               [ 2] 1997 	tnzw	x
      008C40 27 03            [ 1] 1998 	jreq	00224$
      008C42 CC 8C 3E         [ 2] 1999 	jp	00113$
      008C45                       2000 00224$:
                                   2001 ;	inc/delay.h: 29: __asm__("nop\n");
                                   2002 ;	genInline
      008C45 9D               [ 1] 2003 	nop
                           0004D6  2004 	Sswi2c$swi2c_RESTART$482 ==.
                           0004D6  2005 	Sswi2c$swi2c_RESTART$483 ==.
                                   2006 ;	./src/swi2c.c: 286: SCL_HIGH;
                                   2007 ; genIPush
      008C46 4B 40            [ 1] 2008 	push	#0x40
                           0004D8  2009 	Sswi2c$swi2c_RESTART$484 ==.
                                   2010 ; genIPush
      008C48 4B 0A            [ 1] 2011 	push	#0x0a
                           0004DA  2012 	Sswi2c$swi2c_RESTART$485 ==.
      008C4A 4B 50            [ 1] 2013 	push	#0x50
                           0004DC  2014 	Sswi2c$swi2c_RESTART$486 ==.
                                   2015 ; genCall
      008C4C CD 90 05         [ 4] 2016 	call	_GPIO_WriteHigh
      008C4F 5B 03            [ 2] 2017 	addw	sp, #3
                           0004E1  2018 	Sswi2c$swi2c_RESTART$487 ==.
                           0004E1  2019 	Sswi2c$swi2c_RESTART$488 ==.
                                   2020 ;	./src/swi2c.c: 287: while (SCL_stat() == RESET && timeout) {
                                   2021 ; genAssign
      008C51 1E 01            [ 2] 2022 	ldw	x, (0x01, sp)
                                   2023 ; genLabel
      008C53                       2024 00108$:
                                   2025 ; genIPush
      008C53 89               [ 2] 2026 	pushw	x
                           0004E4  2027 	Sswi2c$swi2c_RESTART$489 ==.
      008C54 4B 40            [ 1] 2028 	push	#0x40
                           0004E6  2029 	Sswi2c$swi2c_RESTART$490 ==.
                                   2030 ; genIPush
      008C56 4B 0A            [ 1] 2031 	push	#0x0a
                           0004E8  2032 	Sswi2c$swi2c_RESTART$491 ==.
      008C58 4B 50            [ 1] 2033 	push	#0x50
                           0004EA  2034 	Sswi2c$swi2c_RESTART$492 ==.
                                   2035 ; genCall
      008C5A CD 90 2A         [ 4] 2036 	call	_GPIO_ReadInputPin
      008C5D 5B 03            [ 2] 2037 	addw	sp, #3
                           0004EF  2038 	Sswi2c$swi2c_RESTART$493 ==.
      008C5F 85               [ 2] 2039 	popw	x
                           0004F0  2040 	Sswi2c$swi2c_RESTART$494 ==.
                                   2041 ; genIfx
      008C60 4D               [ 1] 2042 	tnz	a
      008C61 27 03            [ 1] 2043 	jreq	00225$
      008C63 CC 8C 70         [ 2] 2044 	jp	00153$
      008C66                       2045 00225$:
                                   2046 ; genIfx
      008C66 5D               [ 2] 2047 	tnzw	x
      008C67 26 03            [ 1] 2048 	jrne	00226$
      008C69 CC 8C 70         [ 2] 2049 	jp	00153$
      008C6C                       2050 00226$:
                           0004FC  2051 	Sswi2c$swi2c_RESTART$495 ==.
                           0004FC  2052 	Sswi2c$swi2c_RESTART$496 ==.
                                   2053 ;	./src/swi2c.c: 288: timeout--;
                                   2054 ; genMinus
      008C6C 5A               [ 2] 2055 	decw	x
                           0004FD  2056 	Sswi2c$swi2c_RESTART$497 ==.
                                   2057 ; genGoto
      008C6D CC 8C 53         [ 2] 2058 	jp	00108$
                                   2059 ; genLabel
      008C70                       2060 00153$:
                                   2061 ; genAssign
                           000500  2062 	Sswi2c$swi2c_RESTART$498 ==.
                                   2063 ;	./src/swi2c.c: 290: if (timeout == 0) {
                                   2064 ; genIfx
      008C70 5D               [ 2] 2065 	tnzw	x
      008C71 27 03            [ 1] 2066 	jreq	00227$
      008C73 CC 8C 7B         [ 2] 2067 	jp	00112$
      008C76                       2068 00227$:
                           000506  2069 	Sswi2c$swi2c_RESTART$499 ==.
                           000506  2070 	Sswi2c$swi2c_RESTART$500 ==.
                                   2071 ;	./src/swi2c.c: 291: return 0xff;
                                   2072 ; genReturn
      008C76 A6 FF            [ 1] 2073 	ld	a, #0xff
      008C78 CC 8C B9         [ 2] 2074 	jp	00133$
                           00050B  2075 	Sswi2c$swi2c_RESTART$501 ==.
                                   2076 ; genLabel
      008C7B                       2077 00112$:
                           00050B  2078 	Sswi2c$swi2c_RESTART$502 ==.
                                   2079 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   2080 ; genAssign
      008C7B AE 00 0B         [ 2] 2081 	ldw	x, #0x000b
                           00050E  2082 	Sswi2c$swi2c_RESTART$503 ==.
                                   2083 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   2084 ;	genInline
      008C7E 9D               [ 1] 2085 	nop
      008C7F 9D               [ 1] 2086 	nop
                           000510  2087 	Sswi2c$swi2c_RESTART$504 ==.
                           000510  2088 	Sswi2c$swi2c_RESTART$505 ==.
                                   2089 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   2090 ; genAssign
                                   2091 ; genLabel
      008C80                       2092 00118$:
                           000510  2093 	Sswi2c$swi2c_RESTART$506 ==.
                                   2094 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   2095 ; genMinus
      008C80 5A               [ 2] 2096 	decw	x
                           000511  2097 	Sswi2c$swi2c_RESTART$507 ==.
                                   2098 ;	inc/delay.h: 28: } while ( __ticks );
                                   2099 ; genIfx
      008C81 5D               [ 2] 2100 	tnzw	x
      008C82 27 03            [ 1] 2101 	jreq	00228$
      008C84 CC 8C 80         [ 2] 2102 	jp	00118$
      008C87                       2103 00228$:
                                   2104 ;	inc/delay.h: 29: __asm__("nop\n");
                                   2105 ;	genInline
      008C87 9D               [ 1] 2106 	nop
                           000518  2107 	Sswi2c$swi2c_RESTART$508 ==.
                           000518  2108 	Sswi2c$swi2c_RESTART$509 ==.
                                   2109 ;	./src/swi2c.c: 294: SDA_LOW;
                                   2110 ; genIPush
      008C88 4B 80            [ 1] 2111 	push	#0x80
                           00051A  2112 	Sswi2c$swi2c_RESTART$510 ==.
                                   2113 ; genIPush
      008C8A 4B 0A            [ 1] 2114 	push	#0x0a
                           00051C  2115 	Sswi2c$swi2c_RESTART$511 ==.
      008C8C 4B 50            [ 1] 2116 	push	#0x50
                           00051E  2117 	Sswi2c$swi2c_RESTART$512 ==.
                                   2118 ; genCall
      008C8E CD 90 0C         [ 4] 2119 	call	_GPIO_WriteLow
      008C91 5B 03            [ 2] 2120 	addw	sp, #3
                           000523  2121 	Sswi2c$swi2c_RESTART$513 ==.
                           000523  2122 	Sswi2c$swi2c_RESTART$514 ==.
                                   2123 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   2124 ; genAssign
      008C93 AE 00 0B         [ 2] 2125 	ldw	x, #0x000b
                           000526  2126 	Sswi2c$swi2c_RESTART$515 ==.
                                   2127 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   2128 ;	genInline
      008C96 9D               [ 1] 2129 	nop
      008C97 9D               [ 1] 2130 	nop
                           000528  2131 	Sswi2c$swi2c_RESTART$516 ==.
                           000528  2132 	Sswi2c$swi2c_RESTART$517 ==.
                                   2133 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   2134 ; genAssign
                                   2135 ; genLabel
      008C98                       2136 00123$:
                           000528  2137 	Sswi2c$swi2c_RESTART$518 ==.
                                   2138 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   2139 ; genMinus
      008C98 5A               [ 2] 2140 	decw	x
                           000529  2141 	Sswi2c$swi2c_RESTART$519 ==.
                                   2142 ;	inc/delay.h: 28: } while ( __ticks );
                                   2143 ; genIfx
      008C99 5D               [ 2] 2144 	tnzw	x
      008C9A 27 03            [ 1] 2145 	jreq	00229$
      008C9C CC 8C 98         [ 2] 2146 	jp	00123$
      008C9F                       2147 00229$:
                                   2148 ;	inc/delay.h: 29: __asm__("nop\n");
                                   2149 ;	genInline
      008C9F 9D               [ 1] 2150 	nop
                           000530  2151 	Sswi2c$swi2c_RESTART$520 ==.
                           000530  2152 	Sswi2c$swi2c_RESTART$521 ==.
                                   2153 ;	./src/swi2c.c: 296: SCL_LOW;
                                   2154 ; genIPush
      008CA0 4B 40            [ 1] 2155 	push	#0x40
                           000532  2156 	Sswi2c$swi2c_RESTART$522 ==.
                                   2157 ; genIPush
      008CA2 4B 0A            [ 1] 2158 	push	#0x0a
                           000534  2159 	Sswi2c$swi2c_RESTART$523 ==.
      008CA4 4B 50            [ 1] 2160 	push	#0x50
                           000536  2161 	Sswi2c$swi2c_RESTART$524 ==.
                                   2162 ; genCall
      008CA6 CD 90 0C         [ 4] 2163 	call	_GPIO_WriteLow
      008CA9 5B 03            [ 2] 2164 	addw	sp, #3
                           00053B  2165 	Sswi2c$swi2c_RESTART$525 ==.
                           00053B  2166 	Sswi2c$swi2c_RESTART$526 ==.
                                   2167 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   2168 ; genAssign
      008CAB AE 00 0B         [ 2] 2169 	ldw	x, #0x000b
                           00053E  2170 	Sswi2c$swi2c_RESTART$527 ==.
                                   2171 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   2172 ;	genInline
      008CAE 9D               [ 1] 2173 	nop
      008CAF 9D               [ 1] 2174 	nop
                           000540  2175 	Sswi2c$swi2c_RESTART$528 ==.
                           000540  2176 	Sswi2c$swi2c_RESTART$529 ==.
                                   2177 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   2178 ; genAssign
                                   2179 ; genLabel
      008CB0                       2180 00128$:
                           000540  2181 	Sswi2c$swi2c_RESTART$530 ==.
                                   2182 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   2183 ; genMinus
      008CB0 5A               [ 2] 2184 	decw	x
                           000541  2185 	Sswi2c$swi2c_RESTART$531 ==.
                                   2186 ;	inc/delay.h: 28: } while ( __ticks );
                                   2187 ; genIfx
      008CB1 5D               [ 2] 2188 	tnzw	x
      008CB2 27 03            [ 1] 2189 	jreq	00230$
      008CB4 CC 8C B0         [ 2] 2190 	jp	00128$
      008CB7                       2191 00230$:
                                   2192 ;	inc/delay.h: 29: __asm__("nop\n");
                                   2193 ;	genInline
      008CB7 9D               [ 1] 2194 	nop
                           000548  2195 	Sswi2c$swi2c_RESTART$532 ==.
                           000548  2196 	Sswi2c$swi2c_RESTART$533 ==.
                                   2197 ;	./src/swi2c.c: 298: return 0;
                                   2198 ; genReturn
      008CB8 4F               [ 1] 2199 	clr	a
                                   2200 ; genLabel
      008CB9                       2201 00133$:
                           000549  2202 	Sswi2c$swi2c_RESTART$534 ==.
                                   2203 ;	./src/swi2c.c: 299: }
                                   2204 ; genEndFunction
      008CB9 85               [ 2] 2205 	popw	x
                           00054A  2206 	Sswi2c$swi2c_RESTART$535 ==.
                           00054A  2207 	Sswi2c$swi2c_RESTART$536 ==.
                           00054A  2208 	XG$swi2c_RESTART$0$0 ==.
      008CBA 81               [ 4] 2209 	ret
                           00054B  2210 	Sswi2c$swi2c_RESTART$537 ==.
                           00054B  2211 	Sswi2c$swi2c_START$538 ==.
                                   2212 ;	./src/swi2c.c: 304: uint8_t swi2c_START(void)
                                   2213 ; genLabel
                                   2214 ;	-----------------------------------------
                                   2215 ;	 function swi2c_START
                                   2216 ;	-----------------------------------------
                                   2217 ;	Register assignment might be sub-optimal.
                                   2218 ;	Stack space usage: 0 bytes.
      008CBB                       2219 _swi2c_START:
                           00054B  2220 	Sswi2c$swi2c_START$539 ==.
                           00054B  2221 	Sswi2c$swi2c_START$540 ==.
                                   2222 ;	./src/swi2c.c: 306: if (SCL_stat() == RESET || SDA_stat() == RESET) {
                                   2223 ; genIPush
      008CBB 4B 40            [ 1] 2224 	push	#0x40
                           00054D  2225 	Sswi2c$swi2c_START$541 ==.
                                   2226 ; genIPush
      008CBD 4B 0A            [ 1] 2227 	push	#0x0a
                           00054F  2228 	Sswi2c$swi2c_START$542 ==.
      008CBF 4B 50            [ 1] 2229 	push	#0x50
                           000551  2230 	Sswi2c$swi2c_START$543 ==.
                                   2231 ; genCall
      008CC1 CD 90 2A         [ 4] 2232 	call	_GPIO_ReadInputPin
      008CC4 5B 03            [ 2] 2233 	addw	sp, #3
                           000556  2234 	Sswi2c$swi2c_START$544 ==.
                                   2235 ; genIfx
      008CC6 4D               [ 1] 2236 	tnz	a
      008CC7 26 03            [ 1] 2237 	jrne	00143$
      008CC9 CC 8C DD         [ 2] 2238 	jp	00101$
      008CCC                       2239 00143$:
                                   2240 ; genIPush
      008CCC 4B 80            [ 1] 2241 	push	#0x80
                           00055E  2242 	Sswi2c$swi2c_START$545 ==.
                                   2243 ; genIPush
      008CCE 4B 0A            [ 1] 2244 	push	#0x0a
                           000560  2245 	Sswi2c$swi2c_START$546 ==.
      008CD0 4B 50            [ 1] 2246 	push	#0x50
                           000562  2247 	Sswi2c$swi2c_START$547 ==.
                                   2248 ; genCall
      008CD2 CD 90 2A         [ 4] 2249 	call	_GPIO_ReadInputPin
      008CD5 5B 03            [ 2] 2250 	addw	sp, #3
                           000567  2251 	Sswi2c$swi2c_START$548 ==.
                                   2252 ; genIfx
      008CD7 4D               [ 1] 2253 	tnz	a
      008CD8 27 03            [ 1] 2254 	jreq	00144$
      008CDA CC 8C F8         [ 2] 2255 	jp	00102$
      008CDD                       2256 00144$:
                                   2257 ; genLabel
      008CDD                       2258 00101$:
                           00056D  2259 	Sswi2c$swi2c_START$549 ==.
                           00056D  2260 	Sswi2c$swi2c_START$550 ==.
                                   2261 ;	./src/swi2c.c: 307: SDA_HIGH;
                                   2262 ; genIPush
      008CDD 4B 80            [ 1] 2263 	push	#0x80
                           00056F  2264 	Sswi2c$swi2c_START$551 ==.
                                   2265 ; genIPush
      008CDF 4B 0A            [ 1] 2266 	push	#0x0a
                           000571  2267 	Sswi2c$swi2c_START$552 ==.
      008CE1 4B 50            [ 1] 2268 	push	#0x50
                           000573  2269 	Sswi2c$swi2c_START$553 ==.
                                   2270 ; genCall
      008CE3 CD 90 05         [ 4] 2271 	call	_GPIO_WriteHigh
      008CE6 5B 03            [ 2] 2272 	addw	sp, #3
                           000578  2273 	Sswi2c$swi2c_START$554 ==.
                           000578  2274 	Sswi2c$swi2c_START$555 ==.
                                   2275 ;	./src/swi2c.c: 308: SCL_HIGH;
                                   2276 ; genIPush
      008CE8 4B 40            [ 1] 2277 	push	#0x40
                           00057A  2278 	Sswi2c$swi2c_START$556 ==.
                                   2279 ; genIPush
      008CEA 4B 0A            [ 1] 2280 	push	#0x0a
                           00057C  2281 	Sswi2c$swi2c_START$557 ==.
      008CEC 4B 50            [ 1] 2282 	push	#0x50
                           00057E  2283 	Sswi2c$swi2c_START$558 ==.
                                   2284 ; genCall
      008CEE CD 90 05         [ 4] 2285 	call	_GPIO_WriteHigh
      008CF1 5B 03            [ 2] 2286 	addw	sp, #3
                           000583  2287 	Sswi2c$swi2c_START$559 ==.
                           000583  2288 	Sswi2c$swi2c_START$560 ==.
                                   2289 ;	./src/swi2c.c: 309: return 0xff;
                                   2290 ; genReturn
      008CF3 A6 FF            [ 1] 2291 	ld	a, #0xff
      008CF5 CC 8D 29         [ 2] 2292 	jp	00114$
                           000588  2293 	Sswi2c$swi2c_START$561 ==.
                                   2294 ; genLabel
      008CF8                       2295 00102$:
                           000588  2296 	Sswi2c$swi2c_START$562 ==.
                                   2297 ;	./src/swi2c.c: 311: SDA_LOW;
                                   2298 ; genIPush
      008CF8 4B 80            [ 1] 2299 	push	#0x80
                           00058A  2300 	Sswi2c$swi2c_START$563 ==.
                                   2301 ; genIPush
      008CFA 4B 0A            [ 1] 2302 	push	#0x0a
                           00058C  2303 	Sswi2c$swi2c_START$564 ==.
      008CFC 4B 50            [ 1] 2304 	push	#0x50
                           00058E  2305 	Sswi2c$swi2c_START$565 ==.
                                   2306 ; genCall
      008CFE CD 90 0C         [ 4] 2307 	call	_GPIO_WriteLow
      008D01 5B 03            [ 2] 2308 	addw	sp, #3
                           000593  2309 	Sswi2c$swi2c_START$566 ==.
                           000593  2310 	Sswi2c$swi2c_START$567 ==.
                                   2311 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   2312 ; genAssign
      008D03 AE 00 0B         [ 2] 2313 	ldw	x, #0x000b
                           000596  2314 	Sswi2c$swi2c_START$568 ==.
                                   2315 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   2316 ;	genInline
      008D06 9D               [ 1] 2317 	nop
      008D07 9D               [ 1] 2318 	nop
                           000598  2319 	Sswi2c$swi2c_START$569 ==.
                           000598  2320 	Sswi2c$swi2c_START$570 ==.
                                   2321 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   2322 ; genAssign
                                   2323 ; genLabel
      008D08                       2324 00104$:
                           000598  2325 	Sswi2c$swi2c_START$571 ==.
                                   2326 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   2327 ; genMinus
      008D08 5A               [ 2] 2328 	decw	x
                           000599  2329 	Sswi2c$swi2c_START$572 ==.
                                   2330 ;	inc/delay.h: 28: } while ( __ticks );
                                   2331 ; genIfx
      008D09 5D               [ 2] 2332 	tnzw	x
      008D0A 27 03            [ 1] 2333 	jreq	00145$
      008D0C CC 8D 08         [ 2] 2334 	jp	00104$
      008D0F                       2335 00145$:
                                   2336 ;	inc/delay.h: 29: __asm__("nop\n");
                                   2337 ;	genInline
      008D0F 9D               [ 1] 2338 	nop
                           0005A0  2339 	Sswi2c$swi2c_START$573 ==.
                           0005A0  2340 	Sswi2c$swi2c_START$574 ==.
                                   2341 ;	./src/swi2c.c: 313: SCL_LOW;
                                   2342 ; genIPush
      008D10 4B 40            [ 1] 2343 	push	#0x40
                           0005A2  2344 	Sswi2c$swi2c_START$575 ==.
                                   2345 ; genIPush
      008D12 4B 0A            [ 1] 2346 	push	#0x0a
                           0005A4  2347 	Sswi2c$swi2c_START$576 ==.
      008D14 4B 50            [ 1] 2348 	push	#0x50
                           0005A6  2349 	Sswi2c$swi2c_START$577 ==.
                                   2350 ; genCall
      008D16 CD 90 0C         [ 4] 2351 	call	_GPIO_WriteLow
      008D19 5B 03            [ 2] 2352 	addw	sp, #3
                           0005AB  2353 	Sswi2c$swi2c_START$578 ==.
                           0005AB  2354 	Sswi2c$swi2c_START$579 ==.
                                   2355 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   2356 ; genAssign
      008D1B AE 00 0B         [ 2] 2357 	ldw	x, #0x000b
                           0005AE  2358 	Sswi2c$swi2c_START$580 ==.
                                   2359 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   2360 ;	genInline
      008D1E 9D               [ 1] 2361 	nop
      008D1F 9D               [ 1] 2362 	nop
                           0005B0  2363 	Sswi2c$swi2c_START$581 ==.
                           0005B0  2364 	Sswi2c$swi2c_START$582 ==.
                                   2365 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   2366 ; genAssign
                                   2367 ; genLabel
      008D20                       2368 00109$:
                           0005B0  2369 	Sswi2c$swi2c_START$583 ==.
                                   2370 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   2371 ; genMinus
      008D20 5A               [ 2] 2372 	decw	x
                           0005B1  2373 	Sswi2c$swi2c_START$584 ==.
                                   2374 ;	inc/delay.h: 28: } while ( __ticks );
                                   2375 ; genIfx
      008D21 5D               [ 2] 2376 	tnzw	x
      008D22 27 03            [ 1] 2377 	jreq	00146$
      008D24 CC 8D 20         [ 2] 2378 	jp	00109$
      008D27                       2379 00146$:
                                   2380 ;	inc/delay.h: 29: __asm__("nop\n");
                                   2381 ;	genInline
      008D27 9D               [ 1] 2382 	nop
                           0005B8  2383 	Sswi2c$swi2c_START$585 ==.
                           0005B8  2384 	Sswi2c$swi2c_START$586 ==.
                                   2385 ;	./src/swi2c.c: 315: return 0;
                                   2386 ; genReturn
      008D28 4F               [ 1] 2387 	clr	a
                                   2388 ; genLabel
      008D29                       2389 00114$:
                           0005B9  2390 	Sswi2c$swi2c_START$587 ==.
                                   2391 ;	./src/swi2c.c: 316: }
                                   2392 ; genEndFunction
                           0005B9  2393 	Sswi2c$swi2c_START$588 ==.
                           0005B9  2394 	XG$swi2c_START$0$0 ==.
      008D29 81               [ 4] 2395 	ret
                           0005BA  2396 	Sswi2c$swi2c_START$589 ==.
                           0005BA  2397 	Sswi2c$swi2c_STOP$590 ==.
                                   2398 ;	./src/swi2c.c: 321: uint8_t swi2c_STOP(void)
                                   2399 ; genLabel
                                   2400 ;	-----------------------------------------
                                   2401 ;	 function swi2c_STOP
                                   2402 ;	-----------------------------------------
                                   2403 ;	Register assignment might be sub-optimal.
                                   2404 ;	Stack space usage: 3 bytes.
      008D2A                       2405 _swi2c_STOP:
                           0005BA  2406 	Sswi2c$swi2c_STOP$591 ==.
      008D2A 52 03            [ 2] 2407 	sub	sp, #3
                           0005BC  2408 	Sswi2c$swi2c_STOP$592 ==.
                           0005BC  2409 	Sswi2c$swi2c_STOP$593 ==.
                                   2410 ;	./src/swi2c.c: 323: uint16_t timeout = SWI2C_TIMEOUT;
                                   2411 ; genAssign
      008D2C AE FF FF         [ 2] 2412 	ldw	x, #0xffff
      008D2F 1F 01            [ 2] 2413 	ldw	(0x01, sp), x
                           0005C1  2414 	Sswi2c$swi2c_STOP$594 ==.
                                   2415 ;	./src/swi2c.c: 324: uint8_t retval = 0;
                                   2416 ; genAssign
      008D31 0F 03            [ 1] 2417 	clr	(0x03, sp)
                           0005C3  2418 	Sswi2c$swi2c_STOP$595 ==.
                                   2419 ;	./src/swi2c.c: 325: SDA_LOW;
                                   2420 ; genIPush
      008D33 4B 80            [ 1] 2421 	push	#0x80
                           0005C5  2422 	Sswi2c$swi2c_STOP$596 ==.
                                   2423 ; genIPush
      008D35 4B 0A            [ 1] 2424 	push	#0x0a
                           0005C7  2425 	Sswi2c$swi2c_STOP$597 ==.
      008D37 4B 50            [ 1] 2426 	push	#0x50
                           0005C9  2427 	Sswi2c$swi2c_STOP$598 ==.
                                   2428 ; genCall
      008D39 CD 90 0C         [ 4] 2429 	call	_GPIO_WriteLow
      008D3C 5B 03            [ 2] 2430 	addw	sp, #3
                           0005CE  2431 	Sswi2c$swi2c_STOP$599 ==.
                           0005CE  2432 	Sswi2c$swi2c_STOP$600 ==.
                                   2433 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   2434 ; genAssign
      008D3E AE 00 0B         [ 2] 2435 	ldw	x, #0x000b
                           0005D1  2436 	Sswi2c$swi2c_STOP$601 ==.
                                   2437 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   2438 ;	genInline
      008D41 9D               [ 1] 2439 	nop
      008D42 9D               [ 1] 2440 	nop
                           0005D3  2441 	Sswi2c$swi2c_STOP$602 ==.
                           0005D3  2442 	Sswi2c$swi2c_STOP$603 ==.
                                   2443 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   2444 ; genAssign
                                   2445 ; genLabel
      008D43                       2446 00107$:
                           0005D3  2447 	Sswi2c$swi2c_STOP$604 ==.
                                   2448 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   2449 ; genMinus
      008D43 5A               [ 2] 2450 	decw	x
                           0005D4  2451 	Sswi2c$swi2c_STOP$605 ==.
                                   2452 ;	inc/delay.h: 28: } while ( __ticks );
                                   2453 ; genIfx
      008D44 5D               [ 2] 2454 	tnzw	x
      008D45 27 03            [ 1] 2455 	jreq	00162$
      008D47 CC 8D 43         [ 2] 2456 	jp	00107$
      008D4A                       2457 00162$:
                                   2458 ;	inc/delay.h: 29: __asm__("nop\n");
                                   2459 ;	genInline
      008D4A 9D               [ 1] 2460 	nop
                           0005DB  2461 	Sswi2c$swi2c_STOP$606 ==.
                           0005DB  2462 	Sswi2c$swi2c_STOP$607 ==.
                                   2463 ;	./src/swi2c.c: 327: SCL_HIGH;
                                   2464 ; genIPush
      008D4B 4B 40            [ 1] 2465 	push	#0x40
                           0005DD  2466 	Sswi2c$swi2c_STOP$608 ==.
                                   2467 ; genIPush
      008D4D 4B 0A            [ 1] 2468 	push	#0x0a
                           0005DF  2469 	Sswi2c$swi2c_STOP$609 ==.
      008D4F 4B 50            [ 1] 2470 	push	#0x50
                           0005E1  2471 	Sswi2c$swi2c_STOP$610 ==.
                                   2472 ; genCall
      008D51 CD 90 05         [ 4] 2473 	call	_GPIO_WriteHigh
      008D54 5B 03            [ 2] 2474 	addw	sp, #3
                           0005E6  2475 	Sswi2c$swi2c_STOP$611 ==.
                           0005E6  2476 	Sswi2c$swi2c_STOP$612 ==.
                                   2477 ;	./src/swi2c.c: 328: while (SCL_stat() == RESET && timeout) {
                                   2478 ; genAssign
      008D56 1E 01            [ 2] 2479 	ldw	x, (0x01, sp)
                                   2480 ; genLabel
      008D58                       2481 00102$:
                                   2482 ; genIPush
      008D58 89               [ 2] 2483 	pushw	x
                           0005E9  2484 	Sswi2c$swi2c_STOP$613 ==.
      008D59 4B 40            [ 1] 2485 	push	#0x40
                           0005EB  2486 	Sswi2c$swi2c_STOP$614 ==.
                                   2487 ; genIPush
      008D5B 4B 0A            [ 1] 2488 	push	#0x0a
                           0005ED  2489 	Sswi2c$swi2c_STOP$615 ==.
      008D5D 4B 50            [ 1] 2490 	push	#0x50
                           0005EF  2491 	Sswi2c$swi2c_STOP$616 ==.
                                   2492 ; genCall
      008D5F CD 90 2A         [ 4] 2493 	call	_GPIO_ReadInputPin
      008D62 5B 03            [ 2] 2494 	addw	sp, #3
                           0005F4  2495 	Sswi2c$swi2c_STOP$617 ==.
      008D64 85               [ 2] 2496 	popw	x
                           0005F5  2497 	Sswi2c$swi2c_STOP$618 ==.
                                   2498 ; genIfx
      008D65 4D               [ 1] 2499 	tnz	a
      008D66 27 03            [ 1] 2500 	jreq	00163$
      008D68 CC 8D 75         [ 2] 2501 	jp	00128$
      008D6B                       2502 00163$:
                                   2503 ; genIfx
      008D6B 5D               [ 2] 2504 	tnzw	x
      008D6C 26 03            [ 1] 2505 	jrne	00164$
      008D6E CC 8D 75         [ 2] 2506 	jp	00128$
      008D71                       2507 00164$:
                           000601  2508 	Sswi2c$swi2c_STOP$619 ==.
                           000601  2509 	Sswi2c$swi2c_STOP$620 ==.
                                   2510 ;	./src/swi2c.c: 329: timeout--;
                                   2511 ; genMinus
      008D71 5A               [ 2] 2512 	decw	x
                           000602  2513 	Sswi2c$swi2c_STOP$621 ==.
                                   2514 ; genGoto
      008D72 CC 8D 58         [ 2] 2515 	jp	00102$
                                   2516 ; genLabel
      008D75                       2517 00128$:
                                   2518 ; genAssign
                           000605  2519 	Sswi2c$swi2c_STOP$622 ==.
                                   2520 ;	./src/swi2c.c: 331: if (timeout == 0) {
                                   2521 ; genIfx
      008D75 5D               [ 2] 2522 	tnzw	x
      008D76 27 03            [ 1] 2523 	jreq	00165$
      008D78 CC 8D 7F         [ 2] 2524 	jp	00106$
      008D7B                       2525 00165$:
                           00060B  2526 	Sswi2c$swi2c_STOP$623 ==.
                           00060B  2527 	Sswi2c$swi2c_STOP$624 ==.
                                   2528 ;	./src/swi2c.c: 332: retval = 0xff;
                                   2529 ; genAssign
      008D7B A6 FF            [ 1] 2530 	ld	a, #0xff
      008D7D 6B 03            [ 1] 2531 	ld	(0x03, sp), a
                           00060F  2532 	Sswi2c$swi2c_STOP$625 ==.
                                   2533 ; genLabel
      008D7F                       2534 00106$:
                           00060F  2535 	Sswi2c$swi2c_STOP$626 ==.
                                   2536 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   2537 ; genAssign
      008D7F AE 00 0B         [ 2] 2538 	ldw	x, #0x000b
                           000612  2539 	Sswi2c$swi2c_STOP$627 ==.
                                   2540 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   2541 ;	genInline
      008D82 9D               [ 1] 2542 	nop
      008D83 9D               [ 1] 2543 	nop
                           000614  2544 	Sswi2c$swi2c_STOP$628 ==.
                           000614  2545 	Sswi2c$swi2c_STOP$629 ==.
                                   2546 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   2547 ; genAssign
                                   2548 ; genLabel
      008D84                       2549 00112$:
                           000614  2550 	Sswi2c$swi2c_STOP$630 ==.
                                   2551 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   2552 ; genMinus
      008D84 5A               [ 2] 2553 	decw	x
                           000615  2554 	Sswi2c$swi2c_STOP$631 ==.
                                   2555 ;	inc/delay.h: 28: } while ( __ticks );
                                   2556 ; genIfx
      008D85 5D               [ 2] 2557 	tnzw	x
      008D86 27 03            [ 1] 2558 	jreq	00166$
      008D88 CC 8D 84         [ 2] 2559 	jp	00112$
      008D8B                       2560 00166$:
                                   2561 ;	inc/delay.h: 29: __asm__("nop\n");
                                   2562 ;	genInline
      008D8B 9D               [ 1] 2563 	nop
                           00061C  2564 	Sswi2c$swi2c_STOP$632 ==.
                           00061C  2565 	Sswi2c$swi2c_STOP$633 ==.
                                   2566 ;	./src/swi2c.c: 335: SDA_HIGH;
                                   2567 ; genIPush
      008D8C 4B 80            [ 1] 2568 	push	#0x80
                           00061E  2569 	Sswi2c$swi2c_STOP$634 ==.
                                   2570 ; genIPush
      008D8E 4B 0A            [ 1] 2571 	push	#0x0a
                           000620  2572 	Sswi2c$swi2c_STOP$635 ==.
      008D90 4B 50            [ 1] 2573 	push	#0x50
                           000622  2574 	Sswi2c$swi2c_STOP$636 ==.
                                   2575 ; genCall
      008D92 CD 90 05         [ 4] 2576 	call	_GPIO_WriteHigh
      008D95 5B 03            [ 2] 2577 	addw	sp, #3
                           000627  2578 	Sswi2c$swi2c_STOP$637 ==.
                           000627  2579 	Sswi2c$swi2c_STOP$638 ==.
                                   2580 ;	./src/swi2c.c: 336: return retval;
                                   2581 ; genReturn
      008D97 7B 03            [ 1] 2582 	ld	a, (0x03, sp)
                                   2583 ; genLabel
      008D99                       2584 00117$:
                           000629  2585 	Sswi2c$swi2c_STOP$639 ==.
                                   2586 ;	./src/swi2c.c: 337: }
                                   2587 ; genEndFunction
      008D99 5B 03            [ 2] 2588 	addw	sp, #3
                           00062B  2589 	Sswi2c$swi2c_STOP$640 ==.
                           00062B  2590 	Sswi2c$swi2c_STOP$641 ==.
                           00062B  2591 	XG$swi2c_STOP$0$0 ==.
      008D9B 81               [ 4] 2592 	ret
                           00062C  2593 	Sswi2c$swi2c_STOP$642 ==.
                           00062C  2594 	Sswi2c$swi2c_recover$643 ==.
                                   2595 ;	./src/swi2c.c: 343: uint8_t swi2c_recover(void)
                                   2596 ; genLabel
                                   2597 ;	-----------------------------------------
                                   2598 ;	 function swi2c_recover
                                   2599 ;	-----------------------------------------
                                   2600 ;	Register assignment might be sub-optimal.
                                   2601 ;	Stack space usage: 3 bytes.
      008D9C                       2602 _swi2c_recover:
                           00062C  2603 	Sswi2c$swi2c_recover$644 ==.
      008D9C 52 03            [ 2] 2604 	sub	sp, #3
                           00062E  2605 	Sswi2c$swi2c_recover$645 ==.
                           00062E  2606 	Sswi2c$swi2c_recover$646 ==.
                                   2607 ;	./src/swi2c.c: 345: uint16_t timeout = SWI2C_TIMEOUT;
                                   2608 ; genAssign
      008D9E AE FF FF         [ 2] 2609 	ldw	x, #0xffff
      008DA1 1F 01            [ 2] 2610 	ldw	(0x01, sp), x
                           000633  2611 	Sswi2c$swi2c_recover$647 ==.
                                   2612 ;	./src/swi2c.c: 347: SCL_HIGH;                   // release both lines
                                   2613 ; genIPush
      008DA3 4B 40            [ 1] 2614 	push	#0x40
                           000635  2615 	Sswi2c$swi2c_recover$648 ==.
                                   2616 ; genIPush
      008DA5 4B 0A            [ 1] 2617 	push	#0x0a
                           000637  2618 	Sswi2c$swi2c_recover$649 ==.
      008DA7 4B 50            [ 1] 2619 	push	#0x50
                           000639  2620 	Sswi2c$swi2c_recover$650 ==.
                                   2621 ; genCall
      008DA9 CD 90 05         [ 4] 2622 	call	_GPIO_WriteHigh
      008DAC 5B 03            [ 2] 2623 	addw	sp, #3
                           00063E  2624 	Sswi2c$swi2c_recover$651 ==.
                           00063E  2625 	Sswi2c$swi2c_recover$652 ==.
                                   2626 ;	./src/swi2c.c: 348: SDA_HIGH;
                                   2627 ; genIPush
      008DAE 4B 80            [ 1] 2628 	push	#0x80
                           000640  2629 	Sswi2c$swi2c_recover$653 ==.
                                   2630 ; genIPush
      008DB0 4B 0A            [ 1] 2631 	push	#0x0a
                           000642  2632 	Sswi2c$swi2c_recover$654 ==.
      008DB2 4B 50            [ 1] 2633 	push	#0x50
                           000644  2634 	Sswi2c$swi2c_recover$655 ==.
                                   2635 ; genCall
      008DB4 CD 90 05         [ 4] 2636 	call	_GPIO_WriteHigh
      008DB7 5B 03            [ 2] 2637 	addw	sp, #3
                           000649  2638 	Sswi2c$swi2c_recover$656 ==.
                           000649  2639 	Sswi2c$swi2c_recover$657 ==.
                                   2640 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   2641 ; genAssign
      008DB9 AE 00 05         [ 2] 2642 	ldw	x, #0x0005
                           00064C  2643 	Sswi2c$swi2c_recover$658 ==.
                                   2644 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   2645 ;	genInline
      008DBC 9D               [ 1] 2646 	nop
      008DBD 9D               [ 1] 2647 	nop
                           00064E  2648 	Sswi2c$swi2c_recover$659 ==.
                           00064E  2649 	Sswi2c$swi2c_recover$660 ==.
                                   2650 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   2651 ; genAssign
                                   2652 ; genLabel
      008DBE                       2653 00115$:
                           00064E  2654 	Sswi2c$swi2c_recover$661 ==.
                                   2655 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   2656 ; genMinus
      008DBE 5A               [ 2] 2657 	decw	x
                           00064F  2658 	Sswi2c$swi2c_recover$662 ==.
                                   2659 ;	inc/delay.h: 28: } while ( __ticks );
                                   2660 ; genIfx
      008DBF 5D               [ 2] 2661 	tnzw	x
      008DC0 27 03            [ 1] 2662 	jreq	00218$
      008DC2 CC 8D BE         [ 2] 2663 	jp	00115$
      008DC5                       2664 00218$:
                                   2665 ;	inc/delay.h: 29: __asm__("nop\n");
                                   2666 ;	genInline
      008DC5 9D               [ 1] 2667 	nop
                           000656  2668 	Sswi2c$swi2c_recover$663 ==.
                           000656  2669 	Sswi2c$swi2c_recover$664 ==.
                                   2670 ;	./src/swi2c.c: 351: if (SCL_stat() != RESET && SDA_stat() != RESET) {
                                   2671 ; genIPush
      008DC6 4B 40            [ 1] 2672 	push	#0x40
                           000658  2673 	Sswi2c$swi2c_recover$665 ==.
                                   2674 ; genIPush
      008DC8 4B 0A            [ 1] 2675 	push	#0x0a
                           00065A  2676 	Sswi2c$swi2c_recover$666 ==.
      008DCA 4B 50            [ 1] 2677 	push	#0x50
                           00065C  2678 	Sswi2c$swi2c_recover$667 ==.
                                   2679 ; genCall
      008DCC CD 90 2A         [ 4] 2680 	call	_GPIO_ReadInputPin
      008DCF 5B 03            [ 2] 2681 	addw	sp, #3
                           000661  2682 	Sswi2c$swi2c_recover$668 ==.
                                   2683 ; genIfx
      008DD1 4D               [ 1] 2684 	tnz	a
      008DD2 26 03            [ 1] 2685 	jrne	00219$
      008DD4 CC 8D EC         [ 2] 2686 	jp	00102$
      008DD7                       2687 00219$:
                                   2688 ; genIPush
      008DD7 4B 80            [ 1] 2689 	push	#0x80
                           000669  2690 	Sswi2c$swi2c_recover$669 ==.
                                   2691 ; genIPush
      008DD9 4B 0A            [ 1] 2692 	push	#0x0a
                           00066B  2693 	Sswi2c$swi2c_recover$670 ==.
      008DDB 4B 50            [ 1] 2694 	push	#0x50
                           00066D  2695 	Sswi2c$swi2c_recover$671 ==.
                                   2696 ; genCall
      008DDD CD 90 2A         [ 4] 2697 	call	_GPIO_ReadInputPin
      008DE0 5B 03            [ 2] 2698 	addw	sp, #3
                           000672  2699 	Sswi2c$swi2c_recover$672 ==.
                                   2700 ; genIfx
      008DE2 4D               [ 1] 2701 	tnz	a
      008DE3 26 03            [ 1] 2702 	jrne	00220$
      008DE5 CC 8D EC         [ 2] 2703 	jp	00102$
      008DE8                       2704 00220$:
                           000678  2705 	Sswi2c$swi2c_recover$673 ==.
                           000678  2706 	Sswi2c$swi2c_recover$674 ==.
                                   2707 ;	./src/swi2c.c: 352: return 0;
                                   2708 ; genReturn
      008DE8 4F               [ 1] 2709 	clr	a
      008DE9 CC 8E 82         [ 2] 2710 	jp	00132$
                           00067C  2711 	Sswi2c$swi2c_recover$675 ==.
                                   2712 ; genLabel
      008DEC                       2713 00102$:
                           00067C  2714 	Sswi2c$swi2c_recover$676 ==.
                                   2715 ;	./src/swi2c.c: 355: if (SDA_stat() == RESET) {
                                   2716 ; genIPush
      008DEC 4B 80            [ 1] 2717 	push	#0x80
                           00067E  2718 	Sswi2c$swi2c_recover$677 ==.
                                   2719 ; genIPush
      008DEE 4B 0A            [ 1] 2720 	push	#0x0a
                           000680  2721 	Sswi2c$swi2c_recover$678 ==.
      008DF0 4B 50            [ 1] 2722 	push	#0x50
                           000682  2723 	Sswi2c$swi2c_recover$679 ==.
                                   2724 ; genCall
      008DF2 CD 90 2A         [ 4] 2725 	call	_GPIO_ReadInputPin
      008DF5 5B 03            [ 2] 2726 	addw	sp, #3
                           000687  2727 	Sswi2c$swi2c_recover$680 ==.
                                   2728 ; genIfx
      008DF7 4D               [ 1] 2729 	tnz	a
      008DF8 27 03            [ 1] 2730 	jreq	00221$
      008DFA CC 8E 82         [ 2] 2731 	jp	00132$
      008DFD                       2732 00221$:
                           00068D  2733 	Sswi2c$swi2c_recover$681 ==.
                                   2734 ;	./src/swi2c.c: 356: for (i = 0; i < 9; i++) {       // try nine times try to read one bit and pray for SDA release
                                   2735 ; genAssign
      008DFD 0F 03            [ 1] 2736 	clr	(0x03, sp)
                                   2737 ; genLabel
      008DFF                       2738 00130$:
                           00068F  2739 	Sswi2c$swi2c_recover$682 ==.
                           00068F  2740 	Sswi2c$swi2c_recover$683 ==.
                                   2741 ;	./src/swi2c.c: 357: SCL_LOW;
                                   2742 ; genIPush
      008DFF 4B 40            [ 1] 2743 	push	#0x40
                           000691  2744 	Sswi2c$swi2c_recover$684 ==.
                                   2745 ; genIPush
      008E01 4B 0A            [ 1] 2746 	push	#0x0a
                           000693  2747 	Sswi2c$swi2c_recover$685 ==.
      008E03 4B 50            [ 1] 2748 	push	#0x50
                           000695  2749 	Sswi2c$swi2c_recover$686 ==.
                                   2750 ; genCall
      008E05 CD 90 0C         [ 4] 2751 	call	_GPIO_WriteLow
      008E08 5B 03            [ 2] 2752 	addw	sp, #3
                           00069A  2753 	Sswi2c$swi2c_recover$687 ==.
                           00069A  2754 	Sswi2c$swi2c_recover$688 ==.
                                   2755 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   2756 ; genAssign
      008E0A AE 00 05         [ 2] 2757 	ldw	x, #0x0005
                           00069D  2758 	Sswi2c$swi2c_recover$689 ==.
                                   2759 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   2760 ;	genInline
      008E0D 9D               [ 1] 2761 	nop
      008E0E 9D               [ 1] 2762 	nop
                           00069F  2763 	Sswi2c$swi2c_recover$690 ==.
                           00069F  2764 	Sswi2c$swi2c_recover$691 ==.
                                   2765 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   2766 ; genAssign
                                   2767 ; genLabel
      008E0F                       2768 00120$:
                           00069F  2769 	Sswi2c$swi2c_recover$692 ==.
                                   2770 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   2771 ; genMinus
      008E0F 5A               [ 2] 2772 	decw	x
                           0006A0  2773 	Sswi2c$swi2c_recover$693 ==.
                                   2774 ;	inc/delay.h: 28: } while ( __ticks );
                                   2775 ; genIfx
      008E10 5D               [ 2] 2776 	tnzw	x
      008E11 27 03            [ 1] 2777 	jreq	00222$
      008E13 CC 8E 0F         [ 2] 2778 	jp	00120$
      008E16                       2779 00222$:
                                   2780 ;	inc/delay.h: 29: __asm__("nop\n");
                                   2781 ;	genInline
      008E16 9D               [ 1] 2782 	nop
                           0006A7  2783 	Sswi2c$swi2c_recover$694 ==.
                           0006A7  2784 	Sswi2c$swi2c_recover$695 ==.
                                   2785 ;	./src/swi2c.c: 359: SCL_HIGH;
                                   2786 ; genIPush
      008E17 4B 40            [ 1] 2787 	push	#0x40
                           0006A9  2788 	Sswi2c$swi2c_recover$696 ==.
                                   2789 ; genIPush
      008E19 4B 0A            [ 1] 2790 	push	#0x0a
                           0006AB  2791 	Sswi2c$swi2c_recover$697 ==.
      008E1B 4B 50            [ 1] 2792 	push	#0x50
                           0006AD  2793 	Sswi2c$swi2c_recover$698 ==.
                                   2794 ; genCall
      008E1D CD 90 05         [ 4] 2795 	call	_GPIO_WriteHigh
      008E20 5B 03            [ 2] 2796 	addw	sp, #3
                           0006B2  2797 	Sswi2c$swi2c_recover$699 ==.
                           0006B2  2798 	Sswi2c$swi2c_recover$700 ==.
                           0006B2  2799 	Sswi2c$swi2c_recover$701 ==.
                                   2800 ;	./src/swi2c.c: 360: while (SCL_stat() == RESET && timeout) {
                                   2801 ; genAssign
      008E22 1E 01            [ 2] 2802 	ldw	x, (0x01, sp)
                                   2803 ; genLabel
      008E24                       2804 00105$:
                                   2805 ; genIPush
      008E24 89               [ 2] 2806 	pushw	x
                           0006B5  2807 	Sswi2c$swi2c_recover$702 ==.
      008E25 4B 40            [ 1] 2808 	push	#0x40
                           0006B7  2809 	Sswi2c$swi2c_recover$703 ==.
                                   2810 ; genIPush
      008E27 4B 0A            [ 1] 2811 	push	#0x0a
                           0006B9  2812 	Sswi2c$swi2c_recover$704 ==.
      008E29 4B 50            [ 1] 2813 	push	#0x50
                           0006BB  2814 	Sswi2c$swi2c_recover$705 ==.
                                   2815 ; genCall
      008E2B CD 90 2A         [ 4] 2816 	call	_GPIO_ReadInputPin
      008E2E 5B 03            [ 2] 2817 	addw	sp, #3
                           0006C0  2818 	Sswi2c$swi2c_recover$706 ==.
      008E30 85               [ 2] 2819 	popw	x
                           0006C1  2820 	Sswi2c$swi2c_recover$707 ==.
                                   2821 ; genIfx
      008E31 4D               [ 1] 2822 	tnz	a
      008E32 27 03            [ 1] 2823 	jreq	00223$
      008E34 CC 8E 41         [ 2] 2824 	jp	00152$
      008E37                       2825 00223$:
                                   2826 ; genIfx
      008E37 5D               [ 2] 2827 	tnzw	x
      008E38 26 03            [ 1] 2828 	jrne	00224$
      008E3A CC 8E 41         [ 2] 2829 	jp	00152$
      008E3D                       2830 00224$:
                           0006CD  2831 	Sswi2c$swi2c_recover$708 ==.
                           0006CD  2832 	Sswi2c$swi2c_recover$709 ==.
                                   2833 ;	./src/swi2c.c: 361: timeout--;
                                   2834 ; genMinus
      008E3D 5A               [ 2] 2835 	decw	x
                           0006CE  2836 	Sswi2c$swi2c_recover$710 ==.
                                   2837 ; genGoto
      008E3E CC 8E 24         [ 2] 2838 	jp	00105$
                           0006D1  2839 	Sswi2c$swi2c_recover$711 ==.
                                   2840 ; genLabel
      008E41                       2841 00152$:
                                   2842 ; genAssign
      008E41 1F 01            [ 2] 2843 	ldw	(0x01, sp), x
                           0006D3  2844 	Sswi2c$swi2c_recover$712 ==.
                                   2845 ;	./src/swi2c.c: 363: if (timeout == 0) {
                                   2846 ; genIfx
      008E43 1E 01            [ 2] 2847 	ldw	x, (0x01, sp)
      008E45 27 03            [ 1] 2848 	jreq	00225$
      008E47 CC 8E 4F         [ 2] 2849 	jp	00109$
      008E4A                       2850 00225$:
                           0006DA  2851 	Sswi2c$swi2c_recover$713 ==.
                           0006DA  2852 	Sswi2c$swi2c_recover$714 ==.
                                   2853 ;	./src/swi2c.c: 364: return 0xff;
                                   2854 ; genReturn
      008E4A A6 FF            [ 1] 2855 	ld	a, #0xff
      008E4C CC 8E 82         [ 2] 2856 	jp	00132$
                           0006DF  2857 	Sswi2c$swi2c_recover$715 ==.
                                   2858 ; genLabel
      008E4F                       2859 00109$:
                           0006DF  2860 	Sswi2c$swi2c_recover$716 ==.
                                   2861 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   2862 ; genAssign
      008E4F AE 00 05         [ 2] 2863 	ldw	x, #0x0005
                           0006E2  2864 	Sswi2c$swi2c_recover$717 ==.
                                   2865 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   2866 ;	genInline
      008E52 9D               [ 1] 2867 	nop
      008E53 9D               [ 1] 2868 	nop
                           0006E4  2869 	Sswi2c$swi2c_recover$718 ==.
                           0006E4  2870 	Sswi2c$swi2c_recover$719 ==.
                                   2871 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   2872 ; genAssign
                                   2873 ; genLabel
      008E54                       2874 00125$:
                           0006E4  2875 	Sswi2c$swi2c_recover$720 ==.
                                   2876 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   2877 ; genMinus
      008E54 5A               [ 2] 2878 	decw	x
                           0006E5  2879 	Sswi2c$swi2c_recover$721 ==.
                                   2880 ;	inc/delay.h: 28: } while ( __ticks );
                                   2881 ; genIfx
      008E55 5D               [ 2] 2882 	tnzw	x
      008E56 27 03            [ 1] 2883 	jreq	00226$
      008E58 CC 8E 54         [ 2] 2884 	jp	00125$
      008E5B                       2885 00226$:
                                   2886 ;	inc/delay.h: 29: __asm__("nop\n");
                                   2887 ;	genInline
      008E5B 9D               [ 1] 2888 	nop
                           0006EC  2889 	Sswi2c$swi2c_recover$722 ==.
                           0006EC  2890 	Sswi2c$swi2c_recover$723 ==.
                                   2891 ;	./src/swi2c.c: 367: if (SDA_stat() != RESET) {  // if slave released SDA line, generate STOP
                                   2892 ; genIPush
      008E5C 4B 80            [ 1] 2893 	push	#0x80
                           0006EE  2894 	Sswi2c$swi2c_recover$724 ==.
                                   2895 ; genIPush
      008E5E 4B 0A            [ 1] 2896 	push	#0x0a
                           0006F0  2897 	Sswi2c$swi2c_recover$725 ==.
      008E60 4B 50            [ 1] 2898 	push	#0x50
                           0006F2  2899 	Sswi2c$swi2c_recover$726 ==.
                                   2900 ; genCall
      008E62 CD 90 2A         [ 4] 2901 	call	_GPIO_ReadInputPin
      008E65 5B 03            [ 2] 2902 	addw	sp, #3
                           0006F7  2903 	Sswi2c$swi2c_recover$727 ==.
                                   2904 ; genIfx
      008E67 4D               [ 1] 2905 	tnz	a
      008E68 26 03            [ 1] 2906 	jrne	00227$
      008E6A CC 8E 75         [ 2] 2907 	jp	00131$
      008E6D                       2908 00227$:
                           0006FD  2909 	Sswi2c$swi2c_recover$728 ==.
                           0006FD  2910 	Sswi2c$swi2c_recover$729 ==.
                                   2911 ;	./src/swi2c.c: 368: return (swi2c_STOP());
                                   2912 ; genCall
      008E6D 5B 03            [ 2] 2913 	addw	sp, #3
                           0006FF  2914 	Sswi2c$swi2c_recover$730 ==.
      008E6F CC 8D 2A         [ 2] 2915 	jp	_swi2c_STOP
                                   2916 ; genReturn
      008E72 CC 8E 82         [ 2] 2917 	jp	00132$
                           000705  2918 	Sswi2c$swi2c_recover$731 ==.
                                   2919 ; genLabel
      008E75                       2920 00131$:
                           000705  2921 	Sswi2c$swi2c_recover$732 ==.
                           000705  2922 	Sswi2c$swi2c_recover$733 ==.
                                   2923 ;	./src/swi2c.c: 356: for (i = 0; i < 9; i++) {       // try nine times try to read one bit and pray for SDA release
                                   2924 ; genPlus
      008E75 0C 03            [ 1] 2925 	inc	(0x03, sp)
                                   2926 ; genCmp
                                   2927 ; genCmpTop
      008E77 7B 03            [ 1] 2928 	ld	a, (0x03, sp)
      008E79 A1 09            [ 1] 2929 	cp	a, #0x09
      008E7B 24 03            [ 1] 2930 	jrnc	00228$
      008E7D CC 8D FF         [ 2] 2931 	jp	00130$
      008E80                       2932 00228$:
                                   2933 ; skipping generated iCode
                           000710  2934 	Sswi2c$swi2c_recover$734 ==.
                           000710  2935 	Sswi2c$swi2c_recover$735 ==.
                                   2936 ;	./src/swi2c.c: 371: return 0xee;
                                   2937 ; genReturn
      008E80 A6 EE            [ 1] 2938 	ld	a, #0xee
                           000712  2939 	Sswi2c$swi2c_recover$736 ==.
                                   2940 ; genLabel
      008E82                       2941 00132$:
                           000712  2942 	Sswi2c$swi2c_recover$737 ==.
                                   2943 ;	./src/swi2c.c: 373: }
                                   2944 ; genEndFunction
      008E82 5B 03            [ 2] 2945 	addw	sp, #3
                           000714  2946 	Sswi2c$swi2c_recover$738 ==.
                           000714  2947 	Sswi2c$swi2c_recover$739 ==.
                           000714  2948 	XG$swi2c_recover$0$0 ==.
      008E84 81               [ 4] 2949 	ret
                           000715  2950 	Sswi2c$swi2c_recover$740 ==.
                                   2951 	.area CODE
                                   2952 	.area CONST
                                   2953 	.area INITIALIZER
                                   2954 	.area CABS (ABS)
                                   2955 
                                   2956 	.area .debug_line (NOLOAD)
      000BF0 00 00 06 D0           2957 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000BF4                       2958 Ldebug_line_start:
      000BF4 00 02                 2959 	.dw	2
      000BF6 00 00 00 7D           2960 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000BFA 01                    2961 	.db	1
      000BFB 01                    2962 	.db	1
      000BFC FB                    2963 	.db	-5
      000BFD 0F                    2964 	.db	15
      000BFE 0A                    2965 	.db	10
      000BFF 00                    2966 	.db	0
      000C00 01                    2967 	.db	1
      000C01 01                    2968 	.db	1
      000C02 01                    2969 	.db	1
      000C03 01                    2970 	.db	1
      000C04 00                    2971 	.db	0
      000C05 00                    2972 	.db	0
      000C06 00                    2973 	.db	0
      000C07 01                    2974 	.db	1
      000C08 43 3A 5C 50 72 6F 67  2975 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000C30 00                    2976 	.db	0
      000C31 43 3A 5C 50 72 6F 67  2977 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      000C54 00                    2978 	.db	0
      000C55 00                    2979 	.db	0
      000C56 69 6E 63 2F 64 65 6C  2980 	.ascii "inc/delay.h"
             61 79 2E 68
      000C61 00                    2981 	.db	0
      000C62 00                    2982 	.uleb128	0
      000C63 00                    2983 	.uleb128	0
      000C64 00                    2984 	.uleb128	0
      000C65 2E 2F 73 72 63 2F 73  2985 	.ascii "./src/swi2c.c"
             77 69 32 63 2E 63
      000C72 00                    2986 	.db	0
      000C73 00                    2987 	.uleb128	0
      000C74 00                    2988 	.uleb128	0
      000C75 00                    2989 	.uleb128	0
      000C76 00                    2990 	.db	0
      000C77                       2991 Ldebug_line_stmt:
      000C77 00                    2992 	.db	0
      000C78 05                    2993 	.uleb128	5
      000C79 02                    2994 	.db	2
      000C7A 00 00 87 70           2995 	.dw	0,(Sswi2c$_delay_cycl$0)
      000C7E 03                    2996 	.db	3
      000C7F 0D                    2997 	.sleb128	13
      000C80 01                    2998 	.db	1
      000C81 09                    2999 	.db	9
      000C82 00 00                 3000 	.dw	Sswi2c$_delay_cycl$2-Sswi2c$_delay_cycl$0
      000C84 03                    3001 	.db	3
      000C85 0B                    3002 	.sleb128	11
      000C86 01                    3003 	.db	1
      000C87 09                    3004 	.db	9
      000C88 00 02                 3005 	.dw	Sswi2c$_delay_cycl$3-Sswi2c$_delay_cycl$2
      000C8A 03                    3006 	.db	3
      000C8B 01                    3007 	.sleb128	1
      000C8C 01                    3008 	.db	1
      000C8D 09                    3009 	.db	9
      000C8E 00 02                 3010 	.dw	Sswi2c$_delay_cycl$5-Sswi2c$_delay_cycl$3
      000C90 03                    3011 	.db	3
      000C91 01                    3012 	.sleb128	1
      000C92 01                    3013 	.db	1
      000C93 09                    3014 	.db	9
      000C94 00 01                 3015 	.dw	Sswi2c$_delay_cycl$7-Sswi2c$_delay_cycl$5
      000C96 03                    3016 	.db	3
      000C97 01                    3017 	.sleb128	1
      000C98 01                    3018 	.db	1
      000C99 09                    3019 	.db	9
      000C9A 00 06                 3020 	.dw	Sswi2c$_delay_cycl$8-Sswi2c$_delay_cycl$7
      000C9C 03                    3021 	.db	3
      000C9D 01                    3022 	.sleb128	1
      000C9E 01                    3023 	.db	1
      000C9F 09                    3024 	.db	9
      000CA0 00 01                 3025 	.dw	Sswi2c$_delay_cycl$9-Sswi2c$_delay_cycl$8
      000CA2 03                    3026 	.db	3
      000CA3 0A                    3027 	.sleb128	10
      000CA4 01                    3028 	.db	1
      000CA5 09                    3029 	.db	9
      000CA6 00 01                 3030 	.dw	1+Sswi2c$_delay_cycl$10-Sswi2c$_delay_cycl$9
      000CA8 00                    3031 	.db	0
      000CA9 01                    3032 	.uleb128	1
      000CAA 01                    3033 	.db	1
      000CAB 00                    3034 	.db	0
      000CAC 05                    3035 	.uleb128	5
      000CAD 02                    3036 	.db	2
      000CAE 00 00 87 7D           3037 	.dw	0,(Sswi2c$_delay_us$12)
      000CB2 03                    3038 	.db	3
      000CB3 28                    3039 	.sleb128	40
      000CB4 01                    3040 	.db	1
      000CB5 09                    3041 	.db	9
      000CB6 00 2F                 3042 	.dw	Sswi2c$_delay_us$35-Sswi2c$_delay_us$12
      000CB8 03                    3043 	.db	3
      000CB9 71                    3044 	.sleb128	-15
      000CBA 01                    3045 	.db	1
      000CBB 09                    3046 	.db	9
      000CBC 00 08                 3047 	.dw	Sswi2c$_delay_us$39-Sswi2c$_delay_us$35
      000CBE 03                    3048 	.db	3
      000CBF 10                    3049 	.sleb128	16
      000CC0 01                    3050 	.db	1
      000CC1 09                    3051 	.db	9
      000CC2 00 00                 3052 	.dw	Sswi2c$_delay_us$40-Sswi2c$_delay_us$39
      000CC4 03                    3053 	.db	3
      000CC5 01                    3054 	.sleb128	1
      000CC6 01                    3055 	.db	1
      000CC7 09                    3056 	.db	9
      000CC8 00 01                 3057 	.dw	1+Sswi2c$_delay_us$41-Sswi2c$_delay_us$40
      000CCA 00                    3058 	.db	0
      000CCB 01                    3059 	.uleb128	1
      000CCC 01                    3060 	.db	1
      000CCD 04                    3061 	.db	4
      000CCE 02                    3062 	.uleb128	2
      000CCF 00                    3063 	.db	0
      000CD0 05                    3064 	.uleb128	5
      000CD1 02                    3065 	.db	2
      000CD2 00 00 87 B5           3066 	.dw	0,(Sswi2c$swi2c_read_buf$43)
      000CD6 03                    3067 	.db	3
      000CD7 0A                    3068 	.sleb128	10
      000CD8 01                    3069 	.db	1
      000CD9 09                    3070 	.db	9
      000CDA 00 02                 3071 	.dw	Sswi2c$swi2c_read_buf$46-Sswi2c$swi2c_read_buf$43
      000CDC 03                    3072 	.db	3
      000CDD 08                    3073 	.sleb128	8
      000CDE 01                    3074 	.db	1
      000CDF 09                    3075 	.db	9
      000CE0 00 09                 3076 	.dw	Sswi2c$swi2c_read_buf$48-Sswi2c$swi2c_read_buf$46
      000CE2 03                    3077 	.db	3
      000CE3 01                    3078 	.sleb128	1
      000CE4 01                    3079 	.db	1
      000CE5 09                    3080 	.db	9
      000CE6 00 05                 3081 	.dw	Sswi2c$swi2c_read_buf$50-Sswi2c$swi2c_read_buf$48
      000CE8 03                    3082 	.db	3
      000CE9 03                    3083 	.sleb128	3
      000CEA 01                    3084 	.db	1
      000CEB 09                    3085 	.db	9
      000CEC 00 04                 3086 	.dw	Sswi2c$swi2c_read_buf$51-Sswi2c$swi2c_read_buf$50
      000CEE 03                    3087 	.db	3
      000CEF 01                    3088 	.sleb128	1
      000CF0 01                    3089 	.db	1
      000CF1 09                    3090 	.db	9
      000CF2 00 07                 3091 	.dw	Sswi2c$swi2c_read_buf$53-Sswi2c$swi2c_read_buf$51
      000CF4 03                    3092 	.db	3
      000CF5 01                    3093 	.sleb128	1
      000CF6 01                    3094 	.db	1
      000CF7 09                    3095 	.db	9
      000CF8 00 10                 3096 	.dw	Sswi2c$swi2c_read_buf$57-Sswi2c$swi2c_read_buf$53
      000CFA 03                    3097 	.db	3
      000CFB 01                    3098 	.sleb128	1
      000CFC 01                    3099 	.db	1
      000CFD 09                    3100 	.db	9
      000CFE 00 05                 3101 	.dw	Sswi2c$swi2c_read_buf$59-Sswi2c$swi2c_read_buf$57
      000D00 03                    3102 	.db	3
      000D01 02                    3103 	.sleb128	2
      000D02 01                    3104 	.db	1
      000D03 09                    3105 	.db	9
      000D04 00 05                 3106 	.dw	Sswi2c$swi2c_read_buf$61-Sswi2c$swi2c_read_buf$59
      000D06 03                    3107 	.db	3
      000D07 02                    3108 	.sleb128	2
      000D08 01                    3109 	.db	1
      000D09 09                    3110 	.db	9
      000D0A 00 05                 3111 	.dw	Sswi2c$swi2c_read_buf$62-Sswi2c$swi2c_read_buf$61
      000D0C 03                    3112 	.db	3
      000D0D 01                    3113 	.sleb128	1
      000D0E 01                    3114 	.db	1
      000D0F 09                    3115 	.db	9
      000D10 00 07                 3116 	.dw	Sswi2c$swi2c_read_buf$64-Sswi2c$swi2c_read_buf$62
      000D12 03                    3117 	.db	3
      000D13 01                    3118 	.sleb128	1
      000D14 01                    3119 	.db	1
      000D15 09                    3120 	.db	9
      000D16 00 09                 3121 	.dw	Sswi2c$swi2c_read_buf$66-Sswi2c$swi2c_read_buf$64
      000D18 03                    3122 	.db	3
      000D19 01                    3123 	.sleb128	1
      000D1A 01                    3124 	.db	1
      000D1B 09                    3125 	.db	9
      000D1C 00 05                 3126 	.dw	Sswi2c$swi2c_read_buf$68-Sswi2c$swi2c_read_buf$66
      000D1E 03                    3127 	.db	3
      000D1F 02                    3128 	.sleb128	2
      000D20 01                    3129 	.db	1
      000D21 09                    3130 	.db	9
      000D22 00 05                 3131 	.dw	Sswi2c$swi2c_read_buf$70-Sswi2c$swi2c_read_buf$68
      000D24 03                    3132 	.db	3
      000D25 03                    3133 	.sleb128	3
      000D26 01                    3134 	.db	1
      000D27 09                    3135 	.db	9
      000D28 00 04                 3136 	.dw	Sswi2c$swi2c_read_buf$71-Sswi2c$swi2c_read_buf$70
      000D2A 03                    3137 	.db	3
      000D2B 01                    3138 	.sleb128	1
      000D2C 01                    3139 	.db	1
      000D2D 09                    3140 	.db	9
      000D2E 00 07                 3141 	.dw	Sswi2c$swi2c_read_buf$73-Sswi2c$swi2c_read_buf$71
      000D30 03                    3142 	.db	3
      000D31 01                    3143 	.sleb128	1
      000D32 01                    3144 	.db	1
      000D33 09                    3145 	.db	9
      000D34 00 10                 3146 	.dw	Sswi2c$swi2c_read_buf$77-Sswi2c$swi2c_read_buf$73
      000D36 03                    3147 	.db	3
      000D37 01                    3148 	.sleb128	1
      000D38 01                    3149 	.db	1
      000D39 09                    3150 	.db	9
      000D3A 00 05                 3151 	.dw	Sswi2c$swi2c_read_buf$79-Sswi2c$swi2c_read_buf$77
      000D3C 03                    3152 	.db	3
      000D3D 02                    3153 	.sleb128	2
      000D3E 01                    3154 	.db	1
      000D3F 09                    3155 	.db	9
      000D40 00 05                 3156 	.dw	Sswi2c$swi2c_read_buf$81-Sswi2c$swi2c_read_buf$79
      000D42 03                    3157 	.db	3
      000D43 02                    3158 	.sleb128	2
      000D44 01                    3159 	.db	1
      000D45 09                    3160 	.db	9
      000D46 00 05                 3161 	.dw	Sswi2c$swi2c_read_buf$82-Sswi2c$swi2c_read_buf$81
      000D48 03                    3162 	.db	3
      000D49 01                    3163 	.sleb128	1
      000D4A 01                    3164 	.db	1
      000D4B 09                    3165 	.db	9
      000D4C 00 07                 3166 	.dw	Sswi2c$swi2c_read_buf$84-Sswi2c$swi2c_read_buf$82
      000D4E 03                    3167 	.db	3
      000D4F 01                    3168 	.sleb128	1
      000D50 01                    3169 	.db	1
      000D51 09                    3170 	.db	9
      000D52 00 09                 3171 	.dw	Sswi2c$swi2c_read_buf$86-Sswi2c$swi2c_read_buf$84
      000D54 03                    3172 	.db	3
      000D55 01                    3173 	.sleb128	1
      000D56 01                    3174 	.db	1
      000D57 09                    3175 	.db	9
      000D58 00 05                 3176 	.dw	Sswi2c$swi2c_read_buf$88-Sswi2c$swi2c_read_buf$86
      000D5A 03                    3177 	.db	3
      000D5B 02                    3178 	.sleb128	2
      000D5C 01                    3179 	.db	1
      000D5D 09                    3180 	.db	9
      000D5E 00 05                 3181 	.dw	Sswi2c$swi2c_read_buf$90-Sswi2c$swi2c_read_buf$88
      000D60 03                    3182 	.db	3
      000D61 03                    3183 	.sleb128	3
      000D62 01                    3184 	.db	1
      000D63 09                    3185 	.db	9
      000D64 00 09                 3186 	.dw	Sswi2c$swi2c_read_buf$92-Sswi2c$swi2c_read_buf$90
      000D66 03                    3187 	.db	3
      000D67 01                    3188 	.sleb128	1
      000D68 01                    3189 	.db	1
      000D69 09                    3190 	.db	9
      000D6A 00 05                 3191 	.dw	Sswi2c$swi2c_read_buf$94-Sswi2c$swi2c_read_buf$92
      000D6C 03                    3192 	.db	3
      000D6D 03                    3193 	.sleb128	3
      000D6E 01                    3194 	.db	1
      000D6F 09                    3195 	.db	9
      000D70 00 04                 3196 	.dw	Sswi2c$swi2c_read_buf$96-Sswi2c$swi2c_read_buf$94
      000D72 03                    3197 	.db	3
      000D73 01                    3198 	.sleb128	1
      000D74 01                    3199 	.db	1
      000D75 09                    3200 	.db	9
      000D76 00 0D                 3201 	.dw	Sswi2c$swi2c_read_buf$98-Sswi2c$swi2c_read_buf$96
      000D78 03                    3202 	.db	3
      000D79 01                    3203 	.sleb128	1
      000D7A 01                    3204 	.db	1
      000D7B 09                    3205 	.db	9
      000D7C 00 10                 3206 	.dw	Sswi2c$swi2c_read_buf$102-Sswi2c$swi2c_read_buf$98
      000D7E 03                    3207 	.db	3
      000D7F 01                    3208 	.sleb128	1
      000D80 01                    3209 	.db	1
      000D81 09                    3210 	.db	9
      000D82 00 05                 3211 	.dw	Sswi2c$swi2c_read_buf$104-Sswi2c$swi2c_read_buf$102
      000D84 03                    3212 	.db	3
      000D85 02                    3213 	.sleb128	2
      000D86 01                    3214 	.db	1
      000D87 09                    3215 	.db	9
      000D88 00 05                 3216 	.dw	Sswi2c$swi2c_read_buf$106-Sswi2c$swi2c_read_buf$104
      000D8A 03                    3217 	.db	3
      000D8B 02                    3218 	.sleb128	2
      000D8C 01                    3219 	.db	1
      000D8D 09                    3220 	.db	9
      000D8E 00 05                 3221 	.dw	Sswi2c$swi2c_read_buf$107-Sswi2c$swi2c_read_buf$106
      000D90 03                    3222 	.db	3
      000D91 01                    3223 	.sleb128	1
      000D92 01                    3224 	.db	1
      000D93 09                    3225 	.db	9
      000D94 00 07                 3226 	.dw	Sswi2c$swi2c_read_buf$109-Sswi2c$swi2c_read_buf$107
      000D96 03                    3227 	.db	3
      000D97 01                    3228 	.sleb128	1
      000D98 01                    3229 	.db	1
      000D99 09                    3230 	.db	9
      000D9A 00 09                 3231 	.dw	Sswi2c$swi2c_read_buf$111-Sswi2c$swi2c_read_buf$109
      000D9C 03                    3232 	.db	3
      000D9D 01                    3233 	.sleb128	1
      000D9E 01                    3234 	.db	1
      000D9F 09                    3235 	.db	9
      000DA0 00 05                 3236 	.dw	Sswi2c$swi2c_read_buf$113-Sswi2c$swi2c_read_buf$111
      000DA2 03                    3237 	.db	3
      000DA3 02                    3238 	.sleb128	2
      000DA4 01                    3239 	.db	1
      000DA5 09                    3240 	.db	9
      000DA6 00 05                 3241 	.dw	Sswi2c$swi2c_read_buf$115-Sswi2c$swi2c_read_buf$113
      000DA8 03                    3242 	.db	3
      000DA9 04                    3243 	.sleb128	4
      000DAA 01                    3244 	.db	1
      000DAB 09                    3245 	.db	9
      000DAC 00 0D                 3246 	.dw	Sswi2c$swi2c_read_buf$117-Sswi2c$swi2c_read_buf$115
      000DAE 03                    3247 	.db	3
      000DAF 01                    3248 	.sleb128	1
      000DB0 01                    3249 	.db	1
      000DB1 09                    3250 	.db	9
      000DB2 00 04                 3251 	.dw	Sswi2c$swi2c_read_buf$118-Sswi2c$swi2c_read_buf$117
      000DB4 03                    3252 	.db	3
      000DB5 01                    3253 	.sleb128	1
      000DB6 01                    3254 	.db	1
      000DB7 09                    3255 	.db	9
      000DB8 00 07                 3256 	.dw	Sswi2c$swi2c_read_buf$120-Sswi2c$swi2c_read_buf$118
      000DBA 03                    3257 	.db	3
      000DBB 01                    3258 	.sleb128	1
      000DBC 01                    3259 	.db	1
      000DBD 09                    3260 	.db	9
      000DBE 00 05                 3261 	.dw	Sswi2c$swi2c_read_buf$122-Sswi2c$swi2c_read_buf$120
      000DC0 03                    3262 	.db	3
      000DC1 02                    3263 	.sleb128	2
      000DC2 01                    3264 	.db	1
      000DC3 09                    3265 	.db	9
      000DC4 00 08                 3266 	.dw	Sswi2c$swi2c_read_buf$123-Sswi2c$swi2c_read_buf$122
      000DC6 03                    3267 	.db	3
      000DC7 7F                    3268 	.sleb128	-1
      000DC8 01                    3269 	.db	1
      000DC9 09                    3270 	.db	9
      000DCA 00 06                 3271 	.dw	Sswi2c$swi2c_read_buf$125-Sswi2c$swi2c_read_buf$123
      000DCC 03                    3272 	.db	3
      000DCD 01                    3273 	.sleb128	1
      000DCE 01                    3274 	.db	1
      000DCF 09                    3275 	.db	9
      000DD0 00 0C                 3276 	.dw	Sswi2c$swi2c_read_buf$127-Sswi2c$swi2c_read_buf$125
      000DD2 03                    3277 	.db	3
      000DD3 01                    3278 	.sleb128	1
      000DD4 01                    3279 	.db	1
      000DD5 09                    3280 	.db	9
      000DD6 00 0B                 3281 	.dw	Sswi2c$swi2c_read_buf$130-Sswi2c$swi2c_read_buf$127
      000DD8 03                    3282 	.db	3
      000DD9 01                    3283 	.sleb128	1
      000DDA 01                    3284 	.db	1
      000DDB 09                    3285 	.db	9
      000DDC 00 07                 3286 	.dw	Sswi2c$swi2c_read_buf$133-Sswi2c$swi2c_read_buf$130
      000DDE 03                    3287 	.db	3
      000DDF 02                    3288 	.sleb128	2
      000DE0 01                    3289 	.db	1
      000DE1 09                    3290 	.db	9
      000DE2 00 03                 3291 	.dw	Sswi2c$swi2c_read_buf$134-Sswi2c$swi2c_read_buf$133
      000DE4 03                    3292 	.db	3
      000DE5 01                    3293 	.sleb128	1
      000DE6 01                    3294 	.db	1
      000DE7 09                    3295 	.db	9
      000DE8 00 05                 3296 	.dw	Sswi2c$swi2c_read_buf$136-Sswi2c$swi2c_read_buf$134
      000DEA 03                    3297 	.db	3
      000DEB 02                    3298 	.sleb128	2
      000DEC 01                    3299 	.db	1
      000DED 09                    3300 	.db	9
      000DEE 00 05                 3301 	.dw	Sswi2c$swi2c_read_buf$138-Sswi2c$swi2c_read_buf$136
      000DF0 03                    3302 	.db	3
      000DF1 02                    3303 	.sleb128	2
      000DF2 01                    3304 	.db	1
      000DF3 09                    3305 	.db	9
      000DF4 00 0F                 3306 	.dw	Sswi2c$swi2c_read_buf$141-Sswi2c$swi2c_read_buf$138
      000DF6 03                    3307 	.db	3
      000DF7 01                    3308 	.sleb128	1
      000DF8 01                    3309 	.db	1
      000DF9 09                    3310 	.db	9
      000DFA 00 0D                 3311 	.dw	Sswi2c$swi2c_read_buf$145-Sswi2c$swi2c_read_buf$141
      000DFC 03                    3312 	.db	3
      000DFD 01                    3313 	.sleb128	1
      000DFE 01                    3314 	.db	1
      000DFF 09                    3315 	.db	9
      000E00 00 05                 3316 	.dw	Sswi2c$swi2c_read_buf$148-Sswi2c$swi2c_read_buf$145
      000E02 03                    3317 	.db	3
      000E03 03                    3318 	.sleb128	3
      000E04 01                    3319 	.db	1
      000E05 09                    3320 	.db	9
      000E06 00 0D                 3321 	.dw	Sswi2c$swi2c_read_buf$152-Sswi2c$swi2c_read_buf$148
      000E08 03                    3322 	.db	3
      000E09 01                    3323 	.sleb128	1
      000E0A 01                    3324 	.db	1
      000E0B 09                    3325 	.db	9
      000E0C 00 05                 3326 	.dw	Sswi2c$swi2c_read_buf$155-Sswi2c$swi2c_read_buf$152
      000E0E 03                    3327 	.db	3
      000E0F 6C                    3328 	.sleb128	-20
      000E10 01                    3329 	.db	1
      000E11 09                    3330 	.db	9
      000E12 00 05                 3331 	.dw	Sswi2c$swi2c_read_buf$156-Sswi2c$swi2c_read_buf$155
      000E14 03                    3332 	.db	3
      000E15 1A                    3333 	.sleb128	26
      000E16 01                    3334 	.db	1
      000E17 09                    3335 	.db	9
      000E18 00 09                 3336 	.dw	Sswi2c$swi2c_read_buf$158-Sswi2c$swi2c_read_buf$156
      000E1A 03                    3337 	.db	3
      000E1B 01                    3338 	.sleb128	1
      000E1C 01                    3339 	.db	1
      000E1D 09                    3340 	.db	9
      000E1E 00 05                 3341 	.dw	Sswi2c$swi2c_read_buf$160-Sswi2c$swi2c_read_buf$158
      000E20 03                    3342 	.db	3
      000E21 02                    3343 	.sleb128	2
      000E22 01                    3344 	.db	1
      000E23 09                    3345 	.db	9
      000E24 00 01                 3346 	.dw	Sswi2c$swi2c_read_buf$161-Sswi2c$swi2c_read_buf$160
      000E26 03                    3347 	.db	3
      000E27 01                    3348 	.sleb128	1
      000E28 01                    3349 	.db	1
      000E29 09                    3350 	.db	9
      000E2A 00 03                 3351 	.dw	1+Sswi2c$swi2c_read_buf$163-Sswi2c$swi2c_read_buf$161
      000E2C 00                    3352 	.db	0
      000E2D 01                    3353 	.uleb128	1
      000E2E 01                    3354 	.db	1
      000E2F 04                    3355 	.db	4
      000E30 02                    3356 	.uleb128	2
      000E31 00                    3357 	.db	0
      000E32 05                    3358 	.uleb128	5
      000E33 02                    3359 	.db	2
      000E34 00 00 89 45           3360 	.dw	0,(Sswi2c$swi2c_write_buf$165)
      000E38 03                    3361 	.db	3
      000E39 F0 00                 3362 	.sleb128	112
      000E3B 01                    3363 	.db	1
      000E3C 09                    3364 	.db	9
      000E3D 00 01                 3365 	.dw	Sswi2c$swi2c_write_buf$168-Sswi2c$swi2c_write_buf$165
      000E3F 03                    3366 	.db	3
      000E40 08                    3367 	.sleb128	8
      000E41 01                    3368 	.db	1
      000E42 09                    3369 	.db	9
      000E43 00 09                 3370 	.dw	Sswi2c$swi2c_write_buf$170-Sswi2c$swi2c_write_buf$168
      000E45 03                    3371 	.db	3
      000E46 01                    3372 	.sleb128	1
      000E47 01                    3373 	.db	1
      000E48 09                    3374 	.db	9
      000E49 00 05                 3375 	.dw	Sswi2c$swi2c_write_buf$172-Sswi2c$swi2c_write_buf$170
      000E4B 03                    3376 	.db	3
      000E4C 03                    3377 	.sleb128	3
      000E4D 01                    3378 	.db	1
      000E4E 09                    3379 	.db	9
      000E4F 00 04                 3380 	.dw	Sswi2c$swi2c_write_buf$173-Sswi2c$swi2c_write_buf$172
      000E51 03                    3381 	.db	3
      000E52 01                    3382 	.sleb128	1
      000E53 01                    3383 	.db	1
      000E54 09                    3384 	.db	9
      000E55 00 07                 3385 	.dw	Sswi2c$swi2c_write_buf$175-Sswi2c$swi2c_write_buf$173
      000E57 03                    3386 	.db	3
      000E58 01                    3387 	.sleb128	1
      000E59 01                    3388 	.db	1
      000E5A 09                    3389 	.db	9
      000E5B 00 10                 3390 	.dw	Sswi2c$swi2c_write_buf$179-Sswi2c$swi2c_write_buf$175
      000E5D 03                    3391 	.db	3
      000E5E 01                    3392 	.sleb128	1
      000E5F 01                    3393 	.db	1
      000E60 09                    3394 	.db	9
      000E61 00 05                 3395 	.dw	Sswi2c$swi2c_write_buf$181-Sswi2c$swi2c_write_buf$179
      000E63 03                    3396 	.db	3
      000E64 02                    3397 	.sleb128	2
      000E65 01                    3398 	.db	1
      000E66 09                    3399 	.db	9
      000E67 00 05                 3400 	.dw	Sswi2c$swi2c_write_buf$183-Sswi2c$swi2c_write_buf$181
      000E69 03                    3401 	.db	3
      000E6A 02                    3402 	.sleb128	2
      000E6B 01                    3403 	.db	1
      000E6C 09                    3404 	.db	9
      000E6D 00 05                 3405 	.dw	Sswi2c$swi2c_write_buf$184-Sswi2c$swi2c_write_buf$183
      000E6F 03                    3406 	.db	3
      000E70 01                    3407 	.sleb128	1
      000E71 01                    3408 	.db	1
      000E72 09                    3409 	.db	9
      000E73 00 07                 3410 	.dw	Sswi2c$swi2c_write_buf$186-Sswi2c$swi2c_write_buf$184
      000E75 03                    3411 	.db	3
      000E76 01                    3412 	.sleb128	1
      000E77 01                    3413 	.db	1
      000E78 09                    3414 	.db	9
      000E79 00 09                 3415 	.dw	Sswi2c$swi2c_write_buf$188-Sswi2c$swi2c_write_buf$186
      000E7B 03                    3416 	.db	3
      000E7C 01                    3417 	.sleb128	1
      000E7D 01                    3418 	.db	1
      000E7E 09                    3419 	.db	9
      000E7F 00 05                 3420 	.dw	Sswi2c$swi2c_write_buf$190-Sswi2c$swi2c_write_buf$188
      000E81 03                    3421 	.db	3
      000E82 02                    3422 	.sleb128	2
      000E83 01                    3423 	.db	1
      000E84 09                    3424 	.db	9
      000E85 00 05                 3425 	.dw	Sswi2c$swi2c_write_buf$192-Sswi2c$swi2c_write_buf$190
      000E87 03                    3426 	.db	3
      000E88 03                    3427 	.sleb128	3
      000E89 01                    3428 	.db	1
      000E8A 09                    3429 	.db	9
      000E8B 00 04                 3430 	.dw	Sswi2c$swi2c_write_buf$193-Sswi2c$swi2c_write_buf$192
      000E8D 03                    3431 	.db	3
      000E8E 01                    3432 	.sleb128	1
      000E8F 01                    3433 	.db	1
      000E90 09                    3434 	.db	9
      000E91 00 07                 3435 	.dw	Sswi2c$swi2c_write_buf$195-Sswi2c$swi2c_write_buf$193
      000E93 03                    3436 	.db	3
      000E94 01                    3437 	.sleb128	1
      000E95 01                    3438 	.db	1
      000E96 09                    3439 	.db	9
      000E97 00 10                 3440 	.dw	Sswi2c$swi2c_write_buf$199-Sswi2c$swi2c_write_buf$195
      000E99 03                    3441 	.db	3
      000E9A 01                    3442 	.sleb128	1
      000E9B 01                    3443 	.db	1
      000E9C 09                    3444 	.db	9
      000E9D 00 05                 3445 	.dw	Sswi2c$swi2c_write_buf$201-Sswi2c$swi2c_write_buf$199
      000E9F 03                    3446 	.db	3
      000EA0 02                    3447 	.sleb128	2
      000EA1 01                    3448 	.db	1
      000EA2 09                    3449 	.db	9
      000EA3 00 05                 3450 	.dw	Sswi2c$swi2c_write_buf$203-Sswi2c$swi2c_write_buf$201
      000EA5 03                    3451 	.db	3
      000EA6 02                    3452 	.sleb128	2
      000EA7 01                    3453 	.db	1
      000EA8 09                    3454 	.db	9
      000EA9 00 05                 3455 	.dw	Sswi2c$swi2c_write_buf$204-Sswi2c$swi2c_write_buf$203
      000EAB 03                    3456 	.db	3
      000EAC 01                    3457 	.sleb128	1
      000EAD 01                    3458 	.db	1
      000EAE 09                    3459 	.db	9
      000EAF 00 07                 3460 	.dw	Sswi2c$swi2c_write_buf$206-Sswi2c$swi2c_write_buf$204
      000EB1 03                    3461 	.db	3
      000EB2 01                    3462 	.sleb128	1
      000EB3 01                    3463 	.db	1
      000EB4 09                    3464 	.db	9
      000EB5 00 09                 3465 	.dw	Sswi2c$swi2c_write_buf$208-Sswi2c$swi2c_write_buf$206
      000EB7 03                    3466 	.db	3
      000EB8 01                    3467 	.sleb128	1
      000EB9 01                    3468 	.db	1
      000EBA 09                    3469 	.db	9
      000EBB 00 05                 3470 	.dw	Sswi2c$swi2c_write_buf$210-Sswi2c$swi2c_write_buf$208
      000EBD 03                    3471 	.db	3
      000EBE 02                    3472 	.sleb128	2
      000EBF 01                    3473 	.db	1
      000EC0 09                    3474 	.db	9
      000EC1 00 05                 3475 	.dw	Sswi2c$swi2c_write_buf$212-Sswi2c$swi2c_write_buf$210
      000EC3 03                    3476 	.db	3
      000EC4 03                    3477 	.sleb128	3
      000EC5 01                    3478 	.db	1
      000EC6 09                    3479 	.db	9
      000EC7 00 0D                 3480 	.dw	Sswi2c$swi2c_write_buf$214-Sswi2c$swi2c_write_buf$212
      000EC9 03                    3481 	.db	3
      000ECA 01                    3482 	.sleb128	1
      000ECB 01                    3483 	.db	1
      000ECC 09                    3484 	.db	9
      000ECD 00 04                 3485 	.dw	Sswi2c$swi2c_write_buf$216-Sswi2c$swi2c_write_buf$214
      000ECF 03                    3486 	.db	3
      000ED0 01                    3487 	.sleb128	1
      000ED1 01                    3488 	.db	1
      000ED2 09                    3489 	.db	9
      000ED3 00 0E                 3490 	.dw	Sswi2c$swi2c_write_buf$218-Sswi2c$swi2c_write_buf$216
      000ED5 03                    3491 	.db	3
      000ED6 01                    3492 	.sleb128	1
      000ED7 01                    3493 	.db	1
      000ED8 09                    3494 	.db	9
      000ED9 00 11                 3495 	.dw	Sswi2c$swi2c_write_buf$224-Sswi2c$swi2c_write_buf$218
      000EDB 03                    3496 	.db	3
      000EDC 01                    3497 	.sleb128	1
      000EDD 01                    3498 	.db	1
      000EDE 09                    3499 	.db	9
      000EDF 00 05                 3500 	.dw	Sswi2c$swi2c_write_buf$226-Sswi2c$swi2c_write_buf$224
      000EE1 03                    3501 	.db	3
      000EE2 02                    3502 	.sleb128	2
      000EE3 01                    3503 	.db	1
      000EE4 09                    3504 	.db	9
      000EE5 00 05                 3505 	.dw	Sswi2c$swi2c_write_buf$228-Sswi2c$swi2c_write_buf$226
      000EE7 03                    3506 	.db	3
      000EE8 02                    3507 	.sleb128	2
      000EE9 01                    3508 	.db	1
      000EEA 09                    3509 	.db	9
      000EEB 00 05                 3510 	.dw	Sswi2c$swi2c_write_buf$229-Sswi2c$swi2c_write_buf$228
      000EED 03                    3511 	.db	3
      000EEE 01                    3512 	.sleb128	1
      000EEF 01                    3513 	.db	1
      000EF0 09                    3514 	.db	9
      000EF1 00 07                 3515 	.dw	Sswi2c$swi2c_write_buf$231-Sswi2c$swi2c_write_buf$229
      000EF3 03                    3516 	.db	3
      000EF4 01                    3517 	.sleb128	1
      000EF5 01                    3518 	.db	1
      000EF6 09                    3519 	.db	9
      000EF7 00 09                 3520 	.dw	Sswi2c$swi2c_write_buf$233-Sswi2c$swi2c_write_buf$231
      000EF9 03                    3521 	.db	3
      000EFA 01                    3522 	.sleb128	1
      000EFB 01                    3523 	.db	1
      000EFC 09                    3524 	.db	9
      000EFD 00 05                 3525 	.dw	Sswi2c$swi2c_write_buf$235-Sswi2c$swi2c_write_buf$233
      000EFF 03                    3526 	.db	3
      000F00 02                    3527 	.sleb128	2
      000F01 01                    3528 	.db	1
      000F02 09                    3529 	.db	9
      000F03 00 05                 3530 	.dw	Sswi2c$swi2c_write_buf$238-Sswi2c$swi2c_write_buf$235
      000F05 03                    3531 	.db	3
      000F06 73                    3532 	.sleb128	-13
      000F07 01                    3533 	.db	1
      000F08 09                    3534 	.db	9
      000F09 00 05                 3535 	.dw	Sswi2c$swi2c_write_buf$239-Sswi2c$swi2c_write_buf$238
      000F0B 03                    3536 	.db	3
      000F0C 12                    3537 	.sleb128	18
      000F0D 01                    3538 	.db	1
      000F0E 09                    3539 	.db	9
      000F0F 00 09                 3540 	.dw	Sswi2c$swi2c_write_buf$241-Sswi2c$swi2c_write_buf$239
      000F11 03                    3541 	.db	3
      000F12 01                    3542 	.sleb128	1
      000F13 01                    3543 	.db	1
      000F14 09                    3544 	.db	9
      000F15 00 05                 3545 	.dw	Sswi2c$swi2c_write_buf$243-Sswi2c$swi2c_write_buf$241
      000F17 03                    3546 	.db	3
      000F18 02                    3547 	.sleb128	2
      000F19 01                    3548 	.db	1
      000F1A 09                    3549 	.db	9
      000F1B 00 01                 3550 	.dw	Sswi2c$swi2c_write_buf$244-Sswi2c$swi2c_write_buf$243
      000F1D 03                    3551 	.db	3
      000F1E 01                    3552 	.sleb128	1
      000F1F 01                    3553 	.db	1
      000F20 09                    3554 	.db	9
      000F21 00 02                 3555 	.dw	1+Sswi2c$swi2c_write_buf$246-Sswi2c$swi2c_write_buf$244
      000F23 00                    3556 	.db	0
      000F24 01                    3557 	.uleb128	1
      000F25 01                    3558 	.db	1
      000F26 04                    3559 	.db	4
      000F27 02                    3560 	.uleb128	2
      000F28 00                    3561 	.db	0
      000F29 05                    3562 	.uleb128	5
      000F2A 02                    3563 	.db	2
      000F2B 00 00 8A 4B           3564 	.dw	0,(Sswi2c$swi2c_test_slave$248)
      000F2F 03                    3565 	.db	3
      000F30 BA 01                 3566 	.sleb128	186
      000F32 01                    3567 	.db	1
      000F33 09                    3568 	.db	9
      000F34 00 01                 3569 	.dw	Sswi2c$swi2c_test_slave$251-Sswi2c$swi2c_test_slave$248
      000F36 03                    3570 	.db	3
      000F37 03                    3571 	.sleb128	3
      000F38 01                    3572 	.db	1
      000F39 09                    3573 	.db	9
      000F3A 00 04                 3574 	.dw	Sswi2c$swi2c_test_slave$252-Sswi2c$swi2c_test_slave$251
      000F3C 03                    3575 	.db	3
      000F3D 01                    3576 	.sleb128	1
      000F3E 01                    3577 	.db	1
      000F3F 09                    3578 	.db	9
      000F40 00 09                 3579 	.dw	Sswi2c$swi2c_test_slave$254-Sswi2c$swi2c_test_slave$252
      000F42 03                    3580 	.db	3
      000F43 01                    3581 	.sleb128	1
      000F44 01                    3582 	.db	1
      000F45 09                    3583 	.db	9
      000F46 00 05                 3584 	.dw	Sswi2c$swi2c_test_slave$256-Sswi2c$swi2c_test_slave$254
      000F48 03                    3585 	.db	3
      000F49 02                    3586 	.sleb128	2
      000F4A 01                    3587 	.db	1
      000F4B 09                    3588 	.db	9
      000F4C 00 07                 3589 	.dw	Sswi2c$swi2c_test_slave$258-Sswi2c$swi2c_test_slave$256
      000F4E 03                    3590 	.db	3
      000F4F 01                    3591 	.sleb128	1
      000F50 01                    3592 	.db	1
      000F51 09                    3593 	.db	9
      000F52 00 10                 3594 	.dw	Sswi2c$swi2c_test_slave$262-Sswi2c$swi2c_test_slave$258
      000F54 03                    3595 	.db	3
      000F55 01                    3596 	.sleb128	1
      000F56 01                    3597 	.db	1
      000F57 09                    3598 	.db	9
      000F58 00 05                 3599 	.dw	Sswi2c$swi2c_test_slave$264-Sswi2c$swi2c_test_slave$262
      000F5A 03                    3600 	.db	3
      000F5B 02                    3601 	.sleb128	2
      000F5C 01                    3602 	.db	1
      000F5D 09                    3603 	.db	9
      000F5E 00 05                 3604 	.dw	Sswi2c$swi2c_test_slave$266-Sswi2c$swi2c_test_slave$264
      000F60 03                    3605 	.db	3
      000F61 02                    3606 	.sleb128	2
      000F62 01                    3607 	.db	1
      000F63 09                    3608 	.db	9
      000F64 00 05                 3609 	.dw	Sswi2c$swi2c_test_slave$267-Sswi2c$swi2c_test_slave$266
      000F66 03                    3610 	.db	3
      000F67 01                    3611 	.sleb128	1
      000F68 01                    3612 	.db	1
      000F69 09                    3613 	.db	9
      000F6A 00 09                 3614 	.dw	Sswi2c$swi2c_test_slave$269-Sswi2c$swi2c_test_slave$267
      000F6C 03                    3615 	.db	3
      000F6D 01                    3616 	.sleb128	1
      000F6E 01                    3617 	.db	1
      000F6F 09                    3618 	.db	9
      000F70 00 05                 3619 	.dw	Sswi2c$swi2c_test_slave$271-Sswi2c$swi2c_test_slave$269
      000F72 03                    3620 	.db	3
      000F73 02                    3621 	.sleb128	2
      000F74 01                    3622 	.db	1
      000F75 09                    3623 	.db	9
      000F76 00 02                 3624 	.dw	Sswi2c$swi2c_test_slave$272-Sswi2c$swi2c_test_slave$271
      000F78 03                    3625 	.db	3
      000F79 01                    3626 	.sleb128	1
      000F7A 01                    3627 	.db	1
      000F7B 09                    3628 	.db	9
      000F7C 00 03                 3629 	.dw	1+Sswi2c$swi2c_test_slave$274-Sswi2c$swi2c_test_slave$272
      000F7E 00                    3630 	.db	0
      000F7F 01                    3631 	.uleb128	1
      000F80 01                    3632 	.db	1
      000F81 04                    3633 	.db	4
      000F82 02                    3634 	.uleb128	2
      000F83 00                    3635 	.db	0
      000F84 05                    3636 	.uleb128	5
      000F85 02                    3637 	.db	2
      000F86 00 00 8A 97           3638 	.dw	0,(Sswi2c$swi2c_init$276)
      000F8A 03                    3639 	.db	3
      000F8B CF 01                 3640 	.sleb128	207
      000F8D 01                    3641 	.db	1
      000F8E 09                    3642 	.db	9
      000F8F 00 00                 3643 	.dw	Sswi2c$swi2c_init$278-Sswi2c$swi2c_init$276
      000F91 03                    3644 	.db	3
      000F92 02                    3645 	.sleb128	2
      000F93 01                    3646 	.db	1
      000F94 09                    3647 	.db	9
      000F95 00 0D                 3648 	.dw	Sswi2c$swi2c_init$284-Sswi2c$swi2c_init$278
      000F97 03                    3649 	.db	3
      000F98 01                    3650 	.sleb128	1
      000F99 01                    3651 	.db	1
      000F9A 09                    3652 	.db	9
      000F9B 00 0D                 3653 	.dw	Sswi2c$swi2c_init$290-Sswi2c$swi2c_init$284
      000F9D 03                    3654 	.db	3
      000F9E 01                    3655 	.sleb128	1
      000F9F 01                    3656 	.db	1
      000FA0 09                    3657 	.db	9
      000FA1 00 01                 3658 	.dw	1+Sswi2c$swi2c_init$291-Sswi2c$swi2c_init$290
      000FA3 00                    3659 	.db	0
      000FA4 01                    3660 	.uleb128	1
      000FA5 01                    3661 	.db	1
      000FA6 04                    3662 	.db	4
      000FA7 02                    3663 	.uleb128	2
      000FA8 00                    3664 	.db	0
      000FA9 05                    3665 	.uleb128	5
      000FAA 02                    3666 	.db	2
      000FAB 00 00 8A B2           3667 	.dw	0,(Sswi2c$swi2c_readbit$293)
      000FAF 03                    3668 	.db	3
      000FB0 DB 01                 3669 	.sleb128	219
      000FB2 01                    3670 	.db	1
      000FB3 09                    3671 	.db	9
      000FB4 00 01                 3672 	.dw	Sswi2c$swi2c_readbit$296-Sswi2c$swi2c_readbit$293
      000FB6 03                    3673 	.db	3
      000FB7 02                    3674 	.sleb128	2
      000FB8 01                    3675 	.db	1
      000FB9 09                    3676 	.db	9
      000FBA 00 05                 3677 	.dw	Sswi2c$swi2c_readbit$297-Sswi2c$swi2c_readbit$296
      000FBC 03                    3678 	.db	3
      000FBD 02                    3679 	.sleb128	2
      000FBE 01                    3680 	.db	1
      000FBF 04                    3681 	.db	4
      000FC0 01                    3682 	.uleb128	1
      000FC1 09                    3683 	.db	9
      000FC2 00 10                 3684 	.dw	Sswi2c$swi2c_readbit$305-Sswi2c$swi2c_readbit$297
      000FC4 03                    3685 	.db	3
      000FC5 BA 7E                 3686 	.sleb128	-198
      000FC7 01                    3687 	.db	1
      000FC8 04                    3688 	.db	4
      000FC9 02                    3689 	.uleb128	2
      000FCA 09                    3690 	.db	9
      000FCB 00 08                 3691 	.dw	Sswi2c$swi2c_readbit$309-Sswi2c$swi2c_readbit$305
      000FCD 03                    3692 	.db	3
      000FCE C8 01                 3693 	.sleb128	200
      000FD0 01                    3694 	.db	1
      000FD1 09                    3695 	.db	9
      000FD2 00 0B                 3696 	.dw	Sswi2c$swi2c_readbit$314-Sswi2c$swi2c_readbit$309
      000FD4 03                    3697 	.db	3
      000FD5 01                    3698 	.sleb128	1
      000FD6 01                    3699 	.db	1
      000FD7 09                    3700 	.db	9
      000FD8 00 1B                 3701 	.dw	Sswi2c$swi2c_readbit$322-Sswi2c$swi2c_readbit$314
      000FDA 03                    3702 	.db	3
      000FDB 01                    3703 	.sleb128	1
      000FDC 01                    3704 	.db	1
      000FDD 09                    3705 	.db	9
      000FDE 00 06                 3706 	.dw	Sswi2c$swi2c_readbit$324-Sswi2c$swi2c_readbit$322
      000FE0 03                    3707 	.db	3
      000FE1 02                    3708 	.sleb128	2
      000FE2 01                    3709 	.db	1
      000FE3 09                    3710 	.db	9
      000FE4 00 07                 3711 	.dw	Sswi2c$swi2c_readbit$326-Sswi2c$swi2c_readbit$324
      000FE6 03                    3712 	.db	3
      000FE7 01                    3713 	.sleb128	1
      000FE8 01                    3714 	.db	1
      000FE9 04                    3715 	.db	4
      000FEA 01                    3716 	.uleb128	1
      000FEB 09                    3717 	.db	9
      000FEC 00 0A                 3718 	.dw	Sswi2c$swi2c_readbit$331-Sswi2c$swi2c_readbit$326
      000FEE 03                    3719 	.db	3
      000FEF B3 7E                 3720 	.sleb128	-205
      000FF1 01                    3721 	.db	1
      000FF2 04                    3722 	.db	4
      000FF3 02                    3723 	.uleb128	2
      000FF4 09                    3724 	.db	9
      000FF5 00 08                 3725 	.dw	Sswi2c$swi2c_readbit$335-Sswi2c$swi2c_readbit$331
      000FF7 03                    3726 	.db	3
      000FF8 D0 01                 3727 	.sleb128	208
      000FFA 01                    3728 	.db	1
      000FFB 09                    3729 	.db	9
      000FFC 00 11                 3730 	.dw	Sswi2c$swi2c_readbit$341-Sswi2c$swi2c_readbit$335
      000FFE 03                    3731 	.db	3
      000FFF 01                    3732 	.sleb128	1
      001000 01                    3733 	.db	1
      001001 09                    3734 	.db	9
      001002 00 04                 3735 	.dw	Sswi2c$swi2c_readbit$344-Sswi2c$swi2c_readbit$341
      001004 03                    3736 	.db	3
      001005 02                    3737 	.sleb128	2
      001006 01                    3738 	.db	1
      001007 09                    3739 	.db	9
      001008 00 02                 3740 	.dw	Sswi2c$swi2c_readbit$346-Sswi2c$swi2c_readbit$344
      00100A 03                    3741 	.db	3
      00100B 02                    3742 	.sleb128	2
      00100C 01                    3743 	.db	1
      00100D 04                    3744 	.db	4
      00100E 01                    3745 	.uleb128	1
      00100F 09                    3746 	.db	9
      001010 00 12                 3747 	.dw	Sswi2c$swi2c_readbit$356-Sswi2c$swi2c_readbit$346
      001012 03                    3748 	.db	3
      001013 AB 7E                 3749 	.sleb128	-213
      001015 01                    3750 	.db	1
      001016 04                    3751 	.db	4
      001017 02                    3752 	.uleb128	2
      001018 09                    3753 	.db	9
      001019 00 08                 3754 	.dw	Sswi2c$swi2c_readbit$360-Sswi2c$swi2c_readbit$356
      00101B 03                    3755 	.db	3
      00101C D7 01                 3756 	.sleb128	215
      00101E 01                    3757 	.db	1
      00101F 09                    3758 	.db	9
      001020 00 00                 3759 	.dw	Sswi2c$swi2c_readbit$361-Sswi2c$swi2c_readbit$360
      001022 03                    3760 	.db	3
      001023 01                    3761 	.sleb128	1
      001024 01                    3762 	.db	1
      001025 09                    3763 	.db	9
      001026 00 02                 3764 	.dw	1+Sswi2c$swi2c_readbit$363-Sswi2c$swi2c_readbit$361
      001028 00                    3765 	.db	0
      001029 01                    3766 	.uleb128	1
      00102A 01                    3767 	.db	1
      00102B 04                    3768 	.db	4
      00102C 02                    3769 	.uleb128	2
      00102D 00                    3770 	.db	0
      00102E 05                    3771 	.uleb128	5
      00102F 02                    3772 	.db	2
      001030 00 00 8B 48           3773 	.dw	0,(Sswi2c$swi2c_writebit$365)
      001034 03                    3774 	.db	3
      001035 F6 01                 3775 	.sleb128	246
      001037 01                    3776 	.db	1
      001038 09                    3777 	.db	9
      001039 00 01                 3778 	.dw	Sswi2c$swi2c_writebit$368-Sswi2c$swi2c_writebit$365
      00103B 03                    3779 	.db	3
      00103C 02                    3780 	.sleb128	2
      00103D 01                    3781 	.db	1
      00103E 09                    3782 	.db	9
      00103F 00 05                 3783 	.dw	Sswi2c$swi2c_writebit$369-Sswi2c$swi2c_writebit$368
      001041 03                    3784 	.db	3
      001042 01                    3785 	.sleb128	1
      001043 01                    3786 	.db	1
      001044 09                    3787 	.db	9
      001045 00 07                 3788 	.dw	Sswi2c$swi2c_writebit$371-Sswi2c$swi2c_writebit$369
      001047 03                    3789 	.db	3
      001048 01                    3790 	.sleb128	1
      001049 01                    3791 	.db	1
      00104A 09                    3792 	.db	9
      00104B 00 0E                 3793 	.dw	Sswi2c$swi2c_writebit$378-Sswi2c$swi2c_writebit$371
      00104D 03                    3794 	.db	3
      00104E 02                    3795 	.sleb128	2
      00104F 01                    3796 	.db	1
      001050 04                    3797 	.db	4
      001051 01                    3798 	.uleb128	1
      001052 09                    3799 	.db	9
      001053 00 10                 3800 	.dw	Sswi2c$swi2c_writebit$387-Sswi2c$swi2c_writebit$378
      001055 03                    3801 	.db	3
      001056 9D 7E                 3802 	.sleb128	-227
      001058 01                    3803 	.db	1
      001059 04                    3804 	.db	4
      00105A 02                    3805 	.uleb128	2
      00105B 09                    3806 	.db	9
      00105C 00 08                 3807 	.dw	Sswi2c$swi2c_writebit$391-Sswi2c$swi2c_writebit$387
      00105E 03                    3808 	.db	3
      00105F E6 01                 3809 	.sleb128	230
      001061 01                    3810 	.db	1
      001062 09                    3811 	.db	9
      001063 00 0B                 3812 	.dw	Sswi2c$swi2c_writebit$396-Sswi2c$swi2c_writebit$391
      001065 03                    3813 	.db	3
      001066 01                    3814 	.sleb128	1
      001067 01                    3815 	.db	1
      001068 09                    3816 	.db	9
      001069 00 1B                 3817 	.dw	Sswi2c$swi2c_writebit$404-Sswi2c$swi2c_writebit$396
      00106B 03                    3818 	.db	3
      00106C 01                    3819 	.sleb128	1
      00106D 01                    3820 	.db	1
      00106E 09                    3821 	.db	9
      00106F 00 06                 3822 	.dw	Sswi2c$swi2c_writebit$406-Sswi2c$swi2c_writebit$404
      001071 03                    3823 	.db	3
      001072 02                    3824 	.sleb128	2
      001073 01                    3825 	.db	1
      001074 09                    3826 	.db	9
      001075 00 07                 3827 	.dw	Sswi2c$swi2c_writebit$408-Sswi2c$swi2c_writebit$406
      001077 03                    3828 	.db	3
      001078 01                    3829 	.sleb128	1
      001079 01                    3830 	.db	1
      00107A 09                    3831 	.db	9
      00107B 00 0B                 3832 	.dw	Sswi2c$swi2c_writebit$413-Sswi2c$swi2c_writebit$408
      00107D 03                    3833 	.db	3
      00107E 01                    3834 	.sleb128	1
      00107F 01                    3835 	.db	1
      001080 04                    3836 	.db	4
      001081 01                    3837 	.uleb128	1
      001082 09                    3838 	.db	9
      001083 00 0A                 3839 	.dw	Sswi2c$swi2c_writebit$418-Sswi2c$swi2c_writebit$413
      001085 03                    3840 	.db	3
      001086 94 7E                 3841 	.sleb128	-236
      001088 01                    3842 	.db	1
      001089 04                    3843 	.db	4
      00108A 02                    3844 	.uleb128	2
      00108B 09                    3845 	.db	9
      00108C 00 08                 3846 	.dw	Sswi2c$swi2c_writebit$422-Sswi2c$swi2c_writebit$418
      00108E 03                    3847 	.db	3
      00108F EF 01                 3848 	.sleb128	239
      001091 01                    3849 	.db	1
      001092 04                    3850 	.db	4
      001093 01                    3851 	.uleb128	1
      001094 09                    3852 	.db	9
      001095 00 10                 3853 	.dw	Sswi2c$swi2c_writebit$430-Sswi2c$swi2c_writebit$422
      001097 03                    3854 	.db	3
      001098 91 7E                 3855 	.sleb128	-239
      00109A 01                    3856 	.db	1
      00109B 04                    3857 	.db	4
      00109C 02                    3858 	.uleb128	2
      00109D 09                    3859 	.db	9
      00109E 00 08                 3860 	.dw	Sswi2c$swi2c_writebit$434-Sswi2c$swi2c_writebit$430
      0010A0 03                    3861 	.db	3
      0010A1 F1 01                 3862 	.sleb128	241
      0010A3 01                    3863 	.db	1
      0010A4 09                    3864 	.db	9
      0010A5 00 01                 3865 	.dw	Sswi2c$swi2c_writebit$435-Sswi2c$swi2c_writebit$434
      0010A7 03                    3866 	.db	3
      0010A8 01                    3867 	.sleb128	1
      0010A9 01                    3868 	.db	1
      0010AA 09                    3869 	.db	9
      0010AB 00 02                 3870 	.dw	1+Sswi2c$swi2c_writebit$437-Sswi2c$swi2c_writebit$435
      0010AD 00                    3871 	.db	0
      0010AE 01                    3872 	.uleb128	1
      0010AF 01                    3873 	.db	1
      0010B0 04                    3874 	.db	4
      0010B1 02                    3875 	.uleb128	2
      0010B2 00                    3876 	.db	0
      0010B3 05                    3877 	.uleb128	5
      0010B4 02                    3878 	.db	2
      0010B5 00 00 8B E6           3879 	.dw	0,(Sswi2c$swi2c_RESTART$439)
      0010B9 03                    3880 	.db	3
      0010BA 90 02                 3881 	.sleb128	272
      0010BC 01                    3882 	.db	1
      0010BD 09                    3883 	.db	9
      0010BE 00 01                 3884 	.dw	Sswi2c$swi2c_RESTART$442-Sswi2c$swi2c_RESTART$439
      0010C0 03                    3885 	.db	3
      0010C1 02                    3886 	.sleb128	2
      0010C2 01                    3887 	.db	1
      0010C3 09                    3888 	.db	9
      0010C4 00 02                 3889 	.dw	Sswi2c$swi2c_RESTART$443-Sswi2c$swi2c_RESTART$442
      0010C6 03                    3890 	.db	3
      0010C7 01                    3891 	.sleb128	1
      0010C8 01                    3892 	.db	1
      0010C9 09                    3893 	.db	9
      0010CA 00 0D                 3894 	.dw	Sswi2c$swi2c_RESTART$450-Sswi2c$swi2c_RESTART$443
      0010CC 03                    3895 	.db	3
      0010CD 01                    3896 	.sleb128	1
      0010CE 01                    3897 	.db	1
      0010CF 09                    3898 	.db	9
      0010D0 00 0D                 3899 	.dw	Sswi2c$swi2c_RESTART$457-Sswi2c$swi2c_RESTART$450
      0010D2 03                    3900 	.db	3
      0010D3 01                    3901 	.sleb128	1
      0010D4 01                    3902 	.db	1
      0010D5 09                    3903 	.db	9
      0010D6 00 19                 3904 	.dw	Sswi2c$swi2c_RESTART$465-Sswi2c$swi2c_RESTART$457
      0010D8 03                    3905 	.db	3
      0010D9 01                    3906 	.sleb128	1
      0010DA 01                    3907 	.db	1
      0010DB 09                    3908 	.db	9
      0010DC 00 06                 3909 	.dw	Sswi2c$swi2c_RESTART$467-Sswi2c$swi2c_RESTART$465
      0010DE 03                    3910 	.db	3
      0010DF 02                    3911 	.sleb128	2
      0010E0 01                    3912 	.db	1
      0010E1 09                    3913 	.db	9
      0010E2 00 07                 3914 	.dw	Sswi2c$swi2c_RESTART$469-Sswi2c$swi2c_RESTART$467
      0010E4 03                    3915 	.db	3
      0010E5 01                    3916 	.sleb128	1
      0010E6 01                    3917 	.db	1
      0010E7 09                    3918 	.db	9
      0010E8 00 0B                 3919 	.dw	Sswi2c$swi2c_RESTART$474-Sswi2c$swi2c_RESTART$469
      0010EA 03                    3920 	.db	3
      0010EB 01                    3921 	.sleb128	1
      0010EC 01                    3922 	.db	1
      0010ED 04                    3923 	.db	4
      0010EE 01                    3924 	.uleb128	1
      0010EF 09                    3925 	.db	9
      0010F0 00 0A                 3926 	.dw	Sswi2c$swi2c_RESTART$479-Sswi2c$swi2c_RESTART$474
      0010F2 03                    3927 	.db	3
      0010F3 FF 7D                 3928 	.sleb128	-257
      0010F5 01                    3929 	.db	1
      0010F6 04                    3930 	.db	4
      0010F7 02                    3931 	.uleb128	2
      0010F8 09                    3932 	.db	9
      0010F9 00 08                 3933 	.dw	Sswi2c$swi2c_RESTART$483-Sswi2c$swi2c_RESTART$479
      0010FB 03                    3934 	.db	3
      0010FC 84 02                 3935 	.sleb128	260
      0010FE 01                    3936 	.db	1
      0010FF 09                    3937 	.db	9
      001100 00 0B                 3938 	.dw	Sswi2c$swi2c_RESTART$488-Sswi2c$swi2c_RESTART$483
      001102 03                    3939 	.db	3
      001103 01                    3940 	.sleb128	1
      001104 01                    3941 	.db	1
      001105 09                    3942 	.db	9
      001106 00 1B                 3943 	.dw	Sswi2c$swi2c_RESTART$496-Sswi2c$swi2c_RESTART$488
      001108 03                    3944 	.db	3
      001109 01                    3945 	.sleb128	1
      00110A 01                    3946 	.db	1
      00110B 09                    3947 	.db	9
      00110C 00 04                 3948 	.dw	Sswi2c$swi2c_RESTART$498-Sswi2c$swi2c_RESTART$496
      00110E 03                    3949 	.db	3
      00110F 02                    3950 	.sleb128	2
      001110 01                    3951 	.db	1
      001111 09                    3952 	.db	9
      001112 00 06                 3953 	.dw	Sswi2c$swi2c_RESTART$500-Sswi2c$swi2c_RESTART$498
      001114 03                    3954 	.db	3
      001115 01                    3955 	.sleb128	1
      001116 01                    3956 	.db	1
      001117 04                    3957 	.db	4
      001118 01                    3958 	.uleb128	1
      001119 09                    3959 	.db	9
      00111A 00 0A                 3960 	.dw	Sswi2c$swi2c_RESTART$505-Sswi2c$swi2c_RESTART$500
      00111C 03                    3961 	.db	3
      00111D F7 7D                 3962 	.sleb128	-265
      00111F 01                    3963 	.db	1
      001120 04                    3964 	.db	4
      001121 02                    3965 	.uleb128	2
      001122 09                    3966 	.db	9
      001123 00 08                 3967 	.dw	Sswi2c$swi2c_RESTART$509-Sswi2c$swi2c_RESTART$505
      001125 03                    3968 	.db	3
      001126 8C 02                 3969 	.sleb128	268
      001128 01                    3970 	.db	1
      001129 04                    3971 	.db	4
      00112A 01                    3972 	.uleb128	1
      00112B 09                    3973 	.db	9
      00112C 00 10                 3974 	.dw	Sswi2c$swi2c_RESTART$517-Sswi2c$swi2c_RESTART$509
      00112E 03                    3975 	.db	3
      00112F F4 7D                 3976 	.sleb128	-268
      001131 01                    3977 	.db	1
      001132 04                    3978 	.db	4
      001133 02                    3979 	.uleb128	2
      001134 09                    3980 	.db	9
      001135 00 08                 3981 	.dw	Sswi2c$swi2c_RESTART$521-Sswi2c$swi2c_RESTART$517
      001137 03                    3982 	.db	3
      001138 8E 02                 3983 	.sleb128	270
      00113A 01                    3984 	.db	1
      00113B 04                    3985 	.db	4
      00113C 01                    3986 	.uleb128	1
      00113D 09                    3987 	.db	9
      00113E 00 10                 3988 	.dw	Sswi2c$swi2c_RESTART$529-Sswi2c$swi2c_RESTART$521
      001140 03                    3989 	.db	3
      001141 F2 7D                 3990 	.sleb128	-270
      001143 01                    3991 	.db	1
      001144 04                    3992 	.db	4
      001145 02                    3993 	.uleb128	2
      001146 09                    3994 	.db	9
      001147 00 08                 3995 	.dw	Sswi2c$swi2c_RESTART$533-Sswi2c$swi2c_RESTART$529
      001149 03                    3996 	.db	3
      00114A 90 02                 3997 	.sleb128	272
      00114C 01                    3998 	.db	1
      00114D 09                    3999 	.db	9
      00114E 00 01                 4000 	.dw	Sswi2c$swi2c_RESTART$534-Sswi2c$swi2c_RESTART$533
      001150 03                    4001 	.db	3
      001151 01                    4002 	.sleb128	1
      001152 01                    4003 	.db	1
      001153 09                    4004 	.db	9
      001154 00 02                 4005 	.dw	1+Sswi2c$swi2c_RESTART$536-Sswi2c$swi2c_RESTART$534
      001156 00                    4006 	.db	0
      001157 01                    4007 	.uleb128	1
      001158 01                    4008 	.db	1
      001159 04                    4009 	.db	4
      00115A 02                    4010 	.uleb128	2
      00115B 00                    4011 	.db	0
      00115C 05                    4012 	.uleb128	5
      00115D 02                    4013 	.db	2
      00115E 00 00 8C BB           4014 	.dw	0,(Sswi2c$swi2c_START$538)
      001162 03                    4015 	.db	3
      001163 AF 02                 4016 	.sleb128	303
      001165 01                    4017 	.db	1
      001166 09                    4018 	.db	9
      001167 00 00                 4019 	.dw	Sswi2c$swi2c_START$540-Sswi2c$swi2c_START$538
      001169 03                    4020 	.db	3
      00116A 02                    4021 	.sleb128	2
      00116B 01                    4022 	.db	1
      00116C 09                    4023 	.db	9
      00116D 00 22                 4024 	.dw	Sswi2c$swi2c_START$550-Sswi2c$swi2c_START$540
      00116F 03                    4025 	.db	3
      001170 01                    4026 	.sleb128	1
      001171 01                    4027 	.db	1
      001172 09                    4028 	.db	9
      001173 00 0B                 4029 	.dw	Sswi2c$swi2c_START$555-Sswi2c$swi2c_START$550
      001175 03                    4030 	.db	3
      001176 01                    4031 	.sleb128	1
      001177 01                    4032 	.db	1
      001178 09                    4033 	.db	9
      001179 00 0B                 4034 	.dw	Sswi2c$swi2c_START$560-Sswi2c$swi2c_START$555
      00117B 03                    4035 	.db	3
      00117C 01                    4036 	.sleb128	1
      00117D 01                    4037 	.db	1
      00117E 09                    4038 	.db	9
      00117F 00 05                 4039 	.dw	Sswi2c$swi2c_START$562-Sswi2c$swi2c_START$560
      001181 03                    4040 	.db	3
      001182 02                    4041 	.sleb128	2
      001183 01                    4042 	.db	1
      001184 04                    4043 	.db	4
      001185 01                    4044 	.uleb128	1
      001186 09                    4045 	.db	9
      001187 00 10                 4046 	.dw	Sswi2c$swi2c_START$570-Sswi2c$swi2c_START$562
      001189 03                    4047 	.db	3
      00118A E3 7D                 4048 	.sleb128	-285
      00118C 01                    4049 	.db	1
      00118D 04                    4050 	.db	4
      00118E 02                    4051 	.uleb128	2
      00118F 09                    4052 	.db	9
      001190 00 08                 4053 	.dw	Sswi2c$swi2c_START$574-Sswi2c$swi2c_START$570
      001192 03                    4054 	.db	3
      001193 9F 02                 4055 	.sleb128	287
      001195 01                    4056 	.db	1
      001196 04                    4057 	.db	4
      001197 01                    4058 	.uleb128	1
      001198 09                    4059 	.db	9
      001199 00 10                 4060 	.dw	Sswi2c$swi2c_START$582-Sswi2c$swi2c_START$574
      00119B 03                    4061 	.db	3
      00119C E1 7D                 4062 	.sleb128	-287
      00119E 01                    4063 	.db	1
      00119F 04                    4064 	.db	4
      0011A0 02                    4065 	.uleb128	2
      0011A1 09                    4066 	.db	9
      0011A2 00 08                 4067 	.dw	Sswi2c$swi2c_START$586-Sswi2c$swi2c_START$582
      0011A4 03                    4068 	.db	3
      0011A5 A1 02                 4069 	.sleb128	289
      0011A7 01                    4070 	.db	1
      0011A8 09                    4071 	.db	9
      0011A9 00 01                 4072 	.dw	Sswi2c$swi2c_START$587-Sswi2c$swi2c_START$586
      0011AB 03                    4073 	.db	3
      0011AC 01                    4074 	.sleb128	1
      0011AD 01                    4075 	.db	1
      0011AE 09                    4076 	.db	9
      0011AF 00 01                 4077 	.dw	1+Sswi2c$swi2c_START$588-Sswi2c$swi2c_START$587
      0011B1 00                    4078 	.db	0
      0011B2 01                    4079 	.uleb128	1
      0011B3 01                    4080 	.db	1
      0011B4 04                    4081 	.db	4
      0011B5 02                    4082 	.uleb128	2
      0011B6 00                    4083 	.db	0
      0011B7 05                    4084 	.uleb128	5
      0011B8 02                    4085 	.db	2
      0011B9 00 00 8D 2A           4086 	.dw	0,(Sswi2c$swi2c_STOP$590)
      0011BD 03                    4087 	.db	3
      0011BE C0 02                 4088 	.sleb128	320
      0011C0 01                    4089 	.db	1
      0011C1 09                    4090 	.db	9
      0011C2 00 02                 4091 	.dw	Sswi2c$swi2c_STOP$593-Sswi2c$swi2c_STOP$590
      0011C4 03                    4092 	.db	3
      0011C5 02                    4093 	.sleb128	2
      0011C6 01                    4094 	.db	1
      0011C7 09                    4095 	.db	9
      0011C8 00 05                 4096 	.dw	Sswi2c$swi2c_STOP$594-Sswi2c$swi2c_STOP$593
      0011CA 03                    4097 	.db	3
      0011CB 01                    4098 	.sleb128	1
      0011CC 01                    4099 	.db	1
      0011CD 09                    4100 	.db	9
      0011CE 00 02                 4101 	.dw	Sswi2c$swi2c_STOP$595-Sswi2c$swi2c_STOP$594
      0011D0 03                    4102 	.db	3
      0011D1 01                    4103 	.sleb128	1
      0011D2 01                    4104 	.db	1
      0011D3 04                    4105 	.db	4
      0011D4 01                    4106 	.uleb128	1
      0011D5 09                    4107 	.db	9
      0011D6 00 10                 4108 	.dw	Sswi2c$swi2c_STOP$603-Sswi2c$swi2c_STOP$595
      0011D8 03                    4109 	.db	3
      0011D9 D5 7D                 4110 	.sleb128	-299
      0011DB 01                    4111 	.db	1
      0011DC 04                    4112 	.db	4
      0011DD 02                    4113 	.uleb128	2
      0011DE 09                    4114 	.db	9
      0011DF 00 08                 4115 	.dw	Sswi2c$swi2c_STOP$607-Sswi2c$swi2c_STOP$603
      0011E1 03                    4116 	.db	3
      0011E2 AD 02                 4117 	.sleb128	301
      0011E4 01                    4118 	.db	1
      0011E5 09                    4119 	.db	9
      0011E6 00 0B                 4120 	.dw	Sswi2c$swi2c_STOP$612-Sswi2c$swi2c_STOP$607
      0011E8 03                    4121 	.db	3
      0011E9 01                    4122 	.sleb128	1
      0011EA 01                    4123 	.db	1
      0011EB 09                    4124 	.db	9
      0011EC 00 1B                 4125 	.dw	Sswi2c$swi2c_STOP$620-Sswi2c$swi2c_STOP$612
      0011EE 03                    4126 	.db	3
      0011EF 01                    4127 	.sleb128	1
      0011F0 01                    4128 	.db	1
      0011F1 09                    4129 	.db	9
      0011F2 00 04                 4130 	.dw	Sswi2c$swi2c_STOP$622-Sswi2c$swi2c_STOP$620
      0011F4 03                    4131 	.db	3
      0011F5 02                    4132 	.sleb128	2
      0011F6 01                    4133 	.db	1
      0011F7 09                    4134 	.db	9
      0011F8 00 06                 4135 	.dw	Sswi2c$swi2c_STOP$624-Sswi2c$swi2c_STOP$622
      0011FA 03                    4136 	.db	3
      0011FB 01                    4137 	.sleb128	1
      0011FC 01                    4138 	.db	1
      0011FD 04                    4139 	.db	4
      0011FE 01                    4140 	.uleb128	1
      0011FF 09                    4141 	.db	9
      001200 00 09                 4142 	.dw	Sswi2c$swi2c_STOP$629-Sswi2c$swi2c_STOP$624
      001202 03                    4143 	.db	3
      001203 CE 7D                 4144 	.sleb128	-306
      001205 01                    4145 	.db	1
      001206 04                    4146 	.db	4
      001207 02                    4147 	.uleb128	2
      001208 09                    4148 	.db	9
      001209 00 08                 4149 	.dw	Sswi2c$swi2c_STOP$633-Sswi2c$swi2c_STOP$629
      00120B 03                    4150 	.db	3
      00120C B5 02                 4151 	.sleb128	309
      00120E 01                    4152 	.db	1
      00120F 09                    4153 	.db	9
      001210 00 0B                 4154 	.dw	Sswi2c$swi2c_STOP$638-Sswi2c$swi2c_STOP$633
      001212 03                    4155 	.db	3
      001213 01                    4156 	.sleb128	1
      001214 01                    4157 	.db	1
      001215 09                    4158 	.db	9
      001216 00 02                 4159 	.dw	Sswi2c$swi2c_STOP$639-Sswi2c$swi2c_STOP$638
      001218 03                    4160 	.db	3
      001219 01                    4161 	.sleb128	1
      00121A 01                    4162 	.db	1
      00121B 09                    4163 	.db	9
      00121C 00 03                 4164 	.dw	1+Sswi2c$swi2c_STOP$641-Sswi2c$swi2c_STOP$639
      00121E 00                    4165 	.db	0
      00121F 01                    4166 	.uleb128	1
      001220 01                    4167 	.db	1
      001221 04                    4168 	.db	4
      001222 02                    4169 	.uleb128	2
      001223 00                    4170 	.db	0
      001224 05                    4171 	.uleb128	5
      001225 02                    4172 	.db	2
      001226 00 00 8D 9C           4173 	.dw	0,(Sswi2c$swi2c_recover$643)
      00122A 03                    4174 	.db	3
      00122B D6 02                 4175 	.sleb128	342
      00122D 01                    4176 	.db	1
      00122E 09                    4177 	.db	9
      00122F 00 02                 4178 	.dw	Sswi2c$swi2c_recover$646-Sswi2c$swi2c_recover$643
      001231 03                    4179 	.db	3
      001232 02                    4180 	.sleb128	2
      001233 01                    4181 	.db	1
      001234 09                    4182 	.db	9
      001235 00 05                 4183 	.dw	Sswi2c$swi2c_recover$647-Sswi2c$swi2c_recover$646
      001237 03                    4184 	.db	3
      001238 02                    4185 	.sleb128	2
      001239 01                    4186 	.db	1
      00123A 09                    4187 	.db	9
      00123B 00 0B                 4188 	.dw	Sswi2c$swi2c_recover$652-Sswi2c$swi2c_recover$647
      00123D 03                    4189 	.db	3
      00123E 01                    4190 	.sleb128	1
      00123F 01                    4191 	.db	1
      001240 04                    4192 	.db	4
      001241 01                    4193 	.uleb128	1
      001242 09                    4194 	.db	9
      001243 00 10                 4195 	.dw	Sswi2c$swi2c_recover$660-Sswi2c$swi2c_recover$652
      001245 03                    4196 	.db	3
      001246 BE 7D                 4197 	.sleb128	-322
      001248 01                    4198 	.db	1
      001249 04                    4199 	.db	4
      00124A 02                    4200 	.uleb128	2
      00124B 09                    4201 	.db	9
      00124C 00 08                 4202 	.dw	Sswi2c$swi2c_recover$664-Sswi2c$swi2c_recover$660
      00124E 03                    4203 	.db	3
      00124F C5 02                 4204 	.sleb128	325
      001251 01                    4205 	.db	1
      001252 09                    4206 	.db	9
      001253 00 22                 4207 	.dw	Sswi2c$swi2c_recover$674-Sswi2c$swi2c_recover$664
      001255 03                    4208 	.db	3
      001256 01                    4209 	.sleb128	1
      001257 01                    4210 	.db	1
      001258 09                    4211 	.db	9
      001259 00 04                 4212 	.dw	Sswi2c$swi2c_recover$676-Sswi2c$swi2c_recover$674
      00125B 03                    4213 	.db	3
      00125C 03                    4214 	.sleb128	3
      00125D 01                    4215 	.db	1
      00125E 09                    4216 	.db	9
      00125F 00 11                 4217 	.dw	Sswi2c$swi2c_recover$681-Sswi2c$swi2c_recover$676
      001261 03                    4218 	.db	3
      001262 01                    4219 	.sleb128	1
      001263 01                    4220 	.db	1
      001264 09                    4221 	.db	9
      001265 00 02                 4222 	.dw	Sswi2c$swi2c_recover$683-Sswi2c$swi2c_recover$681
      001267 03                    4223 	.db	3
      001268 01                    4224 	.sleb128	1
      001269 01                    4225 	.db	1
      00126A 04                    4226 	.db	4
      00126B 01                    4227 	.uleb128	1
      00126C 09                    4228 	.db	9
      00126D 00 10                 4229 	.dw	Sswi2c$swi2c_recover$691-Sswi2c$swi2c_recover$683
      00126F 03                    4230 	.db	3
      001270 B5 7D                 4231 	.sleb128	-331
      001272 01                    4232 	.db	1
      001273 04                    4233 	.db	4
      001274 02                    4234 	.uleb128	2
      001275 09                    4235 	.db	9
      001276 00 08                 4236 	.dw	Sswi2c$swi2c_recover$695-Sswi2c$swi2c_recover$691
      001278 03                    4237 	.db	3
      001279 CD 02                 4238 	.sleb128	333
      00127B 01                    4239 	.db	1
      00127C 09                    4240 	.db	9
      00127D 00 0B                 4241 	.dw	Sswi2c$swi2c_recover$701-Sswi2c$swi2c_recover$695
      00127F 03                    4242 	.db	3
      001280 01                    4243 	.sleb128	1
      001281 01                    4244 	.db	1
      001282 09                    4245 	.db	9
      001283 00 1B                 4246 	.dw	Sswi2c$swi2c_recover$709-Sswi2c$swi2c_recover$701
      001285 03                    4247 	.db	3
      001286 01                    4248 	.sleb128	1
      001287 01                    4249 	.db	1
      001288 09                    4250 	.db	9
      001289 00 06                 4251 	.dw	Sswi2c$swi2c_recover$712-Sswi2c$swi2c_recover$709
      00128B 03                    4252 	.db	3
      00128C 02                    4253 	.sleb128	2
      00128D 01                    4254 	.db	1
      00128E 09                    4255 	.db	9
      00128F 00 07                 4256 	.dw	Sswi2c$swi2c_recover$714-Sswi2c$swi2c_recover$712
      001291 03                    4257 	.db	3
      001292 01                    4258 	.sleb128	1
      001293 01                    4259 	.db	1
      001294 04                    4260 	.db	4
      001295 01                    4261 	.uleb128	1
      001296 09                    4262 	.db	9
      001297 00 0A                 4263 	.dw	Sswi2c$swi2c_recover$719-Sswi2c$swi2c_recover$714
      001299 03                    4264 	.db	3
      00129A AE 7D                 4265 	.sleb128	-338
      00129C 01                    4266 	.db	1
      00129D 04                    4267 	.db	4
      00129E 02                    4268 	.uleb128	2
      00129F 09                    4269 	.db	9
      0012A0 00 08                 4270 	.dw	Sswi2c$swi2c_recover$723-Sswi2c$swi2c_recover$719
      0012A2 03                    4271 	.db	3
      0012A3 D5 02                 4272 	.sleb128	341
      0012A5 01                    4273 	.db	1
      0012A6 09                    4274 	.db	9
      0012A7 00 11                 4275 	.dw	Sswi2c$swi2c_recover$729-Sswi2c$swi2c_recover$723
      0012A9 03                    4276 	.db	3
      0012AA 01                    4277 	.sleb128	1
      0012AB 01                    4278 	.db	1
      0012AC 09                    4279 	.db	9
      0012AD 00 08                 4280 	.dw	Sswi2c$swi2c_recover$733-Sswi2c$swi2c_recover$729
      0012AF 03                    4281 	.db	3
      0012B0 74                    4282 	.sleb128	-12
      0012B1 01                    4283 	.db	1
      0012B2 09                    4284 	.db	9
      0012B3 00 0B                 4285 	.dw	Sswi2c$swi2c_recover$735-Sswi2c$swi2c_recover$733
      0012B5 03                    4286 	.db	3
      0012B6 0F                    4287 	.sleb128	15
      0012B7 01                    4288 	.db	1
      0012B8 09                    4289 	.db	9
      0012B9 00 02                 4290 	.dw	Sswi2c$swi2c_recover$737-Sswi2c$swi2c_recover$735
      0012BB 03                    4291 	.db	3
      0012BC 02                    4292 	.sleb128	2
      0012BD 01                    4293 	.db	1
      0012BE 09                    4294 	.db	9
      0012BF 00 03                 4295 	.dw	1+Sswi2c$swi2c_recover$739-Sswi2c$swi2c_recover$737
      0012C1 00                    4296 	.db	0
      0012C2 01                    4297 	.uleb128	1
      0012C3 01                    4298 	.db	1
      0012C4                       4299 Ldebug_line_end:
                                   4300 
                                   4301 	.area .debug_loc (NOLOAD)
      0014FC                       4302 Ldebug_loc_start:
      0014FC 00 00 8E 84           4303 	.dw	0,(Sswi2c$swi2c_recover$738)
      001500 00 00 8E 85           4304 	.dw	0,(Sswi2c$swi2c_recover$740)
      001504 00 02                 4305 	.dw	2
      001506 78                    4306 	.db	120
      001507 01                    4307 	.sleb128	1
      001508 00 00 8E 6F           4308 	.dw	0,(Sswi2c$swi2c_recover$730)
      00150C 00 00 8E 84           4309 	.dw	0,(Sswi2c$swi2c_recover$738)
      001510 00 02                 4310 	.dw	2
      001512 78                    4311 	.db	120
      001513 01                    4312 	.sleb128	1
      001514 00 00 8E 67           4313 	.dw	0,(Sswi2c$swi2c_recover$727)
      001518 00 00 8E 6F           4314 	.dw	0,(Sswi2c$swi2c_recover$730)
      00151C 00 02                 4315 	.dw	2
      00151E 78                    4316 	.db	120
      00151F 04                    4317 	.sleb128	4
      001520 00 00 8E 62           4318 	.dw	0,(Sswi2c$swi2c_recover$726)
      001524 00 00 8E 67           4319 	.dw	0,(Sswi2c$swi2c_recover$727)
      001528 00 02                 4320 	.dw	2
      00152A 78                    4321 	.db	120
      00152B 07                    4322 	.sleb128	7
      00152C 00 00 8E 60           4323 	.dw	0,(Sswi2c$swi2c_recover$725)
      001530 00 00 8E 62           4324 	.dw	0,(Sswi2c$swi2c_recover$726)
      001534 00 02                 4325 	.dw	2
      001536 78                    4326 	.db	120
      001537 06                    4327 	.sleb128	6
      001538 00 00 8E 5E           4328 	.dw	0,(Sswi2c$swi2c_recover$724)
      00153C 00 00 8E 60           4329 	.dw	0,(Sswi2c$swi2c_recover$725)
      001540 00 02                 4330 	.dw	2
      001542 78                    4331 	.db	120
      001543 05                    4332 	.sleb128	5
      001544 00 00 8E 31           4333 	.dw	0,(Sswi2c$swi2c_recover$707)
      001548 00 00 8E 5E           4334 	.dw	0,(Sswi2c$swi2c_recover$724)
      00154C 00 02                 4335 	.dw	2
      00154E 78                    4336 	.db	120
      00154F 04                    4337 	.sleb128	4
      001550 00 00 8E 30           4338 	.dw	0,(Sswi2c$swi2c_recover$706)
      001554 00 00 8E 31           4339 	.dw	0,(Sswi2c$swi2c_recover$707)
      001558 00 02                 4340 	.dw	2
      00155A 78                    4341 	.db	120
      00155B 06                    4342 	.sleb128	6
      00155C 00 00 8E 2B           4343 	.dw	0,(Sswi2c$swi2c_recover$705)
      001560 00 00 8E 30           4344 	.dw	0,(Sswi2c$swi2c_recover$706)
      001564 00 02                 4345 	.dw	2
      001566 78                    4346 	.db	120
      001567 09                    4347 	.sleb128	9
      001568 00 00 8E 29           4348 	.dw	0,(Sswi2c$swi2c_recover$704)
      00156C 00 00 8E 2B           4349 	.dw	0,(Sswi2c$swi2c_recover$705)
      001570 00 02                 4350 	.dw	2
      001572 78                    4351 	.db	120
      001573 08                    4352 	.sleb128	8
      001574 00 00 8E 27           4353 	.dw	0,(Sswi2c$swi2c_recover$703)
      001578 00 00 8E 29           4354 	.dw	0,(Sswi2c$swi2c_recover$704)
      00157C 00 02                 4355 	.dw	2
      00157E 78                    4356 	.db	120
      00157F 07                    4357 	.sleb128	7
      001580 00 00 8E 25           4358 	.dw	0,(Sswi2c$swi2c_recover$702)
      001584 00 00 8E 27           4359 	.dw	0,(Sswi2c$swi2c_recover$703)
      001588 00 02                 4360 	.dw	2
      00158A 78                    4361 	.db	120
      00158B 06                    4362 	.sleb128	6
      00158C 00 00 8E 22           4363 	.dw	0,(Sswi2c$swi2c_recover$699)
      001590 00 00 8E 25           4364 	.dw	0,(Sswi2c$swi2c_recover$702)
      001594 00 02                 4365 	.dw	2
      001596 78                    4366 	.db	120
      001597 04                    4367 	.sleb128	4
      001598 00 00 8E 1D           4368 	.dw	0,(Sswi2c$swi2c_recover$698)
      00159C 00 00 8E 22           4369 	.dw	0,(Sswi2c$swi2c_recover$699)
      0015A0 00 02                 4370 	.dw	2
      0015A2 78                    4371 	.db	120
      0015A3 07                    4372 	.sleb128	7
      0015A4 00 00 8E 1B           4373 	.dw	0,(Sswi2c$swi2c_recover$697)
      0015A8 00 00 8E 1D           4374 	.dw	0,(Sswi2c$swi2c_recover$698)
      0015AC 00 02                 4375 	.dw	2
      0015AE 78                    4376 	.db	120
      0015AF 06                    4377 	.sleb128	6
      0015B0 00 00 8E 19           4378 	.dw	0,(Sswi2c$swi2c_recover$696)
      0015B4 00 00 8E 1B           4379 	.dw	0,(Sswi2c$swi2c_recover$697)
      0015B8 00 02                 4380 	.dw	2
      0015BA 78                    4381 	.db	120
      0015BB 05                    4382 	.sleb128	5
      0015BC 00 00 8E 0A           4383 	.dw	0,(Sswi2c$swi2c_recover$687)
      0015C0 00 00 8E 19           4384 	.dw	0,(Sswi2c$swi2c_recover$696)
      0015C4 00 02                 4385 	.dw	2
      0015C6 78                    4386 	.db	120
      0015C7 04                    4387 	.sleb128	4
      0015C8 00 00 8E 05           4388 	.dw	0,(Sswi2c$swi2c_recover$686)
      0015CC 00 00 8E 0A           4389 	.dw	0,(Sswi2c$swi2c_recover$687)
      0015D0 00 02                 4390 	.dw	2
      0015D2 78                    4391 	.db	120
      0015D3 07                    4392 	.sleb128	7
      0015D4 00 00 8E 03           4393 	.dw	0,(Sswi2c$swi2c_recover$685)
      0015D8 00 00 8E 05           4394 	.dw	0,(Sswi2c$swi2c_recover$686)
      0015DC 00 02                 4395 	.dw	2
      0015DE 78                    4396 	.db	120
      0015DF 06                    4397 	.sleb128	6
      0015E0 00 00 8E 01           4398 	.dw	0,(Sswi2c$swi2c_recover$684)
      0015E4 00 00 8E 03           4399 	.dw	0,(Sswi2c$swi2c_recover$685)
      0015E8 00 02                 4400 	.dw	2
      0015EA 78                    4401 	.db	120
      0015EB 05                    4402 	.sleb128	5
      0015EC 00 00 8D F7           4403 	.dw	0,(Sswi2c$swi2c_recover$680)
      0015F0 00 00 8E 01           4404 	.dw	0,(Sswi2c$swi2c_recover$684)
      0015F4 00 02                 4405 	.dw	2
      0015F6 78                    4406 	.db	120
      0015F7 04                    4407 	.sleb128	4
      0015F8 00 00 8D F2           4408 	.dw	0,(Sswi2c$swi2c_recover$679)
      0015FC 00 00 8D F7           4409 	.dw	0,(Sswi2c$swi2c_recover$680)
      001600 00 02                 4410 	.dw	2
      001602 78                    4411 	.db	120
      001603 07                    4412 	.sleb128	7
      001604 00 00 8D F0           4413 	.dw	0,(Sswi2c$swi2c_recover$678)
      001608 00 00 8D F2           4414 	.dw	0,(Sswi2c$swi2c_recover$679)
      00160C 00 02                 4415 	.dw	2
      00160E 78                    4416 	.db	120
      00160F 06                    4417 	.sleb128	6
      001610 00 00 8D EE           4418 	.dw	0,(Sswi2c$swi2c_recover$677)
      001614 00 00 8D F0           4419 	.dw	0,(Sswi2c$swi2c_recover$678)
      001618 00 02                 4420 	.dw	2
      00161A 78                    4421 	.db	120
      00161B 05                    4422 	.sleb128	5
      00161C 00 00 8D E2           4423 	.dw	0,(Sswi2c$swi2c_recover$672)
      001620 00 00 8D EE           4424 	.dw	0,(Sswi2c$swi2c_recover$677)
      001624 00 02                 4425 	.dw	2
      001626 78                    4426 	.db	120
      001627 04                    4427 	.sleb128	4
      001628 00 00 8D DD           4428 	.dw	0,(Sswi2c$swi2c_recover$671)
      00162C 00 00 8D E2           4429 	.dw	0,(Sswi2c$swi2c_recover$672)
      001630 00 02                 4430 	.dw	2
      001632 78                    4431 	.db	120
      001633 07                    4432 	.sleb128	7
      001634 00 00 8D DB           4433 	.dw	0,(Sswi2c$swi2c_recover$670)
      001638 00 00 8D DD           4434 	.dw	0,(Sswi2c$swi2c_recover$671)
      00163C 00 02                 4435 	.dw	2
      00163E 78                    4436 	.db	120
      00163F 06                    4437 	.sleb128	6
      001640 00 00 8D D9           4438 	.dw	0,(Sswi2c$swi2c_recover$669)
      001644 00 00 8D DB           4439 	.dw	0,(Sswi2c$swi2c_recover$670)
      001648 00 02                 4440 	.dw	2
      00164A 78                    4441 	.db	120
      00164B 05                    4442 	.sleb128	5
      00164C 00 00 8D D1           4443 	.dw	0,(Sswi2c$swi2c_recover$668)
      001650 00 00 8D D9           4444 	.dw	0,(Sswi2c$swi2c_recover$669)
      001654 00 02                 4445 	.dw	2
      001656 78                    4446 	.db	120
      001657 04                    4447 	.sleb128	4
      001658 00 00 8D CC           4448 	.dw	0,(Sswi2c$swi2c_recover$667)
      00165C 00 00 8D D1           4449 	.dw	0,(Sswi2c$swi2c_recover$668)
      001660 00 02                 4450 	.dw	2
      001662 78                    4451 	.db	120
      001663 07                    4452 	.sleb128	7
      001664 00 00 8D CA           4453 	.dw	0,(Sswi2c$swi2c_recover$666)
      001668 00 00 8D CC           4454 	.dw	0,(Sswi2c$swi2c_recover$667)
      00166C 00 02                 4455 	.dw	2
      00166E 78                    4456 	.db	120
      00166F 06                    4457 	.sleb128	6
      001670 00 00 8D C8           4458 	.dw	0,(Sswi2c$swi2c_recover$665)
      001674 00 00 8D CA           4459 	.dw	0,(Sswi2c$swi2c_recover$666)
      001678 00 02                 4460 	.dw	2
      00167A 78                    4461 	.db	120
      00167B 05                    4462 	.sleb128	5
      00167C 00 00 8D B9           4463 	.dw	0,(Sswi2c$swi2c_recover$656)
      001680 00 00 8D C8           4464 	.dw	0,(Sswi2c$swi2c_recover$665)
      001684 00 02                 4465 	.dw	2
      001686 78                    4466 	.db	120
      001687 04                    4467 	.sleb128	4
      001688 00 00 8D B4           4468 	.dw	0,(Sswi2c$swi2c_recover$655)
      00168C 00 00 8D B9           4469 	.dw	0,(Sswi2c$swi2c_recover$656)
      001690 00 02                 4470 	.dw	2
      001692 78                    4471 	.db	120
      001693 07                    4472 	.sleb128	7
      001694 00 00 8D B2           4473 	.dw	0,(Sswi2c$swi2c_recover$654)
      001698 00 00 8D B4           4474 	.dw	0,(Sswi2c$swi2c_recover$655)
      00169C 00 02                 4475 	.dw	2
      00169E 78                    4476 	.db	120
      00169F 06                    4477 	.sleb128	6
      0016A0 00 00 8D B0           4478 	.dw	0,(Sswi2c$swi2c_recover$653)
      0016A4 00 00 8D B2           4479 	.dw	0,(Sswi2c$swi2c_recover$654)
      0016A8 00 02                 4480 	.dw	2
      0016AA 78                    4481 	.db	120
      0016AB 05                    4482 	.sleb128	5
      0016AC 00 00 8D AE           4483 	.dw	0,(Sswi2c$swi2c_recover$651)
      0016B0 00 00 8D B0           4484 	.dw	0,(Sswi2c$swi2c_recover$653)
      0016B4 00 02                 4485 	.dw	2
      0016B6 78                    4486 	.db	120
      0016B7 04                    4487 	.sleb128	4
      0016B8 00 00 8D A9           4488 	.dw	0,(Sswi2c$swi2c_recover$650)
      0016BC 00 00 8D AE           4489 	.dw	0,(Sswi2c$swi2c_recover$651)
      0016C0 00 02                 4490 	.dw	2
      0016C2 78                    4491 	.db	120
      0016C3 07                    4492 	.sleb128	7
      0016C4 00 00 8D A7           4493 	.dw	0,(Sswi2c$swi2c_recover$649)
      0016C8 00 00 8D A9           4494 	.dw	0,(Sswi2c$swi2c_recover$650)
      0016CC 00 02                 4495 	.dw	2
      0016CE 78                    4496 	.db	120
      0016CF 06                    4497 	.sleb128	6
      0016D0 00 00 8D A5           4498 	.dw	0,(Sswi2c$swi2c_recover$648)
      0016D4 00 00 8D A7           4499 	.dw	0,(Sswi2c$swi2c_recover$649)
      0016D8 00 02                 4500 	.dw	2
      0016DA 78                    4501 	.db	120
      0016DB 05                    4502 	.sleb128	5
      0016DC 00 00 8D 9E           4503 	.dw	0,(Sswi2c$swi2c_recover$645)
      0016E0 00 00 8D A5           4504 	.dw	0,(Sswi2c$swi2c_recover$648)
      0016E4 00 02                 4505 	.dw	2
      0016E6 78                    4506 	.db	120
      0016E7 04                    4507 	.sleb128	4
      0016E8 00 00 8D 9C           4508 	.dw	0,(Sswi2c$swi2c_recover$644)
      0016EC 00 00 8D 9E           4509 	.dw	0,(Sswi2c$swi2c_recover$645)
      0016F0 00 02                 4510 	.dw	2
      0016F2 78                    4511 	.db	120
      0016F3 01                    4512 	.sleb128	1
      0016F4 00 00 00 00           4513 	.dw	0,0
      0016F8 00 00 00 00           4514 	.dw	0,0
      0016FC 00 00 8D 9B           4515 	.dw	0,(Sswi2c$swi2c_STOP$640)
      001700 00 00 8D 9C           4516 	.dw	0,(Sswi2c$swi2c_STOP$642)
      001704 00 02                 4517 	.dw	2
      001706 78                    4518 	.db	120
      001707 01                    4519 	.sleb128	1
      001708 00 00 8D 97           4520 	.dw	0,(Sswi2c$swi2c_STOP$637)
      00170C 00 00 8D 9B           4521 	.dw	0,(Sswi2c$swi2c_STOP$640)
      001710 00 02                 4522 	.dw	2
      001712 78                    4523 	.db	120
      001713 04                    4524 	.sleb128	4
      001714 00 00 8D 92           4525 	.dw	0,(Sswi2c$swi2c_STOP$636)
      001718 00 00 8D 97           4526 	.dw	0,(Sswi2c$swi2c_STOP$637)
      00171C 00 02                 4527 	.dw	2
      00171E 78                    4528 	.db	120
      00171F 07                    4529 	.sleb128	7
      001720 00 00 8D 90           4530 	.dw	0,(Sswi2c$swi2c_STOP$635)
      001724 00 00 8D 92           4531 	.dw	0,(Sswi2c$swi2c_STOP$636)
      001728 00 02                 4532 	.dw	2
      00172A 78                    4533 	.db	120
      00172B 06                    4534 	.sleb128	6
      00172C 00 00 8D 8E           4535 	.dw	0,(Sswi2c$swi2c_STOP$634)
      001730 00 00 8D 90           4536 	.dw	0,(Sswi2c$swi2c_STOP$635)
      001734 00 02                 4537 	.dw	2
      001736 78                    4538 	.db	120
      001737 05                    4539 	.sleb128	5
      001738 00 00 8D 65           4540 	.dw	0,(Sswi2c$swi2c_STOP$618)
      00173C 00 00 8D 8E           4541 	.dw	0,(Sswi2c$swi2c_STOP$634)
      001740 00 02                 4542 	.dw	2
      001742 78                    4543 	.db	120
      001743 04                    4544 	.sleb128	4
      001744 00 00 8D 64           4545 	.dw	0,(Sswi2c$swi2c_STOP$617)
      001748 00 00 8D 65           4546 	.dw	0,(Sswi2c$swi2c_STOP$618)
      00174C 00 02                 4547 	.dw	2
      00174E 78                    4548 	.db	120
      00174F 06                    4549 	.sleb128	6
      001750 00 00 8D 5F           4550 	.dw	0,(Sswi2c$swi2c_STOP$616)
      001754 00 00 8D 64           4551 	.dw	0,(Sswi2c$swi2c_STOP$617)
      001758 00 02                 4552 	.dw	2
      00175A 78                    4553 	.db	120
      00175B 09                    4554 	.sleb128	9
      00175C 00 00 8D 5D           4555 	.dw	0,(Sswi2c$swi2c_STOP$615)
      001760 00 00 8D 5F           4556 	.dw	0,(Sswi2c$swi2c_STOP$616)
      001764 00 02                 4557 	.dw	2
      001766 78                    4558 	.db	120
      001767 08                    4559 	.sleb128	8
      001768 00 00 8D 5B           4560 	.dw	0,(Sswi2c$swi2c_STOP$614)
      00176C 00 00 8D 5D           4561 	.dw	0,(Sswi2c$swi2c_STOP$615)
      001770 00 02                 4562 	.dw	2
      001772 78                    4563 	.db	120
      001773 07                    4564 	.sleb128	7
      001774 00 00 8D 59           4565 	.dw	0,(Sswi2c$swi2c_STOP$613)
      001778 00 00 8D 5B           4566 	.dw	0,(Sswi2c$swi2c_STOP$614)
      00177C 00 02                 4567 	.dw	2
      00177E 78                    4568 	.db	120
      00177F 06                    4569 	.sleb128	6
      001780 00 00 8D 56           4570 	.dw	0,(Sswi2c$swi2c_STOP$611)
      001784 00 00 8D 59           4571 	.dw	0,(Sswi2c$swi2c_STOP$613)
      001788 00 02                 4572 	.dw	2
      00178A 78                    4573 	.db	120
      00178B 04                    4574 	.sleb128	4
      00178C 00 00 8D 51           4575 	.dw	0,(Sswi2c$swi2c_STOP$610)
      001790 00 00 8D 56           4576 	.dw	0,(Sswi2c$swi2c_STOP$611)
      001794 00 02                 4577 	.dw	2
      001796 78                    4578 	.db	120
      001797 07                    4579 	.sleb128	7
      001798 00 00 8D 4F           4580 	.dw	0,(Sswi2c$swi2c_STOP$609)
      00179C 00 00 8D 51           4581 	.dw	0,(Sswi2c$swi2c_STOP$610)
      0017A0 00 02                 4582 	.dw	2
      0017A2 78                    4583 	.db	120
      0017A3 06                    4584 	.sleb128	6
      0017A4 00 00 8D 4D           4585 	.dw	0,(Sswi2c$swi2c_STOP$608)
      0017A8 00 00 8D 4F           4586 	.dw	0,(Sswi2c$swi2c_STOP$609)
      0017AC 00 02                 4587 	.dw	2
      0017AE 78                    4588 	.db	120
      0017AF 05                    4589 	.sleb128	5
      0017B0 00 00 8D 3E           4590 	.dw	0,(Sswi2c$swi2c_STOP$599)
      0017B4 00 00 8D 4D           4591 	.dw	0,(Sswi2c$swi2c_STOP$608)
      0017B8 00 02                 4592 	.dw	2
      0017BA 78                    4593 	.db	120
      0017BB 04                    4594 	.sleb128	4
      0017BC 00 00 8D 39           4595 	.dw	0,(Sswi2c$swi2c_STOP$598)
      0017C0 00 00 8D 3E           4596 	.dw	0,(Sswi2c$swi2c_STOP$599)
      0017C4 00 02                 4597 	.dw	2
      0017C6 78                    4598 	.db	120
      0017C7 07                    4599 	.sleb128	7
      0017C8 00 00 8D 37           4600 	.dw	0,(Sswi2c$swi2c_STOP$597)
      0017CC 00 00 8D 39           4601 	.dw	0,(Sswi2c$swi2c_STOP$598)
      0017D0 00 02                 4602 	.dw	2
      0017D2 78                    4603 	.db	120
      0017D3 06                    4604 	.sleb128	6
      0017D4 00 00 8D 35           4605 	.dw	0,(Sswi2c$swi2c_STOP$596)
      0017D8 00 00 8D 37           4606 	.dw	0,(Sswi2c$swi2c_STOP$597)
      0017DC 00 02                 4607 	.dw	2
      0017DE 78                    4608 	.db	120
      0017DF 05                    4609 	.sleb128	5
      0017E0 00 00 8D 2C           4610 	.dw	0,(Sswi2c$swi2c_STOP$592)
      0017E4 00 00 8D 35           4611 	.dw	0,(Sswi2c$swi2c_STOP$596)
      0017E8 00 02                 4612 	.dw	2
      0017EA 78                    4613 	.db	120
      0017EB 04                    4614 	.sleb128	4
      0017EC 00 00 8D 2A           4615 	.dw	0,(Sswi2c$swi2c_STOP$591)
      0017F0 00 00 8D 2C           4616 	.dw	0,(Sswi2c$swi2c_STOP$592)
      0017F4 00 02                 4617 	.dw	2
      0017F6 78                    4618 	.db	120
      0017F7 01                    4619 	.sleb128	1
      0017F8 00 00 00 00           4620 	.dw	0,0
      0017FC 00 00 00 00           4621 	.dw	0,0
      001800 00 00 8D 1B           4622 	.dw	0,(Sswi2c$swi2c_START$578)
      001804 00 00 8D 2A           4623 	.dw	0,(Sswi2c$swi2c_START$589)
      001808 00 02                 4624 	.dw	2
      00180A 78                    4625 	.db	120
      00180B 01                    4626 	.sleb128	1
      00180C 00 00 8D 16           4627 	.dw	0,(Sswi2c$swi2c_START$577)
      001810 00 00 8D 1B           4628 	.dw	0,(Sswi2c$swi2c_START$578)
      001814 00 02                 4629 	.dw	2
      001816 78                    4630 	.db	120
      001817 04                    4631 	.sleb128	4
      001818 00 00 8D 14           4632 	.dw	0,(Sswi2c$swi2c_START$576)
      00181C 00 00 8D 16           4633 	.dw	0,(Sswi2c$swi2c_START$577)
      001820 00 02                 4634 	.dw	2
      001822 78                    4635 	.db	120
      001823 03                    4636 	.sleb128	3
      001824 00 00 8D 12           4637 	.dw	0,(Sswi2c$swi2c_START$575)
      001828 00 00 8D 14           4638 	.dw	0,(Sswi2c$swi2c_START$576)
      00182C 00 02                 4639 	.dw	2
      00182E 78                    4640 	.db	120
      00182F 02                    4641 	.sleb128	2
      001830 00 00 8D 03           4642 	.dw	0,(Sswi2c$swi2c_START$566)
      001834 00 00 8D 12           4643 	.dw	0,(Sswi2c$swi2c_START$575)
      001838 00 02                 4644 	.dw	2
      00183A 78                    4645 	.db	120
      00183B 01                    4646 	.sleb128	1
      00183C 00 00 8C FE           4647 	.dw	0,(Sswi2c$swi2c_START$565)
      001840 00 00 8D 03           4648 	.dw	0,(Sswi2c$swi2c_START$566)
      001844 00 02                 4649 	.dw	2
      001846 78                    4650 	.db	120
      001847 04                    4651 	.sleb128	4
      001848 00 00 8C FC           4652 	.dw	0,(Sswi2c$swi2c_START$564)
      00184C 00 00 8C FE           4653 	.dw	0,(Sswi2c$swi2c_START$565)
      001850 00 02                 4654 	.dw	2
      001852 78                    4655 	.db	120
      001853 03                    4656 	.sleb128	3
      001854 00 00 8C FA           4657 	.dw	0,(Sswi2c$swi2c_START$563)
      001858 00 00 8C FC           4658 	.dw	0,(Sswi2c$swi2c_START$564)
      00185C 00 02                 4659 	.dw	2
      00185E 78                    4660 	.db	120
      00185F 02                    4661 	.sleb128	2
      001860 00 00 8C F3           4662 	.dw	0,(Sswi2c$swi2c_START$559)
      001864 00 00 8C FA           4663 	.dw	0,(Sswi2c$swi2c_START$563)
      001868 00 02                 4664 	.dw	2
      00186A 78                    4665 	.db	120
      00186B 01                    4666 	.sleb128	1
      00186C 00 00 8C EE           4667 	.dw	0,(Sswi2c$swi2c_START$558)
      001870 00 00 8C F3           4668 	.dw	0,(Sswi2c$swi2c_START$559)
      001874 00 02                 4669 	.dw	2
      001876 78                    4670 	.db	120
      001877 04                    4671 	.sleb128	4
      001878 00 00 8C EC           4672 	.dw	0,(Sswi2c$swi2c_START$557)
      00187C 00 00 8C EE           4673 	.dw	0,(Sswi2c$swi2c_START$558)
      001880 00 02                 4674 	.dw	2
      001882 78                    4675 	.db	120
      001883 03                    4676 	.sleb128	3
      001884 00 00 8C EA           4677 	.dw	0,(Sswi2c$swi2c_START$556)
      001888 00 00 8C EC           4678 	.dw	0,(Sswi2c$swi2c_START$557)
      00188C 00 02                 4679 	.dw	2
      00188E 78                    4680 	.db	120
      00188F 02                    4681 	.sleb128	2
      001890 00 00 8C E8           4682 	.dw	0,(Sswi2c$swi2c_START$554)
      001894 00 00 8C EA           4683 	.dw	0,(Sswi2c$swi2c_START$556)
      001898 00 02                 4684 	.dw	2
      00189A 78                    4685 	.db	120
      00189B 01                    4686 	.sleb128	1
      00189C 00 00 8C E3           4687 	.dw	0,(Sswi2c$swi2c_START$553)
      0018A0 00 00 8C E8           4688 	.dw	0,(Sswi2c$swi2c_START$554)
      0018A4 00 02                 4689 	.dw	2
      0018A6 78                    4690 	.db	120
      0018A7 04                    4691 	.sleb128	4
      0018A8 00 00 8C E1           4692 	.dw	0,(Sswi2c$swi2c_START$552)
      0018AC 00 00 8C E3           4693 	.dw	0,(Sswi2c$swi2c_START$553)
      0018B0 00 02                 4694 	.dw	2
      0018B2 78                    4695 	.db	120
      0018B3 03                    4696 	.sleb128	3
      0018B4 00 00 8C DF           4697 	.dw	0,(Sswi2c$swi2c_START$551)
      0018B8 00 00 8C E1           4698 	.dw	0,(Sswi2c$swi2c_START$552)
      0018BC 00 02                 4699 	.dw	2
      0018BE 78                    4700 	.db	120
      0018BF 02                    4701 	.sleb128	2
      0018C0 00 00 8C D7           4702 	.dw	0,(Sswi2c$swi2c_START$548)
      0018C4 00 00 8C DF           4703 	.dw	0,(Sswi2c$swi2c_START$551)
      0018C8 00 02                 4704 	.dw	2
      0018CA 78                    4705 	.db	120
      0018CB 01                    4706 	.sleb128	1
      0018CC 00 00 8C D2           4707 	.dw	0,(Sswi2c$swi2c_START$547)
      0018D0 00 00 8C D7           4708 	.dw	0,(Sswi2c$swi2c_START$548)
      0018D4 00 02                 4709 	.dw	2
      0018D6 78                    4710 	.db	120
      0018D7 04                    4711 	.sleb128	4
      0018D8 00 00 8C D0           4712 	.dw	0,(Sswi2c$swi2c_START$546)
      0018DC 00 00 8C D2           4713 	.dw	0,(Sswi2c$swi2c_START$547)
      0018E0 00 02                 4714 	.dw	2
      0018E2 78                    4715 	.db	120
      0018E3 03                    4716 	.sleb128	3
      0018E4 00 00 8C CE           4717 	.dw	0,(Sswi2c$swi2c_START$545)
      0018E8 00 00 8C D0           4718 	.dw	0,(Sswi2c$swi2c_START$546)
      0018EC 00 02                 4719 	.dw	2
      0018EE 78                    4720 	.db	120
      0018EF 02                    4721 	.sleb128	2
      0018F0 00 00 8C C6           4722 	.dw	0,(Sswi2c$swi2c_START$544)
      0018F4 00 00 8C CE           4723 	.dw	0,(Sswi2c$swi2c_START$545)
      0018F8 00 02                 4724 	.dw	2
      0018FA 78                    4725 	.db	120
      0018FB 01                    4726 	.sleb128	1
      0018FC 00 00 8C C1           4727 	.dw	0,(Sswi2c$swi2c_START$543)
      001900 00 00 8C C6           4728 	.dw	0,(Sswi2c$swi2c_START$544)
      001904 00 02                 4729 	.dw	2
      001906 78                    4730 	.db	120
      001907 04                    4731 	.sleb128	4
      001908 00 00 8C BF           4732 	.dw	0,(Sswi2c$swi2c_START$542)
      00190C 00 00 8C C1           4733 	.dw	0,(Sswi2c$swi2c_START$543)
      001910 00 02                 4734 	.dw	2
      001912 78                    4735 	.db	120
      001913 03                    4736 	.sleb128	3
      001914 00 00 8C BD           4737 	.dw	0,(Sswi2c$swi2c_START$541)
      001918 00 00 8C BF           4738 	.dw	0,(Sswi2c$swi2c_START$542)
      00191C 00 02                 4739 	.dw	2
      00191E 78                    4740 	.db	120
      00191F 02                    4741 	.sleb128	2
      001920 00 00 8C BB           4742 	.dw	0,(Sswi2c$swi2c_START$539)
      001924 00 00 8C BD           4743 	.dw	0,(Sswi2c$swi2c_START$541)
      001928 00 02                 4744 	.dw	2
      00192A 78                    4745 	.db	120
      00192B 01                    4746 	.sleb128	1
      00192C 00 00 00 00           4747 	.dw	0,0
      001930 00 00 00 00           4748 	.dw	0,0
      001934 00 00 8C BA           4749 	.dw	0,(Sswi2c$swi2c_RESTART$535)
      001938 00 00 8C BB           4750 	.dw	0,(Sswi2c$swi2c_RESTART$537)
      00193C 00 02                 4751 	.dw	2
      00193E 78                    4752 	.db	120
      00193F 01                    4753 	.sleb128	1
      001940 00 00 8C AB           4754 	.dw	0,(Sswi2c$swi2c_RESTART$525)
      001944 00 00 8C BA           4755 	.dw	0,(Sswi2c$swi2c_RESTART$535)
      001948 00 02                 4756 	.dw	2
      00194A 78                    4757 	.db	120
      00194B 03                    4758 	.sleb128	3
      00194C 00 00 8C A6           4759 	.dw	0,(Sswi2c$swi2c_RESTART$524)
      001950 00 00 8C AB           4760 	.dw	0,(Sswi2c$swi2c_RESTART$525)
      001954 00 02                 4761 	.dw	2
      001956 78                    4762 	.db	120
      001957 06                    4763 	.sleb128	6
      001958 00 00 8C A4           4764 	.dw	0,(Sswi2c$swi2c_RESTART$523)
      00195C 00 00 8C A6           4765 	.dw	0,(Sswi2c$swi2c_RESTART$524)
      001960 00 02                 4766 	.dw	2
      001962 78                    4767 	.db	120
      001963 05                    4768 	.sleb128	5
      001964 00 00 8C A2           4769 	.dw	0,(Sswi2c$swi2c_RESTART$522)
      001968 00 00 8C A4           4770 	.dw	0,(Sswi2c$swi2c_RESTART$523)
      00196C 00 02                 4771 	.dw	2
      00196E 78                    4772 	.db	120
      00196F 04                    4773 	.sleb128	4
      001970 00 00 8C 93           4774 	.dw	0,(Sswi2c$swi2c_RESTART$513)
      001974 00 00 8C A2           4775 	.dw	0,(Sswi2c$swi2c_RESTART$522)
      001978 00 02                 4776 	.dw	2
      00197A 78                    4777 	.db	120
      00197B 03                    4778 	.sleb128	3
      00197C 00 00 8C 8E           4779 	.dw	0,(Sswi2c$swi2c_RESTART$512)
      001980 00 00 8C 93           4780 	.dw	0,(Sswi2c$swi2c_RESTART$513)
      001984 00 02                 4781 	.dw	2
      001986 78                    4782 	.db	120
      001987 06                    4783 	.sleb128	6
      001988 00 00 8C 8C           4784 	.dw	0,(Sswi2c$swi2c_RESTART$511)
      00198C 00 00 8C 8E           4785 	.dw	0,(Sswi2c$swi2c_RESTART$512)
      001990 00 02                 4786 	.dw	2
      001992 78                    4787 	.db	120
      001993 05                    4788 	.sleb128	5
      001994 00 00 8C 8A           4789 	.dw	0,(Sswi2c$swi2c_RESTART$510)
      001998 00 00 8C 8C           4790 	.dw	0,(Sswi2c$swi2c_RESTART$511)
      00199C 00 02                 4791 	.dw	2
      00199E 78                    4792 	.db	120
      00199F 04                    4793 	.sleb128	4
      0019A0 00 00 8C 60           4794 	.dw	0,(Sswi2c$swi2c_RESTART$494)
      0019A4 00 00 8C 8A           4795 	.dw	0,(Sswi2c$swi2c_RESTART$510)
      0019A8 00 02                 4796 	.dw	2
      0019AA 78                    4797 	.db	120
      0019AB 03                    4798 	.sleb128	3
      0019AC 00 00 8C 5F           4799 	.dw	0,(Sswi2c$swi2c_RESTART$493)
      0019B0 00 00 8C 60           4800 	.dw	0,(Sswi2c$swi2c_RESTART$494)
      0019B4 00 02                 4801 	.dw	2
      0019B6 78                    4802 	.db	120
      0019B7 05                    4803 	.sleb128	5
      0019B8 00 00 8C 5A           4804 	.dw	0,(Sswi2c$swi2c_RESTART$492)
      0019BC 00 00 8C 5F           4805 	.dw	0,(Sswi2c$swi2c_RESTART$493)
      0019C0 00 02                 4806 	.dw	2
      0019C2 78                    4807 	.db	120
      0019C3 08                    4808 	.sleb128	8
      0019C4 00 00 8C 58           4809 	.dw	0,(Sswi2c$swi2c_RESTART$491)
      0019C8 00 00 8C 5A           4810 	.dw	0,(Sswi2c$swi2c_RESTART$492)
      0019CC 00 02                 4811 	.dw	2
      0019CE 78                    4812 	.db	120
      0019CF 07                    4813 	.sleb128	7
      0019D0 00 00 8C 56           4814 	.dw	0,(Sswi2c$swi2c_RESTART$490)
      0019D4 00 00 8C 58           4815 	.dw	0,(Sswi2c$swi2c_RESTART$491)
      0019D8 00 02                 4816 	.dw	2
      0019DA 78                    4817 	.db	120
      0019DB 06                    4818 	.sleb128	6
      0019DC 00 00 8C 54           4819 	.dw	0,(Sswi2c$swi2c_RESTART$489)
      0019E0 00 00 8C 56           4820 	.dw	0,(Sswi2c$swi2c_RESTART$490)
      0019E4 00 02                 4821 	.dw	2
      0019E6 78                    4822 	.db	120
      0019E7 05                    4823 	.sleb128	5
      0019E8 00 00 8C 51           4824 	.dw	0,(Sswi2c$swi2c_RESTART$487)
      0019EC 00 00 8C 54           4825 	.dw	0,(Sswi2c$swi2c_RESTART$489)
      0019F0 00 02                 4826 	.dw	2
      0019F2 78                    4827 	.db	120
      0019F3 03                    4828 	.sleb128	3
      0019F4 00 00 8C 4C           4829 	.dw	0,(Sswi2c$swi2c_RESTART$486)
      0019F8 00 00 8C 51           4830 	.dw	0,(Sswi2c$swi2c_RESTART$487)
      0019FC 00 02                 4831 	.dw	2
      0019FE 78                    4832 	.db	120
      0019FF 06                    4833 	.sleb128	6
      001A00 00 00 8C 4A           4834 	.dw	0,(Sswi2c$swi2c_RESTART$485)
      001A04 00 00 8C 4C           4835 	.dw	0,(Sswi2c$swi2c_RESTART$486)
      001A08 00 02                 4836 	.dw	2
      001A0A 78                    4837 	.db	120
      001A0B 05                    4838 	.sleb128	5
      001A0C 00 00 8C 48           4839 	.dw	0,(Sswi2c$swi2c_RESTART$484)
      001A10 00 00 8C 4A           4840 	.dw	0,(Sswi2c$swi2c_RESTART$485)
      001A14 00 02                 4841 	.dw	2
      001A16 78                    4842 	.db	120
      001A17 04                    4843 	.sleb128	4
      001A18 00 00 8C 34           4844 	.dw	0,(Sswi2c$swi2c_RESTART$473)
      001A1C 00 00 8C 48           4845 	.dw	0,(Sswi2c$swi2c_RESTART$484)
      001A20 00 02                 4846 	.dw	2
      001A22 78                    4847 	.db	120
      001A23 03                    4848 	.sleb128	3
      001A24 00 00 8C 2F           4849 	.dw	0,(Sswi2c$swi2c_RESTART$472)
      001A28 00 00 8C 34           4850 	.dw	0,(Sswi2c$swi2c_RESTART$473)
      001A2C 00 02                 4851 	.dw	2
      001A2E 78                    4852 	.db	120
      001A2F 06                    4853 	.sleb128	6
      001A30 00 00 8C 2D           4854 	.dw	0,(Sswi2c$swi2c_RESTART$471)
      001A34 00 00 8C 2F           4855 	.dw	0,(Sswi2c$swi2c_RESTART$472)
      001A38 00 02                 4856 	.dw	2
      001A3A 78                    4857 	.db	120
      001A3B 05                    4858 	.sleb128	5
      001A3C 00 00 8C 2B           4859 	.dw	0,(Sswi2c$swi2c_RESTART$470)
      001A40 00 00 8C 2D           4860 	.dw	0,(Sswi2c$swi2c_RESTART$471)
      001A44 00 02                 4861 	.dw	2
      001A46 78                    4862 	.db	120
      001A47 04                    4863 	.sleb128	4
      001A48 00 00 8C 10           4864 	.dw	0,(Sswi2c$swi2c_RESTART$463)
      001A4C 00 00 8C 2B           4865 	.dw	0,(Sswi2c$swi2c_RESTART$470)
      001A50 00 02                 4866 	.dw	2
      001A52 78                    4867 	.db	120
      001A53 03                    4868 	.sleb128	3
      001A54 00 00 8C 0F           4869 	.dw	0,(Sswi2c$swi2c_RESTART$462)
      001A58 00 00 8C 10           4870 	.dw	0,(Sswi2c$swi2c_RESTART$463)
      001A5C 00 02                 4871 	.dw	2
      001A5E 78                    4872 	.db	120
      001A5F 05                    4873 	.sleb128	5
      001A60 00 00 8C 0A           4874 	.dw	0,(Sswi2c$swi2c_RESTART$461)
      001A64 00 00 8C 0F           4875 	.dw	0,(Sswi2c$swi2c_RESTART$462)
      001A68 00 02                 4876 	.dw	2
      001A6A 78                    4877 	.db	120
      001A6B 08                    4878 	.sleb128	8
      001A6C 00 00 8C 08           4879 	.dw	0,(Sswi2c$swi2c_RESTART$460)
      001A70 00 00 8C 0A           4880 	.dw	0,(Sswi2c$swi2c_RESTART$461)
      001A74 00 02                 4881 	.dw	2
      001A76 78                    4882 	.db	120
      001A77 07                    4883 	.sleb128	7
      001A78 00 00 8C 06           4884 	.dw	0,(Sswi2c$swi2c_RESTART$459)
      001A7C 00 00 8C 08           4885 	.dw	0,(Sswi2c$swi2c_RESTART$460)
      001A80 00 02                 4886 	.dw	2
      001A82 78                    4887 	.db	120
      001A83 06                    4888 	.sleb128	6
      001A84 00 00 8C 04           4889 	.dw	0,(Sswi2c$swi2c_RESTART$458)
      001A88 00 00 8C 06           4890 	.dw	0,(Sswi2c$swi2c_RESTART$459)
      001A8C 00 02                 4891 	.dw	2
      001A8E 78                    4892 	.db	120
      001A8F 05                    4893 	.sleb128	5
      001A90 00 00 8C 03           4894 	.dw	0,(Sswi2c$swi2c_RESTART$456)
      001A94 00 00 8C 04           4895 	.dw	0,(Sswi2c$swi2c_RESTART$458)
      001A98 00 02                 4896 	.dw	2
      001A9A 78                    4897 	.db	120
      001A9B 03                    4898 	.sleb128	3
      001A9C 00 00 8C 02           4899 	.dw	0,(Sswi2c$swi2c_RESTART$455)
      001AA0 00 00 8C 03           4900 	.dw	0,(Sswi2c$swi2c_RESTART$456)
      001AA4 00 02                 4901 	.dw	2
      001AA6 78                    4902 	.db	120
      001AA7 05                    4903 	.sleb128	5
      001AA8 00 00 8B FD           4904 	.dw	0,(Sswi2c$swi2c_RESTART$454)
      001AAC 00 00 8C 02           4905 	.dw	0,(Sswi2c$swi2c_RESTART$455)
      001AB0 00 02                 4906 	.dw	2
      001AB2 78                    4907 	.db	120
      001AB3 08                    4908 	.sleb128	8
      001AB4 00 00 8B FB           4909 	.dw	0,(Sswi2c$swi2c_RESTART$453)
      001AB8 00 00 8B FD           4910 	.dw	0,(Sswi2c$swi2c_RESTART$454)
      001ABC 00 02                 4911 	.dw	2
      001ABE 78                    4912 	.db	120
      001ABF 07                    4913 	.sleb128	7
      001AC0 00 00 8B F9           4914 	.dw	0,(Sswi2c$swi2c_RESTART$452)
      001AC4 00 00 8B FB           4915 	.dw	0,(Sswi2c$swi2c_RESTART$453)
      001AC8 00 02                 4916 	.dw	2
      001ACA 78                    4917 	.db	120
      001ACB 06                    4918 	.sleb128	6
      001ACC 00 00 8B F7           4919 	.dw	0,(Sswi2c$swi2c_RESTART$451)
      001AD0 00 00 8B F9           4920 	.dw	0,(Sswi2c$swi2c_RESTART$452)
      001AD4 00 02                 4921 	.dw	2
      001AD6 78                    4922 	.db	120
      001AD7 05                    4923 	.sleb128	5
      001AD8 00 00 8B F6           4924 	.dw	0,(Sswi2c$swi2c_RESTART$449)
      001ADC 00 00 8B F7           4925 	.dw	0,(Sswi2c$swi2c_RESTART$451)
      001AE0 00 02                 4926 	.dw	2
      001AE2 78                    4927 	.db	120
      001AE3 03                    4928 	.sleb128	3
      001AE4 00 00 8B F5           4929 	.dw	0,(Sswi2c$swi2c_RESTART$448)
      001AE8 00 00 8B F6           4930 	.dw	0,(Sswi2c$swi2c_RESTART$449)
      001AEC 00 02                 4931 	.dw	2
      001AEE 78                    4932 	.db	120
      001AEF 05                    4933 	.sleb128	5
      001AF0 00 00 8B F0           4934 	.dw	0,(Sswi2c$swi2c_RESTART$447)
      001AF4 00 00 8B F5           4935 	.dw	0,(Sswi2c$swi2c_RESTART$448)
      001AF8 00 02                 4936 	.dw	2
      001AFA 78                    4937 	.db	120
      001AFB 08                    4938 	.sleb128	8
      001AFC 00 00 8B EE           4939 	.dw	0,(Sswi2c$swi2c_RESTART$446)
      001B00 00 00 8B F0           4940 	.dw	0,(Sswi2c$swi2c_RESTART$447)
      001B04 00 02                 4941 	.dw	2
      001B06 78                    4942 	.db	120
      001B07 07                    4943 	.sleb128	7
      001B08 00 00 8B EC           4944 	.dw	0,(Sswi2c$swi2c_RESTART$445)
      001B0C 00 00 8B EE           4945 	.dw	0,(Sswi2c$swi2c_RESTART$446)
      001B10 00 02                 4946 	.dw	2
      001B12 78                    4947 	.db	120
      001B13 06                    4948 	.sleb128	6
      001B14 00 00 8B EA           4949 	.dw	0,(Sswi2c$swi2c_RESTART$444)
      001B18 00 00 8B EC           4950 	.dw	0,(Sswi2c$swi2c_RESTART$445)
      001B1C 00 02                 4951 	.dw	2
      001B1E 78                    4952 	.db	120
      001B1F 05                    4953 	.sleb128	5
      001B20 00 00 8B E7           4954 	.dw	0,(Sswi2c$swi2c_RESTART$441)
      001B24 00 00 8B EA           4955 	.dw	0,(Sswi2c$swi2c_RESTART$444)
      001B28 00 02                 4956 	.dw	2
      001B2A 78                    4957 	.db	120
      001B2B 03                    4958 	.sleb128	3
      001B2C 00 00 8B E6           4959 	.dw	0,(Sswi2c$swi2c_RESTART$440)
      001B30 00 00 8B E7           4960 	.dw	0,(Sswi2c$swi2c_RESTART$441)
      001B34 00 02                 4961 	.dw	2
      001B36 78                    4962 	.db	120
      001B37 01                    4963 	.sleb128	1
      001B38 00 00 00 00           4964 	.dw	0,0
      001B3C 00 00 00 00           4965 	.dw	0,0
      001B40 00 00 8B E5           4966 	.dw	0,(Sswi2c$swi2c_writebit$436)
      001B44 00 00 8B E6           4967 	.dw	0,(Sswi2c$swi2c_writebit$438)
      001B48 00 02                 4968 	.dw	2
      001B4A 78                    4969 	.db	120
      001B4B 01                    4970 	.sleb128	1
      001B4C 00 00 8B D6           4971 	.dw	0,(Sswi2c$swi2c_writebit$426)
      001B50 00 00 8B E5           4972 	.dw	0,(Sswi2c$swi2c_writebit$436)
      001B54 00 02                 4973 	.dw	2
      001B56 78                    4974 	.db	120
      001B57 03                    4975 	.sleb128	3
      001B58 00 00 8B D1           4976 	.dw	0,(Sswi2c$swi2c_writebit$425)
      001B5C 00 00 8B D6           4977 	.dw	0,(Sswi2c$swi2c_writebit$426)
      001B60 00 02                 4978 	.dw	2
      001B62 78                    4979 	.db	120
      001B63 06                    4980 	.sleb128	6
      001B64 00 00 8B CF           4981 	.dw	0,(Sswi2c$swi2c_writebit$424)
      001B68 00 00 8B D1           4982 	.dw	0,(Sswi2c$swi2c_writebit$425)
      001B6C 00 02                 4983 	.dw	2
      001B6E 78                    4984 	.db	120
      001B6F 05                    4985 	.sleb128	5
      001B70 00 00 8B CD           4986 	.dw	0,(Sswi2c$swi2c_writebit$423)
      001B74 00 00 8B CF           4987 	.dw	0,(Sswi2c$swi2c_writebit$424)
      001B78 00 02                 4988 	.dw	2
      001B7A 78                    4989 	.db	120
      001B7B 04                    4990 	.sleb128	4
      001B7C 00 00 8B B9           4991 	.dw	0,(Sswi2c$swi2c_writebit$412)
      001B80 00 00 8B CD           4992 	.dw	0,(Sswi2c$swi2c_writebit$423)
      001B84 00 02                 4993 	.dw	2
      001B86 78                    4994 	.db	120
      001B87 03                    4995 	.sleb128	3
      001B88 00 00 8B B4           4996 	.dw	0,(Sswi2c$swi2c_writebit$411)
      001B8C 00 00 8B B9           4997 	.dw	0,(Sswi2c$swi2c_writebit$412)
      001B90 00 02                 4998 	.dw	2
      001B92 78                    4999 	.db	120
      001B93 06                    5000 	.sleb128	6
      001B94 00 00 8B B2           5001 	.dw	0,(Sswi2c$swi2c_writebit$410)
      001B98 00 00 8B B4           5002 	.dw	0,(Sswi2c$swi2c_writebit$411)
      001B9C 00 02                 5003 	.dw	2
      001B9E 78                    5004 	.db	120
      001B9F 05                    5005 	.sleb128	5
      001BA0 00 00 8B B0           5006 	.dw	0,(Sswi2c$swi2c_writebit$409)
      001BA4 00 00 8B B2           5007 	.dw	0,(Sswi2c$swi2c_writebit$410)
      001BA8 00 02                 5008 	.dw	2
      001BAA 78                    5009 	.db	120
      001BAB 04                    5010 	.sleb128	4
      001BAC 00 00 8B 95           5011 	.dw	0,(Sswi2c$swi2c_writebit$402)
      001BB0 00 00 8B B0           5012 	.dw	0,(Sswi2c$swi2c_writebit$409)
      001BB4 00 02                 5013 	.dw	2
      001BB6 78                    5014 	.db	120
      001BB7 03                    5015 	.sleb128	3
      001BB8 00 00 8B 94           5016 	.dw	0,(Sswi2c$swi2c_writebit$401)
      001BBC 00 00 8B 95           5017 	.dw	0,(Sswi2c$swi2c_writebit$402)
      001BC0 00 02                 5018 	.dw	2
      001BC2 78                    5019 	.db	120
      001BC3 05                    5020 	.sleb128	5
      001BC4 00 00 8B 8F           5021 	.dw	0,(Sswi2c$swi2c_writebit$400)
      001BC8 00 00 8B 94           5022 	.dw	0,(Sswi2c$swi2c_writebit$401)
      001BCC 00 02                 5023 	.dw	2
      001BCE 78                    5024 	.db	120
      001BCF 08                    5025 	.sleb128	8
      001BD0 00 00 8B 8D           5026 	.dw	0,(Sswi2c$swi2c_writebit$399)
      001BD4 00 00 8B 8F           5027 	.dw	0,(Sswi2c$swi2c_writebit$400)
      001BD8 00 02                 5028 	.dw	2
      001BDA 78                    5029 	.db	120
      001BDB 07                    5030 	.sleb128	7
      001BDC 00 00 8B 8B           5031 	.dw	0,(Sswi2c$swi2c_writebit$398)
      001BE0 00 00 8B 8D           5032 	.dw	0,(Sswi2c$swi2c_writebit$399)
      001BE4 00 02                 5033 	.dw	2
      001BE6 78                    5034 	.db	120
      001BE7 06                    5035 	.sleb128	6
      001BE8 00 00 8B 89           5036 	.dw	0,(Sswi2c$swi2c_writebit$397)
      001BEC 00 00 8B 8B           5037 	.dw	0,(Sswi2c$swi2c_writebit$398)
      001BF0 00 02                 5038 	.dw	2
      001BF2 78                    5039 	.db	120
      001BF3 05                    5040 	.sleb128	5
      001BF4 00 00 8B 86           5041 	.dw	0,(Sswi2c$swi2c_writebit$395)
      001BF8 00 00 8B 89           5042 	.dw	0,(Sswi2c$swi2c_writebit$397)
      001BFC 00 02                 5043 	.dw	2
      001BFE 78                    5044 	.db	120
      001BFF 03                    5045 	.sleb128	3
      001C00 00 00 8B 81           5046 	.dw	0,(Sswi2c$swi2c_writebit$394)
      001C04 00 00 8B 86           5047 	.dw	0,(Sswi2c$swi2c_writebit$395)
      001C08 00 02                 5048 	.dw	2
      001C0A 78                    5049 	.db	120
      001C0B 06                    5050 	.sleb128	6
      001C0C 00 00 8B 7F           5051 	.dw	0,(Sswi2c$swi2c_writebit$393)
      001C10 00 00 8B 81           5052 	.dw	0,(Sswi2c$swi2c_writebit$394)
      001C14 00 02                 5053 	.dw	2
      001C16 78                    5054 	.db	120
      001C17 05                    5055 	.sleb128	5
      001C18 00 00 8B 7D           5056 	.dw	0,(Sswi2c$swi2c_writebit$392)
      001C1C 00 00 8B 7F           5057 	.dw	0,(Sswi2c$swi2c_writebit$393)
      001C20 00 02                 5058 	.dw	2
      001C22 78                    5059 	.db	120
      001C23 04                    5060 	.sleb128	4
      001C24 00 00 8B 6E           5061 	.dw	0,(Sswi2c$swi2c_writebit$382)
      001C28 00 00 8B 7D           5062 	.dw	0,(Sswi2c$swi2c_writebit$392)
      001C2C 00 02                 5063 	.dw	2
      001C2E 78                    5064 	.db	120
      001C2F 03                    5065 	.sleb128	3
      001C30 00 00 8B 69           5066 	.dw	0,(Sswi2c$swi2c_writebit$381)
      001C34 00 00 8B 6E           5067 	.dw	0,(Sswi2c$swi2c_writebit$382)
      001C38 00 02                 5068 	.dw	2
      001C3A 78                    5069 	.db	120
      001C3B 06                    5070 	.sleb128	6
      001C3C 00 00 8B 67           5071 	.dw	0,(Sswi2c$swi2c_writebit$380)
      001C40 00 00 8B 69           5072 	.dw	0,(Sswi2c$swi2c_writebit$381)
      001C44 00 02                 5073 	.dw	2
      001C46 78                    5074 	.db	120
      001C47 05                    5075 	.sleb128	5
      001C48 00 00 8B 65           5076 	.dw	0,(Sswi2c$swi2c_writebit$379)
      001C4C 00 00 8B 67           5077 	.dw	0,(Sswi2c$swi2c_writebit$380)
      001C50 00 02                 5078 	.dw	2
      001C52 78                    5079 	.db	120
      001C53 04                    5080 	.sleb128	4
      001C54 00 00 8B 60           5081 	.dw	0,(Sswi2c$swi2c_writebit$375)
      001C58 00 00 8B 65           5082 	.dw	0,(Sswi2c$swi2c_writebit$379)
      001C5C 00 02                 5083 	.dw	2
      001C5E 78                    5084 	.db	120
      001C5F 03                    5085 	.sleb128	3
      001C60 00 00 8B 5B           5086 	.dw	0,(Sswi2c$swi2c_writebit$374)
      001C64 00 00 8B 60           5087 	.dw	0,(Sswi2c$swi2c_writebit$375)
      001C68 00 02                 5088 	.dw	2
      001C6A 78                    5089 	.db	120
      001C6B 06                    5090 	.sleb128	6
      001C6C 00 00 8B 59           5091 	.dw	0,(Sswi2c$swi2c_writebit$373)
      001C70 00 00 8B 5B           5092 	.dw	0,(Sswi2c$swi2c_writebit$374)
      001C74 00 02                 5093 	.dw	2
      001C76 78                    5094 	.db	120
      001C77 05                    5095 	.sleb128	5
      001C78 00 00 8B 57           5096 	.dw	0,(Sswi2c$swi2c_writebit$372)
      001C7C 00 00 8B 59           5097 	.dw	0,(Sswi2c$swi2c_writebit$373)
      001C80 00 02                 5098 	.dw	2
      001C82 78                    5099 	.db	120
      001C83 04                    5100 	.sleb128	4
      001C84 00 00 8B 49           5101 	.dw	0,(Sswi2c$swi2c_writebit$367)
      001C88 00 00 8B 57           5102 	.dw	0,(Sswi2c$swi2c_writebit$372)
      001C8C 00 02                 5103 	.dw	2
      001C8E 78                    5104 	.db	120
      001C8F 03                    5105 	.sleb128	3
      001C90 00 00 8B 48           5106 	.dw	0,(Sswi2c$swi2c_writebit$366)
      001C94 00 00 8B 49           5107 	.dw	0,(Sswi2c$swi2c_writebit$367)
      001C98 00 02                 5108 	.dw	2
      001C9A 78                    5109 	.db	120
      001C9B 01                    5110 	.sleb128	1
      001C9C 00 00 00 00           5111 	.dw	0,0
      001CA0 00 00 00 00           5112 	.dw	0,0
      001CA4 00 00 8B 47           5113 	.dw	0,(Sswi2c$swi2c_readbit$362)
      001CA8 00 00 8B 48           5114 	.dw	0,(Sswi2c$swi2c_readbit$364)
      001CAC 00 02                 5115 	.dw	2
      001CAE 78                    5116 	.db	120
      001CAF 01                    5117 	.sleb128	1
      001CB0 00 00 8B 39           5118 	.dw	0,(Sswi2c$swi2c_readbit$352)
      001CB4 00 00 8B 47           5119 	.dw	0,(Sswi2c$swi2c_readbit$362)
      001CB8 00 02                 5120 	.dw	2
      001CBA 78                    5121 	.db	120
      001CBB 03                    5122 	.sleb128	3
      001CBC 00 00 8B 38           5123 	.dw	0,(Sswi2c$swi2c_readbit$351)
      001CC0 00 00 8B 39           5124 	.dw	0,(Sswi2c$swi2c_readbit$352)
      001CC4 00 02                 5125 	.dw	2
      001CC6 78                    5126 	.db	120
      001CC7 04                    5127 	.sleb128	4
      001CC8 00 00 8B 33           5128 	.dw	0,(Sswi2c$swi2c_readbit$350)
      001CCC 00 00 8B 38           5129 	.dw	0,(Sswi2c$swi2c_readbit$351)
      001CD0 00 02                 5130 	.dw	2
      001CD2 78                    5131 	.db	120
      001CD3 07                    5132 	.sleb128	7
      001CD4 00 00 8B 31           5133 	.dw	0,(Sswi2c$swi2c_readbit$349)
      001CD8 00 00 8B 33           5134 	.dw	0,(Sswi2c$swi2c_readbit$350)
      001CDC 00 02                 5135 	.dw	2
      001CDE 78                    5136 	.db	120
      001CDF 06                    5137 	.sleb128	6
      001CE0 00 00 8B 2F           5138 	.dw	0,(Sswi2c$swi2c_readbit$348)
      001CE4 00 00 8B 31           5139 	.dw	0,(Sswi2c$swi2c_readbit$349)
      001CE8 00 02                 5140 	.dw	2
      001CEA 78                    5141 	.db	120
      001CEB 05                    5142 	.sleb128	5
      001CEC 00 00 8B 2D           5143 	.dw	0,(Sswi2c$swi2c_readbit$347)
      001CF0 00 00 8B 2F           5144 	.dw	0,(Sswi2c$swi2c_readbit$348)
      001CF4 00 02                 5145 	.dw	2
      001CF6 78                    5146 	.db	120
      001CF7 04                    5147 	.sleb128	4
      001CF8 00 00 8B 20           5148 	.dw	0,(Sswi2c$swi2c_readbit$339)
      001CFC 00 00 8B 2D           5149 	.dw	0,(Sswi2c$swi2c_readbit$347)
      001D00 00 02                 5150 	.dw	2
      001D02 78                    5151 	.db	120
      001D03 03                    5152 	.sleb128	3
      001D04 00 00 8B 1B           5153 	.dw	0,(Sswi2c$swi2c_readbit$338)
      001D08 00 00 8B 20           5154 	.dw	0,(Sswi2c$swi2c_readbit$339)
      001D0C 00 02                 5155 	.dw	2
      001D0E 78                    5156 	.db	120
      001D0F 06                    5157 	.sleb128	6
      001D10 00 00 8B 19           5158 	.dw	0,(Sswi2c$swi2c_readbit$337)
      001D14 00 00 8B 1B           5159 	.dw	0,(Sswi2c$swi2c_readbit$338)
      001D18 00 02                 5160 	.dw	2
      001D1A 78                    5161 	.db	120
      001D1B 05                    5162 	.sleb128	5
      001D1C 00 00 8B 17           5163 	.dw	0,(Sswi2c$swi2c_readbit$336)
      001D20 00 00 8B 19           5164 	.dw	0,(Sswi2c$swi2c_readbit$337)
      001D24 00 02                 5165 	.dw	2
      001D26 78                    5166 	.db	120
      001D27 04                    5167 	.sleb128	4
      001D28 00 00 8A EA           5168 	.dw	0,(Sswi2c$swi2c_readbit$320)
      001D2C 00 00 8B 17           5169 	.dw	0,(Sswi2c$swi2c_readbit$336)
      001D30 00 02                 5170 	.dw	2
      001D32 78                    5171 	.db	120
      001D33 03                    5172 	.sleb128	3
      001D34 00 00 8A E9           5173 	.dw	0,(Sswi2c$swi2c_readbit$319)
      001D38 00 00 8A EA           5174 	.dw	0,(Sswi2c$swi2c_readbit$320)
      001D3C 00 02                 5175 	.dw	2
      001D3E 78                    5176 	.db	120
      001D3F 05                    5177 	.sleb128	5
      001D40 00 00 8A E4           5178 	.dw	0,(Sswi2c$swi2c_readbit$318)
      001D44 00 00 8A E9           5179 	.dw	0,(Sswi2c$swi2c_readbit$319)
      001D48 00 02                 5180 	.dw	2
      001D4A 78                    5181 	.db	120
      001D4B 08                    5182 	.sleb128	8
      001D4C 00 00 8A E2           5183 	.dw	0,(Sswi2c$swi2c_readbit$317)
      001D50 00 00 8A E4           5184 	.dw	0,(Sswi2c$swi2c_readbit$318)
      001D54 00 02                 5185 	.dw	2
      001D56 78                    5186 	.db	120
      001D57 07                    5187 	.sleb128	7
      001D58 00 00 8A E0           5188 	.dw	0,(Sswi2c$swi2c_readbit$316)
      001D5C 00 00 8A E2           5189 	.dw	0,(Sswi2c$swi2c_readbit$317)
      001D60 00 02                 5190 	.dw	2
      001D62 78                    5191 	.db	120
      001D63 06                    5192 	.sleb128	6
      001D64 00 00 8A DE           5193 	.dw	0,(Sswi2c$swi2c_readbit$315)
      001D68 00 00 8A E0           5194 	.dw	0,(Sswi2c$swi2c_readbit$316)
      001D6C 00 02                 5195 	.dw	2
      001D6E 78                    5196 	.db	120
      001D6F 05                    5197 	.sleb128	5
      001D70 00 00 8A DB           5198 	.dw	0,(Sswi2c$swi2c_readbit$313)
      001D74 00 00 8A DE           5199 	.dw	0,(Sswi2c$swi2c_readbit$315)
      001D78 00 02                 5200 	.dw	2
      001D7A 78                    5201 	.db	120
      001D7B 03                    5202 	.sleb128	3
      001D7C 00 00 8A D6           5203 	.dw	0,(Sswi2c$swi2c_readbit$312)
      001D80 00 00 8A DB           5204 	.dw	0,(Sswi2c$swi2c_readbit$313)
      001D84 00 02                 5205 	.dw	2
      001D86 78                    5206 	.db	120
      001D87 06                    5207 	.sleb128	6
      001D88 00 00 8A D4           5208 	.dw	0,(Sswi2c$swi2c_readbit$311)
      001D8C 00 00 8A D6           5209 	.dw	0,(Sswi2c$swi2c_readbit$312)
      001D90 00 02                 5210 	.dw	2
      001D92 78                    5211 	.db	120
      001D93 05                    5212 	.sleb128	5
      001D94 00 00 8A D2           5213 	.dw	0,(Sswi2c$swi2c_readbit$310)
      001D98 00 00 8A D4           5214 	.dw	0,(Sswi2c$swi2c_readbit$311)
      001D9C 00 02                 5215 	.dw	2
      001D9E 78                    5216 	.db	120
      001D9F 04                    5217 	.sleb128	4
      001DA0 00 00 8A C3           5218 	.dw	0,(Sswi2c$swi2c_readbit$301)
      001DA4 00 00 8A D2           5219 	.dw	0,(Sswi2c$swi2c_readbit$310)
      001DA8 00 02                 5220 	.dw	2
      001DAA 78                    5221 	.db	120
      001DAB 03                    5222 	.sleb128	3
      001DAC 00 00 8A BE           5223 	.dw	0,(Sswi2c$swi2c_readbit$300)
      001DB0 00 00 8A C3           5224 	.dw	0,(Sswi2c$swi2c_readbit$301)
      001DB4 00 02                 5225 	.dw	2
      001DB6 78                    5226 	.db	120
      001DB7 06                    5227 	.sleb128	6
      001DB8 00 00 8A BC           5228 	.dw	0,(Sswi2c$swi2c_readbit$299)
      001DBC 00 00 8A BE           5229 	.dw	0,(Sswi2c$swi2c_readbit$300)
      001DC0 00 02                 5230 	.dw	2
      001DC2 78                    5231 	.db	120
      001DC3 05                    5232 	.sleb128	5
      001DC4 00 00 8A BA           5233 	.dw	0,(Sswi2c$swi2c_readbit$298)
      001DC8 00 00 8A BC           5234 	.dw	0,(Sswi2c$swi2c_readbit$299)
      001DCC 00 02                 5235 	.dw	2
      001DCE 78                    5236 	.db	120
      001DCF 04                    5237 	.sleb128	4
      001DD0 00 00 8A B3           5238 	.dw	0,(Sswi2c$swi2c_readbit$295)
      001DD4 00 00 8A BA           5239 	.dw	0,(Sswi2c$swi2c_readbit$298)
      001DD8 00 02                 5240 	.dw	2
      001DDA 78                    5241 	.db	120
      001DDB 03                    5242 	.sleb128	3
      001DDC 00 00 8A B2           5243 	.dw	0,(Sswi2c$swi2c_readbit$294)
      001DE0 00 00 8A B3           5244 	.dw	0,(Sswi2c$swi2c_readbit$295)
      001DE4 00 02                 5245 	.dw	2
      001DE6 78                    5246 	.db	120
      001DE7 01                    5247 	.sleb128	1
      001DE8 00 00 00 00           5248 	.dw	0,0
      001DEC 00 00 00 00           5249 	.dw	0,0
      001DF0 00 00 8A B1           5250 	.dw	0,(Sswi2c$swi2c_init$289)
      001DF4 00 00 8A B2           5251 	.dw	0,(Sswi2c$swi2c_init$292)
      001DF8 00 02                 5252 	.dw	2
      001DFA 78                    5253 	.db	120
      001DFB 01                    5254 	.sleb128	1
      001DFC 00 00 8A AC           5255 	.dw	0,(Sswi2c$swi2c_init$288)
      001E00 00 00 8A B1           5256 	.dw	0,(Sswi2c$swi2c_init$289)
      001E04 00 02                 5257 	.dw	2
      001E06 78                    5258 	.db	120
      001E07 05                    5259 	.sleb128	5
      001E08 00 00 8A AA           5260 	.dw	0,(Sswi2c$swi2c_init$287)
      001E0C 00 00 8A AC           5261 	.dw	0,(Sswi2c$swi2c_init$288)
      001E10 00 02                 5262 	.dw	2
      001E12 78                    5263 	.db	120
      001E13 04                    5264 	.sleb128	4
      001E14 00 00 8A A8           5265 	.dw	0,(Sswi2c$swi2c_init$286)
      001E18 00 00 8A AA           5266 	.dw	0,(Sswi2c$swi2c_init$287)
      001E1C 00 02                 5267 	.dw	2
      001E1E 78                    5268 	.db	120
      001E1F 03                    5269 	.sleb128	3
      001E20 00 00 8A A6           5270 	.dw	0,(Sswi2c$swi2c_init$285)
      001E24 00 00 8A A8           5271 	.dw	0,(Sswi2c$swi2c_init$286)
      001E28 00 02                 5272 	.dw	2
      001E2A 78                    5273 	.db	120
      001E2B 02                    5274 	.sleb128	2
      001E2C 00 00 8A A4           5275 	.dw	0,(Sswi2c$swi2c_init$283)
      001E30 00 00 8A A6           5276 	.dw	0,(Sswi2c$swi2c_init$285)
      001E34 00 02                 5277 	.dw	2
      001E36 78                    5278 	.db	120
      001E37 01                    5279 	.sleb128	1
      001E38 00 00 8A 9F           5280 	.dw	0,(Sswi2c$swi2c_init$282)
      001E3C 00 00 8A A4           5281 	.dw	0,(Sswi2c$swi2c_init$283)
      001E40 00 02                 5282 	.dw	2
      001E42 78                    5283 	.db	120
      001E43 05                    5284 	.sleb128	5
      001E44 00 00 8A 9D           5285 	.dw	0,(Sswi2c$swi2c_init$281)
      001E48 00 00 8A 9F           5286 	.dw	0,(Sswi2c$swi2c_init$282)
      001E4C 00 02                 5287 	.dw	2
      001E4E 78                    5288 	.db	120
      001E4F 04                    5289 	.sleb128	4
      001E50 00 00 8A 9B           5290 	.dw	0,(Sswi2c$swi2c_init$280)
      001E54 00 00 8A 9D           5291 	.dw	0,(Sswi2c$swi2c_init$281)
      001E58 00 02                 5292 	.dw	2
      001E5A 78                    5293 	.db	120
      001E5B 03                    5294 	.sleb128	3
      001E5C 00 00 8A 99           5295 	.dw	0,(Sswi2c$swi2c_init$279)
      001E60 00 00 8A 9B           5296 	.dw	0,(Sswi2c$swi2c_init$280)
      001E64 00 02                 5297 	.dw	2
      001E66 78                    5298 	.db	120
      001E67 02                    5299 	.sleb128	2
      001E68 00 00 8A 97           5300 	.dw	0,(Sswi2c$swi2c_init$277)
      001E6C 00 00 8A 99           5301 	.dw	0,(Sswi2c$swi2c_init$279)
      001E70 00 02                 5302 	.dw	2
      001E72 78                    5303 	.db	120
      001E73 01                    5304 	.sleb128	1
      001E74 00 00 00 00           5305 	.dw	0,0
      001E78 00 00 00 00           5306 	.dw	0,0
      001E7C 00 00 8A 96           5307 	.dw	0,(Sswi2c$swi2c_test_slave$273)
      001E80 00 00 8A 97           5308 	.dw	0,(Sswi2c$swi2c_test_slave$275)
      001E84 00 02                 5309 	.dw	2
      001E86 78                    5310 	.db	120
      001E87 01                    5311 	.sleb128	1
      001E88 00 00 8A 6F           5312 	.dw	0,(Sswi2c$swi2c_test_slave$260)
      001E8C 00 00 8A 96           5313 	.dw	0,(Sswi2c$swi2c_test_slave$273)
      001E90 00 02                 5314 	.dw	2
      001E92 78                    5315 	.db	120
      001E93 02                    5316 	.sleb128	2
      001E94 00 00 8A 6A           5317 	.dw	0,(Sswi2c$swi2c_test_slave$259)
      001E98 00 00 8A 6F           5318 	.dw	0,(Sswi2c$swi2c_test_slave$260)
      001E9C 00 02                 5319 	.dw	2
      001E9E 78                    5320 	.db	120
      001E9F 03                    5321 	.sleb128	3
      001EA0 00 00 8A 4C           5322 	.dw	0,(Sswi2c$swi2c_test_slave$250)
      001EA4 00 00 8A 6A           5323 	.dw	0,(Sswi2c$swi2c_test_slave$259)
      001EA8 00 02                 5324 	.dw	2
      001EAA 78                    5325 	.db	120
      001EAB 02                    5326 	.sleb128	2
      001EAC 00 00 8A 4B           5327 	.dw	0,(Sswi2c$swi2c_test_slave$249)
      001EB0 00 00 8A 4C           5328 	.dw	0,(Sswi2c$swi2c_test_slave$250)
      001EB4 00 02                 5329 	.dw	2
      001EB6 78                    5330 	.db	120
      001EB7 01                    5331 	.sleb128	1
      001EB8 00 00 00 00           5332 	.dw	0,0
      001EBC 00 00 00 00           5333 	.dw	0,0
      001EC0 00 00 8A 4A           5334 	.dw	0,(Sswi2c$swi2c_write_buf$245)
      001EC4 00 00 8A 4B           5335 	.dw	0,(Sswi2c$swi2c_write_buf$247)
      001EC8 00 02                 5336 	.dw	2
      001ECA 78                    5337 	.db	120
      001ECB 01                    5338 	.sleb128	1
      001ECC 00 00 8A 06           5339 	.dw	0,(Sswi2c$swi2c_write_buf$222)
      001ED0 00 00 8A 4A           5340 	.dw	0,(Sswi2c$swi2c_write_buf$245)
      001ED4 00 02                 5341 	.dw	2
      001ED6 78                    5342 	.db	120
      001ED7 03                    5343 	.sleb128	3
      001ED8 00 00 8A 05           5344 	.dw	0,(Sswi2c$swi2c_write_buf$221)
      001EDC 00 00 8A 06           5345 	.dw	0,(Sswi2c$swi2c_write_buf$222)
      001EE0 00 02                 5346 	.dw	2
      001EE2 78                    5347 	.db	120
      001EE3 05                    5348 	.sleb128	5
      001EE4 00 00 8A 00           5349 	.dw	0,(Sswi2c$swi2c_write_buf$220)
      001EE8 00 00 8A 05           5350 	.dw	0,(Sswi2c$swi2c_write_buf$221)
      001EEC 00 02                 5351 	.dw	2
      001EEE 78                    5352 	.db	120
      001EEF 06                    5353 	.sleb128	6
      001EF0 00 00 89 FF           5354 	.dw	0,(Sswi2c$swi2c_write_buf$219)
      001EF4 00 00 8A 00           5355 	.dw	0,(Sswi2c$swi2c_write_buf$220)
      001EF8 00 02                 5356 	.dw	2
      001EFA 78                    5357 	.db	120
      001EFB 05                    5358 	.sleb128	5
      001EFC 00 00 89 AD           5359 	.dw	0,(Sswi2c$swi2c_write_buf$197)
      001F00 00 00 89 FF           5360 	.dw	0,(Sswi2c$swi2c_write_buf$219)
      001F04 00 02                 5361 	.dw	2
      001F06 78                    5362 	.db	120
      001F07 03                    5363 	.sleb128	3
      001F08 00 00 89 A8           5364 	.dw	0,(Sswi2c$swi2c_write_buf$196)
      001F0C 00 00 89 AD           5365 	.dw	0,(Sswi2c$swi2c_write_buf$197)
      001F10 00 02                 5366 	.dw	2
      001F12 78                    5367 	.db	120
      001F13 04                    5368 	.sleb128	4
      001F14 00 00 89 69           5369 	.dw	0,(Sswi2c$swi2c_write_buf$177)
      001F18 00 00 89 A8           5370 	.dw	0,(Sswi2c$swi2c_write_buf$196)
      001F1C 00 02                 5371 	.dw	2
      001F1E 78                    5372 	.db	120
      001F1F 03                    5373 	.sleb128	3
      001F20 00 00 89 64           5374 	.dw	0,(Sswi2c$swi2c_write_buf$176)
      001F24 00 00 89 69           5375 	.dw	0,(Sswi2c$swi2c_write_buf$177)
      001F28 00 02                 5376 	.dw	2
      001F2A 78                    5377 	.db	120
      001F2B 04                    5378 	.sleb128	4
      001F2C 00 00 89 46           5379 	.dw	0,(Sswi2c$swi2c_write_buf$167)
      001F30 00 00 89 64           5380 	.dw	0,(Sswi2c$swi2c_write_buf$176)
      001F34 00 02                 5381 	.dw	2
      001F36 78                    5382 	.db	120
      001F37 03                    5383 	.sleb128	3
      001F38 00 00 89 45           5384 	.dw	0,(Sswi2c$swi2c_write_buf$166)
      001F3C 00 00 89 46           5385 	.dw	0,(Sswi2c$swi2c_write_buf$167)
      001F40 00 02                 5386 	.dw	2
      001F42 78                    5387 	.db	120
      001F43 01                    5388 	.sleb128	1
      001F44 00 00 00 00           5389 	.dw	0,0
      001F48 00 00 00 00           5390 	.dw	0,0
      001F4C 00 00 89 44           5391 	.dw	0,(Sswi2c$swi2c_read_buf$162)
      001F50 00 00 89 45           5392 	.dw	0,(Sswi2c$swi2c_read_buf$164)
      001F54 00 02                 5393 	.dw	2
      001F56 78                    5394 	.db	120
      001F57 01                    5395 	.sleb128	1
      001F58 00 00 89 23           5396 	.dw	0,(Sswi2c$swi2c_read_buf$150)
      001F5C 00 00 89 44           5397 	.dw	0,(Sswi2c$swi2c_read_buf$162)
      001F60 00 02                 5398 	.dw	2
      001F62 78                    5399 	.db	120
      001F63 04                    5400 	.sleb128	4
      001F64 00 00 89 1E           5401 	.dw	0,(Sswi2c$swi2c_read_buf$149)
      001F68 00 00 89 23           5402 	.dw	0,(Sswi2c$swi2c_read_buf$150)
      001F6C 00 02                 5403 	.dw	2
      001F6E 78                    5404 	.db	120
      001F6F 05                    5405 	.sleb128	5
      001F70 00 00 89 11           5406 	.dw	0,(Sswi2c$swi2c_read_buf$143)
      001F74 00 00 89 1E           5407 	.dw	0,(Sswi2c$swi2c_read_buf$149)
      001F78 00 02                 5408 	.dw	2
      001F7A 78                    5409 	.db	120
      001F7B 04                    5410 	.sleb128	4
      001F7C 00 00 89 0C           5411 	.dw	0,(Sswi2c$swi2c_read_buf$142)
      001F80 00 00 89 11           5412 	.dw	0,(Sswi2c$swi2c_read_buf$143)
      001F84 00 02                 5413 	.dw	2
      001F86 78                    5414 	.db	120
      001F87 05                    5415 	.sleb128	5
      001F88 00 00 89 0A           5416 	.dw	0,(Sswi2c$swi2c_read_buf$139)
      001F8C 00 00 89 0C           5417 	.dw	0,(Sswi2c$swi2c_read_buf$142)
      001F90 00 02                 5418 	.dw	2
      001F92 78                    5419 	.db	120
      001F93 04                    5420 	.sleb128	4
      001F94 00 00 88 E7           5421 	.dw	0,(Sswi2c$swi2c_read_buf$128)
      001F98 00 00 89 0A           5422 	.dw	0,(Sswi2c$swi2c_read_buf$139)
      001F9C 00 02                 5423 	.dw	2
      001F9E 78                    5424 	.db	120
      001F9F 04                    5425 	.sleb128	4
      001FA0 00 00 88 76           5426 	.dw	0,(Sswi2c$swi2c_read_buf$100)
      001FA4 00 00 88 E7           5427 	.dw	0,(Sswi2c$swi2c_read_buf$128)
      001FA8 00 02                 5428 	.dw	2
      001FAA 78                    5429 	.db	120
      001FAB 04                    5430 	.sleb128	4
      001FAC 00 00 88 71           5431 	.dw	0,(Sswi2c$swi2c_read_buf$99)
      001FB0 00 00 88 76           5432 	.dw	0,(Sswi2c$swi2c_read_buf$100)
      001FB4 00 02                 5433 	.dw	2
      001FB6 78                    5434 	.db	120
      001FB7 05                    5435 	.sleb128	5
      001FB8 00 00 88 1E           5436 	.dw	0,(Sswi2c$swi2c_read_buf$75)
      001FBC 00 00 88 71           5437 	.dw	0,(Sswi2c$swi2c_read_buf$99)
      001FC0 00 02                 5438 	.dw	2
      001FC2 78                    5439 	.db	120
      001FC3 04                    5440 	.sleb128	4
      001FC4 00 00 88 19           5441 	.dw	0,(Sswi2c$swi2c_read_buf$74)
      001FC8 00 00 88 1E           5442 	.dw	0,(Sswi2c$swi2c_read_buf$75)
      001FCC 00 02                 5443 	.dw	2
      001FCE 78                    5444 	.db	120
      001FCF 05                    5445 	.sleb128	5
      001FD0 00 00 87 DA           5446 	.dw	0,(Sswi2c$swi2c_read_buf$55)
      001FD4 00 00 88 19           5447 	.dw	0,(Sswi2c$swi2c_read_buf$74)
      001FD8 00 02                 5448 	.dw	2
      001FDA 78                    5449 	.db	120
      001FDB 04                    5450 	.sleb128	4
      001FDC 00 00 87 D5           5451 	.dw	0,(Sswi2c$swi2c_read_buf$54)
      001FE0 00 00 87 DA           5452 	.dw	0,(Sswi2c$swi2c_read_buf$55)
      001FE4 00 02                 5453 	.dw	2
      001FE6 78                    5454 	.db	120
      001FE7 05                    5455 	.sleb128	5
      001FE8 00 00 87 B7           5456 	.dw	0,(Sswi2c$swi2c_read_buf$45)
      001FEC 00 00 87 D5           5457 	.dw	0,(Sswi2c$swi2c_read_buf$54)
      001FF0 00 02                 5458 	.dw	2
      001FF2 78                    5459 	.db	120
      001FF3 04                    5460 	.sleb128	4
      001FF4 00 00 87 B5           5461 	.dw	0,(Sswi2c$swi2c_read_buf$44)
      001FF8 00 00 87 B7           5462 	.dw	0,(Sswi2c$swi2c_read_buf$45)
      001FFC 00 02                 5463 	.dw	2
      001FFE 78                    5464 	.db	120
      001FFF 01                    5465 	.sleb128	1
      002000 00 00 00 00           5466 	.dw	0,0
      002004 00 00 00 00           5467 	.dw	0,0
      002008 00 00 87 A0           5468 	.dw	0,(Sswi2c$_delay_us$29)
      00200C 00 00 87 B5           5469 	.dw	0,(Sswi2c$_delay_us$42)
      002010 00 02                 5470 	.dw	2
      002012 78                    5471 	.db	120
      002013 01                    5472 	.sleb128	1
      002014 00 00 87 9B           5473 	.dw	0,(Sswi2c$_delay_us$28)
      002018 00 00 87 A0           5474 	.dw	0,(Sswi2c$_delay_us$29)
      00201C 00 02                 5475 	.dw	2
      00201E 78                    5476 	.db	120
      00201F 09                    5477 	.sleb128	9
      002020 00 00 87 99           5478 	.dw	0,(Sswi2c$_delay_us$27)
      002024 00 00 87 9B           5479 	.dw	0,(Sswi2c$_delay_us$28)
      002028 00 02                 5480 	.dw	2
      00202A 78                    5481 	.db	120
      00202B 07                    5482 	.sleb128	7
      00202C 00 00 87 98           5483 	.dw	0,(Sswi2c$_delay_us$26)
      002030 00 00 87 99           5484 	.dw	0,(Sswi2c$_delay_us$27)
      002034 00 02                 5485 	.dw	2
      002036 78                    5486 	.db	120
      002037 05                    5487 	.sleb128	5
      002038 00 00 87 96           5488 	.dw	0,(Sswi2c$_delay_us$25)
      00203C 00 00 87 98           5489 	.dw	0,(Sswi2c$_delay_us$26)
      002040 00 02                 5490 	.dw	2
      002042 78                    5491 	.db	120
      002043 04                    5492 	.sleb128	4
      002044 00 00 87 94           5493 	.dw	0,(Sswi2c$_delay_us$24)
      002048 00 00 87 96           5494 	.dw	0,(Sswi2c$_delay_us$25)
      00204C 00 02                 5495 	.dw	2
      00204E 78                    5496 	.db	120
      00204F 03                    5497 	.sleb128	3
      002050 00 00 87 92           5498 	.dw	0,(Sswi2c$_delay_us$23)
      002054 00 00 87 94           5499 	.dw	0,(Sswi2c$_delay_us$24)
      002058 00 02                 5500 	.dw	2
      00205A 78                    5501 	.db	120
      00205B 02                    5502 	.sleb128	2
      00205C 00 00 87 90           5503 	.dw	0,(Sswi2c$_delay_us$21)
      002060 00 00 87 92           5504 	.dw	0,(Sswi2c$_delay_us$23)
      002064 00 02                 5505 	.dw	2
      002066 78                    5506 	.db	120
      002067 01                    5507 	.sleb128	1
      002068 00 00 87 8B           5508 	.dw	0,(Sswi2c$_delay_us$20)
      00206C 00 00 87 90           5509 	.dw	0,(Sswi2c$_delay_us$21)
      002070 00 02                 5510 	.dw	2
      002072 78                    5511 	.db	120
      002073 09                    5512 	.sleb128	9
      002074 00 00 87 89           5513 	.dw	0,(Sswi2c$_delay_us$19)
      002078 00 00 87 8B           5514 	.dw	0,(Sswi2c$_delay_us$20)
      00207C 00 02                 5515 	.dw	2
      00207E 78                    5516 	.db	120
      00207F 08                    5517 	.sleb128	8
      002080 00 00 87 87           5518 	.dw	0,(Sswi2c$_delay_us$18)
      002084 00 00 87 89           5519 	.dw	0,(Sswi2c$_delay_us$19)
      002088 00 02                 5520 	.dw	2
      00208A 78                    5521 	.db	120
      00208B 07                    5522 	.sleb128	7
      00208C 00 00 87 85           5523 	.dw	0,(Sswi2c$_delay_us$17)
      002090 00 00 87 87           5524 	.dw	0,(Sswi2c$_delay_us$18)
      002094 00 02                 5525 	.dw	2
      002096 78                    5526 	.db	120
      002097 06                    5527 	.sleb128	6
      002098 00 00 87 83           5528 	.dw	0,(Sswi2c$_delay_us$16)
      00209C 00 00 87 85           5529 	.dw	0,(Sswi2c$_delay_us$17)
      0020A0 00 02                 5530 	.dw	2
      0020A2 78                    5531 	.db	120
      0020A3 05                    5532 	.sleb128	5
      0020A4 00 00 87 82           5533 	.dw	0,(Sswi2c$_delay_us$15)
      0020A8 00 00 87 83           5534 	.dw	0,(Sswi2c$_delay_us$16)
      0020AC 00 02                 5535 	.dw	2
      0020AE 78                    5536 	.db	120
      0020AF 03                    5537 	.sleb128	3
      0020B0 00 00 87 7D           5538 	.dw	0,(Sswi2c$_delay_us$13)
      0020B4 00 00 87 82           5539 	.dw	0,(Sswi2c$_delay_us$15)
      0020B8 00 02                 5540 	.dw	2
      0020BA 78                    5541 	.db	120
      0020BB 01                    5542 	.sleb128	1
      0020BC 00 00 00 00           5543 	.dw	0,0
      0020C0 00 00 00 00           5544 	.dw	0,0
      0020C4 00 00 87 70           5545 	.dw	0,(Sswi2c$_delay_cycl$1)
      0020C8 00 00 87 7D           5546 	.dw	0,(Sswi2c$_delay_cycl$11)
      0020CC 00 02                 5547 	.dw	2
      0020CE 78                    5548 	.db	120
      0020CF 01                    5549 	.sleb128	1
      0020D0 00 00 00 00           5550 	.dw	0,0
      0020D4 00 00 00 00           5551 	.dw	0,0
                                   5552 
                                   5553 	.area .debug_abbrev (NOLOAD)
      00024D                       5554 Ldebug_abbrev:
      00024D 0C                    5555 	.uleb128	12
      00024E 0F                    5556 	.uleb128	15
      00024F 00                    5557 	.db	0
      000250 0B                    5558 	.uleb128	11
      000251 0B                    5559 	.uleb128	11
      000252 49                    5560 	.uleb128	73
      000253 13                    5561 	.uleb128	19
      000254 00                    5562 	.uleb128	0
      000255 00                    5563 	.uleb128	0
      000256 10                    5564 	.uleb128	16
      000257 0B                    5565 	.uleb128	11
      000258 01                    5566 	.db	1
      000259 00                    5567 	.uleb128	0
      00025A 00                    5568 	.uleb128	0
      00025B 11                    5569 	.uleb128	17
      00025C 2E                    5570 	.uleb128	46
      00025D 01                    5571 	.db	1
      00025E 03                    5572 	.uleb128	3
      00025F 08                    5573 	.uleb128	8
      000260 11                    5574 	.uleb128	17
      000261 01                    5575 	.uleb128	1
      000262 12                    5576 	.uleb128	18
      000263 01                    5577 	.uleb128	1
      000264 3F                    5578 	.uleb128	63
      000265 0C                    5579 	.uleb128	12
      000266 40                    5580 	.uleb128	64
      000267 06                    5581 	.uleb128	6
      000268 49                    5582 	.uleb128	73
      000269 13                    5583 	.uleb128	19
      00026A 00                    5584 	.uleb128	0
      00026B 00                    5585 	.uleb128	0
      00026C 03                    5586 	.uleb128	3
      00026D 05                    5587 	.uleb128	5
      00026E 00                    5588 	.db	0
      00026F 02                    5589 	.uleb128	2
      000270 0A                    5590 	.uleb128	10
      000271 03                    5591 	.uleb128	3
      000272 08                    5592 	.uleb128	8
      000273 49                    5593 	.uleb128	73
      000274 13                    5594 	.uleb128	19
      000275 00                    5595 	.uleb128	0
      000276 00                    5596 	.uleb128	0
      000277 02                    5597 	.uleb128	2
      000278 2E                    5598 	.uleb128	46
      000279 01                    5599 	.db	1
      00027A 01                    5600 	.uleb128	1
      00027B 13                    5601 	.uleb128	19
      00027C 03                    5602 	.uleb128	3
      00027D 08                    5603 	.uleb128	8
      00027E 11                    5604 	.uleb128	17
      00027F 01                    5605 	.uleb128	1
      000280 12                    5606 	.uleb128	18
      000281 01                    5607 	.uleb128	1
      000282 3F                    5608 	.uleb128	63
      000283 0C                    5609 	.uleb128	12
      000284 40                    5610 	.uleb128	64
      000285 06                    5611 	.uleb128	6
      000286 00                    5612 	.uleb128	0
      000287 00                    5613 	.uleb128	0
      000288 0A                    5614 	.uleb128	10
      000289 34                    5615 	.uleb128	52
      00028A 00                    5616 	.db	0
      00028B 02                    5617 	.uleb128	2
      00028C 0A                    5618 	.uleb128	10
      00028D 03                    5619 	.uleb128	3
      00028E 08                    5620 	.uleb128	8
      00028F 49                    5621 	.uleb128	73
      000290 13                    5622 	.uleb128	19
      000291 00                    5623 	.uleb128	0
      000292 00                    5624 	.uleb128	0
      000293 0B                    5625 	.uleb128	11
      000294 2E                    5626 	.uleb128	46
      000295 01                    5627 	.db	1
      000296 01                    5628 	.uleb128	1
      000297 13                    5629 	.uleb128	19
      000298 03                    5630 	.uleb128	3
      000299 08                    5631 	.uleb128	8
      00029A 11                    5632 	.uleb128	17
      00029B 01                    5633 	.uleb128	1
      00029C 12                    5634 	.uleb128	18
      00029D 01                    5635 	.uleb128	1
      00029E 3F                    5636 	.uleb128	63
      00029F 0C                    5637 	.uleb128	12
      0002A0 40                    5638 	.uleb128	64
      0002A1 06                    5639 	.uleb128	6
      0002A2 49                    5640 	.uleb128	73
      0002A3 13                    5641 	.uleb128	19
      0002A4 00                    5642 	.uleb128	0
      0002A5 00                    5643 	.uleb128	0
      0002A6 0F                    5644 	.uleb128	15
      0002A7 0B                    5645 	.uleb128	11
      0002A8 01                    5646 	.db	1
      0002A9 01                    5647 	.uleb128	1
      0002AA 13                    5648 	.uleb128	19
      0002AB 00                    5649 	.uleb128	0
      0002AC 00                    5650 	.uleb128	0
      0002AD 06                    5651 	.uleb128	6
      0002AE 26                    5652 	.uleb128	38
      0002AF 00                    5653 	.db	0
      0002B0 49                    5654 	.uleb128	73
      0002B1 13                    5655 	.uleb128	19
      0002B2 00                    5656 	.uleb128	0
      0002B3 00                    5657 	.uleb128	0
      0002B4 0D                    5658 	.uleb128	13
      0002B5 0B                    5659 	.uleb128	11
      0002B6 01                    5660 	.db	1
      0002B7 11                    5661 	.uleb128	17
      0002B8 01                    5662 	.uleb128	1
      0002B9 00                    5663 	.uleb128	0
      0002BA 00                    5664 	.uleb128	0
      0002BB 01                    5665 	.uleb128	1
      0002BC 11                    5666 	.uleb128	17
      0002BD 01                    5667 	.db	1
      0002BE 03                    5668 	.uleb128	3
      0002BF 08                    5669 	.uleb128	8
      0002C0 10                    5670 	.uleb128	16
      0002C1 06                    5671 	.uleb128	6
      0002C2 13                    5672 	.uleb128	19
      0002C3 0B                    5673 	.uleb128	11
      0002C4 25                    5674 	.uleb128	37
      0002C5 08                    5675 	.uleb128	8
      0002C6 00                    5676 	.uleb128	0
      0002C7 00                    5677 	.uleb128	0
      0002C8 04                    5678 	.uleb128	4
      0002C9 0B                    5679 	.uleb128	11
      0002CA 00                    5680 	.db	0
      0002CB 11                    5681 	.uleb128	17
      0002CC 01                    5682 	.uleb128	1
      0002CD 12                    5683 	.uleb128	18
      0002CE 01                    5684 	.uleb128	1
      0002CF 00                    5685 	.uleb128	0
      0002D0 00                    5686 	.uleb128	0
      0002D1 07                    5687 	.uleb128	7
      0002D2 0B                    5688 	.uleb128	11
      0002D3 01                    5689 	.db	1
      0002D4 11                    5690 	.uleb128	17
      0002D5 01                    5691 	.uleb128	1
      0002D6 12                    5692 	.uleb128	18
      0002D7 01                    5693 	.uleb128	1
      0002D8 00                    5694 	.uleb128	0
      0002D9 00                    5695 	.uleb128	0
      0002DA 08                    5696 	.uleb128	8
      0002DB 0B                    5697 	.uleb128	11
      0002DC 01                    5698 	.db	1
      0002DD 01                    5699 	.uleb128	1
      0002DE 13                    5700 	.uleb128	19
      0002DF 11                    5701 	.uleb128	17
      0002E0 01                    5702 	.uleb128	1
      0002E1 00                    5703 	.uleb128	0
      0002E2 00                    5704 	.uleb128	0
      0002E3 0E                    5705 	.uleb128	14
      0002E4 2E                    5706 	.uleb128	46
      0002E5 00                    5707 	.db	0
      0002E6 03                    5708 	.uleb128	3
      0002E7 08                    5709 	.uleb128	8
      0002E8 11                    5710 	.uleb128	17
      0002E9 01                    5711 	.uleb128	1
      0002EA 12                    5712 	.uleb128	18
      0002EB 01                    5713 	.uleb128	1
      0002EC 3F                    5714 	.uleb128	63
      0002ED 0C                    5715 	.uleb128	12
      0002EE 40                    5716 	.uleb128	64
      0002EF 06                    5717 	.uleb128	6
      0002F0 00                    5718 	.uleb128	0
      0002F1 00                    5719 	.uleb128	0
      0002F2 09                    5720 	.uleb128	9
      0002F3 0B                    5721 	.uleb128	11
      0002F4 01                    5722 	.db	1
      0002F5 01                    5723 	.uleb128	1
      0002F6 13                    5724 	.uleb128	19
      0002F7 11                    5725 	.uleb128	17
      0002F8 01                    5726 	.uleb128	1
      0002F9 12                    5727 	.uleb128	18
      0002FA 01                    5728 	.uleb128	1
      0002FB 00                    5729 	.uleb128	0
      0002FC 00                    5730 	.uleb128	0
      0002FD 05                    5731 	.uleb128	5
      0002FE 24                    5732 	.uleb128	36
      0002FF 00                    5733 	.db	0
      000300 03                    5734 	.uleb128	3
      000301 08                    5735 	.uleb128	8
      000302 0B                    5736 	.uleb128	11
      000303 0B                    5737 	.uleb128	11
      000304 3E                    5738 	.uleb128	62
      000305 0B                    5739 	.uleb128	11
      000306 00                    5740 	.uleb128	0
      000307 00                    5741 	.uleb128	0
      000308 00                    5742 	.uleb128	0
                                   5743 
                                   5744 	.area .debug_info (NOLOAD)
      001341 00 00 0F 03           5745 	.dw	0,Ldebug_info_end-Ldebug_info_start
      001345                       5746 Ldebug_info_start:
      001345 00 02                 5747 	.dw	2
      001347 00 00 02 4D           5748 	.dw	0,(Ldebug_abbrev)
      00134B 04                    5749 	.db	4
      00134C 01                    5750 	.uleb128	1
      00134D 2E 2F 73 72 63 2F 73  5751 	.ascii "./src/swi2c.c"
             77 69 32 63 2E 63
      00135A 00                    5752 	.db	0
      00135B 00 00 0B F0           5753 	.dw	0,(Ldebug_line_start+-4)
      00135F 01                    5754 	.db	1
      001360 53 44 43 43 20 76 65  5755 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      001379 00                    5756 	.db	0
      00137A 02                    5757 	.uleb128	2
      00137B 00 00 00 71           5758 	.dw	0,113
      00137F 5F 64 65 6C 61 79 5F  5759 	.ascii "_delay_cycl"
             63 79 63 6C
      00138A 00                    5760 	.db	0
      00138B 00 00 87 70           5761 	.dw	0,(__delay_cycl)
      00138F 00 00 87 7D           5762 	.dw	0,(XFswi2c$_delay_cycl$0$0+1)
      001393 00                    5763 	.db	0
      001394 00 00 20 C4           5764 	.dw	0,(Ldebug_loc_start+3016)
      001398 03                    5765 	.uleb128	3
      001399 02                    5766 	.db	2
      00139A 91                    5767 	.db	145
      00139B 02                    5768 	.sleb128	2
      00139C 5F 5F 74 69 63 6B 73  5769 	.ascii "__ticks"
      0013A3 00                    5770 	.db	0
      0013A4 00 00 00 71           5771 	.dw	0,113
      0013A8 04                    5772 	.uleb128	4
      0013A9 00 00 87 74           5773 	.dw	0,(Sswi2c$_delay_cycl$4)
      0013AD 00 00 87 75           5774 	.dw	0,(Sswi2c$_delay_cycl$6)
      0013B1 00                    5775 	.uleb128	0
      0013B2 05                    5776 	.uleb128	5
      0013B3 75 6E 73 69 67 6E 65  5777 	.ascii "unsigned int"
             64 20 69 6E 74
      0013BF 00                    5778 	.db	0
      0013C0 02                    5779 	.db	2
      0013C1 07                    5780 	.db	7
      0013C2 02                    5781 	.uleb128	2
      0013C3 00 00 01 08           5782 	.dw	0,264
      0013C7 5F 64 65 6C 61 79 5F  5783 	.ascii "_delay_us"
             75 73
      0013D0 00                    5784 	.db	0
      0013D1 00 00 87 7D           5785 	.dw	0,(__delay_us)
      0013D5 00 00 87 B5           5786 	.dw	0,(XFswi2c$_delay_us$0$0+1)
      0013D9 00                    5787 	.db	0
      0013DA 00 00 20 08           5788 	.dw	0,(Ldebug_loc_start+2828)
      0013DE 06                    5789 	.uleb128	6
      0013DF 00 00 00 71           5790 	.dw	0,113
      0013E3 03                    5791 	.uleb128	3
      0013E4 02                    5792 	.db	2
      0013E5 91                    5793 	.db	145
      0013E6 02                    5794 	.sleb128	2
      0013E7 5F 5F 75 73           5795 	.ascii "__us"
      0013EB 00                    5796 	.db	0
      0013EC 00 00 00 9D           5797 	.dw	0,157
      0013F0 07                    5798 	.uleb128	7
      0013F1 00 00 87 7D           5799 	.dw	0,(Sswi2c$_delay_us$14)
      0013F5 00 00 87 A9           5800 	.dw	0,(Sswi2c$_delay_us$31)
      0013F9 08                    5801 	.uleb128	8
      0013FA 00 00 00 ED           5802 	.dw	0,237
      0013FE 00 00 87 AA           5803 	.dw	0,(Sswi2c$_delay_us$32)
      001402 09                    5804 	.uleb128	9
      001403 00 00 00 D8           5805 	.dw	0,216
      001407 00 00 87 AA           5806 	.dw	0,(Sswi2c$_delay_us$33)
      00140B 00 00 87 B4           5807 	.dw	0,(Sswi2c$_delay_us$38)
      00140F 04                    5808 	.uleb128	4
      001410 00 00 87 AC           5809 	.dw	0,(Sswi2c$_delay_us$36)
      001414 00 00 87 AD           5810 	.dw	0,(Sswi2c$_delay_us$37)
      001418 00                    5811 	.uleb128	0
      001419 0A                    5812 	.uleb128	10
      00141A 06                    5813 	.db	6
      00141B 52                    5814 	.db	82
      00141C 93                    5815 	.db	147
      00141D 01                    5816 	.uleb128	1
      00141E 51                    5817 	.db	81
      00141F 93                    5818 	.db	147
      001420 01                    5819 	.uleb128	1
      001421 5F 5F 74 69 63 6B 73  5820 	.ascii "__ticks"
      001428 00                    5821 	.db	0
      001429 00 00 00 71           5822 	.dw	0,113
      00142D 00                    5823 	.uleb128	0
      00142E 0A                    5824 	.uleb128	10
      00142F 06                    5825 	.db	6
      001430 52                    5826 	.db	82
      001431 93                    5827 	.db	147
      001432 01                    5828 	.uleb128	1
      001433 51                    5829 	.db	81
      001434 93                    5830 	.db	147
      001435 01                    5831 	.uleb128	1
      001436 5F 5F 31 33 31 30 37  5832 	.ascii "__1310720010"
             32 30 30 31 30
      001442 00                    5833 	.db	0
      001443 00 00 00 71           5834 	.dw	0,113
      001447 00                    5835 	.uleb128	0
      001448 00                    5836 	.uleb128	0
      001449 05                    5837 	.uleb128	5
      00144A 75 6E 73 69 67 6E 65  5838 	.ascii "unsigned char"
             64 20 63 68 61 72
      001457 00                    5839 	.db	0
      001458 01                    5840 	.db	1
      001459 08                    5841 	.db	8
      00145A 0B                    5842 	.uleb128	11
      00145B 00 00 02 AB           5843 	.dw	0,683
      00145F 73 77 69 32 63 5F 72  5844 	.ascii "swi2c_read_buf"
             65 61 64 5F 62 75 66
      00146D 00                    5845 	.db	0
      00146E 00 00 87 B5           5846 	.dw	0,(_swi2c_read_buf)
      001472 00 00 89 45           5847 	.dw	0,(XG$swi2c_read_buf$0$0+1)
      001476 01                    5848 	.db	1
      001477 00 00 1F 4C           5849 	.dw	0,(Ldebug_loc_start+2640)
      00147B 00 00 01 08           5850 	.dw	0,264
      00147F 03                    5851 	.uleb128	3
      001480 02                    5852 	.db	2
      001481 91                    5853 	.db	145
      001482 02                    5854 	.sleb128	2
      001483 73 6C 76 5F 61 64 64  5855 	.ascii "slv_addr"
             72
      00148B 00                    5856 	.db	0
      00148C 00 00 01 08           5857 	.dw	0,264
      001490 03                    5858 	.uleb128	3
      001491 02                    5859 	.db	2
      001492 91                    5860 	.db	145
      001493 03                    5861 	.sleb128	3
      001494 61 64 64 72 65 73 73  5862 	.ascii "address"
      00149B 00                    5863 	.db	0
      00149C 00 00 01 08           5864 	.dw	0,264
      0014A0 0C                    5865 	.uleb128	12
      0014A1 02                    5866 	.db	2
      0014A2 00 00 01 08           5867 	.dw	0,264
      0014A6 03                    5868 	.uleb128	3
      0014A7 02                    5869 	.db	2
      0014A8 91                    5870 	.db	145
      0014A9 04                    5871 	.sleb128	4
      0014AA 64 61 74 61           5872 	.ascii "data"
      0014AE 00                    5873 	.db	0
      0014AF 00 00 01 5F           5874 	.dw	0,351
      0014B3 03                    5875 	.uleb128	3
      0014B4 02                    5876 	.db	2
      0014B5 91                    5877 	.db	145
      0014B6 06                    5878 	.sleb128	6
      0014B7 6E 75 6D              5879 	.ascii "num"
      0014BA 00                    5880 	.db	0
      0014BB 00 00 00 71           5881 	.dw	0,113
      0014BF 04                    5882 	.uleb128	4
      0014C0 00 00 87 C0           5883 	.dw	0,(Sswi2c$swi2c_read_buf$47)
      0014C4 00 00 87 C5           5884 	.dw	0,(Sswi2c$swi2c_read_buf$49)
      0014C8 09                    5885 	.uleb128	9
      0014C9 00 00 01 9E           5886 	.dw	0,414
      0014CD 00 00 87 D0           5887 	.dw	0,(Sswi2c$swi2c_read_buf$52)
      0014D1 00 00 87 E7           5888 	.dw	0,(Sswi2c$swi2c_read_buf$60)
      0014D5 04                    5889 	.uleb128	4
      0014D6 00 00 87 E0           5890 	.dw	0,(Sswi2c$swi2c_read_buf$56)
      0014DA 00 00 87 E5           5891 	.dw	0,(Sswi2c$swi2c_read_buf$58)
      0014DE 00                    5892 	.uleb128	0
      0014DF 09                    5893 	.uleb128	9
      0014E0 00 00 01 B5           5894 	.dw	0,437
      0014E4 00 00 87 F6           5895 	.dw	0,(Sswi2c$swi2c_read_buf$63)
      0014E8 00 00 88 09           5896 	.dw	0,(Sswi2c$swi2c_read_buf$69)
      0014EC 04                    5897 	.uleb128	4
      0014ED 00 00 87 FF           5898 	.dw	0,(Sswi2c$swi2c_read_buf$65)
      0014F1 00 00 88 04           5899 	.dw	0,(Sswi2c$swi2c_read_buf$67)
      0014F5 00                    5900 	.uleb128	0
      0014F6 09                    5901 	.uleb128	9
      0014F7 00 00 01 CC           5902 	.dw	0,460
      0014FB 00 00 88 14           5903 	.dw	0,(Sswi2c$swi2c_read_buf$72)
      0014FF 00 00 88 2B           5904 	.dw	0,(Sswi2c$swi2c_read_buf$80)
      001503 04                    5905 	.uleb128	4
      001504 00 00 88 24           5906 	.dw	0,(Sswi2c$swi2c_read_buf$76)
      001508 00 00 88 29           5907 	.dw	0,(Sswi2c$swi2c_read_buf$78)
      00150C 00                    5908 	.uleb128	0
      00150D 09                    5909 	.uleb128	9
      00150E 00 00 01 E3           5910 	.dw	0,483
      001512 00 00 88 3A           5911 	.dw	0,(Sswi2c$swi2c_read_buf$83)
      001516 00 00 88 4D           5912 	.dw	0,(Sswi2c$swi2c_read_buf$89)
      00151A 04                    5913 	.uleb128	4
      00151B 00 00 88 43           5914 	.dw	0,(Sswi2c$swi2c_read_buf$85)
      00151F 00 00 88 48           5915 	.dw	0,(Sswi2c$swi2c_read_buf$87)
      001523 00                    5916 	.uleb128	0
      001524 04                    5917 	.uleb128	4
      001525 00 00 88 56           5918 	.dw	0,(Sswi2c$swi2c_read_buf$91)
      001529 00 00 88 5B           5919 	.dw	0,(Sswi2c$swi2c_read_buf$93)
      00152D 09                    5920 	.uleb128	9
      00152E 00 00 02 03           5921 	.dw	0,515
      001532 00 00 88 5F           5922 	.dw	0,(Sswi2c$swi2c_read_buf$95)
      001536 00 00 88 83           5923 	.dw	0,(Sswi2c$swi2c_read_buf$105)
      00153A 04                    5924 	.uleb128	4
      00153B 00 00 88 7C           5925 	.dw	0,(Sswi2c$swi2c_read_buf$101)
      00153F 00 00 88 81           5926 	.dw	0,(Sswi2c$swi2c_read_buf$103)
      001543 00                    5927 	.uleb128	0
      001544 09                    5928 	.uleb128	9
      001545 00 00 02 1A           5929 	.dw	0,538
      001549 00 00 88 92           5930 	.dw	0,(Sswi2c$swi2c_read_buf$108)
      00154D 00 00 88 A5           5931 	.dw	0,(Sswi2c$swi2c_read_buf$114)
      001551 04                    5932 	.uleb128	4
      001552 00 00 88 9B           5933 	.dw	0,(Sswi2c$swi2c_read_buf$110)
      001556 00 00 88 A0           5934 	.dw	0,(Sswi2c$swi2c_read_buf$112)
      00155A 00                    5935 	.uleb128	0
      00155B 09                    5936 	.uleb128	9
      00155C 00 00 02 73           5937 	.dw	0,627
      001560 00 00 88 B2           5938 	.dw	0,(Sswi2c$swi2c_read_buf$116)
      001564 00 00 89 2E           5939 	.dw	0,(Sswi2c$swi2c_read_buf$154)
      001568 09                    5940 	.uleb128	9
      001569 00 00 02 50           5941 	.dw	0,592
      00156D 00 00 88 BD           5942 	.dw	0,(Sswi2c$swi2c_read_buf$119)
      001571 00 00 88 F8           5943 	.dw	0,(Sswi2c$swi2c_read_buf$137)
      001575 04                    5944 	.uleb128	4
      001576 00 00 88 D0           5945 	.dw	0,(Sswi2c$swi2c_read_buf$124)
      00157A 00 00 88 D9           5946 	.dw	0,(Sswi2c$swi2c_read_buf$126)
      00157E 04                    5947 	.uleb128	4
      00157F 00 00 88 E7           5948 	.dw	0,(Sswi2c$swi2c_read_buf$129)
      001583 00 00 88 EB           5949 	.dw	0,(Sswi2c$swi2c_read_buf$131)
      001587 04                    5950 	.uleb128	4
      001588 00 00 88 EE           5951 	.dw	0,(Sswi2c$swi2c_read_buf$132)
      00158C 00 00 88 F6           5952 	.dw	0,(Sswi2c$swi2c_read_buf$135)
      001590 00                    5953 	.uleb128	0
      001591 08                    5954 	.uleb128	8
      001592 00 00 02 63           5955 	.dw	0,611
      001596 00 00 89 0A           5956 	.dw	0,(Sswi2c$swi2c_read_buf$140)
      00159A 04                    5957 	.uleb128	4
      00159B 00 00 89 17           5958 	.dw	0,(Sswi2c$swi2c_read_buf$144)
      00159F 00 00 89 1C           5959 	.dw	0,(Sswi2c$swi2c_read_buf$146)
      0015A3 00                    5960 	.uleb128	0
      0015A4 0D                    5961 	.uleb128	13
      0015A5 00 00 89 1C           5962 	.dw	0,(Sswi2c$swi2c_read_buf$147)
      0015A9 04                    5963 	.uleb128	4
      0015AA 00 00 89 29           5964 	.dw	0,(Sswi2c$swi2c_read_buf$151)
      0015AE 00 00 89 2E           5965 	.dw	0,(Sswi2c$swi2c_read_buf$153)
      0015B2 00                    5966 	.uleb128	0
      0015B3 00                    5967 	.uleb128	0
      0015B4 04                    5968 	.uleb128	4
      0015B5 00 00 89 3C           5969 	.dw	0,(Sswi2c$swi2c_read_buf$157)
      0015B9 00 00 89 41           5970 	.dw	0,(Sswi2c$swi2c_read_buf$159)
      0015BD 0A                    5971 	.uleb128	10
      0015BE 02                    5972 	.db	2
      0015BF 91                    5973 	.db	145
      0015C0 00                    5974 	.sleb128	0
      0015C1 69                    5975 	.ascii "i"
      0015C2 00                    5976 	.db	0
      0015C3 00 00 01 08           5977 	.dw	0,264
      0015C7 0A                    5978 	.uleb128	10
      0015C8 01                    5979 	.db	1
      0015C9 53                    5980 	.db	83
      0015CA 62 69 74              5981 	.ascii "bit"
      0015CD 00                    5982 	.db	0
      0015CE 00 00 01 08           5983 	.dw	0,264
      0015D2 0A                    5984 	.uleb128	10
      0015D3 02                    5985 	.db	2
      0015D4 91                    5986 	.db	145
      0015D5 7F                    5987 	.sleb128	-1
      0015D6 61 63 6B              5988 	.ascii "ack"
      0015D9 00                    5989 	.db	0
      0015DA 00 00 01 08           5990 	.dw	0,264
      0015DE 0A                    5991 	.uleb128	10
      0015DF 02                    5992 	.db	2
      0015E0 91                    5993 	.db	145
      0015E1 7F                    5994 	.sleb128	-1
      0015E2 6D 61 73 6B           5995 	.ascii "mask"
      0015E6 00                    5996 	.db	0
      0015E7 00 00 01 08           5997 	.dw	0,264
      0015EB 00                    5998 	.uleb128	0
      0015EC 0B                    5999 	.uleb128	11
      0015ED 00 00 03 D5           6000 	.dw	0,981
      0015F1 73 77 69 32 63 5F 77  6001 	.ascii "swi2c_write_buf"
             72 69 74 65 5F 62 75
             66
      001600 00                    6002 	.db	0
      001601 00 00 89 45           6003 	.dw	0,(_swi2c_write_buf)
      001605 00 00 8A 4B           6004 	.dw	0,(XG$swi2c_write_buf$0$0+1)
      001609 01                    6005 	.db	1
      00160A 00 00 1E C0           6006 	.dw	0,(Ldebug_loc_start+2500)
      00160E 00 00 01 08           6007 	.dw	0,264
      001612 03                    6008 	.uleb128	3
      001613 02                    6009 	.db	2
      001614 91                    6010 	.db	145
      001615 02                    6011 	.sleb128	2
      001616 73 6C 76 5F 61 64 64  6012 	.ascii "slv_addr"
             72
      00161E 00                    6013 	.db	0
      00161F 00 00 01 08           6014 	.dw	0,264
      001623 03                    6015 	.uleb128	3
      001624 02                    6016 	.db	2
      001625 91                    6017 	.db	145
      001626 03                    6018 	.sleb128	3
      001627 61 64 64 72 65 73 73  6019 	.ascii "address"
      00162E 00                    6020 	.db	0
      00162F 00 00 01 08           6021 	.dw	0,264
      001633 03                    6022 	.uleb128	3
      001634 02                    6023 	.db	2
      001635 91                    6024 	.db	145
      001636 04                    6025 	.sleb128	4
      001637 64 61 74 61           6026 	.ascii "data"
      00163B 00                    6027 	.db	0
      00163C 00 00 01 5F           6028 	.dw	0,351
      001640 03                    6029 	.uleb128	3
      001641 02                    6030 	.db	2
      001642 91                    6031 	.db	145
      001643 06                    6032 	.sleb128	6
      001644 6E 75 6D              6033 	.ascii "num"
      001647 00                    6034 	.db	0
      001648 00 00 00 71           6035 	.dw	0,113
      00164C 04                    6036 	.uleb128	4
      00164D 00 00 89 4F           6037 	.dw	0,(Sswi2c$swi2c_write_buf$169)
      001651 00 00 89 54           6038 	.dw	0,(Sswi2c$swi2c_write_buf$171)
      001655 09                    6039 	.uleb128	9
      001656 00 00 03 2B           6040 	.dw	0,811
      00165A 00 00 89 5F           6041 	.dw	0,(Sswi2c$swi2c_write_buf$174)
      00165E 00 00 89 76           6042 	.dw	0,(Sswi2c$swi2c_write_buf$182)
      001662 04                    6043 	.uleb128	4
      001663 00 00 89 6F           6044 	.dw	0,(Sswi2c$swi2c_write_buf$178)
      001667 00 00 89 74           6045 	.dw	0,(Sswi2c$swi2c_write_buf$180)
      00166B 00                    6046 	.uleb128	0
      00166C 09                    6047 	.uleb128	9
      00166D 00 00 03 42           6048 	.dw	0,834
      001671 00 00 89 85           6049 	.dw	0,(Sswi2c$swi2c_write_buf$185)
      001675 00 00 89 98           6050 	.dw	0,(Sswi2c$swi2c_write_buf$191)
      001679 04                    6051 	.uleb128	4
      00167A 00 00 89 8E           6052 	.dw	0,(Sswi2c$swi2c_write_buf$187)
      00167E 00 00 89 93           6053 	.dw	0,(Sswi2c$swi2c_write_buf$189)
      001682 00                    6054 	.uleb128	0
      001683 09                    6055 	.uleb128	9
      001684 00 00 03 59           6056 	.dw	0,857
      001688 00 00 89 A3           6057 	.dw	0,(Sswi2c$swi2c_write_buf$194)
      00168C 00 00 89 BA           6058 	.dw	0,(Sswi2c$swi2c_write_buf$202)
      001690 04                    6059 	.uleb128	4
      001691 00 00 89 B3           6060 	.dw	0,(Sswi2c$swi2c_write_buf$198)
      001695 00 00 89 B8           6061 	.dw	0,(Sswi2c$swi2c_write_buf$200)
      001699 00                    6062 	.uleb128	0
      00169A 09                    6063 	.uleb128	9
      00169B 00 00 03 70           6064 	.dw	0,880
      00169F 00 00 89 C9           6065 	.dw	0,(Sswi2c$swi2c_write_buf$205)
      0016A3 00 00 89 DC           6066 	.dw	0,(Sswi2c$swi2c_write_buf$211)
      0016A7 04                    6067 	.uleb128	4
      0016A8 00 00 89 D2           6068 	.dw	0,(Sswi2c$swi2c_write_buf$207)
      0016AC 00 00 89 D7           6069 	.dw	0,(Sswi2c$swi2c_write_buf$209)
      0016B0 00                    6070 	.uleb128	0
      0016B1 09                    6071 	.uleb128	9
      0016B2 00 00 03 A8           6072 	.dw	0,936
      0016B6 00 00 89 E9           6073 	.dw	0,(Sswi2c$swi2c_write_buf$213)
      0016BA 00 00 8A 35           6074 	.dw	0,(Sswi2c$swi2c_write_buf$237)
      0016BE 09                    6075 	.uleb128	9
      0016BF 00 00 03 94           6076 	.dw	0,916
      0016C3 00 00 89 ED           6077 	.dw	0,(Sswi2c$swi2c_write_buf$215)
      0016C7 00 00 8A 13           6078 	.dw	0,(Sswi2c$swi2c_write_buf$227)
      0016CB 04                    6079 	.uleb128	4
      0016CC 00 00 8A 0C           6080 	.dw	0,(Sswi2c$swi2c_write_buf$223)
      0016D0 00 00 8A 11           6081 	.dw	0,(Sswi2c$swi2c_write_buf$225)
      0016D4 00                    6082 	.uleb128	0
      0016D5 07                    6083 	.uleb128	7
      0016D6 00 00 8A 22           6084 	.dw	0,(Sswi2c$swi2c_write_buf$230)
      0016DA 00 00 8A 35           6085 	.dw	0,(Sswi2c$swi2c_write_buf$236)
      0016DE 04                    6086 	.uleb128	4
      0016DF 00 00 8A 2B           6087 	.dw	0,(Sswi2c$swi2c_write_buf$232)
      0016E3 00 00 8A 30           6088 	.dw	0,(Sswi2c$swi2c_write_buf$234)
      0016E7 00                    6089 	.uleb128	0
      0016E8 00                    6090 	.uleb128	0
      0016E9 04                    6091 	.uleb128	4
      0016EA 00 00 8A 43           6092 	.dw	0,(Sswi2c$swi2c_write_buf$240)
      0016EE 00 00 8A 48           6093 	.dw	0,(Sswi2c$swi2c_write_buf$242)
      0016F2 0A                    6094 	.uleb128	10
      0016F3 02                    6095 	.db	2
      0016F4 91                    6096 	.db	145
      0016F5 00                    6097 	.sleb128	0
      0016F6 69                    6098 	.ascii "i"
      0016F7 00                    6099 	.db	0
      0016F8 00 00 01 08           6100 	.dw	0,264
      0016FC 0A                    6101 	.uleb128	10
      0016FD 02                    6102 	.db	2
      0016FE 91                    6103 	.db	145
      0016FF 7F                    6104 	.sleb128	-1
      001700 61 63 6B              6105 	.ascii "ack"
      001703 00                    6106 	.db	0
      001704 00 00 01 08           6107 	.dw	0,264
      001708 0A                    6108 	.uleb128	10
      001709 02                    6109 	.db	2
      00170A 91                    6110 	.db	145
      00170B 7F                    6111 	.sleb128	-1
      00170C 6D 61 73 6B           6112 	.ascii "mask"
      001710 00                    6113 	.db	0
      001711 00 00 01 08           6114 	.dw	0,264
      001715 00                    6115 	.uleb128	0
      001716 0B                    6116 	.uleb128	11
      001717 00 00 04 4F           6117 	.dw	0,1103
      00171B 73 77 69 32 63 5F 74  6118 	.ascii "swi2c_test_slave"
             65 73 74 5F 73 6C 61
             76 65
      00172B 00                    6119 	.db	0
      00172C 00 00 8A 4B           6120 	.dw	0,(_swi2c_test_slave)
      001730 00 00 8A 97           6121 	.dw	0,(XG$swi2c_test_slave$0$0+1)
      001734 01                    6122 	.db	1
      001735 00 00 1E 7C           6123 	.dw	0,(Ldebug_loc_start+2432)
      001739 00 00 01 08           6124 	.dw	0,264
      00173D 03                    6125 	.uleb128	3
      00173E 02                    6126 	.db	2
      00173F 91                    6127 	.db	145
      001740 02                    6128 	.sleb128	2
      001741 73 6C 76 61 64 64 72  6129 	.ascii "slvaddr"
      001748 00                    6130 	.db	0
      001749 00 00 01 08           6131 	.dw	0,264
      00174D 04                    6132 	.uleb128	4
      00174E 00 00 8A 59           6133 	.dw	0,(Sswi2c$swi2c_test_slave$253)
      001752 00 00 8A 5E           6134 	.dw	0,(Sswi2c$swi2c_test_slave$255)
      001756 09                    6135 	.uleb128	9
      001757 00 00 04 2C           6136 	.dw	0,1068
      00175B 00 00 8A 65           6137 	.dw	0,(Sswi2c$swi2c_test_slave$257)
      00175F 00 00 8A 7C           6138 	.dw	0,(Sswi2c$swi2c_test_slave$265)
      001763 04                    6139 	.uleb128	4
      001764 00 00 8A 75           6140 	.dw	0,(Sswi2c$swi2c_test_slave$261)
      001768 00 00 8A 7A           6141 	.dw	0,(Sswi2c$swi2c_test_slave$263)
      00176C 00                    6142 	.uleb128	0
      00176D 04                    6143 	.uleb128	4
      00176E 00 00 8A 8D           6144 	.dw	0,(Sswi2c$swi2c_test_slave$268)
      001772 00 00 8A 92           6145 	.dw	0,(Sswi2c$swi2c_test_slave$270)
      001776 0A                    6146 	.uleb128	10
      001777 02                    6147 	.db	2
      001778 91                    6148 	.db	145
      001779 7F                    6149 	.sleb128	-1
      00177A 61 63 6B              6150 	.ascii "ack"
      00177D 00                    6151 	.db	0
      00177E 00 00 01 08           6152 	.dw	0,264
      001782 0A                    6153 	.uleb128	10
      001783 02                    6154 	.db	2
      001784 91                    6155 	.db	145
      001785 7F                    6156 	.sleb128	-1
      001786 6D 61 73 6B           6157 	.ascii "mask"
      00178A 00                    6158 	.db	0
      00178B 00 00 01 08           6159 	.dw	0,264
      00178F 00                    6160 	.uleb128	0
      001790 0E                    6161 	.uleb128	14
      001791 73 77 69 32 63 5F 69  6162 	.ascii "swi2c_init"
             6E 69 74
      00179B 00                    6163 	.db	0
      00179C 00 00 8A 97           6164 	.dw	0,(_swi2c_init)
      0017A0 00 00 8A B2           6165 	.dw	0,(XG$swi2c_init$0$0+1)
      0017A4 01                    6166 	.db	1
      0017A5 00 00 1D F0           6167 	.dw	0,(Ldebug_loc_start+2292)
      0017A9 0B                    6168 	.uleb128	11
      0017AA 00 00 06 4F           6169 	.dw	0,1615
      0017AE 73 77 69 32 63 5F 72  6170 	.ascii "swi2c_readbit"
             65 61 64 62 69 74
      0017BB 00                    6171 	.db	0
      0017BC 00 00 8A B2           6172 	.dw	0,(_swi2c_readbit)
      0017C0 00 00 8B 48           6173 	.dw	0,(XG$swi2c_readbit$0$0+1)
      0017C4 01                    6174 	.db	1
      0017C5 00 00 1C A4           6175 	.dw	0,(Ldebug_loc_start+1960)
      0017C9 00 00 01 08           6176 	.dw	0,264
      0017CD 0F                    6177 	.uleb128	15
      0017CE 00 00 05 0C           6178 	.dw	0,1292
      0017D2 0F                    6179 	.uleb128	15
      0017D3 00 00 04 F6           6180 	.dw	0,1270
      0017D7 0F                    6181 	.uleb128	15
      0017D8 00 00 04 E8           6182 	.dw	0,1256
      0017DC 10                    6183 	.uleb128	16
      0017DD 08                    6184 	.uleb128	8
      0017DE 00 00 04 D1           6185 	.dw	0,1233
      0017E2 00 00 8A C3           6186 	.dw	0,(Sswi2c$swi2c_readbit$302)
      0017E6 09                    6187 	.uleb128	9
      0017E7 00 00 04 BC           6188 	.dw	0,1212
      0017EB 00 00 8A C6           6189 	.dw	0,(Sswi2c$swi2c_readbit$303)
      0017EF 00 00 8A D0           6190 	.dw	0,(Sswi2c$swi2c_readbit$308)
      0017F3 04                    6191 	.uleb128	4
      0017F4 00 00 8A C8           6192 	.dw	0,(Sswi2c$swi2c_readbit$306)
      0017F8 00 00 8A C9           6193 	.dw	0,(Sswi2c$swi2c_readbit$307)
      0017FC 00                    6194 	.uleb128	0
      0017FD 0A                    6195 	.uleb128	10
      0017FE 06                    6196 	.db	6
      0017FF 52                    6197 	.db	82
      001800 93                    6198 	.db	147
      001801 01                    6199 	.uleb128	1
      001802 51                    6200 	.db	81
      001803 93                    6201 	.db	147
      001804 01                    6202 	.uleb128	1
      001805 5F 5F 74 69 63 6B 73  6203 	.ascii "__ticks"
      00180C 00                    6204 	.db	0
      00180D 00 00 00 71           6205 	.dw	0,113
      001811 00                    6206 	.uleb128	0
      001812 0A                    6207 	.uleb128	10
      001813 02                    6208 	.db	2
      001814 91                    6209 	.db	145
      001815 00                    6210 	.sleb128	0
      001816 5F 5F 31 33 31 30 37  6211 	.ascii "__1310720010"
             32 30 30 31 30
      001822 00                    6212 	.db	0
      001823 00 00 00 71           6213 	.dw	0,113
      001827 00                    6214 	.uleb128	0
      001828 00                    6215 	.uleb128	0
      001829 0A                    6216 	.uleb128	10
      00182A 02                    6217 	.db	2
      00182B 91                    6218 	.db	145
      00182C 00                    6219 	.sleb128	0
      00182D 5F 5F 75 73           6220 	.ascii "__us"
      001831 00                    6221 	.db	0
      001832 00 00 00 9D           6222 	.dw	0,157
      001836 00                    6223 	.uleb128	0
      001837 0A                    6224 	.uleb128	10
      001838 02                    6225 	.db	2
      001839 91                    6226 	.db	145
      00183A 00                    6227 	.sleb128	0
      00183B 5F 5F 31 33 31 30 37  6228 	.ascii "__1310720012"
             32 30 30 31 32
      001847 00                    6229 	.db	0
      001848 00 00 00 9D           6230 	.dw	0,157
      00184C 00                    6231 	.uleb128	0
      00184D 04                    6232 	.uleb128	4
      00184E 00 00 8A F6           6233 	.dw	0,(Sswi2c$swi2c_readbit$321)
      001852 00 00 8A F7           6234 	.dw	0,(Sswi2c$swi2c_readbit$323)
      001856 04                    6235 	.uleb128	4
      001857 00 00 8B 03           6236 	.dw	0,(Sswi2c$swi2c_readbit$325)
      00185B 00 00 8B 08           6237 	.dw	0,(Sswi2c$swi2c_readbit$327)
      00185F 0F                    6238 	.uleb128	15
      001860 00 00 05 9E           6239 	.dw	0,1438
      001864 0F                    6240 	.uleb128	15
      001865 00 00 05 88           6241 	.dw	0,1416
      001869 0F                    6242 	.uleb128	15
      00186A 00 00 05 7A           6243 	.dw	0,1402
      00186E 10                    6244 	.uleb128	16
      00186F 08                    6245 	.uleb128	8
      001870 00 00 05 63           6246 	.dw	0,1379
      001874 00 00 8B 08           6247 	.dw	0,(Sswi2c$swi2c_readbit$328)
      001878 09                    6248 	.uleb128	9
      001879 00 00 05 4E           6249 	.dw	0,1358
      00187D 00 00 8B 0B           6250 	.dw	0,(Sswi2c$swi2c_readbit$329)
      001881 00 00 8B 15           6251 	.dw	0,(Sswi2c$swi2c_readbit$334)
      001885 04                    6252 	.uleb128	4
      001886 00 00 8B 0D           6253 	.dw	0,(Sswi2c$swi2c_readbit$332)
      00188A 00 00 8B 0E           6254 	.dw	0,(Sswi2c$swi2c_readbit$333)
      00188E 00                    6255 	.uleb128	0
      00188F 0A                    6256 	.uleb128	10
      001890 06                    6257 	.db	6
      001891 52                    6258 	.db	82
      001892 93                    6259 	.db	147
      001893 01                    6260 	.uleb128	1
      001894 51                    6261 	.db	81
      001895 93                    6262 	.db	147
      001896 01                    6263 	.uleb128	1
      001897 5F 5F 74 69 63 6B 73  6264 	.ascii "__ticks"
      00189E 00                    6265 	.db	0
      00189F 00 00 00 71           6266 	.dw	0,113
      0018A3 00                    6267 	.uleb128	0
      0018A4 0A                    6268 	.uleb128	10
      0018A5 02                    6269 	.db	2
      0018A6 91                    6270 	.db	145
      0018A7 00                    6271 	.sleb128	0
      0018A8 5F 5F 31 33 31 30 37  6272 	.ascii "__1310720010"
             32 30 30 31 30
      0018B4 00                    6273 	.db	0
      0018B5 00 00 00 71           6274 	.dw	0,113
      0018B9 00                    6275 	.uleb128	0
      0018BA 00                    6276 	.uleb128	0
      0018BB 0A                    6277 	.uleb128	10
      0018BC 02                    6278 	.db	2
      0018BD 91                    6279 	.db	145
      0018BE 00                    6280 	.sleb128	0
      0018BF 5F 5F 75 73           6281 	.ascii "__us"
      0018C3 00                    6282 	.db	0
      0018C4 00 00 00 9D           6283 	.dw	0,157
      0018C8 00                    6284 	.uleb128	0
      0018C9 0A                    6285 	.uleb128	10
      0018CA 02                    6286 	.db	2
      0018CB 91                    6287 	.db	145
      0018CC 00                    6288 	.sleb128	0
      0018CD 5F 5F 31 33 31 30 37  6289 	.ascii "__1310720014"
             32 30 30 31 34
      0018D9 00                    6290 	.db	0
      0018DA 00 00 00 9D           6291 	.dw	0,157
      0018DE 00                    6292 	.uleb128	0
      0018DF 04                    6293 	.uleb128	4
      0018E0 00 00 8B 26           6294 	.dw	0,(Sswi2c$swi2c_readbit$340)
      0018E4 00 00 8B 27           6295 	.dw	0,(Sswi2c$swi2c_readbit$342)
      0018E8 04                    6296 	.uleb128	4
      0018E9 00 00 8B 2A           6297 	.dw	0,(Sswi2c$swi2c_readbit$343)
      0018ED 00 00 8B 2C           6298 	.dw	0,(Sswi2c$swi2c_readbit$345)
      0018F1 0F                    6299 	.uleb128	15
      0018F2 00 00 06 30           6300 	.dw	0,1584
      0018F6 0F                    6301 	.uleb128	15
      0018F7 00 00 06 1A           6302 	.dw	0,1562
      0018FB 0F                    6303 	.uleb128	15
      0018FC 00 00 06 0C           6304 	.dw	0,1548
      001900 10                    6305 	.uleb128	16
      001901 08                    6306 	.uleb128	8
      001902 00 00 05 F5           6307 	.dw	0,1525
      001906 00 00 8B 39           6308 	.dw	0,(Sswi2c$swi2c_readbit$353)
      00190A 09                    6309 	.uleb128	9
      00190B 00 00 05 E0           6310 	.dw	0,1504
      00190F 00 00 8B 3C           6311 	.dw	0,(Sswi2c$swi2c_readbit$354)
      001913 00 00 8B 46           6312 	.dw	0,(Sswi2c$swi2c_readbit$359)
      001917 04                    6313 	.uleb128	4
      001918 00 00 8B 3E           6314 	.dw	0,(Sswi2c$swi2c_readbit$357)
      00191C 00 00 8B 3F           6315 	.dw	0,(Sswi2c$swi2c_readbit$358)
      001920 00                    6316 	.uleb128	0
      001921 0A                    6317 	.uleb128	10
      001922 06                    6318 	.db	6
      001923 52                    6319 	.db	82
      001924 93                    6320 	.db	147
      001925 01                    6321 	.uleb128	1
      001926 51                    6322 	.db	81
      001927 93                    6323 	.db	147
      001928 01                    6324 	.uleb128	1
      001929 5F 5F 74 69 63 6B 73  6325 	.ascii "__ticks"
      001930 00                    6326 	.db	0
      001931 00 00 00 71           6327 	.dw	0,113
      001935 00                    6328 	.uleb128	0
      001936 0A                    6329 	.uleb128	10
      001937 02                    6330 	.db	2
      001938 91                    6331 	.db	145
      001939 00                    6332 	.sleb128	0
      00193A 5F 5F 31 33 31 30 37  6333 	.ascii "__1310720010"
             32 30 30 31 30
      001946 00                    6334 	.db	0
      001947 00 00 00 71           6335 	.dw	0,113
      00194B 00                    6336 	.uleb128	0
      00194C 00                    6337 	.uleb128	0
      00194D 0A                    6338 	.uleb128	10
      00194E 02                    6339 	.db	2
      00194F 91                    6340 	.db	145
      001950 00                    6341 	.sleb128	0
      001951 5F 5F 75 73           6342 	.ascii "__us"
      001955 00                    6343 	.db	0
      001956 00 00 00 9D           6344 	.dw	0,157
      00195A 00                    6345 	.uleb128	0
      00195B 0A                    6346 	.uleb128	10
      00195C 02                    6347 	.db	2
      00195D 91                    6348 	.db	145
      00195E 00                    6349 	.sleb128	0
      00195F 5F 5F 31 33 31 30 37  6350 	.ascii "__1310720016"
             32 30 30 31 36
      00196B 00                    6351 	.db	0
      00196C 00 00 00 9D           6352 	.dw	0,157
      001970 00                    6353 	.uleb128	0
      001971 0A                    6354 	.uleb128	10
      001972 02                    6355 	.db	2
      001973 91                    6356 	.db	145
      001974 7E                    6357 	.sleb128	-2
      001975 74 69 6D 65 6F 75 74  6358 	.ascii "timeout"
      00197C 00                    6359 	.db	0
      00197D 00 00 00 71           6360 	.dw	0,113
      001981 0A                    6361 	.uleb128	10
      001982 01                    6362 	.db	1
      001983 50                    6363 	.db	80
      001984 72 65 74 76 61 6C     6364 	.ascii "retval"
      00198A 00                    6365 	.db	0
      00198B 00 00 01 08           6366 	.dw	0,264
      00198F 00                    6367 	.uleb128	0
      001990 0B                    6368 	.uleb128	11
      001991 00 00 08 35           6369 	.dw	0,2101
      001995 73 77 69 32 63 5F 77  6370 	.ascii "swi2c_writebit"
             72 69 74 65 62 69 74
      0019A3 00                    6371 	.db	0
      0019A4 00 00 8B 48           6372 	.dw	0,(_swi2c_writebit)
      0019A8 00 00 8B E6           6373 	.dw	0,(XG$swi2c_writebit$0$0+1)
      0019AC 01                    6374 	.db	1
      0019AD 00 00 1B 40           6375 	.dw	0,(Ldebug_loc_start+1604)
      0019B1 00 00 01 08           6376 	.dw	0,264
      0019B5 03                    6377 	.uleb128	3
      0019B6 02                    6378 	.db	2
      0019B7 91                    6379 	.db	145
      0019B8 02                    6380 	.sleb128	2
      0019B9 62 69 74              6381 	.ascii "bit"
      0019BC 00                    6382 	.db	0
      0019BD 00 00 01 08           6383 	.dw	0,264
      0019C1 04                    6384 	.uleb128	4
      0019C2 00 00 8B 55           6385 	.dw	0,(Sswi2c$swi2c_writebit$370)
      0019C6 00 00 8B 60           6386 	.dw	0,(Sswi2c$swi2c_writebit$376)
      0019CA 04                    6387 	.uleb128	4
      0019CB 00 00 8B 63           6388 	.dw	0,(Sswi2c$swi2c_writebit$377)
      0019CF 00 00 8B 6E           6389 	.dw	0,(Sswi2c$swi2c_writebit$383)
      0019D3 0F                    6390 	.uleb128	15
      0019D4 00 00 07 12           6391 	.dw	0,1810
      0019D8 0F                    6392 	.uleb128	15
      0019D9 00 00 06 FC           6393 	.dw	0,1788
      0019DD 0F                    6394 	.uleb128	15
      0019DE 00 00 06 EE           6395 	.dw	0,1774
      0019E2 10                    6396 	.uleb128	16
      0019E3 08                    6397 	.uleb128	8
      0019E4 00 00 06 D7           6398 	.dw	0,1751
      0019E8 00 00 8B 6E           6399 	.dw	0,(Sswi2c$swi2c_writebit$384)
      0019EC 09                    6400 	.uleb128	9
      0019ED 00 00 06 C2           6401 	.dw	0,1730
      0019F1 00 00 8B 71           6402 	.dw	0,(Sswi2c$swi2c_writebit$385)
      0019F5 00 00 8B 7B           6403 	.dw	0,(Sswi2c$swi2c_writebit$390)
      0019F9 04                    6404 	.uleb128	4
      0019FA 00 00 8B 73           6405 	.dw	0,(Sswi2c$swi2c_writebit$388)
      0019FE 00 00 8B 74           6406 	.dw	0,(Sswi2c$swi2c_writebit$389)
      001A02 00                    6407 	.uleb128	0
      001A03 0A                    6408 	.uleb128	10
      001A04 06                    6409 	.db	6
      001A05 52                    6410 	.db	82
      001A06 93                    6411 	.db	147
      001A07 01                    6412 	.uleb128	1
      001A08 51                    6413 	.db	81
      001A09 93                    6414 	.db	147
      001A0A 01                    6415 	.uleb128	1
      001A0B 5F 5F 74 69 63 6B 73  6416 	.ascii "__ticks"
      001A12 00                    6417 	.db	0
      001A13 00 00 00 71           6418 	.dw	0,113
      001A17 00                    6419 	.uleb128	0
      001A18 0A                    6420 	.uleb128	10
      001A19 02                    6421 	.db	2
      001A1A 91                    6422 	.db	145
      001A1B 00                    6423 	.sleb128	0
      001A1C 5F 5F 31 33 31 30 37  6424 	.ascii "__1310720010"
             32 30 30 31 30
      001A28 00                    6425 	.db	0
      001A29 00 00 00 71           6426 	.dw	0,113
      001A2D 00                    6427 	.uleb128	0
      001A2E 00                    6428 	.uleb128	0
      001A2F 0A                    6429 	.uleb128	10
      001A30 02                    6430 	.db	2
      001A31 91                    6431 	.db	145
      001A32 00                    6432 	.sleb128	0
      001A33 5F 5F 75 73           6433 	.ascii "__us"
      001A37 00                    6434 	.db	0
      001A38 00 00 00 9D           6435 	.dw	0,157
      001A3C 00                    6436 	.uleb128	0
      001A3D 0A                    6437 	.uleb128	10
      001A3E 02                    6438 	.db	2
      001A3F 91                    6439 	.db	145
      001A40 00                    6440 	.sleb128	0
      001A41 5F 5F 31 33 31 30 37  6441 	.ascii "__1310720018"
             32 30 30 31 38
      001A4D 00                    6442 	.db	0
      001A4E 00 00 00 9D           6443 	.dw	0,157
      001A52 00                    6444 	.uleb128	0
      001A53 04                    6445 	.uleb128	4
      001A54 00 00 8B A1           6446 	.dw	0,(Sswi2c$swi2c_writebit$403)
      001A58 00 00 8B A2           6447 	.dw	0,(Sswi2c$swi2c_writebit$405)
      001A5C 04                    6448 	.uleb128	4
      001A5D 00 00 8B AE           6449 	.dw	0,(Sswi2c$swi2c_writebit$407)
      001A61 00 00 8B BE           6450 	.dw	0,(Sswi2c$swi2c_writebit$414)
      001A65 0F                    6451 	.uleb128	15
      001A66 00 00 07 A4           6452 	.dw	0,1956
      001A6A 0F                    6453 	.uleb128	15
      001A6B 00 00 07 8E           6454 	.dw	0,1934
      001A6F 0F                    6455 	.uleb128	15
      001A70 00 00 07 80           6456 	.dw	0,1920
      001A74 10                    6457 	.uleb128	16
      001A75 08                    6458 	.uleb128	8
      001A76 00 00 07 69           6459 	.dw	0,1897
      001A7A 00 00 8B BE           6460 	.dw	0,(Sswi2c$swi2c_writebit$415)
      001A7E 09                    6461 	.uleb128	9
      001A7F 00 00 07 54           6462 	.dw	0,1876
      001A83 00 00 8B C1           6463 	.dw	0,(Sswi2c$swi2c_writebit$416)
      001A87 00 00 8B CB           6464 	.dw	0,(Sswi2c$swi2c_writebit$421)
      001A8B 04                    6465 	.uleb128	4
      001A8C 00 00 8B C3           6466 	.dw	0,(Sswi2c$swi2c_writebit$419)
      001A90 00 00 8B C4           6467 	.dw	0,(Sswi2c$swi2c_writebit$420)
      001A94 00                    6468 	.uleb128	0
      001A95 0A                    6469 	.uleb128	10
      001A96 06                    6470 	.db	6
      001A97 52                    6471 	.db	82
      001A98 93                    6472 	.db	147
      001A99 01                    6473 	.uleb128	1
      001A9A 51                    6474 	.db	81
      001A9B 93                    6475 	.db	147
      001A9C 01                    6476 	.uleb128	1
      001A9D 5F 5F 74 69 63 6B 73  6477 	.ascii "__ticks"
      001AA4 00                    6478 	.db	0
      001AA5 00 00 00 71           6479 	.dw	0,113
      001AA9 00                    6480 	.uleb128	0
      001AAA 0A                    6481 	.uleb128	10
      001AAB 02                    6482 	.db	2
      001AAC 91                    6483 	.db	145
      001AAD 00                    6484 	.sleb128	0
      001AAE 5F 5F 31 33 31 30 37  6485 	.ascii "__1310720010"
             32 30 30 31 30
      001ABA 00                    6486 	.db	0
      001ABB 00 00 00 71           6487 	.dw	0,113
      001ABF 00                    6488 	.uleb128	0
      001AC0 00                    6489 	.uleb128	0
      001AC1 0A                    6490 	.uleb128	10
      001AC2 02                    6491 	.db	2
      001AC3 91                    6492 	.db	145
      001AC4 00                    6493 	.sleb128	0
      001AC5 5F 5F 75 73           6494 	.ascii "__us"
      001AC9 00                    6495 	.db	0
      001ACA 00 00 00 9D           6496 	.dw	0,157
      001ACE 00                    6497 	.uleb128	0
      001ACF 0A                    6498 	.uleb128	10
      001AD0 02                    6499 	.db	2
      001AD1 91                    6500 	.db	145
      001AD2 00                    6501 	.sleb128	0
      001AD3 5F 5F 31 33 31 30 37  6502 	.ascii "__1310720020"
             32 30 30 32 30
      001ADF 00                    6503 	.db	0
      001AE0 00 00 00 9D           6504 	.dw	0,157
      001AE4 00                    6505 	.uleb128	0
      001AE5 0F                    6506 	.uleb128	15
      001AE6 00 00 08 24           6507 	.dw	0,2084
      001AEA 0F                    6508 	.uleb128	15
      001AEB 00 00 08 0E           6509 	.dw	0,2062
      001AEF 0F                    6510 	.uleb128	15
      001AF0 00 00 08 00           6511 	.dw	0,2048
      001AF4 10                    6512 	.uleb128	16
      001AF5 08                    6513 	.uleb128	8
      001AF6 00 00 07 E9           6514 	.dw	0,2025
      001AFA 00 00 8B D6           6515 	.dw	0,(Sswi2c$swi2c_writebit$427)
      001AFE 09                    6516 	.uleb128	9
      001AFF 00 00 07 D4           6517 	.dw	0,2004
      001B03 00 00 8B D9           6518 	.dw	0,(Sswi2c$swi2c_writebit$428)
      001B07 00 00 8B E3           6519 	.dw	0,(Sswi2c$swi2c_writebit$433)
      001B0B 04                    6520 	.uleb128	4
      001B0C 00 00 8B DB           6521 	.dw	0,(Sswi2c$swi2c_writebit$431)
      001B10 00 00 8B DC           6522 	.dw	0,(Sswi2c$swi2c_writebit$432)
      001B14 00                    6523 	.uleb128	0
      001B15 0A                    6524 	.uleb128	10
      001B16 06                    6525 	.db	6
      001B17 52                    6526 	.db	82
      001B18 93                    6527 	.db	147
      001B19 01                    6528 	.uleb128	1
      001B1A 51                    6529 	.db	81
      001B1B 93                    6530 	.db	147
      001B1C 01                    6531 	.uleb128	1
      001B1D 5F 5F 74 69 63 6B 73  6532 	.ascii "__ticks"
      001B24 00                    6533 	.db	0
      001B25 00 00 00 71           6534 	.dw	0,113
      001B29 00                    6535 	.uleb128	0
      001B2A 0A                    6536 	.uleb128	10
      001B2B 02                    6537 	.db	2
      001B2C 91                    6538 	.db	145
      001B2D 00                    6539 	.sleb128	0
      001B2E 5F 5F 31 33 31 30 37  6540 	.ascii "__1310720010"
             32 30 30 31 30
      001B3A 00                    6541 	.db	0
      001B3B 00 00 00 71           6542 	.dw	0,113
      001B3F 00                    6543 	.uleb128	0
      001B40 00                    6544 	.uleb128	0
      001B41 0A                    6545 	.uleb128	10
      001B42 02                    6546 	.db	2
      001B43 91                    6547 	.db	145
      001B44 00                    6548 	.sleb128	0
      001B45 5F 5F 75 73           6549 	.ascii "__us"
      001B49 00                    6550 	.db	0
      001B4A 00 00 00 9D           6551 	.dw	0,157
      001B4E 00                    6552 	.uleb128	0
      001B4F 0A                    6553 	.uleb128	10
      001B50 02                    6554 	.db	2
      001B51 91                    6555 	.db	145
      001B52 00                    6556 	.sleb128	0
      001B53 5F 5F 31 33 31 30 37  6557 	.ascii "__1310720022"
             32 30 30 32 32
      001B5F 00                    6558 	.db	0
      001B60 00 00 00 9D           6559 	.dw	0,157
      001B64 00                    6560 	.uleb128	0
      001B65 0A                    6561 	.uleb128	10
      001B66 02                    6562 	.db	2
      001B67 91                    6563 	.db	145
      001B68 7E                    6564 	.sleb128	-2
      001B69 74 69 6D 65 6F 75 74  6565 	.ascii "timeout"
      001B70 00                    6566 	.db	0
      001B71 00 00 00 71           6567 	.dw	0,113
      001B75 00                    6568 	.uleb128	0
      001B76 0B                    6569 	.uleb128	11
      001B77 00 00 0A 8E           6570 	.dw	0,2702
      001B7B 73 77 69 32 63 5F 52  6571 	.ascii "swi2c_RESTART"
             45 53 54 41 52 54
      001B88 00                    6572 	.db	0
      001B89 00 00 8B E6           6573 	.dw	0,(_swi2c_RESTART)
      001B8D 00 00 8C BB           6574 	.dw	0,(XG$swi2c_RESTART$0$0+1)
      001B91 01                    6575 	.db	1
      001B92 00 00 19 34           6576 	.dw	0,(Ldebug_loc_start+1080)
      001B96 00 00 01 08           6577 	.dw	0,264
      001B9A 04                    6578 	.uleb128	4
      001B9B 00 00 8C 1C           6579 	.dw	0,(Sswi2c$swi2c_RESTART$464)
      001B9F 00 00 8C 1D           6580 	.dw	0,(Sswi2c$swi2c_RESTART$466)
      001BA3 04                    6581 	.uleb128	4
      001BA4 00 00 8C 29           6582 	.dw	0,(Sswi2c$swi2c_RESTART$468)
      001BA8 00 00 8C 39           6583 	.dw	0,(Sswi2c$swi2c_RESTART$475)
      001BAC 0F                    6584 	.uleb128	15
      001BAD 00 00 08 EB           6585 	.dw	0,2283
      001BB1 0F                    6586 	.uleb128	15
      001BB2 00 00 08 D5           6587 	.dw	0,2261
      001BB6 0F                    6588 	.uleb128	15
      001BB7 00 00 08 C7           6589 	.dw	0,2247
      001BBB 10                    6590 	.uleb128	16
      001BBC 08                    6591 	.uleb128	8
      001BBD 00 00 08 B0           6592 	.dw	0,2224
      001BC1 00 00 8C 39           6593 	.dw	0,(Sswi2c$swi2c_RESTART$476)
      001BC5 09                    6594 	.uleb128	9
      001BC6 00 00 08 9B           6595 	.dw	0,2203
      001BCA 00 00 8C 3C           6596 	.dw	0,(Sswi2c$swi2c_RESTART$477)
      001BCE 00 00 8C 46           6597 	.dw	0,(Sswi2c$swi2c_RESTART$482)
      001BD2 04                    6598 	.uleb128	4
      001BD3 00 00 8C 3E           6599 	.dw	0,(Sswi2c$swi2c_RESTART$480)
      001BD7 00 00 8C 3F           6600 	.dw	0,(Sswi2c$swi2c_RESTART$481)
      001BDB 00                    6601 	.uleb128	0
      001BDC 0A                    6602 	.uleb128	10
      001BDD 06                    6603 	.db	6
      001BDE 52                    6604 	.db	82
      001BDF 93                    6605 	.db	147
      001BE0 01                    6606 	.uleb128	1
      001BE1 51                    6607 	.db	81
      001BE2 93                    6608 	.db	147
      001BE3 01                    6609 	.uleb128	1
      001BE4 5F 5F 74 69 63 6B 73  6610 	.ascii "__ticks"
      001BEB 00                    6611 	.db	0
      001BEC 00 00 00 71           6612 	.dw	0,113
      001BF0 00                    6613 	.uleb128	0
      001BF1 0A                    6614 	.uleb128	10
      001BF2 02                    6615 	.db	2
      001BF3 91                    6616 	.db	145
      001BF4 00                    6617 	.sleb128	0
      001BF5 5F 5F 31 33 31 30 37  6618 	.ascii "__1310720010"
             32 30 30 31 30
      001C01 00                    6619 	.db	0
      001C02 00 00 00 71           6620 	.dw	0,113
      001C06 00                    6621 	.uleb128	0
      001C07 00                    6622 	.uleb128	0
      001C08 0A                    6623 	.uleb128	10
      001C09 02                    6624 	.db	2
      001C0A 91                    6625 	.db	145
      001C0B 00                    6626 	.sleb128	0
      001C0C 5F 5F 75 73           6627 	.ascii "__us"
      001C10 00                    6628 	.db	0
      001C11 00 00 00 9D           6629 	.dw	0,157
      001C15 00                    6630 	.uleb128	0
      001C16 0A                    6631 	.uleb128	10
      001C17 02                    6632 	.db	2
      001C18 91                    6633 	.db	145
      001C19 00                    6634 	.sleb128	0
      001C1A 5F 5F 31 33 31 30 37  6635 	.ascii "__1310720024"
             32 30 30 32 34
      001C26 00                    6636 	.db	0
      001C27 00 00 00 9D           6637 	.dw	0,157
      001C2B 00                    6638 	.uleb128	0
      001C2C 04                    6639 	.uleb128	4
      001C2D 00 00 8C 6C           6640 	.dw	0,(Sswi2c$swi2c_RESTART$495)
      001C31 00 00 8C 6D           6641 	.dw	0,(Sswi2c$swi2c_RESTART$497)
      001C35 04                    6642 	.uleb128	4
      001C36 00 00 8C 76           6643 	.dw	0,(Sswi2c$swi2c_RESTART$499)
      001C3A 00 00 8C 7B           6644 	.dw	0,(Sswi2c$swi2c_RESTART$501)
      001C3E 0F                    6645 	.uleb128	15
      001C3F 00 00 09 7D           6646 	.dw	0,2429
      001C43 0F                    6647 	.uleb128	15
      001C44 00 00 09 67           6648 	.dw	0,2407
      001C48 0F                    6649 	.uleb128	15
      001C49 00 00 09 59           6650 	.dw	0,2393
      001C4D 10                    6651 	.uleb128	16
      001C4E 08                    6652 	.uleb128	8
      001C4F 00 00 09 42           6653 	.dw	0,2370
      001C53 00 00 8C 7B           6654 	.dw	0,(Sswi2c$swi2c_RESTART$502)
      001C57 09                    6655 	.uleb128	9
      001C58 00 00 09 2D           6656 	.dw	0,2349
      001C5C 00 00 8C 7E           6657 	.dw	0,(Sswi2c$swi2c_RESTART$503)
      001C60 00 00 8C 88           6658 	.dw	0,(Sswi2c$swi2c_RESTART$508)
      001C64 04                    6659 	.uleb128	4
      001C65 00 00 8C 80           6660 	.dw	0,(Sswi2c$swi2c_RESTART$506)
      001C69 00 00 8C 81           6661 	.dw	0,(Sswi2c$swi2c_RESTART$507)
      001C6D 00                    6662 	.uleb128	0
      001C6E 0A                    6663 	.uleb128	10
      001C6F 06                    6664 	.db	6
      001C70 52                    6665 	.db	82
      001C71 93                    6666 	.db	147
      001C72 01                    6667 	.uleb128	1
      001C73 51                    6668 	.db	81
      001C74 93                    6669 	.db	147
      001C75 01                    6670 	.uleb128	1
      001C76 5F 5F 74 69 63 6B 73  6671 	.ascii "__ticks"
      001C7D 00                    6672 	.db	0
      001C7E 00 00 00 71           6673 	.dw	0,113
      001C82 00                    6674 	.uleb128	0
      001C83 0A                    6675 	.uleb128	10
      001C84 02                    6676 	.db	2
      001C85 91                    6677 	.db	145
      001C86 00                    6678 	.sleb128	0
      001C87 5F 5F 31 33 31 30 37  6679 	.ascii "__1310720010"
             32 30 30 31 30
      001C93 00                    6680 	.db	0
      001C94 00 00 00 71           6681 	.dw	0,113
      001C98 00                    6682 	.uleb128	0
      001C99 00                    6683 	.uleb128	0
      001C9A 0A                    6684 	.uleb128	10
      001C9B 02                    6685 	.db	2
      001C9C 91                    6686 	.db	145
      001C9D 00                    6687 	.sleb128	0
      001C9E 5F 5F 75 73           6688 	.ascii "__us"
      001CA2 00                    6689 	.db	0
      001CA3 00 00 00 9D           6690 	.dw	0,157
      001CA7 00                    6691 	.uleb128	0
      001CA8 0A                    6692 	.uleb128	10
      001CA9 02                    6693 	.db	2
      001CAA 91                    6694 	.db	145
      001CAB 00                    6695 	.sleb128	0
      001CAC 5F 5F 31 33 31 30 37  6696 	.ascii "__1310720026"
             32 30 30 32 36
      001CB8 00                    6697 	.db	0
      001CB9 00 00 00 9D           6698 	.dw	0,157
      001CBD 00                    6699 	.uleb128	0
      001CBE 0F                    6700 	.uleb128	15
      001CBF 00 00 09 FD           6701 	.dw	0,2557
      001CC3 0F                    6702 	.uleb128	15
      001CC4 00 00 09 E7           6703 	.dw	0,2535
      001CC8 0F                    6704 	.uleb128	15
      001CC9 00 00 09 D9           6705 	.dw	0,2521
      001CCD 10                    6706 	.uleb128	16
      001CCE 08                    6707 	.uleb128	8
      001CCF 00 00 09 C2           6708 	.dw	0,2498
      001CD3 00 00 8C 93           6709 	.dw	0,(Sswi2c$swi2c_RESTART$514)
      001CD7 09                    6710 	.uleb128	9
      001CD8 00 00 09 AD           6711 	.dw	0,2477
      001CDC 00 00 8C 96           6712 	.dw	0,(Sswi2c$swi2c_RESTART$515)
      001CE0 00 00 8C A0           6713 	.dw	0,(Sswi2c$swi2c_RESTART$520)
      001CE4 04                    6714 	.uleb128	4
      001CE5 00 00 8C 98           6715 	.dw	0,(Sswi2c$swi2c_RESTART$518)
      001CE9 00 00 8C 99           6716 	.dw	0,(Sswi2c$swi2c_RESTART$519)
      001CED 00                    6717 	.uleb128	0
      001CEE 0A                    6718 	.uleb128	10
      001CEF 06                    6719 	.db	6
      001CF0 52                    6720 	.db	82
      001CF1 93                    6721 	.db	147
      001CF2 01                    6722 	.uleb128	1
      001CF3 51                    6723 	.db	81
      001CF4 93                    6724 	.db	147
      001CF5 01                    6725 	.uleb128	1
      001CF6 5F 5F 74 69 63 6B 73  6726 	.ascii "__ticks"
      001CFD 00                    6727 	.db	0
      001CFE 00 00 00 71           6728 	.dw	0,113
      001D02 00                    6729 	.uleb128	0
      001D03 0A                    6730 	.uleb128	10
      001D04 02                    6731 	.db	2
      001D05 91                    6732 	.db	145
      001D06 00                    6733 	.sleb128	0
      001D07 5F 5F 31 33 31 30 37  6734 	.ascii "__1310720010"
             32 30 30 31 30
      001D13 00                    6735 	.db	0
      001D14 00 00 00 71           6736 	.dw	0,113
      001D18 00                    6737 	.uleb128	0
      001D19 00                    6738 	.uleb128	0
      001D1A 0A                    6739 	.uleb128	10
      001D1B 02                    6740 	.db	2
      001D1C 91                    6741 	.db	145
      001D1D 00                    6742 	.sleb128	0
      001D1E 5F 5F 75 73           6743 	.ascii "__us"
      001D22 00                    6744 	.db	0
      001D23 00 00 00 9D           6745 	.dw	0,157
      001D27 00                    6746 	.uleb128	0
      001D28 0A                    6747 	.uleb128	10
      001D29 02                    6748 	.db	2
      001D2A 91                    6749 	.db	145
      001D2B 00                    6750 	.sleb128	0
      001D2C 5F 5F 31 33 31 30 37  6751 	.ascii "__1310720028"
             32 30 30 32 38
      001D38 00                    6752 	.db	0
      001D39 00 00 00 9D           6753 	.dw	0,157
      001D3D 00                    6754 	.uleb128	0
      001D3E 0F                    6755 	.uleb128	15
      001D3F 00 00 0A 7D           6756 	.dw	0,2685
      001D43 0F                    6757 	.uleb128	15
      001D44 00 00 0A 67           6758 	.dw	0,2663
      001D48 0F                    6759 	.uleb128	15
      001D49 00 00 0A 59           6760 	.dw	0,2649
      001D4D 10                    6761 	.uleb128	16
      001D4E 08                    6762 	.uleb128	8
      001D4F 00 00 0A 42           6763 	.dw	0,2626
      001D53 00 00 8C AB           6764 	.dw	0,(Sswi2c$swi2c_RESTART$526)
      001D57 09                    6765 	.uleb128	9
      001D58 00 00 0A 2D           6766 	.dw	0,2605
      001D5C 00 00 8C AE           6767 	.dw	0,(Sswi2c$swi2c_RESTART$527)
      001D60 00 00 8C B8           6768 	.dw	0,(Sswi2c$swi2c_RESTART$532)
      001D64 04                    6769 	.uleb128	4
      001D65 00 00 8C B0           6770 	.dw	0,(Sswi2c$swi2c_RESTART$530)
      001D69 00 00 8C B1           6771 	.dw	0,(Sswi2c$swi2c_RESTART$531)
      001D6D 00                    6772 	.uleb128	0
      001D6E 0A                    6773 	.uleb128	10
      001D6F 06                    6774 	.db	6
      001D70 52                    6775 	.db	82
      001D71 93                    6776 	.db	147
      001D72 01                    6777 	.uleb128	1
      001D73 51                    6778 	.db	81
      001D74 93                    6779 	.db	147
      001D75 01                    6780 	.uleb128	1
      001D76 5F 5F 74 69 63 6B 73  6781 	.ascii "__ticks"
      001D7D 00                    6782 	.db	0
      001D7E 00 00 00 71           6783 	.dw	0,113
      001D82 00                    6784 	.uleb128	0
      001D83 0A                    6785 	.uleb128	10
      001D84 02                    6786 	.db	2
      001D85 91                    6787 	.db	145
      001D86 00                    6788 	.sleb128	0
      001D87 5F 5F 31 33 31 30 37  6789 	.ascii "__1310720010"
             32 30 30 31 30
      001D93 00                    6790 	.db	0
      001D94 00 00 00 71           6791 	.dw	0,113
      001D98 00                    6792 	.uleb128	0
      001D99 00                    6793 	.uleb128	0
      001D9A 0A                    6794 	.uleb128	10
      001D9B 02                    6795 	.db	2
      001D9C 91                    6796 	.db	145
      001D9D 00                    6797 	.sleb128	0
      001D9E 5F 5F 75 73           6798 	.ascii "__us"
      001DA2 00                    6799 	.db	0
      001DA3 00 00 00 9D           6800 	.dw	0,157
      001DA7 00                    6801 	.uleb128	0
      001DA8 0A                    6802 	.uleb128	10
      001DA9 02                    6803 	.db	2
      001DAA 91                    6804 	.db	145
      001DAB 00                    6805 	.sleb128	0
      001DAC 5F 5F 31 33 31 30 37  6806 	.ascii "__1310720030"
             32 30 30 33 30
      001DB8 00                    6807 	.db	0
      001DB9 00 00 00 9D           6808 	.dw	0,157
      001DBD 00                    6809 	.uleb128	0
      001DBE 0A                    6810 	.uleb128	10
      001DBF 02                    6811 	.db	2
      001DC0 91                    6812 	.db	145
      001DC1 7E                    6813 	.sleb128	-2
      001DC2 74 69 6D 65 6F 75 74  6814 	.ascii "timeout"
      001DC9 00                    6815 	.db	0
      001DCA 00 00 00 71           6816 	.dw	0,113
      001DCE 00                    6817 	.uleb128	0
      001DCF 0B                    6818 	.uleb128	11
      001DD0 00 00 0B B6           6819 	.dw	0,2998
      001DD4 73 77 69 32 63 5F 53  6820 	.ascii "swi2c_START"
             54 41 52 54
      001DDF 00                    6821 	.db	0
      001DE0 00 00 8C BB           6822 	.dw	0,(_swi2c_START)
      001DE4 00 00 8D 2A           6823 	.dw	0,(XG$swi2c_START$0$0+1)
      001DE8 01                    6824 	.db	1
      001DE9 00 00 18 00           6825 	.dw	0,(Ldebug_loc_start+772)
      001DED 00 00 01 08           6826 	.dw	0,264
      001DF1 04                    6827 	.uleb128	4
      001DF2 00 00 8C DD           6828 	.dw	0,(Sswi2c$swi2c_START$549)
      001DF6 00 00 8C F8           6829 	.dw	0,(Sswi2c$swi2c_START$561)
      001DFA 0F                    6830 	.uleb128	15
      001DFB 00 00 0B 39           6831 	.dw	0,2873
      001DFF 0F                    6832 	.uleb128	15
      001E00 00 00 0B 23           6833 	.dw	0,2851
      001E04 0F                    6834 	.uleb128	15
      001E05 00 00 0B 15           6835 	.dw	0,2837
      001E09 10                    6836 	.uleb128	16
      001E0A 08                    6837 	.uleb128	8
      001E0B 00 00 0A FE           6838 	.dw	0,2814
      001E0F 00 00 8D 03           6839 	.dw	0,(Sswi2c$swi2c_START$567)
      001E13 09                    6840 	.uleb128	9
      001E14 00 00 0A E9           6841 	.dw	0,2793
      001E18 00 00 8D 06           6842 	.dw	0,(Sswi2c$swi2c_START$568)
      001E1C 00 00 8D 10           6843 	.dw	0,(Sswi2c$swi2c_START$573)
      001E20 04                    6844 	.uleb128	4
      001E21 00 00 8D 08           6845 	.dw	0,(Sswi2c$swi2c_START$571)
      001E25 00 00 8D 09           6846 	.dw	0,(Sswi2c$swi2c_START$572)
      001E29 00                    6847 	.uleb128	0
      001E2A 0A                    6848 	.uleb128	10
      001E2B 06                    6849 	.db	6
      001E2C 52                    6850 	.db	82
      001E2D 93                    6851 	.db	147
      001E2E 01                    6852 	.uleb128	1
      001E2F 51                    6853 	.db	81
      001E30 93                    6854 	.db	147
      001E31 01                    6855 	.uleb128	1
      001E32 5F 5F 74 69 63 6B 73  6856 	.ascii "__ticks"
      001E39 00                    6857 	.db	0
      001E3A 00 00 00 71           6858 	.dw	0,113
      001E3E 00                    6859 	.uleb128	0
      001E3F 0A                    6860 	.uleb128	10
      001E40 02                    6861 	.db	2
      001E41 91                    6862 	.db	145
      001E42 00                    6863 	.sleb128	0
      001E43 5F 5F 31 33 31 30 37  6864 	.ascii "__1310720010"
             32 30 30 31 30
      001E4F 00                    6865 	.db	0
      001E50 00 00 00 71           6866 	.dw	0,113
      001E54 00                    6867 	.uleb128	0
      001E55 00                    6868 	.uleb128	0
      001E56 0A                    6869 	.uleb128	10
      001E57 02                    6870 	.db	2
      001E58 91                    6871 	.db	145
      001E59 00                    6872 	.sleb128	0
      001E5A 5F 5F 75 73           6873 	.ascii "__us"
      001E5E 00                    6874 	.db	0
      001E5F 00 00 00 9D           6875 	.dw	0,157
      001E63 00                    6876 	.uleb128	0
      001E64 0A                    6877 	.uleb128	10
      001E65 02                    6878 	.db	2
      001E66 91                    6879 	.db	145
      001E67 00                    6880 	.sleb128	0
      001E68 5F 5F 31 33 31 30 37  6881 	.ascii "__1310720032"
             32 30 30 33 32
      001E74 00                    6882 	.db	0
      001E75 00 00 00 9D           6883 	.dw	0,157
      001E79 00                    6884 	.uleb128	0
      001E7A 10                    6885 	.uleb128	16
      001E7B 0F                    6886 	.uleb128	15
      001E7C 00 00 0B 9F           6887 	.dw	0,2975
      001E80 0F                    6888 	.uleb128	15
      001E81 00 00 0B 91           6889 	.dw	0,2961
      001E85 10                    6890 	.uleb128	16
      001E86 08                    6891 	.uleb128	8
      001E87 00 00 0B 7A           6892 	.dw	0,2938
      001E8B 00 00 8D 1B           6893 	.dw	0,(Sswi2c$swi2c_START$579)
      001E8F 09                    6894 	.uleb128	9
      001E90 00 00 0B 65           6895 	.dw	0,2917
      001E94 00 00 8D 1E           6896 	.dw	0,(Sswi2c$swi2c_START$580)
      001E98 00 00 8D 28           6897 	.dw	0,(Sswi2c$swi2c_START$585)
      001E9C 04                    6898 	.uleb128	4
      001E9D 00 00 8D 20           6899 	.dw	0,(Sswi2c$swi2c_START$583)
      001EA1 00 00 8D 21           6900 	.dw	0,(Sswi2c$swi2c_START$584)
      001EA5 00                    6901 	.uleb128	0
      001EA6 0A                    6902 	.uleb128	10
      001EA7 06                    6903 	.db	6
      001EA8 52                    6904 	.db	82
      001EA9 93                    6905 	.db	147
      001EAA 01                    6906 	.uleb128	1
      001EAB 51                    6907 	.db	81
      001EAC 93                    6908 	.db	147
      001EAD 01                    6909 	.uleb128	1
      001EAE 5F 5F 74 69 63 6B 73  6910 	.ascii "__ticks"
      001EB5 00                    6911 	.db	0
      001EB6 00 00 00 71           6912 	.dw	0,113
      001EBA 00                    6913 	.uleb128	0
      001EBB 0A                    6914 	.uleb128	10
      001EBC 02                    6915 	.db	2
      001EBD 91                    6916 	.db	145
      001EBE 00                    6917 	.sleb128	0
      001EBF 5F 5F 31 33 31 30 37  6918 	.ascii "__1310720010"
             32 30 30 31 30
      001ECB 00                    6919 	.db	0
      001ECC 00 00 00 71           6920 	.dw	0,113
      001ED0 00                    6921 	.uleb128	0
      001ED1 00                    6922 	.uleb128	0
      001ED2 0A                    6923 	.uleb128	10
      001ED3 02                    6924 	.db	2
      001ED4 91                    6925 	.db	145
      001ED5 00                    6926 	.sleb128	0
      001ED6 5F 5F 75 73           6927 	.ascii "__us"
      001EDA 00                    6928 	.db	0
      001EDB 00 00 00 9D           6929 	.dw	0,157
      001EDF 00                    6930 	.uleb128	0
      001EE0 0A                    6931 	.uleb128	10
      001EE1 02                    6932 	.db	2
      001EE2 91                    6933 	.db	145
      001EE3 00                    6934 	.sleb128	0
      001EE4 5F 5F 31 33 31 30 37  6935 	.ascii "__1310720034"
             32 30 30 33 34
      001EF0 00                    6936 	.db	0
      001EF1 00 00 00 9D           6937 	.dw	0,157
      001EF5 00                    6938 	.uleb128	0
      001EF6 00                    6939 	.uleb128	0
      001EF7 0B                    6940 	.uleb128	11
      001EF8 00 00 0D 0D           6941 	.dw	0,3341
      001EFC 73 77 69 32 63 5F 53  6942 	.ascii "swi2c_STOP"
             54 4F 50
      001F06 00                    6943 	.db	0
      001F07 00 00 8D 2A           6944 	.dw	0,(_swi2c_STOP)
      001F0B 00 00 8D 9C           6945 	.dw	0,(XG$swi2c_STOP$0$0+1)
      001F0F 01                    6946 	.db	1
      001F10 00 00 16 FC           6947 	.dw	0,(Ldebug_loc_start+512)
      001F14 00 00 01 08           6948 	.dw	0,264
      001F18 0F                    6949 	.uleb128	15
      001F19 00 00 0C 57           6950 	.dw	0,3159
      001F1D 0F                    6951 	.uleb128	15
      001F1E 00 00 0C 41           6952 	.dw	0,3137
      001F22 0F                    6953 	.uleb128	15
      001F23 00 00 0C 33           6954 	.dw	0,3123
      001F27 10                    6955 	.uleb128	16
      001F28 08                    6956 	.uleb128	8
      001F29 00 00 0C 1C           6957 	.dw	0,3100
      001F2D 00 00 8D 3E           6958 	.dw	0,(Sswi2c$swi2c_STOP$600)
      001F31 09                    6959 	.uleb128	9
      001F32 00 00 0C 07           6960 	.dw	0,3079
      001F36 00 00 8D 41           6961 	.dw	0,(Sswi2c$swi2c_STOP$601)
      001F3A 00 00 8D 4B           6962 	.dw	0,(Sswi2c$swi2c_STOP$606)
      001F3E 04                    6963 	.uleb128	4
      001F3F 00 00 8D 43           6964 	.dw	0,(Sswi2c$swi2c_STOP$604)
      001F43 00 00 8D 44           6965 	.dw	0,(Sswi2c$swi2c_STOP$605)
      001F47 00                    6966 	.uleb128	0
      001F48 0A                    6967 	.uleb128	10
      001F49 06                    6968 	.db	6
      001F4A 52                    6969 	.db	82
      001F4B 93                    6970 	.db	147
      001F4C 01                    6971 	.uleb128	1
      001F4D 51                    6972 	.db	81
      001F4E 93                    6973 	.db	147
      001F4F 01                    6974 	.uleb128	1
      001F50 5F 5F 74 69 63 6B 73  6975 	.ascii "__ticks"
      001F57 00                    6976 	.db	0
      001F58 00 00 00 71           6977 	.dw	0,113
      001F5C 00                    6978 	.uleb128	0
      001F5D 0A                    6979 	.uleb128	10
      001F5E 02                    6980 	.db	2
      001F5F 91                    6981 	.db	145
      001F60 00                    6982 	.sleb128	0
      001F61 5F 5F 31 33 31 30 37  6983 	.ascii "__1310720010"
             32 30 30 31 30
      001F6D 00                    6984 	.db	0
      001F6E 00 00 00 71           6985 	.dw	0,113
      001F72 00                    6986 	.uleb128	0
      001F73 00                    6987 	.uleb128	0
      001F74 0A                    6988 	.uleb128	10
      001F75 02                    6989 	.db	2
      001F76 91                    6990 	.db	145
      001F77 00                    6991 	.sleb128	0
      001F78 5F 5F 75 73           6992 	.ascii "__us"
      001F7C 00                    6993 	.db	0
      001F7D 00 00 00 9D           6994 	.dw	0,157
      001F81 00                    6995 	.uleb128	0
      001F82 0A                    6996 	.uleb128	10
      001F83 02                    6997 	.db	2
      001F84 91                    6998 	.db	145
      001F85 00                    6999 	.sleb128	0
      001F86 5F 5F 31 33 31 30 37  7000 	.ascii "__1310720036"
             32 30 30 33 36
      001F92 00                    7001 	.db	0
      001F93 00 00 00 9D           7002 	.dw	0,157
      001F97 00                    7003 	.uleb128	0
      001F98 04                    7004 	.uleb128	4
      001F99 00 00 8D 71           7005 	.dw	0,(Sswi2c$swi2c_STOP$619)
      001F9D 00 00 8D 72           7006 	.dw	0,(Sswi2c$swi2c_STOP$621)
      001FA1 04                    7007 	.uleb128	4
      001FA2 00 00 8D 7B           7008 	.dw	0,(Sswi2c$swi2c_STOP$623)
      001FA6 00 00 8D 7F           7009 	.dw	0,(Sswi2c$swi2c_STOP$625)
      001FAA 0F                    7010 	.uleb128	15
      001FAB 00 00 0C E9           7011 	.dw	0,3305
      001FAF 0F                    7012 	.uleb128	15
      001FB0 00 00 0C D3           7013 	.dw	0,3283
      001FB4 0F                    7014 	.uleb128	15
      001FB5 00 00 0C C5           7015 	.dw	0,3269
      001FB9 10                    7016 	.uleb128	16
      001FBA 08                    7017 	.uleb128	8
      001FBB 00 00 0C AE           7018 	.dw	0,3246
      001FBF 00 00 8D 7F           7019 	.dw	0,(Sswi2c$swi2c_STOP$626)
      001FC3 09                    7020 	.uleb128	9
      001FC4 00 00 0C 99           7021 	.dw	0,3225
      001FC8 00 00 8D 82           7022 	.dw	0,(Sswi2c$swi2c_STOP$627)
      001FCC 00 00 8D 8C           7023 	.dw	0,(Sswi2c$swi2c_STOP$632)
      001FD0 04                    7024 	.uleb128	4
      001FD1 00 00 8D 84           7025 	.dw	0,(Sswi2c$swi2c_STOP$630)
      001FD5 00 00 8D 85           7026 	.dw	0,(Sswi2c$swi2c_STOP$631)
      001FD9 00                    7027 	.uleb128	0
      001FDA 0A                    7028 	.uleb128	10
      001FDB 06                    7029 	.db	6
      001FDC 52                    7030 	.db	82
      001FDD 93                    7031 	.db	147
      001FDE 01                    7032 	.uleb128	1
      001FDF 51                    7033 	.db	81
      001FE0 93                    7034 	.db	147
      001FE1 01                    7035 	.uleb128	1
      001FE2 5F 5F 74 69 63 6B 73  7036 	.ascii "__ticks"
      001FE9 00                    7037 	.db	0
      001FEA 00 00 00 71           7038 	.dw	0,113
      001FEE 00                    7039 	.uleb128	0
      001FEF 0A                    7040 	.uleb128	10
      001FF0 02                    7041 	.db	2
      001FF1 91                    7042 	.db	145
      001FF2 00                    7043 	.sleb128	0
      001FF3 5F 5F 31 33 31 30 37  7044 	.ascii "__1310720010"
             32 30 30 31 30
      001FFF 00                    7045 	.db	0
      002000 00 00 00 71           7046 	.dw	0,113
      002004 00                    7047 	.uleb128	0
      002005 00                    7048 	.uleb128	0
      002006 0A                    7049 	.uleb128	10
      002007 02                    7050 	.db	2
      002008 91                    7051 	.db	145
      002009 00                    7052 	.sleb128	0
      00200A 5F 5F 75 73           7053 	.ascii "__us"
      00200E 00                    7054 	.db	0
      00200F 00 00 00 9D           7055 	.dw	0,157
      002013 00                    7056 	.uleb128	0
      002014 0A                    7057 	.uleb128	10
      002015 02                    7058 	.db	2
      002016 91                    7059 	.db	145
      002017 00                    7060 	.sleb128	0
      002018 5F 5F 31 33 31 30 37  7061 	.ascii "__1310720038"
             32 30 30 33 38
      002024 00                    7062 	.db	0
      002025 00 00 00 9D           7063 	.dw	0,157
      002029 00                    7064 	.uleb128	0
      00202A 0A                    7065 	.uleb128	10
      00202B 06                    7066 	.db	6
      00202C 52                    7067 	.db	82
      00202D 93                    7068 	.db	147
      00202E 01                    7069 	.uleb128	1
      00202F 51                    7070 	.db	81
      002030 93                    7071 	.db	147
      002031 01                    7072 	.uleb128	1
      002032 74 69 6D 65 6F 75 74  7073 	.ascii "timeout"
      002039 00                    7074 	.db	0
      00203A 00 00 00 71           7075 	.dw	0,113
      00203E 0A                    7076 	.uleb128	10
      00203F 02                    7077 	.db	2
      002040 91                    7078 	.db	145
      002041 7F                    7079 	.sleb128	-1
      002042 72 65 74 76 61 6C     7080 	.ascii "retval"
      002048 00                    7081 	.db	0
      002049 00 00 01 08           7082 	.dw	0,264
      00204D 00                    7083 	.uleb128	0
      00204E 11                    7084 	.uleb128	17
      00204F 73 77 69 32 63 5F 72  7085 	.ascii "swi2c_recover"
             65 63 6F 76 65 72
      00205C 00                    7086 	.db	0
      00205D 00 00 8D 9C           7087 	.dw	0,(_swi2c_recover)
      002061 00 00 8E 85           7088 	.dw	0,(XG$swi2c_recover$0$0+1)
      002065 01                    7089 	.db	1
      002066 00 00 14 FC           7090 	.dw	0,(Ldebug_loc_start)
      00206A 00 00 01 08           7091 	.dw	0,264
      00206E 0F                    7092 	.uleb128	15
      00206F 00 00 0D AD           7093 	.dw	0,3501
      002073 0F                    7094 	.uleb128	15
      002074 00 00 0D 97           7095 	.dw	0,3479
      002078 0F                    7096 	.uleb128	15
      002079 00 00 0D 89           7097 	.dw	0,3465
      00207D 10                    7098 	.uleb128	16
      00207E 08                    7099 	.uleb128	8
      00207F 00 00 0D 72           7100 	.dw	0,3442
      002083 00 00 8D B9           7101 	.dw	0,(Sswi2c$swi2c_recover$657)
      002087 09                    7102 	.uleb128	9
      002088 00 00 0D 5D           7103 	.dw	0,3421
      00208C 00 00 8D BC           7104 	.dw	0,(Sswi2c$swi2c_recover$658)
      002090 00 00 8D C6           7105 	.dw	0,(Sswi2c$swi2c_recover$663)
      002094 04                    7106 	.uleb128	4
      002095 00 00 8D BE           7107 	.dw	0,(Sswi2c$swi2c_recover$661)
      002099 00 00 8D BF           7108 	.dw	0,(Sswi2c$swi2c_recover$662)
      00209D 00                    7109 	.uleb128	0
      00209E 0A                    7110 	.uleb128	10
      00209F 06                    7111 	.db	6
      0020A0 52                    7112 	.db	82
      0020A1 93                    7113 	.db	147
      0020A2 01                    7114 	.uleb128	1
      0020A3 51                    7115 	.db	81
      0020A4 93                    7116 	.db	147
      0020A5 01                    7117 	.uleb128	1
      0020A6 5F 5F 74 69 63 6B 73  7118 	.ascii "__ticks"
      0020AD 00                    7119 	.db	0
      0020AE 00 00 00 71           7120 	.dw	0,113
      0020B2 00                    7121 	.uleb128	0
      0020B3 0A                    7122 	.uleb128	10
      0020B4 02                    7123 	.db	2
      0020B5 91                    7124 	.db	145
      0020B6 00                    7125 	.sleb128	0
      0020B7 5F 5F 31 33 31 30 37  7126 	.ascii "__1310720010"
             32 30 30 31 30
      0020C3 00                    7127 	.db	0
      0020C4 00 00 00 71           7128 	.dw	0,113
      0020C8 00                    7129 	.uleb128	0
      0020C9 00                    7130 	.uleb128	0
      0020CA 0A                    7131 	.uleb128	10
      0020CB 02                    7132 	.db	2
      0020CC 91                    7133 	.db	145
      0020CD 00                    7134 	.sleb128	0
      0020CE 5F 5F 75 73           7135 	.ascii "__us"
      0020D2 00                    7136 	.db	0
      0020D3 00 00 00 9D           7137 	.dw	0,157
      0020D7 00                    7138 	.uleb128	0
      0020D8 0A                    7139 	.uleb128	10
      0020D9 02                    7140 	.db	2
      0020DA 91                    7141 	.db	145
      0020DB 00                    7142 	.sleb128	0
      0020DC 5F 5F 31 33 31 30 37  7143 	.ascii "__1310720040"
             32 30 30 34 30
      0020E8 00                    7144 	.db	0
      0020E9 00 00 00 9D           7145 	.dw	0,157
      0020ED 00                    7146 	.uleb128	0
      0020EE 04                    7147 	.uleb128	4
      0020EF 00 00 8D E8           7148 	.dw	0,(Sswi2c$swi2c_recover$673)
      0020F3 00 00 8D EC           7149 	.dw	0,(Sswi2c$swi2c_recover$675)
      0020F7 09                    7150 	.uleb128	9
      0020F8 00 00 0E E9           7151 	.dw	0,3817
      0020FC 00 00 8E 80           7152 	.dw	0,(Sswi2c$swi2c_recover$734)
      002100 00 00 8E 82           7153 	.dw	0,(Sswi2c$swi2c_recover$736)
      002104 07                    7154 	.uleb128	7
      002105 00 00 8D FF           7155 	.dw	0,(Sswi2c$swi2c_recover$682)
      002109 00 00 8E 75           7156 	.dw	0,(Sswi2c$swi2c_recover$732)
      00210D 0F                    7157 	.uleb128	15
      00210E 00 00 0E 4C           7158 	.dw	0,3660
      002112 0F                    7159 	.uleb128	15
      002113 00 00 0E 36           7160 	.dw	0,3638
      002117 0F                    7161 	.uleb128	15
      002118 00 00 0E 28           7162 	.dw	0,3624
      00211C 10                    7163 	.uleb128	16
      00211D 08                    7164 	.uleb128	8
      00211E 00 00 0E 11           7165 	.dw	0,3601
      002122 00 00 8E 0A           7166 	.dw	0,(Sswi2c$swi2c_recover$688)
      002126 09                    7167 	.uleb128	9
      002127 00 00 0D FC           7168 	.dw	0,3580
      00212B 00 00 8E 0D           7169 	.dw	0,(Sswi2c$swi2c_recover$689)
      00212F 00 00 8E 17           7170 	.dw	0,(Sswi2c$swi2c_recover$694)
      002133 04                    7171 	.uleb128	4
      002134 00 00 8E 0F           7172 	.dw	0,(Sswi2c$swi2c_recover$692)
      002138 00 00 8E 10           7173 	.dw	0,(Sswi2c$swi2c_recover$693)
      00213C 00                    7174 	.uleb128	0
      00213D 0A                    7175 	.uleb128	10
      00213E 06                    7176 	.db	6
      00213F 52                    7177 	.db	82
      002140 93                    7178 	.db	147
      002141 01                    7179 	.uleb128	1
      002142 51                    7180 	.db	81
      002143 93                    7181 	.db	147
      002144 01                    7182 	.uleb128	1
      002145 5F 5F 74 69 63 6B 73  7183 	.ascii "__ticks"
      00214C 00                    7184 	.db	0
      00214D 00 00 00 71           7185 	.dw	0,113
      002151 00                    7186 	.uleb128	0
      002152 0A                    7187 	.uleb128	10
      002153 02                    7188 	.db	2
      002154 91                    7189 	.db	145
      002155 00                    7190 	.sleb128	0
      002156 5F 5F 31 33 31 30 37  7191 	.ascii "__1310720010"
             32 30 30 31 30
      002162 00                    7192 	.db	0
      002163 00 00 00 71           7193 	.dw	0,113
      002167 00                    7194 	.uleb128	0
      002168 00                    7195 	.uleb128	0
      002169 0A                    7196 	.uleb128	10
      00216A 02                    7197 	.db	2
      00216B 91                    7198 	.db	145
      00216C 00                    7199 	.sleb128	0
      00216D 5F 5F 75 73           7200 	.ascii "__us"
      002171 00                    7201 	.db	0
      002172 00 00 00 9D           7202 	.dw	0,157
      002176 00                    7203 	.uleb128	0
      002177 0A                    7204 	.uleb128	10
      002178 02                    7205 	.db	2
      002179 91                    7206 	.db	145
      00217A 00                    7207 	.sleb128	0
      00217B 5F 5F 33 32 37 36 38  7208 	.ascii "__3276800042"
             30 30 30 34 32
      002187 00                    7209 	.db	0
      002188 00 00 00 9D           7210 	.dw	0,157
      00218C 00                    7211 	.uleb128	0
      00218D 04                    7212 	.uleb128	4
      00218E 00 00 8E 3D           7213 	.dw	0,(Sswi2c$swi2c_recover$708)
      002192 00 00 8E 3E           7214 	.dw	0,(Sswi2c$swi2c_recover$710)
      002196 04                    7215 	.uleb128	4
      002197 00 00 8E 4A           7216 	.dw	0,(Sswi2c$swi2c_recover$713)
      00219B 00 00 8E 4F           7217 	.dw	0,(Sswi2c$swi2c_recover$715)
      00219F 0F                    7218 	.uleb128	15
      0021A0 00 00 0E DE           7219 	.dw	0,3806
      0021A4 0F                    7220 	.uleb128	15
      0021A5 00 00 0E C8           7221 	.dw	0,3784
      0021A9 0F                    7222 	.uleb128	15
      0021AA 00 00 0E BA           7223 	.dw	0,3770
      0021AE 10                    7224 	.uleb128	16
      0021AF 08                    7225 	.uleb128	8
      0021B0 00 00 0E A3           7226 	.dw	0,3747
      0021B4 00 00 8E 4F           7227 	.dw	0,(Sswi2c$swi2c_recover$716)
      0021B8 09                    7228 	.uleb128	9
      0021B9 00 00 0E 8E           7229 	.dw	0,3726
      0021BD 00 00 8E 52           7230 	.dw	0,(Sswi2c$swi2c_recover$717)
      0021C1 00 00 8E 5C           7231 	.dw	0,(Sswi2c$swi2c_recover$722)
      0021C5 04                    7232 	.uleb128	4
      0021C6 00 00 8E 54           7233 	.dw	0,(Sswi2c$swi2c_recover$720)
      0021CA 00 00 8E 55           7234 	.dw	0,(Sswi2c$swi2c_recover$721)
      0021CE 00                    7235 	.uleb128	0
      0021CF 0A                    7236 	.uleb128	10
      0021D0 06                    7237 	.db	6
      0021D1 52                    7238 	.db	82
      0021D2 93                    7239 	.db	147
      0021D3 01                    7240 	.uleb128	1
      0021D4 51                    7241 	.db	81
      0021D5 93                    7242 	.db	147
      0021D6 01                    7243 	.uleb128	1
      0021D7 5F 5F 74 69 63 6B 73  7244 	.ascii "__ticks"
      0021DE 00                    7245 	.db	0
      0021DF 00 00 00 71           7246 	.dw	0,113
      0021E3 00                    7247 	.uleb128	0
      0021E4 0A                    7248 	.uleb128	10
      0021E5 02                    7249 	.db	2
      0021E6 91                    7250 	.db	145
      0021E7 00                    7251 	.sleb128	0
      0021E8 5F 5F 31 33 31 30 37  7252 	.ascii "__1310720010"
             32 30 30 31 30
      0021F4 00                    7253 	.db	0
      0021F5 00 00 00 71           7254 	.dw	0,113
      0021F9 00                    7255 	.uleb128	0
      0021FA 00                    7256 	.uleb128	0
      0021FB 0A                    7257 	.uleb128	10
      0021FC 02                    7258 	.db	2
      0021FD 91                    7259 	.db	145
      0021FE 00                    7260 	.sleb128	0
      0021FF 5F 5F 75 73           7261 	.ascii "__us"
      002203 00                    7262 	.db	0
      002204 00 00 00 9D           7263 	.dw	0,157
      002208 00                    7264 	.uleb128	0
      002209 0A                    7265 	.uleb128	10
      00220A 02                    7266 	.db	2
      00220B 91                    7267 	.db	145
      00220C 00                    7268 	.sleb128	0
      00220D 5F 5F 33 32 37 36 38  7269 	.ascii "__3276800044"
             30 30 30 34 34
      002219 00                    7270 	.db	0
      00221A 00 00 00 9D           7271 	.dw	0,157
      00221E 00                    7272 	.uleb128	0
      00221F 04                    7273 	.uleb128	4
      002220 00 00 8E 6D           7274 	.dw	0,(Sswi2c$swi2c_recover$728)
      002224 00 00 8E 75           7275 	.dw	0,(Sswi2c$swi2c_recover$731)
      002228 00                    7276 	.uleb128	0
      002229 00                    7277 	.uleb128	0
      00222A 0A                    7278 	.uleb128	10
      00222B 02                    7279 	.db	2
      00222C 91                    7280 	.db	145
      00222D 00                    7281 	.sleb128	0
      00222E 74 69 6D 65 6F 75 74  7282 	.ascii "timeout"
      002235 00                    7283 	.db	0
      002236 00 00 00 71           7284 	.dw	0,113
      00223A 0A                    7285 	.uleb128	10
      00223B 02                    7286 	.db	2
      00223C 91                    7287 	.db	145
      00223D 00                    7288 	.sleb128	0
      00223E 69                    7289 	.ascii "i"
      00223F 00                    7290 	.db	0
      002240 00 00 01 08           7291 	.dw	0,264
      002244 00                    7292 	.uleb128	0
      002245 00                    7293 	.uleb128	0
      002246 00                    7294 	.uleb128	0
      002247 00                    7295 	.uleb128	0
      002248                       7296 Ldebug_info_end:
                                   7297 
                                   7298 	.area .debug_pubnames (NOLOAD)
      000480 00 00 00 C1           7299 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000484                       7300 Ldebug_pubnames_start:
      000484 00 02                 7301 	.dw	2
      000486 00 00 13 41           7302 	.dw	0,(Ldebug_info_start-4)
      00048A 00 00 0F 07           7303 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      00048E 00 00 01 19           7304 	.dw	0,281
      000492 73 77 69 32 63 5F 72  7305 	.ascii "swi2c_read_buf"
             65 61 64 5F 62 75 66
      0004A0 00                    7306 	.db	0
      0004A1 00 00 02 AB           7307 	.dw	0,683
      0004A5 73 77 69 32 63 5F 77  7308 	.ascii "swi2c_write_buf"
             72 69 74 65 5F 62 75
             66
      0004B4 00                    7309 	.db	0
      0004B5 00 00 03 D5           7310 	.dw	0,981
      0004B9 73 77 69 32 63 5F 74  7311 	.ascii "swi2c_test_slave"
             65 73 74 5F 73 6C 61
             76 65
      0004C9 00                    7312 	.db	0
      0004CA 00 00 04 4F           7313 	.dw	0,1103
      0004CE 73 77 69 32 63 5F 69  7314 	.ascii "swi2c_init"
             6E 69 74
      0004D8 00                    7315 	.db	0
      0004D9 00 00 04 68           7316 	.dw	0,1128
      0004DD 73 77 69 32 63 5F 72  7317 	.ascii "swi2c_readbit"
             65 61 64 62 69 74
      0004EA 00                    7318 	.db	0
      0004EB 00 00 06 4F           7319 	.dw	0,1615
      0004EF 73 77 69 32 63 5F 77  7320 	.ascii "swi2c_writebit"
             72 69 74 65 62 69 74
      0004FD 00                    7321 	.db	0
      0004FE 00 00 08 35           7322 	.dw	0,2101
      000502 73 77 69 32 63 5F 52  7323 	.ascii "swi2c_RESTART"
             45 53 54 41 52 54
      00050F 00                    7324 	.db	0
      000510 00 00 0A 8E           7325 	.dw	0,2702
      000514 73 77 69 32 63 5F 53  7326 	.ascii "swi2c_START"
             54 41 52 54
      00051F 00                    7327 	.db	0
      000520 00 00 0B B6           7328 	.dw	0,2998
      000524 73 77 69 32 63 5F 53  7329 	.ascii "swi2c_STOP"
             54 4F 50
      00052E 00                    7330 	.db	0
      00052F 00 00 0D 0D           7331 	.dw	0,3341
      000533 73 77 69 32 63 5F 72  7332 	.ascii "swi2c_recover"
             65 63 6F 76 65 72
      000540 00                    7333 	.db	0
      000541 00 00 00 00           7334 	.dw	0,0
      000545                       7335 Ldebug_pubnames_end:
                                   7336 
                                   7337 	.area .debug_frame (NOLOAD)
      00128B 00 00                 7338 	.dw	0
      00128D 00 0E                 7339 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      00128F                       7340 Ldebug_CIE0_start:
      00128F FF FF                 7341 	.dw	0xffff
      001291 FF FF                 7342 	.dw	0xffff
      001293 01                    7343 	.db	1
      001294 00                    7344 	.db	0
      001295 01                    7345 	.uleb128	1
      001296 7F                    7346 	.sleb128	-1
      001297 09                    7347 	.db	9
      001298 0C                    7348 	.db	12
      001299 08                    7349 	.uleb128	8
      00129A 02                    7350 	.uleb128	2
      00129B 89                    7351 	.db	137
      00129C 01                    7352 	.uleb128	1
      00129D                       7353 Ldebug_CIE0_end:
      00129D 00 00 01 32           7354 	.dw	0,306
      0012A1 00 00 12 8B           7355 	.dw	0,(Ldebug_CIE0_start-4)
      0012A5 00 00 8D 9C           7356 	.dw	0,(Sswi2c$swi2c_recover$644)	;initial loc
      0012A9 00 00 00 E9           7357 	.dw	0,Sswi2c$swi2c_recover$740-Sswi2c$swi2c_recover$644
      0012AD 01                    7358 	.db	1
      0012AE 00 00 8D 9C           7359 	.dw	0,(Sswi2c$swi2c_recover$644)
      0012B2 0E                    7360 	.db	14
      0012B3 02                    7361 	.uleb128	2
      0012B4 01                    7362 	.db	1
      0012B5 00 00 8D 9E           7363 	.dw	0,(Sswi2c$swi2c_recover$645)
      0012B9 0E                    7364 	.db	14
      0012BA 05                    7365 	.uleb128	5
      0012BB 01                    7366 	.db	1
      0012BC 00 00 8D A5           7367 	.dw	0,(Sswi2c$swi2c_recover$648)
      0012C0 0E                    7368 	.db	14
      0012C1 06                    7369 	.uleb128	6
      0012C2 01                    7370 	.db	1
      0012C3 00 00 8D A7           7371 	.dw	0,(Sswi2c$swi2c_recover$649)
      0012C7 0E                    7372 	.db	14
      0012C8 07                    7373 	.uleb128	7
      0012C9 01                    7374 	.db	1
      0012CA 00 00 8D A9           7375 	.dw	0,(Sswi2c$swi2c_recover$650)
      0012CE 0E                    7376 	.db	14
      0012CF 08                    7377 	.uleb128	8
      0012D0 01                    7378 	.db	1
      0012D1 00 00 8D AE           7379 	.dw	0,(Sswi2c$swi2c_recover$651)
      0012D5 0E                    7380 	.db	14
      0012D6 05                    7381 	.uleb128	5
      0012D7 01                    7382 	.db	1
      0012D8 00 00 8D B0           7383 	.dw	0,(Sswi2c$swi2c_recover$653)
      0012DC 0E                    7384 	.db	14
      0012DD 06                    7385 	.uleb128	6
      0012DE 01                    7386 	.db	1
      0012DF 00 00 8D B2           7387 	.dw	0,(Sswi2c$swi2c_recover$654)
      0012E3 0E                    7388 	.db	14
      0012E4 07                    7389 	.uleb128	7
      0012E5 01                    7390 	.db	1
      0012E6 00 00 8D B4           7391 	.dw	0,(Sswi2c$swi2c_recover$655)
      0012EA 0E                    7392 	.db	14
      0012EB 08                    7393 	.uleb128	8
      0012EC 01                    7394 	.db	1
      0012ED 00 00 8D B9           7395 	.dw	0,(Sswi2c$swi2c_recover$656)
      0012F1 0E                    7396 	.db	14
      0012F2 05                    7397 	.uleb128	5
      0012F3 01                    7398 	.db	1
      0012F4 00 00 8D C8           7399 	.dw	0,(Sswi2c$swi2c_recover$665)
      0012F8 0E                    7400 	.db	14
      0012F9 06                    7401 	.uleb128	6
      0012FA 01                    7402 	.db	1
      0012FB 00 00 8D CA           7403 	.dw	0,(Sswi2c$swi2c_recover$666)
      0012FF 0E                    7404 	.db	14
      001300 07                    7405 	.uleb128	7
      001301 01                    7406 	.db	1
      001302 00 00 8D CC           7407 	.dw	0,(Sswi2c$swi2c_recover$667)
      001306 0E                    7408 	.db	14
      001307 08                    7409 	.uleb128	8
      001308 01                    7410 	.db	1
      001309 00 00 8D D1           7411 	.dw	0,(Sswi2c$swi2c_recover$668)
      00130D 0E                    7412 	.db	14
      00130E 05                    7413 	.uleb128	5
      00130F 01                    7414 	.db	1
      001310 00 00 8D D9           7415 	.dw	0,(Sswi2c$swi2c_recover$669)
      001314 0E                    7416 	.db	14
      001315 06                    7417 	.uleb128	6
      001316 01                    7418 	.db	1
      001317 00 00 8D DB           7419 	.dw	0,(Sswi2c$swi2c_recover$670)
      00131B 0E                    7420 	.db	14
      00131C 07                    7421 	.uleb128	7
      00131D 01                    7422 	.db	1
      00131E 00 00 8D DD           7423 	.dw	0,(Sswi2c$swi2c_recover$671)
      001322 0E                    7424 	.db	14
      001323 08                    7425 	.uleb128	8
      001324 01                    7426 	.db	1
      001325 00 00 8D E2           7427 	.dw	0,(Sswi2c$swi2c_recover$672)
      001329 0E                    7428 	.db	14
      00132A 05                    7429 	.uleb128	5
      00132B 01                    7430 	.db	1
      00132C 00 00 8D EE           7431 	.dw	0,(Sswi2c$swi2c_recover$677)
      001330 0E                    7432 	.db	14
      001331 06                    7433 	.uleb128	6
      001332 01                    7434 	.db	1
      001333 00 00 8D F0           7435 	.dw	0,(Sswi2c$swi2c_recover$678)
      001337 0E                    7436 	.db	14
      001338 07                    7437 	.uleb128	7
      001339 01                    7438 	.db	1
      00133A 00 00 8D F2           7439 	.dw	0,(Sswi2c$swi2c_recover$679)
      00133E 0E                    7440 	.db	14
      00133F 08                    7441 	.uleb128	8
      001340 01                    7442 	.db	1
      001341 00 00 8D F7           7443 	.dw	0,(Sswi2c$swi2c_recover$680)
      001345 0E                    7444 	.db	14
      001346 05                    7445 	.uleb128	5
      001347 01                    7446 	.db	1
      001348 00 00 8E 01           7447 	.dw	0,(Sswi2c$swi2c_recover$684)
      00134C 0E                    7448 	.db	14
      00134D 06                    7449 	.uleb128	6
      00134E 01                    7450 	.db	1
      00134F 00 00 8E 03           7451 	.dw	0,(Sswi2c$swi2c_recover$685)
      001353 0E                    7452 	.db	14
      001354 07                    7453 	.uleb128	7
      001355 01                    7454 	.db	1
      001356 00 00 8E 05           7455 	.dw	0,(Sswi2c$swi2c_recover$686)
      00135A 0E                    7456 	.db	14
      00135B 08                    7457 	.uleb128	8
      00135C 01                    7458 	.db	1
      00135D 00 00 8E 0A           7459 	.dw	0,(Sswi2c$swi2c_recover$687)
      001361 0E                    7460 	.db	14
      001362 05                    7461 	.uleb128	5
      001363 01                    7462 	.db	1
      001364 00 00 8E 19           7463 	.dw	0,(Sswi2c$swi2c_recover$696)
      001368 0E                    7464 	.db	14
      001369 06                    7465 	.uleb128	6
      00136A 01                    7466 	.db	1
      00136B 00 00 8E 1B           7467 	.dw	0,(Sswi2c$swi2c_recover$697)
      00136F 0E                    7468 	.db	14
      001370 07                    7469 	.uleb128	7
      001371 01                    7470 	.db	1
      001372 00 00 8E 1D           7471 	.dw	0,(Sswi2c$swi2c_recover$698)
      001376 0E                    7472 	.db	14
      001377 08                    7473 	.uleb128	8
      001378 01                    7474 	.db	1
      001379 00 00 8E 22           7475 	.dw	0,(Sswi2c$swi2c_recover$699)
      00137D 0E                    7476 	.db	14
      00137E 05                    7477 	.uleb128	5
      00137F 01                    7478 	.db	1
      001380 00 00 8E 25           7479 	.dw	0,(Sswi2c$swi2c_recover$702)
      001384 0E                    7480 	.db	14
      001385 07                    7481 	.uleb128	7
      001386 01                    7482 	.db	1
      001387 00 00 8E 27           7483 	.dw	0,(Sswi2c$swi2c_recover$703)
      00138B 0E                    7484 	.db	14
      00138C 08                    7485 	.uleb128	8
      00138D 01                    7486 	.db	1
      00138E 00 00 8E 29           7487 	.dw	0,(Sswi2c$swi2c_recover$704)
      001392 0E                    7488 	.db	14
      001393 09                    7489 	.uleb128	9
      001394 01                    7490 	.db	1
      001395 00 00 8E 2B           7491 	.dw	0,(Sswi2c$swi2c_recover$705)
      001399 0E                    7492 	.db	14
      00139A 0A                    7493 	.uleb128	10
      00139B 01                    7494 	.db	1
      00139C 00 00 8E 30           7495 	.dw	0,(Sswi2c$swi2c_recover$706)
      0013A0 0E                    7496 	.db	14
      0013A1 07                    7497 	.uleb128	7
      0013A2 01                    7498 	.db	1
      0013A3 00 00 8E 31           7499 	.dw	0,(Sswi2c$swi2c_recover$707)
      0013A7 0E                    7500 	.db	14
      0013A8 05                    7501 	.uleb128	5
      0013A9 01                    7502 	.db	1
      0013AA 00 00 8E 5E           7503 	.dw	0,(Sswi2c$swi2c_recover$724)
      0013AE 0E                    7504 	.db	14
      0013AF 06                    7505 	.uleb128	6
      0013B0 01                    7506 	.db	1
      0013B1 00 00 8E 60           7507 	.dw	0,(Sswi2c$swi2c_recover$725)
      0013B5 0E                    7508 	.db	14
      0013B6 07                    7509 	.uleb128	7
      0013B7 01                    7510 	.db	1
      0013B8 00 00 8E 62           7511 	.dw	0,(Sswi2c$swi2c_recover$726)
      0013BC 0E                    7512 	.db	14
      0013BD 08                    7513 	.uleb128	8
      0013BE 01                    7514 	.db	1
      0013BF 00 00 8E 67           7515 	.dw	0,(Sswi2c$swi2c_recover$727)
      0013C3 0E                    7516 	.db	14
      0013C4 05                    7517 	.uleb128	5
      0013C5 01                    7518 	.db	1
      0013C6 00 00 8E 6F           7519 	.dw	0,(Sswi2c$swi2c_recover$730)
      0013CA 0E                    7520 	.db	14
      0013CB 02                    7521 	.uleb128	2
      0013CC 01                    7522 	.db	1
      0013CD 00 00 8E 84           7523 	.dw	0,(Sswi2c$swi2c_recover$738)
      0013D1 0E                    7524 	.db	14
      0013D2 02                    7525 	.uleb128	2
                                   7526 
                                   7527 	.area .debug_frame (NOLOAD)
      0013D3 00 00                 7528 	.dw	0
      0013D5 00 0E                 7529 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0013D7                       7530 Ldebug_CIE1_start:
      0013D7 FF FF                 7531 	.dw	0xffff
      0013D9 FF FF                 7532 	.dw	0xffff
      0013DB 01                    7533 	.db	1
      0013DC 00                    7534 	.db	0
      0013DD 01                    7535 	.uleb128	1
      0013DE 7F                    7536 	.sleb128	-1
      0013DF 09                    7537 	.db	9
      0013E0 0C                    7538 	.db	12
      0013E1 08                    7539 	.uleb128	8
      0013E2 02                    7540 	.uleb128	2
      0013E3 89                    7541 	.db	137
      0013E4 01                    7542 	.uleb128	1
      0013E5                       7543 Ldebug_CIE1_end:
      0013E5 00 00 00 9F           7544 	.dw	0,159
      0013E9 00 00 13 D3           7545 	.dw	0,(Ldebug_CIE1_start-4)
      0013ED 00 00 8D 2A           7546 	.dw	0,(Sswi2c$swi2c_STOP$591)	;initial loc
      0013F1 00 00 00 72           7547 	.dw	0,Sswi2c$swi2c_STOP$642-Sswi2c$swi2c_STOP$591
      0013F5 01                    7548 	.db	1
      0013F6 00 00 8D 2A           7549 	.dw	0,(Sswi2c$swi2c_STOP$591)
      0013FA 0E                    7550 	.db	14
      0013FB 02                    7551 	.uleb128	2
      0013FC 01                    7552 	.db	1
      0013FD 00 00 8D 2C           7553 	.dw	0,(Sswi2c$swi2c_STOP$592)
      001401 0E                    7554 	.db	14
      001402 05                    7555 	.uleb128	5
      001403 01                    7556 	.db	1
      001404 00 00 8D 35           7557 	.dw	0,(Sswi2c$swi2c_STOP$596)
      001408 0E                    7558 	.db	14
      001409 06                    7559 	.uleb128	6
      00140A 01                    7560 	.db	1
      00140B 00 00 8D 37           7561 	.dw	0,(Sswi2c$swi2c_STOP$597)
      00140F 0E                    7562 	.db	14
      001410 07                    7563 	.uleb128	7
      001411 01                    7564 	.db	1
      001412 00 00 8D 39           7565 	.dw	0,(Sswi2c$swi2c_STOP$598)
      001416 0E                    7566 	.db	14
      001417 08                    7567 	.uleb128	8
      001418 01                    7568 	.db	1
      001419 00 00 8D 3E           7569 	.dw	0,(Sswi2c$swi2c_STOP$599)
      00141D 0E                    7570 	.db	14
      00141E 05                    7571 	.uleb128	5
      00141F 01                    7572 	.db	1
      001420 00 00 8D 4D           7573 	.dw	0,(Sswi2c$swi2c_STOP$608)
      001424 0E                    7574 	.db	14
      001425 06                    7575 	.uleb128	6
      001426 01                    7576 	.db	1
      001427 00 00 8D 4F           7577 	.dw	0,(Sswi2c$swi2c_STOP$609)
      00142B 0E                    7578 	.db	14
      00142C 07                    7579 	.uleb128	7
      00142D 01                    7580 	.db	1
      00142E 00 00 8D 51           7581 	.dw	0,(Sswi2c$swi2c_STOP$610)
      001432 0E                    7582 	.db	14
      001433 08                    7583 	.uleb128	8
      001434 01                    7584 	.db	1
      001435 00 00 8D 56           7585 	.dw	0,(Sswi2c$swi2c_STOP$611)
      001439 0E                    7586 	.db	14
      00143A 05                    7587 	.uleb128	5
      00143B 01                    7588 	.db	1
      00143C 00 00 8D 59           7589 	.dw	0,(Sswi2c$swi2c_STOP$613)
      001440 0E                    7590 	.db	14
      001441 07                    7591 	.uleb128	7
      001442 01                    7592 	.db	1
      001443 00 00 8D 5B           7593 	.dw	0,(Sswi2c$swi2c_STOP$614)
      001447 0E                    7594 	.db	14
      001448 08                    7595 	.uleb128	8
      001449 01                    7596 	.db	1
      00144A 00 00 8D 5D           7597 	.dw	0,(Sswi2c$swi2c_STOP$615)
      00144E 0E                    7598 	.db	14
      00144F 09                    7599 	.uleb128	9
      001450 01                    7600 	.db	1
      001451 00 00 8D 5F           7601 	.dw	0,(Sswi2c$swi2c_STOP$616)
      001455 0E                    7602 	.db	14
      001456 0A                    7603 	.uleb128	10
      001457 01                    7604 	.db	1
      001458 00 00 8D 64           7605 	.dw	0,(Sswi2c$swi2c_STOP$617)
      00145C 0E                    7606 	.db	14
      00145D 07                    7607 	.uleb128	7
      00145E 01                    7608 	.db	1
      00145F 00 00 8D 65           7609 	.dw	0,(Sswi2c$swi2c_STOP$618)
      001463 0E                    7610 	.db	14
      001464 05                    7611 	.uleb128	5
      001465 01                    7612 	.db	1
      001466 00 00 8D 8E           7613 	.dw	0,(Sswi2c$swi2c_STOP$634)
      00146A 0E                    7614 	.db	14
      00146B 06                    7615 	.uleb128	6
      00146C 01                    7616 	.db	1
      00146D 00 00 8D 90           7617 	.dw	0,(Sswi2c$swi2c_STOP$635)
      001471 0E                    7618 	.db	14
      001472 07                    7619 	.uleb128	7
      001473 01                    7620 	.db	1
      001474 00 00 8D 92           7621 	.dw	0,(Sswi2c$swi2c_STOP$636)
      001478 0E                    7622 	.db	14
      001479 08                    7623 	.uleb128	8
      00147A 01                    7624 	.db	1
      00147B 00 00 8D 97           7625 	.dw	0,(Sswi2c$swi2c_STOP$637)
      00147F 0E                    7626 	.db	14
      001480 05                    7627 	.uleb128	5
      001481 01                    7628 	.db	1
      001482 00 00 8D 9B           7629 	.dw	0,(Sswi2c$swi2c_STOP$640)
      001486 0E                    7630 	.db	14
      001487 02                    7631 	.uleb128	2
                                   7632 
                                   7633 	.area .debug_frame (NOLOAD)
      001488 00 00                 7634 	.dw	0
      00148A 00 0E                 7635 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      00148C                       7636 Ldebug_CIE2_start:
      00148C FF FF                 7637 	.dw	0xffff
      00148E FF FF                 7638 	.dw	0xffff
      001490 01                    7639 	.db	1
      001491 00                    7640 	.db	0
      001492 01                    7641 	.uleb128	1
      001493 7F                    7642 	.sleb128	-1
      001494 09                    7643 	.db	9
      001495 0C                    7644 	.db	12
      001496 08                    7645 	.uleb128	8
      001497 02                    7646 	.uleb128	2
      001498 89                    7647 	.db	137
      001499 01                    7648 	.uleb128	1
      00149A                       7649 Ldebug_CIE2_end:
      00149A 00 00 00 BB           7650 	.dw	0,187
      00149E 00 00 14 88           7651 	.dw	0,(Ldebug_CIE2_start-4)
      0014A2 00 00 8C BB           7652 	.dw	0,(Sswi2c$swi2c_START$539)	;initial loc
      0014A6 00 00 00 6F           7653 	.dw	0,Sswi2c$swi2c_START$589-Sswi2c$swi2c_START$539
      0014AA 01                    7654 	.db	1
      0014AB 00 00 8C BB           7655 	.dw	0,(Sswi2c$swi2c_START$539)
      0014AF 0E                    7656 	.db	14
      0014B0 02                    7657 	.uleb128	2
      0014B1 01                    7658 	.db	1
      0014B2 00 00 8C BD           7659 	.dw	0,(Sswi2c$swi2c_START$541)
      0014B6 0E                    7660 	.db	14
      0014B7 03                    7661 	.uleb128	3
      0014B8 01                    7662 	.db	1
      0014B9 00 00 8C BF           7663 	.dw	0,(Sswi2c$swi2c_START$542)
      0014BD 0E                    7664 	.db	14
      0014BE 04                    7665 	.uleb128	4
      0014BF 01                    7666 	.db	1
      0014C0 00 00 8C C1           7667 	.dw	0,(Sswi2c$swi2c_START$543)
      0014C4 0E                    7668 	.db	14
      0014C5 05                    7669 	.uleb128	5
      0014C6 01                    7670 	.db	1
      0014C7 00 00 8C C6           7671 	.dw	0,(Sswi2c$swi2c_START$544)
      0014CB 0E                    7672 	.db	14
      0014CC 02                    7673 	.uleb128	2
      0014CD 01                    7674 	.db	1
      0014CE 00 00 8C CE           7675 	.dw	0,(Sswi2c$swi2c_START$545)
      0014D2 0E                    7676 	.db	14
      0014D3 03                    7677 	.uleb128	3
      0014D4 01                    7678 	.db	1
      0014D5 00 00 8C D0           7679 	.dw	0,(Sswi2c$swi2c_START$546)
      0014D9 0E                    7680 	.db	14
      0014DA 04                    7681 	.uleb128	4
      0014DB 01                    7682 	.db	1
      0014DC 00 00 8C D2           7683 	.dw	0,(Sswi2c$swi2c_START$547)
      0014E0 0E                    7684 	.db	14
      0014E1 05                    7685 	.uleb128	5
      0014E2 01                    7686 	.db	1
      0014E3 00 00 8C D7           7687 	.dw	0,(Sswi2c$swi2c_START$548)
      0014E7 0E                    7688 	.db	14
      0014E8 02                    7689 	.uleb128	2
      0014E9 01                    7690 	.db	1
      0014EA 00 00 8C DF           7691 	.dw	0,(Sswi2c$swi2c_START$551)
      0014EE 0E                    7692 	.db	14
      0014EF 03                    7693 	.uleb128	3
      0014F0 01                    7694 	.db	1
      0014F1 00 00 8C E1           7695 	.dw	0,(Sswi2c$swi2c_START$552)
      0014F5 0E                    7696 	.db	14
      0014F6 04                    7697 	.uleb128	4
      0014F7 01                    7698 	.db	1
      0014F8 00 00 8C E3           7699 	.dw	0,(Sswi2c$swi2c_START$553)
      0014FC 0E                    7700 	.db	14
      0014FD 05                    7701 	.uleb128	5
      0014FE 01                    7702 	.db	1
      0014FF 00 00 8C E8           7703 	.dw	0,(Sswi2c$swi2c_START$554)
      001503 0E                    7704 	.db	14
      001504 02                    7705 	.uleb128	2
      001505 01                    7706 	.db	1
      001506 00 00 8C EA           7707 	.dw	0,(Sswi2c$swi2c_START$556)
      00150A 0E                    7708 	.db	14
      00150B 03                    7709 	.uleb128	3
      00150C 01                    7710 	.db	1
      00150D 00 00 8C EC           7711 	.dw	0,(Sswi2c$swi2c_START$557)
      001511 0E                    7712 	.db	14
      001512 04                    7713 	.uleb128	4
      001513 01                    7714 	.db	1
      001514 00 00 8C EE           7715 	.dw	0,(Sswi2c$swi2c_START$558)
      001518 0E                    7716 	.db	14
      001519 05                    7717 	.uleb128	5
      00151A 01                    7718 	.db	1
      00151B 00 00 8C F3           7719 	.dw	0,(Sswi2c$swi2c_START$559)
      00151F 0E                    7720 	.db	14
      001520 02                    7721 	.uleb128	2
      001521 01                    7722 	.db	1
      001522 00 00 8C FA           7723 	.dw	0,(Sswi2c$swi2c_START$563)
      001526 0E                    7724 	.db	14
      001527 03                    7725 	.uleb128	3
      001528 01                    7726 	.db	1
      001529 00 00 8C FC           7727 	.dw	0,(Sswi2c$swi2c_START$564)
      00152D 0E                    7728 	.db	14
      00152E 04                    7729 	.uleb128	4
      00152F 01                    7730 	.db	1
      001530 00 00 8C FE           7731 	.dw	0,(Sswi2c$swi2c_START$565)
      001534 0E                    7732 	.db	14
      001535 05                    7733 	.uleb128	5
      001536 01                    7734 	.db	1
      001537 00 00 8D 03           7735 	.dw	0,(Sswi2c$swi2c_START$566)
      00153B 0E                    7736 	.db	14
      00153C 02                    7737 	.uleb128	2
      00153D 01                    7738 	.db	1
      00153E 00 00 8D 12           7739 	.dw	0,(Sswi2c$swi2c_START$575)
      001542 0E                    7740 	.db	14
      001543 03                    7741 	.uleb128	3
      001544 01                    7742 	.db	1
      001545 00 00 8D 14           7743 	.dw	0,(Sswi2c$swi2c_START$576)
      001549 0E                    7744 	.db	14
      00154A 04                    7745 	.uleb128	4
      00154B 01                    7746 	.db	1
      00154C 00 00 8D 16           7747 	.dw	0,(Sswi2c$swi2c_START$577)
      001550 0E                    7748 	.db	14
      001551 05                    7749 	.uleb128	5
      001552 01                    7750 	.db	1
      001553 00 00 8D 1B           7751 	.dw	0,(Sswi2c$swi2c_START$578)
      001557 0E                    7752 	.db	14
      001558 02                    7753 	.uleb128	2
                                   7754 
                                   7755 	.area .debug_frame (NOLOAD)
      001559 00 00                 7756 	.dw	0
      00155B 00 0E                 7757 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      00155D                       7758 Ldebug_CIE3_start:
      00155D FF FF                 7759 	.dw	0xffff
      00155F FF FF                 7760 	.dw	0xffff
      001561 01                    7761 	.db	1
      001562 00                    7762 	.db	0
      001563 01                    7763 	.uleb128	1
      001564 7F                    7764 	.sleb128	-1
      001565 09                    7765 	.db	9
      001566 0C                    7766 	.db	12
      001567 08                    7767 	.uleb128	8
      001568 02                    7768 	.uleb128	2
      001569 89                    7769 	.db	137
      00156A 01                    7770 	.uleb128	1
      00156B                       7771 Ldebug_CIE3_end:
      00156B 00 00 01 39           7772 	.dw	0,313
      00156F 00 00 15 59           7773 	.dw	0,(Ldebug_CIE3_start-4)
      001573 00 00 8B E6           7774 	.dw	0,(Sswi2c$swi2c_RESTART$440)	;initial loc
      001577 00 00 00 D5           7775 	.dw	0,Sswi2c$swi2c_RESTART$537-Sswi2c$swi2c_RESTART$440
      00157B 01                    7776 	.db	1
      00157C 00 00 8B E6           7777 	.dw	0,(Sswi2c$swi2c_RESTART$440)
      001580 0E                    7778 	.db	14
      001581 02                    7779 	.uleb128	2
      001582 01                    7780 	.db	1
      001583 00 00 8B E7           7781 	.dw	0,(Sswi2c$swi2c_RESTART$441)
      001587 0E                    7782 	.db	14
      001588 04                    7783 	.uleb128	4
      001589 01                    7784 	.db	1
      00158A 00 00 8B EA           7785 	.dw	0,(Sswi2c$swi2c_RESTART$444)
      00158E 0E                    7786 	.db	14
      00158F 06                    7787 	.uleb128	6
      001590 01                    7788 	.db	1
      001591 00 00 8B EC           7789 	.dw	0,(Sswi2c$swi2c_RESTART$445)
      001595 0E                    7790 	.db	14
      001596 07                    7791 	.uleb128	7
      001597 01                    7792 	.db	1
      001598 00 00 8B EE           7793 	.dw	0,(Sswi2c$swi2c_RESTART$446)
      00159C 0E                    7794 	.db	14
      00159D 08                    7795 	.uleb128	8
      00159E 01                    7796 	.db	1
      00159F 00 00 8B F0           7797 	.dw	0,(Sswi2c$swi2c_RESTART$447)
      0015A3 0E                    7798 	.db	14
      0015A4 09                    7799 	.uleb128	9
      0015A5 01                    7800 	.db	1
      0015A6 00 00 8B F5           7801 	.dw	0,(Sswi2c$swi2c_RESTART$448)
      0015AA 0E                    7802 	.db	14
      0015AB 06                    7803 	.uleb128	6
      0015AC 01                    7804 	.db	1
      0015AD 00 00 8B F6           7805 	.dw	0,(Sswi2c$swi2c_RESTART$449)
      0015B1 0E                    7806 	.db	14
      0015B2 04                    7807 	.uleb128	4
      0015B3 01                    7808 	.db	1
      0015B4 00 00 8B F7           7809 	.dw	0,(Sswi2c$swi2c_RESTART$451)
      0015B8 0E                    7810 	.db	14
      0015B9 06                    7811 	.uleb128	6
      0015BA 01                    7812 	.db	1
      0015BB 00 00 8B F9           7813 	.dw	0,(Sswi2c$swi2c_RESTART$452)
      0015BF 0E                    7814 	.db	14
      0015C0 07                    7815 	.uleb128	7
      0015C1 01                    7816 	.db	1
      0015C2 00 00 8B FB           7817 	.dw	0,(Sswi2c$swi2c_RESTART$453)
      0015C6 0E                    7818 	.db	14
      0015C7 08                    7819 	.uleb128	8
      0015C8 01                    7820 	.db	1
      0015C9 00 00 8B FD           7821 	.dw	0,(Sswi2c$swi2c_RESTART$454)
      0015CD 0E                    7822 	.db	14
      0015CE 09                    7823 	.uleb128	9
      0015CF 01                    7824 	.db	1
      0015D0 00 00 8C 02           7825 	.dw	0,(Sswi2c$swi2c_RESTART$455)
      0015D4 0E                    7826 	.db	14
      0015D5 06                    7827 	.uleb128	6
      0015D6 01                    7828 	.db	1
      0015D7 00 00 8C 03           7829 	.dw	0,(Sswi2c$swi2c_RESTART$456)
      0015DB 0E                    7830 	.db	14
      0015DC 04                    7831 	.uleb128	4
      0015DD 01                    7832 	.db	1
      0015DE 00 00 8C 04           7833 	.dw	0,(Sswi2c$swi2c_RESTART$458)
      0015E2 0E                    7834 	.db	14
      0015E3 06                    7835 	.uleb128	6
      0015E4 01                    7836 	.db	1
      0015E5 00 00 8C 06           7837 	.dw	0,(Sswi2c$swi2c_RESTART$459)
      0015E9 0E                    7838 	.db	14
      0015EA 07                    7839 	.uleb128	7
      0015EB 01                    7840 	.db	1
      0015EC 00 00 8C 08           7841 	.dw	0,(Sswi2c$swi2c_RESTART$460)
      0015F0 0E                    7842 	.db	14
      0015F1 08                    7843 	.uleb128	8
      0015F2 01                    7844 	.db	1
      0015F3 00 00 8C 0A           7845 	.dw	0,(Sswi2c$swi2c_RESTART$461)
      0015F7 0E                    7846 	.db	14
      0015F8 09                    7847 	.uleb128	9
      0015F9 01                    7848 	.db	1
      0015FA 00 00 8C 0F           7849 	.dw	0,(Sswi2c$swi2c_RESTART$462)
      0015FE 0E                    7850 	.db	14
      0015FF 06                    7851 	.uleb128	6
      001600 01                    7852 	.db	1
      001601 00 00 8C 10           7853 	.dw	0,(Sswi2c$swi2c_RESTART$463)
      001605 0E                    7854 	.db	14
      001606 04                    7855 	.uleb128	4
      001607 01                    7856 	.db	1
      001608 00 00 8C 2B           7857 	.dw	0,(Sswi2c$swi2c_RESTART$470)
      00160C 0E                    7858 	.db	14
      00160D 05                    7859 	.uleb128	5
      00160E 01                    7860 	.db	1
      00160F 00 00 8C 2D           7861 	.dw	0,(Sswi2c$swi2c_RESTART$471)
      001613 0E                    7862 	.db	14
      001614 06                    7863 	.uleb128	6
      001615 01                    7864 	.db	1
      001616 00 00 8C 2F           7865 	.dw	0,(Sswi2c$swi2c_RESTART$472)
      00161A 0E                    7866 	.db	14
      00161B 07                    7867 	.uleb128	7
      00161C 01                    7868 	.db	1
      00161D 00 00 8C 34           7869 	.dw	0,(Sswi2c$swi2c_RESTART$473)
      001621 0E                    7870 	.db	14
      001622 04                    7871 	.uleb128	4
      001623 01                    7872 	.db	1
      001624 00 00 8C 48           7873 	.dw	0,(Sswi2c$swi2c_RESTART$484)
      001628 0E                    7874 	.db	14
      001629 05                    7875 	.uleb128	5
      00162A 01                    7876 	.db	1
      00162B 00 00 8C 4A           7877 	.dw	0,(Sswi2c$swi2c_RESTART$485)
      00162F 0E                    7878 	.db	14
      001630 06                    7879 	.uleb128	6
      001631 01                    7880 	.db	1
      001632 00 00 8C 4C           7881 	.dw	0,(Sswi2c$swi2c_RESTART$486)
      001636 0E                    7882 	.db	14
      001637 07                    7883 	.uleb128	7
      001638 01                    7884 	.db	1
      001639 00 00 8C 51           7885 	.dw	0,(Sswi2c$swi2c_RESTART$487)
      00163D 0E                    7886 	.db	14
      00163E 04                    7887 	.uleb128	4
      00163F 01                    7888 	.db	1
      001640 00 00 8C 54           7889 	.dw	0,(Sswi2c$swi2c_RESTART$489)
      001644 0E                    7890 	.db	14
      001645 06                    7891 	.uleb128	6
      001646 01                    7892 	.db	1
      001647 00 00 8C 56           7893 	.dw	0,(Sswi2c$swi2c_RESTART$490)
      00164B 0E                    7894 	.db	14
      00164C 07                    7895 	.uleb128	7
      00164D 01                    7896 	.db	1
      00164E 00 00 8C 58           7897 	.dw	0,(Sswi2c$swi2c_RESTART$491)
      001652 0E                    7898 	.db	14
      001653 08                    7899 	.uleb128	8
      001654 01                    7900 	.db	1
      001655 00 00 8C 5A           7901 	.dw	0,(Sswi2c$swi2c_RESTART$492)
      001659 0E                    7902 	.db	14
      00165A 09                    7903 	.uleb128	9
      00165B 01                    7904 	.db	1
      00165C 00 00 8C 5F           7905 	.dw	0,(Sswi2c$swi2c_RESTART$493)
      001660 0E                    7906 	.db	14
      001661 06                    7907 	.uleb128	6
      001662 01                    7908 	.db	1
      001663 00 00 8C 60           7909 	.dw	0,(Sswi2c$swi2c_RESTART$494)
      001667 0E                    7910 	.db	14
      001668 04                    7911 	.uleb128	4
      001669 01                    7912 	.db	1
      00166A 00 00 8C 8A           7913 	.dw	0,(Sswi2c$swi2c_RESTART$510)
      00166E 0E                    7914 	.db	14
      00166F 05                    7915 	.uleb128	5
      001670 01                    7916 	.db	1
      001671 00 00 8C 8C           7917 	.dw	0,(Sswi2c$swi2c_RESTART$511)
      001675 0E                    7918 	.db	14
      001676 06                    7919 	.uleb128	6
      001677 01                    7920 	.db	1
      001678 00 00 8C 8E           7921 	.dw	0,(Sswi2c$swi2c_RESTART$512)
      00167C 0E                    7922 	.db	14
      00167D 07                    7923 	.uleb128	7
      00167E 01                    7924 	.db	1
      00167F 00 00 8C 93           7925 	.dw	0,(Sswi2c$swi2c_RESTART$513)
      001683 0E                    7926 	.db	14
      001684 04                    7927 	.uleb128	4
      001685 01                    7928 	.db	1
      001686 00 00 8C A2           7929 	.dw	0,(Sswi2c$swi2c_RESTART$522)
      00168A 0E                    7930 	.db	14
      00168B 05                    7931 	.uleb128	5
      00168C 01                    7932 	.db	1
      00168D 00 00 8C A4           7933 	.dw	0,(Sswi2c$swi2c_RESTART$523)
      001691 0E                    7934 	.db	14
      001692 06                    7935 	.uleb128	6
      001693 01                    7936 	.db	1
      001694 00 00 8C A6           7937 	.dw	0,(Sswi2c$swi2c_RESTART$524)
      001698 0E                    7938 	.db	14
      001699 07                    7939 	.uleb128	7
      00169A 01                    7940 	.db	1
      00169B 00 00 8C AB           7941 	.dw	0,(Sswi2c$swi2c_RESTART$525)
      00169F 0E                    7942 	.db	14
      0016A0 04                    7943 	.uleb128	4
      0016A1 01                    7944 	.db	1
      0016A2 00 00 8C BA           7945 	.dw	0,(Sswi2c$swi2c_RESTART$535)
      0016A6 0E                    7946 	.db	14
      0016A7 02                    7947 	.uleb128	2
                                   7948 
                                   7949 	.area .debug_frame (NOLOAD)
      0016A8 00 00                 7950 	.dw	0
      0016AA 00 0E                 7951 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      0016AC                       7952 Ldebug_CIE4_start:
      0016AC FF FF                 7953 	.dw	0xffff
      0016AE FF FF                 7954 	.dw	0xffff
      0016B0 01                    7955 	.db	1
      0016B1 00                    7956 	.db	0
      0016B2 01                    7957 	.uleb128	1
      0016B3 7F                    7958 	.sleb128	-1
      0016B4 09                    7959 	.db	9
      0016B5 0C                    7960 	.db	12
      0016B6 08                    7961 	.uleb128	8
      0016B7 02                    7962 	.uleb128	2
      0016B8 89                    7963 	.db	137
      0016B9 01                    7964 	.uleb128	1
      0016BA                       7965 Ldebug_CIE4_end:
      0016BA 00 00 00 D7           7966 	.dw	0,215
      0016BE 00 00 16 A8           7967 	.dw	0,(Ldebug_CIE4_start-4)
      0016C2 00 00 8B 48           7968 	.dw	0,(Sswi2c$swi2c_writebit$366)	;initial loc
      0016C6 00 00 00 9E           7969 	.dw	0,Sswi2c$swi2c_writebit$438-Sswi2c$swi2c_writebit$366
      0016CA 01                    7970 	.db	1
      0016CB 00 00 8B 48           7971 	.dw	0,(Sswi2c$swi2c_writebit$366)
      0016CF 0E                    7972 	.db	14
      0016D0 02                    7973 	.uleb128	2
      0016D1 01                    7974 	.db	1
      0016D2 00 00 8B 49           7975 	.dw	0,(Sswi2c$swi2c_writebit$367)
      0016D6 0E                    7976 	.db	14
      0016D7 04                    7977 	.uleb128	4
      0016D8 01                    7978 	.db	1
      0016D9 00 00 8B 57           7979 	.dw	0,(Sswi2c$swi2c_writebit$372)
      0016DD 0E                    7980 	.db	14
      0016DE 05                    7981 	.uleb128	5
      0016DF 01                    7982 	.db	1
      0016E0 00 00 8B 59           7983 	.dw	0,(Sswi2c$swi2c_writebit$373)
      0016E4 0E                    7984 	.db	14
      0016E5 06                    7985 	.uleb128	6
      0016E6 01                    7986 	.db	1
      0016E7 00 00 8B 5B           7987 	.dw	0,(Sswi2c$swi2c_writebit$374)
      0016EB 0E                    7988 	.db	14
      0016EC 07                    7989 	.uleb128	7
      0016ED 01                    7990 	.db	1
      0016EE 00 00 8B 60           7991 	.dw	0,(Sswi2c$swi2c_writebit$375)
      0016F2 0E                    7992 	.db	14
      0016F3 04                    7993 	.uleb128	4
      0016F4 01                    7994 	.db	1
      0016F5 00 00 8B 65           7995 	.dw	0,(Sswi2c$swi2c_writebit$379)
      0016F9 0E                    7996 	.db	14
      0016FA 05                    7997 	.uleb128	5
      0016FB 01                    7998 	.db	1
      0016FC 00 00 8B 67           7999 	.dw	0,(Sswi2c$swi2c_writebit$380)
      001700 0E                    8000 	.db	14
      001701 06                    8001 	.uleb128	6
      001702 01                    8002 	.db	1
      001703 00 00 8B 69           8003 	.dw	0,(Sswi2c$swi2c_writebit$381)
      001707 0E                    8004 	.db	14
      001708 07                    8005 	.uleb128	7
      001709 01                    8006 	.db	1
      00170A 00 00 8B 6E           8007 	.dw	0,(Sswi2c$swi2c_writebit$382)
      00170E 0E                    8008 	.db	14
      00170F 04                    8009 	.uleb128	4
      001710 01                    8010 	.db	1
      001711 00 00 8B 7D           8011 	.dw	0,(Sswi2c$swi2c_writebit$392)
      001715 0E                    8012 	.db	14
      001716 05                    8013 	.uleb128	5
      001717 01                    8014 	.db	1
      001718 00 00 8B 7F           8015 	.dw	0,(Sswi2c$swi2c_writebit$393)
      00171C 0E                    8016 	.db	14
      00171D 06                    8017 	.uleb128	6
      00171E 01                    8018 	.db	1
      00171F 00 00 8B 81           8019 	.dw	0,(Sswi2c$swi2c_writebit$394)
      001723 0E                    8020 	.db	14
      001724 07                    8021 	.uleb128	7
      001725 01                    8022 	.db	1
      001726 00 00 8B 86           8023 	.dw	0,(Sswi2c$swi2c_writebit$395)
      00172A 0E                    8024 	.db	14
      00172B 04                    8025 	.uleb128	4
      00172C 01                    8026 	.db	1
      00172D 00 00 8B 89           8027 	.dw	0,(Sswi2c$swi2c_writebit$397)
      001731 0E                    8028 	.db	14
      001732 06                    8029 	.uleb128	6
      001733 01                    8030 	.db	1
      001734 00 00 8B 8B           8031 	.dw	0,(Sswi2c$swi2c_writebit$398)
      001738 0E                    8032 	.db	14
      001739 07                    8033 	.uleb128	7
      00173A 01                    8034 	.db	1
      00173B 00 00 8B 8D           8035 	.dw	0,(Sswi2c$swi2c_writebit$399)
      00173F 0E                    8036 	.db	14
      001740 08                    8037 	.uleb128	8
      001741 01                    8038 	.db	1
      001742 00 00 8B 8F           8039 	.dw	0,(Sswi2c$swi2c_writebit$400)
      001746 0E                    8040 	.db	14
      001747 09                    8041 	.uleb128	9
      001748 01                    8042 	.db	1
      001749 00 00 8B 94           8043 	.dw	0,(Sswi2c$swi2c_writebit$401)
      00174D 0E                    8044 	.db	14
      00174E 06                    8045 	.uleb128	6
      00174F 01                    8046 	.db	1
      001750 00 00 8B 95           8047 	.dw	0,(Sswi2c$swi2c_writebit$402)
      001754 0E                    8048 	.db	14
      001755 04                    8049 	.uleb128	4
      001756 01                    8050 	.db	1
      001757 00 00 8B B0           8051 	.dw	0,(Sswi2c$swi2c_writebit$409)
      00175B 0E                    8052 	.db	14
      00175C 05                    8053 	.uleb128	5
      00175D 01                    8054 	.db	1
      00175E 00 00 8B B2           8055 	.dw	0,(Sswi2c$swi2c_writebit$410)
      001762 0E                    8056 	.db	14
      001763 06                    8057 	.uleb128	6
      001764 01                    8058 	.db	1
      001765 00 00 8B B4           8059 	.dw	0,(Sswi2c$swi2c_writebit$411)
      001769 0E                    8060 	.db	14
      00176A 07                    8061 	.uleb128	7
      00176B 01                    8062 	.db	1
      00176C 00 00 8B B9           8063 	.dw	0,(Sswi2c$swi2c_writebit$412)
      001770 0E                    8064 	.db	14
      001771 04                    8065 	.uleb128	4
      001772 01                    8066 	.db	1
      001773 00 00 8B CD           8067 	.dw	0,(Sswi2c$swi2c_writebit$423)
      001777 0E                    8068 	.db	14
      001778 05                    8069 	.uleb128	5
      001779 01                    8070 	.db	1
      00177A 00 00 8B CF           8071 	.dw	0,(Sswi2c$swi2c_writebit$424)
      00177E 0E                    8072 	.db	14
      00177F 06                    8073 	.uleb128	6
      001780 01                    8074 	.db	1
      001781 00 00 8B D1           8075 	.dw	0,(Sswi2c$swi2c_writebit$425)
      001785 0E                    8076 	.db	14
      001786 07                    8077 	.uleb128	7
      001787 01                    8078 	.db	1
      001788 00 00 8B D6           8079 	.dw	0,(Sswi2c$swi2c_writebit$426)
      00178C 0E                    8080 	.db	14
      00178D 04                    8081 	.uleb128	4
      00178E 01                    8082 	.db	1
      00178F 00 00 8B E5           8083 	.dw	0,(Sswi2c$swi2c_writebit$436)
      001793 0E                    8084 	.db	14
      001794 02                    8085 	.uleb128	2
                                   8086 
                                   8087 	.area .debug_frame (NOLOAD)
      001795 00 00                 8088 	.dw	0
      001797 00 0E                 8089 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      001799                       8090 Ldebug_CIE5_start:
      001799 FF FF                 8091 	.dw	0xffff
      00179B FF FF                 8092 	.dw	0xffff
      00179D 01                    8093 	.db	1
      00179E 00                    8094 	.db	0
      00179F 01                    8095 	.uleb128	1
      0017A0 7F                    8096 	.sleb128	-1
      0017A1 09                    8097 	.db	9
      0017A2 0C                    8098 	.db	12
      0017A3 08                    8099 	.uleb128	8
      0017A4 02                    8100 	.uleb128	2
      0017A5 89                    8101 	.db	137
      0017A6 01                    8102 	.uleb128	1
      0017A7                       8103 Ldebug_CIE5_end:
      0017A7 00 00 00 C9           8104 	.dw	0,201
      0017AB 00 00 17 95           8105 	.dw	0,(Ldebug_CIE5_start-4)
      0017AF 00 00 8A B2           8106 	.dw	0,(Sswi2c$swi2c_readbit$294)	;initial loc
      0017B3 00 00 00 96           8107 	.dw	0,Sswi2c$swi2c_readbit$364-Sswi2c$swi2c_readbit$294
      0017B7 01                    8108 	.db	1
      0017B8 00 00 8A B2           8109 	.dw	0,(Sswi2c$swi2c_readbit$294)
      0017BC 0E                    8110 	.db	14
      0017BD 02                    8111 	.uleb128	2
      0017BE 01                    8112 	.db	1
      0017BF 00 00 8A B3           8113 	.dw	0,(Sswi2c$swi2c_readbit$295)
      0017C3 0E                    8114 	.db	14
      0017C4 04                    8115 	.uleb128	4
      0017C5 01                    8116 	.db	1
      0017C6 00 00 8A BA           8117 	.dw	0,(Sswi2c$swi2c_readbit$298)
      0017CA 0E                    8118 	.db	14
      0017CB 05                    8119 	.uleb128	5
      0017CC 01                    8120 	.db	1
      0017CD 00 00 8A BC           8121 	.dw	0,(Sswi2c$swi2c_readbit$299)
      0017D1 0E                    8122 	.db	14
      0017D2 06                    8123 	.uleb128	6
      0017D3 01                    8124 	.db	1
      0017D4 00 00 8A BE           8125 	.dw	0,(Sswi2c$swi2c_readbit$300)
      0017D8 0E                    8126 	.db	14
      0017D9 07                    8127 	.uleb128	7
      0017DA 01                    8128 	.db	1
      0017DB 00 00 8A C3           8129 	.dw	0,(Sswi2c$swi2c_readbit$301)
      0017DF 0E                    8130 	.db	14
      0017E0 04                    8131 	.uleb128	4
      0017E1 01                    8132 	.db	1
      0017E2 00 00 8A D2           8133 	.dw	0,(Sswi2c$swi2c_readbit$310)
      0017E6 0E                    8134 	.db	14
      0017E7 05                    8135 	.uleb128	5
      0017E8 01                    8136 	.db	1
      0017E9 00 00 8A D4           8137 	.dw	0,(Sswi2c$swi2c_readbit$311)
      0017ED 0E                    8138 	.db	14
      0017EE 06                    8139 	.uleb128	6
      0017EF 01                    8140 	.db	1
      0017F0 00 00 8A D6           8141 	.dw	0,(Sswi2c$swi2c_readbit$312)
      0017F4 0E                    8142 	.db	14
      0017F5 07                    8143 	.uleb128	7
      0017F6 01                    8144 	.db	1
      0017F7 00 00 8A DB           8145 	.dw	0,(Sswi2c$swi2c_readbit$313)
      0017FB 0E                    8146 	.db	14
      0017FC 04                    8147 	.uleb128	4
      0017FD 01                    8148 	.db	1
      0017FE 00 00 8A DE           8149 	.dw	0,(Sswi2c$swi2c_readbit$315)
      001802 0E                    8150 	.db	14
      001803 06                    8151 	.uleb128	6
      001804 01                    8152 	.db	1
      001805 00 00 8A E0           8153 	.dw	0,(Sswi2c$swi2c_readbit$316)
      001809 0E                    8154 	.db	14
      00180A 07                    8155 	.uleb128	7
      00180B 01                    8156 	.db	1
      00180C 00 00 8A E2           8157 	.dw	0,(Sswi2c$swi2c_readbit$317)
      001810 0E                    8158 	.db	14
      001811 08                    8159 	.uleb128	8
      001812 01                    8160 	.db	1
      001813 00 00 8A E4           8161 	.dw	0,(Sswi2c$swi2c_readbit$318)
      001817 0E                    8162 	.db	14
      001818 09                    8163 	.uleb128	9
      001819 01                    8164 	.db	1
      00181A 00 00 8A E9           8165 	.dw	0,(Sswi2c$swi2c_readbit$319)
      00181E 0E                    8166 	.db	14
      00181F 06                    8167 	.uleb128	6
      001820 01                    8168 	.db	1
      001821 00 00 8A EA           8169 	.dw	0,(Sswi2c$swi2c_readbit$320)
      001825 0E                    8170 	.db	14
      001826 04                    8171 	.uleb128	4
      001827 01                    8172 	.db	1
      001828 00 00 8B 17           8173 	.dw	0,(Sswi2c$swi2c_readbit$336)
      00182C 0E                    8174 	.db	14
      00182D 05                    8175 	.uleb128	5
      00182E 01                    8176 	.db	1
      00182F 00 00 8B 19           8177 	.dw	0,(Sswi2c$swi2c_readbit$337)
      001833 0E                    8178 	.db	14
      001834 06                    8179 	.uleb128	6
      001835 01                    8180 	.db	1
      001836 00 00 8B 1B           8181 	.dw	0,(Sswi2c$swi2c_readbit$338)
      00183A 0E                    8182 	.db	14
      00183B 07                    8183 	.uleb128	7
      00183C 01                    8184 	.db	1
      00183D 00 00 8B 20           8185 	.dw	0,(Sswi2c$swi2c_readbit$339)
      001841 0E                    8186 	.db	14
      001842 04                    8187 	.uleb128	4
      001843 01                    8188 	.db	1
      001844 00 00 8B 2D           8189 	.dw	0,(Sswi2c$swi2c_readbit$347)
      001848 0E                    8190 	.db	14
      001849 05                    8191 	.uleb128	5
      00184A 01                    8192 	.db	1
      00184B 00 00 8B 2F           8193 	.dw	0,(Sswi2c$swi2c_readbit$348)
      00184F 0E                    8194 	.db	14
      001850 06                    8195 	.uleb128	6
      001851 01                    8196 	.db	1
      001852 00 00 8B 31           8197 	.dw	0,(Sswi2c$swi2c_readbit$349)
      001856 0E                    8198 	.db	14
      001857 07                    8199 	.uleb128	7
      001858 01                    8200 	.db	1
      001859 00 00 8B 33           8201 	.dw	0,(Sswi2c$swi2c_readbit$350)
      00185D 0E                    8202 	.db	14
      00185E 08                    8203 	.uleb128	8
      00185F 01                    8204 	.db	1
      001860 00 00 8B 38           8205 	.dw	0,(Sswi2c$swi2c_readbit$351)
      001864 0E                    8206 	.db	14
      001865 05                    8207 	.uleb128	5
      001866 01                    8208 	.db	1
      001867 00 00 8B 39           8209 	.dw	0,(Sswi2c$swi2c_readbit$352)
      00186B 0E                    8210 	.db	14
      00186C 04                    8211 	.uleb128	4
      00186D 01                    8212 	.db	1
      00186E 00 00 8B 47           8213 	.dw	0,(Sswi2c$swi2c_readbit$362)
      001872 0E                    8214 	.db	14
      001873 02                    8215 	.uleb128	2
                                   8216 
                                   8217 	.area .debug_frame (NOLOAD)
      001874 00 00                 8218 	.dw	0
      001876 00 0E                 8219 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      001878                       8220 Ldebug_CIE6_start:
      001878 FF FF                 8221 	.dw	0xffff
      00187A FF FF                 8222 	.dw	0xffff
      00187C 01                    8223 	.db	1
      00187D 00                    8224 	.db	0
      00187E 01                    8225 	.uleb128	1
      00187F 7F                    8226 	.sleb128	-1
      001880 09                    8227 	.db	9
      001881 0C                    8228 	.db	12
      001882 08                    8229 	.uleb128	8
      001883 02                    8230 	.uleb128	2
      001884 89                    8231 	.db	137
      001885 01                    8232 	.uleb128	1
      001886                       8233 Ldebug_CIE6_end:
      001886 00 00 00 59           8234 	.dw	0,89
      00188A 00 00 18 74           8235 	.dw	0,(Ldebug_CIE6_start-4)
      00188E 00 00 8A 97           8236 	.dw	0,(Sswi2c$swi2c_init$277)	;initial loc
      001892 00 00 00 1B           8237 	.dw	0,Sswi2c$swi2c_init$292-Sswi2c$swi2c_init$277
      001896 01                    8238 	.db	1
      001897 00 00 8A 97           8239 	.dw	0,(Sswi2c$swi2c_init$277)
      00189B 0E                    8240 	.db	14
      00189C 02                    8241 	.uleb128	2
      00189D 01                    8242 	.db	1
      00189E 00 00 8A 99           8243 	.dw	0,(Sswi2c$swi2c_init$279)
      0018A2 0E                    8244 	.db	14
      0018A3 03                    8245 	.uleb128	3
      0018A4 01                    8246 	.db	1
      0018A5 00 00 8A 9B           8247 	.dw	0,(Sswi2c$swi2c_init$280)
      0018A9 0E                    8248 	.db	14
      0018AA 04                    8249 	.uleb128	4
      0018AB 01                    8250 	.db	1
      0018AC 00 00 8A 9D           8251 	.dw	0,(Sswi2c$swi2c_init$281)
      0018B0 0E                    8252 	.db	14
      0018B1 05                    8253 	.uleb128	5
      0018B2 01                    8254 	.db	1
      0018B3 00 00 8A 9F           8255 	.dw	0,(Sswi2c$swi2c_init$282)
      0018B7 0E                    8256 	.db	14
      0018B8 06                    8257 	.uleb128	6
      0018B9 01                    8258 	.db	1
      0018BA 00 00 8A A4           8259 	.dw	0,(Sswi2c$swi2c_init$283)
      0018BE 0E                    8260 	.db	14
      0018BF 02                    8261 	.uleb128	2
      0018C0 01                    8262 	.db	1
      0018C1 00 00 8A A6           8263 	.dw	0,(Sswi2c$swi2c_init$285)
      0018C5 0E                    8264 	.db	14
      0018C6 03                    8265 	.uleb128	3
      0018C7 01                    8266 	.db	1
      0018C8 00 00 8A A8           8267 	.dw	0,(Sswi2c$swi2c_init$286)
      0018CC 0E                    8268 	.db	14
      0018CD 04                    8269 	.uleb128	4
      0018CE 01                    8270 	.db	1
      0018CF 00 00 8A AA           8271 	.dw	0,(Sswi2c$swi2c_init$287)
      0018D3 0E                    8272 	.db	14
      0018D4 05                    8273 	.uleb128	5
      0018D5 01                    8274 	.db	1
      0018D6 00 00 8A AC           8275 	.dw	0,(Sswi2c$swi2c_init$288)
      0018DA 0E                    8276 	.db	14
      0018DB 06                    8277 	.uleb128	6
      0018DC 01                    8278 	.db	1
      0018DD 00 00 8A B1           8279 	.dw	0,(Sswi2c$swi2c_init$289)
      0018E1 0E                    8280 	.db	14
      0018E2 02                    8281 	.uleb128	2
                                   8282 
                                   8283 	.area .debug_frame (NOLOAD)
      0018E3 00 00                 8284 	.dw	0
      0018E5 00 0E                 8285 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      0018E7                       8286 Ldebug_CIE7_start:
      0018E7 FF FF                 8287 	.dw	0xffff
      0018E9 FF FF                 8288 	.dw	0xffff
      0018EB 01                    8289 	.db	1
      0018EC 00                    8290 	.db	0
      0018ED 01                    8291 	.uleb128	1
      0018EE 7F                    8292 	.sleb128	-1
      0018EF 09                    8293 	.db	9
      0018F0 0C                    8294 	.db	12
      0018F1 08                    8295 	.uleb128	8
      0018F2 02                    8296 	.uleb128	2
      0018F3 89                    8297 	.db	137
      0018F4 01                    8298 	.uleb128	1
      0018F5                       8299 Ldebug_CIE7_end:
      0018F5 00 00 00 2F           8300 	.dw	0,47
      0018F9 00 00 18 E3           8301 	.dw	0,(Ldebug_CIE7_start-4)
      0018FD 00 00 8A 4B           8302 	.dw	0,(Sswi2c$swi2c_test_slave$249)	;initial loc
      001901 00 00 00 4C           8303 	.dw	0,Sswi2c$swi2c_test_slave$275-Sswi2c$swi2c_test_slave$249
      001905 01                    8304 	.db	1
      001906 00 00 8A 4B           8305 	.dw	0,(Sswi2c$swi2c_test_slave$249)
      00190A 0E                    8306 	.db	14
      00190B 02                    8307 	.uleb128	2
      00190C 01                    8308 	.db	1
      00190D 00 00 8A 4C           8309 	.dw	0,(Sswi2c$swi2c_test_slave$250)
      001911 0E                    8310 	.db	14
      001912 03                    8311 	.uleb128	3
      001913 01                    8312 	.db	1
      001914 00 00 8A 6A           8313 	.dw	0,(Sswi2c$swi2c_test_slave$259)
      001918 0E                    8314 	.db	14
      001919 04                    8315 	.uleb128	4
      00191A 01                    8316 	.db	1
      00191B 00 00 8A 6F           8317 	.dw	0,(Sswi2c$swi2c_test_slave$260)
      00191F 0E                    8318 	.db	14
      001920 03                    8319 	.uleb128	3
      001921 01                    8320 	.db	1
      001922 00 00 8A 96           8321 	.dw	0,(Sswi2c$swi2c_test_slave$273)
      001926 0E                    8322 	.db	14
      001927 02                    8323 	.uleb128	2
                                   8324 
                                   8325 	.area .debug_frame (NOLOAD)
      001928 00 00                 8326 	.dw	0
      00192A 00 0E                 8327 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      00192C                       8328 Ldebug_CIE8_start:
      00192C FF FF                 8329 	.dw	0xffff
      00192E FF FF                 8330 	.dw	0xffff
      001930 01                    8331 	.db	1
      001931 00                    8332 	.db	0
      001932 01                    8333 	.uleb128	1
      001933 7F                    8334 	.sleb128	-1
      001934 09                    8335 	.db	9
      001935 0C                    8336 	.db	12
      001936 08                    8337 	.uleb128	8
      001937 02                    8338 	.uleb128	2
      001938 89                    8339 	.db	137
      001939 01                    8340 	.uleb128	1
      00193A                       8341 Ldebug_CIE8_end:
      00193A 00 00 00 59           8342 	.dw	0,89
      00193E 00 00 19 28           8343 	.dw	0,(Ldebug_CIE8_start-4)
      001942 00 00 89 45           8344 	.dw	0,(Sswi2c$swi2c_write_buf$166)	;initial loc
      001946 00 00 01 06           8345 	.dw	0,Sswi2c$swi2c_write_buf$247-Sswi2c$swi2c_write_buf$166
      00194A 01                    8346 	.db	1
      00194B 00 00 89 45           8347 	.dw	0,(Sswi2c$swi2c_write_buf$166)
      00194F 0E                    8348 	.db	14
      001950 02                    8349 	.uleb128	2
      001951 01                    8350 	.db	1
      001952 00 00 89 46           8351 	.dw	0,(Sswi2c$swi2c_write_buf$167)
      001956 0E                    8352 	.db	14
      001957 04                    8353 	.uleb128	4
      001958 01                    8354 	.db	1
      001959 00 00 89 64           8355 	.dw	0,(Sswi2c$swi2c_write_buf$176)
      00195D 0E                    8356 	.db	14
      00195E 05                    8357 	.uleb128	5
      00195F 01                    8358 	.db	1
      001960 00 00 89 69           8359 	.dw	0,(Sswi2c$swi2c_write_buf$177)
      001964 0E                    8360 	.db	14
      001965 04                    8361 	.uleb128	4
      001966 01                    8362 	.db	1
      001967 00 00 89 A8           8363 	.dw	0,(Sswi2c$swi2c_write_buf$196)
      00196B 0E                    8364 	.db	14
      00196C 05                    8365 	.uleb128	5
      00196D 01                    8366 	.db	1
      00196E 00 00 89 AD           8367 	.dw	0,(Sswi2c$swi2c_write_buf$197)
      001972 0E                    8368 	.db	14
      001973 04                    8369 	.uleb128	4
      001974 01                    8370 	.db	1
      001975 00 00 89 FF           8371 	.dw	0,(Sswi2c$swi2c_write_buf$219)
      001979 0E                    8372 	.db	14
      00197A 06                    8373 	.uleb128	6
      00197B 01                    8374 	.db	1
      00197C 00 00 8A 00           8375 	.dw	0,(Sswi2c$swi2c_write_buf$220)
      001980 0E                    8376 	.db	14
      001981 07                    8377 	.uleb128	7
      001982 01                    8378 	.db	1
      001983 00 00 8A 05           8379 	.dw	0,(Sswi2c$swi2c_write_buf$221)
      001987 0E                    8380 	.db	14
      001988 06                    8381 	.uleb128	6
      001989 01                    8382 	.db	1
      00198A 00 00 8A 06           8383 	.dw	0,(Sswi2c$swi2c_write_buf$222)
      00198E 0E                    8384 	.db	14
      00198F 04                    8385 	.uleb128	4
      001990 01                    8386 	.db	1
      001991 00 00 8A 4A           8387 	.dw	0,(Sswi2c$swi2c_write_buf$245)
      001995 0E                    8388 	.db	14
      001996 02                    8389 	.uleb128	2
                                   8390 
                                   8391 	.area .debug_frame (NOLOAD)
      001997 00 00                 8392 	.dw	0
      001999 00 0E                 8393 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      00199B                       8394 Ldebug_CIE9_start:
      00199B FF FF                 8395 	.dw	0xffff
      00199D FF FF                 8396 	.dw	0xffff
      00199F 01                    8397 	.db	1
      0019A0 00                    8398 	.db	0
      0019A1 01                    8399 	.uleb128	1
      0019A2 7F                    8400 	.sleb128	-1
      0019A3 09                    8401 	.db	9
      0019A4 0C                    8402 	.db	12
      0019A5 08                    8403 	.uleb128	8
      0019A6 02                    8404 	.uleb128	2
      0019A7 89                    8405 	.db	137
      0019A8 01                    8406 	.uleb128	1
      0019A9                       8407 Ldebug_CIE9_end:
      0019A9 00 00 00 75           8408 	.dw	0,117
      0019AD 00 00 19 97           8409 	.dw	0,(Ldebug_CIE9_start-4)
      0019B1 00 00 87 B5           8410 	.dw	0,(Sswi2c$swi2c_read_buf$44)	;initial loc
      0019B5 00 00 01 90           8411 	.dw	0,Sswi2c$swi2c_read_buf$164-Sswi2c$swi2c_read_buf$44
      0019B9 01                    8412 	.db	1
      0019BA 00 00 87 B5           8413 	.dw	0,(Sswi2c$swi2c_read_buf$44)
      0019BE 0E                    8414 	.db	14
      0019BF 02                    8415 	.uleb128	2
      0019C0 01                    8416 	.db	1
      0019C1 00 00 87 B7           8417 	.dw	0,(Sswi2c$swi2c_read_buf$45)
      0019C5 0E                    8418 	.db	14
      0019C6 05                    8419 	.uleb128	5
      0019C7 01                    8420 	.db	1
      0019C8 00 00 87 D5           8421 	.dw	0,(Sswi2c$swi2c_read_buf$54)
      0019CC 0E                    8422 	.db	14
      0019CD 06                    8423 	.uleb128	6
      0019CE 01                    8424 	.db	1
      0019CF 00 00 87 DA           8425 	.dw	0,(Sswi2c$swi2c_read_buf$55)
      0019D3 0E                    8426 	.db	14
      0019D4 05                    8427 	.uleb128	5
      0019D5 01                    8428 	.db	1
      0019D6 00 00 88 19           8429 	.dw	0,(Sswi2c$swi2c_read_buf$74)
      0019DA 0E                    8430 	.db	14
      0019DB 06                    8431 	.uleb128	6
      0019DC 01                    8432 	.db	1
      0019DD 00 00 88 1E           8433 	.dw	0,(Sswi2c$swi2c_read_buf$75)
      0019E1 0E                    8434 	.db	14
      0019E2 05                    8435 	.uleb128	5
      0019E3 01                    8436 	.db	1
      0019E4 00 00 88 71           8437 	.dw	0,(Sswi2c$swi2c_read_buf$99)
      0019E8 0E                    8438 	.db	14
      0019E9 06                    8439 	.uleb128	6
      0019EA 01                    8440 	.db	1
      0019EB 00 00 88 76           8441 	.dw	0,(Sswi2c$swi2c_read_buf$100)
      0019EF 0E                    8442 	.db	14
      0019F0 05                    8443 	.uleb128	5
      0019F1 01                    8444 	.db	1
      0019F2 00 00 88 E7           8445 	.dw	0,(Sswi2c$swi2c_read_buf$128)
      0019F6 0E                    8446 	.db	14
      0019F7 05                    8447 	.uleb128	5
      0019F8 01                    8448 	.db	1
      0019F9 00 00 89 0A           8449 	.dw	0,(Sswi2c$swi2c_read_buf$139)
      0019FD 0E                    8450 	.db	14
      0019FE 05                    8451 	.uleb128	5
      0019FF 01                    8452 	.db	1
      001A00 00 00 89 0C           8453 	.dw	0,(Sswi2c$swi2c_read_buf$142)
      001A04 0E                    8454 	.db	14
      001A05 06                    8455 	.uleb128	6
      001A06 01                    8456 	.db	1
      001A07 00 00 89 11           8457 	.dw	0,(Sswi2c$swi2c_read_buf$143)
      001A0B 0E                    8458 	.db	14
      001A0C 05                    8459 	.uleb128	5
      001A0D 01                    8460 	.db	1
      001A0E 00 00 89 1E           8461 	.dw	0,(Sswi2c$swi2c_read_buf$149)
      001A12 0E                    8462 	.db	14
      001A13 06                    8463 	.uleb128	6
      001A14 01                    8464 	.db	1
      001A15 00 00 89 23           8465 	.dw	0,(Sswi2c$swi2c_read_buf$150)
      001A19 0E                    8466 	.db	14
      001A1A 05                    8467 	.uleb128	5
      001A1B 01                    8468 	.db	1
      001A1C 00 00 89 44           8469 	.dw	0,(Sswi2c$swi2c_read_buf$162)
      001A20 0E                    8470 	.db	14
      001A21 02                    8471 	.uleb128	2
                                   8472 
                                   8473 	.area .debug_frame (NOLOAD)
      001A22 00 00                 8474 	.dw	0
      001A24 00 0E                 8475 	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
      001A26                       8476 Ldebug_CIE10_start:
      001A26 FF FF                 8477 	.dw	0xffff
      001A28 FF FF                 8478 	.dw	0xffff
      001A2A 01                    8479 	.db	1
      001A2B 00                    8480 	.db	0
      001A2C 01                    8481 	.uleb128	1
      001A2D 7F                    8482 	.sleb128	-1
      001A2E 09                    8483 	.db	9
      001A2F 0C                    8484 	.db	12
      001A30 08                    8485 	.uleb128	8
      001A31 02                    8486 	.uleb128	2
      001A32 89                    8487 	.db	137
      001A33 01                    8488 	.uleb128	1
      001A34                       8489 Ldebug_CIE10_end:
      001A34 00 00 00 75           8490 	.dw	0,117
      001A38 00 00 1A 22           8491 	.dw	0,(Ldebug_CIE10_start-4)
      001A3C 00 00 87 7D           8492 	.dw	0,(Sswi2c$_delay_us$13)	;initial loc
      001A40 00 00 00 38           8493 	.dw	0,Sswi2c$_delay_us$42-Sswi2c$_delay_us$13
      001A44 01                    8494 	.db	1
      001A45 00 00 87 7D           8495 	.dw	0,(Sswi2c$_delay_us$13)
      001A49 0E                    8496 	.db	14
      001A4A 02                    8497 	.uleb128	2
      001A4B 01                    8498 	.db	1
      001A4C 00 00 87 82           8499 	.dw	0,(Sswi2c$_delay_us$15)
      001A50 0E                    8500 	.db	14
      001A51 04                    8501 	.uleb128	4
      001A52 01                    8502 	.db	1
      001A53 00 00 87 83           8503 	.dw	0,(Sswi2c$_delay_us$16)
      001A57 0E                    8504 	.db	14
      001A58 06                    8505 	.uleb128	6
      001A59 01                    8506 	.db	1
      001A5A 00 00 87 85           8507 	.dw	0,(Sswi2c$_delay_us$17)
      001A5E 0E                    8508 	.db	14
      001A5F 07                    8509 	.uleb128	7
      001A60 01                    8510 	.db	1
      001A61 00 00 87 87           8511 	.dw	0,(Sswi2c$_delay_us$18)
      001A65 0E                    8512 	.db	14
      001A66 08                    8513 	.uleb128	8
      001A67 01                    8514 	.db	1
      001A68 00 00 87 89           8515 	.dw	0,(Sswi2c$_delay_us$19)
      001A6C 0E                    8516 	.db	14
      001A6D 09                    8517 	.uleb128	9
      001A6E 01                    8518 	.db	1
      001A6F 00 00 87 8B           8519 	.dw	0,(Sswi2c$_delay_us$20)
      001A73 0E                    8520 	.db	14
      001A74 0A                    8521 	.uleb128	10
      001A75 01                    8522 	.db	1
      001A76 00 00 87 90           8523 	.dw	0,(Sswi2c$_delay_us$21)
      001A7A 0E                    8524 	.db	14
      001A7B 02                    8525 	.uleb128	2
      001A7C 01                    8526 	.db	1
      001A7D 00 00 87 92           8527 	.dw	0,(Sswi2c$_delay_us$23)
      001A81 0E                    8528 	.db	14
      001A82 03                    8529 	.uleb128	3
      001A83 01                    8530 	.db	1
      001A84 00 00 87 94           8531 	.dw	0,(Sswi2c$_delay_us$24)
      001A88 0E                    8532 	.db	14
      001A89 04                    8533 	.uleb128	4
      001A8A 01                    8534 	.db	1
      001A8B 00 00 87 96           8535 	.dw	0,(Sswi2c$_delay_us$25)
      001A8F 0E                    8536 	.db	14
      001A90 05                    8537 	.uleb128	5
      001A91 01                    8538 	.db	1
      001A92 00 00 87 98           8539 	.dw	0,(Sswi2c$_delay_us$26)
      001A96 0E                    8540 	.db	14
      001A97 06                    8541 	.uleb128	6
      001A98 01                    8542 	.db	1
      001A99 00 00 87 99           8543 	.dw	0,(Sswi2c$_delay_us$27)
      001A9D 0E                    8544 	.db	14
      001A9E 08                    8545 	.uleb128	8
      001A9F 01                    8546 	.db	1
      001AA0 00 00 87 9B           8547 	.dw	0,(Sswi2c$_delay_us$28)
      001AA4 0E                    8548 	.db	14
      001AA5 0A                    8549 	.uleb128	10
      001AA6 01                    8550 	.db	1
      001AA7 00 00 87 A0           8551 	.dw	0,(Sswi2c$_delay_us$29)
      001AAB 0E                    8552 	.db	14
      001AAC 02                    8553 	.uleb128	2
                                   8554 
                                   8555 	.area .debug_frame (NOLOAD)
      001AAD 00 00                 8556 	.dw	0
      001AAF 00 0E                 8557 	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
      001AB1                       8558 Ldebug_CIE11_start:
      001AB1 FF FF                 8559 	.dw	0xffff
      001AB3 FF FF                 8560 	.dw	0xffff
      001AB5 01                    8561 	.db	1
      001AB6 00                    8562 	.db	0
      001AB7 01                    8563 	.uleb128	1
      001AB8 7F                    8564 	.sleb128	-1
      001AB9 09                    8565 	.db	9
      001ABA 0C                    8566 	.db	12
      001ABB 08                    8567 	.uleb128	8
      001ABC 02                    8568 	.uleb128	2
      001ABD 89                    8569 	.db	137
      001ABE 01                    8570 	.uleb128	1
      001ABF                       8571 Ldebug_CIE11_end:
      001ABF 00 00 00 13           8572 	.dw	0,19
      001AC3 00 00 1A AD           8573 	.dw	0,(Ldebug_CIE11_start-4)
      001AC7 00 00 87 70           8574 	.dw	0,(Sswi2c$_delay_cycl$1)	;initial loc
      001ACB 00 00 00 0D           8575 	.dw	0,Sswi2c$_delay_cycl$11-Sswi2c$_delay_cycl$1
      001ACF 01                    8576 	.db	1
      001AD0 00 00 87 70           8577 	.dw	0,(Sswi2c$_delay_cycl$1)
      001AD4 0E                    8578 	.db	14
      001AD5 02                    8579 	.uleb128	2

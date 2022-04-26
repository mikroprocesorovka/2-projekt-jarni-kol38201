                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _setup
                                     13 	.globl _init_uart1
                                     14 	.globl _puts
                                     15 	.globl _TIM2_SetCompare1
                                     16 	.globl _TIM2_OC1PreloadConfig
                                     17 	.globl _TIM2_Cmd
                                     18 	.globl _TIM2_OC1Init
                                     19 	.globl _TIM2_TimeBaseInit
                                     20 	.globl _GPIO_ReadInputPin
                                     21 	.globl _GPIO_Init
                                     22 	.globl _CLK_HSIPrescalerConfig
                                     23 ;--------------------------------------------------------
                                     24 ; ram data
                                     25 ;--------------------------------------------------------
                                     26 	.area DATA
                                     27 ;--------------------------------------------------------
                                     28 ; ram data
                                     29 ;--------------------------------------------------------
                                     30 	.area INITIALIZED
                                     31 ;--------------------------------------------------------
                                     32 ; Stack segment in internal ram 
                                     33 ;--------------------------------------------------------
                                     34 	.area	SSEG
      000005                         35 __start__stack:
      000005                         36 	.ds	1
                                     37 
                                     38 ;--------------------------------------------------------
                                     39 ; absolute external ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area DABS (ABS)
                                     42 
                                     43 ; default segment ordering for linker
                                     44 	.area HOME
                                     45 	.area GSINIT
                                     46 	.area GSFINAL
                                     47 	.area CONST
                                     48 	.area INITIALIZER
                                     49 	.area CODE
                                     50 
                                     51 ;--------------------------------------------------------
                                     52 ; interrupt vector 
                                     53 ;--------------------------------------------------------
                                     54 	.area HOME
      008000                         55 __interrupt_vect:
      008000 82 00 80 6F             56 	int s_GSINIT ; reset
      008004 82 00 87 57             57 	int _TRAP_IRQHandler ; trap
      008008 82 00 87 58             58 	int _TLI_IRQHandler ; int0
      00800C 82 00 87 59             59 	int _AWU_IRQHandler ; int1
      008010 82 00 87 5A             60 	int _CLK_IRQHandler ; int2
      008014 82 00 87 5B             61 	int _EXTI_PORTA_IRQHandler ; int3
      008018 82 00 87 5C             62 	int _EXTI_PORTB_IRQHandler ; int4
      00801C 82 00 87 5D             63 	int _EXTI_PORTC_IRQHandler ; int5
      008020 82 00 87 5E             64 	int _EXTI_PORTD_IRQHandler ; int6
      008024 82 00 87 5F             65 	int _EXTI_PORTE_IRQHandler ; int7
      008028 82 00 87 60             66 	int _CAN_RX_IRQHandler ; int8
      00802C 82 00 87 61             67 	int _CAN_TX_IRQHandler ; int9
      008030 82 00 87 62             68 	int _SPI_IRQHandler ; int10
      008034 82 00 87 63             69 	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
      008038 82 00 87 64             70 	int _TIM1_CAP_COM_IRQHandler ; int12
      00803C 82 00 87 65             71 	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
      008040 82 00 87 66             72 	int _TIM2_CAP_COM_IRQHandler ; int14
      008044 82 00 87 67             73 	int _TIM3_UPD_OVF_BRK_IRQHandler ; int15
      008048 82 00 87 68             74 	int _TIM3_CAP_COM_IRQHandler ; int16
      00804C 82 00 87 69             75 	int _UART1_TX_IRQHandler ; int17
      008050 82 00 87 6A             76 	int _UART1_RX_IRQHandler ; int18
      008054 82 00 87 6B             77 	int _I2C_IRQHandler ; int19
      008058 82 00 87 6C             78 	int _UART3_TX_IRQHandler ; int20
      00805C 82 00 87 6D             79 	int _UART3_RX_IRQHandler ; int21
      008060 82 00 87 6E             80 	int _ADC2_IRQHandler ; int22
      008064 82 00 81 B5             81 	int _TIM4_UPD_OVF_IRQHandler ; int23
      008068 82 00 87 6F             82 	int _EEPROM_EEC_IRQHandler ; int24
                                     83 ;--------------------------------------------------------
                                     84 ; global & static initialisations
                                     85 ;--------------------------------------------------------
                                     86 	.area HOME
                                     87 	.area GSINIT
                                     88 	.area GSFINAL
                                     89 	.area GSINIT
      00806F                         90 __sdcc_init_data:
                                     91 ; stm8_genXINIT() start
      00806F AE 00 00         [ 2]   92 	ldw x, #l_DATA
      008072 27 07            [ 1]   93 	jreq	00002$
      008074                         94 00001$:
      008074 72 4F 00 00      [ 1]   95 	clr (s_DATA - 1, x)
      008078 5A               [ 2]   96 	decw x
      008079 26 F9            [ 1]   97 	jrne	00001$
      00807B                         98 00002$:
      00807B AE 00 04         [ 2]   99 	ldw	x, #l_INITIALIZER
      00807E 27 09            [ 1]  100 	jreq	00004$
      008080                        101 00003$:
      008080 D6 80 BF         [ 1]  102 	ld	a, (s_INITIALIZER - 1, x)
      008083 D7 00 00         [ 1]  103 	ld	(s_INITIALIZED - 1, x), a
      008086 5A               [ 2]  104 	decw	x
      008087 26 F7            [ 1]  105 	jrne	00003$
      008089                        106 00004$:
                                    107 ; stm8_genXINIT() end
                                    108 	.area GSFINAL
      008089 CC 80 6C         [ 2]  109 	jp	__sdcc_program_startup
                                    110 ;--------------------------------------------------------
                                    111 ; Home
                                    112 ;--------------------------------------------------------
                                    113 	.area HOME
                                    114 	.area HOME
      00806C                        115 __sdcc_program_startup:
      00806C CC 81 01         [ 2]  116 	jp	_main
                                    117 ;	return from main will return to caller
                                    118 ;--------------------------------------------------------
                                    119 ; code
                                    120 ;--------------------------------------------------------
                                    121 	.area CODE
                           000000   122 	Smain$setup$0 ==.
                                    123 ;	./src/main.c: 16: void setup(void)
                                    124 ; genLabel
                                    125 ;	-----------------------------------------
                                    126 ;	 function setup
                                    127 ;	-----------------------------------------
                                    128 ;	Register assignment is optimal.
                                    129 ;	Stack space usage: 0 bytes.
      0080C4                        130 _setup:
                           000000   131 	Smain$setup$1 ==.
                           000000   132 	Smain$setup$2 ==.
                                    133 ;	./src/main.c: 18: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);      // taktovani MCU na 16MHz
                                    134 ; genIPush
      0080C4 4B 00            [ 1]  135 	push	#0x00
                           000002   136 	Smain$setup$3 ==.
                                    137 ; genCall
      0080C6 CD 92 8D         [ 4]  138 	call	_CLK_HSIPrescalerConfig
      0080C9 84               [ 1]  139 	pop	a
                           000006   140 	Smain$setup$4 ==.
                           000006   141 	Smain$setup$5 ==.
                                    142 ;	./src/main.c: 19: GPIO_Init(BTN_PORT, BTN_PIN, GPIO_MODE_IN_FL_NO_IT);
                                    143 ; genIPush
      0080CA 4B 00            [ 1]  144 	push	#0x00
                           000008   145 	Smain$setup$6 ==.
                                    146 ; genIPush
      0080CC 4B 10            [ 1]  147 	push	#0x10
                           00000A   148 	Smain$setup$7 ==.
                                    149 ; genIPush
      0080CE 4B 14            [ 1]  150 	push	#0x14
                           00000C   151 	Smain$setup$8 ==.
      0080D0 4B 50            [ 1]  152 	push	#0x50
                           00000E   153 	Smain$setup$9 ==.
                                    154 ; genCall
      0080D2 CD 8F 78         [ 4]  155 	call	_GPIO_Init
      0080D5 5B 04            [ 2]  156 	addw	sp, #4
                           000013   157 	Smain$setup$10 ==.
                           000013   158 	Smain$setup$11 ==.
                                    159 ;	./src/main.c: 21: init_uart1();
                                    160 ; genCall
      0080D7 CD 8F 18         [ 4]  161 	call	_init_uart1
                           000016   162 	Smain$setup$12 ==.
                                    163 ;	./src/main.c: 23: TIM2_TimeBaseInit(TIM2_PRESCALER_4, 7000 - 1 ); 
                                    164 ; genIPush
      0080DA 4B 57            [ 1]  165 	push	#0x57
                           000018   166 	Smain$setup$13 ==.
      0080DC 4B 1B            [ 1]  167 	push	#0x1b
                           00001A   168 	Smain$setup$14 ==.
                                    169 ; genIPush
      0080DE 4B 02            [ 1]  170 	push	#0x02
                           00001C   171 	Smain$setup$15 ==.
                                    172 ; genCall
      0080E0 CD 9E CD         [ 4]  173 	call	_TIM2_TimeBaseInit
      0080E3 5B 03            [ 2]  174 	addw	sp, #3
                           000021   175 	Smain$setup$16 ==.
                           000021   176 	Smain$setup$17 ==.
                                    177 ;	./src/main.c: 24: TIM2_OC1Init(TIM2_OCMODE_PWM1,TIM2_OUTPUTSTATE_ENABLE,5000,TIM2_OCPOLARITY_HIGH);// inicializujeme kanál 1 (TM2_CH1)
                                    178 ; genIPush
      0080E5 4B 00            [ 1]  179 	push	#0x00
                           000023   180 	Smain$setup$18 ==.
                                    181 ; genIPush
      0080E7 4B 88            [ 1]  182 	push	#0x88
                           000025   183 	Smain$setup$19 ==.
      0080E9 4B 13            [ 1]  184 	push	#0x13
                           000027   185 	Smain$setup$20 ==.
                                    186 ; genIPush
      0080EB 4B 11            [ 1]  187 	push	#0x11
                           000029   188 	Smain$setup$21 ==.
                                    189 ; genIPush
      0080ED 4B 60            [ 1]  190 	push	#0x60
                           00002B   191 	Smain$setup$22 ==.
                                    192 ; genCall
      0080EF CD 9E DF         [ 4]  193 	call	_TIM2_OC1Init
      0080F2 5B 05            [ 2]  194 	addw	sp, #5
                           000030   195 	Smain$setup$23 ==.
                           000030   196 	Smain$setup$24 ==.
                                    197 ;	./src/main.c: 25: TIM2_OC1PreloadConfig(ENABLE);
                                    198 ; genIPush
      0080F4 4B 01            [ 1]  199 	push	#0x01
                           000032   200 	Smain$setup$25 ==.
                                    201 ; genCall
      0080F6 CD A1 29         [ 4]  202 	call	_TIM2_OC1PreloadConfig
      0080F9 84               [ 1]  203 	pop	a
                           000036   204 	Smain$setup$26 ==.
                           000036   205 	Smain$setup$27 ==.
                                    206 ;	./src/main.c: 26: TIM2_Cmd(ENABLE);
                                    207 ; genIPush
      0080FA 4B 01            [ 1]  208 	push	#0x01
                           000038   209 	Smain$setup$28 ==.
                                    210 ; genCall
      0080FC CD A0 62         [ 4]  211 	call	_TIM2_Cmd
      0080FF 84               [ 1]  212 	pop	a
                           00003C   213 	Smain$setup$29 ==.
                                    214 ; genLabel
      008100                        215 00101$:
                           00003C   216 	Smain$setup$30 ==.
                                    217 ;	./src/main.c: 28: }
                                    218 ; genEndFunction
                           00003C   219 	Smain$setup$31 ==.
                           00003C   220 	XG$setup$0$0 ==.
      008100 81               [ 4]  221 	ret
                           00003D   222 	Smain$setup$32 ==.
                           00003D   223 	Smain$main$33 ==.
                                    224 ;	./src/main.c: 30: int main(void)
                                    225 ; genLabel
                                    226 ;	-----------------------------------------
                                    227 ;	 function main
                                    228 ;	-----------------------------------------
                                    229 ;	Register assignment might be sub-optimal.
                                    230 ;	Stack space usage: 2 bytes.
      008101                        231 _main:
                           00003D   232 	Smain$main$34 ==.
      008101 89               [ 2]  233 	pushw	x
                           00003E   234 	Smain$main$35 ==.
                           00003E   235 	Smain$main$36 ==.
                                    236 ;	./src/main.c: 34: uint8_t minuly_stav = 0;
                                    237 ; genAssign
      008102 0F 01            [ 1]  238 	clr	(0x01, sp)
                           000040   239 	Smain$main$37 ==.
                                    240 ;	./src/main.c: 38: setup();
                                    241 ; genCall
      008104 CD 80 C4         [ 4]  242 	call	_setup
                           000043   243 	Smain$main$38 ==.
                                    244 ;	./src/main.c: 40: while (1) {
                                    245 ; genLabel
      008107                        246 00111$:
                           000043   247 	Smain$main$39 ==.
                           000043   248 	Smain$main$40 ==.
                                    249 ;	./src/main.c: 44: if (BTN_PUSH){
                                    250 ; genIPush
      008107 4B 10            [ 1]  251 	push	#0x10
                           000045   252 	Smain$main$41 ==.
                                    253 ; genIPush
      008109 4B 14            [ 1]  254 	push	#0x14
                           000047   255 	Smain$main$42 ==.
      00810B 4B 50            [ 1]  256 	push	#0x50
                           000049   257 	Smain$main$43 ==.
                                    258 ; genCall
      00810D CD 90 2A         [ 4]  259 	call	_GPIO_ReadInputPin
      008110 5B 03            [ 2]  260 	addw	sp, #3
                           00004E   261 	Smain$main$44 ==.
                                    262 ; genIfx
      008112 4D               [ 1]  263 	tnz	a
      008113 27 03            [ 1]  264 	jreq	00145$
      008115 CC 81 1F         [ 2]  265 	jp	00102$
      008118                        266 00145$:
                           000054   267 	Smain$main$45 ==.
                           000054   268 	Smain$main$46 ==.
                                    269 ;	./src/main.c: 45: aktual_stav = 1;
                                    270 ; genAssign
      008118 A6 01            [ 1]  271 	ld	a, #0x01
      00811A 6B 02            [ 1]  272 	ld	(0x02, sp), a
                           000058   273 	Smain$main$47 ==.
                                    274 ; genGoto
      00811C CC 81 21         [ 2]  275 	jp	00103$
                                    276 ; genLabel
      00811F                        277 00102$:
                           00005B   278 	Smain$main$48 ==.
                           00005B   279 	Smain$main$49 ==.
                                    280 ;	./src/main.c: 48: aktual_stav = 0;
                                    281 ; genAssign
      00811F 0F 02            [ 1]  282 	clr	(0x02, sp)
                           00005D   283 	Smain$main$50 ==.
                                    284 ; genLabel
      008121                        285 00103$:
                           00005D   286 	Smain$main$51 ==.
                                    287 ;	./src/main.c: 51: if (aktual_stav == 1 && minuly_stav == 0){
                                    288 ; genCmpEQorNE
      008121 7B 02            [ 1]  289 	ld	a, (0x02, sp)
      008123 4A               [ 1]  290 	dec	a
      008124 26 03            [ 1]  291 	jrne	00147$
      008126 CC 81 2C         [ 2]  292 	jp	00148$
      008129                        293 00147$:
      008129 CC 81 43         [ 2]  294 	jp	00105$
      00812C                        295 00148$:
                           000068   296 	Smain$main$52 ==.
                                    297 ; skipping generated iCode
                                    298 ; genIfx
      00812C 0D 01            [ 1]  299 	tnz	(0x01, sp)
      00812E 27 03            [ 1]  300 	jreq	00149$
      008130 CC 81 43         [ 2]  301 	jp	00105$
      008133                        302 00149$:
                           00006F   303 	Smain$main$53 ==.
                           00006F   304 	Smain$main$54 ==.
                                    305 ;	./src/main.c: 53: TIM2_SetCompare1(5000);
                                    306 ; genIPush
      008133 4B 88            [ 1]  307 	push	#0x88
                           000071   308 	Smain$main$55 ==.
      008135 4B 13            [ 1]  309 	push	#0x13
                           000073   310 	Smain$main$56 ==.
                                    311 ; genCall
      008137 CD A2 85         [ 4]  312 	call	_TIM2_SetCompare1
      00813A 85               [ 2]  313 	popw	x
                           000077   314 	Smain$main$57 ==.
                           000077   315 	Smain$main$58 ==.
                                    316 ;	./src/main.c: 54: printf("Bzučák je zaplý\r\n");
                                    317 ; skipping iCode since result will be rematerialized
                                    318 ; skipping iCode since result will be rematerialized
                                    319 ; genIPush
      00813B 4B 8C            [ 1]  320 	push	#<(___str_1+0)
                           000079   321 	Smain$main$59 ==.
      00813D 4B 80            [ 1]  322 	push	#((___str_1+0) >> 8)
                           00007B   323 	Smain$main$60 ==.
                                    324 ; genCall
      00813F CD A4 A2         [ 4]  325 	call	_puts
      008142 85               [ 2]  326 	popw	x
                           00007F   327 	Smain$main$61 ==.
                           00007F   328 	Smain$main$62 ==.
                                    329 ; genLabel
      008143                        330 00105$:
                           00007F   331 	Smain$main$63 ==.
                                    332 ;	./src/main.c: 56: if (aktual_stav == 0 && minuly_stav == 1){
                                    333 ; genIfx
      008143 0D 02            [ 1]  334 	tnz	(0x02, sp)
      008145 27 03            [ 1]  335 	jreq	00150$
      008147 CC 81 63         [ 2]  336 	jp	00108$
      00814A                        337 00150$:
                                    338 ; genCmpEQorNE
      00814A 7B 01            [ 1]  339 	ld	a, (0x01, sp)
      00814C 4A               [ 1]  340 	dec	a
      00814D 26 03            [ 1]  341 	jrne	00152$
      00814F CC 81 55         [ 2]  342 	jp	00153$
      008152                        343 00152$:
      008152 CC 81 63         [ 2]  344 	jp	00108$
      008155                        345 00153$:
                           000091   346 	Smain$main$64 ==.
                                    347 ; skipping generated iCode
                           000091   348 	Smain$main$65 ==.
                           000091   349 	Smain$main$66 ==.
                                    350 ;	./src/main.c: 57: TIM2_SetCompare1(0);
                                    351 ; genIPush
      008155 5F               [ 1]  352 	clrw	x
      008156 89               [ 2]  353 	pushw	x
                           000093   354 	Smain$main$67 ==.
                                    355 ; genCall
      008157 CD A2 85         [ 4]  356 	call	_TIM2_SetCompare1
      00815A 85               [ 2]  357 	popw	x
                           000097   358 	Smain$main$68 ==.
                           000097   359 	Smain$main$69 ==.
                                    360 ;	./src/main.c: 58: printf("Bzučák je vyplý\r\n");
                                    361 ; skipping iCode since result will be rematerialized
                                    362 ; skipping iCode since result will be rematerialized
                                    363 ; genIPush
      00815B 4B A0            [ 1]  364 	push	#<(___str_3+0)
                           000099   365 	Smain$main$70 ==.
      00815D 4B 80            [ 1]  366 	push	#((___str_3+0) >> 8)
                           00009B   367 	Smain$main$71 ==.
                                    368 ; genCall
      00815F CD A4 A2         [ 4]  369 	call	_puts
      008162 85               [ 2]  370 	popw	x
                           00009F   371 	Smain$main$72 ==.
                           00009F   372 	Smain$main$73 ==.
                                    373 ; genLabel
      008163                        374 00108$:
                           00009F   375 	Smain$main$74 ==.
                                    376 ;	./src/main.c: 62: minuly_stav = aktual_stav;
                                    377 ; genAssign
      008163 7B 02            [ 1]  378 	ld	a, (0x02, sp)
      008165 6B 01            [ 1]  379 	ld	(0x01, sp), a
                           0000A3   380 	Smain$main$75 ==.
                                    381 ; genGoto
      008167 CC 81 07         [ 2]  382 	jp	00111$
                                    383 ; genLabel
      00816A                        384 00113$:
                           0000A6   385 	Smain$main$76 ==.
                                    386 ;	./src/main.c: 67: }
                                    387 ; genEndFunction
      00816A 5B 02            [ 2]  388 	addw	sp, #2
                           0000A8   389 	Smain$main$77 ==.
                           0000A8   390 	Smain$main$78 ==.
                           0000A8   391 	XG$main$0$0 ==.
      00816C 81               [ 4]  392 	ret
                           0000A9   393 	Smain$main$79 ==.
                                    394 	.area CODE
                                    395 	.area CONST
                           000000   396 Fmain$__str_1$0_0$0 == .
                                    397 	.area CONST
      00808C                        398 ___str_1:
      00808C 42 7A 75               399 	.ascii "Bzu"
      00808F C4                     400 	.db 0xc4
      008090 8D                     401 	.db 0x8d
      008091 C3                     402 	.db 0xc3
      008092 A1                     403 	.db 0xa1
      008093 6B 20 6A 65 20 7A 61   404 	.ascii "k je zapl"
             70 6C
      00809C C3                     405 	.db 0xc3
      00809D BD                     406 	.db 0xbd
      00809E 0D                     407 	.db 0x0d
      00809F 00                     408 	.db 0x00
                                    409 	.area CODE
                           0000A9   410 Fmain$__str_3$0_0$0 == .
                                    411 	.area CONST
      0080A0                        412 ___str_3:
      0080A0 42 7A 75               413 	.ascii "Bzu"
      0080A3 C4                     414 	.db 0xc4
      0080A4 8D                     415 	.db 0x8d
      0080A5 C3                     416 	.db 0xc3
      0080A6 A1                     417 	.db 0xa1
      0080A7 6B 20 6A 65 20 76 79   418 	.ascii "k je vypl"
             70 6C
      0080B0 C3                     419 	.db 0xc3
      0080B1 BD                     420 	.db 0xbd
      0080B2 0D                     421 	.db 0x0d
      0080B3 00                     422 	.db 0x00
                                    423 	.area CODE
                                    424 	.area INITIALIZER
                                    425 	.area CABS (ABS)
                                    426 
                                    427 	.area .debug_line (NOLOAD)
      000000 00 00 01 17            428 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000004                        429 Ldebug_line_start:
      000004 00 02                  430 	.dw	2
      000006 00 00 00 6D            431 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      00000A 01                     432 	.db	1
      00000B 01                     433 	.db	1
      00000C FB                     434 	.db	-5
      00000D 0F                     435 	.db	15
      00000E 0A                     436 	.db	10
      00000F 00                     437 	.db	0
      000010 01                     438 	.db	1
      000011 01                     439 	.db	1
      000012 01                     440 	.db	1
      000013 01                     441 	.db	1
      000014 00                     442 	.db	0
      000015 00                     443 	.db	0
      000016 00                     444 	.db	0
      000017 01                     445 	.db	1
      000018 43 3A 5C 50 72 6F 67   446 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000040 00                     447 	.db	0
      000041 43 3A 5C 50 72 6F 67   448 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      000064 00                     449 	.db	0
      000065 00                     450 	.db	0
      000066 2E 2F 73 72 63 2F 6D   451 	.ascii "./src/main.c"
             61 69 6E 2E 63
      000072 00                     452 	.db	0
      000073 00                     453 	.uleb128	0
      000074 00                     454 	.uleb128	0
      000075 00                     455 	.uleb128	0
      000076 00                     456 	.db	0
      000077                        457 Ldebug_line_stmt:
      000077 00                     458 	.db	0
      000078 05                     459 	.uleb128	5
      000079 02                     460 	.db	2
      00007A 00 00 80 C4            461 	.dw	0,(Smain$setup$0)
      00007E 03                     462 	.db	3
      00007F 0F                     463 	.sleb128	15
      000080 01                     464 	.db	1
      000081 09                     465 	.db	9
      000082 00 00                  466 	.dw	Smain$setup$2-Smain$setup$0
      000084 03                     467 	.db	3
      000085 02                     468 	.sleb128	2
      000086 01                     469 	.db	1
      000087 09                     470 	.db	9
      000088 00 06                  471 	.dw	Smain$setup$5-Smain$setup$2
      00008A 03                     472 	.db	3
      00008B 01                     473 	.sleb128	1
      00008C 01                     474 	.db	1
      00008D 09                     475 	.db	9
      00008E 00 0D                  476 	.dw	Smain$setup$11-Smain$setup$5
      000090 03                     477 	.db	3
      000091 02                     478 	.sleb128	2
      000092 01                     479 	.db	1
      000093 09                     480 	.db	9
      000094 00 03                  481 	.dw	Smain$setup$12-Smain$setup$11
      000096 03                     482 	.db	3
      000097 02                     483 	.sleb128	2
      000098 01                     484 	.db	1
      000099 09                     485 	.db	9
      00009A 00 0B                  486 	.dw	Smain$setup$17-Smain$setup$12
      00009C 03                     487 	.db	3
      00009D 01                     488 	.sleb128	1
      00009E 01                     489 	.db	1
      00009F 09                     490 	.db	9
      0000A0 00 0F                  491 	.dw	Smain$setup$24-Smain$setup$17
      0000A2 03                     492 	.db	3
      0000A3 01                     493 	.sleb128	1
      0000A4 01                     494 	.db	1
      0000A5 09                     495 	.db	9
      0000A6 00 06                  496 	.dw	Smain$setup$27-Smain$setup$24
      0000A8 03                     497 	.db	3
      0000A9 01                     498 	.sleb128	1
      0000AA 01                     499 	.db	1
      0000AB 09                     500 	.db	9
      0000AC 00 06                  501 	.dw	Smain$setup$30-Smain$setup$27
      0000AE 03                     502 	.db	3
      0000AF 02                     503 	.sleb128	2
      0000B0 01                     504 	.db	1
      0000B1 09                     505 	.db	9
      0000B2 00 01                  506 	.dw	1+Smain$setup$31-Smain$setup$30
      0000B4 00                     507 	.db	0
      0000B5 01                     508 	.uleb128	1
      0000B6 01                     509 	.db	1
      0000B7 00                     510 	.db	0
      0000B8 05                     511 	.uleb128	5
      0000B9 02                     512 	.db	2
      0000BA 00 00 81 01            513 	.dw	0,(Smain$main$33)
      0000BE 03                     514 	.db	3
      0000BF 1D                     515 	.sleb128	29
      0000C0 01                     516 	.db	1
      0000C1 09                     517 	.db	9
      0000C2 00 01                  518 	.dw	Smain$main$36-Smain$main$33
      0000C4 03                     519 	.db	3
      0000C5 04                     520 	.sleb128	4
      0000C6 01                     521 	.db	1
      0000C7 09                     522 	.db	9
      0000C8 00 02                  523 	.dw	Smain$main$37-Smain$main$36
      0000CA 03                     524 	.db	3
      0000CB 04                     525 	.sleb128	4
      0000CC 01                     526 	.db	1
      0000CD 09                     527 	.db	9
      0000CE 00 03                  528 	.dw	Smain$main$38-Smain$main$37
      0000D0 03                     529 	.db	3
      0000D1 02                     530 	.sleb128	2
      0000D2 01                     531 	.db	1
      0000D3 09                     532 	.db	9
      0000D4 00 00                  533 	.dw	Smain$main$40-Smain$main$38
      0000D6 03                     534 	.db	3
      0000D7 04                     535 	.sleb128	4
      0000D8 01                     536 	.db	1
      0000D9 09                     537 	.db	9
      0000DA 00 11                  538 	.dw	Smain$main$46-Smain$main$40
      0000DC 03                     539 	.db	3
      0000DD 01                     540 	.sleb128	1
      0000DE 01                     541 	.db	1
      0000DF 09                     542 	.db	9
      0000E0 00 07                  543 	.dw	Smain$main$49-Smain$main$46
      0000E2 03                     544 	.db	3
      0000E3 03                     545 	.sleb128	3
      0000E4 01                     546 	.db	1
      0000E5 09                     547 	.db	9
      0000E6 00 02                  548 	.dw	Smain$main$51-Smain$main$49
      0000E8 03                     549 	.db	3
      0000E9 03                     550 	.sleb128	3
      0000EA 01                     551 	.db	1
      0000EB 09                     552 	.db	9
      0000EC 00 12                  553 	.dw	Smain$main$54-Smain$main$51
      0000EE 03                     554 	.db	3
      0000EF 02                     555 	.sleb128	2
      0000F0 01                     556 	.db	1
      0000F1 09                     557 	.db	9
      0000F2 00 08                  558 	.dw	Smain$main$58-Smain$main$54
      0000F4 03                     559 	.db	3
      0000F5 01                     560 	.sleb128	1
      0000F6 01                     561 	.db	1
      0000F7 09                     562 	.db	9
      0000F8 00 08                  563 	.dw	Smain$main$63-Smain$main$58
      0000FA 03                     564 	.db	3
      0000FB 02                     565 	.sleb128	2
      0000FC 01                     566 	.db	1
      0000FD 09                     567 	.db	9
      0000FE 00 12                  568 	.dw	Smain$main$66-Smain$main$63
      000100 03                     569 	.db	3
      000101 01                     570 	.sleb128	1
      000102 01                     571 	.db	1
      000103 09                     572 	.db	9
      000104 00 06                  573 	.dw	Smain$main$69-Smain$main$66
      000106 03                     574 	.db	3
      000107 01                     575 	.sleb128	1
      000108 01                     576 	.db	1
      000109 09                     577 	.db	9
      00010A 00 08                  578 	.dw	Smain$main$74-Smain$main$69
      00010C 03                     579 	.db	3
      00010D 04                     580 	.sleb128	4
      00010E 01                     581 	.db	1
      00010F 09                     582 	.db	9
      000110 00 07                  583 	.dw	Smain$main$76-Smain$main$74
      000112 03                     584 	.db	3
      000113 05                     585 	.sleb128	5
      000114 01                     586 	.db	1
      000115 09                     587 	.db	9
      000116 00 03                  588 	.dw	1+Smain$main$78-Smain$main$76
      000118 00                     589 	.db	0
      000119 01                     590 	.uleb128	1
      00011A 01                     591 	.db	1
      00011B                        592 Ldebug_line_end:
                                    593 
                                    594 	.area .debug_loc (NOLOAD)
      000000                        595 Ldebug_loc_start:
      000000 00 00 81 6C            596 	.dw	0,(Smain$main$77)
      000004 00 00 81 6D            597 	.dw	0,(Smain$main$79)
      000008 00 02                  598 	.dw	2
      00000A 78                     599 	.db	120
      00000B 01                     600 	.sleb128	1
      00000C 00 00 81 63            601 	.dw	0,(Smain$main$72)
      000010 00 00 81 6C            602 	.dw	0,(Smain$main$77)
      000014 00 02                  603 	.dw	2
      000016 78                     604 	.db	120
      000017 03                     605 	.sleb128	3
      000018 00 00 81 5F            606 	.dw	0,(Smain$main$71)
      00001C 00 00 81 63            607 	.dw	0,(Smain$main$72)
      000020 00 02                  608 	.dw	2
      000022 78                     609 	.db	120
      000023 05                     610 	.sleb128	5
      000024 00 00 81 5D            611 	.dw	0,(Smain$main$70)
      000028 00 00 81 5F            612 	.dw	0,(Smain$main$71)
      00002C 00 02                  613 	.dw	2
      00002E 78                     614 	.db	120
      00002F 04                     615 	.sleb128	4
      000030 00 00 81 5B            616 	.dw	0,(Smain$main$68)
      000034 00 00 81 5D            617 	.dw	0,(Smain$main$70)
      000038 00 02                  618 	.dw	2
      00003A 78                     619 	.db	120
      00003B 03                     620 	.sleb128	3
      00003C 00 00 81 57            621 	.dw	0,(Smain$main$67)
      000040 00 00 81 5B            622 	.dw	0,(Smain$main$68)
      000044 00 02                  623 	.dw	2
      000046 78                     624 	.db	120
      000047 05                     625 	.sleb128	5
      000048 00 00 81 55            626 	.dw	0,(Smain$main$64)
      00004C 00 00 81 57            627 	.dw	0,(Smain$main$67)
      000050 00 02                  628 	.dw	2
      000052 78                     629 	.db	120
      000053 03                     630 	.sleb128	3
      000054 00 00 81 43            631 	.dw	0,(Smain$main$61)
      000058 00 00 81 55            632 	.dw	0,(Smain$main$64)
      00005C 00 02                  633 	.dw	2
      00005E 78                     634 	.db	120
      00005F 03                     635 	.sleb128	3
      000060 00 00 81 3F            636 	.dw	0,(Smain$main$60)
      000064 00 00 81 43            637 	.dw	0,(Smain$main$61)
      000068 00 02                  638 	.dw	2
      00006A 78                     639 	.db	120
      00006B 05                     640 	.sleb128	5
      00006C 00 00 81 3D            641 	.dw	0,(Smain$main$59)
      000070 00 00 81 3F            642 	.dw	0,(Smain$main$60)
      000074 00 02                  643 	.dw	2
      000076 78                     644 	.db	120
      000077 04                     645 	.sleb128	4
      000078 00 00 81 3B            646 	.dw	0,(Smain$main$57)
      00007C 00 00 81 3D            647 	.dw	0,(Smain$main$59)
      000080 00 02                  648 	.dw	2
      000082 78                     649 	.db	120
      000083 03                     650 	.sleb128	3
      000084 00 00 81 37            651 	.dw	0,(Smain$main$56)
      000088 00 00 81 3B            652 	.dw	0,(Smain$main$57)
      00008C 00 02                  653 	.dw	2
      00008E 78                     654 	.db	120
      00008F 05                     655 	.sleb128	5
      000090 00 00 81 35            656 	.dw	0,(Smain$main$55)
      000094 00 00 81 37            657 	.dw	0,(Smain$main$56)
      000098 00 02                  658 	.dw	2
      00009A 78                     659 	.db	120
      00009B 04                     660 	.sleb128	4
      00009C 00 00 81 2C            661 	.dw	0,(Smain$main$52)
      0000A0 00 00 81 35            662 	.dw	0,(Smain$main$55)
      0000A4 00 02                  663 	.dw	2
      0000A6 78                     664 	.db	120
      0000A7 03                     665 	.sleb128	3
      0000A8 00 00 81 12            666 	.dw	0,(Smain$main$44)
      0000AC 00 00 81 2C            667 	.dw	0,(Smain$main$52)
      0000B0 00 02                  668 	.dw	2
      0000B2 78                     669 	.db	120
      0000B3 03                     670 	.sleb128	3
      0000B4 00 00 81 0D            671 	.dw	0,(Smain$main$43)
      0000B8 00 00 81 12            672 	.dw	0,(Smain$main$44)
      0000BC 00 02                  673 	.dw	2
      0000BE 78                     674 	.db	120
      0000BF 06                     675 	.sleb128	6
      0000C0 00 00 81 0B            676 	.dw	0,(Smain$main$42)
      0000C4 00 00 81 0D            677 	.dw	0,(Smain$main$43)
      0000C8 00 02                  678 	.dw	2
      0000CA 78                     679 	.db	120
      0000CB 05                     680 	.sleb128	5
      0000CC 00 00 81 09            681 	.dw	0,(Smain$main$41)
      0000D0 00 00 81 0B            682 	.dw	0,(Smain$main$42)
      0000D4 00 02                  683 	.dw	2
      0000D6 78                     684 	.db	120
      0000D7 04                     685 	.sleb128	4
      0000D8 00 00 81 02            686 	.dw	0,(Smain$main$35)
      0000DC 00 00 81 09            687 	.dw	0,(Smain$main$41)
      0000E0 00 02                  688 	.dw	2
      0000E2 78                     689 	.db	120
      0000E3 03                     690 	.sleb128	3
      0000E4 00 00 81 01            691 	.dw	0,(Smain$main$34)
      0000E8 00 00 81 02            692 	.dw	0,(Smain$main$35)
      0000EC 00 02                  693 	.dw	2
      0000EE 78                     694 	.db	120
      0000EF 01                     695 	.sleb128	1
      0000F0 00 00 00 00            696 	.dw	0,0
      0000F4 00 00 00 00            697 	.dw	0,0
      0000F8 00 00 81 00            698 	.dw	0,(Smain$setup$29)
      0000FC 00 00 81 01            699 	.dw	0,(Smain$setup$32)
      000100 00 02                  700 	.dw	2
      000102 78                     701 	.db	120
      000103 01                     702 	.sleb128	1
      000104 00 00 80 FC            703 	.dw	0,(Smain$setup$28)
      000108 00 00 81 00            704 	.dw	0,(Smain$setup$29)
      00010C 00 02                  705 	.dw	2
      00010E 78                     706 	.db	120
      00010F 02                     707 	.sleb128	2
      000110 00 00 80 FA            708 	.dw	0,(Smain$setup$26)
      000114 00 00 80 FC            709 	.dw	0,(Smain$setup$28)
      000118 00 02                  710 	.dw	2
      00011A 78                     711 	.db	120
      00011B 01                     712 	.sleb128	1
      00011C 00 00 80 F6            713 	.dw	0,(Smain$setup$25)
      000120 00 00 80 FA            714 	.dw	0,(Smain$setup$26)
      000124 00 02                  715 	.dw	2
      000126 78                     716 	.db	120
      000127 02                     717 	.sleb128	2
      000128 00 00 80 F4            718 	.dw	0,(Smain$setup$23)
      00012C 00 00 80 F6            719 	.dw	0,(Smain$setup$25)
      000130 00 02                  720 	.dw	2
      000132 78                     721 	.db	120
      000133 01                     722 	.sleb128	1
      000134 00 00 80 EF            723 	.dw	0,(Smain$setup$22)
      000138 00 00 80 F4            724 	.dw	0,(Smain$setup$23)
      00013C 00 02                  725 	.dw	2
      00013E 78                     726 	.db	120
      00013F 06                     727 	.sleb128	6
      000140 00 00 80 ED            728 	.dw	0,(Smain$setup$21)
      000144 00 00 80 EF            729 	.dw	0,(Smain$setup$22)
      000148 00 02                  730 	.dw	2
      00014A 78                     731 	.db	120
      00014B 05                     732 	.sleb128	5
      00014C 00 00 80 EB            733 	.dw	0,(Smain$setup$20)
      000150 00 00 80 ED            734 	.dw	0,(Smain$setup$21)
      000154 00 02                  735 	.dw	2
      000156 78                     736 	.db	120
      000157 04                     737 	.sleb128	4
      000158 00 00 80 E9            738 	.dw	0,(Smain$setup$19)
      00015C 00 00 80 EB            739 	.dw	0,(Smain$setup$20)
      000160 00 02                  740 	.dw	2
      000162 78                     741 	.db	120
      000163 03                     742 	.sleb128	3
      000164 00 00 80 E7            743 	.dw	0,(Smain$setup$18)
      000168 00 00 80 E9            744 	.dw	0,(Smain$setup$19)
      00016C 00 02                  745 	.dw	2
      00016E 78                     746 	.db	120
      00016F 02                     747 	.sleb128	2
      000170 00 00 80 E5            748 	.dw	0,(Smain$setup$16)
      000174 00 00 80 E7            749 	.dw	0,(Smain$setup$18)
      000178 00 02                  750 	.dw	2
      00017A 78                     751 	.db	120
      00017B 01                     752 	.sleb128	1
      00017C 00 00 80 E0            753 	.dw	0,(Smain$setup$15)
      000180 00 00 80 E5            754 	.dw	0,(Smain$setup$16)
      000184 00 02                  755 	.dw	2
      000186 78                     756 	.db	120
      000187 04                     757 	.sleb128	4
      000188 00 00 80 DE            758 	.dw	0,(Smain$setup$14)
      00018C 00 00 80 E0            759 	.dw	0,(Smain$setup$15)
      000190 00 02                  760 	.dw	2
      000192 78                     761 	.db	120
      000193 03                     762 	.sleb128	3
      000194 00 00 80 DC            763 	.dw	0,(Smain$setup$13)
      000198 00 00 80 DE            764 	.dw	0,(Smain$setup$14)
      00019C 00 02                  765 	.dw	2
      00019E 78                     766 	.db	120
      00019F 02                     767 	.sleb128	2
      0001A0 00 00 80 D7            768 	.dw	0,(Smain$setup$10)
      0001A4 00 00 80 DC            769 	.dw	0,(Smain$setup$13)
      0001A8 00 02                  770 	.dw	2
      0001AA 78                     771 	.db	120
      0001AB 01                     772 	.sleb128	1
      0001AC 00 00 80 D2            773 	.dw	0,(Smain$setup$9)
      0001B0 00 00 80 D7            774 	.dw	0,(Smain$setup$10)
      0001B4 00 02                  775 	.dw	2
      0001B6 78                     776 	.db	120
      0001B7 05                     777 	.sleb128	5
      0001B8 00 00 80 D0            778 	.dw	0,(Smain$setup$8)
      0001BC 00 00 80 D2            779 	.dw	0,(Smain$setup$9)
      0001C0 00 02                  780 	.dw	2
      0001C2 78                     781 	.db	120
      0001C3 04                     782 	.sleb128	4
      0001C4 00 00 80 CE            783 	.dw	0,(Smain$setup$7)
      0001C8 00 00 80 D0            784 	.dw	0,(Smain$setup$8)
      0001CC 00 02                  785 	.dw	2
      0001CE 78                     786 	.db	120
      0001CF 03                     787 	.sleb128	3
      0001D0 00 00 80 CC            788 	.dw	0,(Smain$setup$6)
      0001D4 00 00 80 CE            789 	.dw	0,(Smain$setup$7)
      0001D8 00 02                  790 	.dw	2
      0001DA 78                     791 	.db	120
      0001DB 02                     792 	.sleb128	2
      0001DC 00 00 80 CA            793 	.dw	0,(Smain$setup$4)
      0001E0 00 00 80 CC            794 	.dw	0,(Smain$setup$6)
      0001E4 00 02                  795 	.dw	2
      0001E6 78                     796 	.db	120
      0001E7 01                     797 	.sleb128	1
      0001E8 00 00 80 C6            798 	.dw	0,(Smain$setup$3)
      0001EC 00 00 80 CA            799 	.dw	0,(Smain$setup$4)
      0001F0 00 02                  800 	.dw	2
      0001F2 78                     801 	.db	120
      0001F3 02                     802 	.sleb128	2
      0001F4 00 00 80 C4            803 	.dw	0,(Smain$setup$1)
      0001F8 00 00 80 C6            804 	.dw	0,(Smain$setup$3)
      0001FC 00 02                  805 	.dw	2
      0001FE 78                     806 	.db	120
      0001FF 01                     807 	.sleb128	1
      000200 00 00 00 00            808 	.dw	0,0
      000204 00 00 00 00            809 	.dw	0,0
                                    810 
                                    811 	.area .debug_abbrev (NOLOAD)
      000000                        812 Ldebug_abbrev:
      000000 09                     813 	.uleb128	9
      000001 01                     814 	.uleb128	1
      000002 01                     815 	.db	1
      000003 01                     816 	.uleb128	1
      000004 13                     817 	.uleb128	19
      000005 0B                     818 	.uleb128	11
      000006 0B                     819 	.uleb128	11
      000007 49                     820 	.uleb128	73
      000008 13                     821 	.uleb128	19
      000009 00                     822 	.uleb128	0
      00000A 00                     823 	.uleb128	0
      00000B 07                     824 	.uleb128	7
      00000C 34                     825 	.uleb128	52
      00000D 00                     826 	.db	0
      00000E 02                     827 	.uleb128	2
      00000F 0A                     828 	.uleb128	10
      000010 03                     829 	.uleb128	3
      000011 08                     830 	.uleb128	8
      000012 49                     831 	.uleb128	73
      000013 13                     832 	.uleb128	19
      000014 00                     833 	.uleb128	0
      000015 00                     834 	.uleb128	0
      000016 04                     835 	.uleb128	4
      000017 2E                     836 	.uleb128	46
      000018 01                     837 	.db	1
      000019 01                     838 	.uleb128	1
      00001A 13                     839 	.uleb128	19
      00001B 03                     840 	.uleb128	3
      00001C 08                     841 	.uleb128	8
      00001D 11                     842 	.uleb128	17
      00001E 01                     843 	.uleb128	1
      00001F 12                     844 	.uleb128	18
      000020 01                     845 	.uleb128	1
      000021 3F                     846 	.uleb128	63
      000022 0C                     847 	.uleb128	12
      000023 40                     848 	.uleb128	64
      000024 06                     849 	.uleb128	6
      000025 49                     850 	.uleb128	73
      000026 13                     851 	.uleb128	19
      000027 00                     852 	.uleb128	0
      000028 00                     853 	.uleb128	0
      000029 08                     854 	.uleb128	8
      00002A 26                     855 	.uleb128	38
      00002B 00                     856 	.db	0
      00002C 49                     857 	.uleb128	73
      00002D 13                     858 	.uleb128	19
      00002E 00                     859 	.uleb128	0
      00002F 00                     860 	.uleb128	0
      000030 01                     861 	.uleb128	1
      000031 11                     862 	.uleb128	17
      000032 01                     863 	.db	1
      000033 03                     864 	.uleb128	3
      000034 08                     865 	.uleb128	8
      000035 10                     866 	.uleb128	16
      000036 06                     867 	.uleb128	6
      000037 13                     868 	.uleb128	19
      000038 0B                     869 	.uleb128	11
      000039 25                     870 	.uleb128	37
      00003A 08                     871 	.uleb128	8
      00003B 00                     872 	.uleb128	0
      00003C 00                     873 	.uleb128	0
      00003D 06                     874 	.uleb128	6
      00003E 0B                     875 	.uleb128	11
      00003F 00                     876 	.db	0
      000040 11                     877 	.uleb128	17
      000041 01                     878 	.uleb128	1
      000042 12                     879 	.uleb128	18
      000043 01                     880 	.uleb128	1
      000044 00                     881 	.uleb128	0
      000045 00                     882 	.uleb128	0
      000046 02                     883 	.uleb128	2
      000047 2E                     884 	.uleb128	46
      000048 00                     885 	.db	0
      000049 03                     886 	.uleb128	3
      00004A 08                     887 	.uleb128	8
      00004B 11                     888 	.uleb128	17
      00004C 01                     889 	.uleb128	1
      00004D 12                     890 	.uleb128	18
      00004E 01                     891 	.uleb128	1
      00004F 3F                     892 	.uleb128	63
      000050 0C                     893 	.uleb128	12
      000051 40                     894 	.uleb128	64
      000052 06                     895 	.uleb128	6
      000053 00                     896 	.uleb128	0
      000054 00                     897 	.uleb128	0
      000055 05                     898 	.uleb128	5
      000056 0B                     899 	.uleb128	11
      000057 01                     900 	.db	1
      000058 01                     901 	.uleb128	1
      000059 13                     902 	.uleb128	19
      00005A 11                     903 	.uleb128	17
      00005B 01                     904 	.uleb128	1
      00005C 12                     905 	.uleb128	18
      00005D 01                     906 	.uleb128	1
      00005E 00                     907 	.uleb128	0
      00005F 00                     908 	.uleb128	0
      000060 0A                     909 	.uleb128	10
      000061 21                     910 	.uleb128	33
      000062 00                     911 	.db	0
      000063 2F                     912 	.uleb128	47
      000064 0B                     913 	.uleb128	11
      000065 00                     914 	.uleb128	0
      000066 00                     915 	.uleb128	0
      000067 03                     916 	.uleb128	3
      000068 24                     917 	.uleb128	36
      000069 00                     918 	.db	0
      00006A 03                     919 	.uleb128	3
      00006B 08                     920 	.uleb128	8
      00006C 0B                     921 	.uleb128	11
      00006D 0B                     922 	.uleb128	11
      00006E 3E                     923 	.uleb128	62
      00006F 0B                     924 	.uleb128	11
      000070 00                     925 	.uleb128	0
      000071 00                     926 	.uleb128	0
      000072 00                     927 	.uleb128	0
                                    928 
                                    929 	.area .debug_info (NOLOAD)
      000000 00 00 01 26            930 	.dw	0,Ldebug_info_end-Ldebug_info_start
      000004                        931 Ldebug_info_start:
      000004 00 02                  932 	.dw	2
      000006 00 00 00 00            933 	.dw	0,(Ldebug_abbrev)
      00000A 04                     934 	.db	4
      00000B 01                     935 	.uleb128	1
      00000C 2E 2F 73 72 63 2F 6D   936 	.ascii "./src/main.c"
             61 69 6E 2E 63
      000018 00                     937 	.db	0
      000019 00 00 00 00            938 	.dw	0,(Ldebug_line_start+-4)
      00001D 01                     939 	.db	1
      00001E 53 44 43 43 20 76 65   940 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      000037 00                     941 	.db	0
      000038 02                     942 	.uleb128	2
      000039 73 65 74 75 70         943 	.ascii "setup"
      00003E 00                     944 	.db	0
      00003F 00 00 80 C4            945 	.dw	0,(_setup)
      000043 00 00 81 01            946 	.dw	0,(XG$setup$0$0+1)
      000047 01                     947 	.db	1
      000048 00 00 00 F8            948 	.dw	0,(Ldebug_loc_start+248)
      00004C 03                     949 	.uleb128	3
      00004D 69 6E 74               950 	.ascii "int"
      000050 00                     951 	.db	0
      000051 02                     952 	.db	2
      000052 05                     953 	.db	5
      000053 04                     954 	.uleb128	4
      000054 00 00 00 DE            955 	.dw	0,222
      000058 6D 61 69 6E            956 	.ascii "main"
      00005C 00                     957 	.db	0
      00005D 00 00 81 01            958 	.dw	0,(_main)
      000061 00 00 81 6D            959 	.dw	0,(XG$main$0$0+1)
      000065 01                     960 	.db	1
      000066 00 00 00 00            961 	.dw	0,(Ldebug_loc_start)
      00006A 00 00 00 4C            962 	.dw	0,76
      00006E 05                     963 	.uleb128	5
      00006F 00 00 00 A0            964 	.dw	0,160
      000073 00 00 81 07            965 	.dw	0,(Smain$main$39)
      000077 00 00 81 67            966 	.dw	0,(Smain$main$75)
      00007B 06                     967 	.uleb128	6
      00007C 00 00 81 18            968 	.dw	0,(Smain$main$45)
      000080 00 00 81 1C            969 	.dw	0,(Smain$main$47)
      000084 06                     970 	.uleb128	6
      000085 00 00 81 1F            971 	.dw	0,(Smain$main$48)
      000089 00 00 81 21            972 	.dw	0,(Smain$main$50)
      00008D 06                     973 	.uleb128	6
      00008E 00 00 81 33            974 	.dw	0,(Smain$main$53)
      000092 00 00 81 43            975 	.dw	0,(Smain$main$62)
      000096 06                     976 	.uleb128	6
      000097 00 00 81 55            977 	.dw	0,(Smain$main$65)
      00009B 00 00 81 63            978 	.dw	0,(Smain$main$73)
      00009F 00                     979 	.uleb128	0
      0000A0 07                     980 	.uleb128	7
      0000A1 02                     981 	.db	2
      0000A2 91                     982 	.db	145
      0000A3 7F                     983 	.sleb128	-1
      0000A4 61 6B 74 75 61 6C 5F   984 	.ascii "aktual_stav"
             73 74 61 76
      0000AF 00                     985 	.db	0
      0000B0 00 00 00 DE            986 	.dw	0,222
      0000B4 07                     987 	.uleb128	7
      0000B5 02                     988 	.db	2
      0000B6 91                     989 	.db	145
      0000B7 7E                     990 	.sleb128	-2
      0000B8 6D 69 6E 75 6C 79 5F   991 	.ascii "minuly_stav"
             73 74 61 76
      0000C3 00                     992 	.db	0
      0000C4 00 00 00 DE            993 	.dw	0,222
      0000C8 07                     994 	.uleb128	7
      0000C9 02                     995 	.db	2
      0000CA 91                     996 	.db	145
      0000CB 00                     997 	.sleb128	0
      0000CC 73 74 61 76 5F 62 7A   998 	.ascii "stav_bzucaku"
             75 63 61 6B 75
      0000D8 00                     999 	.db	0
      0000D9 00 00 00 DE           1000 	.dw	0,222
      0000DD 00                    1001 	.uleb128	0
      0000DE 03                    1002 	.uleb128	3
      0000DF 75 6E 73 69 67 6E 65  1003 	.ascii "unsigned char"
             64 20 63 68 61 72
      0000EC 00                    1004 	.db	0
      0000ED 01                    1005 	.db	1
      0000EE 08                    1006 	.db	8
      0000EF 08                    1007 	.uleb128	8
      0000F0 00 00 00 DE           1008 	.dw	0,222
      0000F4 09                    1009 	.uleb128	9
      0000F5 00 00 01 01           1010 	.dw	0,257
      0000F9 14                    1011 	.db	20
      0000FA 00 00 00 EF           1012 	.dw	0,239
      0000FE 0A                    1013 	.uleb128	10
      0000FF 13                    1014 	.db	19
      000100 00                    1015 	.uleb128	0
      000101 07                    1016 	.uleb128	7
      000102 05                    1017 	.db	5
      000103 03                    1018 	.db	3
      000104 00 00 80 8C           1019 	.dw	0,(___str_1)
      000108 5F 5F 73 74 72 5F 31  1020 	.ascii "__str_1"
      00010F 00                    1021 	.db	0
      000110 00 00 00 F4           1022 	.dw	0,244
      000114 07                    1023 	.uleb128	7
      000115 05                    1024 	.db	5
      000116 03                    1025 	.db	3
      000117 00 00 80 A0           1026 	.dw	0,(___str_3)
      00011B 5F 5F 73 74 72 5F 33  1027 	.ascii "__str_3"
      000122 00                    1028 	.db	0
      000123 00 00 00 F4           1029 	.dw	0,244
      000127 00                    1030 	.uleb128	0
      000128 00                    1031 	.uleb128	0
      000129 00                    1032 	.uleb128	0
      00012A                       1033 Ldebug_info_end:
                                   1034 
                                   1035 	.area .debug_pubnames (NOLOAD)
      000000 00 00 00 21           1036 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000004                       1037 Ldebug_pubnames_start:
      000004 00 02                 1038 	.dw	2
      000006 00 00 00 00           1039 	.dw	0,(Ldebug_info_start-4)
      00000A 00 00 01 2A           1040 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      00000E 00 00 00 38           1041 	.dw	0,56
      000012 73 65 74 75 70        1042 	.ascii "setup"
      000017 00                    1043 	.db	0
      000018 00 00 00 53           1044 	.dw	0,83
      00001C 6D 61 69 6E           1045 	.ascii "main"
      000020 00                    1046 	.db	0
      000021 00 00 00 00           1047 	.dw	0,0
      000025                       1048 Ldebug_pubnames_end:
                                   1049 
                                   1050 	.area .debug_frame (NOLOAD)
      000000 00 00                 1051 	.dw	0
      000002 00 0E                 1052 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000004                       1053 Ldebug_CIE0_start:
      000004 FF FF                 1054 	.dw	0xffff
      000006 FF FF                 1055 	.dw	0xffff
      000008 01                    1056 	.db	1
      000009 00                    1057 	.db	0
      00000A 01                    1058 	.uleb128	1
      00000B 7F                    1059 	.sleb128	-1
      00000C 09                    1060 	.db	9
      00000D 0C                    1061 	.db	12
      00000E 08                    1062 	.uleb128	8
      00000F 02                    1063 	.uleb128	2
      000010 89                    1064 	.db	137
      000011 01                    1065 	.uleb128	1
      000012                       1066 Ldebug_CIE0_end:
      000012 00 00 00 98           1067 	.dw	0,152
      000016 00 00 00 00           1068 	.dw	0,(Ldebug_CIE0_start-4)
      00001A 00 00 81 01           1069 	.dw	0,(Smain$main$34)	;initial loc
      00001E 00 00 00 6C           1070 	.dw	0,Smain$main$79-Smain$main$34
      000022 01                    1071 	.db	1
      000023 00 00 81 01           1072 	.dw	0,(Smain$main$34)
      000027 0E                    1073 	.db	14
      000028 02                    1074 	.uleb128	2
      000029 01                    1075 	.db	1
      00002A 00 00 81 02           1076 	.dw	0,(Smain$main$35)
      00002E 0E                    1077 	.db	14
      00002F 04                    1078 	.uleb128	4
      000030 01                    1079 	.db	1
      000031 00 00 81 09           1080 	.dw	0,(Smain$main$41)
      000035 0E                    1081 	.db	14
      000036 05                    1082 	.uleb128	5
      000037 01                    1083 	.db	1
      000038 00 00 81 0B           1084 	.dw	0,(Smain$main$42)
      00003C 0E                    1085 	.db	14
      00003D 06                    1086 	.uleb128	6
      00003E 01                    1087 	.db	1
      00003F 00 00 81 0D           1088 	.dw	0,(Smain$main$43)
      000043 0E                    1089 	.db	14
      000044 07                    1090 	.uleb128	7
      000045 01                    1091 	.db	1
      000046 00 00 81 12           1092 	.dw	0,(Smain$main$44)
      00004A 0E                    1093 	.db	14
      00004B 04                    1094 	.uleb128	4
      00004C 01                    1095 	.db	1
      00004D 00 00 81 2C           1096 	.dw	0,(Smain$main$52)
      000051 0E                    1097 	.db	14
      000052 04                    1098 	.uleb128	4
      000053 01                    1099 	.db	1
      000054 00 00 81 35           1100 	.dw	0,(Smain$main$55)
      000058 0E                    1101 	.db	14
      000059 05                    1102 	.uleb128	5
      00005A 01                    1103 	.db	1
      00005B 00 00 81 37           1104 	.dw	0,(Smain$main$56)
      00005F 0E                    1105 	.db	14
      000060 06                    1106 	.uleb128	6
      000061 01                    1107 	.db	1
      000062 00 00 81 3B           1108 	.dw	0,(Smain$main$57)
      000066 0E                    1109 	.db	14
      000067 04                    1110 	.uleb128	4
      000068 01                    1111 	.db	1
      000069 00 00 81 3D           1112 	.dw	0,(Smain$main$59)
      00006D 0E                    1113 	.db	14
      00006E 05                    1114 	.uleb128	5
      00006F 01                    1115 	.db	1
      000070 00 00 81 3F           1116 	.dw	0,(Smain$main$60)
      000074 0E                    1117 	.db	14
      000075 06                    1118 	.uleb128	6
      000076 01                    1119 	.db	1
      000077 00 00 81 43           1120 	.dw	0,(Smain$main$61)
      00007B 0E                    1121 	.db	14
      00007C 04                    1122 	.uleb128	4
      00007D 01                    1123 	.db	1
      00007E 00 00 81 55           1124 	.dw	0,(Smain$main$64)
      000082 0E                    1125 	.db	14
      000083 04                    1126 	.uleb128	4
      000084 01                    1127 	.db	1
      000085 00 00 81 57           1128 	.dw	0,(Smain$main$67)
      000089 0E                    1129 	.db	14
      00008A 06                    1130 	.uleb128	6
      00008B 01                    1131 	.db	1
      00008C 00 00 81 5B           1132 	.dw	0,(Smain$main$68)
      000090 0E                    1133 	.db	14
      000091 04                    1134 	.uleb128	4
      000092 01                    1135 	.db	1
      000093 00 00 81 5D           1136 	.dw	0,(Smain$main$70)
      000097 0E                    1137 	.db	14
      000098 05                    1138 	.uleb128	5
      000099 01                    1139 	.db	1
      00009A 00 00 81 5F           1140 	.dw	0,(Smain$main$71)
      00009E 0E                    1141 	.db	14
      00009F 06                    1142 	.uleb128	6
      0000A0 01                    1143 	.db	1
      0000A1 00 00 81 63           1144 	.dw	0,(Smain$main$72)
      0000A5 0E                    1145 	.db	14
      0000A6 04                    1146 	.uleb128	4
      0000A7 01                    1147 	.db	1
      0000A8 00 00 81 6C           1148 	.dw	0,(Smain$main$77)
      0000AC 0E                    1149 	.db	14
      0000AD 02                    1150 	.uleb128	2
                                   1151 
                                   1152 	.area .debug_frame (NOLOAD)
      0000AE 00 00                 1153 	.dw	0
      0000B0 00 0E                 1154 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0000B2                       1155 Ldebug_CIE1_start:
      0000B2 FF FF                 1156 	.dw	0xffff
      0000B4 FF FF                 1157 	.dw	0xffff
      0000B6 01                    1158 	.db	1
      0000B7 00                    1159 	.db	0
      0000B8 01                    1160 	.uleb128	1
      0000B9 7F                    1161 	.sleb128	-1
      0000BA 09                    1162 	.db	9
      0000BB 0C                    1163 	.db	12
      0000BC 08                    1164 	.uleb128	8
      0000BD 02                    1165 	.uleb128	2
      0000BE 89                    1166 	.db	137
      0000BF 01                    1167 	.uleb128	1
      0000C0                       1168 Ldebug_CIE1_end:
      0000C0 00 00 00 A6           1169 	.dw	0,166
      0000C4 00 00 00 AE           1170 	.dw	0,(Ldebug_CIE1_start-4)
      0000C8 00 00 80 C4           1171 	.dw	0,(Smain$setup$1)	;initial loc
      0000CC 00 00 00 3D           1172 	.dw	0,Smain$setup$32-Smain$setup$1
      0000D0 01                    1173 	.db	1
      0000D1 00 00 80 C4           1174 	.dw	0,(Smain$setup$1)
      0000D5 0E                    1175 	.db	14
      0000D6 02                    1176 	.uleb128	2
      0000D7 01                    1177 	.db	1
      0000D8 00 00 80 C6           1178 	.dw	0,(Smain$setup$3)
      0000DC 0E                    1179 	.db	14
      0000DD 03                    1180 	.uleb128	3
      0000DE 01                    1181 	.db	1
      0000DF 00 00 80 CA           1182 	.dw	0,(Smain$setup$4)
      0000E3 0E                    1183 	.db	14
      0000E4 02                    1184 	.uleb128	2
      0000E5 01                    1185 	.db	1
      0000E6 00 00 80 CC           1186 	.dw	0,(Smain$setup$6)
      0000EA 0E                    1187 	.db	14
      0000EB 03                    1188 	.uleb128	3
      0000EC 01                    1189 	.db	1
      0000ED 00 00 80 CE           1190 	.dw	0,(Smain$setup$7)
      0000F1 0E                    1191 	.db	14
      0000F2 04                    1192 	.uleb128	4
      0000F3 01                    1193 	.db	1
      0000F4 00 00 80 D0           1194 	.dw	0,(Smain$setup$8)
      0000F8 0E                    1195 	.db	14
      0000F9 05                    1196 	.uleb128	5
      0000FA 01                    1197 	.db	1
      0000FB 00 00 80 D2           1198 	.dw	0,(Smain$setup$9)
      0000FF 0E                    1199 	.db	14
      000100 06                    1200 	.uleb128	6
      000101 01                    1201 	.db	1
      000102 00 00 80 D7           1202 	.dw	0,(Smain$setup$10)
      000106 0E                    1203 	.db	14
      000107 02                    1204 	.uleb128	2
      000108 01                    1205 	.db	1
      000109 00 00 80 DC           1206 	.dw	0,(Smain$setup$13)
      00010D 0E                    1207 	.db	14
      00010E 03                    1208 	.uleb128	3
      00010F 01                    1209 	.db	1
      000110 00 00 80 DE           1210 	.dw	0,(Smain$setup$14)
      000114 0E                    1211 	.db	14
      000115 04                    1212 	.uleb128	4
      000116 01                    1213 	.db	1
      000117 00 00 80 E0           1214 	.dw	0,(Smain$setup$15)
      00011B 0E                    1215 	.db	14
      00011C 05                    1216 	.uleb128	5
      00011D 01                    1217 	.db	1
      00011E 00 00 80 E5           1218 	.dw	0,(Smain$setup$16)
      000122 0E                    1219 	.db	14
      000123 02                    1220 	.uleb128	2
      000124 01                    1221 	.db	1
      000125 00 00 80 E7           1222 	.dw	0,(Smain$setup$18)
      000129 0E                    1223 	.db	14
      00012A 03                    1224 	.uleb128	3
      00012B 01                    1225 	.db	1
      00012C 00 00 80 E9           1226 	.dw	0,(Smain$setup$19)
      000130 0E                    1227 	.db	14
      000131 04                    1228 	.uleb128	4
      000132 01                    1229 	.db	1
      000133 00 00 80 EB           1230 	.dw	0,(Smain$setup$20)
      000137 0E                    1231 	.db	14
      000138 05                    1232 	.uleb128	5
      000139 01                    1233 	.db	1
      00013A 00 00 80 ED           1234 	.dw	0,(Smain$setup$21)
      00013E 0E                    1235 	.db	14
      00013F 06                    1236 	.uleb128	6
      000140 01                    1237 	.db	1
      000141 00 00 80 EF           1238 	.dw	0,(Smain$setup$22)
      000145 0E                    1239 	.db	14
      000146 07                    1240 	.uleb128	7
      000147 01                    1241 	.db	1
      000148 00 00 80 F4           1242 	.dw	0,(Smain$setup$23)
      00014C 0E                    1243 	.db	14
      00014D 02                    1244 	.uleb128	2
      00014E 01                    1245 	.db	1
      00014F 00 00 80 F6           1246 	.dw	0,(Smain$setup$25)
      000153 0E                    1247 	.db	14
      000154 03                    1248 	.uleb128	3
      000155 01                    1249 	.db	1
      000156 00 00 80 FA           1250 	.dw	0,(Smain$setup$26)
      00015A 0E                    1251 	.db	14
      00015B 02                    1252 	.uleb128	2
      00015C 01                    1253 	.db	1
      00015D 00 00 80 FC           1254 	.dw	0,(Smain$setup$28)
      000161 0E                    1255 	.db	14
      000162 03                    1256 	.uleb128	3
      000163 01                    1257 	.db	1
      000164 00 00 81 00           1258 	.dw	0,(Smain$setup$29)
      000168 0E                    1259 	.db	14
      000169 02                    1260 	.uleb128	2

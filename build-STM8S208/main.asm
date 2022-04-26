;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _setup
	.globl _init_uart1
	.globl _puts
	.globl _TIM2_SetCompare1
	.globl _TIM2_OC1PreloadConfig
	.globl _TIM2_Cmd
	.globl _TIM2_OC1Init
	.globl _TIM2_TimeBaseInit
	.globl _GPIO_ReadInputPin
	.globl _GPIO_Init
	.globl _CLK_HSIPrescalerConfig
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
	int _TRAP_IRQHandler ; trap
	int _TLI_IRQHandler ; int0
	int _AWU_IRQHandler ; int1
	int _CLK_IRQHandler ; int2
	int _EXTI_PORTA_IRQHandler ; int3
	int _EXTI_PORTB_IRQHandler ; int4
	int _EXTI_PORTC_IRQHandler ; int5
	int _EXTI_PORTD_IRQHandler ; int6
	int _EXTI_PORTE_IRQHandler ; int7
	int _CAN_RX_IRQHandler ; int8
	int _CAN_TX_IRQHandler ; int9
	int _SPI_IRQHandler ; int10
	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
	int _TIM1_CAP_COM_IRQHandler ; int12
	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
	int _TIM2_CAP_COM_IRQHandler ; int14
	int _TIM3_UPD_OVF_BRK_IRQHandler ; int15
	int _TIM3_CAP_COM_IRQHandler ; int16
	int _UART1_TX_IRQHandler ; int17
	int _UART1_RX_IRQHandler ; int18
	int _I2C_IRQHandler ; int19
	int _UART3_TX_IRQHandler ; int20
	int _UART3_RX_IRQHandler ; int21
	int _ADC2_IRQHandler ; int22
	int _TIM4_UPD_OVF_IRQHandler ; int23
	int _EEPROM_EEC_IRQHandler ; int24
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	Smain$setup$0 ==.
;	./src/main.c: 16: void setup(void)
; genLabel
;	-----------------------------------------
;	 function setup
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_setup:
	Smain$setup$1 ==.
	Smain$setup$2 ==.
;	./src/main.c: 18: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);      // taktovani MCU na 16MHz
; genIPush
	push	#0x00
	Smain$setup$3 ==.
; genCall
	call	_CLK_HSIPrescalerConfig
	pop	a
	Smain$setup$4 ==.
	Smain$setup$5 ==.
;	./src/main.c: 19: GPIO_Init(BTN_PORT, BTN_PIN, GPIO_MODE_IN_FL_NO_IT);
; genIPush
	push	#0x00
	Smain$setup$6 ==.
; genIPush
	push	#0x10
	Smain$setup$7 ==.
; genIPush
	push	#0x14
	Smain$setup$8 ==.
	push	#0x50
	Smain$setup$9 ==.
; genCall
	call	_GPIO_Init
	addw	sp, #4
	Smain$setup$10 ==.
	Smain$setup$11 ==.
;	./src/main.c: 21: init_uart1();
; genCall
	call	_init_uart1
	Smain$setup$12 ==.
;	./src/main.c: 23: TIM2_TimeBaseInit(TIM2_PRESCALER_4, 7000 - 1 ); 
; genIPush
	push	#0x57
	Smain$setup$13 ==.
	push	#0x1b
	Smain$setup$14 ==.
; genIPush
	push	#0x02
	Smain$setup$15 ==.
; genCall
	call	_TIM2_TimeBaseInit
	addw	sp, #3
	Smain$setup$16 ==.
	Smain$setup$17 ==.
;	./src/main.c: 24: TIM2_OC1Init(TIM2_OCMODE_PWM1,TIM2_OUTPUTSTATE_ENABLE,5000,TIM2_OCPOLARITY_HIGH);// inicializujeme kanál 1 (TM2_CH1)
; genIPush
	push	#0x00
	Smain$setup$18 ==.
; genIPush
	push	#0x88
	Smain$setup$19 ==.
	push	#0x13
	Smain$setup$20 ==.
; genIPush
	push	#0x11
	Smain$setup$21 ==.
; genIPush
	push	#0x60
	Smain$setup$22 ==.
; genCall
	call	_TIM2_OC1Init
	addw	sp, #5
	Smain$setup$23 ==.
	Smain$setup$24 ==.
;	./src/main.c: 25: TIM2_OC1PreloadConfig(ENABLE);
; genIPush
	push	#0x01
	Smain$setup$25 ==.
; genCall
	call	_TIM2_OC1PreloadConfig
	pop	a
	Smain$setup$26 ==.
	Smain$setup$27 ==.
;	./src/main.c: 26: TIM2_Cmd(ENABLE);
; genIPush
	push	#0x01
	Smain$setup$28 ==.
; genCall
	call	_TIM2_Cmd
	pop	a
	Smain$setup$29 ==.
; genLabel
00101$:
	Smain$setup$30 ==.
;	./src/main.c: 28: }
; genEndFunction
	Smain$setup$31 ==.
	XG$setup$0$0 ==.
	ret
	Smain$setup$32 ==.
	Smain$main$33 ==.
;	./src/main.c: 30: int main(void)
; genLabel
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_main:
	Smain$main$34 ==.
	pushw	x
	Smain$main$35 ==.
	Smain$main$36 ==.
;	./src/main.c: 34: uint8_t minuly_stav = 0;
; genAssign
	clr	(0x01, sp)
	Smain$main$37 ==.
;	./src/main.c: 38: setup();
; genCall
	call	_setup
	Smain$main$38 ==.
;	./src/main.c: 40: while (1) {
; genLabel
00111$:
	Smain$main$39 ==.
	Smain$main$40 ==.
;	./src/main.c: 44: if (BTN_PUSH){
; genIPush
	push	#0x10
	Smain$main$41 ==.
; genIPush
	push	#0x14
	Smain$main$42 ==.
	push	#0x50
	Smain$main$43 ==.
; genCall
	call	_GPIO_ReadInputPin
	addw	sp, #3
	Smain$main$44 ==.
; genIfx
	tnz	a
	jreq	00145$
	jp	00102$
00145$:
	Smain$main$45 ==.
	Smain$main$46 ==.
;	./src/main.c: 45: aktual_stav = 1;
; genAssign
	ld	a, #0x01
	ld	(0x02, sp), a
	Smain$main$47 ==.
; genGoto
	jp	00103$
; genLabel
00102$:
	Smain$main$48 ==.
	Smain$main$49 ==.
;	./src/main.c: 48: aktual_stav = 0;
; genAssign
	clr	(0x02, sp)
	Smain$main$50 ==.
; genLabel
00103$:
	Smain$main$51 ==.
;	./src/main.c: 51: if (aktual_stav == 1 && minuly_stav == 0){
; genCmpEQorNE
	ld	a, (0x02, sp)
	dec	a
	jrne	00147$
	jp	00148$
00147$:
	jp	00105$
00148$:
	Smain$main$52 ==.
; skipping generated iCode
; genIfx
	tnz	(0x01, sp)
	jreq	00149$
	jp	00105$
00149$:
	Smain$main$53 ==.
	Smain$main$54 ==.
;	./src/main.c: 53: TIM2_SetCompare1(5000);
; genIPush
	push	#0x88
	Smain$main$55 ==.
	push	#0x13
	Smain$main$56 ==.
; genCall
	call	_TIM2_SetCompare1
	popw	x
	Smain$main$57 ==.
	Smain$main$58 ==.
;	./src/main.c: 54: printf("Bzučák je zaplý\r\n");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_1+0)
	Smain$main$59 ==.
	push	#((___str_1+0) >> 8)
	Smain$main$60 ==.
; genCall
	call	_puts
	popw	x
	Smain$main$61 ==.
	Smain$main$62 ==.
; genLabel
00105$:
	Smain$main$63 ==.
;	./src/main.c: 56: if (aktual_stav == 0 && minuly_stav == 1){
; genIfx
	tnz	(0x02, sp)
	jreq	00150$
	jp	00108$
00150$:
; genCmpEQorNE
	ld	a, (0x01, sp)
	dec	a
	jrne	00152$
	jp	00153$
00152$:
	jp	00108$
00153$:
	Smain$main$64 ==.
; skipping generated iCode
	Smain$main$65 ==.
	Smain$main$66 ==.
;	./src/main.c: 57: TIM2_SetCompare1(0);
; genIPush
	clrw	x
	pushw	x
	Smain$main$67 ==.
; genCall
	call	_TIM2_SetCompare1
	popw	x
	Smain$main$68 ==.
	Smain$main$69 ==.
;	./src/main.c: 58: printf("Bzučák je vyplý\r\n");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_3+0)
	Smain$main$70 ==.
	push	#((___str_3+0) >> 8)
	Smain$main$71 ==.
; genCall
	call	_puts
	popw	x
	Smain$main$72 ==.
	Smain$main$73 ==.
; genLabel
00108$:
	Smain$main$74 ==.
;	./src/main.c: 62: minuly_stav = aktual_stav;
; genAssign
	ld	a, (0x02, sp)
	ld	(0x01, sp), a
	Smain$main$75 ==.
; genGoto
	jp	00111$
; genLabel
00113$:
	Smain$main$76 ==.
;	./src/main.c: 67: }
; genEndFunction
	addw	sp, #2
	Smain$main$77 ==.
	Smain$main$78 ==.
	XG$main$0$0 ==.
	ret
	Smain$main$79 ==.
	.area CODE
	.area CONST
Fmain$__str_1$0_0$0 == .
	.area CONST
___str_1:
	.ascii "Bzu"
	.db 0xc4
	.db 0x8d
	.db 0xc3
	.db 0xa1
	.ascii "k je zapl"
	.db 0xc3
	.db 0xbd
	.db 0x0d
	.db 0x00
	.area CODE
Fmain$__str_3$0_0$0 == .
	.area CONST
___str_3:
	.ascii "Bzu"
	.db 0xc4
	.db 0x8d
	.db 0xc3
	.db 0xa1
	.ascii "k je vypl"
	.db 0xc3
	.db 0xbd
	.db 0x0d
	.db 0x00
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)

	.area .debug_line (NOLOAD)
	.dw	0,Ldebug_line_end-Ldebug_line_start
Ldebug_line_start:
	.dw	2
	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
	.db	1
	.db	1
	.db	-5
	.db	15
	.db	10
	.db	0
	.db	1
	.db	1
	.db	1
	.db	1
	.db	0
	.db	0
	.db	0
	.db	1
	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
	.db	0
	.ascii "C:\Program Files\SDCC\bin\..\include"
	.db	0
	.db	0
	.ascii "./src/main.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$setup$0)
	.db	3
	.sleb128	15
	.db	1
	.db	9
	.dw	Smain$setup$2-Smain$setup$0
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$setup$5-Smain$setup$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$setup$11-Smain$setup$5
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$setup$12-Smain$setup$11
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$setup$17-Smain$setup$12
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$setup$24-Smain$setup$17
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$setup$27-Smain$setup$24
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$setup$30-Smain$setup$27
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Smain$setup$31-Smain$setup$30
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$main$33)
	.db	3
	.sleb128	29
	.db	1
	.db	9
	.dw	Smain$main$36-Smain$main$33
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$main$37-Smain$main$36
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$main$38-Smain$main$37
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$40-Smain$main$38
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$main$46-Smain$main$40
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$49-Smain$main$46
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$51-Smain$main$49
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$54-Smain$main$51
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$58-Smain$main$54
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$63-Smain$main$58
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$66-Smain$main$63
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$69-Smain$main$66
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$74-Smain$main$69
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$main$76-Smain$main$74
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	1+Smain$main$78-Smain$main$76
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Smain$main$77)
	.dw	0,(Smain$main$79)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$main$72)
	.dw	0,(Smain$main$77)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$71)
	.dw	0,(Smain$main$72)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$main$70)
	.dw	0,(Smain$main$71)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$main$68)
	.dw	0,(Smain$main$70)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$67)
	.dw	0,(Smain$main$68)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$main$64)
	.dw	0,(Smain$main$67)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$61)
	.dw	0,(Smain$main$64)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$60)
	.dw	0,(Smain$main$61)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$main$59)
	.dw	0,(Smain$main$60)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$main$57)
	.dw	0,(Smain$main$59)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$56)
	.dw	0,(Smain$main$57)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$main$55)
	.dw	0,(Smain$main$56)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$main$52)
	.dw	0,(Smain$main$55)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$44)
	.dw	0,(Smain$main$52)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$43)
	.dw	0,(Smain$main$44)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Smain$main$42)
	.dw	0,(Smain$main$43)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$main$41)
	.dw	0,(Smain$main$42)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$main$35)
	.dw	0,(Smain$main$41)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$34)
	.dw	0,(Smain$main$35)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$setup$29)
	.dw	0,(Smain$setup$32)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$setup$28)
	.dw	0,(Smain$setup$29)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$setup$26)
	.dw	0,(Smain$setup$28)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$setup$25)
	.dw	0,(Smain$setup$26)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$setup$23)
	.dw	0,(Smain$setup$25)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$setup$22)
	.dw	0,(Smain$setup$23)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Smain$setup$21)
	.dw	0,(Smain$setup$22)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$setup$20)
	.dw	0,(Smain$setup$21)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$setup$19)
	.dw	0,(Smain$setup$20)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$setup$18)
	.dw	0,(Smain$setup$19)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$setup$16)
	.dw	0,(Smain$setup$18)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$setup$15)
	.dw	0,(Smain$setup$16)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$setup$14)
	.dw	0,(Smain$setup$15)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$setup$13)
	.dw	0,(Smain$setup$14)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$setup$10)
	.dw	0,(Smain$setup$13)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$setup$9)
	.dw	0,(Smain$setup$10)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$setup$8)
	.dw	0,(Smain$setup$9)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$setup$7)
	.dw	0,(Smain$setup$8)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$setup$6)
	.dw	0,(Smain$setup$7)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$setup$4)
	.dw	0,(Smain$setup$6)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$setup$3)
	.dw	0,(Smain$setup$4)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$setup$1)
	.dw	0,(Smain$setup$3)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	9
	.uleb128	1
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	11
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.uleb128	52
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	4
	.uleb128	46
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	8
	.uleb128	38
	.db	0
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	1
	.uleb128	17
	.db	1
	.uleb128	3
	.uleb128	8
	.uleb128	16
	.uleb128	6
	.uleb128	19
	.uleb128	11
	.uleb128	37
	.uleb128	8
	.uleb128	0
	.uleb128	0
	.uleb128	6
	.uleb128	11
	.db	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.uleb128	46
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.uleb128	11
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.uleb128	33
	.db	0
	.uleb128	47
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.uleb128	36
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	62
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	0

	.area .debug_info (NOLOAD)
	.dw	0,Ldebug_info_end-Ldebug_info_start
Ldebug_info_start:
	.dw	2
	.dw	0,(Ldebug_abbrev)
	.db	4
	.uleb128	1
	.ascii "./src/main.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.1.0 #12072"
	.db	0
	.uleb128	2
	.ascii "setup"
	.db	0
	.dw	0,(_setup)
	.dw	0,(XG$setup$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+248)
	.uleb128	3
	.ascii "int"
	.db	0
	.db	2
	.db	5
	.uleb128	4
	.dw	0,222
	.ascii "main"
	.db	0
	.dw	0,(_main)
	.dw	0,(XG$main$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.dw	0,76
	.uleb128	5
	.dw	0,160
	.dw	0,(Smain$main$39)
	.dw	0,(Smain$main$75)
	.uleb128	6
	.dw	0,(Smain$main$45)
	.dw	0,(Smain$main$47)
	.uleb128	6
	.dw	0,(Smain$main$48)
	.dw	0,(Smain$main$50)
	.uleb128	6
	.dw	0,(Smain$main$53)
	.dw	0,(Smain$main$62)
	.uleb128	6
	.dw	0,(Smain$main$65)
	.dw	0,(Smain$main$73)
	.uleb128	0
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-1
	.ascii "aktual_stav"
	.db	0
	.dw	0,222
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-2
	.ascii "minuly_stav"
	.db	0
	.dw	0,222
	.uleb128	7
	.db	2
	.db	145
	.sleb128	0
	.ascii "stav_bzucaku"
	.db	0
	.dw	0,222
	.uleb128	0
	.uleb128	3
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	8
	.dw	0,222
	.uleb128	9
	.dw	0,257
	.db	20
	.dw	0,239
	.uleb128	10
	.db	19
	.uleb128	0
	.uleb128	7
	.db	5
	.db	3
	.dw	0,(___str_1)
	.ascii "__str_1"
	.db	0
	.dw	0,244
	.uleb128	7
	.db	5
	.db	3
	.dw	0,(___str_3)
	.ascii "__str_3"
	.db	0
	.dw	0,244
	.uleb128	0
	.uleb128	0
	.uleb128	0
Ldebug_info_end:

	.area .debug_pubnames (NOLOAD)
	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
Ldebug_pubnames_start:
	.dw	2
	.dw	0,(Ldebug_info_start-4)
	.dw	0,4+Ldebug_info_end-Ldebug_info_start
	.dw	0,56
	.ascii "setup"
	.db	0
	.dw	0,83
	.ascii "main"
	.db	0
	.dw	0,0
Ldebug_pubnames_end:

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
Ldebug_CIE0_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE0_end:
	.dw	0,152
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Smain$main$34)	;initial loc
	.dw	0,Smain$main$79-Smain$main$34
	.db	1
	.dw	0,(Smain$main$34)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$main$35)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$41)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$main$42)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$main$43)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Smain$main$44)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$52)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$55)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$main$56)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$main$57)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$59)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$main$60)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$main$61)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$64)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$67)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$main$68)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$70)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$main$71)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$main$72)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$77)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
Ldebug_CIE1_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE1_end:
	.dw	0,166
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Smain$setup$1)	;initial loc
	.dw	0,Smain$setup$32-Smain$setup$1
	.db	1
	.dw	0,(Smain$setup$1)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$setup$3)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$setup$4)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$setup$6)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$setup$7)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$setup$8)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$setup$9)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$setup$10)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$setup$13)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$setup$14)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$setup$15)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$setup$16)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$setup$18)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$setup$19)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$setup$20)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$setup$21)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$setup$22)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Smain$setup$23)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$setup$25)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$setup$26)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$setup$28)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$setup$29)
	.db	14
	.uleb128	2

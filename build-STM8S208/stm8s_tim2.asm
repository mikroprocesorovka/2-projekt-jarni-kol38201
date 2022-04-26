;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module stm8s_tim2
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_DeInit
	.globl _TIM2_TimeBaseInit
	.globl _TIM2_OC1Init
	.globl _TIM2_OC2Init
	.globl _TIM2_OC3Init
	.globl _TIM2_ICInit
	.globl _TIM2_PWMIConfig
	.globl _TIM2_Cmd
	.globl _TIM2_ITConfig
	.globl _TIM2_UpdateDisableConfig
	.globl _TIM2_UpdateRequestConfig
	.globl _TIM2_SelectOnePulseMode
	.globl _TIM2_PrescalerConfig
	.globl _TIM2_ForcedOC1Config
	.globl _TIM2_ForcedOC2Config
	.globl _TIM2_ForcedOC3Config
	.globl _TIM2_ARRPreloadConfig
	.globl _TIM2_OC1PreloadConfig
	.globl _TIM2_OC2PreloadConfig
	.globl _TIM2_OC3PreloadConfig
	.globl _TIM2_GenerateEvent
	.globl _TIM2_OC1PolarityConfig
	.globl _TIM2_OC2PolarityConfig
	.globl _TIM2_OC3PolarityConfig
	.globl _TIM2_CCxCmd
	.globl _TIM2_SelectOCxM
	.globl _TIM2_SetCounter
	.globl _TIM2_SetAutoreload
	.globl _TIM2_SetCompare1
	.globl _TIM2_SetCompare2
	.globl _TIM2_SetCompare3
	.globl _TIM2_SetIC1Prescaler
	.globl _TIM2_SetIC2Prescaler
	.globl _TIM2_SetIC3Prescaler
	.globl _TIM2_GetCapture1
	.globl _TIM2_GetCapture2
	.globl _TIM2_GetCapture3
	.globl _TIM2_GetCounter
	.globl _TIM2_GetPrescaler
	.globl _TIM2_GetFlagStatus
	.globl _TIM2_ClearFlag
	.globl _TIM2_GetITStatus
	.globl _TIM2_ClearITPendingBit
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	Sstm8s_tim2$TIM2_DeInit$0 ==.
;	../SPL/src/stm8s_tim2.c: 52: void TIM2_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function TIM2_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_DeInit:
	Sstm8s_tim2$TIM2_DeInit$1 ==.
	Sstm8s_tim2$TIM2_DeInit$2 ==.
;	../SPL/src/stm8s_tim2.c: 54: TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
; genPointerSet
	mov	0x5300+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$3 ==.
;	../SPL/src/stm8s_tim2.c: 55: TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
; genPointerSet
	mov	0x5301+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$4 ==.
;	../SPL/src/stm8s_tim2.c: 56: TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
; genPointerSet
	mov	0x5303+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$5 ==.
;	../SPL/src/stm8s_tim2.c: 59: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
; genPointerSet
	mov	0x5308+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$6 ==.
;	../SPL/src/stm8s_tim2.c: 60: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
; genPointerSet
	mov	0x5309+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$7 ==.
;	../SPL/src/stm8s_tim2.c: 64: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
; genPointerSet
	mov	0x5308+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$8 ==.
;	../SPL/src/stm8s_tim2.c: 65: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
; genPointerSet
	mov	0x5309+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$9 ==.
;	../SPL/src/stm8s_tim2.c: 66: TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
; genPointerSet
	mov	0x5305+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$10 ==.
;	../SPL/src/stm8s_tim2.c: 67: TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
; genPointerSet
	mov	0x5306+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$11 ==.
;	../SPL/src/stm8s_tim2.c: 68: TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
; genPointerSet
	mov	0x5307+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$12 ==.
;	../SPL/src/stm8s_tim2.c: 69: TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
; genPointerSet
	mov	0x530a+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$13 ==.
;	../SPL/src/stm8s_tim2.c: 70: TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
; genPointerSet
	mov	0x530b+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$14 ==.
;	../SPL/src/stm8s_tim2.c: 71: TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
; genPointerSet
	mov	0x530c+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$15 ==.
;	../SPL/src/stm8s_tim2.c: 72: TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
; genPointerSet
	mov	0x530d+0, #0xff
	Sstm8s_tim2$TIM2_DeInit$16 ==.
;	../SPL/src/stm8s_tim2.c: 73: TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
; genPointerSet
	mov	0x530e+0, #0xff
	Sstm8s_tim2$TIM2_DeInit$17 ==.
;	../SPL/src/stm8s_tim2.c: 74: TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
; genPointerSet
	mov	0x530f+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$18 ==.
;	../SPL/src/stm8s_tim2.c: 75: TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
; genPointerSet
	mov	0x5310+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$19 ==.
;	../SPL/src/stm8s_tim2.c: 76: TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
; genPointerSet
	mov	0x5311+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$20 ==.
;	../SPL/src/stm8s_tim2.c: 77: TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
; genPointerSet
	mov	0x5312+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$21 ==.
;	../SPL/src/stm8s_tim2.c: 78: TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
; genPointerSet
	mov	0x5313+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$22 ==.
;	../SPL/src/stm8s_tim2.c: 79: TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
; genPointerSet
	mov	0x5314+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$23 ==.
;	../SPL/src/stm8s_tim2.c: 80: TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
; genPointerSet
	mov	0x5302+0, #0x00
; genLabel
00101$:
	Sstm8s_tim2$TIM2_DeInit$24 ==.
;	../SPL/src/stm8s_tim2.c: 81: }
; genEndFunction
	Sstm8s_tim2$TIM2_DeInit$25 ==.
	XG$TIM2_DeInit$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_DeInit$26 ==.
	Sstm8s_tim2$TIM2_TimeBaseInit$27 ==.
;	../SPL/src/stm8s_tim2.c: 89: void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
; genLabel
;	-----------------------------------------
;	 function TIM2_TimeBaseInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_TimeBaseInit:
	Sstm8s_tim2$TIM2_TimeBaseInit$28 ==.
	Sstm8s_tim2$TIM2_TimeBaseInit$29 ==.
;	../SPL/src/stm8s_tim2.c: 93: TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
; genPointerSet
	ldw	x, #0x530c
	ld	a, (0x03, sp)
	ld	(x), a
	Sstm8s_tim2$TIM2_TimeBaseInit$30 ==.
;	../SPL/src/stm8s_tim2.c: 95: TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
; genRightShiftLiteral
	ld	a, (0x04, sp)
	clrw	x
; genCast
; genAssign
; genPointerSet
	ld	0x530d, a
	Sstm8s_tim2$TIM2_TimeBaseInit$31 ==.
;	../SPL/src/stm8s_tim2.c: 96: TIM2->ARRL = (uint8_t)(TIM2_Period);
; genCast
; genAssign
	ld	a, (0x05, sp)
; genPointerSet
	ld	0x530e, a
; genLabel
00101$:
	Sstm8s_tim2$TIM2_TimeBaseInit$32 ==.
;	../SPL/src/stm8s_tim2.c: 97: }
; genEndFunction
	Sstm8s_tim2$TIM2_TimeBaseInit$33 ==.
	XG$TIM2_TimeBaseInit$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_TimeBaseInit$34 ==.
	Sstm8s_tim2$TIM2_OC1Init$35 ==.
;	../SPL/src/stm8s_tim2.c: 108: void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
; genLabel
;	-----------------------------------------
;	 function TIM2_OC1Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM2_OC1Init:
	Sstm8s_tim2$TIM2_OC1Init$36 ==.
	pushw	x
	Sstm8s_tim2$TIM2_OC1Init$37 ==.
	Sstm8s_tim2$TIM2_OC1Init$38 ==.
;	../SPL/src/stm8s_tim2.c: 119: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
; genPointerGet
	ld	a, 0x5308
; genAnd
	and	a, #0xfc
; genPointerSet
	ld	0x5308, a
	Sstm8s_tim2$TIM2_OC1Init$39 ==.
;	../SPL/src/stm8s_tim2.c: 121: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
; genPointerGet
	ld	a, 0x5308
	ld	(0x01, sp), a
; genAnd
	ld	a, (0x06, sp)
	and	a, #0x01
	ld	(0x02, sp), a
	Sstm8s_tim2$TIM2_OC1Init$40 ==.
;	../SPL/src/stm8s_tim2.c: 122: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
; genAnd
	ld	a, (0x09, sp)
	and	a, #0x02
; genOr
	or	a, (0x02, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5308, a
	Sstm8s_tim2$TIM2_OC1Init$41 ==.
;	../SPL/src/stm8s_tim2.c: 125: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
; genPointerGet
	ld	a, 0x5305
; genAnd
	and	a, #0x8f
	Sstm8s_tim2$TIM2_OC1Init$42 ==.
;	../SPL/src/stm8s_tim2.c: 126: (uint8_t)TIM2_OCMode);
; genOr
	or	a, (0x05, sp)
; genPointerSet
	ld	0x5305, a
	Sstm8s_tim2$TIM2_OC1Init$43 ==.
;	../SPL/src/stm8s_tim2.c: 129: TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
; genRightShiftLiteral
	ld	a, (0x07, sp)
	clrw	x
; genCast
; genAssign
; genPointerSet
	ld	0x530f, a
	Sstm8s_tim2$TIM2_OC1Init$44 ==.
;	../SPL/src/stm8s_tim2.c: 130: TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
; genCast
; genAssign
	ld	a, (0x08, sp)
; genPointerSet
	ld	0x5310, a
; genLabel
00101$:
	Sstm8s_tim2$TIM2_OC1Init$45 ==.
;	../SPL/src/stm8s_tim2.c: 131: }
; genEndFunction
	popw	x
	Sstm8s_tim2$TIM2_OC1Init$46 ==.
	Sstm8s_tim2$TIM2_OC1Init$47 ==.
	XG$TIM2_OC1Init$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_OC1Init$48 ==.
	Sstm8s_tim2$TIM2_OC2Init$49 ==.
;	../SPL/src/stm8s_tim2.c: 142: void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
; genLabel
;	-----------------------------------------
;	 function TIM2_OC2Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM2_OC2Init:
	Sstm8s_tim2$TIM2_OC2Init$50 ==.
	pushw	x
	Sstm8s_tim2$TIM2_OC2Init$51 ==.
	Sstm8s_tim2$TIM2_OC2Init$52 ==.
;	../SPL/src/stm8s_tim2.c: 154: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
; genPointerGet
	ld	a, 0x5308
; genAnd
	and	a, #0xcf
; genPointerSet
	ld	0x5308, a
	Sstm8s_tim2$TIM2_OC2Init$53 ==.
;	../SPL/src/stm8s_tim2.c: 156: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
; genPointerGet
	ld	a, 0x5308
	ld	(0x01, sp), a
; genAnd
	ld	a, (0x06, sp)
	and	a, #0x10
	ld	(0x02, sp), a
	Sstm8s_tim2$TIM2_OC2Init$54 ==.
;	../SPL/src/stm8s_tim2.c: 157: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
; genAnd
	ld	a, (0x09, sp)
	and	a, #0x20
; genOr
	or	a, (0x02, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5308, a
	Sstm8s_tim2$TIM2_OC2Init$55 ==.
;	../SPL/src/stm8s_tim2.c: 161: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
; genPointerGet
	ld	a, 0x5306
; genAnd
	and	a, #0x8f
	Sstm8s_tim2$TIM2_OC2Init$56 ==.
;	../SPL/src/stm8s_tim2.c: 162: (uint8_t)TIM2_OCMode);
; genOr
	or	a, (0x05, sp)
; genPointerSet
	ld	0x5306, a
	Sstm8s_tim2$TIM2_OC2Init$57 ==.
;	../SPL/src/stm8s_tim2.c: 166: TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
; genRightShiftLiteral
	ld	a, (0x07, sp)
	clrw	x
; genCast
; genAssign
; genPointerSet
	ld	0x5311, a
	Sstm8s_tim2$TIM2_OC2Init$58 ==.
;	../SPL/src/stm8s_tim2.c: 167: TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
; genCast
; genAssign
	ld	a, (0x08, sp)
; genPointerSet
	ld	0x5312, a
; genLabel
00101$:
	Sstm8s_tim2$TIM2_OC2Init$59 ==.
;	../SPL/src/stm8s_tim2.c: 168: }
; genEndFunction
	popw	x
	Sstm8s_tim2$TIM2_OC2Init$60 ==.
	Sstm8s_tim2$TIM2_OC2Init$61 ==.
	XG$TIM2_OC2Init$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_OC2Init$62 ==.
	Sstm8s_tim2$TIM2_OC3Init$63 ==.
;	../SPL/src/stm8s_tim2.c: 179: void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
; genLabel
;	-----------------------------------------
;	 function TIM2_OC3Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM2_OC3Init:
	Sstm8s_tim2$TIM2_OC3Init$64 ==.
	pushw	x
	Sstm8s_tim2$TIM2_OC3Init$65 ==.
	Sstm8s_tim2$TIM2_OC3Init$66 ==.
;	../SPL/src/stm8s_tim2.c: 189: TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
; genPointerGet
	ld	a, 0x5309
; genAnd
	and	a, #0xfc
; genPointerSet
	ld	0x5309, a
	Sstm8s_tim2$TIM2_OC3Init$67 ==.
;	../SPL/src/stm8s_tim2.c: 191: TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
; genPointerGet
	ld	a, 0x5309
	ld	(0x01, sp), a
; genAnd
	ld	a, (0x06, sp)
	and	a, #0x01
	ld	(0x02, sp), a
	Sstm8s_tim2$TIM2_OC3Init$68 ==.
;	../SPL/src/stm8s_tim2.c: 192: (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
; genAnd
	ld	a, (0x09, sp)
	and	a, #0x02
; genOr
	or	a, (0x02, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5309, a
	Sstm8s_tim2$TIM2_OC3Init$69 ==.
;	../SPL/src/stm8s_tim2.c: 195: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
; genPointerGet
	ld	a, 0x5307
; genAnd
	and	a, #0x8f
	Sstm8s_tim2$TIM2_OC3Init$70 ==.
;	../SPL/src/stm8s_tim2.c: 196: (uint8_t)TIM2_OCMode);
; genOr
	or	a, (0x05, sp)
; genPointerSet
	ld	0x5307, a
	Sstm8s_tim2$TIM2_OC3Init$71 ==.
;	../SPL/src/stm8s_tim2.c: 199: TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
; genRightShiftLiteral
	ld	a, (0x07, sp)
	clrw	x
; genCast
; genAssign
; genPointerSet
	ld	0x5313, a
	Sstm8s_tim2$TIM2_OC3Init$72 ==.
;	../SPL/src/stm8s_tim2.c: 200: TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
; genCast
; genAssign
	ld	a, (0x08, sp)
; genPointerSet
	ld	0x5314, a
; genLabel
00101$:
	Sstm8s_tim2$TIM2_OC3Init$73 ==.
;	../SPL/src/stm8s_tim2.c: 201: }
; genEndFunction
	popw	x
	Sstm8s_tim2$TIM2_OC3Init$74 ==.
	Sstm8s_tim2$TIM2_OC3Init$75 ==.
	XG$TIM2_OC3Init$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_OC3Init$76 ==.
	Sstm8s_tim2$TIM2_ICInit$77 ==.
;	../SPL/src/stm8s_tim2.c: 212: void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
; genLabel
;	-----------------------------------------
;	 function TIM2_ICInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_ICInit:
	Sstm8s_tim2$TIM2_ICInit$78 ==.
	Sstm8s_tim2$TIM2_ICInit$79 ==.
;	../SPL/src/stm8s_tim2.c: 225: if (TIM2_Channel == TIM2_CHANNEL_1)
; genIfx
	tnz	(0x03, sp)
	jreq	00119$
	jp	00105$
00119$:
	Sstm8s_tim2$TIM2_ICInit$80 ==.
	Sstm8s_tim2$TIM2_ICInit$81 ==.
;	../SPL/src/stm8s_tim2.c: 228: TI1_Config((uint8_t)TIM2_ICPolarity,
; genIPush
	ld	a, (0x07, sp)
	push	a
	Sstm8s_tim2$TIM2_ICInit$82 ==.
; genIPush
	ld	a, (0x06, sp)
	push	a
	Sstm8s_tim2$TIM2_ICInit$83 ==.
; genIPush
	ld	a, (0x06, sp)
	push	a
	Sstm8s_tim2$TIM2_ICInit$84 ==.
; genCall
	call	_TI1_Config
	addw	sp, #3
	Sstm8s_tim2$TIM2_ICInit$85 ==.
	Sstm8s_tim2$TIM2_ICInit$86 ==.
;	../SPL/src/stm8s_tim2.c: 233: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
; genIPush
	ld	a, (0x06, sp)
	push	a
	Sstm8s_tim2$TIM2_ICInit$87 ==.
; genCall
	call	_TIM2_SetIC1Prescaler
	pop	a
	Sstm8s_tim2$TIM2_ICInit$88 ==.
	Sstm8s_tim2$TIM2_ICInit$89 ==.
; genGoto
	jp	00107$
; genLabel
00105$:
	Sstm8s_tim2$TIM2_ICInit$90 ==.
;	../SPL/src/stm8s_tim2.c: 235: else if (TIM2_Channel == TIM2_CHANNEL_2)
; genCmpEQorNE
	ld	a, (0x03, sp)
	dec	a
	jrne	00121$
	jp	00122$
00121$:
	jp	00102$
00122$:
	Sstm8s_tim2$TIM2_ICInit$91 ==.
; skipping generated iCode
	Sstm8s_tim2$TIM2_ICInit$92 ==.
	Sstm8s_tim2$TIM2_ICInit$93 ==.
;	../SPL/src/stm8s_tim2.c: 238: TI2_Config((uint8_t)TIM2_ICPolarity,
; genIPush
	ld	a, (0x07, sp)
	push	a
	Sstm8s_tim2$TIM2_ICInit$94 ==.
; genIPush
	ld	a, (0x06, sp)
	push	a
	Sstm8s_tim2$TIM2_ICInit$95 ==.
; genIPush
	ld	a, (0x06, sp)
	push	a
	Sstm8s_tim2$TIM2_ICInit$96 ==.
; genCall
	call	_TI2_Config
	addw	sp, #3
	Sstm8s_tim2$TIM2_ICInit$97 ==.
	Sstm8s_tim2$TIM2_ICInit$98 ==.
;	../SPL/src/stm8s_tim2.c: 243: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
; genIPush
	ld	a, (0x06, sp)
	push	a
	Sstm8s_tim2$TIM2_ICInit$99 ==.
; genCall
	call	_TIM2_SetIC2Prescaler
	pop	a
	Sstm8s_tim2$TIM2_ICInit$100 ==.
	Sstm8s_tim2$TIM2_ICInit$101 ==.
; genGoto
	jp	00107$
; genLabel
00102$:
	Sstm8s_tim2$TIM2_ICInit$102 ==.
	Sstm8s_tim2$TIM2_ICInit$103 ==.
;	../SPL/src/stm8s_tim2.c: 248: TI3_Config((uint8_t)TIM2_ICPolarity,
; genIPush
	ld	a, (0x07, sp)
	push	a
	Sstm8s_tim2$TIM2_ICInit$104 ==.
; genIPush
	ld	a, (0x06, sp)
	push	a
	Sstm8s_tim2$TIM2_ICInit$105 ==.
; genIPush
	ld	a, (0x06, sp)
	push	a
	Sstm8s_tim2$TIM2_ICInit$106 ==.
; genCall
	call	_TI3_Config
	addw	sp, #3
	Sstm8s_tim2$TIM2_ICInit$107 ==.
	Sstm8s_tim2$TIM2_ICInit$108 ==.
;	../SPL/src/stm8s_tim2.c: 253: TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
; genIPush
	ld	a, (0x06, sp)
	push	a
	Sstm8s_tim2$TIM2_ICInit$109 ==.
; genCall
	call	_TIM2_SetIC3Prescaler
	pop	a
	Sstm8s_tim2$TIM2_ICInit$110 ==.
	Sstm8s_tim2$TIM2_ICInit$111 ==.
; genLabel
00107$:
	Sstm8s_tim2$TIM2_ICInit$112 ==.
;	../SPL/src/stm8s_tim2.c: 255: }
; genEndFunction
	Sstm8s_tim2$TIM2_ICInit$113 ==.
	XG$TIM2_ICInit$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_ICInit$114 ==.
	Sstm8s_tim2$TIM2_PWMIConfig$115 ==.
;	../SPL/src/stm8s_tim2.c: 266: void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
; genLabel
;	-----------------------------------------
;	 function TIM2_PWMIConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_TIM2_PWMIConfig:
	Sstm8s_tim2$TIM2_PWMIConfig$116 ==.
	pushw	x
	Sstm8s_tim2$TIM2_PWMIConfig$117 ==.
	Sstm8s_tim2$TIM2_PWMIConfig$118 ==.
;	../SPL/src/stm8s_tim2.c: 282: if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
; genCmpEQorNE
	ld	a, (0x06, sp)
	cp	a, #0x44
	jrne	00128$
	jp	00102$
00128$:
	Sstm8s_tim2$TIM2_PWMIConfig$119 ==.
; skipping generated iCode
	Sstm8s_tim2$TIM2_PWMIConfig$120 ==.
	Sstm8s_tim2$TIM2_PWMIConfig$121 ==.
;	../SPL/src/stm8s_tim2.c: 284: icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
; genAssign
	ld	a, #0x44
	ld	(0x01, sp), a
	Sstm8s_tim2$TIM2_PWMIConfig$122 ==.
; genGoto
	jp	00103$
; genLabel
00102$:
	Sstm8s_tim2$TIM2_PWMIConfig$123 ==.
	Sstm8s_tim2$TIM2_PWMIConfig$124 ==.
;	../SPL/src/stm8s_tim2.c: 288: icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
; genAssign
	clr	(0x01, sp)
	Sstm8s_tim2$TIM2_PWMIConfig$125 ==.
; genLabel
00103$:
	Sstm8s_tim2$TIM2_PWMIConfig$126 ==.
;	../SPL/src/stm8s_tim2.c: 292: if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
; genCmpEQorNE
	ld	a, (0x07, sp)
	dec	a
	jrne	00131$
	jp	00132$
00131$:
	jp	00105$
00132$:
	Sstm8s_tim2$TIM2_PWMIConfig$127 ==.
; skipping generated iCode
	Sstm8s_tim2$TIM2_PWMIConfig$128 ==.
	Sstm8s_tim2$TIM2_PWMIConfig$129 ==.
;	../SPL/src/stm8s_tim2.c: 294: icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
; genAssign
	ld	a, #0x02
	ld	(0x02, sp), a
	Sstm8s_tim2$TIM2_PWMIConfig$130 ==.
; genGoto
	jp	00106$
; genLabel
00105$:
	Sstm8s_tim2$TIM2_PWMIConfig$131 ==.
	Sstm8s_tim2$TIM2_PWMIConfig$132 ==.
;	../SPL/src/stm8s_tim2.c: 298: icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
; genAssign
	ld	a, #0x01
	ld	(0x02, sp), a
	Sstm8s_tim2$TIM2_PWMIConfig$133 ==.
; genLabel
00106$:
	Sstm8s_tim2$TIM2_PWMIConfig$134 ==.
;	../SPL/src/stm8s_tim2.c: 301: if (TIM2_Channel == TIM2_CHANNEL_1)
; genIfx
	tnz	(0x05, sp)
	jreq	00133$
	jp	00108$
00133$:
	Sstm8s_tim2$TIM2_PWMIConfig$135 ==.
	Sstm8s_tim2$TIM2_PWMIConfig$136 ==.
;	../SPL/src/stm8s_tim2.c: 304: TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
; genIPush
	ld	a, (0x09, sp)
	push	a
	Sstm8s_tim2$TIM2_PWMIConfig$137 ==.
; genIPush
	ld	a, (0x08, sp)
	push	a
	Sstm8s_tim2$TIM2_PWMIConfig$138 ==.
; genIPush
	ld	a, (0x08, sp)
	push	a
	Sstm8s_tim2$TIM2_PWMIConfig$139 ==.
; genCall
	call	_TI1_Config
	addw	sp, #3
	Sstm8s_tim2$TIM2_PWMIConfig$140 ==.
	Sstm8s_tim2$TIM2_PWMIConfig$141 ==.
;	../SPL/src/stm8s_tim2.c: 308: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
; genIPush
	ld	a, (0x08, sp)
	push	a
	Sstm8s_tim2$TIM2_PWMIConfig$142 ==.
; genCall
	call	_TIM2_SetIC1Prescaler
	pop	a
	Sstm8s_tim2$TIM2_PWMIConfig$143 ==.
	Sstm8s_tim2$TIM2_PWMIConfig$144 ==.
;	../SPL/src/stm8s_tim2.c: 311: TI2_Config(icpolarity, icselection, TIM2_ICFilter);
; genIPush
	ld	a, (0x09, sp)
	push	a
	Sstm8s_tim2$TIM2_PWMIConfig$145 ==.
; genIPush
	ld	a, (0x03, sp)
	push	a
	Sstm8s_tim2$TIM2_PWMIConfig$146 ==.
; genIPush
	ld	a, (0x03, sp)
	push	a
	Sstm8s_tim2$TIM2_PWMIConfig$147 ==.
; genCall
	call	_TI2_Config
	addw	sp, #3
	Sstm8s_tim2$TIM2_PWMIConfig$148 ==.
	Sstm8s_tim2$TIM2_PWMIConfig$149 ==.
;	../SPL/src/stm8s_tim2.c: 314: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
; genIPush
	ld	a, (0x08, sp)
	push	a
	Sstm8s_tim2$TIM2_PWMIConfig$150 ==.
; genCall
	call	_TIM2_SetIC2Prescaler
	pop	a
	Sstm8s_tim2$TIM2_PWMIConfig$151 ==.
	Sstm8s_tim2$TIM2_PWMIConfig$152 ==.
; genGoto
	jp	00110$
; genLabel
00108$:
	Sstm8s_tim2$TIM2_PWMIConfig$153 ==.
	Sstm8s_tim2$TIM2_PWMIConfig$154 ==.
;	../SPL/src/stm8s_tim2.c: 319: TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
; genIPush
	ld	a, (0x09, sp)
	push	a
	Sstm8s_tim2$TIM2_PWMIConfig$155 ==.
; genIPush
	ld	a, (0x08, sp)
	push	a
	Sstm8s_tim2$TIM2_PWMIConfig$156 ==.
; genIPush
	ld	a, (0x08, sp)
	push	a
	Sstm8s_tim2$TIM2_PWMIConfig$157 ==.
; genCall
	call	_TI2_Config
	addw	sp, #3
	Sstm8s_tim2$TIM2_PWMIConfig$158 ==.
	Sstm8s_tim2$TIM2_PWMIConfig$159 ==.
;	../SPL/src/stm8s_tim2.c: 323: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
; genIPush
	ld	a, (0x08, sp)
	push	a
	Sstm8s_tim2$TIM2_PWMIConfig$160 ==.
; genCall
	call	_TIM2_SetIC2Prescaler
	pop	a
	Sstm8s_tim2$TIM2_PWMIConfig$161 ==.
	Sstm8s_tim2$TIM2_PWMIConfig$162 ==.
;	../SPL/src/stm8s_tim2.c: 326: TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
; genIPush
	ld	a, (0x09, sp)
	push	a
	Sstm8s_tim2$TIM2_PWMIConfig$163 ==.
; genIPush
	ld	a, (0x03, sp)
	push	a
	Sstm8s_tim2$TIM2_PWMIConfig$164 ==.
; genIPush
	ld	a, (0x03, sp)
	push	a
	Sstm8s_tim2$TIM2_PWMIConfig$165 ==.
; genCall
	call	_TI1_Config
	addw	sp, #3
	Sstm8s_tim2$TIM2_PWMIConfig$166 ==.
	Sstm8s_tim2$TIM2_PWMIConfig$167 ==.
;	../SPL/src/stm8s_tim2.c: 329: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
; genIPush
	ld	a, (0x08, sp)
	push	a
	Sstm8s_tim2$TIM2_PWMIConfig$168 ==.
; genCall
	call	_TIM2_SetIC1Prescaler
	pop	a
	Sstm8s_tim2$TIM2_PWMIConfig$169 ==.
	Sstm8s_tim2$TIM2_PWMIConfig$170 ==.
; genLabel
00110$:
	Sstm8s_tim2$TIM2_PWMIConfig$171 ==.
;	../SPL/src/stm8s_tim2.c: 331: }
; genEndFunction
	popw	x
	Sstm8s_tim2$TIM2_PWMIConfig$172 ==.
	Sstm8s_tim2$TIM2_PWMIConfig$173 ==.
	XG$TIM2_PWMIConfig$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_PWMIConfig$174 ==.
	Sstm8s_tim2$TIM2_Cmd$175 ==.
;	../SPL/src/stm8s_tim2.c: 339: void TIM2_Cmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_Cmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_Cmd:
	Sstm8s_tim2$TIM2_Cmd$176 ==.
	Sstm8s_tim2$TIM2_Cmd$177 ==.
;	../SPL/src/stm8s_tim2.c: 347: TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
; genPointerGet
	ld	a, 0x5300
	Sstm8s_tim2$TIM2_Cmd$178 ==.
;	../SPL/src/stm8s_tim2.c: 345: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_tim2$TIM2_Cmd$179 ==.
	Sstm8s_tim2$TIM2_Cmd$180 ==.
;	../SPL/src/stm8s_tim2.c: 347: TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5300, a
	Sstm8s_tim2$TIM2_Cmd$181 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_tim2$TIM2_Cmd$182 ==.
	Sstm8s_tim2$TIM2_Cmd$183 ==.
;	../SPL/src/stm8s_tim2.c: 351: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5300, a
	Sstm8s_tim2$TIM2_Cmd$184 ==.
; genLabel
00104$:
	Sstm8s_tim2$TIM2_Cmd$185 ==.
;	../SPL/src/stm8s_tim2.c: 353: }
; genEndFunction
	Sstm8s_tim2$TIM2_Cmd$186 ==.
	XG$TIM2_Cmd$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_Cmd$187 ==.
	Sstm8s_tim2$TIM2_ITConfig$188 ==.
;	../SPL/src/stm8s_tim2.c: 368: void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_ITConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_ITConfig:
	Sstm8s_tim2$TIM2_ITConfig$189 ==.
	push	a
	Sstm8s_tim2$TIM2_ITConfig$190 ==.
	Sstm8s_tim2$TIM2_ITConfig$191 ==.
;	../SPL/src/stm8s_tim2.c: 377: TIM2->IER |= (uint8_t)TIM2_IT;
; genPointerGet
	ld	a, 0x5301
	Sstm8s_tim2$TIM2_ITConfig$192 ==.
;	../SPL/src/stm8s_tim2.c: 374: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_tim2$TIM2_ITConfig$193 ==.
	Sstm8s_tim2$TIM2_ITConfig$194 ==.
;	../SPL/src/stm8s_tim2.c: 377: TIM2->IER |= (uint8_t)TIM2_IT;
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x5301, a
	Sstm8s_tim2$TIM2_ITConfig$195 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_tim2$TIM2_ITConfig$196 ==.
	Sstm8s_tim2$TIM2_ITConfig$197 ==.
;	../SPL/src/stm8s_tim2.c: 382: TIM2->IER &= (uint8_t)(~TIM2_IT);
; genCpl
	push	a
	Sstm8s_tim2$TIM2_ITConfig$198 ==.
	ld	a, (0x05, sp)
	cpl	a
	ld	(0x02, sp), a
	pop	a
	Sstm8s_tim2$TIM2_ITConfig$199 ==.
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x5301, a
	Sstm8s_tim2$TIM2_ITConfig$200 ==.
; genLabel
00104$:
	Sstm8s_tim2$TIM2_ITConfig$201 ==.
;	../SPL/src/stm8s_tim2.c: 384: }
; genEndFunction
	pop	a
	Sstm8s_tim2$TIM2_ITConfig$202 ==.
	Sstm8s_tim2$TIM2_ITConfig$203 ==.
	XG$TIM2_ITConfig$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_ITConfig$204 ==.
	Sstm8s_tim2$TIM2_UpdateDisableConfig$205 ==.
;	../SPL/src/stm8s_tim2.c: 392: void TIM2_UpdateDisableConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_UpdateDisableConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_UpdateDisableConfig:
	Sstm8s_tim2$TIM2_UpdateDisableConfig$206 ==.
	Sstm8s_tim2$TIM2_UpdateDisableConfig$207 ==.
;	../SPL/src/stm8s_tim2.c: 400: TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
; genPointerGet
	ld	a, 0x5300
	Sstm8s_tim2$TIM2_UpdateDisableConfig$208 ==.
;	../SPL/src/stm8s_tim2.c: 398: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_tim2$TIM2_UpdateDisableConfig$209 ==.
	Sstm8s_tim2$TIM2_UpdateDisableConfig$210 ==.
;	../SPL/src/stm8s_tim2.c: 400: TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5300, a
	Sstm8s_tim2$TIM2_UpdateDisableConfig$211 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_tim2$TIM2_UpdateDisableConfig$212 ==.
	Sstm8s_tim2$TIM2_UpdateDisableConfig$213 ==.
;	../SPL/src/stm8s_tim2.c: 404: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5300, a
	Sstm8s_tim2$TIM2_UpdateDisableConfig$214 ==.
; genLabel
00104$:
	Sstm8s_tim2$TIM2_UpdateDisableConfig$215 ==.
;	../SPL/src/stm8s_tim2.c: 406: }
; genEndFunction
	Sstm8s_tim2$TIM2_UpdateDisableConfig$216 ==.
	XG$TIM2_UpdateDisableConfig$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_UpdateDisableConfig$217 ==.
	Sstm8s_tim2$TIM2_UpdateRequestConfig$218 ==.
;	../SPL/src/stm8s_tim2.c: 416: void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
; genLabel
;	-----------------------------------------
;	 function TIM2_UpdateRequestConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_UpdateRequestConfig:
	Sstm8s_tim2$TIM2_UpdateRequestConfig$219 ==.
	Sstm8s_tim2$TIM2_UpdateRequestConfig$220 ==.
;	../SPL/src/stm8s_tim2.c: 424: TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
; genPointerGet
	ld	a, 0x5300
	Sstm8s_tim2$TIM2_UpdateRequestConfig$221 ==.
;	../SPL/src/stm8s_tim2.c: 422: if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_tim2$TIM2_UpdateRequestConfig$222 ==.
	Sstm8s_tim2$TIM2_UpdateRequestConfig$223 ==.
;	../SPL/src/stm8s_tim2.c: 424: TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x5300, a
	Sstm8s_tim2$TIM2_UpdateRequestConfig$224 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_tim2$TIM2_UpdateRequestConfig$225 ==.
	Sstm8s_tim2$TIM2_UpdateRequestConfig$226 ==.
;	../SPL/src/stm8s_tim2.c: 428: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x5300, a
	Sstm8s_tim2$TIM2_UpdateRequestConfig$227 ==.
; genLabel
00104$:
	Sstm8s_tim2$TIM2_UpdateRequestConfig$228 ==.
;	../SPL/src/stm8s_tim2.c: 430: }
; genEndFunction
	Sstm8s_tim2$TIM2_UpdateRequestConfig$229 ==.
	XG$TIM2_UpdateRequestConfig$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_UpdateRequestConfig$230 ==.
	Sstm8s_tim2$TIM2_SelectOnePulseMode$231 ==.
;	../SPL/src/stm8s_tim2.c: 440: void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
; genLabel
;	-----------------------------------------
;	 function TIM2_SelectOnePulseMode
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_SelectOnePulseMode:
	Sstm8s_tim2$TIM2_SelectOnePulseMode$232 ==.
	Sstm8s_tim2$TIM2_SelectOnePulseMode$233 ==.
;	../SPL/src/stm8s_tim2.c: 448: TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
; genPointerGet
	ld	a, 0x5300
	Sstm8s_tim2$TIM2_SelectOnePulseMode$234 ==.
;	../SPL/src/stm8s_tim2.c: 446: if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_tim2$TIM2_SelectOnePulseMode$235 ==.
	Sstm8s_tim2$TIM2_SelectOnePulseMode$236 ==.
;	../SPL/src/stm8s_tim2.c: 448: TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
; genOr
	or	a, #0x08
; genPointerSet
	ld	0x5300, a
	Sstm8s_tim2$TIM2_SelectOnePulseMode$237 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_tim2$TIM2_SelectOnePulseMode$238 ==.
	Sstm8s_tim2$TIM2_SelectOnePulseMode$239 ==.
;	../SPL/src/stm8s_tim2.c: 452: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5300, a
	Sstm8s_tim2$TIM2_SelectOnePulseMode$240 ==.
; genLabel
00104$:
	Sstm8s_tim2$TIM2_SelectOnePulseMode$241 ==.
;	../SPL/src/stm8s_tim2.c: 454: }
; genEndFunction
	Sstm8s_tim2$TIM2_SelectOnePulseMode$242 ==.
	XG$TIM2_SelectOnePulseMode$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_SelectOnePulseMode$243 ==.
	Sstm8s_tim2$TIM2_PrescalerConfig$244 ==.
;	../SPL/src/stm8s_tim2.c: 484: void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
; genLabel
;	-----------------------------------------
;	 function TIM2_PrescalerConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_PrescalerConfig:
	Sstm8s_tim2$TIM2_PrescalerConfig$245 ==.
	Sstm8s_tim2$TIM2_PrescalerConfig$246 ==.
;	../SPL/src/stm8s_tim2.c: 492: TIM2->PSCR = (uint8_t)Prescaler;
; genPointerSet
	ldw	x, #0x530c
	ld	a, (0x03, sp)
	ld	(x), a
	Sstm8s_tim2$TIM2_PrescalerConfig$247 ==.
;	../SPL/src/stm8s_tim2.c: 495: TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
; genPointerSet
	ldw	x, #0x5304
	ld	a, (0x04, sp)
	ld	(x), a
; genLabel
00101$:
	Sstm8s_tim2$TIM2_PrescalerConfig$248 ==.
;	../SPL/src/stm8s_tim2.c: 496: }
; genEndFunction
	Sstm8s_tim2$TIM2_PrescalerConfig$249 ==.
	XG$TIM2_PrescalerConfig$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_PrescalerConfig$250 ==.
	Sstm8s_tim2$TIM2_ForcedOC1Config$251 ==.
;	../SPL/src/stm8s_tim2.c: 507: void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
; genLabel
;	-----------------------------------------
;	 function TIM2_ForcedOC1Config
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_ForcedOC1Config:
	Sstm8s_tim2$TIM2_ForcedOC1Config$252 ==.
	Sstm8s_tim2$TIM2_ForcedOC1Config$253 ==.
;	../SPL/src/stm8s_tim2.c: 513: TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
; genPointerGet
	ld	a, 0x5305
; genAnd
	and	a, #0x8f
	Sstm8s_tim2$TIM2_ForcedOC1Config$254 ==.
;	../SPL/src/stm8s_tim2.c: 514: | (uint8_t)TIM2_ForcedAction);
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5305, a
; genLabel
00101$:
	Sstm8s_tim2$TIM2_ForcedOC1Config$255 ==.
;	../SPL/src/stm8s_tim2.c: 515: }
; genEndFunction
	Sstm8s_tim2$TIM2_ForcedOC1Config$256 ==.
	XG$TIM2_ForcedOC1Config$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_ForcedOC1Config$257 ==.
	Sstm8s_tim2$TIM2_ForcedOC2Config$258 ==.
;	../SPL/src/stm8s_tim2.c: 526: void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
; genLabel
;	-----------------------------------------
;	 function TIM2_ForcedOC2Config
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_ForcedOC2Config:
	Sstm8s_tim2$TIM2_ForcedOC2Config$259 ==.
	Sstm8s_tim2$TIM2_ForcedOC2Config$260 ==.
;	../SPL/src/stm8s_tim2.c: 532: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
; genPointerGet
	ld	a, 0x5306
; genAnd
	and	a, #0x8f
	Sstm8s_tim2$TIM2_ForcedOC2Config$261 ==.
;	../SPL/src/stm8s_tim2.c: 533: | (uint8_t)TIM2_ForcedAction);
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5306, a
; genLabel
00101$:
	Sstm8s_tim2$TIM2_ForcedOC2Config$262 ==.
;	../SPL/src/stm8s_tim2.c: 534: }
; genEndFunction
	Sstm8s_tim2$TIM2_ForcedOC2Config$263 ==.
	XG$TIM2_ForcedOC2Config$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_ForcedOC2Config$264 ==.
	Sstm8s_tim2$TIM2_ForcedOC3Config$265 ==.
;	../SPL/src/stm8s_tim2.c: 545: void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
; genLabel
;	-----------------------------------------
;	 function TIM2_ForcedOC3Config
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_ForcedOC3Config:
	Sstm8s_tim2$TIM2_ForcedOC3Config$266 ==.
	Sstm8s_tim2$TIM2_ForcedOC3Config$267 ==.
;	../SPL/src/stm8s_tim2.c: 551: TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
; genPointerGet
	ld	a, 0x5307
; genAnd
	and	a, #0x8f
	Sstm8s_tim2$TIM2_ForcedOC3Config$268 ==.
;	../SPL/src/stm8s_tim2.c: 552: | (uint8_t)TIM2_ForcedAction);
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5307, a
; genLabel
00101$:
	Sstm8s_tim2$TIM2_ForcedOC3Config$269 ==.
;	../SPL/src/stm8s_tim2.c: 553: }
; genEndFunction
	Sstm8s_tim2$TIM2_ForcedOC3Config$270 ==.
	XG$TIM2_ForcedOC3Config$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_ForcedOC3Config$271 ==.
	Sstm8s_tim2$TIM2_ARRPreloadConfig$272 ==.
;	../SPL/src/stm8s_tim2.c: 561: void TIM2_ARRPreloadConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_ARRPreloadConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_ARRPreloadConfig:
	Sstm8s_tim2$TIM2_ARRPreloadConfig$273 ==.
	Sstm8s_tim2$TIM2_ARRPreloadConfig$274 ==.
;	../SPL/src/stm8s_tim2.c: 569: TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
; genPointerGet
	ld	a, 0x5300
	Sstm8s_tim2$TIM2_ARRPreloadConfig$275 ==.
;	../SPL/src/stm8s_tim2.c: 567: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_tim2$TIM2_ARRPreloadConfig$276 ==.
	Sstm8s_tim2$TIM2_ARRPreloadConfig$277 ==.
;	../SPL/src/stm8s_tim2.c: 569: TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
; genOr
	or	a, #0x80
; genPointerSet
	ld	0x5300, a
	Sstm8s_tim2$TIM2_ARRPreloadConfig$278 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_tim2$TIM2_ARRPreloadConfig$279 ==.
	Sstm8s_tim2$TIM2_ARRPreloadConfig$280 ==.
;	../SPL/src/stm8s_tim2.c: 573: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x5300, a
	Sstm8s_tim2$TIM2_ARRPreloadConfig$281 ==.
; genLabel
00104$:
	Sstm8s_tim2$TIM2_ARRPreloadConfig$282 ==.
;	../SPL/src/stm8s_tim2.c: 575: }
; genEndFunction
	Sstm8s_tim2$TIM2_ARRPreloadConfig$283 ==.
	XG$TIM2_ARRPreloadConfig$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_ARRPreloadConfig$284 ==.
	Sstm8s_tim2$TIM2_OC1PreloadConfig$285 ==.
;	../SPL/src/stm8s_tim2.c: 583: void TIM2_OC1PreloadConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_OC1PreloadConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_OC1PreloadConfig:
	Sstm8s_tim2$TIM2_OC1PreloadConfig$286 ==.
	Sstm8s_tim2$TIM2_OC1PreloadConfig$287 ==.
;	../SPL/src/stm8s_tim2.c: 591: TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
; genPointerGet
	ld	a, 0x5305
	Sstm8s_tim2$TIM2_OC1PreloadConfig$288 ==.
;	../SPL/src/stm8s_tim2.c: 589: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_tim2$TIM2_OC1PreloadConfig$289 ==.
	Sstm8s_tim2$TIM2_OC1PreloadConfig$290 ==.
;	../SPL/src/stm8s_tim2.c: 591: TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
; genOr
	or	a, #0x08
; genPointerSet
	ld	0x5305, a
	Sstm8s_tim2$TIM2_OC1PreloadConfig$291 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_tim2$TIM2_OC1PreloadConfig$292 ==.
	Sstm8s_tim2$TIM2_OC1PreloadConfig$293 ==.
;	../SPL/src/stm8s_tim2.c: 595: TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5305, a
	Sstm8s_tim2$TIM2_OC1PreloadConfig$294 ==.
; genLabel
00104$:
	Sstm8s_tim2$TIM2_OC1PreloadConfig$295 ==.
;	../SPL/src/stm8s_tim2.c: 597: }
; genEndFunction
	Sstm8s_tim2$TIM2_OC1PreloadConfig$296 ==.
	XG$TIM2_OC1PreloadConfig$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_OC1PreloadConfig$297 ==.
	Sstm8s_tim2$TIM2_OC2PreloadConfig$298 ==.
;	../SPL/src/stm8s_tim2.c: 605: void TIM2_OC2PreloadConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_OC2PreloadConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_OC2PreloadConfig:
	Sstm8s_tim2$TIM2_OC2PreloadConfig$299 ==.
	Sstm8s_tim2$TIM2_OC2PreloadConfig$300 ==.
;	../SPL/src/stm8s_tim2.c: 613: TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
; genPointerGet
	ld	a, 0x5306
	Sstm8s_tim2$TIM2_OC2PreloadConfig$301 ==.
;	../SPL/src/stm8s_tim2.c: 611: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_tim2$TIM2_OC2PreloadConfig$302 ==.
	Sstm8s_tim2$TIM2_OC2PreloadConfig$303 ==.
;	../SPL/src/stm8s_tim2.c: 613: TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
; genOr
	or	a, #0x08
; genPointerSet
	ld	0x5306, a
	Sstm8s_tim2$TIM2_OC2PreloadConfig$304 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_tim2$TIM2_OC2PreloadConfig$305 ==.
	Sstm8s_tim2$TIM2_OC2PreloadConfig$306 ==.
;	../SPL/src/stm8s_tim2.c: 617: TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5306, a
	Sstm8s_tim2$TIM2_OC2PreloadConfig$307 ==.
; genLabel
00104$:
	Sstm8s_tim2$TIM2_OC2PreloadConfig$308 ==.
;	../SPL/src/stm8s_tim2.c: 619: }
; genEndFunction
	Sstm8s_tim2$TIM2_OC2PreloadConfig$309 ==.
	XG$TIM2_OC2PreloadConfig$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_OC2PreloadConfig$310 ==.
	Sstm8s_tim2$TIM2_OC3PreloadConfig$311 ==.
;	../SPL/src/stm8s_tim2.c: 627: void TIM2_OC3PreloadConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_OC3PreloadConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_OC3PreloadConfig:
	Sstm8s_tim2$TIM2_OC3PreloadConfig$312 ==.
	Sstm8s_tim2$TIM2_OC3PreloadConfig$313 ==.
;	../SPL/src/stm8s_tim2.c: 635: TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
; genPointerGet
	ld	a, 0x5307
	Sstm8s_tim2$TIM2_OC3PreloadConfig$314 ==.
;	../SPL/src/stm8s_tim2.c: 633: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_tim2$TIM2_OC3PreloadConfig$315 ==.
	Sstm8s_tim2$TIM2_OC3PreloadConfig$316 ==.
;	../SPL/src/stm8s_tim2.c: 635: TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
; genOr
	or	a, #0x08
; genPointerSet
	ld	0x5307, a
	Sstm8s_tim2$TIM2_OC3PreloadConfig$317 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_tim2$TIM2_OC3PreloadConfig$318 ==.
	Sstm8s_tim2$TIM2_OC3PreloadConfig$319 ==.
;	../SPL/src/stm8s_tim2.c: 639: TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5307, a
	Sstm8s_tim2$TIM2_OC3PreloadConfig$320 ==.
; genLabel
00104$:
	Sstm8s_tim2$TIM2_OC3PreloadConfig$321 ==.
;	../SPL/src/stm8s_tim2.c: 641: }
; genEndFunction
	Sstm8s_tim2$TIM2_OC3PreloadConfig$322 ==.
	XG$TIM2_OC3PreloadConfig$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_OC3PreloadConfig$323 ==.
	Sstm8s_tim2$TIM2_GenerateEvent$324 ==.
;	../SPL/src/stm8s_tim2.c: 653: void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
; genLabel
;	-----------------------------------------
;	 function TIM2_GenerateEvent
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_GenerateEvent:
	Sstm8s_tim2$TIM2_GenerateEvent$325 ==.
	Sstm8s_tim2$TIM2_GenerateEvent$326 ==.
;	../SPL/src/stm8s_tim2.c: 659: TIM2->EGR = (uint8_t)TIM2_EventSource;
; genPointerSet
	ldw	x, #0x5304
	ld	a, (0x03, sp)
	ld	(x), a
; genLabel
00101$:
	Sstm8s_tim2$TIM2_GenerateEvent$327 ==.
;	../SPL/src/stm8s_tim2.c: 660: }
; genEndFunction
	Sstm8s_tim2$TIM2_GenerateEvent$328 ==.
	XG$TIM2_GenerateEvent$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_GenerateEvent$329 ==.
	Sstm8s_tim2$TIM2_OC1PolarityConfig$330 ==.
;	../SPL/src/stm8s_tim2.c: 670: void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
; genLabel
;	-----------------------------------------
;	 function TIM2_OC1PolarityConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_OC1PolarityConfig:
	Sstm8s_tim2$TIM2_OC1PolarityConfig$331 ==.
	Sstm8s_tim2$TIM2_OC1PolarityConfig$332 ==.
;	../SPL/src/stm8s_tim2.c: 678: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
; genPointerGet
	ld	a, 0x5308
	Sstm8s_tim2$TIM2_OC1PolarityConfig$333 ==.
;	../SPL/src/stm8s_tim2.c: 676: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_tim2$TIM2_OC1PolarityConfig$334 ==.
	Sstm8s_tim2$TIM2_OC1PolarityConfig$335 ==.
;	../SPL/src/stm8s_tim2.c: 678: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5308, a
	Sstm8s_tim2$TIM2_OC1PolarityConfig$336 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_tim2$TIM2_OC1PolarityConfig$337 ==.
	Sstm8s_tim2$TIM2_OC1PolarityConfig$338 ==.
;	../SPL/src/stm8s_tim2.c: 682: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5308, a
	Sstm8s_tim2$TIM2_OC1PolarityConfig$339 ==.
; genLabel
00104$:
	Sstm8s_tim2$TIM2_OC1PolarityConfig$340 ==.
;	../SPL/src/stm8s_tim2.c: 684: }
; genEndFunction
	Sstm8s_tim2$TIM2_OC1PolarityConfig$341 ==.
	XG$TIM2_OC1PolarityConfig$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_OC1PolarityConfig$342 ==.
	Sstm8s_tim2$TIM2_OC2PolarityConfig$343 ==.
;	../SPL/src/stm8s_tim2.c: 694: void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
; genLabel
;	-----------------------------------------
;	 function TIM2_OC2PolarityConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_OC2PolarityConfig:
	Sstm8s_tim2$TIM2_OC2PolarityConfig$344 ==.
	Sstm8s_tim2$TIM2_OC2PolarityConfig$345 ==.
;	../SPL/src/stm8s_tim2.c: 702: TIM2->CCER1 |= TIM2_CCER1_CC2P;
; genPointerGet
	ld	a, 0x5308
	Sstm8s_tim2$TIM2_OC2PolarityConfig$346 ==.
;	../SPL/src/stm8s_tim2.c: 700: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_tim2$TIM2_OC2PolarityConfig$347 ==.
	Sstm8s_tim2$TIM2_OC2PolarityConfig$348 ==.
;	../SPL/src/stm8s_tim2.c: 702: TIM2->CCER1 |= TIM2_CCER1_CC2P;
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x5308, a
	Sstm8s_tim2$TIM2_OC2PolarityConfig$349 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_tim2$TIM2_OC2PolarityConfig$350 ==.
	Sstm8s_tim2$TIM2_OC2PolarityConfig$351 ==.
;	../SPL/src/stm8s_tim2.c: 706: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x5308, a
	Sstm8s_tim2$TIM2_OC2PolarityConfig$352 ==.
; genLabel
00104$:
	Sstm8s_tim2$TIM2_OC2PolarityConfig$353 ==.
;	../SPL/src/stm8s_tim2.c: 708: }
; genEndFunction
	Sstm8s_tim2$TIM2_OC2PolarityConfig$354 ==.
	XG$TIM2_OC2PolarityConfig$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_OC2PolarityConfig$355 ==.
	Sstm8s_tim2$TIM2_OC3PolarityConfig$356 ==.
;	../SPL/src/stm8s_tim2.c: 718: void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
; genLabel
;	-----------------------------------------
;	 function TIM2_OC3PolarityConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_OC3PolarityConfig:
	Sstm8s_tim2$TIM2_OC3PolarityConfig$357 ==.
	Sstm8s_tim2$TIM2_OC3PolarityConfig$358 ==.
;	../SPL/src/stm8s_tim2.c: 726: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
; genPointerGet
	ld	a, 0x5309
	Sstm8s_tim2$TIM2_OC3PolarityConfig$359 ==.
;	../SPL/src/stm8s_tim2.c: 724: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_tim2$TIM2_OC3PolarityConfig$360 ==.
	Sstm8s_tim2$TIM2_OC3PolarityConfig$361 ==.
;	../SPL/src/stm8s_tim2.c: 726: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5309, a
	Sstm8s_tim2$TIM2_OC3PolarityConfig$362 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_tim2$TIM2_OC3PolarityConfig$363 ==.
	Sstm8s_tim2$TIM2_OC3PolarityConfig$364 ==.
;	../SPL/src/stm8s_tim2.c: 730: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5309, a
	Sstm8s_tim2$TIM2_OC3PolarityConfig$365 ==.
; genLabel
00104$:
	Sstm8s_tim2$TIM2_OC3PolarityConfig$366 ==.
;	../SPL/src/stm8s_tim2.c: 732: }
; genEndFunction
	Sstm8s_tim2$TIM2_OC3PolarityConfig$367 ==.
	XG$TIM2_OC3PolarityConfig$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_OC3PolarityConfig$368 ==.
	Sstm8s_tim2$TIM2_CCxCmd$369 ==.
;	../SPL/src/stm8s_tim2.c: 745: void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_CCxCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_CCxCmd:
	Sstm8s_tim2$TIM2_CCxCmd$370 ==.
	Sstm8s_tim2$TIM2_CCxCmd$371 ==.
;	../SPL/src/stm8s_tim2.c: 751: if (TIM2_Channel == TIM2_CHANNEL_1)
; genIfx
	tnz	(0x03, sp)
	jreq	00143$
	jp	00114$
00143$:
	Sstm8s_tim2$TIM2_CCxCmd$372 ==.
;	../SPL/src/stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
; genPointerGet
	ld	a, 0x5308
	Sstm8s_tim2$TIM2_CCxCmd$373 ==.
	Sstm8s_tim2$TIM2_CCxCmd$374 ==.
;	../SPL/src/stm8s_tim2.c: 754: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
	jrne	00144$
	jp	00102$
00144$:
	Sstm8s_tim2$TIM2_CCxCmd$375 ==.
	Sstm8s_tim2$TIM2_CCxCmd$376 ==.
;	../SPL/src/stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5308, a
	Sstm8s_tim2$TIM2_CCxCmd$377 ==.
; genGoto
	jp	00116$
; genLabel
00102$:
	Sstm8s_tim2$TIM2_CCxCmd$378 ==.
	Sstm8s_tim2$TIM2_CCxCmd$379 ==.
;	../SPL/src/stm8s_tim2.c: 760: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5308, a
	Sstm8s_tim2$TIM2_CCxCmd$380 ==.
; genGoto
	jp	00116$
; genLabel
00114$:
	Sstm8s_tim2$TIM2_CCxCmd$381 ==.
;	../SPL/src/stm8s_tim2.c: 764: else if (TIM2_Channel == TIM2_CHANNEL_2)
; genCmpEQorNE
	ld	a, (0x03, sp)
	dec	a
	jrne	00146$
	jp	00147$
00146$:
	jp	00111$
00147$:
	Sstm8s_tim2$TIM2_CCxCmd$382 ==.
; skipping generated iCode
	Sstm8s_tim2$TIM2_CCxCmd$383 ==.
;	../SPL/src/stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
; genPointerGet
	ld	a, 0x5308
	Sstm8s_tim2$TIM2_CCxCmd$384 ==.
	Sstm8s_tim2$TIM2_CCxCmd$385 ==.
;	../SPL/src/stm8s_tim2.c: 767: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
	jrne	00148$
	jp	00105$
00148$:
	Sstm8s_tim2$TIM2_CCxCmd$386 ==.
	Sstm8s_tim2$TIM2_CCxCmd$387 ==.
;	../SPL/src/stm8s_tim2.c: 769: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x5308, a
	Sstm8s_tim2$TIM2_CCxCmd$388 ==.
; genGoto
	jp	00116$
; genLabel
00105$:
	Sstm8s_tim2$TIM2_CCxCmd$389 ==.
	Sstm8s_tim2$TIM2_CCxCmd$390 ==.
;	../SPL/src/stm8s_tim2.c: 773: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x5308, a
	Sstm8s_tim2$TIM2_CCxCmd$391 ==.
; genGoto
	jp	00116$
; genLabel
00111$:
	Sstm8s_tim2$TIM2_CCxCmd$392 ==.
;	../SPL/src/stm8s_tim2.c: 781: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
; genPointerGet
	ld	a, 0x5309
	Sstm8s_tim2$TIM2_CCxCmd$393 ==.
	Sstm8s_tim2$TIM2_CCxCmd$394 ==.
;	../SPL/src/stm8s_tim2.c: 779: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
	jrne	00149$
	jp	00108$
00149$:
	Sstm8s_tim2$TIM2_CCxCmd$395 ==.
	Sstm8s_tim2$TIM2_CCxCmd$396 ==.
;	../SPL/src/stm8s_tim2.c: 781: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5309, a
	Sstm8s_tim2$TIM2_CCxCmd$397 ==.
; genGoto
	jp	00116$
; genLabel
00108$:
	Sstm8s_tim2$TIM2_CCxCmd$398 ==.
	Sstm8s_tim2$TIM2_CCxCmd$399 ==.
;	../SPL/src/stm8s_tim2.c: 785: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5309, a
	Sstm8s_tim2$TIM2_CCxCmd$400 ==.
; genLabel
00116$:
	Sstm8s_tim2$TIM2_CCxCmd$401 ==.
;	../SPL/src/stm8s_tim2.c: 788: }
; genEndFunction
	Sstm8s_tim2$TIM2_CCxCmd$402 ==.
	XG$TIM2_CCxCmd$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_CCxCmd$403 ==.
	Sstm8s_tim2$TIM2_SelectOCxM$404 ==.
;	../SPL/src/stm8s_tim2.c: 810: void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
; genLabel
;	-----------------------------------------
;	 function TIM2_SelectOCxM
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_SelectOCxM:
	Sstm8s_tim2$TIM2_SelectOCxM$405 ==.
	Sstm8s_tim2$TIM2_SelectOCxM$406 ==.
;	../SPL/src/stm8s_tim2.c: 816: if (TIM2_Channel == TIM2_CHANNEL_1)
; genIfx
	tnz	(0x03, sp)
	jreq	00119$
	jp	00105$
00119$:
	Sstm8s_tim2$TIM2_SelectOCxM$407 ==.
	Sstm8s_tim2$TIM2_SelectOCxM$408 ==.
;	../SPL/src/stm8s_tim2.c: 819: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
; genPointerGet
	ld	a, 0x5308
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5308, a
	Sstm8s_tim2$TIM2_SelectOCxM$409 ==.
;	../SPL/src/stm8s_tim2.c: 822: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
; genPointerGet
	ld	a, 0x5305
; genAnd
	and	a, #0x8f
	Sstm8s_tim2$TIM2_SelectOCxM$410 ==.
;	../SPL/src/stm8s_tim2.c: 823: | (uint8_t)TIM2_OCMode);
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x5305, a
	Sstm8s_tim2$TIM2_SelectOCxM$411 ==.
; genGoto
	jp	00107$
; genLabel
00105$:
	Sstm8s_tim2$TIM2_SelectOCxM$412 ==.
;	../SPL/src/stm8s_tim2.c: 825: else if (TIM2_Channel == TIM2_CHANNEL_2)
; genCmpEQorNE
	ld	a, (0x03, sp)
	dec	a
	jrne	00121$
	jp	00122$
00121$:
	jp	00102$
00122$:
	Sstm8s_tim2$TIM2_SelectOCxM$413 ==.
; skipping generated iCode
	Sstm8s_tim2$TIM2_SelectOCxM$414 ==.
	Sstm8s_tim2$TIM2_SelectOCxM$415 ==.
;	../SPL/src/stm8s_tim2.c: 828: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
; genPointerGet
	ld	a, 0x5308
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x5308, a
	Sstm8s_tim2$TIM2_SelectOCxM$416 ==.
;	../SPL/src/stm8s_tim2.c: 831: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
; genPointerGet
	ld	a, 0x5306
; genAnd
	and	a, #0x8f
	Sstm8s_tim2$TIM2_SelectOCxM$417 ==.
;	../SPL/src/stm8s_tim2.c: 832: | (uint8_t)TIM2_OCMode);
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x5306, a
	Sstm8s_tim2$TIM2_SelectOCxM$418 ==.
; genGoto
	jp	00107$
; genLabel
00102$:
	Sstm8s_tim2$TIM2_SelectOCxM$419 ==.
	Sstm8s_tim2$TIM2_SelectOCxM$420 ==.
;	../SPL/src/stm8s_tim2.c: 837: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
; genPointerGet
	ld	a, 0x5309
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5309, a
	Sstm8s_tim2$TIM2_SelectOCxM$421 ==.
;	../SPL/src/stm8s_tim2.c: 840: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
; genPointerGet
	ld	a, 0x5307
; genAnd
	and	a, #0x8f
	Sstm8s_tim2$TIM2_SelectOCxM$422 ==.
;	../SPL/src/stm8s_tim2.c: 841: | (uint8_t)TIM2_OCMode);
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x5307, a
	Sstm8s_tim2$TIM2_SelectOCxM$423 ==.
; genLabel
00107$:
	Sstm8s_tim2$TIM2_SelectOCxM$424 ==.
;	../SPL/src/stm8s_tim2.c: 843: }
; genEndFunction
	Sstm8s_tim2$TIM2_SelectOCxM$425 ==.
	XG$TIM2_SelectOCxM$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_SelectOCxM$426 ==.
	Sstm8s_tim2$TIM2_SetCounter$427 ==.
;	../SPL/src/stm8s_tim2.c: 851: void TIM2_SetCounter(uint16_t Counter)
; genLabel
;	-----------------------------------------
;	 function TIM2_SetCounter
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_SetCounter:
	Sstm8s_tim2$TIM2_SetCounter$428 ==.
	Sstm8s_tim2$TIM2_SetCounter$429 ==.
;	../SPL/src/stm8s_tim2.c: 854: TIM2->CNTRH = (uint8_t)(Counter >> 8);
; genRightShiftLiteral
	ld	a, (0x03, sp)
	clrw	x
; genCast
; genAssign
; genPointerSet
	ld	0x530a, a
	Sstm8s_tim2$TIM2_SetCounter$430 ==.
;	../SPL/src/stm8s_tim2.c: 855: TIM2->CNTRL = (uint8_t)(Counter);
; genCast
; genAssign
	ld	a, (0x04, sp)
; genPointerSet
	ld	0x530b, a
; genLabel
00101$:
	Sstm8s_tim2$TIM2_SetCounter$431 ==.
;	../SPL/src/stm8s_tim2.c: 856: }
; genEndFunction
	Sstm8s_tim2$TIM2_SetCounter$432 ==.
	XG$TIM2_SetCounter$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_SetCounter$433 ==.
	Sstm8s_tim2$TIM2_SetAutoreload$434 ==.
;	../SPL/src/stm8s_tim2.c: 864: void TIM2_SetAutoreload(uint16_t Autoreload)
; genLabel
;	-----------------------------------------
;	 function TIM2_SetAutoreload
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_SetAutoreload:
	Sstm8s_tim2$TIM2_SetAutoreload$435 ==.
	Sstm8s_tim2$TIM2_SetAutoreload$436 ==.
;	../SPL/src/stm8s_tim2.c: 867: TIM2->ARRH = (uint8_t)(Autoreload >> 8);
; genRightShiftLiteral
	ld	a, (0x03, sp)
	clrw	x
; genCast
; genAssign
; genPointerSet
	ld	0x530d, a
	Sstm8s_tim2$TIM2_SetAutoreload$437 ==.
;	../SPL/src/stm8s_tim2.c: 868: TIM2->ARRL = (uint8_t)(Autoreload);
; genCast
; genAssign
	ld	a, (0x04, sp)
; genPointerSet
	ld	0x530e, a
; genLabel
00101$:
	Sstm8s_tim2$TIM2_SetAutoreload$438 ==.
;	../SPL/src/stm8s_tim2.c: 869: }
; genEndFunction
	Sstm8s_tim2$TIM2_SetAutoreload$439 ==.
	XG$TIM2_SetAutoreload$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_SetAutoreload$440 ==.
	Sstm8s_tim2$TIM2_SetCompare1$441 ==.
;	../SPL/src/stm8s_tim2.c: 877: void TIM2_SetCompare1(uint16_t Compare1)
; genLabel
;	-----------------------------------------
;	 function TIM2_SetCompare1
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_SetCompare1:
	Sstm8s_tim2$TIM2_SetCompare1$442 ==.
	Sstm8s_tim2$TIM2_SetCompare1$443 ==.
;	../SPL/src/stm8s_tim2.c: 880: TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
; genRightShiftLiteral
	ld	a, (0x03, sp)
	clrw	x
; genCast
; genAssign
; genPointerSet
	ld	0x530f, a
	Sstm8s_tim2$TIM2_SetCompare1$444 ==.
;	../SPL/src/stm8s_tim2.c: 881: TIM2->CCR1L = (uint8_t)(Compare1);
; genCast
; genAssign
	ld	a, (0x04, sp)
; genPointerSet
	ld	0x5310, a
; genLabel
00101$:
	Sstm8s_tim2$TIM2_SetCompare1$445 ==.
;	../SPL/src/stm8s_tim2.c: 882: }
; genEndFunction
	Sstm8s_tim2$TIM2_SetCompare1$446 ==.
	XG$TIM2_SetCompare1$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_SetCompare1$447 ==.
	Sstm8s_tim2$TIM2_SetCompare2$448 ==.
;	../SPL/src/stm8s_tim2.c: 890: void TIM2_SetCompare2(uint16_t Compare2)
; genLabel
;	-----------------------------------------
;	 function TIM2_SetCompare2
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_SetCompare2:
	Sstm8s_tim2$TIM2_SetCompare2$449 ==.
	Sstm8s_tim2$TIM2_SetCompare2$450 ==.
;	../SPL/src/stm8s_tim2.c: 893: TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
; genRightShiftLiteral
	ld	a, (0x03, sp)
	clrw	x
; genCast
; genAssign
; genPointerSet
	ld	0x5311, a
	Sstm8s_tim2$TIM2_SetCompare2$451 ==.
;	../SPL/src/stm8s_tim2.c: 894: TIM2->CCR2L = (uint8_t)(Compare2);
; genCast
; genAssign
	ld	a, (0x04, sp)
; genPointerSet
	ld	0x5312, a
; genLabel
00101$:
	Sstm8s_tim2$TIM2_SetCompare2$452 ==.
;	../SPL/src/stm8s_tim2.c: 895: }
; genEndFunction
	Sstm8s_tim2$TIM2_SetCompare2$453 ==.
	XG$TIM2_SetCompare2$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_SetCompare2$454 ==.
	Sstm8s_tim2$TIM2_SetCompare3$455 ==.
;	../SPL/src/stm8s_tim2.c: 903: void TIM2_SetCompare3(uint16_t Compare3)
; genLabel
;	-----------------------------------------
;	 function TIM2_SetCompare3
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_SetCompare3:
	Sstm8s_tim2$TIM2_SetCompare3$456 ==.
	Sstm8s_tim2$TIM2_SetCompare3$457 ==.
;	../SPL/src/stm8s_tim2.c: 906: TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
; genRightShiftLiteral
	ld	a, (0x03, sp)
	clrw	x
; genCast
; genAssign
; genPointerSet
	ld	0x5313, a
	Sstm8s_tim2$TIM2_SetCompare3$458 ==.
;	../SPL/src/stm8s_tim2.c: 907: TIM2->CCR3L = (uint8_t)(Compare3);
; genCast
; genAssign
	ld	a, (0x04, sp)
; genPointerSet
	ld	0x5314, a
; genLabel
00101$:
	Sstm8s_tim2$TIM2_SetCompare3$459 ==.
;	../SPL/src/stm8s_tim2.c: 908: }
; genEndFunction
	Sstm8s_tim2$TIM2_SetCompare3$460 ==.
	XG$TIM2_SetCompare3$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_SetCompare3$461 ==.
	Sstm8s_tim2$TIM2_SetIC1Prescaler$462 ==.
;	../SPL/src/stm8s_tim2.c: 920: void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
; genLabel
;	-----------------------------------------
;	 function TIM2_SetIC1Prescaler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_SetIC1Prescaler:
	Sstm8s_tim2$TIM2_SetIC1Prescaler$463 ==.
	Sstm8s_tim2$TIM2_SetIC1Prescaler$464 ==.
;	../SPL/src/stm8s_tim2.c: 926: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
; genPointerGet
	ld	a, 0x5305
; genAnd
	and	a, #0xf3
	Sstm8s_tim2$TIM2_SetIC1Prescaler$465 ==.
;	../SPL/src/stm8s_tim2.c: 927: | (uint8_t)TIM2_IC1Prescaler);
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5305, a
; genLabel
00101$:
	Sstm8s_tim2$TIM2_SetIC1Prescaler$466 ==.
;	../SPL/src/stm8s_tim2.c: 928: }
; genEndFunction
	Sstm8s_tim2$TIM2_SetIC1Prescaler$467 ==.
	XG$TIM2_SetIC1Prescaler$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_SetIC1Prescaler$468 ==.
	Sstm8s_tim2$TIM2_SetIC2Prescaler$469 ==.
;	../SPL/src/stm8s_tim2.c: 940: void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
; genLabel
;	-----------------------------------------
;	 function TIM2_SetIC2Prescaler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_SetIC2Prescaler:
	Sstm8s_tim2$TIM2_SetIC2Prescaler$470 ==.
	Sstm8s_tim2$TIM2_SetIC2Prescaler$471 ==.
;	../SPL/src/stm8s_tim2.c: 946: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
; genPointerGet
	ld	a, 0x5306
; genAnd
	and	a, #0xf3
	Sstm8s_tim2$TIM2_SetIC2Prescaler$472 ==.
;	../SPL/src/stm8s_tim2.c: 947: | (uint8_t)TIM2_IC2Prescaler);
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5306, a
; genLabel
00101$:
	Sstm8s_tim2$TIM2_SetIC2Prescaler$473 ==.
;	../SPL/src/stm8s_tim2.c: 948: }
; genEndFunction
	Sstm8s_tim2$TIM2_SetIC2Prescaler$474 ==.
	XG$TIM2_SetIC2Prescaler$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_SetIC2Prescaler$475 ==.
	Sstm8s_tim2$TIM2_SetIC3Prescaler$476 ==.
;	../SPL/src/stm8s_tim2.c: 960: void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
; genLabel
;	-----------------------------------------
;	 function TIM2_SetIC3Prescaler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_SetIC3Prescaler:
	Sstm8s_tim2$TIM2_SetIC3Prescaler$477 ==.
	Sstm8s_tim2$TIM2_SetIC3Prescaler$478 ==.
;	../SPL/src/stm8s_tim2.c: 966: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
; genPointerGet
	ld	a, 0x5307
; genAnd
	and	a, #0xf3
	Sstm8s_tim2$TIM2_SetIC3Prescaler$479 ==.
;	../SPL/src/stm8s_tim2.c: 967: | (uint8_t)TIM2_IC3Prescaler);
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5307, a
; genLabel
00101$:
	Sstm8s_tim2$TIM2_SetIC3Prescaler$480 ==.
;	../SPL/src/stm8s_tim2.c: 968: }
; genEndFunction
	Sstm8s_tim2$TIM2_SetIC3Prescaler$481 ==.
	XG$TIM2_SetIC3Prescaler$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_SetIC3Prescaler$482 ==.
	Sstm8s_tim2$TIM2_GetCapture1$483 ==.
;	../SPL/src/stm8s_tim2.c: 975: uint16_t TIM2_GetCapture1(void)
; genLabel
;	-----------------------------------------
;	 function TIM2_GetCapture1
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM2_GetCapture1:
	Sstm8s_tim2$TIM2_GetCapture1$484 ==.
	pushw	x
	Sstm8s_tim2$TIM2_GetCapture1$485 ==.
	Sstm8s_tim2$TIM2_GetCapture1$486 ==.
;	../SPL/src/stm8s_tim2.c: 981: tmpccr1h = TIM2->CCR1H;
; genPointerGet
	ld	a, 0x530f
	ld	xh, a
	Sstm8s_tim2$TIM2_GetCapture1$487 ==.
;	../SPL/src/stm8s_tim2.c: 982: tmpccr1l = TIM2->CCR1L;
; genPointerGet
	ld	a, 0x5310
	Sstm8s_tim2$TIM2_GetCapture1$488 ==.
;	../SPL/src/stm8s_tim2.c: 984: tmpccr1 = (uint16_t)(tmpccr1l);
; genCast
; genAssign
	ld	xl, a
	clr	a
; genAssign
	Sstm8s_tim2$TIM2_GetCapture1$489 ==.
;	../SPL/src/stm8s_tim2.c: 985: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
; genCast
; genAssign
	clrw	y
; genLeftShiftLiteral
	clr	(0x02, sp)
; genOr
	pushw	x
	Sstm8s_tim2$TIM2_GetCapture1$490 ==.
	or	a, (1, sp)
	popw	x
	Sstm8s_tim2$TIM2_GetCapture1$491 ==.
	ld	xh, a
	ld	a, xl
	or	a, (0x02, sp)
	ld	xl, a
; genAssign
	Sstm8s_tim2$TIM2_GetCapture1$492 ==.
;	../SPL/src/stm8s_tim2.c: 987: return (uint16_t)tmpccr1;
; genReturn
; genLabel
00101$:
	Sstm8s_tim2$TIM2_GetCapture1$493 ==.
;	../SPL/src/stm8s_tim2.c: 988: }
; genEndFunction
	addw	sp, #2
	Sstm8s_tim2$TIM2_GetCapture1$494 ==.
	Sstm8s_tim2$TIM2_GetCapture1$495 ==.
	XG$TIM2_GetCapture1$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_GetCapture1$496 ==.
	Sstm8s_tim2$TIM2_GetCapture2$497 ==.
;	../SPL/src/stm8s_tim2.c: 995: uint16_t TIM2_GetCapture2(void)
; genLabel
;	-----------------------------------------
;	 function TIM2_GetCapture2
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM2_GetCapture2:
	Sstm8s_tim2$TIM2_GetCapture2$498 ==.
	pushw	x
	Sstm8s_tim2$TIM2_GetCapture2$499 ==.
	Sstm8s_tim2$TIM2_GetCapture2$500 ==.
;	../SPL/src/stm8s_tim2.c: 1001: tmpccr2h = TIM2->CCR2H;
; genPointerGet
	ld	a, 0x5311
	ld	xh, a
	Sstm8s_tim2$TIM2_GetCapture2$501 ==.
;	../SPL/src/stm8s_tim2.c: 1002: tmpccr2l = TIM2->CCR2L;
; genPointerGet
	ld	a, 0x5312
	Sstm8s_tim2$TIM2_GetCapture2$502 ==.
;	../SPL/src/stm8s_tim2.c: 1004: tmpccr2 = (uint16_t)(tmpccr2l);
; genCast
; genAssign
	ld	xl, a
	clr	a
; genAssign
	Sstm8s_tim2$TIM2_GetCapture2$503 ==.
;	../SPL/src/stm8s_tim2.c: 1005: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
; genCast
; genAssign
	clrw	y
; genLeftShiftLiteral
	clr	(0x02, sp)
; genOr
	pushw	x
	Sstm8s_tim2$TIM2_GetCapture2$504 ==.
	or	a, (1, sp)
	popw	x
	Sstm8s_tim2$TIM2_GetCapture2$505 ==.
	ld	xh, a
	ld	a, xl
	or	a, (0x02, sp)
	ld	xl, a
; genAssign
	Sstm8s_tim2$TIM2_GetCapture2$506 ==.
;	../SPL/src/stm8s_tim2.c: 1007: return (uint16_t)tmpccr2;
; genReturn
; genLabel
00101$:
	Sstm8s_tim2$TIM2_GetCapture2$507 ==.
;	../SPL/src/stm8s_tim2.c: 1008: }
; genEndFunction
	addw	sp, #2
	Sstm8s_tim2$TIM2_GetCapture2$508 ==.
	Sstm8s_tim2$TIM2_GetCapture2$509 ==.
	XG$TIM2_GetCapture2$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_GetCapture2$510 ==.
	Sstm8s_tim2$TIM2_GetCapture3$511 ==.
;	../SPL/src/stm8s_tim2.c: 1015: uint16_t TIM2_GetCapture3(void)
; genLabel
;	-----------------------------------------
;	 function TIM2_GetCapture3
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM2_GetCapture3:
	Sstm8s_tim2$TIM2_GetCapture3$512 ==.
	pushw	x
	Sstm8s_tim2$TIM2_GetCapture3$513 ==.
	Sstm8s_tim2$TIM2_GetCapture3$514 ==.
;	../SPL/src/stm8s_tim2.c: 1021: tmpccr3h = TIM2->CCR3H;
; genPointerGet
	ld	a, 0x5313
	ld	xh, a
	Sstm8s_tim2$TIM2_GetCapture3$515 ==.
;	../SPL/src/stm8s_tim2.c: 1022: tmpccr3l = TIM2->CCR3L;
; genPointerGet
	ld	a, 0x5314
	Sstm8s_tim2$TIM2_GetCapture3$516 ==.
;	../SPL/src/stm8s_tim2.c: 1024: tmpccr3 = (uint16_t)(tmpccr3l);
; genCast
; genAssign
	ld	xl, a
	clr	a
; genAssign
	Sstm8s_tim2$TIM2_GetCapture3$517 ==.
;	../SPL/src/stm8s_tim2.c: 1025: tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
; genCast
; genAssign
	clrw	y
; genLeftShiftLiteral
	clr	(0x02, sp)
; genOr
	pushw	x
	Sstm8s_tim2$TIM2_GetCapture3$518 ==.
	or	a, (1, sp)
	popw	x
	Sstm8s_tim2$TIM2_GetCapture3$519 ==.
	ld	xh, a
	ld	a, xl
	or	a, (0x02, sp)
	ld	xl, a
; genAssign
	Sstm8s_tim2$TIM2_GetCapture3$520 ==.
;	../SPL/src/stm8s_tim2.c: 1027: return (uint16_t)tmpccr3;
; genReturn
; genLabel
00101$:
	Sstm8s_tim2$TIM2_GetCapture3$521 ==.
;	../SPL/src/stm8s_tim2.c: 1028: }
; genEndFunction
	addw	sp, #2
	Sstm8s_tim2$TIM2_GetCapture3$522 ==.
	Sstm8s_tim2$TIM2_GetCapture3$523 ==.
	XG$TIM2_GetCapture3$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_GetCapture3$524 ==.
	Sstm8s_tim2$TIM2_GetCounter$525 ==.
;	../SPL/src/stm8s_tim2.c: 1035: uint16_t TIM2_GetCounter(void)
; genLabel
;	-----------------------------------------
;	 function TIM2_GetCounter
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_TIM2_GetCounter:
	Sstm8s_tim2$TIM2_GetCounter$526 ==.
	sub	sp, #4
	Sstm8s_tim2$TIM2_GetCounter$527 ==.
	Sstm8s_tim2$TIM2_GetCounter$528 ==.
;	../SPL/src/stm8s_tim2.c: 1039: tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
; genPointerGet
	ld	a, 0x530a
; genCast
; genAssign
	clrw	x
; genLeftShiftLiteral
	ld	xh, a
	clr	a
; genAssign
	ld	(0x02, sp), a
	Sstm8s_tim2$TIM2_GetCounter$529 ==.
;	../SPL/src/stm8s_tim2.c: 1041: return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
; genPointerGet
	ld	a, 0x530b
; genCast
; genAssign
	clr	(0x03, sp)
; genOr
	or	a, (0x02, sp)
	ld	xl, a
	ld	a, xh
	or	a, (0x03, sp)
; genReturn
	ld	xh, a
; genLabel
00101$:
	Sstm8s_tim2$TIM2_GetCounter$530 ==.
;	../SPL/src/stm8s_tim2.c: 1042: }
; genEndFunction
	addw	sp, #4
	Sstm8s_tim2$TIM2_GetCounter$531 ==.
	Sstm8s_tim2$TIM2_GetCounter$532 ==.
	XG$TIM2_GetCounter$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_GetCounter$533 ==.
	Sstm8s_tim2$TIM2_GetPrescaler$534 ==.
;	../SPL/src/stm8s_tim2.c: 1049: TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
; genLabel
;	-----------------------------------------
;	 function TIM2_GetPrescaler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_GetPrescaler:
	Sstm8s_tim2$TIM2_GetPrescaler$535 ==.
	Sstm8s_tim2$TIM2_GetPrescaler$536 ==.
;	../SPL/src/stm8s_tim2.c: 1052: return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
; genPointerGet
	ld	a, 0x530c
; genReturn
; genLabel
00101$:
	Sstm8s_tim2$TIM2_GetPrescaler$537 ==.
;	../SPL/src/stm8s_tim2.c: 1053: }
; genEndFunction
	Sstm8s_tim2$TIM2_GetPrescaler$538 ==.
	XG$TIM2_GetPrescaler$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_GetPrescaler$539 ==.
	Sstm8s_tim2$TIM2_GetFlagStatus$540 ==.
;	../SPL/src/stm8s_tim2.c: 1068: FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
; genLabel
;	-----------------------------------------
;	 function TIM2_GetFlagStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_TIM2_GetFlagStatus:
	Sstm8s_tim2$TIM2_GetFlagStatus$541 ==.
	push	a
	Sstm8s_tim2$TIM2_GetFlagStatus$542 ==.
	Sstm8s_tim2$TIM2_GetFlagStatus$543 ==.
;	../SPL/src/stm8s_tim2.c: 1076: tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
; genPointerGet
	ld	a, 0x5302
	ld	(0x01, sp), a
; genCast
; genAssign
	ld	a, (0x05, sp)
; genAnd
	and	a, (0x01, sp)
; genAssign
	ld	(0x01, sp), a
	Sstm8s_tim2$TIM2_GetFlagStatus$544 ==.
;	../SPL/src/stm8s_tim2.c: 1077: tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
; genCast
; genAssign
	ldw	x, (0x04, sp)
; genRightShiftLiteral
	clr	a
; genCast
; genAssign
	Sstm8s_tim2$TIM2_GetFlagStatus$545 ==.
;	../SPL/src/stm8s_tim2.c: 1079: if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
; genPointerGet
	ld	a, 0x5303
; genAnd
	pushw	x
	Sstm8s_tim2$TIM2_GetFlagStatus$546 ==.
	and	a, (1, sp)
	popw	x
	Sstm8s_tim2$TIM2_GetFlagStatus$547 ==.
; genOr
	or	a, (0x01, sp)
; genIfx
	tnz	a
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_tim2$TIM2_GetFlagStatus$548 ==.
	Sstm8s_tim2$TIM2_GetFlagStatus$549 ==.
;	../SPL/src/stm8s_tim2.c: 1081: bitstatus = SET;
; genAssign
	ld	a, #0x01
	Sstm8s_tim2$TIM2_GetFlagStatus$550 ==.
; genGoto
	jp	00103$
; genLabel
00102$:
	Sstm8s_tim2$TIM2_GetFlagStatus$551 ==.
	Sstm8s_tim2$TIM2_GetFlagStatus$552 ==.
;	../SPL/src/stm8s_tim2.c: 1085: bitstatus = RESET;
; genAssign
	clr	a
	Sstm8s_tim2$TIM2_GetFlagStatus$553 ==.
; genLabel
00103$:
	Sstm8s_tim2$TIM2_GetFlagStatus$554 ==.
;	../SPL/src/stm8s_tim2.c: 1087: return (FlagStatus)bitstatus;
; genReturn
; genLabel
00104$:
	Sstm8s_tim2$TIM2_GetFlagStatus$555 ==.
;	../SPL/src/stm8s_tim2.c: 1088: }
; genEndFunction
	addw	sp, #1
	Sstm8s_tim2$TIM2_GetFlagStatus$556 ==.
	Sstm8s_tim2$TIM2_GetFlagStatus$557 ==.
	XG$TIM2_GetFlagStatus$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_GetFlagStatus$558 ==.
	Sstm8s_tim2$TIM2_ClearFlag$559 ==.
;	../SPL/src/stm8s_tim2.c: 1103: void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
; genLabel
;	-----------------------------------------
;	 function TIM2_ClearFlag
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_ClearFlag:
	Sstm8s_tim2$TIM2_ClearFlag$560 ==.
	Sstm8s_tim2$TIM2_ClearFlag$561 ==.
;	../SPL/src/stm8s_tim2.c: 1109: TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
; genCast
; genAssign
	ld	a, (0x04, sp)
; genCpl
	cpl	a
; genPointerSet
	ld	0x5302, a
	Sstm8s_tim2$TIM2_ClearFlag$562 ==.
;	../SPL/src/stm8s_tim2.c: 1110: TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
; genPointerSet
	mov	0x5303+0, #0xff
; genLabel
00101$:
	Sstm8s_tim2$TIM2_ClearFlag$563 ==.
;	../SPL/src/stm8s_tim2.c: 1111: }
; genEndFunction
	Sstm8s_tim2$TIM2_ClearFlag$564 ==.
	XG$TIM2_ClearFlag$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_ClearFlag$565 ==.
	Sstm8s_tim2$TIM2_GetITStatus$566 ==.
;	../SPL/src/stm8s_tim2.c: 1123: ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
; genLabel
;	-----------------------------------------
;	 function TIM2_GetITStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_GetITStatus:
	Sstm8s_tim2$TIM2_GetITStatus$567 ==.
	push	a
	Sstm8s_tim2$TIM2_GetITStatus$568 ==.
	Sstm8s_tim2$TIM2_GetITStatus$569 ==.
;	../SPL/src/stm8s_tim2.c: 1131: TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
; genPointerGet
	ld	a, 0x5302
; genAnd
	and	a, (0x04, sp)
; genAssign
	ld	(0x01, sp), a
	Sstm8s_tim2$TIM2_GetITStatus$570 ==.
;	../SPL/src/stm8s_tim2.c: 1133: TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
; genPointerGet
	ld	a, 0x5301
; genAnd
	and	a, (0x04, sp)
; genAssign
	Sstm8s_tim2$TIM2_GetITStatus$571 ==.
;	../SPL/src/stm8s_tim2.c: 1135: if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
; genIfx
	tnz	(0x01, sp)
	jrne	00117$
	jp	00102$
00117$:
; genIfx
	tnz	a
	jrne	00118$
	jp	00102$
00118$:
	Sstm8s_tim2$TIM2_GetITStatus$572 ==.
	Sstm8s_tim2$TIM2_GetITStatus$573 ==.
;	../SPL/src/stm8s_tim2.c: 1137: bitstatus = SET;
; genAssign
	ld	a, #0x01
	Sstm8s_tim2$TIM2_GetITStatus$574 ==.
; genGoto
	jp	00103$
; genLabel
00102$:
	Sstm8s_tim2$TIM2_GetITStatus$575 ==.
	Sstm8s_tim2$TIM2_GetITStatus$576 ==.
;	../SPL/src/stm8s_tim2.c: 1141: bitstatus = RESET;
; genAssign
	clr	a
	Sstm8s_tim2$TIM2_GetITStatus$577 ==.
; genLabel
00103$:
	Sstm8s_tim2$TIM2_GetITStatus$578 ==.
;	../SPL/src/stm8s_tim2.c: 1143: return (ITStatus)(bitstatus);
; genReturn
; genLabel
00105$:
	Sstm8s_tim2$TIM2_GetITStatus$579 ==.
;	../SPL/src/stm8s_tim2.c: 1144: }
; genEndFunction
	addw	sp, #1
	Sstm8s_tim2$TIM2_GetITStatus$580 ==.
	Sstm8s_tim2$TIM2_GetITStatus$581 ==.
	XG$TIM2_GetITStatus$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_GetITStatus$582 ==.
	Sstm8s_tim2$TIM2_ClearITPendingBit$583 ==.
;	../SPL/src/stm8s_tim2.c: 1156: void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
; genLabel
;	-----------------------------------------
;	 function TIM2_ClearITPendingBit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_ClearITPendingBit:
	Sstm8s_tim2$TIM2_ClearITPendingBit$584 ==.
	Sstm8s_tim2$TIM2_ClearITPendingBit$585 ==.
;	../SPL/src/stm8s_tim2.c: 1162: TIM2->SR1 = (uint8_t)(~TIM2_IT);
; genCpl
	ld	a, (0x03, sp)
	cpl	a
; genPointerSet
	ld	0x5302, a
; genLabel
00101$:
	Sstm8s_tim2$TIM2_ClearITPendingBit$586 ==.
;	../SPL/src/stm8s_tim2.c: 1163: }
; genEndFunction
	Sstm8s_tim2$TIM2_ClearITPendingBit$587 ==.
	XG$TIM2_ClearITPendingBit$0$0 ==.
	ret
	Sstm8s_tim2$TIM2_ClearITPendingBit$588 ==.
	Sstm8s_tim2$TI1_Config$589 ==.
;	../SPL/src/stm8s_tim2.c: 1181: static void TI1_Config(uint8_t TIM2_ICPolarity,
; genLabel
;	-----------------------------------------
;	 function TI1_Config
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TI1_Config:
	Sstm8s_tim2$TI1_Config$590 ==.
	push	a
	Sstm8s_tim2$TI1_Config$591 ==.
	Sstm8s_tim2$TI1_Config$592 ==.
;	../SPL/src/stm8s_tim2.c: 1186: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
; genPointerGet
	ld	a, 0x5308
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5308, a
	Sstm8s_tim2$TI1_Config$593 ==.
;	../SPL/src/stm8s_tim2.c: 1189: TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
; genPointerGet
	ld	a, 0x5305
; genAnd
	and	a, #0x0c
	ld	(0x01, sp), a
	Sstm8s_tim2$TI1_Config$594 ==.
;	../SPL/src/stm8s_tim2.c: 1190: | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
; genCast
; genAssign
	ld	a, (0x06, sp)
; genLeftShiftLiteral
	swap	a
	and	a, #0xf0
; genCast
; genAssign
; genOr
	or	a, (0x05, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5305, a
	Sstm8s_tim2$TI1_Config$595 ==.
;	../SPL/src/stm8s_tim2.c: 1186: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
; genPointerGet
	ld	a, 0x5308
	Sstm8s_tim2$TI1_Config$596 ==.
;	../SPL/src/stm8s_tim2.c: 1193: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
; genIfx
	tnz	(0x04, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_tim2$TI1_Config$597 ==.
	Sstm8s_tim2$TI1_Config$598 ==.
;	../SPL/src/stm8s_tim2.c: 1195: TIM2->CCER1 |= TIM2_CCER1_CC1P;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5308, a
	Sstm8s_tim2$TI1_Config$599 ==.
; genGoto
	jp	00103$
; genLabel
00102$:
	Sstm8s_tim2$TI1_Config$600 ==.
	Sstm8s_tim2$TI1_Config$601 ==.
;	../SPL/src/stm8s_tim2.c: 1199: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5308, a
	Sstm8s_tim2$TI1_Config$602 ==.
; genLabel
00103$:
	Sstm8s_tim2$TI1_Config$603 ==.
;	../SPL/src/stm8s_tim2.c: 1202: TIM2->CCER1 |= TIM2_CCER1_CC1E;
; genPointerGet
	ld	a, 0x5308
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5308, a
; genLabel
00104$:
	Sstm8s_tim2$TI1_Config$604 ==.
;	../SPL/src/stm8s_tim2.c: 1203: }
; genEndFunction
	pop	a
	Sstm8s_tim2$TI1_Config$605 ==.
	Sstm8s_tim2$TI1_Config$606 ==.
	XFstm8s_tim2$TI1_Config$0$0 ==.
	ret
	Sstm8s_tim2$TI1_Config$607 ==.
	Sstm8s_tim2$TI2_Config$608 ==.
;	../SPL/src/stm8s_tim2.c: 1221: static void TI2_Config(uint8_t TIM2_ICPolarity,
; genLabel
;	-----------------------------------------
;	 function TI2_Config
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TI2_Config:
	Sstm8s_tim2$TI2_Config$609 ==.
	push	a
	Sstm8s_tim2$TI2_Config$610 ==.
	Sstm8s_tim2$TI2_Config$611 ==.
;	../SPL/src/stm8s_tim2.c: 1226: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
; genPointerGet
	ld	a, 0x5308
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x5308, a
	Sstm8s_tim2$TI2_Config$612 ==.
;	../SPL/src/stm8s_tim2.c: 1229: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
; genPointerGet
	ld	a, 0x5306
; genAnd
	and	a, #0x0c
	ld	(0x01, sp), a
	Sstm8s_tim2$TI2_Config$613 ==.
;	../SPL/src/stm8s_tim2.c: 1230: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
; genCast
; genAssign
	ld	a, (0x06, sp)
; genLeftShiftLiteral
	swap	a
	and	a, #0xf0
; genCast
; genAssign
; genOr
	or	a, (0x05, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5306, a
	Sstm8s_tim2$TI2_Config$614 ==.
;	../SPL/src/stm8s_tim2.c: 1226: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
; genPointerGet
	ld	a, 0x5308
	Sstm8s_tim2$TI2_Config$615 ==.
;	../SPL/src/stm8s_tim2.c: 1234: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
; genIfx
	tnz	(0x04, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_tim2$TI2_Config$616 ==.
	Sstm8s_tim2$TI2_Config$617 ==.
;	../SPL/src/stm8s_tim2.c: 1236: TIM2->CCER1 |= TIM2_CCER1_CC2P;
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x5308, a
	Sstm8s_tim2$TI2_Config$618 ==.
; genGoto
	jp	00103$
; genLabel
00102$:
	Sstm8s_tim2$TI2_Config$619 ==.
	Sstm8s_tim2$TI2_Config$620 ==.
;	../SPL/src/stm8s_tim2.c: 1240: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x5308, a
	Sstm8s_tim2$TI2_Config$621 ==.
; genLabel
00103$:
	Sstm8s_tim2$TI2_Config$622 ==.
;	../SPL/src/stm8s_tim2.c: 1244: TIM2->CCER1 |= TIM2_CCER1_CC2E;
; genPointerGet
	ld	a, 0x5308
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x5308, a
; genLabel
00104$:
	Sstm8s_tim2$TI2_Config$623 ==.
;	../SPL/src/stm8s_tim2.c: 1245: }
; genEndFunction
	pop	a
	Sstm8s_tim2$TI2_Config$624 ==.
	Sstm8s_tim2$TI2_Config$625 ==.
	XFstm8s_tim2$TI2_Config$0$0 ==.
	ret
	Sstm8s_tim2$TI2_Config$626 ==.
	Sstm8s_tim2$TI3_Config$627 ==.
;	../SPL/src/stm8s_tim2.c: 1261: static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
; genLabel
;	-----------------------------------------
;	 function TI3_Config
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TI3_Config:
	Sstm8s_tim2$TI3_Config$628 ==.
	push	a
	Sstm8s_tim2$TI3_Config$629 ==.
	Sstm8s_tim2$TI3_Config$630 ==.
;	../SPL/src/stm8s_tim2.c: 1265: TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
; genPointerGet
	ld	a, 0x5309
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5309, a
	Sstm8s_tim2$TI3_Config$631 ==.
;	../SPL/src/stm8s_tim2.c: 1268: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
; genPointerGet
	ld	a, 0x5307
; genAnd
	and	a, #0x0c
	ld	(0x01, sp), a
	Sstm8s_tim2$TI3_Config$632 ==.
;	../SPL/src/stm8s_tim2.c: 1269: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
; genCast
; genAssign
	ld	a, (0x06, sp)
; genLeftShiftLiteral
	swap	a
	and	a, #0xf0
; genCast
; genAssign
; genOr
	or	a, (0x05, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5307, a
	Sstm8s_tim2$TI3_Config$633 ==.
;	../SPL/src/stm8s_tim2.c: 1265: TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
; genPointerGet
	ld	a, 0x5309
	Sstm8s_tim2$TI3_Config$634 ==.
;	../SPL/src/stm8s_tim2.c: 1273: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
; genIfx
	tnz	(0x04, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_tim2$TI3_Config$635 ==.
	Sstm8s_tim2$TI3_Config$636 ==.
;	../SPL/src/stm8s_tim2.c: 1275: TIM2->CCER2 |= TIM2_CCER2_CC3P;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5309, a
	Sstm8s_tim2$TI3_Config$637 ==.
; genGoto
	jp	00103$
; genLabel
00102$:
	Sstm8s_tim2$TI3_Config$638 ==.
	Sstm8s_tim2$TI3_Config$639 ==.
;	../SPL/src/stm8s_tim2.c: 1279: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5309, a
	Sstm8s_tim2$TI3_Config$640 ==.
; genLabel
00103$:
	Sstm8s_tim2$TI3_Config$641 ==.
;	../SPL/src/stm8s_tim2.c: 1282: TIM2->CCER2 |= TIM2_CCER2_CC3E;
; genPointerGet
	ld	a, 0x5309
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5309, a
; genLabel
00104$:
	Sstm8s_tim2$TI3_Config$642 ==.
;	../SPL/src/stm8s_tim2.c: 1283: }
; genEndFunction
	pop	a
	Sstm8s_tim2$TI3_Config$643 ==.
	Sstm8s_tim2$TI3_Config$644 ==.
	XFstm8s_tim2$TI3_Config$0$0 ==.
	ret
	Sstm8s_tim2$TI3_Config$645 ==.
	.area CODE
	.area CONST
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
	.ascii "../SPL/src/stm8s_tim2.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_DeInit$0)
	.db	3
	.sleb128	51
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$2-Sstm8s_tim2$TIM2_DeInit$0
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$3-Sstm8s_tim2$TIM2_DeInit$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$4-Sstm8s_tim2$TIM2_DeInit$3
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$5-Sstm8s_tim2$TIM2_DeInit$4
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$6-Sstm8s_tim2$TIM2_DeInit$5
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$7-Sstm8s_tim2$TIM2_DeInit$6
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$8-Sstm8s_tim2$TIM2_DeInit$7
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$9-Sstm8s_tim2$TIM2_DeInit$8
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$10-Sstm8s_tim2$TIM2_DeInit$9
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$11-Sstm8s_tim2$TIM2_DeInit$10
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$12-Sstm8s_tim2$TIM2_DeInit$11
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$13-Sstm8s_tim2$TIM2_DeInit$12
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$14-Sstm8s_tim2$TIM2_DeInit$13
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$15-Sstm8s_tim2$TIM2_DeInit$14
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$16-Sstm8s_tim2$TIM2_DeInit$15
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$17-Sstm8s_tim2$TIM2_DeInit$16
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$18-Sstm8s_tim2$TIM2_DeInit$17
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$19-Sstm8s_tim2$TIM2_DeInit$18
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$20-Sstm8s_tim2$TIM2_DeInit$19
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$21-Sstm8s_tim2$TIM2_DeInit$20
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$22-Sstm8s_tim2$TIM2_DeInit$21
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$23-Sstm8s_tim2$TIM2_DeInit$22
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$24-Sstm8s_tim2$TIM2_DeInit$23
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_DeInit$25-Sstm8s_tim2$TIM2_DeInit$24
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_TimeBaseInit$27)
	.db	3
	.sleb128	88
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_TimeBaseInit$29-Sstm8s_tim2$TIM2_TimeBaseInit$27
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_TimeBaseInit$30-Sstm8s_tim2$TIM2_TimeBaseInit$29
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_TimeBaseInit$31-Sstm8s_tim2$TIM2_TimeBaseInit$30
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_TimeBaseInit$32-Sstm8s_tim2$TIM2_TimeBaseInit$31
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_TimeBaseInit$33-Sstm8s_tim2$TIM2_TimeBaseInit$32
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$35)
	.db	3
	.sleb128	107
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1Init$38-Sstm8s_tim2$TIM2_OC1Init$35
	.db	3
	.sleb128	11
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1Init$39-Sstm8s_tim2$TIM2_OC1Init$38
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1Init$40-Sstm8s_tim2$TIM2_OC1Init$39
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1Init$41-Sstm8s_tim2$TIM2_OC1Init$40
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1Init$42-Sstm8s_tim2$TIM2_OC1Init$41
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1Init$43-Sstm8s_tim2$TIM2_OC1Init$42
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1Init$44-Sstm8s_tim2$TIM2_OC1Init$43
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1Init$45-Sstm8s_tim2$TIM2_OC1Init$44
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_OC1Init$47-Sstm8s_tim2$TIM2_OC1Init$45
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$49)
	.db	3
	.sleb128	141
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2Init$52-Sstm8s_tim2$TIM2_OC2Init$49
	.db	3
	.sleb128	12
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2Init$53-Sstm8s_tim2$TIM2_OC2Init$52
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2Init$54-Sstm8s_tim2$TIM2_OC2Init$53
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2Init$55-Sstm8s_tim2$TIM2_OC2Init$54
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2Init$56-Sstm8s_tim2$TIM2_OC2Init$55
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2Init$57-Sstm8s_tim2$TIM2_OC2Init$56
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2Init$58-Sstm8s_tim2$TIM2_OC2Init$57
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2Init$59-Sstm8s_tim2$TIM2_OC2Init$58
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_OC2Init$61-Sstm8s_tim2$TIM2_OC2Init$59
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$63)
	.db	3
	.sleb128	178
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3Init$66-Sstm8s_tim2$TIM2_OC3Init$63
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3Init$67-Sstm8s_tim2$TIM2_OC3Init$66
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3Init$68-Sstm8s_tim2$TIM2_OC3Init$67
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3Init$69-Sstm8s_tim2$TIM2_OC3Init$68
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3Init$70-Sstm8s_tim2$TIM2_OC3Init$69
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3Init$71-Sstm8s_tim2$TIM2_OC3Init$70
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3Init$72-Sstm8s_tim2$TIM2_OC3Init$71
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3Init$73-Sstm8s_tim2$TIM2_OC3Init$72
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_OC3Init$75-Sstm8s_tim2$TIM2_OC3Init$73
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$77)
	.db	3
	.sleb128	211
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ICInit$79-Sstm8s_tim2$TIM2_ICInit$77
	.db	3
	.sleb128	13
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ICInit$81-Sstm8s_tim2$TIM2_ICInit$79
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ICInit$86-Sstm8s_tim2$TIM2_ICInit$81
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ICInit$90-Sstm8s_tim2$TIM2_ICInit$86
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ICInit$93-Sstm8s_tim2$TIM2_ICInit$90
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ICInit$98-Sstm8s_tim2$TIM2_ICInit$93
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ICInit$103-Sstm8s_tim2$TIM2_ICInit$98
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ICInit$108-Sstm8s_tim2$TIM2_ICInit$103
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ICInit$112-Sstm8s_tim2$TIM2_ICInit$108
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_ICInit$113-Sstm8s_tim2$TIM2_ICInit$112
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$115)
	.db	3
	.sleb128	265
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$118-Sstm8s_tim2$TIM2_PWMIConfig$115
	.db	3
	.sleb128	16
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$121-Sstm8s_tim2$TIM2_PWMIConfig$118
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$124-Sstm8s_tim2$TIM2_PWMIConfig$121
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$126-Sstm8s_tim2$TIM2_PWMIConfig$124
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$129-Sstm8s_tim2$TIM2_PWMIConfig$126
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$132-Sstm8s_tim2$TIM2_PWMIConfig$129
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$134-Sstm8s_tim2$TIM2_PWMIConfig$132
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$136-Sstm8s_tim2$TIM2_PWMIConfig$134
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$141-Sstm8s_tim2$TIM2_PWMIConfig$136
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$144-Sstm8s_tim2$TIM2_PWMIConfig$141
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$149-Sstm8s_tim2$TIM2_PWMIConfig$144
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$154-Sstm8s_tim2$TIM2_PWMIConfig$149
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$159-Sstm8s_tim2$TIM2_PWMIConfig$154
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$162-Sstm8s_tim2$TIM2_PWMIConfig$159
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$167-Sstm8s_tim2$TIM2_PWMIConfig$162
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$171-Sstm8s_tim2$TIM2_PWMIConfig$167
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_PWMIConfig$173-Sstm8s_tim2$TIM2_PWMIConfig$171
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_Cmd$175)
	.db	3
	.sleb128	338
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_Cmd$177-Sstm8s_tim2$TIM2_Cmd$175
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_Cmd$178-Sstm8s_tim2$TIM2_Cmd$177
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_Cmd$180-Sstm8s_tim2$TIM2_Cmd$178
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_Cmd$183-Sstm8s_tim2$TIM2_Cmd$180
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_Cmd$185-Sstm8s_tim2$TIM2_Cmd$183
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_Cmd$186-Sstm8s_tim2$TIM2_Cmd$185
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$188)
	.db	3
	.sleb128	367
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ITConfig$191-Sstm8s_tim2$TIM2_ITConfig$188
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ITConfig$192-Sstm8s_tim2$TIM2_ITConfig$191
	.db	3
	.sleb128	-3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ITConfig$194-Sstm8s_tim2$TIM2_ITConfig$192
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ITConfig$197-Sstm8s_tim2$TIM2_ITConfig$194
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ITConfig$201-Sstm8s_tim2$TIM2_ITConfig$197
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_ITConfig$203-Sstm8s_tim2$TIM2_ITConfig$201
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$205)
	.db	3
	.sleb128	391
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_UpdateDisableConfig$207-Sstm8s_tim2$TIM2_UpdateDisableConfig$205
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_UpdateDisableConfig$208-Sstm8s_tim2$TIM2_UpdateDisableConfig$207
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_UpdateDisableConfig$210-Sstm8s_tim2$TIM2_UpdateDisableConfig$208
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_UpdateDisableConfig$213-Sstm8s_tim2$TIM2_UpdateDisableConfig$210
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_UpdateDisableConfig$215-Sstm8s_tim2$TIM2_UpdateDisableConfig$213
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_UpdateDisableConfig$216-Sstm8s_tim2$TIM2_UpdateDisableConfig$215
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$218)
	.db	3
	.sleb128	415
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_UpdateRequestConfig$220-Sstm8s_tim2$TIM2_UpdateRequestConfig$218
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_UpdateRequestConfig$221-Sstm8s_tim2$TIM2_UpdateRequestConfig$220
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_UpdateRequestConfig$223-Sstm8s_tim2$TIM2_UpdateRequestConfig$221
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_UpdateRequestConfig$226-Sstm8s_tim2$TIM2_UpdateRequestConfig$223
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_UpdateRequestConfig$228-Sstm8s_tim2$TIM2_UpdateRequestConfig$226
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_UpdateRequestConfig$229-Sstm8s_tim2$TIM2_UpdateRequestConfig$228
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$231)
	.db	3
	.sleb128	439
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOnePulseMode$233-Sstm8s_tim2$TIM2_SelectOnePulseMode$231
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOnePulseMode$234-Sstm8s_tim2$TIM2_SelectOnePulseMode$233
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOnePulseMode$236-Sstm8s_tim2$TIM2_SelectOnePulseMode$234
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOnePulseMode$239-Sstm8s_tim2$TIM2_SelectOnePulseMode$236
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOnePulseMode$241-Sstm8s_tim2$TIM2_SelectOnePulseMode$239
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_SelectOnePulseMode$242-Sstm8s_tim2$TIM2_SelectOnePulseMode$241
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_PrescalerConfig$244)
	.db	3
	.sleb128	483
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PrescalerConfig$246-Sstm8s_tim2$TIM2_PrescalerConfig$244
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PrescalerConfig$247-Sstm8s_tim2$TIM2_PrescalerConfig$246
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PrescalerConfig$248-Sstm8s_tim2$TIM2_PrescalerConfig$247
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_PrescalerConfig$249-Sstm8s_tim2$TIM2_PrescalerConfig$248
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC1Config$251)
	.db	3
	.sleb128	506
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ForcedOC1Config$253-Sstm8s_tim2$TIM2_ForcedOC1Config$251
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ForcedOC1Config$254-Sstm8s_tim2$TIM2_ForcedOC1Config$253
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ForcedOC1Config$255-Sstm8s_tim2$TIM2_ForcedOC1Config$254
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_ForcedOC1Config$256-Sstm8s_tim2$TIM2_ForcedOC1Config$255
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC2Config$258)
	.db	3
	.sleb128	525
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ForcedOC2Config$260-Sstm8s_tim2$TIM2_ForcedOC2Config$258
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ForcedOC2Config$261-Sstm8s_tim2$TIM2_ForcedOC2Config$260
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ForcedOC2Config$262-Sstm8s_tim2$TIM2_ForcedOC2Config$261
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_ForcedOC2Config$263-Sstm8s_tim2$TIM2_ForcedOC2Config$262
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC3Config$265)
	.db	3
	.sleb128	544
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ForcedOC3Config$267-Sstm8s_tim2$TIM2_ForcedOC3Config$265
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ForcedOC3Config$268-Sstm8s_tim2$TIM2_ForcedOC3Config$267
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ForcedOC3Config$269-Sstm8s_tim2$TIM2_ForcedOC3Config$268
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_ForcedOC3Config$270-Sstm8s_tim2$TIM2_ForcedOC3Config$269
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$272)
	.db	3
	.sleb128	560
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ARRPreloadConfig$274-Sstm8s_tim2$TIM2_ARRPreloadConfig$272
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ARRPreloadConfig$275-Sstm8s_tim2$TIM2_ARRPreloadConfig$274
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ARRPreloadConfig$277-Sstm8s_tim2$TIM2_ARRPreloadConfig$275
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ARRPreloadConfig$280-Sstm8s_tim2$TIM2_ARRPreloadConfig$277
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ARRPreloadConfig$282-Sstm8s_tim2$TIM2_ARRPreloadConfig$280
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_ARRPreloadConfig$283-Sstm8s_tim2$TIM2_ARRPreloadConfig$282
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$285)
	.db	3
	.sleb128	582
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1PreloadConfig$287-Sstm8s_tim2$TIM2_OC1PreloadConfig$285
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1PreloadConfig$288-Sstm8s_tim2$TIM2_OC1PreloadConfig$287
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1PreloadConfig$290-Sstm8s_tim2$TIM2_OC1PreloadConfig$288
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1PreloadConfig$293-Sstm8s_tim2$TIM2_OC1PreloadConfig$290
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1PreloadConfig$295-Sstm8s_tim2$TIM2_OC1PreloadConfig$293
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_OC1PreloadConfig$296-Sstm8s_tim2$TIM2_OC1PreloadConfig$295
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$298)
	.db	3
	.sleb128	604
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2PreloadConfig$300-Sstm8s_tim2$TIM2_OC2PreloadConfig$298
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2PreloadConfig$301-Sstm8s_tim2$TIM2_OC2PreloadConfig$300
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2PreloadConfig$303-Sstm8s_tim2$TIM2_OC2PreloadConfig$301
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2PreloadConfig$306-Sstm8s_tim2$TIM2_OC2PreloadConfig$303
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2PreloadConfig$308-Sstm8s_tim2$TIM2_OC2PreloadConfig$306
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_OC2PreloadConfig$309-Sstm8s_tim2$TIM2_OC2PreloadConfig$308
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$311)
	.db	3
	.sleb128	626
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3PreloadConfig$313-Sstm8s_tim2$TIM2_OC3PreloadConfig$311
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3PreloadConfig$314-Sstm8s_tim2$TIM2_OC3PreloadConfig$313
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3PreloadConfig$316-Sstm8s_tim2$TIM2_OC3PreloadConfig$314
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3PreloadConfig$319-Sstm8s_tim2$TIM2_OC3PreloadConfig$316
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3PreloadConfig$321-Sstm8s_tim2$TIM2_OC3PreloadConfig$319
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_OC3PreloadConfig$322-Sstm8s_tim2$TIM2_OC3PreloadConfig$321
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_GenerateEvent$324)
	.db	3
	.sleb128	652
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GenerateEvent$326-Sstm8s_tim2$TIM2_GenerateEvent$324
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GenerateEvent$327-Sstm8s_tim2$TIM2_GenerateEvent$326
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_GenerateEvent$328-Sstm8s_tim2$TIM2_GenerateEvent$327
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$330)
	.db	3
	.sleb128	669
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1PolarityConfig$332-Sstm8s_tim2$TIM2_OC1PolarityConfig$330
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1PolarityConfig$333-Sstm8s_tim2$TIM2_OC1PolarityConfig$332
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1PolarityConfig$335-Sstm8s_tim2$TIM2_OC1PolarityConfig$333
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1PolarityConfig$338-Sstm8s_tim2$TIM2_OC1PolarityConfig$335
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1PolarityConfig$340-Sstm8s_tim2$TIM2_OC1PolarityConfig$338
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_OC1PolarityConfig$341-Sstm8s_tim2$TIM2_OC1PolarityConfig$340
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$343)
	.db	3
	.sleb128	693
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2PolarityConfig$345-Sstm8s_tim2$TIM2_OC2PolarityConfig$343
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2PolarityConfig$346-Sstm8s_tim2$TIM2_OC2PolarityConfig$345
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2PolarityConfig$348-Sstm8s_tim2$TIM2_OC2PolarityConfig$346
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2PolarityConfig$351-Sstm8s_tim2$TIM2_OC2PolarityConfig$348
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2PolarityConfig$353-Sstm8s_tim2$TIM2_OC2PolarityConfig$351
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_OC2PolarityConfig$354-Sstm8s_tim2$TIM2_OC2PolarityConfig$353
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$356)
	.db	3
	.sleb128	717
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3PolarityConfig$358-Sstm8s_tim2$TIM2_OC3PolarityConfig$356
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3PolarityConfig$359-Sstm8s_tim2$TIM2_OC3PolarityConfig$358
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3PolarityConfig$361-Sstm8s_tim2$TIM2_OC3PolarityConfig$359
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3PolarityConfig$364-Sstm8s_tim2$TIM2_OC3PolarityConfig$361
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3PolarityConfig$366-Sstm8s_tim2$TIM2_OC3PolarityConfig$364
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_OC3PolarityConfig$367-Sstm8s_tim2$TIM2_OC3PolarityConfig$366
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$369)
	.db	3
	.sleb128	744
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$371-Sstm8s_tim2$TIM2_CCxCmd$369
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$372-Sstm8s_tim2$TIM2_CCxCmd$371
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$374-Sstm8s_tim2$TIM2_CCxCmd$372
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$376-Sstm8s_tim2$TIM2_CCxCmd$374
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$379-Sstm8s_tim2$TIM2_CCxCmd$376
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$381-Sstm8s_tim2$TIM2_CCxCmd$379
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$383-Sstm8s_tim2$TIM2_CCxCmd$381
	.db	3
	.sleb128	-8
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$385-Sstm8s_tim2$TIM2_CCxCmd$383
	.db	3
	.sleb128	11
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$387-Sstm8s_tim2$TIM2_CCxCmd$385
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$390-Sstm8s_tim2$TIM2_CCxCmd$387
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$392-Sstm8s_tim2$TIM2_CCxCmd$390
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$394-Sstm8s_tim2$TIM2_CCxCmd$392
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$396-Sstm8s_tim2$TIM2_CCxCmd$394
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$399-Sstm8s_tim2$TIM2_CCxCmd$396
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$401-Sstm8s_tim2$TIM2_CCxCmd$399
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_CCxCmd$402-Sstm8s_tim2$TIM2_CCxCmd$401
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$404)
	.db	3
	.sleb128	809
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$406-Sstm8s_tim2$TIM2_SelectOCxM$404
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$408-Sstm8s_tim2$TIM2_SelectOCxM$406
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$409-Sstm8s_tim2$TIM2_SelectOCxM$408
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$410-Sstm8s_tim2$TIM2_SelectOCxM$409
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$412-Sstm8s_tim2$TIM2_SelectOCxM$410
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$415-Sstm8s_tim2$TIM2_SelectOCxM$412
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$416-Sstm8s_tim2$TIM2_SelectOCxM$415
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$417-Sstm8s_tim2$TIM2_SelectOCxM$416
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$420-Sstm8s_tim2$TIM2_SelectOCxM$417
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$421-Sstm8s_tim2$TIM2_SelectOCxM$420
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$422-Sstm8s_tim2$TIM2_SelectOCxM$421
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$424-Sstm8s_tim2$TIM2_SelectOCxM$422
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_SelectOCxM$425-Sstm8s_tim2$TIM2_SelectOCxM$424
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_SetCounter$427)
	.db	3
	.sleb128	850
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCounter$429-Sstm8s_tim2$TIM2_SetCounter$427
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCounter$430-Sstm8s_tim2$TIM2_SetCounter$429
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCounter$431-Sstm8s_tim2$TIM2_SetCounter$430
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_SetCounter$432-Sstm8s_tim2$TIM2_SetCounter$431
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_SetAutoreload$434)
	.db	3
	.sleb128	863
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetAutoreload$436-Sstm8s_tim2$TIM2_SetAutoreload$434
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetAutoreload$437-Sstm8s_tim2$TIM2_SetAutoreload$436
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetAutoreload$438-Sstm8s_tim2$TIM2_SetAutoreload$437
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_SetAutoreload$439-Sstm8s_tim2$TIM2_SetAutoreload$438
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare1$441)
	.db	3
	.sleb128	876
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCompare1$443-Sstm8s_tim2$TIM2_SetCompare1$441
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCompare1$444-Sstm8s_tim2$TIM2_SetCompare1$443
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCompare1$445-Sstm8s_tim2$TIM2_SetCompare1$444
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_SetCompare1$446-Sstm8s_tim2$TIM2_SetCompare1$445
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare2$448)
	.db	3
	.sleb128	889
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCompare2$450-Sstm8s_tim2$TIM2_SetCompare2$448
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCompare2$451-Sstm8s_tim2$TIM2_SetCompare2$450
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCompare2$452-Sstm8s_tim2$TIM2_SetCompare2$451
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_SetCompare2$453-Sstm8s_tim2$TIM2_SetCompare2$452
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare3$455)
	.db	3
	.sleb128	902
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCompare3$457-Sstm8s_tim2$TIM2_SetCompare3$455
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCompare3$458-Sstm8s_tim2$TIM2_SetCompare3$457
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCompare3$459-Sstm8s_tim2$TIM2_SetCompare3$458
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_SetCompare3$460-Sstm8s_tim2$TIM2_SetCompare3$459
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_SetIC1Prescaler$462)
	.db	3
	.sleb128	919
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetIC1Prescaler$464-Sstm8s_tim2$TIM2_SetIC1Prescaler$462
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetIC1Prescaler$465-Sstm8s_tim2$TIM2_SetIC1Prescaler$464
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetIC1Prescaler$466-Sstm8s_tim2$TIM2_SetIC1Prescaler$465
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_SetIC1Prescaler$467-Sstm8s_tim2$TIM2_SetIC1Prescaler$466
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_SetIC2Prescaler$469)
	.db	3
	.sleb128	939
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetIC2Prescaler$471-Sstm8s_tim2$TIM2_SetIC2Prescaler$469
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetIC2Prescaler$472-Sstm8s_tim2$TIM2_SetIC2Prescaler$471
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetIC2Prescaler$473-Sstm8s_tim2$TIM2_SetIC2Prescaler$472
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_SetIC2Prescaler$474-Sstm8s_tim2$TIM2_SetIC2Prescaler$473
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_SetIC3Prescaler$476)
	.db	3
	.sleb128	959
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetIC3Prescaler$478-Sstm8s_tim2$TIM2_SetIC3Prescaler$476
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetIC3Prescaler$479-Sstm8s_tim2$TIM2_SetIC3Prescaler$478
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetIC3Prescaler$480-Sstm8s_tim2$TIM2_SetIC3Prescaler$479
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_SetIC3Prescaler$481-Sstm8s_tim2$TIM2_SetIC3Prescaler$480
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$483)
	.db	3
	.sleb128	974
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture1$486-Sstm8s_tim2$TIM2_GetCapture1$483
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture1$487-Sstm8s_tim2$TIM2_GetCapture1$486
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture1$488-Sstm8s_tim2$TIM2_GetCapture1$487
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture1$489-Sstm8s_tim2$TIM2_GetCapture1$488
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture1$492-Sstm8s_tim2$TIM2_GetCapture1$489
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture1$493-Sstm8s_tim2$TIM2_GetCapture1$492
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_GetCapture1$495-Sstm8s_tim2$TIM2_GetCapture1$493
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$497)
	.db	3
	.sleb128	994
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture2$500-Sstm8s_tim2$TIM2_GetCapture2$497
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture2$501-Sstm8s_tim2$TIM2_GetCapture2$500
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture2$502-Sstm8s_tim2$TIM2_GetCapture2$501
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture2$503-Sstm8s_tim2$TIM2_GetCapture2$502
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture2$506-Sstm8s_tim2$TIM2_GetCapture2$503
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture2$507-Sstm8s_tim2$TIM2_GetCapture2$506
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_GetCapture2$509-Sstm8s_tim2$TIM2_GetCapture2$507
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$511)
	.db	3
	.sleb128	1014
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture3$514-Sstm8s_tim2$TIM2_GetCapture3$511
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture3$515-Sstm8s_tim2$TIM2_GetCapture3$514
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture3$516-Sstm8s_tim2$TIM2_GetCapture3$515
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture3$517-Sstm8s_tim2$TIM2_GetCapture3$516
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture3$520-Sstm8s_tim2$TIM2_GetCapture3$517
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture3$521-Sstm8s_tim2$TIM2_GetCapture3$520
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_GetCapture3$523-Sstm8s_tim2$TIM2_GetCapture3$521
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$525)
	.db	3
	.sleb128	1034
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCounter$528-Sstm8s_tim2$TIM2_GetCounter$525
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCounter$529-Sstm8s_tim2$TIM2_GetCounter$528
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCounter$530-Sstm8s_tim2$TIM2_GetCounter$529
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_GetCounter$532-Sstm8s_tim2$TIM2_GetCounter$530
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_GetPrescaler$534)
	.db	3
	.sleb128	1048
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetPrescaler$536-Sstm8s_tim2$TIM2_GetPrescaler$534
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetPrescaler$537-Sstm8s_tim2$TIM2_GetPrescaler$536
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_GetPrescaler$538-Sstm8s_tim2$TIM2_GetPrescaler$537
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$540)
	.db	3
	.sleb128	1067
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$543-Sstm8s_tim2$TIM2_GetFlagStatus$540
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$544-Sstm8s_tim2$TIM2_GetFlagStatus$543
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$545-Sstm8s_tim2$TIM2_GetFlagStatus$544
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$549-Sstm8s_tim2$TIM2_GetFlagStatus$545
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$552-Sstm8s_tim2$TIM2_GetFlagStatus$549
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$554-Sstm8s_tim2$TIM2_GetFlagStatus$552
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$555-Sstm8s_tim2$TIM2_GetFlagStatus$554
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_GetFlagStatus$557-Sstm8s_tim2$TIM2_GetFlagStatus$555
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_ClearFlag$559)
	.db	3
	.sleb128	1102
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ClearFlag$561-Sstm8s_tim2$TIM2_ClearFlag$559
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ClearFlag$562-Sstm8s_tim2$TIM2_ClearFlag$561
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ClearFlag$563-Sstm8s_tim2$TIM2_ClearFlag$562
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_ClearFlag$564-Sstm8s_tim2$TIM2_ClearFlag$563
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$566)
	.db	3
	.sleb128	1122
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetITStatus$569-Sstm8s_tim2$TIM2_GetITStatus$566
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetITStatus$570-Sstm8s_tim2$TIM2_GetITStatus$569
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetITStatus$571-Sstm8s_tim2$TIM2_GetITStatus$570
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetITStatus$573-Sstm8s_tim2$TIM2_GetITStatus$571
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetITStatus$576-Sstm8s_tim2$TIM2_GetITStatus$573
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetITStatus$578-Sstm8s_tim2$TIM2_GetITStatus$576
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetITStatus$579-Sstm8s_tim2$TIM2_GetITStatus$578
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_GetITStatus$581-Sstm8s_tim2$TIM2_GetITStatus$579
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_ClearITPendingBit$583)
	.db	3
	.sleb128	1155
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ClearITPendingBit$585-Sstm8s_tim2$TIM2_ClearITPendingBit$583
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ClearITPendingBit$586-Sstm8s_tim2$TIM2_ClearITPendingBit$585
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TIM2_ClearITPendingBit$587-Sstm8s_tim2$TIM2_ClearITPendingBit$586
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TI1_Config$589)
	.db	3
	.sleb128	1180
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI1_Config$592-Sstm8s_tim2$TI1_Config$589
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI1_Config$593-Sstm8s_tim2$TI1_Config$592
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI1_Config$594-Sstm8s_tim2$TI1_Config$593
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI1_Config$595-Sstm8s_tim2$TI1_Config$594
	.db	3
	.sleb128	-4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI1_Config$596-Sstm8s_tim2$TI1_Config$595
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI1_Config$598-Sstm8s_tim2$TI1_Config$596
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI1_Config$601-Sstm8s_tim2$TI1_Config$598
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI1_Config$603-Sstm8s_tim2$TI1_Config$601
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI1_Config$604-Sstm8s_tim2$TI1_Config$603
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TI1_Config$606-Sstm8s_tim2$TI1_Config$604
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TI2_Config$608)
	.db	3
	.sleb128	1220
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI2_Config$611-Sstm8s_tim2$TI2_Config$608
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI2_Config$612-Sstm8s_tim2$TI2_Config$611
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI2_Config$613-Sstm8s_tim2$TI2_Config$612
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI2_Config$614-Sstm8s_tim2$TI2_Config$613
	.db	3
	.sleb128	-4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI2_Config$615-Sstm8s_tim2$TI2_Config$614
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI2_Config$617-Sstm8s_tim2$TI2_Config$615
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI2_Config$620-Sstm8s_tim2$TI2_Config$617
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI2_Config$622-Sstm8s_tim2$TI2_Config$620
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI2_Config$623-Sstm8s_tim2$TI2_Config$622
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TI2_Config$625-Sstm8s_tim2$TI2_Config$623
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TI3_Config$627)
	.db	3
	.sleb128	1260
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI3_Config$630-Sstm8s_tim2$TI3_Config$627
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI3_Config$631-Sstm8s_tim2$TI3_Config$630
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI3_Config$632-Sstm8s_tim2$TI3_Config$631
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI3_Config$633-Sstm8s_tim2$TI3_Config$632
	.db	3
	.sleb128	-4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI3_Config$634-Sstm8s_tim2$TI3_Config$633
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI3_Config$636-Sstm8s_tim2$TI3_Config$634
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI3_Config$639-Sstm8s_tim2$TI3_Config$636
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI3_Config$641-Sstm8s_tim2$TI3_Config$639
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI3_Config$642-Sstm8s_tim2$TI3_Config$641
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_tim2$TI3_Config$644-Sstm8s_tim2$TI3_Config$642
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sstm8s_tim2$TI3_Config$643)
	.dw	0,(Sstm8s_tim2$TI3_Config$645)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TI3_Config$629)
	.dw	0,(Sstm8s_tim2$TI3_Config$643)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_tim2$TI3_Config$628)
	.dw	0,(Sstm8s_tim2$TI3_Config$629)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TI2_Config$624)
	.dw	0,(Sstm8s_tim2$TI2_Config$626)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TI2_Config$610)
	.dw	0,(Sstm8s_tim2$TI2_Config$624)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_tim2$TI2_Config$609)
	.dw	0,(Sstm8s_tim2$TI2_Config$610)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TI1_Config$605)
	.dw	0,(Sstm8s_tim2$TI1_Config$607)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TI1_Config$591)
	.dw	0,(Sstm8s_tim2$TI1_Config$605)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_tim2$TI1_Config$590)
	.dw	0,(Sstm8s_tim2$TI1_Config$591)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_ClearITPendingBit$584)
	.dw	0,(Sstm8s_tim2$TIM2_ClearITPendingBit$588)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$580)
	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$582)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$568)
	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$580)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$567)
	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$568)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_ClearFlag$560)
	.dw	0,(Sstm8s_tim2$TIM2_ClearFlag$565)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$556)
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$558)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$547)
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$556)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$546)
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$547)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$542)
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$546)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$541)
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$542)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_GetPrescaler$535)
	.dw	0,(Sstm8s_tim2$TIM2_GetPrescaler$539)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$531)
	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$533)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$527)
	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$531)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$526)
	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$527)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$522)
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$524)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$519)
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$522)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$518)
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$519)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$513)
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$518)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$512)
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$513)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$508)
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$510)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$505)
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$508)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$504)
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$505)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$499)
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$504)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$498)
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$499)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$494)
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$496)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$491)
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$494)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$490)
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$491)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$485)
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$490)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$484)
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$485)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_SetIC3Prescaler$477)
	.dw	0,(Sstm8s_tim2$TIM2_SetIC3Prescaler$482)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_SetIC2Prescaler$470)
	.dw	0,(Sstm8s_tim2$TIM2_SetIC2Prescaler$475)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_SetIC1Prescaler$463)
	.dw	0,(Sstm8s_tim2$TIM2_SetIC1Prescaler$468)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare3$456)
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare3$461)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare2$449)
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare2$454)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare1$442)
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare1$447)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_SetAutoreload$435)
	.dw	0,(Sstm8s_tim2$TIM2_SetAutoreload$440)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_SetCounter$428)
	.dw	0,(Sstm8s_tim2$TIM2_SetCounter$433)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$413)
	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$426)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$405)
	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$413)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$382)
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$403)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$370)
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$382)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$357)
	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$368)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$344)
	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$355)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$331)
	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$342)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_GenerateEvent$325)
	.dw	0,(Sstm8s_tim2$TIM2_GenerateEvent$329)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$312)
	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$323)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$299)
	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$310)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$286)
	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$297)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$273)
	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$284)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC3Config$266)
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC3Config$271)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC2Config$259)
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC2Config$264)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC1Config$252)
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC1Config$257)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_PrescalerConfig$245)
	.dw	0,(Sstm8s_tim2$TIM2_PrescalerConfig$250)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$232)
	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$243)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$219)
	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$230)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$206)
	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$217)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$202)
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$204)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$199)
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$202)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$198)
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$199)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$190)
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$198)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$189)
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$190)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_Cmd$176)
	.dw	0,(Sstm8s_tim2$TIM2_Cmd$187)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$172)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$174)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$169)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$172)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$168)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$169)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$166)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$168)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$165)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$166)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$164)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$165)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$163)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$164)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$161)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$163)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$160)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$161)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$158)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$160)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$157)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$158)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$156)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$157)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$155)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$156)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$151)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$155)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$150)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$151)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$148)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$150)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$147)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$148)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$146)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$147)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$145)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$146)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$143)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$145)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$142)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$143)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$140)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$142)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$139)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$140)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$138)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$139)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$137)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$138)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$127)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$137)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$119)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$127)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$117)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$119)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$116)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$117)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$110)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$114)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$109)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$110)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$107)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$109)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$106)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$107)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$105)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$106)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$104)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$105)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$100)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$104)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$99)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$100)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$97)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$99)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$96)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$97)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$95)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$96)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$94)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$95)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$91)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$94)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$88)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$91)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$87)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$88)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$85)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$87)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$84)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$85)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$83)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$84)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$82)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$83)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$78)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$82)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$74)
	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$76)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$65)
	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$74)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$64)
	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$65)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$60)
	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$62)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$51)
	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$60)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$50)
	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$51)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$46)
	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$48)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$37)
	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$46)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$36)
	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$37)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_TimeBaseInit$28)
	.dw	0,(Sstm8s_tim2$TIM2_TimeBaseInit$34)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_DeInit$1)
	.dw	0,(Sstm8s_tim2$TIM2_DeInit$26)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	11
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
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	4
	.uleb128	5
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	3
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
	.uleb128	10
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
	.uleb128	9
	.uleb128	11
	.db	1
	.uleb128	17
	.uleb128	1
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
	.uleb128	8
	.uleb128	11
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	17
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
	.uleb128	12
	.uleb128	46
	.db	1
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
	.ascii "../SPL/src/stm8s_tim2.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.1.0 #12072"
	.db	0
	.uleb128	2
	.ascii "TIM2_DeInit"
	.db	0
	.dw	0,(_TIM2_DeInit)
	.dw	0,(XG$TIM2_DeInit$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1920)
	.uleb128	3
	.dw	0,173
	.ascii "TIM2_TimeBaseInit"
	.db	0
	.dw	0,(_TIM2_TimeBaseInit)
	.dw	0,(XG$TIM2_TimeBaseInit$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1900)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_Prescaler"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	3
	.ascii "TIM2_Period"
	.db	0
	.dw	0,190
	.uleb128	0
	.uleb128	5
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	5
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	3
	.dw	0,326
	.ascii "TIM2_OC1Init"
	.db	0
	.dw	0,(_TIM2_OC1Init)
	.dw	0,(XG$TIM2_OC1Init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1856)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_OCMode"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	3
	.ascii "TIM2_OutputState"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_Pulse"
	.db	0
	.dw	0,190
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM2_OCPolarity"
	.db	0
	.dw	0,173
	.uleb128	0
	.uleb128	3
	.dw	0,446
	.ascii "TIM2_OC2Init"
	.db	0
	.dw	0,(_TIM2_OC2Init)
	.dw	0,(XG$TIM2_OC2Init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1812)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_OCMode"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	3
	.ascii "TIM2_OutputState"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_Pulse"
	.db	0
	.dw	0,190
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM2_OCPolarity"
	.db	0
	.dw	0,173
	.uleb128	0
	.uleb128	3
	.dw	0,566
	.ascii "TIM2_OC3Init"
	.db	0
	.dw	0,(_TIM2_OC3Init)
	.dw	0,(XG$TIM2_OC3Init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1768)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_OCMode"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	3
	.ascii "TIM2_OutputState"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_Pulse"
	.db	0
	.dw	0,190
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM2_OCPolarity"
	.db	0
	.dw	0,173
	.uleb128	0
	.uleb128	3
	.dw	0,741
	.ascii "TIM2_ICInit"
	.db	0
	.dw	0,(_TIM2_ICInit)
	.dw	0,(XG$TIM2_ICInit$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1520)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_Channel"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	3
	.ascii "TIM2_ICPolarity"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_ICSelection"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM2_ICPrescaler"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM2_ICFilter"
	.db	0
	.dw	0,173
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$80)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$89)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$92)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$101)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$102)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$111)
	.uleb128	0
	.uleb128	3
	.dw	0,986
	.ascii "TIM2_PWMIConfig"
	.db	0
	.dw	0,(_TIM2_PWMIConfig)
	.dw	0,(XG$TIM2_PWMIConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1164)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_Channel"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	3
	.ascii "TIM2_ICPolarity"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_ICSelection"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM2_ICPrescaler"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM2_ICFilter"
	.db	0
	.dw	0,173
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$120)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$122)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$123)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$125)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$128)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$130)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$131)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$133)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$135)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$152)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$153)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$170)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-2
	.ascii "icpolarity"
	.db	0
	.dw	0,173
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-1
	.ascii "icselection"
	.db	0
	.dw	0,173
	.uleb128	0
	.uleb128	3
	.dw	0,1049
	.ascii "TIM2_Cmd"
	.db	0
	.dw	0,(_TIM2_Cmd)
	.dw	0,(XG$TIM2_Cmd$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1144)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "NewState"
	.db	0
	.dw	0,173
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_Cmd$179)
	.dw	0,(Sstm8s_tim2$TIM2_Cmd$181)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_Cmd$182)
	.dw	0,(Sstm8s_tim2$TIM2_Cmd$184)
	.uleb128	0
	.uleb128	3
	.dw	0,1133
	.ascii "TIM2_ITConfig"
	.db	0
	.dw	0,(_TIM2_ITConfig)
	.dw	0,(XG$TIM2_ITConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1076)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_IT"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	3
	.ascii "NewState"
	.db	0
	.dw	0,173
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$193)
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$195)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$196)
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$200)
	.uleb128	0
	.uleb128	3
	.dw	0,1212
	.ascii "TIM2_UpdateDisableConfig"
	.db	0
	.dw	0,(_TIM2_UpdateDisableConfig)
	.dw	0,(XG$TIM2_UpdateDisableConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1056)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "NewState"
	.db	0
	.dw	0,173
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$209)
	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$211)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$212)
	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$214)
	.uleb128	0
	.uleb128	3
	.dw	0,1300
	.ascii "TIM2_UpdateRequestConfig"
	.db	0
	.dw	0,(_TIM2_UpdateRequestConfig)
	.dw	0,(XG$TIM2_UpdateRequestConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1036)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_UpdateSource"
	.db	0
	.dw	0,173
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$222)
	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$224)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$225)
	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$227)
	.uleb128	0
	.uleb128	3
	.dw	0,1381
	.ascii "TIM2_SelectOnePulseMode"
	.db	0
	.dw	0,(_TIM2_SelectOnePulseMode)
	.dw	0,(XG$TIM2_SelectOnePulseMode$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1016)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_OPMode"
	.db	0
	.dw	0,173
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$235)
	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$237)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$238)
	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$240)
	.uleb128	0
	.uleb128	3
	.dw	0,1466
	.ascii "TIM2_PrescalerConfig"
	.db	0
	.dw	0,(_TIM2_PrescalerConfig)
	.dw	0,(XG$TIM2_PrescalerConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+996)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "Prescaler"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	3
	.ascii "TIM2_PSCReloadMode"
	.db	0
	.dw	0,173
	.uleb128	0
	.uleb128	3
	.dw	0,1532
	.ascii "TIM2_ForcedOC1Config"
	.db	0
	.dw	0,(_TIM2_ForcedOC1Config)
	.dw	0,(XG$TIM2_ForcedOC1Config$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+976)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_ForcedAction"
	.db	0
	.dw	0,173
	.uleb128	0
	.uleb128	3
	.dw	0,1598
	.ascii "TIM2_ForcedOC2Config"
	.db	0
	.dw	0,(_TIM2_ForcedOC2Config)
	.dw	0,(XG$TIM2_ForcedOC2Config$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+956)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_ForcedAction"
	.db	0
	.dw	0,173
	.uleb128	0
	.uleb128	3
	.dw	0,1664
	.ascii "TIM2_ForcedOC3Config"
	.db	0
	.dw	0,(_TIM2_ForcedOC3Config)
	.dw	0,(XG$TIM2_ForcedOC3Config$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+936)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_ForcedAction"
	.db	0
	.dw	0,173
	.uleb128	0
	.uleb128	3
	.dw	0,1740
	.ascii "TIM2_ARRPreloadConfig"
	.db	0
	.dw	0,(_TIM2_ARRPreloadConfig)
	.dw	0,(XG$TIM2_ARRPreloadConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+916)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "NewState"
	.db	0
	.dw	0,173
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$276)
	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$278)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$279)
	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$281)
	.uleb128	0
	.uleb128	3
	.dw	0,1816
	.ascii "TIM2_OC1PreloadConfig"
	.db	0
	.dw	0,(_TIM2_OC1PreloadConfig)
	.dw	0,(XG$TIM2_OC1PreloadConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+896)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "NewState"
	.db	0
	.dw	0,173
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$289)
	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$291)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$292)
	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$294)
	.uleb128	0
	.uleb128	3
	.dw	0,1892
	.ascii "TIM2_OC2PreloadConfig"
	.db	0
	.dw	0,(_TIM2_OC2PreloadConfig)
	.dw	0,(XG$TIM2_OC2PreloadConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+876)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "NewState"
	.db	0
	.dw	0,173
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$302)
	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$304)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$305)
	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$307)
	.uleb128	0
	.uleb128	3
	.dw	0,1968
	.ascii "TIM2_OC3PreloadConfig"
	.db	0
	.dw	0,(_TIM2_OC3PreloadConfig)
	.dw	0,(XG$TIM2_OC3PreloadConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+856)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "NewState"
	.db	0
	.dw	0,173
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$315)
	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$317)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$318)
	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$320)
	.uleb128	0
	.uleb128	3
	.dw	0,2031
	.ascii "TIM2_GenerateEvent"
	.db	0
	.dw	0,(_TIM2_GenerateEvent)
	.dw	0,(XG$TIM2_GenerateEvent$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+836)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_EventSource"
	.db	0
	.dw	0,173
	.uleb128	0
	.uleb128	3
	.dw	0,2115
	.ascii "TIM2_OC1PolarityConfig"
	.db	0
	.dw	0,(_TIM2_OC1PolarityConfig)
	.dw	0,(XG$TIM2_OC1PolarityConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+816)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_OCPolarity"
	.db	0
	.dw	0,173
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$334)
	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$336)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$337)
	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$339)
	.uleb128	0
	.uleb128	3
	.dw	0,2199
	.ascii "TIM2_OC2PolarityConfig"
	.db	0
	.dw	0,(_TIM2_OC2PolarityConfig)
	.dw	0,(XG$TIM2_OC2PolarityConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+796)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_OCPolarity"
	.db	0
	.dw	0,173
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$347)
	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$349)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$350)
	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$352)
	.uleb128	0
	.uleb128	3
	.dw	0,2283
	.ascii "TIM2_OC3PolarityConfig"
	.db	0
	.dw	0,(_TIM2_OC3PolarityConfig)
	.dw	0,(XG$TIM2_OC3PolarityConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+776)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_OCPolarity"
	.db	0
	.dw	0,173
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$360)
	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$362)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$363)
	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$365)
	.uleb128	0
	.uleb128	3
	.dw	0,2432
	.ascii "TIM2_CCxCmd"
	.db	0
	.dw	0,(_TIM2_CCxCmd)
	.dw	0,(XG$TIM2_CCxCmd$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+744)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_Channel"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	3
	.ascii "NewState"
	.db	0
	.dw	0,173
	.uleb128	8
	.dw	0,2379
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$373)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$375)
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$377)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$378)
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$380)
	.uleb128	0
	.uleb128	8
	.dw	0,2407
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$384)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$386)
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$388)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$389)
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$391)
	.uleb128	0
	.uleb128	9
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$393)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$395)
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$397)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$398)
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$400)
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.dw	0,2535
	.ascii "TIM2_SelectOCxM"
	.db	0
	.dw	0,(_TIM2_SelectOCxM)
	.dw	0,(XG$TIM2_SelectOCxM$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+712)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_Channel"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	3
	.ascii "TIM2_OCMode"
	.db	0
	.dw	0,173
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$407)
	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$411)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$414)
	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$418)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$419)
	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$423)
	.uleb128	0
	.uleb128	3
	.dw	0,2586
	.ascii "TIM2_SetCounter"
	.db	0
	.dw	0,(_TIM2_SetCounter)
	.dw	0,(XG$TIM2_SetCounter$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+692)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "Counter"
	.db	0
	.dw	0,190
	.uleb128	0
	.uleb128	3
	.dw	0,2643
	.ascii "TIM2_SetAutoreload"
	.db	0
	.dw	0,(_TIM2_SetAutoreload)
	.dw	0,(XG$TIM2_SetAutoreload$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+672)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "Autoreload"
	.db	0
	.dw	0,190
	.uleb128	0
	.uleb128	3
	.dw	0,2696
	.ascii "TIM2_SetCompare1"
	.db	0
	.dw	0,(_TIM2_SetCompare1)
	.dw	0,(XG$TIM2_SetCompare1$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+652)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "Compare1"
	.db	0
	.dw	0,190
	.uleb128	0
	.uleb128	3
	.dw	0,2749
	.ascii "TIM2_SetCompare2"
	.db	0
	.dw	0,(_TIM2_SetCompare2)
	.dw	0,(XG$TIM2_SetCompare2$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+632)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "Compare2"
	.db	0
	.dw	0,190
	.uleb128	0
	.uleb128	3
	.dw	0,2802
	.ascii "TIM2_SetCompare3"
	.db	0
	.dw	0,(_TIM2_SetCompare3)
	.dw	0,(XG$TIM2_SetCompare3$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+612)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "Compare3"
	.db	0
	.dw	0,190
	.uleb128	0
	.uleb128	3
	.dw	0,2868
	.ascii "TIM2_SetIC1Prescaler"
	.db	0
	.dw	0,(_TIM2_SetIC1Prescaler)
	.dw	0,(XG$TIM2_SetIC1Prescaler$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+592)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_IC1Prescaler"
	.db	0
	.dw	0,173
	.uleb128	0
	.uleb128	3
	.dw	0,2934
	.ascii "TIM2_SetIC2Prescaler"
	.db	0
	.dw	0,(_TIM2_SetIC2Prescaler)
	.dw	0,(XG$TIM2_SetIC2Prescaler$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+572)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_IC2Prescaler"
	.db	0
	.dw	0,173
	.uleb128	0
	.uleb128	3
	.dw	0,3000
	.ascii "TIM2_SetIC3Prescaler"
	.db	0
	.dw	0,(_TIM2_SetIC3Prescaler)
	.dw	0,(XG$TIM2_SetIC3Prescaler$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+552)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_IC3Prescaler"
	.db	0
	.dw	0,173
	.uleb128	0
	.uleb128	10
	.dw	0,3092
	.ascii "TIM2_GetCapture1"
	.db	0
	.dw	0,(_TIM2_GetCapture1)
	.dw	0,(XG$TIM2_GetCapture1$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+484)
	.dw	0,190
	.uleb128	7
	.db	6
	.db	82
	.db	147
	.uleb128	1
	.db	81
	.db	147
	.uleb128	1
	.ascii "tmpccr1"
	.db	0
	.dw	0,190
	.uleb128	7
	.db	1
	.db	80
	.ascii "tmpccr1l"
	.db	0
	.dw	0,173
	.uleb128	7
	.db	1
	.db	82
	.ascii "tmpccr1h"
	.db	0
	.dw	0,173
	.uleb128	0
	.uleb128	10
	.dw	0,3184
	.ascii "TIM2_GetCapture2"
	.db	0
	.dw	0,(_TIM2_GetCapture2)
	.dw	0,(XG$TIM2_GetCapture2$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+416)
	.dw	0,190
	.uleb128	7
	.db	6
	.db	82
	.db	147
	.uleb128	1
	.db	81
	.db	147
	.uleb128	1
	.ascii "tmpccr2"
	.db	0
	.dw	0,190
	.uleb128	7
	.db	1
	.db	80
	.ascii "tmpccr2l"
	.db	0
	.dw	0,173
	.uleb128	7
	.db	1
	.db	82
	.ascii "tmpccr2h"
	.db	0
	.dw	0,173
	.uleb128	0
	.uleb128	10
	.dw	0,3276
	.ascii "TIM2_GetCapture3"
	.db	0
	.dw	0,(_TIM2_GetCapture3)
	.dw	0,(XG$TIM2_GetCapture3$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+348)
	.dw	0,190
	.uleb128	7
	.db	6
	.db	82
	.db	147
	.uleb128	1
	.db	81
	.db	147
	.uleb128	1
	.ascii "tmpccr3"
	.db	0
	.dw	0,190
	.uleb128	7
	.db	1
	.db	80
	.ascii "tmpccr3l"
	.db	0
	.dw	0,173
	.uleb128	7
	.db	1
	.db	82
	.ascii "tmpccr3h"
	.db	0
	.dw	0,173
	.uleb128	0
	.uleb128	10
	.dw	0,3336
	.ascii "TIM2_GetCounter"
	.db	0
	.dw	0,(_TIM2_GetCounter)
	.dw	0,(XG$TIM2_GetCounter$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+304)
	.dw	0,190
	.uleb128	7
	.db	7
	.db	82
	.db	147
	.uleb128	1
	.db	145
	.sleb128	-3
	.db	147
	.uleb128	1
	.ascii "tmpcntr"
	.db	0
	.dw	0,190
	.uleb128	0
	.uleb128	11
	.ascii "TIM2_GetPrescaler"
	.db	0
	.dw	0,(_TIM2_GetPrescaler)
	.dw	0,(XG$TIM2_GetPrescaler$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+284)
	.dw	0,173
	.uleb128	10
	.dw	0,3506
	.ascii "TIM2_GetFlagStatus"
	.db	0
	.dw	0,(_TIM2_GetFlagStatus)
	.dw	0,(XG$TIM2_GetFlagStatus$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+216)
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_FLAG"
	.db	0
	.dw	0,3506
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$548)
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$550)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$551)
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$553)
	.uleb128	7
	.db	1
	.db	80
	.ascii "bitstatus"
	.db	0
	.dw	0,173
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-1
	.ascii "tim2_flag_l"
	.db	0
	.dw	0,173
	.uleb128	7
	.db	1
	.db	82
	.ascii "tim2_flag_h"
	.db	0
	.dw	0,173
	.uleb128	0
	.uleb128	5
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	3
	.dw	0,3574
	.ascii "TIM2_ClearFlag"
	.db	0
	.dw	0,(_TIM2_ClearFlag)
	.dw	0,(XG$TIM2_ClearFlag$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+196)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_FLAG"
	.db	0
	.dw	0,3506
	.uleb128	0
	.uleb128	10
	.dw	0,3708
	.ascii "TIM2_GetITStatus"
	.db	0
	.dw	0,(_TIM2_GetITStatus)
	.dw	0,(XG$TIM2_GetITStatus$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+152)
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_IT"
	.db	0
	.dw	0,173
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$572)
	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$574)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$575)
	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$577)
	.uleb128	7
	.db	1
	.db	80
	.ascii "bitstatus"
	.db	0
	.dw	0,173
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-1
	.ascii "TIM2_itStatus"
	.db	0
	.dw	0,173
	.uleb128	7
	.db	1
	.db	80
	.ascii "TIM2_itEnable"
	.db	0
	.dw	0,173
	.uleb128	0
	.uleb128	3
	.dw	0,3766
	.ascii "TIM2_ClearITPendingBit"
	.db	0
	.dw	0,(_TIM2_ClearITPendingBit)
	.dw	0,(XG$TIM2_ClearITPendingBit$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+132)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_IT"
	.db	0
	.dw	0,173
	.uleb128	0
	.uleb128	3
	.dw	0,3885
	.ascii "TI1_Config"
	.db	0
	.dw	0,(_TI1_Config)
	.dw	0,(XFstm8s_tim2$TI1_Config$0$0+1)
	.db	0
	.dw	0,(Ldebug_loc_start+88)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_ICPolarity"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	3
	.ascii "TIM2_ICSelection"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_ICFilter"
	.db	0
	.dw	0,173
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TI1_Config$597)
	.dw	0,(Sstm8s_tim2$TI1_Config$599)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TI1_Config$600)
	.dw	0,(Sstm8s_tim2$TI1_Config$602)
	.uleb128	0
	.uleb128	3
	.dw	0,4004
	.ascii "TI2_Config"
	.db	0
	.dw	0,(_TI2_Config)
	.dw	0,(XFstm8s_tim2$TI2_Config$0$0+1)
	.db	0
	.dw	0,(Ldebug_loc_start+44)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_ICPolarity"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	3
	.ascii "TIM2_ICSelection"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_ICFilter"
	.db	0
	.dw	0,173
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TI2_Config$616)
	.dw	0,(Sstm8s_tim2$TI2_Config$618)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TI2_Config$619)
	.dw	0,(Sstm8s_tim2$TI2_Config$621)
	.uleb128	0
	.uleb128	12
	.ascii "TI3_Config"
	.db	0
	.dw	0,(_TI3_Config)
	.dw	0,(XFstm8s_tim2$TI3_Config$0$0+1)
	.db	0
	.dw	0,(Ldebug_loc_start)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "TIM2_ICPolarity"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	3
	.ascii "TIM2_ICSelection"
	.db	0
	.dw	0,173
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_ICFilter"
	.db	0
	.dw	0,173
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TI3_Config$635)
	.dw	0,(Sstm8s_tim2$TI3_Config$637)
	.uleb128	6
	.dw	0,(Sstm8s_tim2$TI3_Config$638)
	.dw	0,(Sstm8s_tim2$TI3_Config$640)
	.uleb128	0
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
	.dw	0,67
	.ascii "TIM2_DeInit"
	.db	0
	.dw	0,93
	.ascii "TIM2_TimeBaseInit"
	.db	0
	.dw	0,206
	.ascii "TIM2_OC1Init"
	.db	0
	.dw	0,326
	.ascii "TIM2_OC2Init"
	.db	0
	.dw	0,446
	.ascii "TIM2_OC3Init"
	.db	0
	.dw	0,566
	.ascii "TIM2_ICInit"
	.db	0
	.dw	0,741
	.ascii "TIM2_PWMIConfig"
	.db	0
	.dw	0,986
	.ascii "TIM2_Cmd"
	.db	0
	.dw	0,1049
	.ascii "TIM2_ITConfig"
	.db	0
	.dw	0,1133
	.ascii "TIM2_UpdateDisableConfig"
	.db	0
	.dw	0,1212
	.ascii "TIM2_UpdateRequestConfig"
	.db	0
	.dw	0,1300
	.ascii "TIM2_SelectOnePulseMode"
	.db	0
	.dw	0,1381
	.ascii "TIM2_PrescalerConfig"
	.db	0
	.dw	0,1466
	.ascii "TIM2_ForcedOC1Config"
	.db	0
	.dw	0,1532
	.ascii "TIM2_ForcedOC2Config"
	.db	0
	.dw	0,1598
	.ascii "TIM2_ForcedOC3Config"
	.db	0
	.dw	0,1664
	.ascii "TIM2_ARRPreloadConfig"
	.db	0
	.dw	0,1740
	.ascii "TIM2_OC1PreloadConfig"
	.db	0
	.dw	0,1816
	.ascii "TIM2_OC2PreloadConfig"
	.db	0
	.dw	0,1892
	.ascii "TIM2_OC3PreloadConfig"
	.db	0
	.dw	0,1968
	.ascii "TIM2_GenerateEvent"
	.db	0
	.dw	0,2031
	.ascii "TIM2_OC1PolarityConfig"
	.db	0
	.dw	0,2115
	.ascii "TIM2_OC2PolarityConfig"
	.db	0
	.dw	0,2199
	.ascii "TIM2_OC3PolarityConfig"
	.db	0
	.dw	0,2283
	.ascii "TIM2_CCxCmd"
	.db	0
	.dw	0,2432
	.ascii "TIM2_SelectOCxM"
	.db	0
	.dw	0,2535
	.ascii "TIM2_SetCounter"
	.db	0
	.dw	0,2586
	.ascii "TIM2_SetAutoreload"
	.db	0
	.dw	0,2643
	.ascii "TIM2_SetCompare1"
	.db	0
	.dw	0,2696
	.ascii "TIM2_SetCompare2"
	.db	0
	.dw	0,2749
	.ascii "TIM2_SetCompare3"
	.db	0
	.dw	0,2802
	.ascii "TIM2_SetIC1Prescaler"
	.db	0
	.dw	0,2868
	.ascii "TIM2_SetIC2Prescaler"
	.db	0
	.dw	0,2934
	.ascii "TIM2_SetIC3Prescaler"
	.db	0
	.dw	0,3000
	.ascii "TIM2_GetCapture1"
	.db	0
	.dw	0,3092
	.ascii "TIM2_GetCapture2"
	.db	0
	.dw	0,3184
	.ascii "TIM2_GetCapture3"
	.db	0
	.dw	0,3276
	.ascii "TIM2_GetCounter"
	.db	0
	.dw	0,3336
	.ascii "TIM2_GetPrescaler"
	.db	0
	.dw	0,3372
	.ascii "TIM2_GetFlagStatus"
	.db	0
	.dw	0,3522
	.ascii "TIM2_ClearFlag"
	.db	0
	.dw	0,3574
	.ascii "TIM2_GetITStatus"
	.db	0
	.dw	0,3708
	.ascii "TIM2_ClearITPendingBit"
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
	.dw	0,33
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Sstm8s_tim2$TI3_Config$628)	;initial loc
	.dw	0,Sstm8s_tim2$TI3_Config$645-Sstm8s_tim2$TI3_Config$628
	.db	1
	.dw	0,(Sstm8s_tim2$TI3_Config$628)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TI3_Config$629)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_tim2$TI3_Config$643)
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
	.dw	0,33
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Sstm8s_tim2$TI2_Config$609)	;initial loc
	.dw	0,Sstm8s_tim2$TI2_Config$626-Sstm8s_tim2$TI2_Config$609
	.db	1
	.dw	0,(Sstm8s_tim2$TI2_Config$609)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TI2_Config$610)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_tim2$TI2_Config$624)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
Ldebug_CIE2_start:
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
Ldebug_CIE2_end:
	.dw	0,33
	.dw	0,(Ldebug_CIE2_start-4)
	.dw	0,(Sstm8s_tim2$TI1_Config$590)	;initial loc
	.dw	0,Sstm8s_tim2$TI1_Config$607-Sstm8s_tim2$TI1_Config$590
	.db	1
	.dw	0,(Sstm8s_tim2$TI1_Config$590)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TI1_Config$591)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_tim2$TI1_Config$605)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
Ldebug_CIE3_start:
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
Ldebug_CIE3_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE3_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_ClearITPendingBit$584)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_ClearITPendingBit$588-Sstm8s_tim2$TIM2_ClearITPendingBit$584
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ClearITPendingBit$584)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
Ldebug_CIE4_start:
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
Ldebug_CIE4_end:
	.dw	0,33
	.dw	0,(Ldebug_CIE4_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$567)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_GetITStatus$582-Sstm8s_tim2$TIM2_GetITStatus$567
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$567)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$568)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$580)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
Ldebug_CIE5_start:
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
Ldebug_CIE5_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE5_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_ClearFlag$560)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_ClearFlag$565-Sstm8s_tim2$TIM2_ClearFlag$560
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ClearFlag$560)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
Ldebug_CIE6_start:
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
Ldebug_CIE6_end:
	.dw	0,47
	.dw	0,(Ldebug_CIE6_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$541)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_GetFlagStatus$558-Sstm8s_tim2$TIM2_GetFlagStatus$541
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$541)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$542)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$546)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$547)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$556)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
Ldebug_CIE7_start:
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
Ldebug_CIE7_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE7_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_GetPrescaler$535)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_GetPrescaler$539-Sstm8s_tim2$TIM2_GetPrescaler$535
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetPrescaler$535)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
Ldebug_CIE8_start:
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
Ldebug_CIE8_end:
	.dw	0,33
	.dw	0,(Ldebug_CIE8_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$526)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_GetCounter$533-Sstm8s_tim2$TIM2_GetCounter$526
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$526)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$527)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$531)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
Ldebug_CIE9_start:
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
Ldebug_CIE9_end:
	.dw	0,47
	.dw	0,(Ldebug_CIE9_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$512)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_GetCapture3$524-Sstm8s_tim2$TIM2_GetCapture3$512
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$512)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$513)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$518)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$519)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$522)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
Ldebug_CIE10_start:
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
Ldebug_CIE10_end:
	.dw	0,47
	.dw	0,(Ldebug_CIE10_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$498)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_GetCapture2$510-Sstm8s_tim2$TIM2_GetCapture2$498
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$498)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$499)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$504)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$505)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$508)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
Ldebug_CIE11_start:
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
Ldebug_CIE11_end:
	.dw	0,47
	.dw	0,(Ldebug_CIE11_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$484)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_GetCapture1$496-Sstm8s_tim2$TIM2_GetCapture1$484
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$484)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$485)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$490)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$491)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$494)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE12_end-Ldebug_CIE12_start
Ldebug_CIE12_start:
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
Ldebug_CIE12_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE12_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_SetIC3Prescaler$477)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_SetIC3Prescaler$482-Sstm8s_tim2$TIM2_SetIC3Prescaler$477
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_SetIC3Prescaler$477)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE13_end-Ldebug_CIE13_start
Ldebug_CIE13_start:
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
Ldebug_CIE13_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE13_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_SetIC2Prescaler$470)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_SetIC2Prescaler$475-Sstm8s_tim2$TIM2_SetIC2Prescaler$470
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_SetIC2Prescaler$470)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE14_end-Ldebug_CIE14_start
Ldebug_CIE14_start:
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
Ldebug_CIE14_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE14_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_SetIC1Prescaler$463)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_SetIC1Prescaler$468-Sstm8s_tim2$TIM2_SetIC1Prescaler$463
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_SetIC1Prescaler$463)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE15_end-Ldebug_CIE15_start
Ldebug_CIE15_start:
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
Ldebug_CIE15_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE15_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare3$456)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_SetCompare3$461-Sstm8s_tim2$TIM2_SetCompare3$456
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare3$456)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE16_end-Ldebug_CIE16_start
Ldebug_CIE16_start:
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
Ldebug_CIE16_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE16_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare2$449)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_SetCompare2$454-Sstm8s_tim2$TIM2_SetCompare2$449
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare2$449)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE17_end-Ldebug_CIE17_start
Ldebug_CIE17_start:
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
Ldebug_CIE17_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE17_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare1$442)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_SetCompare1$447-Sstm8s_tim2$TIM2_SetCompare1$442
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare1$442)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE18_end-Ldebug_CIE18_start
Ldebug_CIE18_start:
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
Ldebug_CIE18_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE18_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_SetAutoreload$435)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_SetAutoreload$440-Sstm8s_tim2$TIM2_SetAutoreload$435
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_SetAutoreload$435)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE19_end-Ldebug_CIE19_start
Ldebug_CIE19_start:
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
Ldebug_CIE19_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE19_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_SetCounter$428)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_SetCounter$433-Sstm8s_tim2$TIM2_SetCounter$428
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_SetCounter$428)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE20_end-Ldebug_CIE20_start
Ldebug_CIE20_start:
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
Ldebug_CIE20_end:
	.dw	0,26
	.dw	0,(Ldebug_CIE20_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$405)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_SelectOCxM$426-Sstm8s_tim2$TIM2_SelectOCxM$405
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$405)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$413)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE21_end-Ldebug_CIE21_start
Ldebug_CIE21_start:
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
Ldebug_CIE21_end:
	.dw	0,26
	.dw	0,(Ldebug_CIE21_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$370)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_CCxCmd$403-Sstm8s_tim2$TIM2_CCxCmd$370
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$370)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$382)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE22_end-Ldebug_CIE22_start
Ldebug_CIE22_start:
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
Ldebug_CIE22_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE22_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$357)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_OC3PolarityConfig$368-Sstm8s_tim2$TIM2_OC3PolarityConfig$357
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$357)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE23_end-Ldebug_CIE23_start
Ldebug_CIE23_start:
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
Ldebug_CIE23_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE23_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$344)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_OC2PolarityConfig$355-Sstm8s_tim2$TIM2_OC2PolarityConfig$344
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$344)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE24_end-Ldebug_CIE24_start
Ldebug_CIE24_start:
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
Ldebug_CIE24_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE24_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$331)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_OC1PolarityConfig$342-Sstm8s_tim2$TIM2_OC1PolarityConfig$331
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$331)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE25_end-Ldebug_CIE25_start
Ldebug_CIE25_start:
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
Ldebug_CIE25_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE25_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_GenerateEvent$325)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_GenerateEvent$329-Sstm8s_tim2$TIM2_GenerateEvent$325
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_GenerateEvent$325)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE26_end-Ldebug_CIE26_start
Ldebug_CIE26_start:
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
Ldebug_CIE26_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE26_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$312)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_OC3PreloadConfig$323-Sstm8s_tim2$TIM2_OC3PreloadConfig$312
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$312)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE27_end-Ldebug_CIE27_start
Ldebug_CIE27_start:
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
Ldebug_CIE27_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE27_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$299)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_OC2PreloadConfig$310-Sstm8s_tim2$TIM2_OC2PreloadConfig$299
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$299)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE28_end-Ldebug_CIE28_start
Ldebug_CIE28_start:
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
Ldebug_CIE28_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE28_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$286)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_OC1PreloadConfig$297-Sstm8s_tim2$TIM2_OC1PreloadConfig$286
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$286)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE29_end-Ldebug_CIE29_start
Ldebug_CIE29_start:
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
Ldebug_CIE29_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE29_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$273)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_ARRPreloadConfig$284-Sstm8s_tim2$TIM2_ARRPreloadConfig$273
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$273)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE30_end-Ldebug_CIE30_start
Ldebug_CIE30_start:
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
Ldebug_CIE30_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE30_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC3Config$266)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_ForcedOC3Config$271-Sstm8s_tim2$TIM2_ForcedOC3Config$266
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC3Config$266)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE31_end-Ldebug_CIE31_start
Ldebug_CIE31_start:
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
Ldebug_CIE31_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE31_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC2Config$259)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_ForcedOC2Config$264-Sstm8s_tim2$TIM2_ForcedOC2Config$259
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC2Config$259)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE32_end-Ldebug_CIE32_start
Ldebug_CIE32_start:
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
Ldebug_CIE32_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE32_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC1Config$252)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_ForcedOC1Config$257-Sstm8s_tim2$TIM2_ForcedOC1Config$252
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC1Config$252)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE33_end-Ldebug_CIE33_start
Ldebug_CIE33_start:
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
Ldebug_CIE33_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE33_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_PrescalerConfig$245)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_PrescalerConfig$250-Sstm8s_tim2$TIM2_PrescalerConfig$245
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PrescalerConfig$245)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE34_end-Ldebug_CIE34_start
Ldebug_CIE34_start:
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
Ldebug_CIE34_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE34_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$232)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_SelectOnePulseMode$243-Sstm8s_tim2$TIM2_SelectOnePulseMode$232
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$232)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE35_end-Ldebug_CIE35_start
Ldebug_CIE35_start:
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
Ldebug_CIE35_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE35_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$219)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_UpdateRequestConfig$230-Sstm8s_tim2$TIM2_UpdateRequestConfig$219
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$219)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE36_end-Ldebug_CIE36_start
Ldebug_CIE36_start:
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
Ldebug_CIE36_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE36_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$206)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_UpdateDisableConfig$217-Sstm8s_tim2$TIM2_UpdateDisableConfig$206
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$206)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE37_end-Ldebug_CIE37_start
Ldebug_CIE37_start:
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
Ldebug_CIE37_end:
	.dw	0,47
	.dw	0,(Ldebug_CIE37_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$189)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_ITConfig$204-Sstm8s_tim2$TIM2_ITConfig$189
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$189)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$190)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$198)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$199)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$202)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE38_end-Ldebug_CIE38_start
Ldebug_CIE38_start:
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
Ldebug_CIE38_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE38_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_Cmd$176)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_Cmd$187-Sstm8s_tim2$TIM2_Cmd$176
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_Cmd$176)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE39_end-Ldebug_CIE39_start
Ldebug_CIE39_start:
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
Ldebug_CIE39_end:
	.dw	0,215
	.dw	0,(Ldebug_CIE39_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$116)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_PWMIConfig$174-Sstm8s_tim2$TIM2_PWMIConfig$116
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$116)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$117)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$119)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$127)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$137)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$138)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$139)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$140)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$142)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$143)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$145)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$146)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$147)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$148)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$150)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$151)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$155)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$156)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$157)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$158)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$160)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$161)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$163)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$164)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$165)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$166)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$168)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$169)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$172)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE40_end-Ldebug_CIE40_start
Ldebug_CIE40_start:
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
Ldebug_CIE40_end:
	.dw	0,152
	.dw	0,(Ldebug_CIE40_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$78)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_ICInit$114-Sstm8s_tim2$TIM2_ICInit$78
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$78)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$82)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$83)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$84)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$85)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$87)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$88)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$91)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$94)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$95)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$96)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$97)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$99)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$100)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$104)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$105)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$106)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$107)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$109)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$110)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE41_end-Ldebug_CIE41_start
Ldebug_CIE41_start:
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
Ldebug_CIE41_end:
	.dw	0,33
	.dw	0,(Ldebug_CIE41_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$64)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_OC3Init$76-Sstm8s_tim2$TIM2_OC3Init$64
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$64)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$65)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$74)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE42_end-Ldebug_CIE42_start
Ldebug_CIE42_start:
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
Ldebug_CIE42_end:
	.dw	0,33
	.dw	0,(Ldebug_CIE42_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$50)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_OC2Init$62-Sstm8s_tim2$TIM2_OC2Init$50
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$50)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$51)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$60)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE43_end-Ldebug_CIE43_start
Ldebug_CIE43_start:
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
Ldebug_CIE43_end:
	.dw	0,33
	.dw	0,(Ldebug_CIE43_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$36)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_OC1Init$48-Sstm8s_tim2$TIM2_OC1Init$36
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$36)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$37)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$46)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE44_end-Ldebug_CIE44_start
Ldebug_CIE44_start:
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
Ldebug_CIE44_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE44_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_TimeBaseInit$28)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_TimeBaseInit$34-Sstm8s_tim2$TIM2_TimeBaseInit$28
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_TimeBaseInit$28)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE45_end-Ldebug_CIE45_start
Ldebug_CIE45_start:
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
Ldebug_CIE45_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE45_start-4)
	.dw	0,(Sstm8s_tim2$TIM2_DeInit$1)	;initial loc
	.dw	0,Sstm8s_tim2$TIM2_DeInit$26-Sstm8s_tim2$TIM2_DeInit$1
	.db	1
	.dw	0,(Sstm8s_tim2$TIM2_DeInit$1)
	.db	14
	.uleb128	2

                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim2
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TIM2_DeInit
                                     12 	.globl _TIM2_TimeBaseInit
                                     13 	.globl _TIM2_OC1Init
                                     14 	.globl _TIM2_OC2Init
                                     15 	.globl _TIM2_OC3Init
                                     16 	.globl _TIM2_ICInit
                                     17 	.globl _TIM2_PWMIConfig
                                     18 	.globl _TIM2_Cmd
                                     19 	.globl _TIM2_ITConfig
                                     20 	.globl _TIM2_UpdateDisableConfig
                                     21 	.globl _TIM2_UpdateRequestConfig
                                     22 	.globl _TIM2_SelectOnePulseMode
                                     23 	.globl _TIM2_PrescalerConfig
                                     24 	.globl _TIM2_ForcedOC1Config
                                     25 	.globl _TIM2_ForcedOC2Config
                                     26 	.globl _TIM2_ForcedOC3Config
                                     27 	.globl _TIM2_ARRPreloadConfig
                                     28 	.globl _TIM2_OC1PreloadConfig
                                     29 	.globl _TIM2_OC2PreloadConfig
                                     30 	.globl _TIM2_OC3PreloadConfig
                                     31 	.globl _TIM2_GenerateEvent
                                     32 	.globl _TIM2_OC1PolarityConfig
                                     33 	.globl _TIM2_OC2PolarityConfig
                                     34 	.globl _TIM2_OC3PolarityConfig
                                     35 	.globl _TIM2_CCxCmd
                                     36 	.globl _TIM2_SelectOCxM
                                     37 	.globl _TIM2_SetCounter
                                     38 	.globl _TIM2_SetAutoreload
                                     39 	.globl _TIM2_SetCompare1
                                     40 	.globl _TIM2_SetCompare2
                                     41 	.globl _TIM2_SetCompare3
                                     42 	.globl _TIM2_SetIC1Prescaler
                                     43 	.globl _TIM2_SetIC2Prescaler
                                     44 	.globl _TIM2_SetIC3Prescaler
                                     45 	.globl _TIM2_GetCapture1
                                     46 	.globl _TIM2_GetCapture2
                                     47 	.globl _TIM2_GetCapture3
                                     48 	.globl _TIM2_GetCounter
                                     49 	.globl _TIM2_GetPrescaler
                                     50 	.globl _TIM2_GetFlagStatus
                                     51 	.globl _TIM2_ClearFlag
                                     52 	.globl _TIM2_GetITStatus
                                     53 	.globl _TIM2_ClearITPendingBit
                                     54 ;--------------------------------------------------------
                                     55 ; ram data
                                     56 ;--------------------------------------------------------
                                     57 	.area DATA
                                     58 ;--------------------------------------------------------
                                     59 ; ram data
                                     60 ;--------------------------------------------------------
                                     61 	.area INITIALIZED
                                     62 ;--------------------------------------------------------
                                     63 ; absolute external ram data
                                     64 ;--------------------------------------------------------
                                     65 	.area DABS (ABS)
                                     66 
                                     67 ; default segment ordering for linker
                                     68 	.area HOME
                                     69 	.area GSINIT
                                     70 	.area GSFINAL
                                     71 	.area CONST
                                     72 	.area INITIALIZER
                                     73 	.area CODE
                                     74 
                                     75 ;--------------------------------------------------------
                                     76 ; global & static initialisations
                                     77 ;--------------------------------------------------------
                                     78 	.area HOME
                                     79 	.area GSINIT
                                     80 	.area GSFINAL
                                     81 	.area GSINIT
                                     82 ;--------------------------------------------------------
                                     83 ; Home
                                     84 ;--------------------------------------------------------
                                     85 	.area HOME
                                     86 	.area HOME
                                     87 ;--------------------------------------------------------
                                     88 ; code
                                     89 ;--------------------------------------------------------
                                     90 	.area CODE
                           000000    91 	Sstm8s_tim2$TIM2_DeInit$0 ==.
                                     92 ;	../SPL/src/stm8s_tim2.c: 52: void TIM2_DeInit(void)
                                     93 ; genLabel
                                     94 ;	-----------------------------------------
                                     95 ;	 function TIM2_DeInit
                                     96 ;	-----------------------------------------
                                     97 ;	Register assignment is optimal.
                                     98 ;	Stack space usage: 0 bytes.
      009E74                         99 _TIM2_DeInit:
                           000000   100 	Sstm8s_tim2$TIM2_DeInit$1 ==.
                           000000   101 	Sstm8s_tim2$TIM2_DeInit$2 ==.
                                    102 ;	../SPL/src/stm8s_tim2.c: 54: TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
                                    103 ; genPointerSet
      009E74 35 00 53 00      [ 1]  104 	mov	0x5300+0, #0x00
                           000004   105 	Sstm8s_tim2$TIM2_DeInit$3 ==.
                                    106 ;	../SPL/src/stm8s_tim2.c: 55: TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
                                    107 ; genPointerSet
      009E78 35 00 53 01      [ 1]  108 	mov	0x5301+0, #0x00
                           000008   109 	Sstm8s_tim2$TIM2_DeInit$4 ==.
                                    110 ;	../SPL/src/stm8s_tim2.c: 56: TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
                                    111 ; genPointerSet
      009E7C 35 00 53 03      [ 1]  112 	mov	0x5303+0, #0x00
                           00000C   113 	Sstm8s_tim2$TIM2_DeInit$5 ==.
                                    114 ;	../SPL/src/stm8s_tim2.c: 59: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
                                    115 ; genPointerSet
      009E80 35 00 53 08      [ 1]  116 	mov	0x5308+0, #0x00
                           000010   117 	Sstm8s_tim2$TIM2_DeInit$6 ==.
                                    118 ;	../SPL/src/stm8s_tim2.c: 60: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
                                    119 ; genPointerSet
      009E84 35 00 53 09      [ 1]  120 	mov	0x5309+0, #0x00
                           000014   121 	Sstm8s_tim2$TIM2_DeInit$7 ==.
                                    122 ;	../SPL/src/stm8s_tim2.c: 64: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
                                    123 ; genPointerSet
      009E88 35 00 53 08      [ 1]  124 	mov	0x5308+0, #0x00
                           000018   125 	Sstm8s_tim2$TIM2_DeInit$8 ==.
                                    126 ;	../SPL/src/stm8s_tim2.c: 65: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
                                    127 ; genPointerSet
      009E8C 35 00 53 09      [ 1]  128 	mov	0x5309+0, #0x00
                           00001C   129 	Sstm8s_tim2$TIM2_DeInit$9 ==.
                                    130 ;	../SPL/src/stm8s_tim2.c: 66: TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
                                    131 ; genPointerSet
      009E90 35 00 53 05      [ 1]  132 	mov	0x5305+0, #0x00
                           000020   133 	Sstm8s_tim2$TIM2_DeInit$10 ==.
                                    134 ;	../SPL/src/stm8s_tim2.c: 67: TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
                                    135 ; genPointerSet
      009E94 35 00 53 06      [ 1]  136 	mov	0x5306+0, #0x00
                           000024   137 	Sstm8s_tim2$TIM2_DeInit$11 ==.
                                    138 ;	../SPL/src/stm8s_tim2.c: 68: TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
                                    139 ; genPointerSet
      009E98 35 00 53 07      [ 1]  140 	mov	0x5307+0, #0x00
                           000028   141 	Sstm8s_tim2$TIM2_DeInit$12 ==.
                                    142 ;	../SPL/src/stm8s_tim2.c: 69: TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
                                    143 ; genPointerSet
      009E9C 35 00 53 0A      [ 1]  144 	mov	0x530a+0, #0x00
                           00002C   145 	Sstm8s_tim2$TIM2_DeInit$13 ==.
                                    146 ;	../SPL/src/stm8s_tim2.c: 70: TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
                                    147 ; genPointerSet
      009EA0 35 00 53 0B      [ 1]  148 	mov	0x530b+0, #0x00
                           000030   149 	Sstm8s_tim2$TIM2_DeInit$14 ==.
                                    150 ;	../SPL/src/stm8s_tim2.c: 71: TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
                                    151 ; genPointerSet
      009EA4 35 00 53 0C      [ 1]  152 	mov	0x530c+0, #0x00
                           000034   153 	Sstm8s_tim2$TIM2_DeInit$15 ==.
                                    154 ;	../SPL/src/stm8s_tim2.c: 72: TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
                                    155 ; genPointerSet
      009EA8 35 FF 53 0D      [ 1]  156 	mov	0x530d+0, #0xff
                           000038   157 	Sstm8s_tim2$TIM2_DeInit$16 ==.
                                    158 ;	../SPL/src/stm8s_tim2.c: 73: TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
                                    159 ; genPointerSet
      009EAC 35 FF 53 0E      [ 1]  160 	mov	0x530e+0, #0xff
                           00003C   161 	Sstm8s_tim2$TIM2_DeInit$17 ==.
                                    162 ;	../SPL/src/stm8s_tim2.c: 74: TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
                                    163 ; genPointerSet
      009EB0 35 00 53 0F      [ 1]  164 	mov	0x530f+0, #0x00
                           000040   165 	Sstm8s_tim2$TIM2_DeInit$18 ==.
                                    166 ;	../SPL/src/stm8s_tim2.c: 75: TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
                                    167 ; genPointerSet
      009EB4 35 00 53 10      [ 1]  168 	mov	0x5310+0, #0x00
                           000044   169 	Sstm8s_tim2$TIM2_DeInit$19 ==.
                                    170 ;	../SPL/src/stm8s_tim2.c: 76: TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
                                    171 ; genPointerSet
      009EB8 35 00 53 11      [ 1]  172 	mov	0x5311+0, #0x00
                           000048   173 	Sstm8s_tim2$TIM2_DeInit$20 ==.
                                    174 ;	../SPL/src/stm8s_tim2.c: 77: TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
                                    175 ; genPointerSet
      009EBC 35 00 53 12      [ 1]  176 	mov	0x5312+0, #0x00
                           00004C   177 	Sstm8s_tim2$TIM2_DeInit$21 ==.
                                    178 ;	../SPL/src/stm8s_tim2.c: 78: TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
                                    179 ; genPointerSet
      009EC0 35 00 53 13      [ 1]  180 	mov	0x5313+0, #0x00
                           000050   181 	Sstm8s_tim2$TIM2_DeInit$22 ==.
                                    182 ;	../SPL/src/stm8s_tim2.c: 79: TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
                                    183 ; genPointerSet
      009EC4 35 00 53 14      [ 1]  184 	mov	0x5314+0, #0x00
                           000054   185 	Sstm8s_tim2$TIM2_DeInit$23 ==.
                                    186 ;	../SPL/src/stm8s_tim2.c: 80: TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
                                    187 ; genPointerSet
      009EC8 35 00 53 02      [ 1]  188 	mov	0x5302+0, #0x00
                                    189 ; genLabel
      009ECC                        190 00101$:
                           000058   191 	Sstm8s_tim2$TIM2_DeInit$24 ==.
                                    192 ;	../SPL/src/stm8s_tim2.c: 81: }
                                    193 ; genEndFunction
                           000058   194 	Sstm8s_tim2$TIM2_DeInit$25 ==.
                           000058   195 	XG$TIM2_DeInit$0$0 ==.
      009ECC 81               [ 4]  196 	ret
                           000059   197 	Sstm8s_tim2$TIM2_DeInit$26 ==.
                           000059   198 	Sstm8s_tim2$TIM2_TimeBaseInit$27 ==.
                                    199 ;	../SPL/src/stm8s_tim2.c: 89: void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
                                    200 ; genLabel
                                    201 ;	-----------------------------------------
                                    202 ;	 function TIM2_TimeBaseInit
                                    203 ;	-----------------------------------------
                                    204 ;	Register assignment is optimal.
                                    205 ;	Stack space usage: 0 bytes.
      009ECD                        206 _TIM2_TimeBaseInit:
                           000059   207 	Sstm8s_tim2$TIM2_TimeBaseInit$28 ==.
                           000059   208 	Sstm8s_tim2$TIM2_TimeBaseInit$29 ==.
                                    209 ;	../SPL/src/stm8s_tim2.c: 93: TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
                                    210 ; genPointerSet
      009ECD AE 53 0C         [ 2]  211 	ldw	x, #0x530c
      009ED0 7B 03            [ 1]  212 	ld	a, (0x03, sp)
      009ED2 F7               [ 1]  213 	ld	(x), a
                           00005F   214 	Sstm8s_tim2$TIM2_TimeBaseInit$30 ==.
                                    215 ;	../SPL/src/stm8s_tim2.c: 95: TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
                                    216 ; genRightShiftLiteral
      009ED3 7B 04            [ 1]  217 	ld	a, (0x04, sp)
      009ED5 5F               [ 1]  218 	clrw	x
                                    219 ; genCast
                                    220 ; genAssign
                                    221 ; genPointerSet
      009ED6 C7 53 0D         [ 1]  222 	ld	0x530d, a
                           000065   223 	Sstm8s_tim2$TIM2_TimeBaseInit$31 ==.
                                    224 ;	../SPL/src/stm8s_tim2.c: 96: TIM2->ARRL = (uint8_t)(TIM2_Period);
                                    225 ; genCast
                                    226 ; genAssign
      009ED9 7B 05            [ 1]  227 	ld	a, (0x05, sp)
                                    228 ; genPointerSet
      009EDB C7 53 0E         [ 1]  229 	ld	0x530e, a
                                    230 ; genLabel
      009EDE                        231 00101$:
                           00006A   232 	Sstm8s_tim2$TIM2_TimeBaseInit$32 ==.
                                    233 ;	../SPL/src/stm8s_tim2.c: 97: }
                                    234 ; genEndFunction
                           00006A   235 	Sstm8s_tim2$TIM2_TimeBaseInit$33 ==.
                           00006A   236 	XG$TIM2_TimeBaseInit$0$0 ==.
      009EDE 81               [ 4]  237 	ret
                           00006B   238 	Sstm8s_tim2$TIM2_TimeBaseInit$34 ==.
                           00006B   239 	Sstm8s_tim2$TIM2_OC1Init$35 ==.
                                    240 ;	../SPL/src/stm8s_tim2.c: 108: void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                                    241 ; genLabel
                                    242 ;	-----------------------------------------
                                    243 ;	 function TIM2_OC1Init
                                    244 ;	-----------------------------------------
                                    245 ;	Register assignment might be sub-optimal.
                                    246 ;	Stack space usage: 2 bytes.
      009EDF                        247 _TIM2_OC1Init:
                           00006B   248 	Sstm8s_tim2$TIM2_OC1Init$36 ==.
      009EDF 89               [ 2]  249 	pushw	x
                           00006C   250 	Sstm8s_tim2$TIM2_OC1Init$37 ==.
                           00006C   251 	Sstm8s_tim2$TIM2_OC1Init$38 ==.
                                    252 ;	../SPL/src/stm8s_tim2.c: 119: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
                                    253 ; genPointerGet
      009EE0 C6 53 08         [ 1]  254 	ld	a, 0x5308
                                    255 ; genAnd
      009EE3 A4 FC            [ 1]  256 	and	a, #0xfc
                                    257 ; genPointerSet
      009EE5 C7 53 08         [ 1]  258 	ld	0x5308, a
                           000074   259 	Sstm8s_tim2$TIM2_OC1Init$39 ==.
                                    260 ;	../SPL/src/stm8s_tim2.c: 121: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
                                    261 ; genPointerGet
      009EE8 C6 53 08         [ 1]  262 	ld	a, 0x5308
      009EEB 6B 01            [ 1]  263 	ld	(0x01, sp), a
                                    264 ; genAnd
      009EED 7B 06            [ 1]  265 	ld	a, (0x06, sp)
      009EEF A4 01            [ 1]  266 	and	a, #0x01
      009EF1 6B 02            [ 1]  267 	ld	(0x02, sp), a
                           00007F   268 	Sstm8s_tim2$TIM2_OC1Init$40 ==.
                                    269 ;	../SPL/src/stm8s_tim2.c: 122: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
                                    270 ; genAnd
      009EF3 7B 09            [ 1]  271 	ld	a, (0x09, sp)
      009EF5 A4 02            [ 1]  272 	and	a, #0x02
                                    273 ; genOr
      009EF7 1A 02            [ 1]  274 	or	a, (0x02, sp)
                                    275 ; genOr
      009EF9 1A 01            [ 1]  276 	or	a, (0x01, sp)
                                    277 ; genPointerSet
      009EFB C7 53 08         [ 1]  278 	ld	0x5308, a
                           00008A   279 	Sstm8s_tim2$TIM2_OC1Init$41 ==.
                                    280 ;	../SPL/src/stm8s_tim2.c: 125: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
                                    281 ; genPointerGet
      009EFE C6 53 05         [ 1]  282 	ld	a, 0x5305
                                    283 ; genAnd
      009F01 A4 8F            [ 1]  284 	and	a, #0x8f
                           00008F   285 	Sstm8s_tim2$TIM2_OC1Init$42 ==.
                                    286 ;	../SPL/src/stm8s_tim2.c: 126: (uint8_t)TIM2_OCMode);
                                    287 ; genOr
      009F03 1A 05            [ 1]  288 	or	a, (0x05, sp)
                                    289 ; genPointerSet
      009F05 C7 53 05         [ 1]  290 	ld	0x5305, a
                           000094   291 	Sstm8s_tim2$TIM2_OC1Init$43 ==.
                                    292 ;	../SPL/src/stm8s_tim2.c: 129: TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
                                    293 ; genRightShiftLiteral
      009F08 7B 07            [ 1]  294 	ld	a, (0x07, sp)
      009F0A 5F               [ 1]  295 	clrw	x
                                    296 ; genCast
                                    297 ; genAssign
                                    298 ; genPointerSet
      009F0B C7 53 0F         [ 1]  299 	ld	0x530f, a
                           00009A   300 	Sstm8s_tim2$TIM2_OC1Init$44 ==.
                                    301 ;	../SPL/src/stm8s_tim2.c: 130: TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
                                    302 ; genCast
                                    303 ; genAssign
      009F0E 7B 08            [ 1]  304 	ld	a, (0x08, sp)
                                    305 ; genPointerSet
      009F10 C7 53 10         [ 1]  306 	ld	0x5310, a
                                    307 ; genLabel
      009F13                        308 00101$:
                           00009F   309 	Sstm8s_tim2$TIM2_OC1Init$45 ==.
                                    310 ;	../SPL/src/stm8s_tim2.c: 131: }
                                    311 ; genEndFunction
      009F13 85               [ 2]  312 	popw	x
                           0000A0   313 	Sstm8s_tim2$TIM2_OC1Init$46 ==.
                           0000A0   314 	Sstm8s_tim2$TIM2_OC1Init$47 ==.
                           0000A0   315 	XG$TIM2_OC1Init$0$0 ==.
      009F14 81               [ 4]  316 	ret
                           0000A1   317 	Sstm8s_tim2$TIM2_OC1Init$48 ==.
                           0000A1   318 	Sstm8s_tim2$TIM2_OC2Init$49 ==.
                                    319 ;	../SPL/src/stm8s_tim2.c: 142: void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                                    320 ; genLabel
                                    321 ;	-----------------------------------------
                                    322 ;	 function TIM2_OC2Init
                                    323 ;	-----------------------------------------
                                    324 ;	Register assignment might be sub-optimal.
                                    325 ;	Stack space usage: 2 bytes.
      009F15                        326 _TIM2_OC2Init:
                           0000A1   327 	Sstm8s_tim2$TIM2_OC2Init$50 ==.
      009F15 89               [ 2]  328 	pushw	x
                           0000A2   329 	Sstm8s_tim2$TIM2_OC2Init$51 ==.
                           0000A2   330 	Sstm8s_tim2$TIM2_OC2Init$52 ==.
                                    331 ;	../SPL/src/stm8s_tim2.c: 154: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
                                    332 ; genPointerGet
      009F16 C6 53 08         [ 1]  333 	ld	a, 0x5308
                                    334 ; genAnd
      009F19 A4 CF            [ 1]  335 	and	a, #0xcf
                                    336 ; genPointerSet
      009F1B C7 53 08         [ 1]  337 	ld	0x5308, a
                           0000AA   338 	Sstm8s_tim2$TIM2_OC2Init$53 ==.
                                    339 ;	../SPL/src/stm8s_tim2.c: 156: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
                                    340 ; genPointerGet
      009F1E C6 53 08         [ 1]  341 	ld	a, 0x5308
      009F21 6B 01            [ 1]  342 	ld	(0x01, sp), a
                                    343 ; genAnd
      009F23 7B 06            [ 1]  344 	ld	a, (0x06, sp)
      009F25 A4 10            [ 1]  345 	and	a, #0x10
      009F27 6B 02            [ 1]  346 	ld	(0x02, sp), a
                           0000B5   347 	Sstm8s_tim2$TIM2_OC2Init$54 ==.
                                    348 ;	../SPL/src/stm8s_tim2.c: 157: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
                                    349 ; genAnd
      009F29 7B 09            [ 1]  350 	ld	a, (0x09, sp)
      009F2B A4 20            [ 1]  351 	and	a, #0x20
                                    352 ; genOr
      009F2D 1A 02            [ 1]  353 	or	a, (0x02, sp)
                                    354 ; genOr
      009F2F 1A 01            [ 1]  355 	or	a, (0x01, sp)
                                    356 ; genPointerSet
      009F31 C7 53 08         [ 1]  357 	ld	0x5308, a
                           0000C0   358 	Sstm8s_tim2$TIM2_OC2Init$55 ==.
                                    359 ;	../SPL/src/stm8s_tim2.c: 161: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
                                    360 ; genPointerGet
      009F34 C6 53 06         [ 1]  361 	ld	a, 0x5306
                                    362 ; genAnd
      009F37 A4 8F            [ 1]  363 	and	a, #0x8f
                           0000C5   364 	Sstm8s_tim2$TIM2_OC2Init$56 ==.
                                    365 ;	../SPL/src/stm8s_tim2.c: 162: (uint8_t)TIM2_OCMode);
                                    366 ; genOr
      009F39 1A 05            [ 1]  367 	or	a, (0x05, sp)
                                    368 ; genPointerSet
      009F3B C7 53 06         [ 1]  369 	ld	0x5306, a
                           0000CA   370 	Sstm8s_tim2$TIM2_OC2Init$57 ==.
                                    371 ;	../SPL/src/stm8s_tim2.c: 166: TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
                                    372 ; genRightShiftLiteral
      009F3E 7B 07            [ 1]  373 	ld	a, (0x07, sp)
      009F40 5F               [ 1]  374 	clrw	x
                                    375 ; genCast
                                    376 ; genAssign
                                    377 ; genPointerSet
      009F41 C7 53 11         [ 1]  378 	ld	0x5311, a
                           0000D0   379 	Sstm8s_tim2$TIM2_OC2Init$58 ==.
                                    380 ;	../SPL/src/stm8s_tim2.c: 167: TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
                                    381 ; genCast
                                    382 ; genAssign
      009F44 7B 08            [ 1]  383 	ld	a, (0x08, sp)
                                    384 ; genPointerSet
      009F46 C7 53 12         [ 1]  385 	ld	0x5312, a
                                    386 ; genLabel
      009F49                        387 00101$:
                           0000D5   388 	Sstm8s_tim2$TIM2_OC2Init$59 ==.
                                    389 ;	../SPL/src/stm8s_tim2.c: 168: }
                                    390 ; genEndFunction
      009F49 85               [ 2]  391 	popw	x
                           0000D6   392 	Sstm8s_tim2$TIM2_OC2Init$60 ==.
                           0000D6   393 	Sstm8s_tim2$TIM2_OC2Init$61 ==.
                           0000D6   394 	XG$TIM2_OC2Init$0$0 ==.
      009F4A 81               [ 4]  395 	ret
                           0000D7   396 	Sstm8s_tim2$TIM2_OC2Init$62 ==.
                           0000D7   397 	Sstm8s_tim2$TIM2_OC3Init$63 ==.
                                    398 ;	../SPL/src/stm8s_tim2.c: 179: void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                                    399 ; genLabel
                                    400 ;	-----------------------------------------
                                    401 ;	 function TIM2_OC3Init
                                    402 ;	-----------------------------------------
                                    403 ;	Register assignment might be sub-optimal.
                                    404 ;	Stack space usage: 2 bytes.
      009F4B                        405 _TIM2_OC3Init:
                           0000D7   406 	Sstm8s_tim2$TIM2_OC3Init$64 ==.
      009F4B 89               [ 2]  407 	pushw	x
                           0000D8   408 	Sstm8s_tim2$TIM2_OC3Init$65 ==.
                           0000D8   409 	Sstm8s_tim2$TIM2_OC3Init$66 ==.
                                    410 ;	../SPL/src/stm8s_tim2.c: 189: TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
                                    411 ; genPointerGet
      009F4C C6 53 09         [ 1]  412 	ld	a, 0x5309
                                    413 ; genAnd
      009F4F A4 FC            [ 1]  414 	and	a, #0xfc
                                    415 ; genPointerSet
      009F51 C7 53 09         [ 1]  416 	ld	0x5309, a
                           0000E0   417 	Sstm8s_tim2$TIM2_OC3Init$67 ==.
                                    418 ;	../SPL/src/stm8s_tim2.c: 191: TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
                                    419 ; genPointerGet
      009F54 C6 53 09         [ 1]  420 	ld	a, 0x5309
      009F57 6B 01            [ 1]  421 	ld	(0x01, sp), a
                                    422 ; genAnd
      009F59 7B 06            [ 1]  423 	ld	a, (0x06, sp)
      009F5B A4 01            [ 1]  424 	and	a, #0x01
      009F5D 6B 02            [ 1]  425 	ld	(0x02, sp), a
                           0000EB   426 	Sstm8s_tim2$TIM2_OC3Init$68 ==.
                                    427 ;	../SPL/src/stm8s_tim2.c: 192: (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
                                    428 ; genAnd
      009F5F 7B 09            [ 1]  429 	ld	a, (0x09, sp)
      009F61 A4 02            [ 1]  430 	and	a, #0x02
                                    431 ; genOr
      009F63 1A 02            [ 1]  432 	or	a, (0x02, sp)
                                    433 ; genOr
      009F65 1A 01            [ 1]  434 	or	a, (0x01, sp)
                                    435 ; genPointerSet
      009F67 C7 53 09         [ 1]  436 	ld	0x5309, a
                           0000F6   437 	Sstm8s_tim2$TIM2_OC3Init$69 ==.
                                    438 ;	../SPL/src/stm8s_tim2.c: 195: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
                                    439 ; genPointerGet
      009F6A C6 53 07         [ 1]  440 	ld	a, 0x5307
                                    441 ; genAnd
      009F6D A4 8F            [ 1]  442 	and	a, #0x8f
                           0000FB   443 	Sstm8s_tim2$TIM2_OC3Init$70 ==.
                                    444 ;	../SPL/src/stm8s_tim2.c: 196: (uint8_t)TIM2_OCMode);
                                    445 ; genOr
      009F6F 1A 05            [ 1]  446 	or	a, (0x05, sp)
                                    447 ; genPointerSet
      009F71 C7 53 07         [ 1]  448 	ld	0x5307, a
                           000100   449 	Sstm8s_tim2$TIM2_OC3Init$71 ==.
                                    450 ;	../SPL/src/stm8s_tim2.c: 199: TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
                                    451 ; genRightShiftLiteral
      009F74 7B 07            [ 1]  452 	ld	a, (0x07, sp)
      009F76 5F               [ 1]  453 	clrw	x
                                    454 ; genCast
                                    455 ; genAssign
                                    456 ; genPointerSet
      009F77 C7 53 13         [ 1]  457 	ld	0x5313, a
                           000106   458 	Sstm8s_tim2$TIM2_OC3Init$72 ==.
                                    459 ;	../SPL/src/stm8s_tim2.c: 200: TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
                                    460 ; genCast
                                    461 ; genAssign
      009F7A 7B 08            [ 1]  462 	ld	a, (0x08, sp)
                                    463 ; genPointerSet
      009F7C C7 53 14         [ 1]  464 	ld	0x5314, a
                                    465 ; genLabel
      009F7F                        466 00101$:
                           00010B   467 	Sstm8s_tim2$TIM2_OC3Init$73 ==.
                                    468 ;	../SPL/src/stm8s_tim2.c: 201: }
                                    469 ; genEndFunction
      009F7F 85               [ 2]  470 	popw	x
                           00010C   471 	Sstm8s_tim2$TIM2_OC3Init$74 ==.
                           00010C   472 	Sstm8s_tim2$TIM2_OC3Init$75 ==.
                           00010C   473 	XG$TIM2_OC3Init$0$0 ==.
      009F80 81               [ 4]  474 	ret
                           00010D   475 	Sstm8s_tim2$TIM2_OC3Init$76 ==.
                           00010D   476 	Sstm8s_tim2$TIM2_ICInit$77 ==.
                                    477 ;	../SPL/src/stm8s_tim2.c: 212: void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
                                    478 ; genLabel
                                    479 ;	-----------------------------------------
                                    480 ;	 function TIM2_ICInit
                                    481 ;	-----------------------------------------
                                    482 ;	Register assignment is optimal.
                                    483 ;	Stack space usage: 0 bytes.
      009F81                        484 _TIM2_ICInit:
                           00010D   485 	Sstm8s_tim2$TIM2_ICInit$78 ==.
                           00010D   486 	Sstm8s_tim2$TIM2_ICInit$79 ==.
                                    487 ;	../SPL/src/stm8s_tim2.c: 225: if (TIM2_Channel == TIM2_CHANNEL_1)
                                    488 ; genIfx
      009F81 0D 03            [ 1]  489 	tnz	(0x03, sp)
      009F83 27 03            [ 1]  490 	jreq	00119$
      009F85 CC 9F A0         [ 2]  491 	jp	00105$
      009F88                        492 00119$:
                           000114   493 	Sstm8s_tim2$TIM2_ICInit$80 ==.
                           000114   494 	Sstm8s_tim2$TIM2_ICInit$81 ==.
                                    495 ;	../SPL/src/stm8s_tim2.c: 228: TI1_Config((uint8_t)TIM2_ICPolarity,
                                    496 ; genIPush
      009F88 7B 07            [ 1]  497 	ld	a, (0x07, sp)
      009F8A 88               [ 1]  498 	push	a
                           000117   499 	Sstm8s_tim2$TIM2_ICInit$82 ==.
                                    500 ; genIPush
      009F8B 7B 06            [ 1]  501 	ld	a, (0x06, sp)
      009F8D 88               [ 1]  502 	push	a
                           00011A   503 	Sstm8s_tim2$TIM2_ICInit$83 ==.
                                    504 ; genIPush
      009F8E 7B 06            [ 1]  505 	ld	a, (0x06, sp)
      009F90 88               [ 1]  506 	push	a
                           00011D   507 	Sstm8s_tim2$TIM2_ICInit$84 ==.
                                    508 ; genCall
      009F91 CD A3 91         [ 4]  509 	call	_TI1_Config
      009F94 5B 03            [ 2]  510 	addw	sp, #3
                           000122   511 	Sstm8s_tim2$TIM2_ICInit$85 ==.
                           000122   512 	Sstm8s_tim2$TIM2_ICInit$86 ==.
                                    513 ;	../SPL/src/stm8s_tim2.c: 233: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
                                    514 ; genIPush
      009F96 7B 06            [ 1]  515 	ld	a, (0x06, sp)
      009F98 88               [ 1]  516 	push	a
                           000125   517 	Sstm8s_tim2$TIM2_ICInit$87 ==.
                                    518 ; genCall
      009F99 CD A2 A9         [ 4]  519 	call	_TIM2_SetIC1Prescaler
      009F9C 84               [ 1]  520 	pop	a
                           000129   521 	Sstm8s_tim2$TIM2_ICInit$88 ==.
                           000129   522 	Sstm8s_tim2$TIM2_ICInit$89 ==.
                                    523 ; genGoto
      009F9D CC 9F D8         [ 2]  524 	jp	00107$
                                    525 ; genLabel
      009FA0                        526 00105$:
                           00012C   527 	Sstm8s_tim2$TIM2_ICInit$90 ==.
                                    528 ;	../SPL/src/stm8s_tim2.c: 235: else if (TIM2_Channel == TIM2_CHANNEL_2)
                                    529 ; genCmpEQorNE
      009FA0 7B 03            [ 1]  530 	ld	a, (0x03, sp)
      009FA2 4A               [ 1]  531 	dec	a
      009FA3 26 03            [ 1]  532 	jrne	00121$
      009FA5 CC 9F AB         [ 2]  533 	jp	00122$
      009FA8                        534 00121$:
      009FA8 CC 9F C3         [ 2]  535 	jp	00102$
      009FAB                        536 00122$:
                           000137   537 	Sstm8s_tim2$TIM2_ICInit$91 ==.
                                    538 ; skipping generated iCode
                           000137   539 	Sstm8s_tim2$TIM2_ICInit$92 ==.
                           000137   540 	Sstm8s_tim2$TIM2_ICInit$93 ==.
                                    541 ;	../SPL/src/stm8s_tim2.c: 238: TI2_Config((uint8_t)TIM2_ICPolarity,
                                    542 ; genIPush
      009FAB 7B 07            [ 1]  543 	ld	a, (0x07, sp)
      009FAD 88               [ 1]  544 	push	a
                           00013A   545 	Sstm8s_tim2$TIM2_ICInit$94 ==.
                                    546 ; genIPush
      009FAE 7B 06            [ 1]  547 	ld	a, (0x06, sp)
      009FB0 88               [ 1]  548 	push	a
                           00013D   549 	Sstm8s_tim2$TIM2_ICInit$95 ==.
                                    550 ; genIPush
      009FB1 7B 06            [ 1]  551 	ld	a, (0x06, sp)
      009FB3 88               [ 1]  552 	push	a
                           000140   553 	Sstm8s_tim2$TIM2_ICInit$96 ==.
                                    554 ; genCall
      009FB4 CD A3 CE         [ 4]  555 	call	_TI2_Config
      009FB7 5B 03            [ 2]  556 	addw	sp, #3
                           000145   557 	Sstm8s_tim2$TIM2_ICInit$97 ==.
                           000145   558 	Sstm8s_tim2$TIM2_ICInit$98 ==.
                                    559 ;	../SPL/src/stm8s_tim2.c: 243: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
                                    560 ; genIPush
      009FB9 7B 06            [ 1]  561 	ld	a, (0x06, sp)
      009FBB 88               [ 1]  562 	push	a
                           000148   563 	Sstm8s_tim2$TIM2_ICInit$99 ==.
                                    564 ; genCall
      009FBC CD A2 B4         [ 4]  565 	call	_TIM2_SetIC2Prescaler
      009FBF 84               [ 1]  566 	pop	a
                           00014C   567 	Sstm8s_tim2$TIM2_ICInit$100 ==.
                           00014C   568 	Sstm8s_tim2$TIM2_ICInit$101 ==.
                                    569 ; genGoto
      009FC0 CC 9F D8         [ 2]  570 	jp	00107$
                                    571 ; genLabel
      009FC3                        572 00102$:
                           00014F   573 	Sstm8s_tim2$TIM2_ICInit$102 ==.
                           00014F   574 	Sstm8s_tim2$TIM2_ICInit$103 ==.
                                    575 ;	../SPL/src/stm8s_tim2.c: 248: TI3_Config((uint8_t)TIM2_ICPolarity,
                                    576 ; genIPush
      009FC3 7B 07            [ 1]  577 	ld	a, (0x07, sp)
      009FC5 88               [ 1]  578 	push	a
                           000152   579 	Sstm8s_tim2$TIM2_ICInit$104 ==.
                                    580 ; genIPush
      009FC6 7B 06            [ 1]  581 	ld	a, (0x06, sp)
      009FC8 88               [ 1]  582 	push	a
                           000155   583 	Sstm8s_tim2$TIM2_ICInit$105 ==.
                                    584 ; genIPush
      009FC9 7B 06            [ 1]  585 	ld	a, (0x06, sp)
      009FCB 88               [ 1]  586 	push	a
                           000158   587 	Sstm8s_tim2$TIM2_ICInit$106 ==.
                                    588 ; genCall
      009FCC CD A4 0B         [ 4]  589 	call	_TI3_Config
      009FCF 5B 03            [ 2]  590 	addw	sp, #3
                           00015D   591 	Sstm8s_tim2$TIM2_ICInit$107 ==.
                           00015D   592 	Sstm8s_tim2$TIM2_ICInit$108 ==.
                                    593 ;	../SPL/src/stm8s_tim2.c: 253: TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
                                    594 ; genIPush
      009FD1 7B 06            [ 1]  595 	ld	a, (0x06, sp)
      009FD3 88               [ 1]  596 	push	a
                           000160   597 	Sstm8s_tim2$TIM2_ICInit$109 ==.
                                    598 ; genCall
      009FD4 CD A2 BF         [ 4]  599 	call	_TIM2_SetIC3Prescaler
      009FD7 84               [ 1]  600 	pop	a
                           000164   601 	Sstm8s_tim2$TIM2_ICInit$110 ==.
                           000164   602 	Sstm8s_tim2$TIM2_ICInit$111 ==.
                                    603 ; genLabel
      009FD8                        604 00107$:
                           000164   605 	Sstm8s_tim2$TIM2_ICInit$112 ==.
                                    606 ;	../SPL/src/stm8s_tim2.c: 255: }
                                    607 ; genEndFunction
                           000164   608 	Sstm8s_tim2$TIM2_ICInit$113 ==.
                           000164   609 	XG$TIM2_ICInit$0$0 ==.
      009FD8 81               [ 4]  610 	ret
                           000165   611 	Sstm8s_tim2$TIM2_ICInit$114 ==.
                           000165   612 	Sstm8s_tim2$TIM2_PWMIConfig$115 ==.
                                    613 ;	../SPL/src/stm8s_tim2.c: 266: void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
                                    614 ; genLabel
                                    615 ;	-----------------------------------------
                                    616 ;	 function TIM2_PWMIConfig
                                    617 ;	-----------------------------------------
                                    618 ;	Register assignment is optimal.
                                    619 ;	Stack space usage: 2 bytes.
      009FD9                        620 _TIM2_PWMIConfig:
                           000165   621 	Sstm8s_tim2$TIM2_PWMIConfig$116 ==.
      009FD9 89               [ 2]  622 	pushw	x
                           000166   623 	Sstm8s_tim2$TIM2_PWMIConfig$117 ==.
                           000166   624 	Sstm8s_tim2$TIM2_PWMIConfig$118 ==.
                                    625 ;	../SPL/src/stm8s_tim2.c: 282: if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
                                    626 ; genCmpEQorNE
      009FDA 7B 06            [ 1]  627 	ld	a, (0x06, sp)
      009FDC A1 44            [ 1]  628 	cp	a, #0x44
      009FDE 26 03            [ 1]  629 	jrne	00128$
      009FE0 CC 9F EA         [ 2]  630 	jp	00102$
      009FE3                        631 00128$:
                           00016F   632 	Sstm8s_tim2$TIM2_PWMIConfig$119 ==.
                                    633 ; skipping generated iCode
                           00016F   634 	Sstm8s_tim2$TIM2_PWMIConfig$120 ==.
                           00016F   635 	Sstm8s_tim2$TIM2_PWMIConfig$121 ==.
                                    636 ;	../SPL/src/stm8s_tim2.c: 284: icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
                                    637 ; genAssign
      009FE3 A6 44            [ 1]  638 	ld	a, #0x44
      009FE5 6B 01            [ 1]  639 	ld	(0x01, sp), a
                           000173   640 	Sstm8s_tim2$TIM2_PWMIConfig$122 ==.
                                    641 ; genGoto
      009FE7 CC 9F EC         [ 2]  642 	jp	00103$
                                    643 ; genLabel
      009FEA                        644 00102$:
                           000176   645 	Sstm8s_tim2$TIM2_PWMIConfig$123 ==.
                           000176   646 	Sstm8s_tim2$TIM2_PWMIConfig$124 ==.
                                    647 ;	../SPL/src/stm8s_tim2.c: 288: icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
                                    648 ; genAssign
      009FEA 0F 01            [ 1]  649 	clr	(0x01, sp)
                           000178   650 	Sstm8s_tim2$TIM2_PWMIConfig$125 ==.
                                    651 ; genLabel
      009FEC                        652 00103$:
                           000178   653 	Sstm8s_tim2$TIM2_PWMIConfig$126 ==.
                                    654 ;	../SPL/src/stm8s_tim2.c: 292: if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
                                    655 ; genCmpEQorNE
      009FEC 7B 07            [ 1]  656 	ld	a, (0x07, sp)
      009FEE 4A               [ 1]  657 	dec	a
      009FEF 26 03            [ 1]  658 	jrne	00131$
      009FF1 CC 9F F7         [ 2]  659 	jp	00132$
      009FF4                        660 00131$:
      009FF4 CC 9F FE         [ 2]  661 	jp	00105$
      009FF7                        662 00132$:
                           000183   663 	Sstm8s_tim2$TIM2_PWMIConfig$127 ==.
                                    664 ; skipping generated iCode
                           000183   665 	Sstm8s_tim2$TIM2_PWMIConfig$128 ==.
                           000183   666 	Sstm8s_tim2$TIM2_PWMIConfig$129 ==.
                                    667 ;	../SPL/src/stm8s_tim2.c: 294: icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
                                    668 ; genAssign
      009FF7 A6 02            [ 1]  669 	ld	a, #0x02
      009FF9 6B 02            [ 1]  670 	ld	(0x02, sp), a
                           000187   671 	Sstm8s_tim2$TIM2_PWMIConfig$130 ==.
                                    672 ; genGoto
      009FFB CC A0 02         [ 2]  673 	jp	00106$
                                    674 ; genLabel
      009FFE                        675 00105$:
                           00018A   676 	Sstm8s_tim2$TIM2_PWMIConfig$131 ==.
                           00018A   677 	Sstm8s_tim2$TIM2_PWMIConfig$132 ==.
                                    678 ;	../SPL/src/stm8s_tim2.c: 298: icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
                                    679 ; genAssign
      009FFE A6 01            [ 1]  680 	ld	a, #0x01
      00A000 6B 02            [ 1]  681 	ld	(0x02, sp), a
                           00018E   682 	Sstm8s_tim2$TIM2_PWMIConfig$133 ==.
                                    683 ; genLabel
      00A002                        684 00106$:
                           00018E   685 	Sstm8s_tim2$TIM2_PWMIConfig$134 ==.
                                    686 ;	../SPL/src/stm8s_tim2.c: 301: if (TIM2_Channel == TIM2_CHANNEL_1)
                                    687 ; genIfx
      00A002 0D 05            [ 1]  688 	tnz	(0x05, sp)
      00A004 27 03            [ 1]  689 	jreq	00133$
      00A006 CC A0 36         [ 2]  690 	jp	00108$
      00A009                        691 00133$:
                           000195   692 	Sstm8s_tim2$TIM2_PWMIConfig$135 ==.
                           000195   693 	Sstm8s_tim2$TIM2_PWMIConfig$136 ==.
                                    694 ;	../SPL/src/stm8s_tim2.c: 304: TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
                                    695 ; genIPush
      00A009 7B 09            [ 1]  696 	ld	a, (0x09, sp)
      00A00B 88               [ 1]  697 	push	a
                           000198   698 	Sstm8s_tim2$TIM2_PWMIConfig$137 ==.
                                    699 ; genIPush
      00A00C 7B 08            [ 1]  700 	ld	a, (0x08, sp)
      00A00E 88               [ 1]  701 	push	a
                           00019B   702 	Sstm8s_tim2$TIM2_PWMIConfig$138 ==.
                                    703 ; genIPush
      00A00F 7B 08            [ 1]  704 	ld	a, (0x08, sp)
      00A011 88               [ 1]  705 	push	a
                           00019E   706 	Sstm8s_tim2$TIM2_PWMIConfig$139 ==.
                                    707 ; genCall
      00A012 CD A3 91         [ 4]  708 	call	_TI1_Config
      00A015 5B 03            [ 2]  709 	addw	sp, #3
                           0001A3   710 	Sstm8s_tim2$TIM2_PWMIConfig$140 ==.
                           0001A3   711 	Sstm8s_tim2$TIM2_PWMIConfig$141 ==.
                                    712 ;	../SPL/src/stm8s_tim2.c: 308: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
                                    713 ; genIPush
      00A017 7B 08            [ 1]  714 	ld	a, (0x08, sp)
      00A019 88               [ 1]  715 	push	a
                           0001A6   716 	Sstm8s_tim2$TIM2_PWMIConfig$142 ==.
                                    717 ; genCall
      00A01A CD A2 A9         [ 4]  718 	call	_TIM2_SetIC1Prescaler
      00A01D 84               [ 1]  719 	pop	a
                           0001AA   720 	Sstm8s_tim2$TIM2_PWMIConfig$143 ==.
                           0001AA   721 	Sstm8s_tim2$TIM2_PWMIConfig$144 ==.
                                    722 ;	../SPL/src/stm8s_tim2.c: 311: TI2_Config(icpolarity, icselection, TIM2_ICFilter);
                                    723 ; genIPush
      00A01E 7B 09            [ 1]  724 	ld	a, (0x09, sp)
      00A020 88               [ 1]  725 	push	a
                           0001AD   726 	Sstm8s_tim2$TIM2_PWMIConfig$145 ==.
                                    727 ; genIPush
      00A021 7B 03            [ 1]  728 	ld	a, (0x03, sp)
      00A023 88               [ 1]  729 	push	a
                           0001B0   730 	Sstm8s_tim2$TIM2_PWMIConfig$146 ==.
                                    731 ; genIPush
      00A024 7B 03            [ 1]  732 	ld	a, (0x03, sp)
      00A026 88               [ 1]  733 	push	a
                           0001B3   734 	Sstm8s_tim2$TIM2_PWMIConfig$147 ==.
                                    735 ; genCall
      00A027 CD A3 CE         [ 4]  736 	call	_TI2_Config
      00A02A 5B 03            [ 2]  737 	addw	sp, #3
                           0001B8   738 	Sstm8s_tim2$TIM2_PWMIConfig$148 ==.
                           0001B8   739 	Sstm8s_tim2$TIM2_PWMIConfig$149 ==.
                                    740 ;	../SPL/src/stm8s_tim2.c: 314: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
                                    741 ; genIPush
      00A02C 7B 08            [ 1]  742 	ld	a, (0x08, sp)
      00A02E 88               [ 1]  743 	push	a
                           0001BB   744 	Sstm8s_tim2$TIM2_PWMIConfig$150 ==.
                                    745 ; genCall
      00A02F CD A2 B4         [ 4]  746 	call	_TIM2_SetIC2Prescaler
      00A032 84               [ 1]  747 	pop	a
                           0001BF   748 	Sstm8s_tim2$TIM2_PWMIConfig$151 ==.
                           0001BF   749 	Sstm8s_tim2$TIM2_PWMIConfig$152 ==.
                                    750 ; genGoto
      00A033 CC A0 60         [ 2]  751 	jp	00110$
                                    752 ; genLabel
      00A036                        753 00108$:
                           0001C2   754 	Sstm8s_tim2$TIM2_PWMIConfig$153 ==.
                           0001C2   755 	Sstm8s_tim2$TIM2_PWMIConfig$154 ==.
                                    756 ;	../SPL/src/stm8s_tim2.c: 319: TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
                                    757 ; genIPush
      00A036 7B 09            [ 1]  758 	ld	a, (0x09, sp)
      00A038 88               [ 1]  759 	push	a
                           0001C5   760 	Sstm8s_tim2$TIM2_PWMIConfig$155 ==.
                                    761 ; genIPush
      00A039 7B 08            [ 1]  762 	ld	a, (0x08, sp)
      00A03B 88               [ 1]  763 	push	a
                           0001C8   764 	Sstm8s_tim2$TIM2_PWMIConfig$156 ==.
                                    765 ; genIPush
      00A03C 7B 08            [ 1]  766 	ld	a, (0x08, sp)
      00A03E 88               [ 1]  767 	push	a
                           0001CB   768 	Sstm8s_tim2$TIM2_PWMIConfig$157 ==.
                                    769 ; genCall
      00A03F CD A3 CE         [ 4]  770 	call	_TI2_Config
      00A042 5B 03            [ 2]  771 	addw	sp, #3
                           0001D0   772 	Sstm8s_tim2$TIM2_PWMIConfig$158 ==.
                           0001D0   773 	Sstm8s_tim2$TIM2_PWMIConfig$159 ==.
                                    774 ;	../SPL/src/stm8s_tim2.c: 323: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
                                    775 ; genIPush
      00A044 7B 08            [ 1]  776 	ld	a, (0x08, sp)
      00A046 88               [ 1]  777 	push	a
                           0001D3   778 	Sstm8s_tim2$TIM2_PWMIConfig$160 ==.
                                    779 ; genCall
      00A047 CD A2 B4         [ 4]  780 	call	_TIM2_SetIC2Prescaler
      00A04A 84               [ 1]  781 	pop	a
                           0001D7   782 	Sstm8s_tim2$TIM2_PWMIConfig$161 ==.
                           0001D7   783 	Sstm8s_tim2$TIM2_PWMIConfig$162 ==.
                                    784 ;	../SPL/src/stm8s_tim2.c: 326: TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
                                    785 ; genIPush
      00A04B 7B 09            [ 1]  786 	ld	a, (0x09, sp)
      00A04D 88               [ 1]  787 	push	a
                           0001DA   788 	Sstm8s_tim2$TIM2_PWMIConfig$163 ==.
                                    789 ; genIPush
      00A04E 7B 03            [ 1]  790 	ld	a, (0x03, sp)
      00A050 88               [ 1]  791 	push	a
                           0001DD   792 	Sstm8s_tim2$TIM2_PWMIConfig$164 ==.
                                    793 ; genIPush
      00A051 7B 03            [ 1]  794 	ld	a, (0x03, sp)
      00A053 88               [ 1]  795 	push	a
                           0001E0   796 	Sstm8s_tim2$TIM2_PWMIConfig$165 ==.
                                    797 ; genCall
      00A054 CD A3 91         [ 4]  798 	call	_TI1_Config
      00A057 5B 03            [ 2]  799 	addw	sp, #3
                           0001E5   800 	Sstm8s_tim2$TIM2_PWMIConfig$166 ==.
                           0001E5   801 	Sstm8s_tim2$TIM2_PWMIConfig$167 ==.
                                    802 ;	../SPL/src/stm8s_tim2.c: 329: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
                                    803 ; genIPush
      00A059 7B 08            [ 1]  804 	ld	a, (0x08, sp)
      00A05B 88               [ 1]  805 	push	a
                           0001E8   806 	Sstm8s_tim2$TIM2_PWMIConfig$168 ==.
                                    807 ; genCall
      00A05C CD A2 A9         [ 4]  808 	call	_TIM2_SetIC1Prescaler
      00A05F 84               [ 1]  809 	pop	a
                           0001EC   810 	Sstm8s_tim2$TIM2_PWMIConfig$169 ==.
                           0001EC   811 	Sstm8s_tim2$TIM2_PWMIConfig$170 ==.
                                    812 ; genLabel
      00A060                        813 00110$:
                           0001EC   814 	Sstm8s_tim2$TIM2_PWMIConfig$171 ==.
                                    815 ;	../SPL/src/stm8s_tim2.c: 331: }
                                    816 ; genEndFunction
      00A060 85               [ 2]  817 	popw	x
                           0001ED   818 	Sstm8s_tim2$TIM2_PWMIConfig$172 ==.
                           0001ED   819 	Sstm8s_tim2$TIM2_PWMIConfig$173 ==.
                           0001ED   820 	XG$TIM2_PWMIConfig$0$0 ==.
      00A061 81               [ 4]  821 	ret
                           0001EE   822 	Sstm8s_tim2$TIM2_PWMIConfig$174 ==.
                           0001EE   823 	Sstm8s_tim2$TIM2_Cmd$175 ==.
                                    824 ;	../SPL/src/stm8s_tim2.c: 339: void TIM2_Cmd(FunctionalState NewState)
                                    825 ; genLabel
                                    826 ;	-----------------------------------------
                                    827 ;	 function TIM2_Cmd
                                    828 ;	-----------------------------------------
                                    829 ;	Register assignment is optimal.
                                    830 ;	Stack space usage: 0 bytes.
      00A062                        831 _TIM2_Cmd:
                           0001EE   832 	Sstm8s_tim2$TIM2_Cmd$176 ==.
                           0001EE   833 	Sstm8s_tim2$TIM2_Cmd$177 ==.
                                    834 ;	../SPL/src/stm8s_tim2.c: 347: TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
                                    835 ; genPointerGet
      00A062 C6 53 00         [ 1]  836 	ld	a, 0x5300
                           0001F1   837 	Sstm8s_tim2$TIM2_Cmd$178 ==.
                                    838 ;	../SPL/src/stm8s_tim2.c: 345: if (NewState != DISABLE)
                                    839 ; genIfx
      00A065 0D 03            [ 1]  840 	tnz	(0x03, sp)
      00A067 26 03            [ 1]  841 	jrne	00111$
      00A069 CC A0 74         [ 2]  842 	jp	00102$
      00A06C                        843 00111$:
                           0001F8   844 	Sstm8s_tim2$TIM2_Cmd$179 ==.
                           0001F8   845 	Sstm8s_tim2$TIM2_Cmd$180 ==.
                                    846 ;	../SPL/src/stm8s_tim2.c: 347: TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
                                    847 ; genOr
      00A06C AA 01            [ 1]  848 	or	a, #0x01
                                    849 ; genPointerSet
      00A06E C7 53 00         [ 1]  850 	ld	0x5300, a
                           0001FD   851 	Sstm8s_tim2$TIM2_Cmd$181 ==.
                                    852 ; genGoto
      00A071 CC A0 79         [ 2]  853 	jp	00104$
                                    854 ; genLabel
      00A074                        855 00102$:
                           000200   856 	Sstm8s_tim2$TIM2_Cmd$182 ==.
                           000200   857 	Sstm8s_tim2$TIM2_Cmd$183 ==.
                                    858 ;	../SPL/src/stm8s_tim2.c: 351: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
                                    859 ; genAnd
      00A074 A4 FE            [ 1]  860 	and	a, #0xfe
                                    861 ; genPointerSet
      00A076 C7 53 00         [ 1]  862 	ld	0x5300, a
                           000205   863 	Sstm8s_tim2$TIM2_Cmd$184 ==.
                                    864 ; genLabel
      00A079                        865 00104$:
                           000205   866 	Sstm8s_tim2$TIM2_Cmd$185 ==.
                                    867 ;	../SPL/src/stm8s_tim2.c: 353: }
                                    868 ; genEndFunction
                           000205   869 	Sstm8s_tim2$TIM2_Cmd$186 ==.
                           000205   870 	XG$TIM2_Cmd$0$0 ==.
      00A079 81               [ 4]  871 	ret
                           000206   872 	Sstm8s_tim2$TIM2_Cmd$187 ==.
                           000206   873 	Sstm8s_tim2$TIM2_ITConfig$188 ==.
                                    874 ;	../SPL/src/stm8s_tim2.c: 368: void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
                                    875 ; genLabel
                                    876 ;	-----------------------------------------
                                    877 ;	 function TIM2_ITConfig
                                    878 ;	-----------------------------------------
                                    879 ;	Register assignment is optimal.
                                    880 ;	Stack space usage: 1 bytes.
      00A07A                        881 _TIM2_ITConfig:
                           000206   882 	Sstm8s_tim2$TIM2_ITConfig$189 ==.
      00A07A 88               [ 1]  883 	push	a
                           000207   884 	Sstm8s_tim2$TIM2_ITConfig$190 ==.
                           000207   885 	Sstm8s_tim2$TIM2_ITConfig$191 ==.
                                    886 ;	../SPL/src/stm8s_tim2.c: 377: TIM2->IER |= (uint8_t)TIM2_IT;
                                    887 ; genPointerGet
      00A07B C6 53 01         [ 1]  888 	ld	a, 0x5301
                           00020A   889 	Sstm8s_tim2$TIM2_ITConfig$192 ==.
                                    890 ;	../SPL/src/stm8s_tim2.c: 374: if (NewState != DISABLE)
                                    891 ; genIfx
      00A07E 0D 05            [ 1]  892 	tnz	(0x05, sp)
      00A080 26 03            [ 1]  893 	jrne	00111$
      00A082 CC A0 8D         [ 2]  894 	jp	00102$
      00A085                        895 00111$:
                           000211   896 	Sstm8s_tim2$TIM2_ITConfig$193 ==.
                           000211   897 	Sstm8s_tim2$TIM2_ITConfig$194 ==.
                                    898 ;	../SPL/src/stm8s_tim2.c: 377: TIM2->IER |= (uint8_t)TIM2_IT;
                                    899 ; genOr
      00A085 1A 04            [ 1]  900 	or	a, (0x04, sp)
                                    901 ; genPointerSet
      00A087 C7 53 01         [ 1]  902 	ld	0x5301, a
                           000216   903 	Sstm8s_tim2$TIM2_ITConfig$195 ==.
                                    904 ; genGoto
      00A08A CC A0 99         [ 2]  905 	jp	00104$
                                    906 ; genLabel
      00A08D                        907 00102$:
                           000219   908 	Sstm8s_tim2$TIM2_ITConfig$196 ==.
                           000219   909 	Sstm8s_tim2$TIM2_ITConfig$197 ==.
                                    910 ;	../SPL/src/stm8s_tim2.c: 382: TIM2->IER &= (uint8_t)(~TIM2_IT);
                                    911 ; genCpl
      00A08D 88               [ 1]  912 	push	a
                           00021A   913 	Sstm8s_tim2$TIM2_ITConfig$198 ==.
      00A08E 7B 05            [ 1]  914 	ld	a, (0x05, sp)
      00A090 43               [ 1]  915 	cpl	a
      00A091 6B 02            [ 1]  916 	ld	(0x02, sp), a
      00A093 84               [ 1]  917 	pop	a
                           000220   918 	Sstm8s_tim2$TIM2_ITConfig$199 ==.
                                    919 ; genAnd
      00A094 14 01            [ 1]  920 	and	a, (0x01, sp)
                                    921 ; genPointerSet
      00A096 C7 53 01         [ 1]  922 	ld	0x5301, a
                           000225   923 	Sstm8s_tim2$TIM2_ITConfig$200 ==.
                                    924 ; genLabel
      00A099                        925 00104$:
                           000225   926 	Sstm8s_tim2$TIM2_ITConfig$201 ==.
                                    927 ;	../SPL/src/stm8s_tim2.c: 384: }
                                    928 ; genEndFunction
      00A099 84               [ 1]  929 	pop	a
                           000226   930 	Sstm8s_tim2$TIM2_ITConfig$202 ==.
                           000226   931 	Sstm8s_tim2$TIM2_ITConfig$203 ==.
                           000226   932 	XG$TIM2_ITConfig$0$0 ==.
      00A09A 81               [ 4]  933 	ret
                           000227   934 	Sstm8s_tim2$TIM2_ITConfig$204 ==.
                           000227   935 	Sstm8s_tim2$TIM2_UpdateDisableConfig$205 ==.
                                    936 ;	../SPL/src/stm8s_tim2.c: 392: void TIM2_UpdateDisableConfig(FunctionalState NewState)
                                    937 ; genLabel
                                    938 ;	-----------------------------------------
                                    939 ;	 function TIM2_UpdateDisableConfig
                                    940 ;	-----------------------------------------
                                    941 ;	Register assignment is optimal.
                                    942 ;	Stack space usage: 0 bytes.
      00A09B                        943 _TIM2_UpdateDisableConfig:
                           000227   944 	Sstm8s_tim2$TIM2_UpdateDisableConfig$206 ==.
                           000227   945 	Sstm8s_tim2$TIM2_UpdateDisableConfig$207 ==.
                                    946 ;	../SPL/src/stm8s_tim2.c: 400: TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
                                    947 ; genPointerGet
      00A09B C6 53 00         [ 1]  948 	ld	a, 0x5300
                           00022A   949 	Sstm8s_tim2$TIM2_UpdateDisableConfig$208 ==.
                                    950 ;	../SPL/src/stm8s_tim2.c: 398: if (NewState != DISABLE)
                                    951 ; genIfx
      00A09E 0D 03            [ 1]  952 	tnz	(0x03, sp)
      00A0A0 26 03            [ 1]  953 	jrne	00111$
      00A0A2 CC A0 AD         [ 2]  954 	jp	00102$
      00A0A5                        955 00111$:
                           000231   956 	Sstm8s_tim2$TIM2_UpdateDisableConfig$209 ==.
                           000231   957 	Sstm8s_tim2$TIM2_UpdateDisableConfig$210 ==.
                                    958 ;	../SPL/src/stm8s_tim2.c: 400: TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
                                    959 ; genOr
      00A0A5 AA 02            [ 1]  960 	or	a, #0x02
                                    961 ; genPointerSet
      00A0A7 C7 53 00         [ 1]  962 	ld	0x5300, a
                           000236   963 	Sstm8s_tim2$TIM2_UpdateDisableConfig$211 ==.
                                    964 ; genGoto
      00A0AA CC A0 B2         [ 2]  965 	jp	00104$
                                    966 ; genLabel
      00A0AD                        967 00102$:
                           000239   968 	Sstm8s_tim2$TIM2_UpdateDisableConfig$212 ==.
                           000239   969 	Sstm8s_tim2$TIM2_UpdateDisableConfig$213 ==.
                                    970 ;	../SPL/src/stm8s_tim2.c: 404: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
                                    971 ; genAnd
      00A0AD A4 FD            [ 1]  972 	and	a, #0xfd
                                    973 ; genPointerSet
      00A0AF C7 53 00         [ 1]  974 	ld	0x5300, a
                           00023E   975 	Sstm8s_tim2$TIM2_UpdateDisableConfig$214 ==.
                                    976 ; genLabel
      00A0B2                        977 00104$:
                           00023E   978 	Sstm8s_tim2$TIM2_UpdateDisableConfig$215 ==.
                                    979 ;	../SPL/src/stm8s_tim2.c: 406: }
                                    980 ; genEndFunction
                           00023E   981 	Sstm8s_tim2$TIM2_UpdateDisableConfig$216 ==.
                           00023E   982 	XG$TIM2_UpdateDisableConfig$0$0 ==.
      00A0B2 81               [ 4]  983 	ret
                           00023F   984 	Sstm8s_tim2$TIM2_UpdateDisableConfig$217 ==.
                           00023F   985 	Sstm8s_tim2$TIM2_UpdateRequestConfig$218 ==.
                                    986 ;	../SPL/src/stm8s_tim2.c: 416: void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
                                    987 ; genLabel
                                    988 ;	-----------------------------------------
                                    989 ;	 function TIM2_UpdateRequestConfig
                                    990 ;	-----------------------------------------
                                    991 ;	Register assignment is optimal.
                                    992 ;	Stack space usage: 0 bytes.
      00A0B3                        993 _TIM2_UpdateRequestConfig:
                           00023F   994 	Sstm8s_tim2$TIM2_UpdateRequestConfig$219 ==.
                           00023F   995 	Sstm8s_tim2$TIM2_UpdateRequestConfig$220 ==.
                                    996 ;	../SPL/src/stm8s_tim2.c: 424: TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
                                    997 ; genPointerGet
      00A0B3 C6 53 00         [ 1]  998 	ld	a, 0x5300
                           000242   999 	Sstm8s_tim2$TIM2_UpdateRequestConfig$221 ==.
                                   1000 ;	../SPL/src/stm8s_tim2.c: 422: if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
                                   1001 ; genIfx
      00A0B6 0D 03            [ 1] 1002 	tnz	(0x03, sp)
      00A0B8 26 03            [ 1] 1003 	jrne	00111$
      00A0BA CC A0 C5         [ 2] 1004 	jp	00102$
      00A0BD                       1005 00111$:
                           000249  1006 	Sstm8s_tim2$TIM2_UpdateRequestConfig$222 ==.
                           000249  1007 	Sstm8s_tim2$TIM2_UpdateRequestConfig$223 ==.
                                   1008 ;	../SPL/src/stm8s_tim2.c: 424: TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
                                   1009 ; genOr
      00A0BD AA 04            [ 1] 1010 	or	a, #0x04
                                   1011 ; genPointerSet
      00A0BF C7 53 00         [ 1] 1012 	ld	0x5300, a
                           00024E  1013 	Sstm8s_tim2$TIM2_UpdateRequestConfig$224 ==.
                                   1014 ; genGoto
      00A0C2 CC A0 CA         [ 2] 1015 	jp	00104$
                                   1016 ; genLabel
      00A0C5                       1017 00102$:
                           000251  1018 	Sstm8s_tim2$TIM2_UpdateRequestConfig$225 ==.
                           000251  1019 	Sstm8s_tim2$TIM2_UpdateRequestConfig$226 ==.
                                   1020 ;	../SPL/src/stm8s_tim2.c: 428: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
                                   1021 ; genAnd
      00A0C5 A4 FB            [ 1] 1022 	and	a, #0xfb
                                   1023 ; genPointerSet
      00A0C7 C7 53 00         [ 1] 1024 	ld	0x5300, a
                           000256  1025 	Sstm8s_tim2$TIM2_UpdateRequestConfig$227 ==.
                                   1026 ; genLabel
      00A0CA                       1027 00104$:
                           000256  1028 	Sstm8s_tim2$TIM2_UpdateRequestConfig$228 ==.
                                   1029 ;	../SPL/src/stm8s_tim2.c: 430: }
                                   1030 ; genEndFunction
                           000256  1031 	Sstm8s_tim2$TIM2_UpdateRequestConfig$229 ==.
                           000256  1032 	XG$TIM2_UpdateRequestConfig$0$0 ==.
      00A0CA 81               [ 4] 1033 	ret
                           000257  1034 	Sstm8s_tim2$TIM2_UpdateRequestConfig$230 ==.
                           000257  1035 	Sstm8s_tim2$TIM2_SelectOnePulseMode$231 ==.
                                   1036 ;	../SPL/src/stm8s_tim2.c: 440: void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
                                   1037 ; genLabel
                                   1038 ;	-----------------------------------------
                                   1039 ;	 function TIM2_SelectOnePulseMode
                                   1040 ;	-----------------------------------------
                                   1041 ;	Register assignment is optimal.
                                   1042 ;	Stack space usage: 0 bytes.
      00A0CB                       1043 _TIM2_SelectOnePulseMode:
                           000257  1044 	Sstm8s_tim2$TIM2_SelectOnePulseMode$232 ==.
                           000257  1045 	Sstm8s_tim2$TIM2_SelectOnePulseMode$233 ==.
                                   1046 ;	../SPL/src/stm8s_tim2.c: 448: TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
                                   1047 ; genPointerGet
      00A0CB C6 53 00         [ 1] 1048 	ld	a, 0x5300
                           00025A  1049 	Sstm8s_tim2$TIM2_SelectOnePulseMode$234 ==.
                                   1050 ;	../SPL/src/stm8s_tim2.c: 446: if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
                                   1051 ; genIfx
      00A0CE 0D 03            [ 1] 1052 	tnz	(0x03, sp)
      00A0D0 26 03            [ 1] 1053 	jrne	00111$
      00A0D2 CC A0 DD         [ 2] 1054 	jp	00102$
      00A0D5                       1055 00111$:
                           000261  1056 	Sstm8s_tim2$TIM2_SelectOnePulseMode$235 ==.
                           000261  1057 	Sstm8s_tim2$TIM2_SelectOnePulseMode$236 ==.
                                   1058 ;	../SPL/src/stm8s_tim2.c: 448: TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
                                   1059 ; genOr
      00A0D5 AA 08            [ 1] 1060 	or	a, #0x08
                                   1061 ; genPointerSet
      00A0D7 C7 53 00         [ 1] 1062 	ld	0x5300, a
                           000266  1063 	Sstm8s_tim2$TIM2_SelectOnePulseMode$237 ==.
                                   1064 ; genGoto
      00A0DA CC A0 E2         [ 2] 1065 	jp	00104$
                                   1066 ; genLabel
      00A0DD                       1067 00102$:
                           000269  1068 	Sstm8s_tim2$TIM2_SelectOnePulseMode$238 ==.
                           000269  1069 	Sstm8s_tim2$TIM2_SelectOnePulseMode$239 ==.
                                   1070 ;	../SPL/src/stm8s_tim2.c: 452: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
                                   1071 ; genAnd
      00A0DD A4 F7            [ 1] 1072 	and	a, #0xf7
                                   1073 ; genPointerSet
      00A0DF C7 53 00         [ 1] 1074 	ld	0x5300, a
                           00026E  1075 	Sstm8s_tim2$TIM2_SelectOnePulseMode$240 ==.
                                   1076 ; genLabel
      00A0E2                       1077 00104$:
                           00026E  1078 	Sstm8s_tim2$TIM2_SelectOnePulseMode$241 ==.
                                   1079 ;	../SPL/src/stm8s_tim2.c: 454: }
                                   1080 ; genEndFunction
                           00026E  1081 	Sstm8s_tim2$TIM2_SelectOnePulseMode$242 ==.
                           00026E  1082 	XG$TIM2_SelectOnePulseMode$0$0 ==.
      00A0E2 81               [ 4] 1083 	ret
                           00026F  1084 	Sstm8s_tim2$TIM2_SelectOnePulseMode$243 ==.
                           00026F  1085 	Sstm8s_tim2$TIM2_PrescalerConfig$244 ==.
                                   1086 ;	../SPL/src/stm8s_tim2.c: 484: void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
                                   1087 ; genLabel
                                   1088 ;	-----------------------------------------
                                   1089 ;	 function TIM2_PrescalerConfig
                                   1090 ;	-----------------------------------------
                                   1091 ;	Register assignment is optimal.
                                   1092 ;	Stack space usage: 0 bytes.
      00A0E3                       1093 _TIM2_PrescalerConfig:
                           00026F  1094 	Sstm8s_tim2$TIM2_PrescalerConfig$245 ==.
                           00026F  1095 	Sstm8s_tim2$TIM2_PrescalerConfig$246 ==.
                                   1096 ;	../SPL/src/stm8s_tim2.c: 492: TIM2->PSCR = (uint8_t)Prescaler;
                                   1097 ; genPointerSet
      00A0E3 AE 53 0C         [ 2] 1098 	ldw	x, #0x530c
      00A0E6 7B 03            [ 1] 1099 	ld	a, (0x03, sp)
      00A0E8 F7               [ 1] 1100 	ld	(x), a
                           000275  1101 	Sstm8s_tim2$TIM2_PrescalerConfig$247 ==.
                                   1102 ;	../SPL/src/stm8s_tim2.c: 495: TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
                                   1103 ; genPointerSet
      00A0E9 AE 53 04         [ 2] 1104 	ldw	x, #0x5304
      00A0EC 7B 04            [ 1] 1105 	ld	a, (0x04, sp)
      00A0EE F7               [ 1] 1106 	ld	(x), a
                                   1107 ; genLabel
      00A0EF                       1108 00101$:
                           00027B  1109 	Sstm8s_tim2$TIM2_PrescalerConfig$248 ==.
                                   1110 ;	../SPL/src/stm8s_tim2.c: 496: }
                                   1111 ; genEndFunction
                           00027B  1112 	Sstm8s_tim2$TIM2_PrescalerConfig$249 ==.
                           00027B  1113 	XG$TIM2_PrescalerConfig$0$0 ==.
      00A0EF 81               [ 4] 1114 	ret
                           00027C  1115 	Sstm8s_tim2$TIM2_PrescalerConfig$250 ==.
                           00027C  1116 	Sstm8s_tim2$TIM2_ForcedOC1Config$251 ==.
                                   1117 ;	../SPL/src/stm8s_tim2.c: 507: void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
                                   1118 ; genLabel
                                   1119 ;	-----------------------------------------
                                   1120 ;	 function TIM2_ForcedOC1Config
                                   1121 ;	-----------------------------------------
                                   1122 ;	Register assignment is optimal.
                                   1123 ;	Stack space usage: 0 bytes.
      00A0F0                       1124 _TIM2_ForcedOC1Config:
                           00027C  1125 	Sstm8s_tim2$TIM2_ForcedOC1Config$252 ==.
                           00027C  1126 	Sstm8s_tim2$TIM2_ForcedOC1Config$253 ==.
                                   1127 ;	../SPL/src/stm8s_tim2.c: 513: TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
                                   1128 ; genPointerGet
      00A0F0 C6 53 05         [ 1] 1129 	ld	a, 0x5305
                                   1130 ; genAnd
      00A0F3 A4 8F            [ 1] 1131 	and	a, #0x8f
                           000281  1132 	Sstm8s_tim2$TIM2_ForcedOC1Config$254 ==.
                                   1133 ;	../SPL/src/stm8s_tim2.c: 514: | (uint8_t)TIM2_ForcedAction);
                                   1134 ; genOr
      00A0F5 1A 03            [ 1] 1135 	or	a, (0x03, sp)
                                   1136 ; genPointerSet
      00A0F7 C7 53 05         [ 1] 1137 	ld	0x5305, a
                                   1138 ; genLabel
      00A0FA                       1139 00101$:
                           000286  1140 	Sstm8s_tim2$TIM2_ForcedOC1Config$255 ==.
                                   1141 ;	../SPL/src/stm8s_tim2.c: 515: }
                                   1142 ; genEndFunction
                           000286  1143 	Sstm8s_tim2$TIM2_ForcedOC1Config$256 ==.
                           000286  1144 	XG$TIM2_ForcedOC1Config$0$0 ==.
      00A0FA 81               [ 4] 1145 	ret
                           000287  1146 	Sstm8s_tim2$TIM2_ForcedOC1Config$257 ==.
                           000287  1147 	Sstm8s_tim2$TIM2_ForcedOC2Config$258 ==.
                                   1148 ;	../SPL/src/stm8s_tim2.c: 526: void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
                                   1149 ; genLabel
                                   1150 ;	-----------------------------------------
                                   1151 ;	 function TIM2_ForcedOC2Config
                                   1152 ;	-----------------------------------------
                                   1153 ;	Register assignment is optimal.
                                   1154 ;	Stack space usage: 0 bytes.
      00A0FB                       1155 _TIM2_ForcedOC2Config:
                           000287  1156 	Sstm8s_tim2$TIM2_ForcedOC2Config$259 ==.
                           000287  1157 	Sstm8s_tim2$TIM2_ForcedOC2Config$260 ==.
                                   1158 ;	../SPL/src/stm8s_tim2.c: 532: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
                                   1159 ; genPointerGet
      00A0FB C6 53 06         [ 1] 1160 	ld	a, 0x5306
                                   1161 ; genAnd
      00A0FE A4 8F            [ 1] 1162 	and	a, #0x8f
                           00028C  1163 	Sstm8s_tim2$TIM2_ForcedOC2Config$261 ==.
                                   1164 ;	../SPL/src/stm8s_tim2.c: 533: | (uint8_t)TIM2_ForcedAction);
                                   1165 ; genOr
      00A100 1A 03            [ 1] 1166 	or	a, (0x03, sp)
                                   1167 ; genPointerSet
      00A102 C7 53 06         [ 1] 1168 	ld	0x5306, a
                                   1169 ; genLabel
      00A105                       1170 00101$:
                           000291  1171 	Sstm8s_tim2$TIM2_ForcedOC2Config$262 ==.
                                   1172 ;	../SPL/src/stm8s_tim2.c: 534: }
                                   1173 ; genEndFunction
                           000291  1174 	Sstm8s_tim2$TIM2_ForcedOC2Config$263 ==.
                           000291  1175 	XG$TIM2_ForcedOC2Config$0$0 ==.
      00A105 81               [ 4] 1176 	ret
                           000292  1177 	Sstm8s_tim2$TIM2_ForcedOC2Config$264 ==.
                           000292  1178 	Sstm8s_tim2$TIM2_ForcedOC3Config$265 ==.
                                   1179 ;	../SPL/src/stm8s_tim2.c: 545: void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
                                   1180 ; genLabel
                                   1181 ;	-----------------------------------------
                                   1182 ;	 function TIM2_ForcedOC3Config
                                   1183 ;	-----------------------------------------
                                   1184 ;	Register assignment is optimal.
                                   1185 ;	Stack space usage: 0 bytes.
      00A106                       1186 _TIM2_ForcedOC3Config:
                           000292  1187 	Sstm8s_tim2$TIM2_ForcedOC3Config$266 ==.
                           000292  1188 	Sstm8s_tim2$TIM2_ForcedOC3Config$267 ==.
                                   1189 ;	../SPL/src/stm8s_tim2.c: 551: TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
                                   1190 ; genPointerGet
      00A106 C6 53 07         [ 1] 1191 	ld	a, 0x5307
                                   1192 ; genAnd
      00A109 A4 8F            [ 1] 1193 	and	a, #0x8f
                           000297  1194 	Sstm8s_tim2$TIM2_ForcedOC3Config$268 ==.
                                   1195 ;	../SPL/src/stm8s_tim2.c: 552: | (uint8_t)TIM2_ForcedAction);
                                   1196 ; genOr
      00A10B 1A 03            [ 1] 1197 	or	a, (0x03, sp)
                                   1198 ; genPointerSet
      00A10D C7 53 07         [ 1] 1199 	ld	0x5307, a
                                   1200 ; genLabel
      00A110                       1201 00101$:
                           00029C  1202 	Sstm8s_tim2$TIM2_ForcedOC3Config$269 ==.
                                   1203 ;	../SPL/src/stm8s_tim2.c: 553: }
                                   1204 ; genEndFunction
                           00029C  1205 	Sstm8s_tim2$TIM2_ForcedOC3Config$270 ==.
                           00029C  1206 	XG$TIM2_ForcedOC3Config$0$0 ==.
      00A110 81               [ 4] 1207 	ret
                           00029D  1208 	Sstm8s_tim2$TIM2_ForcedOC3Config$271 ==.
                           00029D  1209 	Sstm8s_tim2$TIM2_ARRPreloadConfig$272 ==.
                                   1210 ;	../SPL/src/stm8s_tim2.c: 561: void TIM2_ARRPreloadConfig(FunctionalState NewState)
                                   1211 ; genLabel
                                   1212 ;	-----------------------------------------
                                   1213 ;	 function TIM2_ARRPreloadConfig
                                   1214 ;	-----------------------------------------
                                   1215 ;	Register assignment is optimal.
                                   1216 ;	Stack space usage: 0 bytes.
      00A111                       1217 _TIM2_ARRPreloadConfig:
                           00029D  1218 	Sstm8s_tim2$TIM2_ARRPreloadConfig$273 ==.
                           00029D  1219 	Sstm8s_tim2$TIM2_ARRPreloadConfig$274 ==.
                                   1220 ;	../SPL/src/stm8s_tim2.c: 569: TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
                                   1221 ; genPointerGet
      00A111 C6 53 00         [ 1] 1222 	ld	a, 0x5300
                           0002A0  1223 	Sstm8s_tim2$TIM2_ARRPreloadConfig$275 ==.
                                   1224 ;	../SPL/src/stm8s_tim2.c: 567: if (NewState != DISABLE)
                                   1225 ; genIfx
      00A114 0D 03            [ 1] 1226 	tnz	(0x03, sp)
      00A116 26 03            [ 1] 1227 	jrne	00111$
      00A118 CC A1 23         [ 2] 1228 	jp	00102$
      00A11B                       1229 00111$:
                           0002A7  1230 	Sstm8s_tim2$TIM2_ARRPreloadConfig$276 ==.
                           0002A7  1231 	Sstm8s_tim2$TIM2_ARRPreloadConfig$277 ==.
                                   1232 ;	../SPL/src/stm8s_tim2.c: 569: TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
                                   1233 ; genOr
      00A11B AA 80            [ 1] 1234 	or	a, #0x80
                                   1235 ; genPointerSet
      00A11D C7 53 00         [ 1] 1236 	ld	0x5300, a
                           0002AC  1237 	Sstm8s_tim2$TIM2_ARRPreloadConfig$278 ==.
                                   1238 ; genGoto
      00A120 CC A1 28         [ 2] 1239 	jp	00104$
                                   1240 ; genLabel
      00A123                       1241 00102$:
                           0002AF  1242 	Sstm8s_tim2$TIM2_ARRPreloadConfig$279 ==.
                           0002AF  1243 	Sstm8s_tim2$TIM2_ARRPreloadConfig$280 ==.
                                   1244 ;	../SPL/src/stm8s_tim2.c: 573: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
                                   1245 ; genAnd
      00A123 A4 7F            [ 1] 1246 	and	a, #0x7f
                                   1247 ; genPointerSet
      00A125 C7 53 00         [ 1] 1248 	ld	0x5300, a
                           0002B4  1249 	Sstm8s_tim2$TIM2_ARRPreloadConfig$281 ==.
                                   1250 ; genLabel
      00A128                       1251 00104$:
                           0002B4  1252 	Sstm8s_tim2$TIM2_ARRPreloadConfig$282 ==.
                                   1253 ;	../SPL/src/stm8s_tim2.c: 575: }
                                   1254 ; genEndFunction
                           0002B4  1255 	Sstm8s_tim2$TIM2_ARRPreloadConfig$283 ==.
                           0002B4  1256 	XG$TIM2_ARRPreloadConfig$0$0 ==.
      00A128 81               [ 4] 1257 	ret
                           0002B5  1258 	Sstm8s_tim2$TIM2_ARRPreloadConfig$284 ==.
                           0002B5  1259 	Sstm8s_tim2$TIM2_OC1PreloadConfig$285 ==.
                                   1260 ;	../SPL/src/stm8s_tim2.c: 583: void TIM2_OC1PreloadConfig(FunctionalState NewState)
                                   1261 ; genLabel
                                   1262 ;	-----------------------------------------
                                   1263 ;	 function TIM2_OC1PreloadConfig
                                   1264 ;	-----------------------------------------
                                   1265 ;	Register assignment is optimal.
                                   1266 ;	Stack space usage: 0 bytes.
      00A129                       1267 _TIM2_OC1PreloadConfig:
                           0002B5  1268 	Sstm8s_tim2$TIM2_OC1PreloadConfig$286 ==.
                           0002B5  1269 	Sstm8s_tim2$TIM2_OC1PreloadConfig$287 ==.
                                   1270 ;	../SPL/src/stm8s_tim2.c: 591: TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
                                   1271 ; genPointerGet
      00A129 C6 53 05         [ 1] 1272 	ld	a, 0x5305
                           0002B8  1273 	Sstm8s_tim2$TIM2_OC1PreloadConfig$288 ==.
                                   1274 ;	../SPL/src/stm8s_tim2.c: 589: if (NewState != DISABLE)
                                   1275 ; genIfx
      00A12C 0D 03            [ 1] 1276 	tnz	(0x03, sp)
      00A12E 26 03            [ 1] 1277 	jrne	00111$
      00A130 CC A1 3B         [ 2] 1278 	jp	00102$
      00A133                       1279 00111$:
                           0002BF  1280 	Sstm8s_tim2$TIM2_OC1PreloadConfig$289 ==.
                           0002BF  1281 	Sstm8s_tim2$TIM2_OC1PreloadConfig$290 ==.
                                   1282 ;	../SPL/src/stm8s_tim2.c: 591: TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
                                   1283 ; genOr
      00A133 AA 08            [ 1] 1284 	or	a, #0x08
                                   1285 ; genPointerSet
      00A135 C7 53 05         [ 1] 1286 	ld	0x5305, a
                           0002C4  1287 	Sstm8s_tim2$TIM2_OC1PreloadConfig$291 ==.
                                   1288 ; genGoto
      00A138 CC A1 40         [ 2] 1289 	jp	00104$
                                   1290 ; genLabel
      00A13B                       1291 00102$:
                           0002C7  1292 	Sstm8s_tim2$TIM2_OC1PreloadConfig$292 ==.
                           0002C7  1293 	Sstm8s_tim2$TIM2_OC1PreloadConfig$293 ==.
                                   1294 ;	../SPL/src/stm8s_tim2.c: 595: TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
                                   1295 ; genAnd
      00A13B A4 F7            [ 1] 1296 	and	a, #0xf7
                                   1297 ; genPointerSet
      00A13D C7 53 05         [ 1] 1298 	ld	0x5305, a
                           0002CC  1299 	Sstm8s_tim2$TIM2_OC1PreloadConfig$294 ==.
                                   1300 ; genLabel
      00A140                       1301 00104$:
                           0002CC  1302 	Sstm8s_tim2$TIM2_OC1PreloadConfig$295 ==.
                                   1303 ;	../SPL/src/stm8s_tim2.c: 597: }
                                   1304 ; genEndFunction
                           0002CC  1305 	Sstm8s_tim2$TIM2_OC1PreloadConfig$296 ==.
                           0002CC  1306 	XG$TIM2_OC1PreloadConfig$0$0 ==.
      00A140 81               [ 4] 1307 	ret
                           0002CD  1308 	Sstm8s_tim2$TIM2_OC1PreloadConfig$297 ==.
                           0002CD  1309 	Sstm8s_tim2$TIM2_OC2PreloadConfig$298 ==.
                                   1310 ;	../SPL/src/stm8s_tim2.c: 605: void TIM2_OC2PreloadConfig(FunctionalState NewState)
                                   1311 ; genLabel
                                   1312 ;	-----------------------------------------
                                   1313 ;	 function TIM2_OC2PreloadConfig
                                   1314 ;	-----------------------------------------
                                   1315 ;	Register assignment is optimal.
                                   1316 ;	Stack space usage: 0 bytes.
      00A141                       1317 _TIM2_OC2PreloadConfig:
                           0002CD  1318 	Sstm8s_tim2$TIM2_OC2PreloadConfig$299 ==.
                           0002CD  1319 	Sstm8s_tim2$TIM2_OC2PreloadConfig$300 ==.
                                   1320 ;	../SPL/src/stm8s_tim2.c: 613: TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
                                   1321 ; genPointerGet
      00A141 C6 53 06         [ 1] 1322 	ld	a, 0x5306
                           0002D0  1323 	Sstm8s_tim2$TIM2_OC2PreloadConfig$301 ==.
                                   1324 ;	../SPL/src/stm8s_tim2.c: 611: if (NewState != DISABLE)
                                   1325 ; genIfx
      00A144 0D 03            [ 1] 1326 	tnz	(0x03, sp)
      00A146 26 03            [ 1] 1327 	jrne	00111$
      00A148 CC A1 53         [ 2] 1328 	jp	00102$
      00A14B                       1329 00111$:
                           0002D7  1330 	Sstm8s_tim2$TIM2_OC2PreloadConfig$302 ==.
                           0002D7  1331 	Sstm8s_tim2$TIM2_OC2PreloadConfig$303 ==.
                                   1332 ;	../SPL/src/stm8s_tim2.c: 613: TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
                                   1333 ; genOr
      00A14B AA 08            [ 1] 1334 	or	a, #0x08
                                   1335 ; genPointerSet
      00A14D C7 53 06         [ 1] 1336 	ld	0x5306, a
                           0002DC  1337 	Sstm8s_tim2$TIM2_OC2PreloadConfig$304 ==.
                                   1338 ; genGoto
      00A150 CC A1 58         [ 2] 1339 	jp	00104$
                                   1340 ; genLabel
      00A153                       1341 00102$:
                           0002DF  1342 	Sstm8s_tim2$TIM2_OC2PreloadConfig$305 ==.
                           0002DF  1343 	Sstm8s_tim2$TIM2_OC2PreloadConfig$306 ==.
                                   1344 ;	../SPL/src/stm8s_tim2.c: 617: TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
                                   1345 ; genAnd
      00A153 A4 F7            [ 1] 1346 	and	a, #0xf7
                                   1347 ; genPointerSet
      00A155 C7 53 06         [ 1] 1348 	ld	0x5306, a
                           0002E4  1349 	Sstm8s_tim2$TIM2_OC2PreloadConfig$307 ==.
                                   1350 ; genLabel
      00A158                       1351 00104$:
                           0002E4  1352 	Sstm8s_tim2$TIM2_OC2PreloadConfig$308 ==.
                                   1353 ;	../SPL/src/stm8s_tim2.c: 619: }
                                   1354 ; genEndFunction
                           0002E4  1355 	Sstm8s_tim2$TIM2_OC2PreloadConfig$309 ==.
                           0002E4  1356 	XG$TIM2_OC2PreloadConfig$0$0 ==.
      00A158 81               [ 4] 1357 	ret
                           0002E5  1358 	Sstm8s_tim2$TIM2_OC2PreloadConfig$310 ==.
                           0002E5  1359 	Sstm8s_tim2$TIM2_OC3PreloadConfig$311 ==.
                                   1360 ;	../SPL/src/stm8s_tim2.c: 627: void TIM2_OC3PreloadConfig(FunctionalState NewState)
                                   1361 ; genLabel
                                   1362 ;	-----------------------------------------
                                   1363 ;	 function TIM2_OC3PreloadConfig
                                   1364 ;	-----------------------------------------
                                   1365 ;	Register assignment is optimal.
                                   1366 ;	Stack space usage: 0 bytes.
      00A159                       1367 _TIM2_OC3PreloadConfig:
                           0002E5  1368 	Sstm8s_tim2$TIM2_OC3PreloadConfig$312 ==.
                           0002E5  1369 	Sstm8s_tim2$TIM2_OC3PreloadConfig$313 ==.
                                   1370 ;	../SPL/src/stm8s_tim2.c: 635: TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
                                   1371 ; genPointerGet
      00A159 C6 53 07         [ 1] 1372 	ld	a, 0x5307
                           0002E8  1373 	Sstm8s_tim2$TIM2_OC3PreloadConfig$314 ==.
                                   1374 ;	../SPL/src/stm8s_tim2.c: 633: if (NewState != DISABLE)
                                   1375 ; genIfx
      00A15C 0D 03            [ 1] 1376 	tnz	(0x03, sp)
      00A15E 26 03            [ 1] 1377 	jrne	00111$
      00A160 CC A1 6B         [ 2] 1378 	jp	00102$
      00A163                       1379 00111$:
                           0002EF  1380 	Sstm8s_tim2$TIM2_OC3PreloadConfig$315 ==.
                           0002EF  1381 	Sstm8s_tim2$TIM2_OC3PreloadConfig$316 ==.
                                   1382 ;	../SPL/src/stm8s_tim2.c: 635: TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
                                   1383 ; genOr
      00A163 AA 08            [ 1] 1384 	or	a, #0x08
                                   1385 ; genPointerSet
      00A165 C7 53 07         [ 1] 1386 	ld	0x5307, a
                           0002F4  1387 	Sstm8s_tim2$TIM2_OC3PreloadConfig$317 ==.
                                   1388 ; genGoto
      00A168 CC A1 70         [ 2] 1389 	jp	00104$
                                   1390 ; genLabel
      00A16B                       1391 00102$:
                           0002F7  1392 	Sstm8s_tim2$TIM2_OC3PreloadConfig$318 ==.
                           0002F7  1393 	Sstm8s_tim2$TIM2_OC3PreloadConfig$319 ==.
                                   1394 ;	../SPL/src/stm8s_tim2.c: 639: TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
                                   1395 ; genAnd
      00A16B A4 F7            [ 1] 1396 	and	a, #0xf7
                                   1397 ; genPointerSet
      00A16D C7 53 07         [ 1] 1398 	ld	0x5307, a
                           0002FC  1399 	Sstm8s_tim2$TIM2_OC3PreloadConfig$320 ==.
                                   1400 ; genLabel
      00A170                       1401 00104$:
                           0002FC  1402 	Sstm8s_tim2$TIM2_OC3PreloadConfig$321 ==.
                                   1403 ;	../SPL/src/stm8s_tim2.c: 641: }
                                   1404 ; genEndFunction
                           0002FC  1405 	Sstm8s_tim2$TIM2_OC3PreloadConfig$322 ==.
                           0002FC  1406 	XG$TIM2_OC3PreloadConfig$0$0 ==.
      00A170 81               [ 4] 1407 	ret
                           0002FD  1408 	Sstm8s_tim2$TIM2_OC3PreloadConfig$323 ==.
                           0002FD  1409 	Sstm8s_tim2$TIM2_GenerateEvent$324 ==.
                                   1410 ;	../SPL/src/stm8s_tim2.c: 653: void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
                                   1411 ; genLabel
                                   1412 ;	-----------------------------------------
                                   1413 ;	 function TIM2_GenerateEvent
                                   1414 ;	-----------------------------------------
                                   1415 ;	Register assignment is optimal.
                                   1416 ;	Stack space usage: 0 bytes.
      00A171                       1417 _TIM2_GenerateEvent:
                           0002FD  1418 	Sstm8s_tim2$TIM2_GenerateEvent$325 ==.
                           0002FD  1419 	Sstm8s_tim2$TIM2_GenerateEvent$326 ==.
                                   1420 ;	../SPL/src/stm8s_tim2.c: 659: TIM2->EGR = (uint8_t)TIM2_EventSource;
                                   1421 ; genPointerSet
      00A171 AE 53 04         [ 2] 1422 	ldw	x, #0x5304
      00A174 7B 03            [ 1] 1423 	ld	a, (0x03, sp)
      00A176 F7               [ 1] 1424 	ld	(x), a
                                   1425 ; genLabel
      00A177                       1426 00101$:
                           000303  1427 	Sstm8s_tim2$TIM2_GenerateEvent$327 ==.
                                   1428 ;	../SPL/src/stm8s_tim2.c: 660: }
                                   1429 ; genEndFunction
                           000303  1430 	Sstm8s_tim2$TIM2_GenerateEvent$328 ==.
                           000303  1431 	XG$TIM2_GenerateEvent$0$0 ==.
      00A177 81               [ 4] 1432 	ret
                           000304  1433 	Sstm8s_tim2$TIM2_GenerateEvent$329 ==.
                           000304  1434 	Sstm8s_tim2$TIM2_OC1PolarityConfig$330 ==.
                                   1435 ;	../SPL/src/stm8s_tim2.c: 670: void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
                                   1436 ; genLabel
                                   1437 ;	-----------------------------------------
                                   1438 ;	 function TIM2_OC1PolarityConfig
                                   1439 ;	-----------------------------------------
                                   1440 ;	Register assignment is optimal.
                                   1441 ;	Stack space usage: 0 bytes.
      00A178                       1442 _TIM2_OC1PolarityConfig:
                           000304  1443 	Sstm8s_tim2$TIM2_OC1PolarityConfig$331 ==.
                           000304  1444 	Sstm8s_tim2$TIM2_OC1PolarityConfig$332 ==.
                                   1445 ;	../SPL/src/stm8s_tim2.c: 678: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
                                   1446 ; genPointerGet
      00A178 C6 53 08         [ 1] 1447 	ld	a, 0x5308
                           000307  1448 	Sstm8s_tim2$TIM2_OC1PolarityConfig$333 ==.
                                   1449 ;	../SPL/src/stm8s_tim2.c: 676: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
                                   1450 ; genIfx
      00A17B 0D 03            [ 1] 1451 	tnz	(0x03, sp)
      00A17D 26 03            [ 1] 1452 	jrne	00111$
      00A17F CC A1 8A         [ 2] 1453 	jp	00102$
      00A182                       1454 00111$:
                           00030E  1455 	Sstm8s_tim2$TIM2_OC1PolarityConfig$334 ==.
                           00030E  1456 	Sstm8s_tim2$TIM2_OC1PolarityConfig$335 ==.
                                   1457 ;	../SPL/src/stm8s_tim2.c: 678: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
                                   1458 ; genOr
      00A182 AA 02            [ 1] 1459 	or	a, #0x02
                                   1460 ; genPointerSet
      00A184 C7 53 08         [ 1] 1461 	ld	0x5308, a
                           000313  1462 	Sstm8s_tim2$TIM2_OC1PolarityConfig$336 ==.
                                   1463 ; genGoto
      00A187 CC A1 8F         [ 2] 1464 	jp	00104$
                                   1465 ; genLabel
      00A18A                       1466 00102$:
                           000316  1467 	Sstm8s_tim2$TIM2_OC1PolarityConfig$337 ==.
                           000316  1468 	Sstm8s_tim2$TIM2_OC1PolarityConfig$338 ==.
                                   1469 ;	../SPL/src/stm8s_tim2.c: 682: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
                                   1470 ; genAnd
      00A18A A4 FD            [ 1] 1471 	and	a, #0xfd
                                   1472 ; genPointerSet
      00A18C C7 53 08         [ 1] 1473 	ld	0x5308, a
                           00031B  1474 	Sstm8s_tim2$TIM2_OC1PolarityConfig$339 ==.
                                   1475 ; genLabel
      00A18F                       1476 00104$:
                           00031B  1477 	Sstm8s_tim2$TIM2_OC1PolarityConfig$340 ==.
                                   1478 ;	../SPL/src/stm8s_tim2.c: 684: }
                                   1479 ; genEndFunction
                           00031B  1480 	Sstm8s_tim2$TIM2_OC1PolarityConfig$341 ==.
                           00031B  1481 	XG$TIM2_OC1PolarityConfig$0$0 ==.
      00A18F 81               [ 4] 1482 	ret
                           00031C  1483 	Sstm8s_tim2$TIM2_OC1PolarityConfig$342 ==.
                           00031C  1484 	Sstm8s_tim2$TIM2_OC2PolarityConfig$343 ==.
                                   1485 ;	../SPL/src/stm8s_tim2.c: 694: void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
                                   1486 ; genLabel
                                   1487 ;	-----------------------------------------
                                   1488 ;	 function TIM2_OC2PolarityConfig
                                   1489 ;	-----------------------------------------
                                   1490 ;	Register assignment is optimal.
                                   1491 ;	Stack space usage: 0 bytes.
      00A190                       1492 _TIM2_OC2PolarityConfig:
                           00031C  1493 	Sstm8s_tim2$TIM2_OC2PolarityConfig$344 ==.
                           00031C  1494 	Sstm8s_tim2$TIM2_OC2PolarityConfig$345 ==.
                                   1495 ;	../SPL/src/stm8s_tim2.c: 702: TIM2->CCER1 |= TIM2_CCER1_CC2P;
                                   1496 ; genPointerGet
      00A190 C6 53 08         [ 1] 1497 	ld	a, 0x5308
                           00031F  1498 	Sstm8s_tim2$TIM2_OC2PolarityConfig$346 ==.
                                   1499 ;	../SPL/src/stm8s_tim2.c: 700: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
                                   1500 ; genIfx
      00A193 0D 03            [ 1] 1501 	tnz	(0x03, sp)
      00A195 26 03            [ 1] 1502 	jrne	00111$
      00A197 CC A1 A2         [ 2] 1503 	jp	00102$
      00A19A                       1504 00111$:
                           000326  1505 	Sstm8s_tim2$TIM2_OC2PolarityConfig$347 ==.
                           000326  1506 	Sstm8s_tim2$TIM2_OC2PolarityConfig$348 ==.
                                   1507 ;	../SPL/src/stm8s_tim2.c: 702: TIM2->CCER1 |= TIM2_CCER1_CC2P;
                                   1508 ; genOr
      00A19A AA 20            [ 1] 1509 	or	a, #0x20
                                   1510 ; genPointerSet
      00A19C C7 53 08         [ 1] 1511 	ld	0x5308, a
                           00032B  1512 	Sstm8s_tim2$TIM2_OC2PolarityConfig$349 ==.
                                   1513 ; genGoto
      00A19F CC A1 A7         [ 2] 1514 	jp	00104$
                                   1515 ; genLabel
      00A1A2                       1516 00102$:
                           00032E  1517 	Sstm8s_tim2$TIM2_OC2PolarityConfig$350 ==.
                           00032E  1518 	Sstm8s_tim2$TIM2_OC2PolarityConfig$351 ==.
                                   1519 ;	../SPL/src/stm8s_tim2.c: 706: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
                                   1520 ; genAnd
      00A1A2 A4 DF            [ 1] 1521 	and	a, #0xdf
                                   1522 ; genPointerSet
      00A1A4 C7 53 08         [ 1] 1523 	ld	0x5308, a
                           000333  1524 	Sstm8s_tim2$TIM2_OC2PolarityConfig$352 ==.
                                   1525 ; genLabel
      00A1A7                       1526 00104$:
                           000333  1527 	Sstm8s_tim2$TIM2_OC2PolarityConfig$353 ==.
                                   1528 ;	../SPL/src/stm8s_tim2.c: 708: }
                                   1529 ; genEndFunction
                           000333  1530 	Sstm8s_tim2$TIM2_OC2PolarityConfig$354 ==.
                           000333  1531 	XG$TIM2_OC2PolarityConfig$0$0 ==.
      00A1A7 81               [ 4] 1532 	ret
                           000334  1533 	Sstm8s_tim2$TIM2_OC2PolarityConfig$355 ==.
                           000334  1534 	Sstm8s_tim2$TIM2_OC3PolarityConfig$356 ==.
                                   1535 ;	../SPL/src/stm8s_tim2.c: 718: void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
                                   1536 ; genLabel
                                   1537 ;	-----------------------------------------
                                   1538 ;	 function TIM2_OC3PolarityConfig
                                   1539 ;	-----------------------------------------
                                   1540 ;	Register assignment is optimal.
                                   1541 ;	Stack space usage: 0 bytes.
      00A1A8                       1542 _TIM2_OC3PolarityConfig:
                           000334  1543 	Sstm8s_tim2$TIM2_OC3PolarityConfig$357 ==.
                           000334  1544 	Sstm8s_tim2$TIM2_OC3PolarityConfig$358 ==.
                                   1545 ;	../SPL/src/stm8s_tim2.c: 726: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
                                   1546 ; genPointerGet
      00A1A8 C6 53 09         [ 1] 1547 	ld	a, 0x5309
                           000337  1548 	Sstm8s_tim2$TIM2_OC3PolarityConfig$359 ==.
                                   1549 ;	../SPL/src/stm8s_tim2.c: 724: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
                                   1550 ; genIfx
      00A1AB 0D 03            [ 1] 1551 	tnz	(0x03, sp)
      00A1AD 26 03            [ 1] 1552 	jrne	00111$
      00A1AF CC A1 BA         [ 2] 1553 	jp	00102$
      00A1B2                       1554 00111$:
                           00033E  1555 	Sstm8s_tim2$TIM2_OC3PolarityConfig$360 ==.
                           00033E  1556 	Sstm8s_tim2$TIM2_OC3PolarityConfig$361 ==.
                                   1557 ;	../SPL/src/stm8s_tim2.c: 726: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
                                   1558 ; genOr
      00A1B2 AA 02            [ 1] 1559 	or	a, #0x02
                                   1560 ; genPointerSet
      00A1B4 C7 53 09         [ 1] 1561 	ld	0x5309, a
                           000343  1562 	Sstm8s_tim2$TIM2_OC3PolarityConfig$362 ==.
                                   1563 ; genGoto
      00A1B7 CC A1 BF         [ 2] 1564 	jp	00104$
                                   1565 ; genLabel
      00A1BA                       1566 00102$:
                           000346  1567 	Sstm8s_tim2$TIM2_OC3PolarityConfig$363 ==.
                           000346  1568 	Sstm8s_tim2$TIM2_OC3PolarityConfig$364 ==.
                                   1569 ;	../SPL/src/stm8s_tim2.c: 730: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
                                   1570 ; genAnd
      00A1BA A4 FD            [ 1] 1571 	and	a, #0xfd
                                   1572 ; genPointerSet
      00A1BC C7 53 09         [ 1] 1573 	ld	0x5309, a
                           00034B  1574 	Sstm8s_tim2$TIM2_OC3PolarityConfig$365 ==.
                                   1575 ; genLabel
      00A1BF                       1576 00104$:
                           00034B  1577 	Sstm8s_tim2$TIM2_OC3PolarityConfig$366 ==.
                                   1578 ;	../SPL/src/stm8s_tim2.c: 732: }
                                   1579 ; genEndFunction
                           00034B  1580 	Sstm8s_tim2$TIM2_OC3PolarityConfig$367 ==.
                           00034B  1581 	XG$TIM2_OC3PolarityConfig$0$0 ==.
      00A1BF 81               [ 4] 1582 	ret
                           00034C  1583 	Sstm8s_tim2$TIM2_OC3PolarityConfig$368 ==.
                           00034C  1584 	Sstm8s_tim2$TIM2_CCxCmd$369 ==.
                                   1585 ;	../SPL/src/stm8s_tim2.c: 745: void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
                                   1586 ; genLabel
                                   1587 ;	-----------------------------------------
                                   1588 ;	 function TIM2_CCxCmd
                                   1589 ;	-----------------------------------------
                                   1590 ;	Register assignment is optimal.
                                   1591 ;	Stack space usage: 0 bytes.
      00A1C0                       1592 _TIM2_CCxCmd:
                           00034C  1593 	Sstm8s_tim2$TIM2_CCxCmd$370 ==.
                           00034C  1594 	Sstm8s_tim2$TIM2_CCxCmd$371 ==.
                                   1595 ;	../SPL/src/stm8s_tim2.c: 751: if (TIM2_Channel == TIM2_CHANNEL_1)
                                   1596 ; genIfx
      00A1C0 0D 03            [ 1] 1597 	tnz	(0x03, sp)
      00A1C2 27 03            [ 1] 1598 	jreq	00143$
      00A1C4 CC A1 E1         [ 2] 1599 	jp	00114$
      00A1C7                       1600 00143$:
                           000353  1601 	Sstm8s_tim2$TIM2_CCxCmd$372 ==.
                                   1602 ;	../SPL/src/stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
                                   1603 ; genPointerGet
      00A1C7 C6 53 08         [ 1] 1604 	ld	a, 0x5308
                           000356  1605 	Sstm8s_tim2$TIM2_CCxCmd$373 ==.
                           000356  1606 	Sstm8s_tim2$TIM2_CCxCmd$374 ==.
                                   1607 ;	../SPL/src/stm8s_tim2.c: 754: if (NewState != DISABLE)
                                   1608 ; genIfx
      00A1CA 0D 04            [ 1] 1609 	tnz	(0x04, sp)
      00A1CC 26 03            [ 1] 1610 	jrne	00144$
      00A1CE CC A1 D9         [ 2] 1611 	jp	00102$
      00A1D1                       1612 00144$:
                           00035D  1613 	Sstm8s_tim2$TIM2_CCxCmd$375 ==.
                           00035D  1614 	Sstm8s_tim2$TIM2_CCxCmd$376 ==.
                                   1615 ;	../SPL/src/stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
                                   1616 ; genOr
      00A1D1 AA 01            [ 1] 1617 	or	a, #0x01
                                   1618 ; genPointerSet
      00A1D3 C7 53 08         [ 1] 1619 	ld	0x5308, a
                           000362  1620 	Sstm8s_tim2$TIM2_CCxCmd$377 ==.
                                   1621 ; genGoto
      00A1D6 CC A2 1D         [ 2] 1622 	jp	00116$
                                   1623 ; genLabel
      00A1D9                       1624 00102$:
                           000365  1625 	Sstm8s_tim2$TIM2_CCxCmd$378 ==.
                           000365  1626 	Sstm8s_tim2$TIM2_CCxCmd$379 ==.
                                   1627 ;	../SPL/src/stm8s_tim2.c: 760: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
                                   1628 ; genAnd
      00A1D9 A4 FE            [ 1] 1629 	and	a, #0xfe
                                   1630 ; genPointerSet
      00A1DB C7 53 08         [ 1] 1631 	ld	0x5308, a
                           00036A  1632 	Sstm8s_tim2$TIM2_CCxCmd$380 ==.
                                   1633 ; genGoto
      00A1DE CC A2 1D         [ 2] 1634 	jp	00116$
                                   1635 ; genLabel
      00A1E1                       1636 00114$:
                           00036D  1637 	Sstm8s_tim2$TIM2_CCxCmd$381 ==.
                                   1638 ;	../SPL/src/stm8s_tim2.c: 764: else if (TIM2_Channel == TIM2_CHANNEL_2)
                                   1639 ; genCmpEQorNE
      00A1E1 7B 03            [ 1] 1640 	ld	a, (0x03, sp)
      00A1E3 4A               [ 1] 1641 	dec	a
      00A1E4 26 03            [ 1] 1642 	jrne	00146$
      00A1E6 CC A1 EC         [ 2] 1643 	jp	00147$
      00A1E9                       1644 00146$:
      00A1E9 CC A2 06         [ 2] 1645 	jp	00111$
      00A1EC                       1646 00147$:
                           000378  1647 	Sstm8s_tim2$TIM2_CCxCmd$382 ==.
                                   1648 ; skipping generated iCode
                           000378  1649 	Sstm8s_tim2$TIM2_CCxCmd$383 ==.
                                   1650 ;	../SPL/src/stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
                                   1651 ; genPointerGet
      00A1EC C6 53 08         [ 1] 1652 	ld	a, 0x5308
                           00037B  1653 	Sstm8s_tim2$TIM2_CCxCmd$384 ==.
                           00037B  1654 	Sstm8s_tim2$TIM2_CCxCmd$385 ==.
                                   1655 ;	../SPL/src/stm8s_tim2.c: 767: if (NewState != DISABLE)
                                   1656 ; genIfx
      00A1EF 0D 04            [ 1] 1657 	tnz	(0x04, sp)
      00A1F1 26 03            [ 1] 1658 	jrne	00148$
      00A1F3 CC A1 FE         [ 2] 1659 	jp	00105$
      00A1F6                       1660 00148$:
                           000382  1661 	Sstm8s_tim2$TIM2_CCxCmd$386 ==.
                           000382  1662 	Sstm8s_tim2$TIM2_CCxCmd$387 ==.
                                   1663 ;	../SPL/src/stm8s_tim2.c: 769: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
                                   1664 ; genOr
      00A1F6 AA 10            [ 1] 1665 	or	a, #0x10
                                   1666 ; genPointerSet
      00A1F8 C7 53 08         [ 1] 1667 	ld	0x5308, a
                           000387  1668 	Sstm8s_tim2$TIM2_CCxCmd$388 ==.
                                   1669 ; genGoto
      00A1FB CC A2 1D         [ 2] 1670 	jp	00116$
                                   1671 ; genLabel
      00A1FE                       1672 00105$:
                           00038A  1673 	Sstm8s_tim2$TIM2_CCxCmd$389 ==.
                           00038A  1674 	Sstm8s_tim2$TIM2_CCxCmd$390 ==.
                                   1675 ;	../SPL/src/stm8s_tim2.c: 773: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
                                   1676 ; genAnd
      00A1FE A4 EF            [ 1] 1677 	and	a, #0xef
                                   1678 ; genPointerSet
      00A200 C7 53 08         [ 1] 1679 	ld	0x5308, a
                           00038F  1680 	Sstm8s_tim2$TIM2_CCxCmd$391 ==.
                                   1681 ; genGoto
      00A203 CC A2 1D         [ 2] 1682 	jp	00116$
                                   1683 ; genLabel
      00A206                       1684 00111$:
                           000392  1685 	Sstm8s_tim2$TIM2_CCxCmd$392 ==.
                                   1686 ;	../SPL/src/stm8s_tim2.c: 781: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
                                   1687 ; genPointerGet
      00A206 C6 53 09         [ 1] 1688 	ld	a, 0x5309
                           000395  1689 	Sstm8s_tim2$TIM2_CCxCmd$393 ==.
                           000395  1690 	Sstm8s_tim2$TIM2_CCxCmd$394 ==.
                                   1691 ;	../SPL/src/stm8s_tim2.c: 779: if (NewState != DISABLE)
                                   1692 ; genIfx
      00A209 0D 04            [ 1] 1693 	tnz	(0x04, sp)
      00A20B 26 03            [ 1] 1694 	jrne	00149$
      00A20D CC A2 18         [ 2] 1695 	jp	00108$
      00A210                       1696 00149$:
                           00039C  1697 	Sstm8s_tim2$TIM2_CCxCmd$395 ==.
                           00039C  1698 	Sstm8s_tim2$TIM2_CCxCmd$396 ==.
                                   1699 ;	../SPL/src/stm8s_tim2.c: 781: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
                                   1700 ; genOr
      00A210 AA 01            [ 1] 1701 	or	a, #0x01
                                   1702 ; genPointerSet
      00A212 C7 53 09         [ 1] 1703 	ld	0x5309, a
                           0003A1  1704 	Sstm8s_tim2$TIM2_CCxCmd$397 ==.
                                   1705 ; genGoto
      00A215 CC A2 1D         [ 2] 1706 	jp	00116$
                                   1707 ; genLabel
      00A218                       1708 00108$:
                           0003A4  1709 	Sstm8s_tim2$TIM2_CCxCmd$398 ==.
                           0003A4  1710 	Sstm8s_tim2$TIM2_CCxCmd$399 ==.
                                   1711 ;	../SPL/src/stm8s_tim2.c: 785: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
                                   1712 ; genAnd
      00A218 A4 FE            [ 1] 1713 	and	a, #0xfe
                                   1714 ; genPointerSet
      00A21A C7 53 09         [ 1] 1715 	ld	0x5309, a
                           0003A9  1716 	Sstm8s_tim2$TIM2_CCxCmd$400 ==.
                                   1717 ; genLabel
      00A21D                       1718 00116$:
                           0003A9  1719 	Sstm8s_tim2$TIM2_CCxCmd$401 ==.
                                   1720 ;	../SPL/src/stm8s_tim2.c: 788: }
                                   1721 ; genEndFunction
                           0003A9  1722 	Sstm8s_tim2$TIM2_CCxCmd$402 ==.
                           0003A9  1723 	XG$TIM2_CCxCmd$0$0 ==.
      00A21D 81               [ 4] 1724 	ret
                           0003AA  1725 	Sstm8s_tim2$TIM2_CCxCmd$403 ==.
                           0003AA  1726 	Sstm8s_tim2$TIM2_SelectOCxM$404 ==.
                                   1727 ;	../SPL/src/stm8s_tim2.c: 810: void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
                                   1728 ; genLabel
                                   1729 ;	-----------------------------------------
                                   1730 ;	 function TIM2_SelectOCxM
                                   1731 ;	-----------------------------------------
                                   1732 ;	Register assignment is optimal.
                                   1733 ;	Stack space usage: 0 bytes.
      00A21E                       1734 _TIM2_SelectOCxM:
                           0003AA  1735 	Sstm8s_tim2$TIM2_SelectOCxM$405 ==.
                           0003AA  1736 	Sstm8s_tim2$TIM2_SelectOCxM$406 ==.
                                   1737 ;	../SPL/src/stm8s_tim2.c: 816: if (TIM2_Channel == TIM2_CHANNEL_1)
                                   1738 ; genIfx
      00A21E 0D 03            [ 1] 1739 	tnz	(0x03, sp)
      00A220 27 03            [ 1] 1740 	jreq	00119$
      00A222 CC A2 3A         [ 2] 1741 	jp	00105$
      00A225                       1742 00119$:
                           0003B1  1743 	Sstm8s_tim2$TIM2_SelectOCxM$407 ==.
                           0003B1  1744 	Sstm8s_tim2$TIM2_SelectOCxM$408 ==.
                                   1745 ;	../SPL/src/stm8s_tim2.c: 819: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
                                   1746 ; genPointerGet
      00A225 C6 53 08         [ 1] 1747 	ld	a, 0x5308
                                   1748 ; genAnd
      00A228 A4 FE            [ 1] 1749 	and	a, #0xfe
                                   1750 ; genPointerSet
      00A22A C7 53 08         [ 1] 1751 	ld	0x5308, a
                           0003B9  1752 	Sstm8s_tim2$TIM2_SelectOCxM$409 ==.
                                   1753 ;	../SPL/src/stm8s_tim2.c: 822: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
                                   1754 ; genPointerGet
      00A22D C6 53 05         [ 1] 1755 	ld	a, 0x5305
                                   1756 ; genAnd
      00A230 A4 8F            [ 1] 1757 	and	a, #0x8f
                           0003BE  1758 	Sstm8s_tim2$TIM2_SelectOCxM$410 ==.
                                   1759 ;	../SPL/src/stm8s_tim2.c: 823: | (uint8_t)TIM2_OCMode);
                                   1760 ; genOr
      00A232 1A 04            [ 1] 1761 	or	a, (0x04, sp)
                                   1762 ; genPointerSet
      00A234 C7 53 05         [ 1] 1763 	ld	0x5305, a
                           0003C3  1764 	Sstm8s_tim2$TIM2_SelectOCxM$411 ==.
                                   1765 ; genGoto
      00A237 CC A2 6C         [ 2] 1766 	jp	00107$
                                   1767 ; genLabel
      00A23A                       1768 00105$:
                           0003C6  1769 	Sstm8s_tim2$TIM2_SelectOCxM$412 ==.
                                   1770 ;	../SPL/src/stm8s_tim2.c: 825: else if (TIM2_Channel == TIM2_CHANNEL_2)
                                   1771 ; genCmpEQorNE
      00A23A 7B 03            [ 1] 1772 	ld	a, (0x03, sp)
      00A23C 4A               [ 1] 1773 	dec	a
      00A23D 26 03            [ 1] 1774 	jrne	00121$
      00A23F CC A2 45         [ 2] 1775 	jp	00122$
      00A242                       1776 00121$:
      00A242 CC A2 5A         [ 2] 1777 	jp	00102$
      00A245                       1778 00122$:
                           0003D1  1779 	Sstm8s_tim2$TIM2_SelectOCxM$413 ==.
                                   1780 ; skipping generated iCode
                           0003D1  1781 	Sstm8s_tim2$TIM2_SelectOCxM$414 ==.
                           0003D1  1782 	Sstm8s_tim2$TIM2_SelectOCxM$415 ==.
                                   1783 ;	../SPL/src/stm8s_tim2.c: 828: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
                                   1784 ; genPointerGet
      00A245 C6 53 08         [ 1] 1785 	ld	a, 0x5308
                                   1786 ; genAnd
      00A248 A4 EF            [ 1] 1787 	and	a, #0xef
                                   1788 ; genPointerSet
      00A24A C7 53 08         [ 1] 1789 	ld	0x5308, a
                           0003D9  1790 	Sstm8s_tim2$TIM2_SelectOCxM$416 ==.
                                   1791 ;	../SPL/src/stm8s_tim2.c: 831: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
                                   1792 ; genPointerGet
      00A24D C6 53 06         [ 1] 1793 	ld	a, 0x5306
                                   1794 ; genAnd
      00A250 A4 8F            [ 1] 1795 	and	a, #0x8f
                           0003DE  1796 	Sstm8s_tim2$TIM2_SelectOCxM$417 ==.
                                   1797 ;	../SPL/src/stm8s_tim2.c: 832: | (uint8_t)TIM2_OCMode);
                                   1798 ; genOr
      00A252 1A 04            [ 1] 1799 	or	a, (0x04, sp)
                                   1800 ; genPointerSet
      00A254 C7 53 06         [ 1] 1801 	ld	0x5306, a
                           0003E3  1802 	Sstm8s_tim2$TIM2_SelectOCxM$418 ==.
                                   1803 ; genGoto
      00A257 CC A2 6C         [ 2] 1804 	jp	00107$
                                   1805 ; genLabel
      00A25A                       1806 00102$:
                           0003E6  1807 	Sstm8s_tim2$TIM2_SelectOCxM$419 ==.
                           0003E6  1808 	Sstm8s_tim2$TIM2_SelectOCxM$420 ==.
                                   1809 ;	../SPL/src/stm8s_tim2.c: 837: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
                                   1810 ; genPointerGet
      00A25A C6 53 09         [ 1] 1811 	ld	a, 0x5309
                                   1812 ; genAnd
      00A25D A4 FE            [ 1] 1813 	and	a, #0xfe
                                   1814 ; genPointerSet
      00A25F C7 53 09         [ 1] 1815 	ld	0x5309, a
                           0003EE  1816 	Sstm8s_tim2$TIM2_SelectOCxM$421 ==.
                                   1817 ;	../SPL/src/stm8s_tim2.c: 840: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
                                   1818 ; genPointerGet
      00A262 C6 53 07         [ 1] 1819 	ld	a, 0x5307
                                   1820 ; genAnd
      00A265 A4 8F            [ 1] 1821 	and	a, #0x8f
                           0003F3  1822 	Sstm8s_tim2$TIM2_SelectOCxM$422 ==.
                                   1823 ;	../SPL/src/stm8s_tim2.c: 841: | (uint8_t)TIM2_OCMode);
                                   1824 ; genOr
      00A267 1A 04            [ 1] 1825 	or	a, (0x04, sp)
                                   1826 ; genPointerSet
      00A269 C7 53 07         [ 1] 1827 	ld	0x5307, a
                           0003F8  1828 	Sstm8s_tim2$TIM2_SelectOCxM$423 ==.
                                   1829 ; genLabel
      00A26C                       1830 00107$:
                           0003F8  1831 	Sstm8s_tim2$TIM2_SelectOCxM$424 ==.
                                   1832 ;	../SPL/src/stm8s_tim2.c: 843: }
                                   1833 ; genEndFunction
                           0003F8  1834 	Sstm8s_tim2$TIM2_SelectOCxM$425 ==.
                           0003F8  1835 	XG$TIM2_SelectOCxM$0$0 ==.
      00A26C 81               [ 4] 1836 	ret
                           0003F9  1837 	Sstm8s_tim2$TIM2_SelectOCxM$426 ==.
                           0003F9  1838 	Sstm8s_tim2$TIM2_SetCounter$427 ==.
                                   1839 ;	../SPL/src/stm8s_tim2.c: 851: void TIM2_SetCounter(uint16_t Counter)
                                   1840 ; genLabel
                                   1841 ;	-----------------------------------------
                                   1842 ;	 function TIM2_SetCounter
                                   1843 ;	-----------------------------------------
                                   1844 ;	Register assignment is optimal.
                                   1845 ;	Stack space usage: 0 bytes.
      00A26D                       1846 _TIM2_SetCounter:
                           0003F9  1847 	Sstm8s_tim2$TIM2_SetCounter$428 ==.
                           0003F9  1848 	Sstm8s_tim2$TIM2_SetCounter$429 ==.
                                   1849 ;	../SPL/src/stm8s_tim2.c: 854: TIM2->CNTRH = (uint8_t)(Counter >> 8);
                                   1850 ; genRightShiftLiteral
      00A26D 7B 03            [ 1] 1851 	ld	a, (0x03, sp)
      00A26F 5F               [ 1] 1852 	clrw	x
                                   1853 ; genCast
                                   1854 ; genAssign
                                   1855 ; genPointerSet
      00A270 C7 53 0A         [ 1] 1856 	ld	0x530a, a
                           0003FF  1857 	Sstm8s_tim2$TIM2_SetCounter$430 ==.
                                   1858 ;	../SPL/src/stm8s_tim2.c: 855: TIM2->CNTRL = (uint8_t)(Counter);
                                   1859 ; genCast
                                   1860 ; genAssign
      00A273 7B 04            [ 1] 1861 	ld	a, (0x04, sp)
                                   1862 ; genPointerSet
      00A275 C7 53 0B         [ 1] 1863 	ld	0x530b, a
                                   1864 ; genLabel
      00A278                       1865 00101$:
                           000404  1866 	Sstm8s_tim2$TIM2_SetCounter$431 ==.
                                   1867 ;	../SPL/src/stm8s_tim2.c: 856: }
                                   1868 ; genEndFunction
                           000404  1869 	Sstm8s_tim2$TIM2_SetCounter$432 ==.
                           000404  1870 	XG$TIM2_SetCounter$0$0 ==.
      00A278 81               [ 4] 1871 	ret
                           000405  1872 	Sstm8s_tim2$TIM2_SetCounter$433 ==.
                           000405  1873 	Sstm8s_tim2$TIM2_SetAutoreload$434 ==.
                                   1874 ;	../SPL/src/stm8s_tim2.c: 864: void TIM2_SetAutoreload(uint16_t Autoreload)
                                   1875 ; genLabel
                                   1876 ;	-----------------------------------------
                                   1877 ;	 function TIM2_SetAutoreload
                                   1878 ;	-----------------------------------------
                                   1879 ;	Register assignment is optimal.
                                   1880 ;	Stack space usage: 0 bytes.
      00A279                       1881 _TIM2_SetAutoreload:
                           000405  1882 	Sstm8s_tim2$TIM2_SetAutoreload$435 ==.
                           000405  1883 	Sstm8s_tim2$TIM2_SetAutoreload$436 ==.
                                   1884 ;	../SPL/src/stm8s_tim2.c: 867: TIM2->ARRH = (uint8_t)(Autoreload >> 8);
                                   1885 ; genRightShiftLiteral
      00A279 7B 03            [ 1] 1886 	ld	a, (0x03, sp)
      00A27B 5F               [ 1] 1887 	clrw	x
                                   1888 ; genCast
                                   1889 ; genAssign
                                   1890 ; genPointerSet
      00A27C C7 53 0D         [ 1] 1891 	ld	0x530d, a
                           00040B  1892 	Sstm8s_tim2$TIM2_SetAutoreload$437 ==.
                                   1893 ;	../SPL/src/stm8s_tim2.c: 868: TIM2->ARRL = (uint8_t)(Autoreload);
                                   1894 ; genCast
                                   1895 ; genAssign
      00A27F 7B 04            [ 1] 1896 	ld	a, (0x04, sp)
                                   1897 ; genPointerSet
      00A281 C7 53 0E         [ 1] 1898 	ld	0x530e, a
                                   1899 ; genLabel
      00A284                       1900 00101$:
                           000410  1901 	Sstm8s_tim2$TIM2_SetAutoreload$438 ==.
                                   1902 ;	../SPL/src/stm8s_tim2.c: 869: }
                                   1903 ; genEndFunction
                           000410  1904 	Sstm8s_tim2$TIM2_SetAutoreload$439 ==.
                           000410  1905 	XG$TIM2_SetAutoreload$0$0 ==.
      00A284 81               [ 4] 1906 	ret
                           000411  1907 	Sstm8s_tim2$TIM2_SetAutoreload$440 ==.
                           000411  1908 	Sstm8s_tim2$TIM2_SetCompare1$441 ==.
                                   1909 ;	../SPL/src/stm8s_tim2.c: 877: void TIM2_SetCompare1(uint16_t Compare1)
                                   1910 ; genLabel
                                   1911 ;	-----------------------------------------
                                   1912 ;	 function TIM2_SetCompare1
                                   1913 ;	-----------------------------------------
                                   1914 ;	Register assignment is optimal.
                                   1915 ;	Stack space usage: 0 bytes.
      00A285                       1916 _TIM2_SetCompare1:
                           000411  1917 	Sstm8s_tim2$TIM2_SetCompare1$442 ==.
                           000411  1918 	Sstm8s_tim2$TIM2_SetCompare1$443 ==.
                                   1919 ;	../SPL/src/stm8s_tim2.c: 880: TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
                                   1920 ; genRightShiftLiteral
      00A285 7B 03            [ 1] 1921 	ld	a, (0x03, sp)
      00A287 5F               [ 1] 1922 	clrw	x
                                   1923 ; genCast
                                   1924 ; genAssign
                                   1925 ; genPointerSet
      00A288 C7 53 0F         [ 1] 1926 	ld	0x530f, a
                           000417  1927 	Sstm8s_tim2$TIM2_SetCompare1$444 ==.
                                   1928 ;	../SPL/src/stm8s_tim2.c: 881: TIM2->CCR1L = (uint8_t)(Compare1);
                                   1929 ; genCast
                                   1930 ; genAssign
      00A28B 7B 04            [ 1] 1931 	ld	a, (0x04, sp)
                                   1932 ; genPointerSet
      00A28D C7 53 10         [ 1] 1933 	ld	0x5310, a
                                   1934 ; genLabel
      00A290                       1935 00101$:
                           00041C  1936 	Sstm8s_tim2$TIM2_SetCompare1$445 ==.
                                   1937 ;	../SPL/src/stm8s_tim2.c: 882: }
                                   1938 ; genEndFunction
                           00041C  1939 	Sstm8s_tim2$TIM2_SetCompare1$446 ==.
                           00041C  1940 	XG$TIM2_SetCompare1$0$0 ==.
      00A290 81               [ 4] 1941 	ret
                           00041D  1942 	Sstm8s_tim2$TIM2_SetCompare1$447 ==.
                           00041D  1943 	Sstm8s_tim2$TIM2_SetCompare2$448 ==.
                                   1944 ;	../SPL/src/stm8s_tim2.c: 890: void TIM2_SetCompare2(uint16_t Compare2)
                                   1945 ; genLabel
                                   1946 ;	-----------------------------------------
                                   1947 ;	 function TIM2_SetCompare2
                                   1948 ;	-----------------------------------------
                                   1949 ;	Register assignment is optimal.
                                   1950 ;	Stack space usage: 0 bytes.
      00A291                       1951 _TIM2_SetCompare2:
                           00041D  1952 	Sstm8s_tim2$TIM2_SetCompare2$449 ==.
                           00041D  1953 	Sstm8s_tim2$TIM2_SetCompare2$450 ==.
                                   1954 ;	../SPL/src/stm8s_tim2.c: 893: TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
                                   1955 ; genRightShiftLiteral
      00A291 7B 03            [ 1] 1956 	ld	a, (0x03, sp)
      00A293 5F               [ 1] 1957 	clrw	x
                                   1958 ; genCast
                                   1959 ; genAssign
                                   1960 ; genPointerSet
      00A294 C7 53 11         [ 1] 1961 	ld	0x5311, a
                           000423  1962 	Sstm8s_tim2$TIM2_SetCompare2$451 ==.
                                   1963 ;	../SPL/src/stm8s_tim2.c: 894: TIM2->CCR2L = (uint8_t)(Compare2);
                                   1964 ; genCast
                                   1965 ; genAssign
      00A297 7B 04            [ 1] 1966 	ld	a, (0x04, sp)
                                   1967 ; genPointerSet
      00A299 C7 53 12         [ 1] 1968 	ld	0x5312, a
                                   1969 ; genLabel
      00A29C                       1970 00101$:
                           000428  1971 	Sstm8s_tim2$TIM2_SetCompare2$452 ==.
                                   1972 ;	../SPL/src/stm8s_tim2.c: 895: }
                                   1973 ; genEndFunction
                           000428  1974 	Sstm8s_tim2$TIM2_SetCompare2$453 ==.
                           000428  1975 	XG$TIM2_SetCompare2$0$0 ==.
      00A29C 81               [ 4] 1976 	ret
                           000429  1977 	Sstm8s_tim2$TIM2_SetCompare2$454 ==.
                           000429  1978 	Sstm8s_tim2$TIM2_SetCompare3$455 ==.
                                   1979 ;	../SPL/src/stm8s_tim2.c: 903: void TIM2_SetCompare3(uint16_t Compare3)
                                   1980 ; genLabel
                                   1981 ;	-----------------------------------------
                                   1982 ;	 function TIM2_SetCompare3
                                   1983 ;	-----------------------------------------
                                   1984 ;	Register assignment is optimal.
                                   1985 ;	Stack space usage: 0 bytes.
      00A29D                       1986 _TIM2_SetCompare3:
                           000429  1987 	Sstm8s_tim2$TIM2_SetCompare3$456 ==.
                           000429  1988 	Sstm8s_tim2$TIM2_SetCompare3$457 ==.
                                   1989 ;	../SPL/src/stm8s_tim2.c: 906: TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
                                   1990 ; genRightShiftLiteral
      00A29D 7B 03            [ 1] 1991 	ld	a, (0x03, sp)
      00A29F 5F               [ 1] 1992 	clrw	x
                                   1993 ; genCast
                                   1994 ; genAssign
                                   1995 ; genPointerSet
      00A2A0 C7 53 13         [ 1] 1996 	ld	0x5313, a
                           00042F  1997 	Sstm8s_tim2$TIM2_SetCompare3$458 ==.
                                   1998 ;	../SPL/src/stm8s_tim2.c: 907: TIM2->CCR3L = (uint8_t)(Compare3);
                                   1999 ; genCast
                                   2000 ; genAssign
      00A2A3 7B 04            [ 1] 2001 	ld	a, (0x04, sp)
                                   2002 ; genPointerSet
      00A2A5 C7 53 14         [ 1] 2003 	ld	0x5314, a
                                   2004 ; genLabel
      00A2A8                       2005 00101$:
                           000434  2006 	Sstm8s_tim2$TIM2_SetCompare3$459 ==.
                                   2007 ;	../SPL/src/stm8s_tim2.c: 908: }
                                   2008 ; genEndFunction
                           000434  2009 	Sstm8s_tim2$TIM2_SetCompare3$460 ==.
                           000434  2010 	XG$TIM2_SetCompare3$0$0 ==.
      00A2A8 81               [ 4] 2011 	ret
                           000435  2012 	Sstm8s_tim2$TIM2_SetCompare3$461 ==.
                           000435  2013 	Sstm8s_tim2$TIM2_SetIC1Prescaler$462 ==.
                                   2014 ;	../SPL/src/stm8s_tim2.c: 920: void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
                                   2015 ; genLabel
                                   2016 ;	-----------------------------------------
                                   2017 ;	 function TIM2_SetIC1Prescaler
                                   2018 ;	-----------------------------------------
                                   2019 ;	Register assignment is optimal.
                                   2020 ;	Stack space usage: 0 bytes.
      00A2A9                       2021 _TIM2_SetIC1Prescaler:
                           000435  2022 	Sstm8s_tim2$TIM2_SetIC1Prescaler$463 ==.
                           000435  2023 	Sstm8s_tim2$TIM2_SetIC1Prescaler$464 ==.
                                   2024 ;	../SPL/src/stm8s_tim2.c: 926: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
                                   2025 ; genPointerGet
      00A2A9 C6 53 05         [ 1] 2026 	ld	a, 0x5305
                                   2027 ; genAnd
      00A2AC A4 F3            [ 1] 2028 	and	a, #0xf3
                           00043A  2029 	Sstm8s_tim2$TIM2_SetIC1Prescaler$465 ==.
                                   2030 ;	../SPL/src/stm8s_tim2.c: 927: | (uint8_t)TIM2_IC1Prescaler);
                                   2031 ; genOr
      00A2AE 1A 03            [ 1] 2032 	or	a, (0x03, sp)
                                   2033 ; genPointerSet
      00A2B0 C7 53 05         [ 1] 2034 	ld	0x5305, a
                                   2035 ; genLabel
      00A2B3                       2036 00101$:
                           00043F  2037 	Sstm8s_tim2$TIM2_SetIC1Prescaler$466 ==.
                                   2038 ;	../SPL/src/stm8s_tim2.c: 928: }
                                   2039 ; genEndFunction
                           00043F  2040 	Sstm8s_tim2$TIM2_SetIC1Prescaler$467 ==.
                           00043F  2041 	XG$TIM2_SetIC1Prescaler$0$0 ==.
      00A2B3 81               [ 4] 2042 	ret
                           000440  2043 	Sstm8s_tim2$TIM2_SetIC1Prescaler$468 ==.
                           000440  2044 	Sstm8s_tim2$TIM2_SetIC2Prescaler$469 ==.
                                   2045 ;	../SPL/src/stm8s_tim2.c: 940: void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
                                   2046 ; genLabel
                                   2047 ;	-----------------------------------------
                                   2048 ;	 function TIM2_SetIC2Prescaler
                                   2049 ;	-----------------------------------------
                                   2050 ;	Register assignment is optimal.
                                   2051 ;	Stack space usage: 0 bytes.
      00A2B4                       2052 _TIM2_SetIC2Prescaler:
                           000440  2053 	Sstm8s_tim2$TIM2_SetIC2Prescaler$470 ==.
                           000440  2054 	Sstm8s_tim2$TIM2_SetIC2Prescaler$471 ==.
                                   2055 ;	../SPL/src/stm8s_tim2.c: 946: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
                                   2056 ; genPointerGet
      00A2B4 C6 53 06         [ 1] 2057 	ld	a, 0x5306
                                   2058 ; genAnd
      00A2B7 A4 F3            [ 1] 2059 	and	a, #0xf3
                           000445  2060 	Sstm8s_tim2$TIM2_SetIC2Prescaler$472 ==.
                                   2061 ;	../SPL/src/stm8s_tim2.c: 947: | (uint8_t)TIM2_IC2Prescaler);
                                   2062 ; genOr
      00A2B9 1A 03            [ 1] 2063 	or	a, (0x03, sp)
                                   2064 ; genPointerSet
      00A2BB C7 53 06         [ 1] 2065 	ld	0x5306, a
                                   2066 ; genLabel
      00A2BE                       2067 00101$:
                           00044A  2068 	Sstm8s_tim2$TIM2_SetIC2Prescaler$473 ==.
                                   2069 ;	../SPL/src/stm8s_tim2.c: 948: }
                                   2070 ; genEndFunction
                           00044A  2071 	Sstm8s_tim2$TIM2_SetIC2Prescaler$474 ==.
                           00044A  2072 	XG$TIM2_SetIC2Prescaler$0$0 ==.
      00A2BE 81               [ 4] 2073 	ret
                           00044B  2074 	Sstm8s_tim2$TIM2_SetIC2Prescaler$475 ==.
                           00044B  2075 	Sstm8s_tim2$TIM2_SetIC3Prescaler$476 ==.
                                   2076 ;	../SPL/src/stm8s_tim2.c: 960: void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
                                   2077 ; genLabel
                                   2078 ;	-----------------------------------------
                                   2079 ;	 function TIM2_SetIC3Prescaler
                                   2080 ;	-----------------------------------------
                                   2081 ;	Register assignment is optimal.
                                   2082 ;	Stack space usage: 0 bytes.
      00A2BF                       2083 _TIM2_SetIC3Prescaler:
                           00044B  2084 	Sstm8s_tim2$TIM2_SetIC3Prescaler$477 ==.
                           00044B  2085 	Sstm8s_tim2$TIM2_SetIC3Prescaler$478 ==.
                                   2086 ;	../SPL/src/stm8s_tim2.c: 966: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
                                   2087 ; genPointerGet
      00A2BF C6 53 07         [ 1] 2088 	ld	a, 0x5307
                                   2089 ; genAnd
      00A2C2 A4 F3            [ 1] 2090 	and	a, #0xf3
                           000450  2091 	Sstm8s_tim2$TIM2_SetIC3Prescaler$479 ==.
                                   2092 ;	../SPL/src/stm8s_tim2.c: 967: | (uint8_t)TIM2_IC3Prescaler);
                                   2093 ; genOr
      00A2C4 1A 03            [ 1] 2094 	or	a, (0x03, sp)
                                   2095 ; genPointerSet
      00A2C6 C7 53 07         [ 1] 2096 	ld	0x5307, a
                                   2097 ; genLabel
      00A2C9                       2098 00101$:
                           000455  2099 	Sstm8s_tim2$TIM2_SetIC3Prescaler$480 ==.
                                   2100 ;	../SPL/src/stm8s_tim2.c: 968: }
                                   2101 ; genEndFunction
                           000455  2102 	Sstm8s_tim2$TIM2_SetIC3Prescaler$481 ==.
                           000455  2103 	XG$TIM2_SetIC3Prescaler$0$0 ==.
      00A2C9 81               [ 4] 2104 	ret
                           000456  2105 	Sstm8s_tim2$TIM2_SetIC3Prescaler$482 ==.
                           000456  2106 	Sstm8s_tim2$TIM2_GetCapture1$483 ==.
                                   2107 ;	../SPL/src/stm8s_tim2.c: 975: uint16_t TIM2_GetCapture1(void)
                                   2108 ; genLabel
                                   2109 ;	-----------------------------------------
                                   2110 ;	 function TIM2_GetCapture1
                                   2111 ;	-----------------------------------------
                                   2112 ;	Register assignment might be sub-optimal.
                                   2113 ;	Stack space usage: 2 bytes.
      00A2CA                       2114 _TIM2_GetCapture1:
                           000456  2115 	Sstm8s_tim2$TIM2_GetCapture1$484 ==.
      00A2CA 89               [ 2] 2116 	pushw	x
                           000457  2117 	Sstm8s_tim2$TIM2_GetCapture1$485 ==.
                           000457  2118 	Sstm8s_tim2$TIM2_GetCapture1$486 ==.
                                   2119 ;	../SPL/src/stm8s_tim2.c: 981: tmpccr1h = TIM2->CCR1H;
                                   2120 ; genPointerGet
      00A2CB C6 53 0F         [ 1] 2121 	ld	a, 0x530f
      00A2CE 95               [ 1] 2122 	ld	xh, a
                           00045B  2123 	Sstm8s_tim2$TIM2_GetCapture1$487 ==.
                                   2124 ;	../SPL/src/stm8s_tim2.c: 982: tmpccr1l = TIM2->CCR1L;
                                   2125 ; genPointerGet
      00A2CF C6 53 10         [ 1] 2126 	ld	a, 0x5310
                           00045E  2127 	Sstm8s_tim2$TIM2_GetCapture1$488 ==.
                                   2128 ;	../SPL/src/stm8s_tim2.c: 984: tmpccr1 = (uint16_t)(tmpccr1l);
                                   2129 ; genCast
                                   2130 ; genAssign
      00A2D2 97               [ 1] 2131 	ld	xl, a
      00A2D3 4F               [ 1] 2132 	clr	a
                                   2133 ; genAssign
                           000460  2134 	Sstm8s_tim2$TIM2_GetCapture1$489 ==.
                                   2135 ;	../SPL/src/stm8s_tim2.c: 985: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
                                   2136 ; genCast
                                   2137 ; genAssign
      00A2D4 90 5F            [ 1] 2138 	clrw	y
                                   2139 ; genLeftShiftLiteral
      00A2D6 0F 02            [ 1] 2140 	clr	(0x02, sp)
                                   2141 ; genOr
      00A2D8 89               [ 2] 2142 	pushw	x
                           000465  2143 	Sstm8s_tim2$TIM2_GetCapture1$490 ==.
      00A2D9 1A 01            [ 1] 2144 	or	a, (1, sp)
      00A2DB 85               [ 2] 2145 	popw	x
                           000468  2146 	Sstm8s_tim2$TIM2_GetCapture1$491 ==.
      00A2DC 95               [ 1] 2147 	ld	xh, a
      00A2DD 9F               [ 1] 2148 	ld	a, xl
      00A2DE 1A 02            [ 1] 2149 	or	a, (0x02, sp)
      00A2E0 97               [ 1] 2150 	ld	xl, a
                                   2151 ; genAssign
                           00046D  2152 	Sstm8s_tim2$TIM2_GetCapture1$492 ==.
                                   2153 ;	../SPL/src/stm8s_tim2.c: 987: return (uint16_t)tmpccr1;
                                   2154 ; genReturn
                                   2155 ; genLabel
      00A2E1                       2156 00101$:
                           00046D  2157 	Sstm8s_tim2$TIM2_GetCapture1$493 ==.
                                   2158 ;	../SPL/src/stm8s_tim2.c: 988: }
                                   2159 ; genEndFunction
      00A2E1 5B 02            [ 2] 2160 	addw	sp, #2
                           00046F  2161 	Sstm8s_tim2$TIM2_GetCapture1$494 ==.
                           00046F  2162 	Sstm8s_tim2$TIM2_GetCapture1$495 ==.
                           00046F  2163 	XG$TIM2_GetCapture1$0$0 ==.
      00A2E3 81               [ 4] 2164 	ret
                           000470  2165 	Sstm8s_tim2$TIM2_GetCapture1$496 ==.
                           000470  2166 	Sstm8s_tim2$TIM2_GetCapture2$497 ==.
                                   2167 ;	../SPL/src/stm8s_tim2.c: 995: uint16_t TIM2_GetCapture2(void)
                                   2168 ; genLabel
                                   2169 ;	-----------------------------------------
                                   2170 ;	 function TIM2_GetCapture2
                                   2171 ;	-----------------------------------------
                                   2172 ;	Register assignment might be sub-optimal.
                                   2173 ;	Stack space usage: 2 bytes.
      00A2E4                       2174 _TIM2_GetCapture2:
                           000470  2175 	Sstm8s_tim2$TIM2_GetCapture2$498 ==.
      00A2E4 89               [ 2] 2176 	pushw	x
                           000471  2177 	Sstm8s_tim2$TIM2_GetCapture2$499 ==.
                           000471  2178 	Sstm8s_tim2$TIM2_GetCapture2$500 ==.
                                   2179 ;	../SPL/src/stm8s_tim2.c: 1001: tmpccr2h = TIM2->CCR2H;
                                   2180 ; genPointerGet
      00A2E5 C6 53 11         [ 1] 2181 	ld	a, 0x5311
      00A2E8 95               [ 1] 2182 	ld	xh, a
                           000475  2183 	Sstm8s_tim2$TIM2_GetCapture2$501 ==.
                                   2184 ;	../SPL/src/stm8s_tim2.c: 1002: tmpccr2l = TIM2->CCR2L;
                                   2185 ; genPointerGet
      00A2E9 C6 53 12         [ 1] 2186 	ld	a, 0x5312
                           000478  2187 	Sstm8s_tim2$TIM2_GetCapture2$502 ==.
                                   2188 ;	../SPL/src/stm8s_tim2.c: 1004: tmpccr2 = (uint16_t)(tmpccr2l);
                                   2189 ; genCast
                                   2190 ; genAssign
      00A2EC 97               [ 1] 2191 	ld	xl, a
      00A2ED 4F               [ 1] 2192 	clr	a
                                   2193 ; genAssign
                           00047A  2194 	Sstm8s_tim2$TIM2_GetCapture2$503 ==.
                                   2195 ;	../SPL/src/stm8s_tim2.c: 1005: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
                                   2196 ; genCast
                                   2197 ; genAssign
      00A2EE 90 5F            [ 1] 2198 	clrw	y
                                   2199 ; genLeftShiftLiteral
      00A2F0 0F 02            [ 1] 2200 	clr	(0x02, sp)
                                   2201 ; genOr
      00A2F2 89               [ 2] 2202 	pushw	x
                           00047F  2203 	Sstm8s_tim2$TIM2_GetCapture2$504 ==.
      00A2F3 1A 01            [ 1] 2204 	or	a, (1, sp)
      00A2F5 85               [ 2] 2205 	popw	x
                           000482  2206 	Sstm8s_tim2$TIM2_GetCapture2$505 ==.
      00A2F6 95               [ 1] 2207 	ld	xh, a
      00A2F7 9F               [ 1] 2208 	ld	a, xl
      00A2F8 1A 02            [ 1] 2209 	or	a, (0x02, sp)
      00A2FA 97               [ 1] 2210 	ld	xl, a
                                   2211 ; genAssign
                           000487  2212 	Sstm8s_tim2$TIM2_GetCapture2$506 ==.
                                   2213 ;	../SPL/src/stm8s_tim2.c: 1007: return (uint16_t)tmpccr2;
                                   2214 ; genReturn
                                   2215 ; genLabel
      00A2FB                       2216 00101$:
                           000487  2217 	Sstm8s_tim2$TIM2_GetCapture2$507 ==.
                                   2218 ;	../SPL/src/stm8s_tim2.c: 1008: }
                                   2219 ; genEndFunction
      00A2FB 5B 02            [ 2] 2220 	addw	sp, #2
                           000489  2221 	Sstm8s_tim2$TIM2_GetCapture2$508 ==.
                           000489  2222 	Sstm8s_tim2$TIM2_GetCapture2$509 ==.
                           000489  2223 	XG$TIM2_GetCapture2$0$0 ==.
      00A2FD 81               [ 4] 2224 	ret
                           00048A  2225 	Sstm8s_tim2$TIM2_GetCapture2$510 ==.
                           00048A  2226 	Sstm8s_tim2$TIM2_GetCapture3$511 ==.
                                   2227 ;	../SPL/src/stm8s_tim2.c: 1015: uint16_t TIM2_GetCapture3(void)
                                   2228 ; genLabel
                                   2229 ;	-----------------------------------------
                                   2230 ;	 function TIM2_GetCapture3
                                   2231 ;	-----------------------------------------
                                   2232 ;	Register assignment might be sub-optimal.
                                   2233 ;	Stack space usage: 2 bytes.
      00A2FE                       2234 _TIM2_GetCapture3:
                           00048A  2235 	Sstm8s_tim2$TIM2_GetCapture3$512 ==.
      00A2FE 89               [ 2] 2236 	pushw	x
                           00048B  2237 	Sstm8s_tim2$TIM2_GetCapture3$513 ==.
                           00048B  2238 	Sstm8s_tim2$TIM2_GetCapture3$514 ==.
                                   2239 ;	../SPL/src/stm8s_tim2.c: 1021: tmpccr3h = TIM2->CCR3H;
                                   2240 ; genPointerGet
      00A2FF C6 53 13         [ 1] 2241 	ld	a, 0x5313
      00A302 95               [ 1] 2242 	ld	xh, a
                           00048F  2243 	Sstm8s_tim2$TIM2_GetCapture3$515 ==.
                                   2244 ;	../SPL/src/stm8s_tim2.c: 1022: tmpccr3l = TIM2->CCR3L;
                                   2245 ; genPointerGet
      00A303 C6 53 14         [ 1] 2246 	ld	a, 0x5314
                           000492  2247 	Sstm8s_tim2$TIM2_GetCapture3$516 ==.
                                   2248 ;	../SPL/src/stm8s_tim2.c: 1024: tmpccr3 = (uint16_t)(tmpccr3l);
                                   2249 ; genCast
                                   2250 ; genAssign
      00A306 97               [ 1] 2251 	ld	xl, a
      00A307 4F               [ 1] 2252 	clr	a
                                   2253 ; genAssign
                           000494  2254 	Sstm8s_tim2$TIM2_GetCapture3$517 ==.
                                   2255 ;	../SPL/src/stm8s_tim2.c: 1025: tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
                                   2256 ; genCast
                                   2257 ; genAssign
      00A308 90 5F            [ 1] 2258 	clrw	y
                                   2259 ; genLeftShiftLiteral
      00A30A 0F 02            [ 1] 2260 	clr	(0x02, sp)
                                   2261 ; genOr
      00A30C 89               [ 2] 2262 	pushw	x
                           000499  2263 	Sstm8s_tim2$TIM2_GetCapture3$518 ==.
      00A30D 1A 01            [ 1] 2264 	or	a, (1, sp)
      00A30F 85               [ 2] 2265 	popw	x
                           00049C  2266 	Sstm8s_tim2$TIM2_GetCapture3$519 ==.
      00A310 95               [ 1] 2267 	ld	xh, a
      00A311 9F               [ 1] 2268 	ld	a, xl
      00A312 1A 02            [ 1] 2269 	or	a, (0x02, sp)
      00A314 97               [ 1] 2270 	ld	xl, a
                                   2271 ; genAssign
                           0004A1  2272 	Sstm8s_tim2$TIM2_GetCapture3$520 ==.
                                   2273 ;	../SPL/src/stm8s_tim2.c: 1027: return (uint16_t)tmpccr3;
                                   2274 ; genReturn
                                   2275 ; genLabel
      00A315                       2276 00101$:
                           0004A1  2277 	Sstm8s_tim2$TIM2_GetCapture3$521 ==.
                                   2278 ;	../SPL/src/stm8s_tim2.c: 1028: }
                                   2279 ; genEndFunction
      00A315 5B 02            [ 2] 2280 	addw	sp, #2
                           0004A3  2281 	Sstm8s_tim2$TIM2_GetCapture3$522 ==.
                           0004A3  2282 	Sstm8s_tim2$TIM2_GetCapture3$523 ==.
                           0004A3  2283 	XG$TIM2_GetCapture3$0$0 ==.
      00A317 81               [ 4] 2284 	ret
                           0004A4  2285 	Sstm8s_tim2$TIM2_GetCapture3$524 ==.
                           0004A4  2286 	Sstm8s_tim2$TIM2_GetCounter$525 ==.
                                   2287 ;	../SPL/src/stm8s_tim2.c: 1035: uint16_t TIM2_GetCounter(void)
                                   2288 ; genLabel
                                   2289 ;	-----------------------------------------
                                   2290 ;	 function TIM2_GetCounter
                                   2291 ;	-----------------------------------------
                                   2292 ;	Register assignment might be sub-optimal.
                                   2293 ;	Stack space usage: 4 bytes.
      00A318                       2294 _TIM2_GetCounter:
                           0004A4  2295 	Sstm8s_tim2$TIM2_GetCounter$526 ==.
      00A318 52 04            [ 2] 2296 	sub	sp, #4
                           0004A6  2297 	Sstm8s_tim2$TIM2_GetCounter$527 ==.
                           0004A6  2298 	Sstm8s_tim2$TIM2_GetCounter$528 ==.
                                   2299 ;	../SPL/src/stm8s_tim2.c: 1039: tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
                                   2300 ; genPointerGet
      00A31A C6 53 0A         [ 1] 2301 	ld	a, 0x530a
                                   2302 ; genCast
                                   2303 ; genAssign
      00A31D 5F               [ 1] 2304 	clrw	x
                                   2305 ; genLeftShiftLiteral
      00A31E 95               [ 1] 2306 	ld	xh, a
      00A31F 4F               [ 1] 2307 	clr	a
                                   2308 ; genAssign
      00A320 6B 02            [ 1] 2309 	ld	(0x02, sp), a
                           0004AE  2310 	Sstm8s_tim2$TIM2_GetCounter$529 ==.
                                   2311 ;	../SPL/src/stm8s_tim2.c: 1041: return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
                                   2312 ; genPointerGet
      00A322 C6 53 0B         [ 1] 2313 	ld	a, 0x530b
                                   2314 ; genCast
                                   2315 ; genAssign
      00A325 0F 03            [ 1] 2316 	clr	(0x03, sp)
                                   2317 ; genOr
      00A327 1A 02            [ 1] 2318 	or	a, (0x02, sp)
      00A329 97               [ 1] 2319 	ld	xl, a
      00A32A 9E               [ 1] 2320 	ld	a, xh
      00A32B 1A 03            [ 1] 2321 	or	a, (0x03, sp)
                                   2322 ; genReturn
      00A32D 95               [ 1] 2323 	ld	xh, a
                                   2324 ; genLabel
      00A32E                       2325 00101$:
                           0004BA  2326 	Sstm8s_tim2$TIM2_GetCounter$530 ==.
                                   2327 ;	../SPL/src/stm8s_tim2.c: 1042: }
                                   2328 ; genEndFunction
      00A32E 5B 04            [ 2] 2329 	addw	sp, #4
                           0004BC  2330 	Sstm8s_tim2$TIM2_GetCounter$531 ==.
                           0004BC  2331 	Sstm8s_tim2$TIM2_GetCounter$532 ==.
                           0004BC  2332 	XG$TIM2_GetCounter$0$0 ==.
      00A330 81               [ 4] 2333 	ret
                           0004BD  2334 	Sstm8s_tim2$TIM2_GetCounter$533 ==.
                           0004BD  2335 	Sstm8s_tim2$TIM2_GetPrescaler$534 ==.
                                   2336 ;	../SPL/src/stm8s_tim2.c: 1049: TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
                                   2337 ; genLabel
                                   2338 ;	-----------------------------------------
                                   2339 ;	 function TIM2_GetPrescaler
                                   2340 ;	-----------------------------------------
                                   2341 ;	Register assignment is optimal.
                                   2342 ;	Stack space usage: 0 bytes.
      00A331                       2343 _TIM2_GetPrescaler:
                           0004BD  2344 	Sstm8s_tim2$TIM2_GetPrescaler$535 ==.
                           0004BD  2345 	Sstm8s_tim2$TIM2_GetPrescaler$536 ==.
                                   2346 ;	../SPL/src/stm8s_tim2.c: 1052: return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
                                   2347 ; genPointerGet
      00A331 C6 53 0C         [ 1] 2348 	ld	a, 0x530c
                                   2349 ; genReturn
                                   2350 ; genLabel
      00A334                       2351 00101$:
                           0004C0  2352 	Sstm8s_tim2$TIM2_GetPrescaler$537 ==.
                                   2353 ;	../SPL/src/stm8s_tim2.c: 1053: }
                                   2354 ; genEndFunction
                           0004C0  2355 	Sstm8s_tim2$TIM2_GetPrescaler$538 ==.
                           0004C0  2356 	XG$TIM2_GetPrescaler$0$0 ==.
      00A334 81               [ 4] 2357 	ret
                           0004C1  2358 	Sstm8s_tim2$TIM2_GetPrescaler$539 ==.
                           0004C1  2359 	Sstm8s_tim2$TIM2_GetFlagStatus$540 ==.
                                   2360 ;	../SPL/src/stm8s_tim2.c: 1068: FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
                                   2361 ; genLabel
                                   2362 ;	-----------------------------------------
                                   2363 ;	 function TIM2_GetFlagStatus
                                   2364 ;	-----------------------------------------
                                   2365 ;	Register assignment might be sub-optimal.
                                   2366 ;	Stack space usage: 1 bytes.
      00A335                       2367 _TIM2_GetFlagStatus:
                           0004C1  2368 	Sstm8s_tim2$TIM2_GetFlagStatus$541 ==.
      00A335 88               [ 1] 2369 	push	a
                           0004C2  2370 	Sstm8s_tim2$TIM2_GetFlagStatus$542 ==.
                           0004C2  2371 	Sstm8s_tim2$TIM2_GetFlagStatus$543 ==.
                                   2372 ;	../SPL/src/stm8s_tim2.c: 1076: tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
                                   2373 ; genPointerGet
      00A336 C6 53 02         [ 1] 2374 	ld	a, 0x5302
      00A339 6B 01            [ 1] 2375 	ld	(0x01, sp), a
                                   2376 ; genCast
                                   2377 ; genAssign
      00A33B 7B 05            [ 1] 2378 	ld	a, (0x05, sp)
                                   2379 ; genAnd
      00A33D 14 01            [ 1] 2380 	and	a, (0x01, sp)
                                   2381 ; genAssign
      00A33F 6B 01            [ 1] 2382 	ld	(0x01, sp), a
                           0004CD  2383 	Sstm8s_tim2$TIM2_GetFlagStatus$544 ==.
                                   2384 ;	../SPL/src/stm8s_tim2.c: 1077: tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
                                   2385 ; genCast
                                   2386 ; genAssign
      00A341 1E 04            [ 2] 2387 	ldw	x, (0x04, sp)
                                   2388 ; genRightShiftLiteral
      00A343 4F               [ 1] 2389 	clr	a
                                   2390 ; genCast
                                   2391 ; genAssign
                           0004D0  2392 	Sstm8s_tim2$TIM2_GetFlagStatus$545 ==.
                                   2393 ;	../SPL/src/stm8s_tim2.c: 1079: if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
                                   2394 ; genPointerGet
      00A344 C6 53 03         [ 1] 2395 	ld	a, 0x5303
                                   2396 ; genAnd
      00A347 89               [ 2] 2397 	pushw	x
                           0004D4  2398 	Sstm8s_tim2$TIM2_GetFlagStatus$546 ==.
      00A348 14 01            [ 1] 2399 	and	a, (1, sp)
      00A34A 85               [ 2] 2400 	popw	x
                           0004D7  2401 	Sstm8s_tim2$TIM2_GetFlagStatus$547 ==.
                                   2402 ; genOr
      00A34B 1A 01            [ 1] 2403 	or	a, (0x01, sp)
                                   2404 ; genIfx
      00A34D 4D               [ 1] 2405 	tnz	a
      00A34E 26 03            [ 1] 2406 	jrne	00111$
      00A350 CC A3 58         [ 2] 2407 	jp	00102$
      00A353                       2408 00111$:
                           0004DF  2409 	Sstm8s_tim2$TIM2_GetFlagStatus$548 ==.
                           0004DF  2410 	Sstm8s_tim2$TIM2_GetFlagStatus$549 ==.
                                   2411 ;	../SPL/src/stm8s_tim2.c: 1081: bitstatus = SET;
                                   2412 ; genAssign
      00A353 A6 01            [ 1] 2413 	ld	a, #0x01
                           0004E1  2414 	Sstm8s_tim2$TIM2_GetFlagStatus$550 ==.
                                   2415 ; genGoto
      00A355 CC A3 59         [ 2] 2416 	jp	00103$
                                   2417 ; genLabel
      00A358                       2418 00102$:
                           0004E4  2419 	Sstm8s_tim2$TIM2_GetFlagStatus$551 ==.
                           0004E4  2420 	Sstm8s_tim2$TIM2_GetFlagStatus$552 ==.
                                   2421 ;	../SPL/src/stm8s_tim2.c: 1085: bitstatus = RESET;
                                   2422 ; genAssign
      00A358 4F               [ 1] 2423 	clr	a
                           0004E5  2424 	Sstm8s_tim2$TIM2_GetFlagStatus$553 ==.
                                   2425 ; genLabel
      00A359                       2426 00103$:
                           0004E5  2427 	Sstm8s_tim2$TIM2_GetFlagStatus$554 ==.
                                   2428 ;	../SPL/src/stm8s_tim2.c: 1087: return (FlagStatus)bitstatus;
                                   2429 ; genReturn
                                   2430 ; genLabel
      00A359                       2431 00104$:
                           0004E5  2432 	Sstm8s_tim2$TIM2_GetFlagStatus$555 ==.
                                   2433 ;	../SPL/src/stm8s_tim2.c: 1088: }
                                   2434 ; genEndFunction
      00A359 5B 01            [ 2] 2435 	addw	sp, #1
                           0004E7  2436 	Sstm8s_tim2$TIM2_GetFlagStatus$556 ==.
                           0004E7  2437 	Sstm8s_tim2$TIM2_GetFlagStatus$557 ==.
                           0004E7  2438 	XG$TIM2_GetFlagStatus$0$0 ==.
      00A35B 81               [ 4] 2439 	ret
                           0004E8  2440 	Sstm8s_tim2$TIM2_GetFlagStatus$558 ==.
                           0004E8  2441 	Sstm8s_tim2$TIM2_ClearFlag$559 ==.
                                   2442 ;	../SPL/src/stm8s_tim2.c: 1103: void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
                                   2443 ; genLabel
                                   2444 ;	-----------------------------------------
                                   2445 ;	 function TIM2_ClearFlag
                                   2446 ;	-----------------------------------------
                                   2447 ;	Register assignment is optimal.
                                   2448 ;	Stack space usage: 0 bytes.
      00A35C                       2449 _TIM2_ClearFlag:
                           0004E8  2450 	Sstm8s_tim2$TIM2_ClearFlag$560 ==.
                           0004E8  2451 	Sstm8s_tim2$TIM2_ClearFlag$561 ==.
                                   2452 ;	../SPL/src/stm8s_tim2.c: 1109: TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
                                   2453 ; genCast
                                   2454 ; genAssign
      00A35C 7B 04            [ 1] 2455 	ld	a, (0x04, sp)
                                   2456 ; genCpl
      00A35E 43               [ 1] 2457 	cpl	a
                                   2458 ; genPointerSet
      00A35F C7 53 02         [ 1] 2459 	ld	0x5302, a
                           0004EE  2460 	Sstm8s_tim2$TIM2_ClearFlag$562 ==.
                                   2461 ;	../SPL/src/stm8s_tim2.c: 1110: TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
                                   2462 ; genPointerSet
      00A362 35 FF 53 03      [ 1] 2463 	mov	0x5303+0, #0xff
                                   2464 ; genLabel
      00A366                       2465 00101$:
                           0004F2  2466 	Sstm8s_tim2$TIM2_ClearFlag$563 ==.
                                   2467 ;	../SPL/src/stm8s_tim2.c: 1111: }
                                   2468 ; genEndFunction
                           0004F2  2469 	Sstm8s_tim2$TIM2_ClearFlag$564 ==.
                           0004F2  2470 	XG$TIM2_ClearFlag$0$0 ==.
      00A366 81               [ 4] 2471 	ret
                           0004F3  2472 	Sstm8s_tim2$TIM2_ClearFlag$565 ==.
                           0004F3  2473 	Sstm8s_tim2$TIM2_GetITStatus$566 ==.
                                   2474 ;	../SPL/src/stm8s_tim2.c: 1123: ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
                                   2475 ; genLabel
                                   2476 ;	-----------------------------------------
                                   2477 ;	 function TIM2_GetITStatus
                                   2478 ;	-----------------------------------------
                                   2479 ;	Register assignment is optimal.
                                   2480 ;	Stack space usage: 1 bytes.
      00A367                       2481 _TIM2_GetITStatus:
                           0004F3  2482 	Sstm8s_tim2$TIM2_GetITStatus$567 ==.
      00A367 88               [ 1] 2483 	push	a
                           0004F4  2484 	Sstm8s_tim2$TIM2_GetITStatus$568 ==.
                           0004F4  2485 	Sstm8s_tim2$TIM2_GetITStatus$569 ==.
                                   2486 ;	../SPL/src/stm8s_tim2.c: 1131: TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
                                   2487 ; genPointerGet
      00A368 C6 53 02         [ 1] 2488 	ld	a, 0x5302
                                   2489 ; genAnd
      00A36B 14 04            [ 1] 2490 	and	a, (0x04, sp)
                                   2491 ; genAssign
      00A36D 6B 01            [ 1] 2492 	ld	(0x01, sp), a
                           0004FB  2493 	Sstm8s_tim2$TIM2_GetITStatus$570 ==.
                                   2494 ;	../SPL/src/stm8s_tim2.c: 1133: TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
                                   2495 ; genPointerGet
      00A36F C6 53 01         [ 1] 2496 	ld	a, 0x5301
                                   2497 ; genAnd
      00A372 14 04            [ 1] 2498 	and	a, (0x04, sp)
                                   2499 ; genAssign
                           000500  2500 	Sstm8s_tim2$TIM2_GetITStatus$571 ==.
                                   2501 ;	../SPL/src/stm8s_tim2.c: 1135: if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
                                   2502 ; genIfx
      00A374 0D 01            [ 1] 2503 	tnz	(0x01, sp)
      00A376 26 03            [ 1] 2504 	jrne	00117$
      00A378 CC A3 86         [ 2] 2505 	jp	00102$
      00A37B                       2506 00117$:
                                   2507 ; genIfx
      00A37B 4D               [ 1] 2508 	tnz	a
      00A37C 26 03            [ 1] 2509 	jrne	00118$
      00A37E CC A3 86         [ 2] 2510 	jp	00102$
      00A381                       2511 00118$:
                           00050D  2512 	Sstm8s_tim2$TIM2_GetITStatus$572 ==.
                           00050D  2513 	Sstm8s_tim2$TIM2_GetITStatus$573 ==.
                                   2514 ;	../SPL/src/stm8s_tim2.c: 1137: bitstatus = SET;
                                   2515 ; genAssign
      00A381 A6 01            [ 1] 2516 	ld	a, #0x01
                           00050F  2517 	Sstm8s_tim2$TIM2_GetITStatus$574 ==.
                                   2518 ; genGoto
      00A383 CC A3 87         [ 2] 2519 	jp	00103$
                                   2520 ; genLabel
      00A386                       2521 00102$:
                           000512  2522 	Sstm8s_tim2$TIM2_GetITStatus$575 ==.
                           000512  2523 	Sstm8s_tim2$TIM2_GetITStatus$576 ==.
                                   2524 ;	../SPL/src/stm8s_tim2.c: 1141: bitstatus = RESET;
                                   2525 ; genAssign
      00A386 4F               [ 1] 2526 	clr	a
                           000513  2527 	Sstm8s_tim2$TIM2_GetITStatus$577 ==.
                                   2528 ; genLabel
      00A387                       2529 00103$:
                           000513  2530 	Sstm8s_tim2$TIM2_GetITStatus$578 ==.
                                   2531 ;	../SPL/src/stm8s_tim2.c: 1143: return (ITStatus)(bitstatus);
                                   2532 ; genReturn
                                   2533 ; genLabel
      00A387                       2534 00105$:
                           000513  2535 	Sstm8s_tim2$TIM2_GetITStatus$579 ==.
                                   2536 ;	../SPL/src/stm8s_tim2.c: 1144: }
                                   2537 ; genEndFunction
      00A387 5B 01            [ 2] 2538 	addw	sp, #1
                           000515  2539 	Sstm8s_tim2$TIM2_GetITStatus$580 ==.
                           000515  2540 	Sstm8s_tim2$TIM2_GetITStatus$581 ==.
                           000515  2541 	XG$TIM2_GetITStatus$0$0 ==.
      00A389 81               [ 4] 2542 	ret
                           000516  2543 	Sstm8s_tim2$TIM2_GetITStatus$582 ==.
                           000516  2544 	Sstm8s_tim2$TIM2_ClearITPendingBit$583 ==.
                                   2545 ;	../SPL/src/stm8s_tim2.c: 1156: void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
                                   2546 ; genLabel
                                   2547 ;	-----------------------------------------
                                   2548 ;	 function TIM2_ClearITPendingBit
                                   2549 ;	-----------------------------------------
                                   2550 ;	Register assignment is optimal.
                                   2551 ;	Stack space usage: 0 bytes.
      00A38A                       2552 _TIM2_ClearITPendingBit:
                           000516  2553 	Sstm8s_tim2$TIM2_ClearITPendingBit$584 ==.
                           000516  2554 	Sstm8s_tim2$TIM2_ClearITPendingBit$585 ==.
                                   2555 ;	../SPL/src/stm8s_tim2.c: 1162: TIM2->SR1 = (uint8_t)(~TIM2_IT);
                                   2556 ; genCpl
      00A38A 7B 03            [ 1] 2557 	ld	a, (0x03, sp)
      00A38C 43               [ 1] 2558 	cpl	a
                                   2559 ; genPointerSet
      00A38D C7 53 02         [ 1] 2560 	ld	0x5302, a
                                   2561 ; genLabel
      00A390                       2562 00101$:
                           00051C  2563 	Sstm8s_tim2$TIM2_ClearITPendingBit$586 ==.
                                   2564 ;	../SPL/src/stm8s_tim2.c: 1163: }
                                   2565 ; genEndFunction
                           00051C  2566 	Sstm8s_tim2$TIM2_ClearITPendingBit$587 ==.
                           00051C  2567 	XG$TIM2_ClearITPendingBit$0$0 ==.
      00A390 81               [ 4] 2568 	ret
                           00051D  2569 	Sstm8s_tim2$TIM2_ClearITPendingBit$588 ==.
                           00051D  2570 	Sstm8s_tim2$TI1_Config$589 ==.
                                   2571 ;	../SPL/src/stm8s_tim2.c: 1181: static void TI1_Config(uint8_t TIM2_ICPolarity,
                                   2572 ; genLabel
                                   2573 ;	-----------------------------------------
                                   2574 ;	 function TI1_Config
                                   2575 ;	-----------------------------------------
                                   2576 ;	Register assignment is optimal.
                                   2577 ;	Stack space usage: 1 bytes.
      00A391                       2578 _TI1_Config:
                           00051D  2579 	Sstm8s_tim2$TI1_Config$590 ==.
      00A391 88               [ 1] 2580 	push	a
                           00051E  2581 	Sstm8s_tim2$TI1_Config$591 ==.
                           00051E  2582 	Sstm8s_tim2$TI1_Config$592 ==.
                                   2583 ;	../SPL/src/stm8s_tim2.c: 1186: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
                                   2584 ; genPointerGet
      00A392 C6 53 08         [ 1] 2585 	ld	a, 0x5308
                                   2586 ; genAnd
      00A395 A4 FE            [ 1] 2587 	and	a, #0xfe
                                   2588 ; genPointerSet
      00A397 C7 53 08         [ 1] 2589 	ld	0x5308, a
                           000526  2590 	Sstm8s_tim2$TI1_Config$593 ==.
                                   2591 ;	../SPL/src/stm8s_tim2.c: 1189: TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
                                   2592 ; genPointerGet
      00A39A C6 53 05         [ 1] 2593 	ld	a, 0x5305
                                   2594 ; genAnd
      00A39D A4 0C            [ 1] 2595 	and	a, #0x0c
      00A39F 6B 01            [ 1] 2596 	ld	(0x01, sp), a
                           00052D  2597 	Sstm8s_tim2$TI1_Config$594 ==.
                                   2598 ;	../SPL/src/stm8s_tim2.c: 1190: | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
                                   2599 ; genCast
                                   2600 ; genAssign
      00A3A1 7B 06            [ 1] 2601 	ld	a, (0x06, sp)
                                   2602 ; genLeftShiftLiteral
      00A3A3 4E               [ 1] 2603 	swap	a
      00A3A4 A4 F0            [ 1] 2604 	and	a, #0xf0
                                   2605 ; genCast
                                   2606 ; genAssign
                                   2607 ; genOr
      00A3A6 1A 05            [ 1] 2608 	or	a, (0x05, sp)
                                   2609 ; genOr
      00A3A8 1A 01            [ 1] 2610 	or	a, (0x01, sp)
                                   2611 ; genPointerSet
      00A3AA C7 53 05         [ 1] 2612 	ld	0x5305, a
                           000539  2613 	Sstm8s_tim2$TI1_Config$595 ==.
                                   2614 ;	../SPL/src/stm8s_tim2.c: 1186: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
                                   2615 ; genPointerGet
      00A3AD C6 53 08         [ 1] 2616 	ld	a, 0x5308
                           00053C  2617 	Sstm8s_tim2$TI1_Config$596 ==.
                                   2618 ;	../SPL/src/stm8s_tim2.c: 1193: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
                                   2619 ; genIfx
      00A3B0 0D 04            [ 1] 2620 	tnz	(0x04, sp)
      00A3B2 26 03            [ 1] 2621 	jrne	00111$
      00A3B4 CC A3 BF         [ 2] 2622 	jp	00102$
      00A3B7                       2623 00111$:
                           000543  2624 	Sstm8s_tim2$TI1_Config$597 ==.
                           000543  2625 	Sstm8s_tim2$TI1_Config$598 ==.
                                   2626 ;	../SPL/src/stm8s_tim2.c: 1195: TIM2->CCER1 |= TIM2_CCER1_CC1P;
                                   2627 ; genOr
      00A3B7 AA 02            [ 1] 2628 	or	a, #0x02
                                   2629 ; genPointerSet
      00A3B9 C7 53 08         [ 1] 2630 	ld	0x5308, a
                           000548  2631 	Sstm8s_tim2$TI1_Config$599 ==.
                                   2632 ; genGoto
      00A3BC CC A3 C4         [ 2] 2633 	jp	00103$
                                   2634 ; genLabel
      00A3BF                       2635 00102$:
                           00054B  2636 	Sstm8s_tim2$TI1_Config$600 ==.
                           00054B  2637 	Sstm8s_tim2$TI1_Config$601 ==.
                                   2638 ;	../SPL/src/stm8s_tim2.c: 1199: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
                                   2639 ; genAnd
      00A3BF A4 FD            [ 1] 2640 	and	a, #0xfd
                                   2641 ; genPointerSet
      00A3C1 C7 53 08         [ 1] 2642 	ld	0x5308, a
                           000550  2643 	Sstm8s_tim2$TI1_Config$602 ==.
                                   2644 ; genLabel
      00A3C4                       2645 00103$:
                           000550  2646 	Sstm8s_tim2$TI1_Config$603 ==.
                                   2647 ;	../SPL/src/stm8s_tim2.c: 1202: TIM2->CCER1 |= TIM2_CCER1_CC1E;
                                   2648 ; genPointerGet
      00A3C4 C6 53 08         [ 1] 2649 	ld	a, 0x5308
                                   2650 ; genOr
      00A3C7 AA 01            [ 1] 2651 	or	a, #0x01
                                   2652 ; genPointerSet
      00A3C9 C7 53 08         [ 1] 2653 	ld	0x5308, a
                                   2654 ; genLabel
      00A3CC                       2655 00104$:
                           000558  2656 	Sstm8s_tim2$TI1_Config$604 ==.
                                   2657 ;	../SPL/src/stm8s_tim2.c: 1203: }
                                   2658 ; genEndFunction
      00A3CC 84               [ 1] 2659 	pop	a
                           000559  2660 	Sstm8s_tim2$TI1_Config$605 ==.
                           000559  2661 	Sstm8s_tim2$TI1_Config$606 ==.
                           000559  2662 	XFstm8s_tim2$TI1_Config$0$0 ==.
      00A3CD 81               [ 4] 2663 	ret
                           00055A  2664 	Sstm8s_tim2$TI1_Config$607 ==.
                           00055A  2665 	Sstm8s_tim2$TI2_Config$608 ==.
                                   2666 ;	../SPL/src/stm8s_tim2.c: 1221: static void TI2_Config(uint8_t TIM2_ICPolarity,
                                   2667 ; genLabel
                                   2668 ;	-----------------------------------------
                                   2669 ;	 function TI2_Config
                                   2670 ;	-----------------------------------------
                                   2671 ;	Register assignment is optimal.
                                   2672 ;	Stack space usage: 1 bytes.
      00A3CE                       2673 _TI2_Config:
                           00055A  2674 	Sstm8s_tim2$TI2_Config$609 ==.
      00A3CE 88               [ 1] 2675 	push	a
                           00055B  2676 	Sstm8s_tim2$TI2_Config$610 ==.
                           00055B  2677 	Sstm8s_tim2$TI2_Config$611 ==.
                                   2678 ;	../SPL/src/stm8s_tim2.c: 1226: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
                                   2679 ; genPointerGet
      00A3CF C6 53 08         [ 1] 2680 	ld	a, 0x5308
                                   2681 ; genAnd
      00A3D2 A4 EF            [ 1] 2682 	and	a, #0xef
                                   2683 ; genPointerSet
      00A3D4 C7 53 08         [ 1] 2684 	ld	0x5308, a
                           000563  2685 	Sstm8s_tim2$TI2_Config$612 ==.
                                   2686 ;	../SPL/src/stm8s_tim2.c: 1229: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
                                   2687 ; genPointerGet
      00A3D7 C6 53 06         [ 1] 2688 	ld	a, 0x5306
                                   2689 ; genAnd
      00A3DA A4 0C            [ 1] 2690 	and	a, #0x0c
      00A3DC 6B 01            [ 1] 2691 	ld	(0x01, sp), a
                           00056A  2692 	Sstm8s_tim2$TI2_Config$613 ==.
                                   2693 ;	../SPL/src/stm8s_tim2.c: 1230: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
                                   2694 ; genCast
                                   2695 ; genAssign
      00A3DE 7B 06            [ 1] 2696 	ld	a, (0x06, sp)
                                   2697 ; genLeftShiftLiteral
      00A3E0 4E               [ 1] 2698 	swap	a
      00A3E1 A4 F0            [ 1] 2699 	and	a, #0xf0
                                   2700 ; genCast
                                   2701 ; genAssign
                                   2702 ; genOr
      00A3E3 1A 05            [ 1] 2703 	or	a, (0x05, sp)
                                   2704 ; genOr
      00A3E5 1A 01            [ 1] 2705 	or	a, (0x01, sp)
                                   2706 ; genPointerSet
      00A3E7 C7 53 06         [ 1] 2707 	ld	0x5306, a
                           000576  2708 	Sstm8s_tim2$TI2_Config$614 ==.
                                   2709 ;	../SPL/src/stm8s_tim2.c: 1226: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
                                   2710 ; genPointerGet
      00A3EA C6 53 08         [ 1] 2711 	ld	a, 0x5308
                           000579  2712 	Sstm8s_tim2$TI2_Config$615 ==.
                                   2713 ;	../SPL/src/stm8s_tim2.c: 1234: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
                                   2714 ; genIfx
      00A3ED 0D 04            [ 1] 2715 	tnz	(0x04, sp)
      00A3EF 26 03            [ 1] 2716 	jrne	00111$
      00A3F1 CC A3 FC         [ 2] 2717 	jp	00102$
      00A3F4                       2718 00111$:
                           000580  2719 	Sstm8s_tim2$TI2_Config$616 ==.
                           000580  2720 	Sstm8s_tim2$TI2_Config$617 ==.
                                   2721 ;	../SPL/src/stm8s_tim2.c: 1236: TIM2->CCER1 |= TIM2_CCER1_CC2P;
                                   2722 ; genOr
      00A3F4 AA 20            [ 1] 2723 	or	a, #0x20
                                   2724 ; genPointerSet
      00A3F6 C7 53 08         [ 1] 2725 	ld	0x5308, a
                           000585  2726 	Sstm8s_tim2$TI2_Config$618 ==.
                                   2727 ; genGoto
      00A3F9 CC A4 01         [ 2] 2728 	jp	00103$
                                   2729 ; genLabel
      00A3FC                       2730 00102$:
                           000588  2731 	Sstm8s_tim2$TI2_Config$619 ==.
                           000588  2732 	Sstm8s_tim2$TI2_Config$620 ==.
                                   2733 ;	../SPL/src/stm8s_tim2.c: 1240: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
                                   2734 ; genAnd
      00A3FC A4 DF            [ 1] 2735 	and	a, #0xdf
                                   2736 ; genPointerSet
      00A3FE C7 53 08         [ 1] 2737 	ld	0x5308, a
                           00058D  2738 	Sstm8s_tim2$TI2_Config$621 ==.
                                   2739 ; genLabel
      00A401                       2740 00103$:
                           00058D  2741 	Sstm8s_tim2$TI2_Config$622 ==.
                                   2742 ;	../SPL/src/stm8s_tim2.c: 1244: TIM2->CCER1 |= TIM2_CCER1_CC2E;
                                   2743 ; genPointerGet
      00A401 C6 53 08         [ 1] 2744 	ld	a, 0x5308
                                   2745 ; genOr
      00A404 AA 10            [ 1] 2746 	or	a, #0x10
                                   2747 ; genPointerSet
      00A406 C7 53 08         [ 1] 2748 	ld	0x5308, a
                                   2749 ; genLabel
      00A409                       2750 00104$:
                           000595  2751 	Sstm8s_tim2$TI2_Config$623 ==.
                                   2752 ;	../SPL/src/stm8s_tim2.c: 1245: }
                                   2753 ; genEndFunction
      00A409 84               [ 1] 2754 	pop	a
                           000596  2755 	Sstm8s_tim2$TI2_Config$624 ==.
                           000596  2756 	Sstm8s_tim2$TI2_Config$625 ==.
                           000596  2757 	XFstm8s_tim2$TI2_Config$0$0 ==.
      00A40A 81               [ 4] 2758 	ret
                           000597  2759 	Sstm8s_tim2$TI2_Config$626 ==.
                           000597  2760 	Sstm8s_tim2$TI3_Config$627 ==.
                                   2761 ;	../SPL/src/stm8s_tim2.c: 1261: static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
                                   2762 ; genLabel
                                   2763 ;	-----------------------------------------
                                   2764 ;	 function TI3_Config
                                   2765 ;	-----------------------------------------
                                   2766 ;	Register assignment is optimal.
                                   2767 ;	Stack space usage: 1 bytes.
      00A40B                       2768 _TI3_Config:
                           000597  2769 	Sstm8s_tim2$TI3_Config$628 ==.
      00A40B 88               [ 1] 2770 	push	a
                           000598  2771 	Sstm8s_tim2$TI3_Config$629 ==.
                           000598  2772 	Sstm8s_tim2$TI3_Config$630 ==.
                                   2773 ;	../SPL/src/stm8s_tim2.c: 1265: TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
                                   2774 ; genPointerGet
      00A40C C6 53 09         [ 1] 2775 	ld	a, 0x5309
                                   2776 ; genAnd
      00A40F A4 FE            [ 1] 2777 	and	a, #0xfe
                                   2778 ; genPointerSet
      00A411 C7 53 09         [ 1] 2779 	ld	0x5309, a
                           0005A0  2780 	Sstm8s_tim2$TI3_Config$631 ==.
                                   2781 ;	../SPL/src/stm8s_tim2.c: 1268: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
                                   2782 ; genPointerGet
      00A414 C6 53 07         [ 1] 2783 	ld	a, 0x5307
                                   2784 ; genAnd
      00A417 A4 0C            [ 1] 2785 	and	a, #0x0c
      00A419 6B 01            [ 1] 2786 	ld	(0x01, sp), a
                           0005A7  2787 	Sstm8s_tim2$TI3_Config$632 ==.
                                   2788 ;	../SPL/src/stm8s_tim2.c: 1269: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
                                   2789 ; genCast
                                   2790 ; genAssign
      00A41B 7B 06            [ 1] 2791 	ld	a, (0x06, sp)
                                   2792 ; genLeftShiftLiteral
      00A41D 4E               [ 1] 2793 	swap	a
      00A41E A4 F0            [ 1] 2794 	and	a, #0xf0
                                   2795 ; genCast
                                   2796 ; genAssign
                                   2797 ; genOr
      00A420 1A 05            [ 1] 2798 	or	a, (0x05, sp)
                                   2799 ; genOr
      00A422 1A 01            [ 1] 2800 	or	a, (0x01, sp)
                                   2801 ; genPointerSet
      00A424 C7 53 07         [ 1] 2802 	ld	0x5307, a
                           0005B3  2803 	Sstm8s_tim2$TI3_Config$633 ==.
                                   2804 ;	../SPL/src/stm8s_tim2.c: 1265: TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
                                   2805 ; genPointerGet
      00A427 C6 53 09         [ 1] 2806 	ld	a, 0x5309
                           0005B6  2807 	Sstm8s_tim2$TI3_Config$634 ==.
                                   2808 ;	../SPL/src/stm8s_tim2.c: 1273: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
                                   2809 ; genIfx
      00A42A 0D 04            [ 1] 2810 	tnz	(0x04, sp)
      00A42C 26 03            [ 1] 2811 	jrne	00111$
      00A42E CC A4 39         [ 2] 2812 	jp	00102$
      00A431                       2813 00111$:
                           0005BD  2814 	Sstm8s_tim2$TI3_Config$635 ==.
                           0005BD  2815 	Sstm8s_tim2$TI3_Config$636 ==.
                                   2816 ;	../SPL/src/stm8s_tim2.c: 1275: TIM2->CCER2 |= TIM2_CCER2_CC3P;
                                   2817 ; genOr
      00A431 AA 02            [ 1] 2818 	or	a, #0x02
                                   2819 ; genPointerSet
      00A433 C7 53 09         [ 1] 2820 	ld	0x5309, a
                           0005C2  2821 	Sstm8s_tim2$TI3_Config$637 ==.
                                   2822 ; genGoto
      00A436 CC A4 3E         [ 2] 2823 	jp	00103$
                                   2824 ; genLabel
      00A439                       2825 00102$:
                           0005C5  2826 	Sstm8s_tim2$TI3_Config$638 ==.
                           0005C5  2827 	Sstm8s_tim2$TI3_Config$639 ==.
                                   2828 ;	../SPL/src/stm8s_tim2.c: 1279: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
                                   2829 ; genAnd
      00A439 A4 FD            [ 1] 2830 	and	a, #0xfd
                                   2831 ; genPointerSet
      00A43B C7 53 09         [ 1] 2832 	ld	0x5309, a
                           0005CA  2833 	Sstm8s_tim2$TI3_Config$640 ==.
                                   2834 ; genLabel
      00A43E                       2835 00103$:
                           0005CA  2836 	Sstm8s_tim2$TI3_Config$641 ==.
                                   2837 ;	../SPL/src/stm8s_tim2.c: 1282: TIM2->CCER2 |= TIM2_CCER2_CC3E;
                                   2838 ; genPointerGet
      00A43E C6 53 09         [ 1] 2839 	ld	a, 0x5309
                                   2840 ; genOr
      00A441 AA 01            [ 1] 2841 	or	a, #0x01
                                   2842 ; genPointerSet
      00A443 C7 53 09         [ 1] 2843 	ld	0x5309, a
                                   2844 ; genLabel
      00A446                       2845 00104$:
                           0005D2  2846 	Sstm8s_tim2$TI3_Config$642 ==.
                                   2847 ;	../SPL/src/stm8s_tim2.c: 1283: }
                                   2848 ; genEndFunction
      00A446 84               [ 1] 2849 	pop	a
                           0005D3  2850 	Sstm8s_tim2$TI3_Config$643 ==.
                           0005D3  2851 	Sstm8s_tim2$TI3_Config$644 ==.
                           0005D3  2852 	XFstm8s_tim2$TI3_Config$0$0 ==.
      00A447 81               [ 4] 2853 	ret
                           0005D4  2854 	Sstm8s_tim2$TI3_Config$645 ==.
                                   2855 	.area CODE
                                   2856 	.area CONST
                                   2857 	.area INITIALIZER
                                   2858 	.area CABS (ABS)
                                   2859 
                                   2860 	.area .debug_line (NOLOAD)
      002C35 00 00 09 DF           2861 	.dw	0,Ldebug_line_end-Ldebug_line_start
      002C39                       2862 Ldebug_line_start:
      002C39 00 02                 2863 	.dw	2
      002C3B 00 00 00 78           2864 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      002C3F 01                    2865 	.db	1
      002C40 01                    2866 	.db	1
      002C41 FB                    2867 	.db	-5
      002C42 0F                    2868 	.db	15
      002C43 0A                    2869 	.db	10
      002C44 00                    2870 	.db	0
      002C45 01                    2871 	.db	1
      002C46 01                    2872 	.db	1
      002C47 01                    2873 	.db	1
      002C48 01                    2874 	.db	1
      002C49 00                    2875 	.db	0
      002C4A 00                    2876 	.db	0
      002C4B 00                    2877 	.db	0
      002C4C 01                    2878 	.db	1
      002C4D 43 3A 5C 50 72 6F 67  2879 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      002C75 00                    2880 	.db	0
      002C76 43 3A 5C 50 72 6F 67  2881 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      002C99 00                    2882 	.db	0
      002C9A 00                    2883 	.db	0
      002C9B 2E 2E 2F 53 50 4C 2F  2884 	.ascii "../SPL/src/stm8s_tim2.c"
             73 72 63 2F 73 74 6D
             38 73 5F 74 69 6D 32
             2E 63
      002CB2 00                    2885 	.db	0
      002CB3 00                    2886 	.uleb128	0
      002CB4 00                    2887 	.uleb128	0
      002CB5 00                    2888 	.uleb128	0
      002CB6 00                    2889 	.db	0
      002CB7                       2890 Ldebug_line_stmt:
      002CB7 00                    2891 	.db	0
      002CB8 05                    2892 	.uleb128	5
      002CB9 02                    2893 	.db	2
      002CBA 00 00 9E 74           2894 	.dw	0,(Sstm8s_tim2$TIM2_DeInit$0)
      002CBE 03                    2895 	.db	3
      002CBF 33                    2896 	.sleb128	51
      002CC0 01                    2897 	.db	1
      002CC1 09                    2898 	.db	9
      002CC2 00 00                 2899 	.dw	Sstm8s_tim2$TIM2_DeInit$2-Sstm8s_tim2$TIM2_DeInit$0
      002CC4 03                    2900 	.db	3
      002CC5 02                    2901 	.sleb128	2
      002CC6 01                    2902 	.db	1
      002CC7 09                    2903 	.db	9
      002CC8 00 04                 2904 	.dw	Sstm8s_tim2$TIM2_DeInit$3-Sstm8s_tim2$TIM2_DeInit$2
      002CCA 03                    2905 	.db	3
      002CCB 01                    2906 	.sleb128	1
      002CCC 01                    2907 	.db	1
      002CCD 09                    2908 	.db	9
      002CCE 00 04                 2909 	.dw	Sstm8s_tim2$TIM2_DeInit$4-Sstm8s_tim2$TIM2_DeInit$3
      002CD0 03                    2910 	.db	3
      002CD1 01                    2911 	.sleb128	1
      002CD2 01                    2912 	.db	1
      002CD3 09                    2913 	.db	9
      002CD4 00 04                 2914 	.dw	Sstm8s_tim2$TIM2_DeInit$5-Sstm8s_tim2$TIM2_DeInit$4
      002CD6 03                    2915 	.db	3
      002CD7 03                    2916 	.sleb128	3
      002CD8 01                    2917 	.db	1
      002CD9 09                    2918 	.db	9
      002CDA 00 04                 2919 	.dw	Sstm8s_tim2$TIM2_DeInit$6-Sstm8s_tim2$TIM2_DeInit$5
      002CDC 03                    2920 	.db	3
      002CDD 01                    2921 	.sleb128	1
      002CDE 01                    2922 	.db	1
      002CDF 09                    2923 	.db	9
      002CE0 00 04                 2924 	.dw	Sstm8s_tim2$TIM2_DeInit$7-Sstm8s_tim2$TIM2_DeInit$6
      002CE2 03                    2925 	.db	3
      002CE3 04                    2926 	.sleb128	4
      002CE4 01                    2927 	.db	1
      002CE5 09                    2928 	.db	9
      002CE6 00 04                 2929 	.dw	Sstm8s_tim2$TIM2_DeInit$8-Sstm8s_tim2$TIM2_DeInit$7
      002CE8 03                    2930 	.db	3
      002CE9 01                    2931 	.sleb128	1
      002CEA 01                    2932 	.db	1
      002CEB 09                    2933 	.db	9
      002CEC 00 04                 2934 	.dw	Sstm8s_tim2$TIM2_DeInit$9-Sstm8s_tim2$TIM2_DeInit$8
      002CEE 03                    2935 	.db	3
      002CEF 01                    2936 	.sleb128	1
      002CF0 01                    2937 	.db	1
      002CF1 09                    2938 	.db	9
      002CF2 00 04                 2939 	.dw	Sstm8s_tim2$TIM2_DeInit$10-Sstm8s_tim2$TIM2_DeInit$9
      002CF4 03                    2940 	.db	3
      002CF5 01                    2941 	.sleb128	1
      002CF6 01                    2942 	.db	1
      002CF7 09                    2943 	.db	9
      002CF8 00 04                 2944 	.dw	Sstm8s_tim2$TIM2_DeInit$11-Sstm8s_tim2$TIM2_DeInit$10
      002CFA 03                    2945 	.db	3
      002CFB 01                    2946 	.sleb128	1
      002CFC 01                    2947 	.db	1
      002CFD 09                    2948 	.db	9
      002CFE 00 04                 2949 	.dw	Sstm8s_tim2$TIM2_DeInit$12-Sstm8s_tim2$TIM2_DeInit$11
      002D00 03                    2950 	.db	3
      002D01 01                    2951 	.sleb128	1
      002D02 01                    2952 	.db	1
      002D03 09                    2953 	.db	9
      002D04 00 04                 2954 	.dw	Sstm8s_tim2$TIM2_DeInit$13-Sstm8s_tim2$TIM2_DeInit$12
      002D06 03                    2955 	.db	3
      002D07 01                    2956 	.sleb128	1
      002D08 01                    2957 	.db	1
      002D09 09                    2958 	.db	9
      002D0A 00 04                 2959 	.dw	Sstm8s_tim2$TIM2_DeInit$14-Sstm8s_tim2$TIM2_DeInit$13
      002D0C 03                    2960 	.db	3
      002D0D 01                    2961 	.sleb128	1
      002D0E 01                    2962 	.db	1
      002D0F 09                    2963 	.db	9
      002D10 00 04                 2964 	.dw	Sstm8s_tim2$TIM2_DeInit$15-Sstm8s_tim2$TIM2_DeInit$14
      002D12 03                    2965 	.db	3
      002D13 01                    2966 	.sleb128	1
      002D14 01                    2967 	.db	1
      002D15 09                    2968 	.db	9
      002D16 00 04                 2969 	.dw	Sstm8s_tim2$TIM2_DeInit$16-Sstm8s_tim2$TIM2_DeInit$15
      002D18 03                    2970 	.db	3
      002D19 01                    2971 	.sleb128	1
      002D1A 01                    2972 	.db	1
      002D1B 09                    2973 	.db	9
      002D1C 00 04                 2974 	.dw	Sstm8s_tim2$TIM2_DeInit$17-Sstm8s_tim2$TIM2_DeInit$16
      002D1E 03                    2975 	.db	3
      002D1F 01                    2976 	.sleb128	1
      002D20 01                    2977 	.db	1
      002D21 09                    2978 	.db	9
      002D22 00 04                 2979 	.dw	Sstm8s_tim2$TIM2_DeInit$18-Sstm8s_tim2$TIM2_DeInit$17
      002D24 03                    2980 	.db	3
      002D25 01                    2981 	.sleb128	1
      002D26 01                    2982 	.db	1
      002D27 09                    2983 	.db	9
      002D28 00 04                 2984 	.dw	Sstm8s_tim2$TIM2_DeInit$19-Sstm8s_tim2$TIM2_DeInit$18
      002D2A 03                    2985 	.db	3
      002D2B 01                    2986 	.sleb128	1
      002D2C 01                    2987 	.db	1
      002D2D 09                    2988 	.db	9
      002D2E 00 04                 2989 	.dw	Sstm8s_tim2$TIM2_DeInit$20-Sstm8s_tim2$TIM2_DeInit$19
      002D30 03                    2990 	.db	3
      002D31 01                    2991 	.sleb128	1
      002D32 01                    2992 	.db	1
      002D33 09                    2993 	.db	9
      002D34 00 04                 2994 	.dw	Sstm8s_tim2$TIM2_DeInit$21-Sstm8s_tim2$TIM2_DeInit$20
      002D36 03                    2995 	.db	3
      002D37 01                    2996 	.sleb128	1
      002D38 01                    2997 	.db	1
      002D39 09                    2998 	.db	9
      002D3A 00 04                 2999 	.dw	Sstm8s_tim2$TIM2_DeInit$22-Sstm8s_tim2$TIM2_DeInit$21
      002D3C 03                    3000 	.db	3
      002D3D 01                    3001 	.sleb128	1
      002D3E 01                    3002 	.db	1
      002D3F 09                    3003 	.db	9
      002D40 00 04                 3004 	.dw	Sstm8s_tim2$TIM2_DeInit$23-Sstm8s_tim2$TIM2_DeInit$22
      002D42 03                    3005 	.db	3
      002D43 01                    3006 	.sleb128	1
      002D44 01                    3007 	.db	1
      002D45 09                    3008 	.db	9
      002D46 00 04                 3009 	.dw	Sstm8s_tim2$TIM2_DeInit$24-Sstm8s_tim2$TIM2_DeInit$23
      002D48 03                    3010 	.db	3
      002D49 01                    3011 	.sleb128	1
      002D4A 01                    3012 	.db	1
      002D4B 09                    3013 	.db	9
      002D4C 00 01                 3014 	.dw	1+Sstm8s_tim2$TIM2_DeInit$25-Sstm8s_tim2$TIM2_DeInit$24
      002D4E 00                    3015 	.db	0
      002D4F 01                    3016 	.uleb128	1
      002D50 01                    3017 	.db	1
      002D51 00                    3018 	.db	0
      002D52 05                    3019 	.uleb128	5
      002D53 02                    3020 	.db	2
      002D54 00 00 9E CD           3021 	.dw	0,(Sstm8s_tim2$TIM2_TimeBaseInit$27)
      002D58 03                    3022 	.db	3
      002D59 D8 00                 3023 	.sleb128	88
      002D5B 01                    3024 	.db	1
      002D5C 09                    3025 	.db	9
      002D5D 00 00                 3026 	.dw	Sstm8s_tim2$TIM2_TimeBaseInit$29-Sstm8s_tim2$TIM2_TimeBaseInit$27
      002D5F 03                    3027 	.db	3
      002D60 04                    3028 	.sleb128	4
      002D61 01                    3029 	.db	1
      002D62 09                    3030 	.db	9
      002D63 00 06                 3031 	.dw	Sstm8s_tim2$TIM2_TimeBaseInit$30-Sstm8s_tim2$TIM2_TimeBaseInit$29
      002D65 03                    3032 	.db	3
      002D66 02                    3033 	.sleb128	2
      002D67 01                    3034 	.db	1
      002D68 09                    3035 	.db	9
      002D69 00 06                 3036 	.dw	Sstm8s_tim2$TIM2_TimeBaseInit$31-Sstm8s_tim2$TIM2_TimeBaseInit$30
      002D6B 03                    3037 	.db	3
      002D6C 01                    3038 	.sleb128	1
      002D6D 01                    3039 	.db	1
      002D6E 09                    3040 	.db	9
      002D6F 00 05                 3041 	.dw	Sstm8s_tim2$TIM2_TimeBaseInit$32-Sstm8s_tim2$TIM2_TimeBaseInit$31
      002D71 03                    3042 	.db	3
      002D72 01                    3043 	.sleb128	1
      002D73 01                    3044 	.db	1
      002D74 09                    3045 	.db	9
      002D75 00 01                 3046 	.dw	1+Sstm8s_tim2$TIM2_TimeBaseInit$33-Sstm8s_tim2$TIM2_TimeBaseInit$32
      002D77 00                    3047 	.db	0
      002D78 01                    3048 	.uleb128	1
      002D79 01                    3049 	.db	1
      002D7A 00                    3050 	.db	0
      002D7B 05                    3051 	.uleb128	5
      002D7C 02                    3052 	.db	2
      002D7D 00 00 9E DF           3053 	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$35)
      002D81 03                    3054 	.db	3
      002D82 EB 00                 3055 	.sleb128	107
      002D84 01                    3056 	.db	1
      002D85 09                    3057 	.db	9
      002D86 00 01                 3058 	.dw	Sstm8s_tim2$TIM2_OC1Init$38-Sstm8s_tim2$TIM2_OC1Init$35
      002D88 03                    3059 	.db	3
      002D89 0B                    3060 	.sleb128	11
      002D8A 01                    3061 	.db	1
      002D8B 09                    3062 	.db	9
      002D8C 00 08                 3063 	.dw	Sstm8s_tim2$TIM2_OC1Init$39-Sstm8s_tim2$TIM2_OC1Init$38
      002D8E 03                    3064 	.db	3
      002D8F 02                    3065 	.sleb128	2
      002D90 01                    3066 	.db	1
      002D91 09                    3067 	.db	9
      002D92 00 0B                 3068 	.dw	Sstm8s_tim2$TIM2_OC1Init$40-Sstm8s_tim2$TIM2_OC1Init$39
      002D94 03                    3069 	.db	3
      002D95 01                    3070 	.sleb128	1
      002D96 01                    3071 	.db	1
      002D97 09                    3072 	.db	9
      002D98 00 0B                 3073 	.dw	Sstm8s_tim2$TIM2_OC1Init$41-Sstm8s_tim2$TIM2_OC1Init$40
      002D9A 03                    3074 	.db	3
      002D9B 03                    3075 	.sleb128	3
      002D9C 01                    3076 	.db	1
      002D9D 09                    3077 	.db	9
      002D9E 00 05                 3078 	.dw	Sstm8s_tim2$TIM2_OC1Init$42-Sstm8s_tim2$TIM2_OC1Init$41
      002DA0 03                    3079 	.db	3
      002DA1 01                    3080 	.sleb128	1
      002DA2 01                    3081 	.db	1
      002DA3 09                    3082 	.db	9
      002DA4 00 05                 3083 	.dw	Sstm8s_tim2$TIM2_OC1Init$43-Sstm8s_tim2$TIM2_OC1Init$42
      002DA6 03                    3084 	.db	3
      002DA7 03                    3085 	.sleb128	3
      002DA8 01                    3086 	.db	1
      002DA9 09                    3087 	.db	9
      002DAA 00 06                 3088 	.dw	Sstm8s_tim2$TIM2_OC1Init$44-Sstm8s_tim2$TIM2_OC1Init$43
      002DAC 03                    3089 	.db	3
      002DAD 01                    3090 	.sleb128	1
      002DAE 01                    3091 	.db	1
      002DAF 09                    3092 	.db	9
      002DB0 00 05                 3093 	.dw	Sstm8s_tim2$TIM2_OC1Init$45-Sstm8s_tim2$TIM2_OC1Init$44
      002DB2 03                    3094 	.db	3
      002DB3 01                    3095 	.sleb128	1
      002DB4 01                    3096 	.db	1
      002DB5 09                    3097 	.db	9
      002DB6 00 02                 3098 	.dw	1+Sstm8s_tim2$TIM2_OC1Init$47-Sstm8s_tim2$TIM2_OC1Init$45
      002DB8 00                    3099 	.db	0
      002DB9 01                    3100 	.uleb128	1
      002DBA 01                    3101 	.db	1
      002DBB 00                    3102 	.db	0
      002DBC 05                    3103 	.uleb128	5
      002DBD 02                    3104 	.db	2
      002DBE 00 00 9F 15           3105 	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$49)
      002DC2 03                    3106 	.db	3
      002DC3 8D 01                 3107 	.sleb128	141
      002DC5 01                    3108 	.db	1
      002DC6 09                    3109 	.db	9
      002DC7 00 01                 3110 	.dw	Sstm8s_tim2$TIM2_OC2Init$52-Sstm8s_tim2$TIM2_OC2Init$49
      002DC9 03                    3111 	.db	3
      002DCA 0C                    3112 	.sleb128	12
      002DCB 01                    3113 	.db	1
      002DCC 09                    3114 	.db	9
      002DCD 00 08                 3115 	.dw	Sstm8s_tim2$TIM2_OC2Init$53-Sstm8s_tim2$TIM2_OC2Init$52
      002DCF 03                    3116 	.db	3
      002DD0 02                    3117 	.sleb128	2
      002DD1 01                    3118 	.db	1
      002DD2 09                    3119 	.db	9
      002DD3 00 0B                 3120 	.dw	Sstm8s_tim2$TIM2_OC2Init$54-Sstm8s_tim2$TIM2_OC2Init$53
      002DD5 03                    3121 	.db	3
      002DD6 01                    3122 	.sleb128	1
      002DD7 01                    3123 	.db	1
      002DD8 09                    3124 	.db	9
      002DD9 00 0B                 3125 	.dw	Sstm8s_tim2$TIM2_OC2Init$55-Sstm8s_tim2$TIM2_OC2Init$54
      002DDB 03                    3126 	.db	3
      002DDC 04                    3127 	.sleb128	4
      002DDD 01                    3128 	.db	1
      002DDE 09                    3129 	.db	9
      002DDF 00 05                 3130 	.dw	Sstm8s_tim2$TIM2_OC2Init$56-Sstm8s_tim2$TIM2_OC2Init$55
      002DE1 03                    3131 	.db	3
      002DE2 01                    3132 	.sleb128	1
      002DE3 01                    3133 	.db	1
      002DE4 09                    3134 	.db	9
      002DE5 00 05                 3135 	.dw	Sstm8s_tim2$TIM2_OC2Init$57-Sstm8s_tim2$TIM2_OC2Init$56
      002DE7 03                    3136 	.db	3
      002DE8 04                    3137 	.sleb128	4
      002DE9 01                    3138 	.db	1
      002DEA 09                    3139 	.db	9
      002DEB 00 06                 3140 	.dw	Sstm8s_tim2$TIM2_OC2Init$58-Sstm8s_tim2$TIM2_OC2Init$57
      002DED 03                    3141 	.db	3
      002DEE 01                    3142 	.sleb128	1
      002DEF 01                    3143 	.db	1
      002DF0 09                    3144 	.db	9
      002DF1 00 05                 3145 	.dw	Sstm8s_tim2$TIM2_OC2Init$59-Sstm8s_tim2$TIM2_OC2Init$58
      002DF3 03                    3146 	.db	3
      002DF4 01                    3147 	.sleb128	1
      002DF5 01                    3148 	.db	1
      002DF6 09                    3149 	.db	9
      002DF7 00 02                 3150 	.dw	1+Sstm8s_tim2$TIM2_OC2Init$61-Sstm8s_tim2$TIM2_OC2Init$59
      002DF9 00                    3151 	.db	0
      002DFA 01                    3152 	.uleb128	1
      002DFB 01                    3153 	.db	1
      002DFC 00                    3154 	.db	0
      002DFD 05                    3155 	.uleb128	5
      002DFE 02                    3156 	.db	2
      002DFF 00 00 9F 4B           3157 	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$63)
      002E03 03                    3158 	.db	3
      002E04 B2 01                 3159 	.sleb128	178
      002E06 01                    3160 	.db	1
      002E07 09                    3161 	.db	9
      002E08 00 01                 3162 	.dw	Sstm8s_tim2$TIM2_OC3Init$66-Sstm8s_tim2$TIM2_OC3Init$63
      002E0A 03                    3163 	.db	3
      002E0B 0A                    3164 	.sleb128	10
      002E0C 01                    3165 	.db	1
      002E0D 09                    3166 	.db	9
      002E0E 00 08                 3167 	.dw	Sstm8s_tim2$TIM2_OC3Init$67-Sstm8s_tim2$TIM2_OC3Init$66
      002E10 03                    3168 	.db	3
      002E11 02                    3169 	.sleb128	2
      002E12 01                    3170 	.db	1
      002E13 09                    3171 	.db	9
      002E14 00 0B                 3172 	.dw	Sstm8s_tim2$TIM2_OC3Init$68-Sstm8s_tim2$TIM2_OC3Init$67
      002E16 03                    3173 	.db	3
      002E17 01                    3174 	.sleb128	1
      002E18 01                    3175 	.db	1
      002E19 09                    3176 	.db	9
      002E1A 00 0B                 3177 	.dw	Sstm8s_tim2$TIM2_OC3Init$69-Sstm8s_tim2$TIM2_OC3Init$68
      002E1C 03                    3178 	.db	3
      002E1D 03                    3179 	.sleb128	3
      002E1E 01                    3180 	.db	1
      002E1F 09                    3181 	.db	9
      002E20 00 05                 3182 	.dw	Sstm8s_tim2$TIM2_OC3Init$70-Sstm8s_tim2$TIM2_OC3Init$69
      002E22 03                    3183 	.db	3
      002E23 01                    3184 	.sleb128	1
      002E24 01                    3185 	.db	1
      002E25 09                    3186 	.db	9
      002E26 00 05                 3187 	.dw	Sstm8s_tim2$TIM2_OC3Init$71-Sstm8s_tim2$TIM2_OC3Init$70
      002E28 03                    3188 	.db	3
      002E29 03                    3189 	.sleb128	3
      002E2A 01                    3190 	.db	1
      002E2B 09                    3191 	.db	9
      002E2C 00 06                 3192 	.dw	Sstm8s_tim2$TIM2_OC3Init$72-Sstm8s_tim2$TIM2_OC3Init$71
      002E2E 03                    3193 	.db	3
      002E2F 01                    3194 	.sleb128	1
      002E30 01                    3195 	.db	1
      002E31 09                    3196 	.db	9
      002E32 00 05                 3197 	.dw	Sstm8s_tim2$TIM2_OC3Init$73-Sstm8s_tim2$TIM2_OC3Init$72
      002E34 03                    3198 	.db	3
      002E35 01                    3199 	.sleb128	1
      002E36 01                    3200 	.db	1
      002E37 09                    3201 	.db	9
      002E38 00 02                 3202 	.dw	1+Sstm8s_tim2$TIM2_OC3Init$75-Sstm8s_tim2$TIM2_OC3Init$73
      002E3A 00                    3203 	.db	0
      002E3B 01                    3204 	.uleb128	1
      002E3C 01                    3205 	.db	1
      002E3D 00                    3206 	.db	0
      002E3E 05                    3207 	.uleb128	5
      002E3F 02                    3208 	.db	2
      002E40 00 00 9F 81           3209 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$77)
      002E44 03                    3210 	.db	3
      002E45 D3 01                 3211 	.sleb128	211
      002E47 01                    3212 	.db	1
      002E48 09                    3213 	.db	9
      002E49 00 00                 3214 	.dw	Sstm8s_tim2$TIM2_ICInit$79-Sstm8s_tim2$TIM2_ICInit$77
      002E4B 03                    3215 	.db	3
      002E4C 0D                    3216 	.sleb128	13
      002E4D 01                    3217 	.db	1
      002E4E 09                    3218 	.db	9
      002E4F 00 07                 3219 	.dw	Sstm8s_tim2$TIM2_ICInit$81-Sstm8s_tim2$TIM2_ICInit$79
      002E51 03                    3220 	.db	3
      002E52 03                    3221 	.sleb128	3
      002E53 01                    3222 	.db	1
      002E54 09                    3223 	.db	9
      002E55 00 0E                 3224 	.dw	Sstm8s_tim2$TIM2_ICInit$86-Sstm8s_tim2$TIM2_ICInit$81
      002E57 03                    3225 	.db	3
      002E58 05                    3226 	.sleb128	5
      002E59 01                    3227 	.db	1
      002E5A 09                    3228 	.db	9
      002E5B 00 0A                 3229 	.dw	Sstm8s_tim2$TIM2_ICInit$90-Sstm8s_tim2$TIM2_ICInit$86
      002E5D 03                    3230 	.db	3
      002E5E 02                    3231 	.sleb128	2
      002E5F 01                    3232 	.db	1
      002E60 09                    3233 	.db	9
      002E61 00 0B                 3234 	.dw	Sstm8s_tim2$TIM2_ICInit$93-Sstm8s_tim2$TIM2_ICInit$90
      002E63 03                    3235 	.db	3
      002E64 03                    3236 	.sleb128	3
      002E65 01                    3237 	.db	1
      002E66 09                    3238 	.db	9
      002E67 00 0E                 3239 	.dw	Sstm8s_tim2$TIM2_ICInit$98-Sstm8s_tim2$TIM2_ICInit$93
      002E69 03                    3240 	.db	3
      002E6A 05                    3241 	.sleb128	5
      002E6B 01                    3242 	.db	1
      002E6C 09                    3243 	.db	9
      002E6D 00 0A                 3244 	.dw	Sstm8s_tim2$TIM2_ICInit$103-Sstm8s_tim2$TIM2_ICInit$98
      002E6F 03                    3245 	.db	3
      002E70 05                    3246 	.sleb128	5
      002E71 01                    3247 	.db	1
      002E72 09                    3248 	.db	9
      002E73 00 0E                 3249 	.dw	Sstm8s_tim2$TIM2_ICInit$108-Sstm8s_tim2$TIM2_ICInit$103
      002E75 03                    3250 	.db	3
      002E76 05                    3251 	.sleb128	5
      002E77 01                    3252 	.db	1
      002E78 09                    3253 	.db	9
      002E79 00 07                 3254 	.dw	Sstm8s_tim2$TIM2_ICInit$112-Sstm8s_tim2$TIM2_ICInit$108
      002E7B 03                    3255 	.db	3
      002E7C 02                    3256 	.sleb128	2
      002E7D 01                    3257 	.db	1
      002E7E 09                    3258 	.db	9
      002E7F 00 01                 3259 	.dw	1+Sstm8s_tim2$TIM2_ICInit$113-Sstm8s_tim2$TIM2_ICInit$112
      002E81 00                    3260 	.db	0
      002E82 01                    3261 	.uleb128	1
      002E83 01                    3262 	.db	1
      002E84 00                    3263 	.db	0
      002E85 05                    3264 	.uleb128	5
      002E86 02                    3265 	.db	2
      002E87 00 00 9F D9           3266 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$115)
      002E8B 03                    3267 	.db	3
      002E8C 89 02                 3268 	.sleb128	265
      002E8E 01                    3269 	.db	1
      002E8F 09                    3270 	.db	9
      002E90 00 01                 3271 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$118-Sstm8s_tim2$TIM2_PWMIConfig$115
      002E92 03                    3272 	.db	3
      002E93 10                    3273 	.sleb128	16
      002E94 01                    3274 	.db	1
      002E95 09                    3275 	.db	9
      002E96 00 09                 3276 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$121-Sstm8s_tim2$TIM2_PWMIConfig$118
      002E98 03                    3277 	.db	3
      002E99 02                    3278 	.sleb128	2
      002E9A 01                    3279 	.db	1
      002E9B 09                    3280 	.db	9
      002E9C 00 07                 3281 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$124-Sstm8s_tim2$TIM2_PWMIConfig$121
      002E9E 03                    3282 	.db	3
      002E9F 04                    3283 	.sleb128	4
      002EA0 01                    3284 	.db	1
      002EA1 09                    3285 	.db	9
      002EA2 00 02                 3286 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$126-Sstm8s_tim2$TIM2_PWMIConfig$124
      002EA4 03                    3287 	.db	3
      002EA5 04                    3288 	.sleb128	4
      002EA6 01                    3289 	.db	1
      002EA7 09                    3290 	.db	9
      002EA8 00 0B                 3291 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$129-Sstm8s_tim2$TIM2_PWMIConfig$126
      002EAA 03                    3292 	.db	3
      002EAB 02                    3293 	.sleb128	2
      002EAC 01                    3294 	.db	1
      002EAD 09                    3295 	.db	9
      002EAE 00 07                 3296 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$132-Sstm8s_tim2$TIM2_PWMIConfig$129
      002EB0 03                    3297 	.db	3
      002EB1 04                    3298 	.sleb128	4
      002EB2 01                    3299 	.db	1
      002EB3 09                    3300 	.db	9
      002EB4 00 04                 3301 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$134-Sstm8s_tim2$TIM2_PWMIConfig$132
      002EB6 03                    3302 	.db	3
      002EB7 03                    3303 	.sleb128	3
      002EB8 01                    3304 	.db	1
      002EB9 09                    3305 	.db	9
      002EBA 00 07                 3306 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$136-Sstm8s_tim2$TIM2_PWMIConfig$134
      002EBC 03                    3307 	.db	3
      002EBD 03                    3308 	.sleb128	3
      002EBE 01                    3309 	.db	1
      002EBF 09                    3310 	.db	9
      002EC0 00 0E                 3311 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$141-Sstm8s_tim2$TIM2_PWMIConfig$136
      002EC2 03                    3312 	.db	3
      002EC3 04                    3313 	.sleb128	4
      002EC4 01                    3314 	.db	1
      002EC5 09                    3315 	.db	9
      002EC6 00 07                 3316 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$144-Sstm8s_tim2$TIM2_PWMIConfig$141
      002EC8 03                    3317 	.db	3
      002EC9 03                    3318 	.sleb128	3
      002ECA 01                    3319 	.db	1
      002ECB 09                    3320 	.db	9
      002ECC 00 0E                 3321 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$149-Sstm8s_tim2$TIM2_PWMIConfig$144
      002ECE 03                    3322 	.db	3
      002ECF 03                    3323 	.sleb128	3
      002ED0 01                    3324 	.db	1
      002ED1 09                    3325 	.db	9
      002ED2 00 0A                 3326 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$154-Sstm8s_tim2$TIM2_PWMIConfig$149
      002ED4 03                    3327 	.db	3
      002ED5 05                    3328 	.sleb128	5
      002ED6 01                    3329 	.db	1
      002ED7 09                    3330 	.db	9
      002ED8 00 0E                 3331 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$159-Sstm8s_tim2$TIM2_PWMIConfig$154
      002EDA 03                    3332 	.db	3
      002EDB 04                    3333 	.sleb128	4
      002EDC 01                    3334 	.db	1
      002EDD 09                    3335 	.db	9
      002EDE 00 07                 3336 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$162-Sstm8s_tim2$TIM2_PWMIConfig$159
      002EE0 03                    3337 	.db	3
      002EE1 03                    3338 	.sleb128	3
      002EE2 01                    3339 	.db	1
      002EE3 09                    3340 	.db	9
      002EE4 00 0E                 3341 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$167-Sstm8s_tim2$TIM2_PWMIConfig$162
      002EE6 03                    3342 	.db	3
      002EE7 03                    3343 	.sleb128	3
      002EE8 01                    3344 	.db	1
      002EE9 09                    3345 	.db	9
      002EEA 00 07                 3346 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$171-Sstm8s_tim2$TIM2_PWMIConfig$167
      002EEC 03                    3347 	.db	3
      002EED 02                    3348 	.sleb128	2
      002EEE 01                    3349 	.db	1
      002EEF 09                    3350 	.db	9
      002EF0 00 02                 3351 	.dw	1+Sstm8s_tim2$TIM2_PWMIConfig$173-Sstm8s_tim2$TIM2_PWMIConfig$171
      002EF2 00                    3352 	.db	0
      002EF3 01                    3353 	.uleb128	1
      002EF4 01                    3354 	.db	1
      002EF5 00                    3355 	.db	0
      002EF6 05                    3356 	.uleb128	5
      002EF7 02                    3357 	.db	2
      002EF8 00 00 A0 62           3358 	.dw	0,(Sstm8s_tim2$TIM2_Cmd$175)
      002EFC 03                    3359 	.db	3
      002EFD D2 02                 3360 	.sleb128	338
      002EFF 01                    3361 	.db	1
      002F00 09                    3362 	.db	9
      002F01 00 00                 3363 	.dw	Sstm8s_tim2$TIM2_Cmd$177-Sstm8s_tim2$TIM2_Cmd$175
      002F03 03                    3364 	.db	3
      002F04 08                    3365 	.sleb128	8
      002F05 01                    3366 	.db	1
      002F06 09                    3367 	.db	9
      002F07 00 03                 3368 	.dw	Sstm8s_tim2$TIM2_Cmd$178-Sstm8s_tim2$TIM2_Cmd$177
      002F09 03                    3369 	.db	3
      002F0A 7E                    3370 	.sleb128	-2
      002F0B 01                    3371 	.db	1
      002F0C 09                    3372 	.db	9
      002F0D 00 07                 3373 	.dw	Sstm8s_tim2$TIM2_Cmd$180-Sstm8s_tim2$TIM2_Cmd$178
      002F0F 03                    3374 	.db	3
      002F10 02                    3375 	.sleb128	2
      002F11 01                    3376 	.db	1
      002F12 09                    3377 	.db	9
      002F13 00 08                 3378 	.dw	Sstm8s_tim2$TIM2_Cmd$183-Sstm8s_tim2$TIM2_Cmd$180
      002F15 03                    3379 	.db	3
      002F16 04                    3380 	.sleb128	4
      002F17 01                    3381 	.db	1
      002F18 09                    3382 	.db	9
      002F19 00 05                 3383 	.dw	Sstm8s_tim2$TIM2_Cmd$185-Sstm8s_tim2$TIM2_Cmd$183
      002F1B 03                    3384 	.db	3
      002F1C 02                    3385 	.sleb128	2
      002F1D 01                    3386 	.db	1
      002F1E 09                    3387 	.db	9
      002F1F 00 01                 3388 	.dw	1+Sstm8s_tim2$TIM2_Cmd$186-Sstm8s_tim2$TIM2_Cmd$185
      002F21 00                    3389 	.db	0
      002F22 01                    3390 	.uleb128	1
      002F23 01                    3391 	.db	1
      002F24 00                    3392 	.db	0
      002F25 05                    3393 	.uleb128	5
      002F26 02                    3394 	.db	2
      002F27 00 00 A0 7A           3395 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$188)
      002F2B 03                    3396 	.db	3
      002F2C EF 02                 3397 	.sleb128	367
      002F2E 01                    3398 	.db	1
      002F2F 09                    3399 	.db	9
      002F30 00 01                 3400 	.dw	Sstm8s_tim2$TIM2_ITConfig$191-Sstm8s_tim2$TIM2_ITConfig$188
      002F32 03                    3401 	.db	3
      002F33 09                    3402 	.sleb128	9
      002F34 01                    3403 	.db	1
      002F35 09                    3404 	.db	9
      002F36 00 03                 3405 	.dw	Sstm8s_tim2$TIM2_ITConfig$192-Sstm8s_tim2$TIM2_ITConfig$191
      002F38 03                    3406 	.db	3
      002F39 7D                    3407 	.sleb128	-3
      002F3A 01                    3408 	.db	1
      002F3B 09                    3409 	.db	9
      002F3C 00 07                 3410 	.dw	Sstm8s_tim2$TIM2_ITConfig$194-Sstm8s_tim2$TIM2_ITConfig$192
      002F3E 03                    3411 	.db	3
      002F3F 03                    3412 	.sleb128	3
      002F40 01                    3413 	.db	1
      002F41 09                    3414 	.db	9
      002F42 00 08                 3415 	.dw	Sstm8s_tim2$TIM2_ITConfig$197-Sstm8s_tim2$TIM2_ITConfig$194
      002F44 03                    3416 	.db	3
      002F45 05                    3417 	.sleb128	5
      002F46 01                    3418 	.db	1
      002F47 09                    3419 	.db	9
      002F48 00 0C                 3420 	.dw	Sstm8s_tim2$TIM2_ITConfig$201-Sstm8s_tim2$TIM2_ITConfig$197
      002F4A 03                    3421 	.db	3
      002F4B 02                    3422 	.sleb128	2
      002F4C 01                    3423 	.db	1
      002F4D 09                    3424 	.db	9
      002F4E 00 02                 3425 	.dw	1+Sstm8s_tim2$TIM2_ITConfig$203-Sstm8s_tim2$TIM2_ITConfig$201
      002F50 00                    3426 	.db	0
      002F51 01                    3427 	.uleb128	1
      002F52 01                    3428 	.db	1
      002F53 00                    3429 	.db	0
      002F54 05                    3430 	.uleb128	5
      002F55 02                    3431 	.db	2
      002F56 00 00 A0 9B           3432 	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$205)
      002F5A 03                    3433 	.db	3
      002F5B 87 03                 3434 	.sleb128	391
      002F5D 01                    3435 	.db	1
      002F5E 09                    3436 	.db	9
      002F5F 00 00                 3437 	.dw	Sstm8s_tim2$TIM2_UpdateDisableConfig$207-Sstm8s_tim2$TIM2_UpdateDisableConfig$205
      002F61 03                    3438 	.db	3
      002F62 08                    3439 	.sleb128	8
      002F63 01                    3440 	.db	1
      002F64 09                    3441 	.db	9
      002F65 00 03                 3442 	.dw	Sstm8s_tim2$TIM2_UpdateDisableConfig$208-Sstm8s_tim2$TIM2_UpdateDisableConfig$207
      002F67 03                    3443 	.db	3
      002F68 7E                    3444 	.sleb128	-2
      002F69 01                    3445 	.db	1
      002F6A 09                    3446 	.db	9
      002F6B 00 07                 3447 	.dw	Sstm8s_tim2$TIM2_UpdateDisableConfig$210-Sstm8s_tim2$TIM2_UpdateDisableConfig$208
      002F6D 03                    3448 	.db	3
      002F6E 02                    3449 	.sleb128	2
      002F6F 01                    3450 	.db	1
      002F70 09                    3451 	.db	9
      002F71 00 08                 3452 	.dw	Sstm8s_tim2$TIM2_UpdateDisableConfig$213-Sstm8s_tim2$TIM2_UpdateDisableConfig$210
      002F73 03                    3453 	.db	3
      002F74 04                    3454 	.sleb128	4
      002F75 01                    3455 	.db	1
      002F76 09                    3456 	.db	9
      002F77 00 05                 3457 	.dw	Sstm8s_tim2$TIM2_UpdateDisableConfig$215-Sstm8s_tim2$TIM2_UpdateDisableConfig$213
      002F79 03                    3458 	.db	3
      002F7A 02                    3459 	.sleb128	2
      002F7B 01                    3460 	.db	1
      002F7C 09                    3461 	.db	9
      002F7D 00 01                 3462 	.dw	1+Sstm8s_tim2$TIM2_UpdateDisableConfig$216-Sstm8s_tim2$TIM2_UpdateDisableConfig$215
      002F7F 00                    3463 	.db	0
      002F80 01                    3464 	.uleb128	1
      002F81 01                    3465 	.db	1
      002F82 00                    3466 	.db	0
      002F83 05                    3467 	.uleb128	5
      002F84 02                    3468 	.db	2
      002F85 00 00 A0 B3           3469 	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$218)
      002F89 03                    3470 	.db	3
      002F8A 9F 03                 3471 	.sleb128	415
      002F8C 01                    3472 	.db	1
      002F8D 09                    3473 	.db	9
      002F8E 00 00                 3474 	.dw	Sstm8s_tim2$TIM2_UpdateRequestConfig$220-Sstm8s_tim2$TIM2_UpdateRequestConfig$218
      002F90 03                    3475 	.db	3
      002F91 08                    3476 	.sleb128	8
      002F92 01                    3477 	.db	1
      002F93 09                    3478 	.db	9
      002F94 00 03                 3479 	.dw	Sstm8s_tim2$TIM2_UpdateRequestConfig$221-Sstm8s_tim2$TIM2_UpdateRequestConfig$220
      002F96 03                    3480 	.db	3
      002F97 7E                    3481 	.sleb128	-2
      002F98 01                    3482 	.db	1
      002F99 09                    3483 	.db	9
      002F9A 00 07                 3484 	.dw	Sstm8s_tim2$TIM2_UpdateRequestConfig$223-Sstm8s_tim2$TIM2_UpdateRequestConfig$221
      002F9C 03                    3485 	.db	3
      002F9D 02                    3486 	.sleb128	2
      002F9E 01                    3487 	.db	1
      002F9F 09                    3488 	.db	9
      002FA0 00 08                 3489 	.dw	Sstm8s_tim2$TIM2_UpdateRequestConfig$226-Sstm8s_tim2$TIM2_UpdateRequestConfig$223
      002FA2 03                    3490 	.db	3
      002FA3 04                    3491 	.sleb128	4
      002FA4 01                    3492 	.db	1
      002FA5 09                    3493 	.db	9
      002FA6 00 05                 3494 	.dw	Sstm8s_tim2$TIM2_UpdateRequestConfig$228-Sstm8s_tim2$TIM2_UpdateRequestConfig$226
      002FA8 03                    3495 	.db	3
      002FA9 02                    3496 	.sleb128	2
      002FAA 01                    3497 	.db	1
      002FAB 09                    3498 	.db	9
      002FAC 00 01                 3499 	.dw	1+Sstm8s_tim2$TIM2_UpdateRequestConfig$229-Sstm8s_tim2$TIM2_UpdateRequestConfig$228
      002FAE 00                    3500 	.db	0
      002FAF 01                    3501 	.uleb128	1
      002FB0 01                    3502 	.db	1
      002FB1 00                    3503 	.db	0
      002FB2 05                    3504 	.uleb128	5
      002FB3 02                    3505 	.db	2
      002FB4 00 00 A0 CB           3506 	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$231)
      002FB8 03                    3507 	.db	3
      002FB9 B7 03                 3508 	.sleb128	439
      002FBB 01                    3509 	.db	1
      002FBC 09                    3510 	.db	9
      002FBD 00 00                 3511 	.dw	Sstm8s_tim2$TIM2_SelectOnePulseMode$233-Sstm8s_tim2$TIM2_SelectOnePulseMode$231
      002FBF 03                    3512 	.db	3
      002FC0 08                    3513 	.sleb128	8
      002FC1 01                    3514 	.db	1
      002FC2 09                    3515 	.db	9
      002FC3 00 03                 3516 	.dw	Sstm8s_tim2$TIM2_SelectOnePulseMode$234-Sstm8s_tim2$TIM2_SelectOnePulseMode$233
      002FC5 03                    3517 	.db	3
      002FC6 7E                    3518 	.sleb128	-2
      002FC7 01                    3519 	.db	1
      002FC8 09                    3520 	.db	9
      002FC9 00 07                 3521 	.dw	Sstm8s_tim2$TIM2_SelectOnePulseMode$236-Sstm8s_tim2$TIM2_SelectOnePulseMode$234
      002FCB 03                    3522 	.db	3
      002FCC 02                    3523 	.sleb128	2
      002FCD 01                    3524 	.db	1
      002FCE 09                    3525 	.db	9
      002FCF 00 08                 3526 	.dw	Sstm8s_tim2$TIM2_SelectOnePulseMode$239-Sstm8s_tim2$TIM2_SelectOnePulseMode$236
      002FD1 03                    3527 	.db	3
      002FD2 04                    3528 	.sleb128	4
      002FD3 01                    3529 	.db	1
      002FD4 09                    3530 	.db	9
      002FD5 00 05                 3531 	.dw	Sstm8s_tim2$TIM2_SelectOnePulseMode$241-Sstm8s_tim2$TIM2_SelectOnePulseMode$239
      002FD7 03                    3532 	.db	3
      002FD8 02                    3533 	.sleb128	2
      002FD9 01                    3534 	.db	1
      002FDA 09                    3535 	.db	9
      002FDB 00 01                 3536 	.dw	1+Sstm8s_tim2$TIM2_SelectOnePulseMode$242-Sstm8s_tim2$TIM2_SelectOnePulseMode$241
      002FDD 00                    3537 	.db	0
      002FDE 01                    3538 	.uleb128	1
      002FDF 01                    3539 	.db	1
      002FE0 00                    3540 	.db	0
      002FE1 05                    3541 	.uleb128	5
      002FE2 02                    3542 	.db	2
      002FE3 00 00 A0 E3           3543 	.dw	0,(Sstm8s_tim2$TIM2_PrescalerConfig$244)
      002FE7 03                    3544 	.db	3
      002FE8 E3 03                 3545 	.sleb128	483
      002FEA 01                    3546 	.db	1
      002FEB 09                    3547 	.db	9
      002FEC 00 00                 3548 	.dw	Sstm8s_tim2$TIM2_PrescalerConfig$246-Sstm8s_tim2$TIM2_PrescalerConfig$244
      002FEE 03                    3549 	.db	3
      002FEF 08                    3550 	.sleb128	8
      002FF0 01                    3551 	.db	1
      002FF1 09                    3552 	.db	9
      002FF2 00 06                 3553 	.dw	Sstm8s_tim2$TIM2_PrescalerConfig$247-Sstm8s_tim2$TIM2_PrescalerConfig$246
      002FF4 03                    3554 	.db	3
      002FF5 03                    3555 	.sleb128	3
      002FF6 01                    3556 	.db	1
      002FF7 09                    3557 	.db	9
      002FF8 00 06                 3558 	.dw	Sstm8s_tim2$TIM2_PrescalerConfig$248-Sstm8s_tim2$TIM2_PrescalerConfig$247
      002FFA 03                    3559 	.db	3
      002FFB 01                    3560 	.sleb128	1
      002FFC 01                    3561 	.db	1
      002FFD 09                    3562 	.db	9
      002FFE 00 01                 3563 	.dw	1+Sstm8s_tim2$TIM2_PrescalerConfig$249-Sstm8s_tim2$TIM2_PrescalerConfig$248
      003000 00                    3564 	.db	0
      003001 01                    3565 	.uleb128	1
      003002 01                    3566 	.db	1
      003003 00                    3567 	.db	0
      003004 05                    3568 	.uleb128	5
      003005 02                    3569 	.db	2
      003006 00 00 A0 F0           3570 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC1Config$251)
      00300A 03                    3571 	.db	3
      00300B FA 03                 3572 	.sleb128	506
      00300D 01                    3573 	.db	1
      00300E 09                    3574 	.db	9
      00300F 00 00                 3575 	.dw	Sstm8s_tim2$TIM2_ForcedOC1Config$253-Sstm8s_tim2$TIM2_ForcedOC1Config$251
      003011 03                    3576 	.db	3
      003012 06                    3577 	.sleb128	6
      003013 01                    3578 	.db	1
      003014 09                    3579 	.db	9
      003015 00 05                 3580 	.dw	Sstm8s_tim2$TIM2_ForcedOC1Config$254-Sstm8s_tim2$TIM2_ForcedOC1Config$253
      003017 03                    3581 	.db	3
      003018 01                    3582 	.sleb128	1
      003019 01                    3583 	.db	1
      00301A 09                    3584 	.db	9
      00301B 00 05                 3585 	.dw	Sstm8s_tim2$TIM2_ForcedOC1Config$255-Sstm8s_tim2$TIM2_ForcedOC1Config$254
      00301D 03                    3586 	.db	3
      00301E 01                    3587 	.sleb128	1
      00301F 01                    3588 	.db	1
      003020 09                    3589 	.db	9
      003021 00 01                 3590 	.dw	1+Sstm8s_tim2$TIM2_ForcedOC1Config$256-Sstm8s_tim2$TIM2_ForcedOC1Config$255
      003023 00                    3591 	.db	0
      003024 01                    3592 	.uleb128	1
      003025 01                    3593 	.db	1
      003026 00                    3594 	.db	0
      003027 05                    3595 	.uleb128	5
      003028 02                    3596 	.db	2
      003029 00 00 A0 FB           3597 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC2Config$258)
      00302D 03                    3598 	.db	3
      00302E 8D 04                 3599 	.sleb128	525
      003030 01                    3600 	.db	1
      003031 09                    3601 	.db	9
      003032 00 00                 3602 	.dw	Sstm8s_tim2$TIM2_ForcedOC2Config$260-Sstm8s_tim2$TIM2_ForcedOC2Config$258
      003034 03                    3603 	.db	3
      003035 06                    3604 	.sleb128	6
      003036 01                    3605 	.db	1
      003037 09                    3606 	.db	9
      003038 00 05                 3607 	.dw	Sstm8s_tim2$TIM2_ForcedOC2Config$261-Sstm8s_tim2$TIM2_ForcedOC2Config$260
      00303A 03                    3608 	.db	3
      00303B 01                    3609 	.sleb128	1
      00303C 01                    3610 	.db	1
      00303D 09                    3611 	.db	9
      00303E 00 05                 3612 	.dw	Sstm8s_tim2$TIM2_ForcedOC2Config$262-Sstm8s_tim2$TIM2_ForcedOC2Config$261
      003040 03                    3613 	.db	3
      003041 01                    3614 	.sleb128	1
      003042 01                    3615 	.db	1
      003043 09                    3616 	.db	9
      003044 00 01                 3617 	.dw	1+Sstm8s_tim2$TIM2_ForcedOC2Config$263-Sstm8s_tim2$TIM2_ForcedOC2Config$262
      003046 00                    3618 	.db	0
      003047 01                    3619 	.uleb128	1
      003048 01                    3620 	.db	1
      003049 00                    3621 	.db	0
      00304A 05                    3622 	.uleb128	5
      00304B 02                    3623 	.db	2
      00304C 00 00 A1 06           3624 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC3Config$265)
      003050 03                    3625 	.db	3
      003051 A0 04                 3626 	.sleb128	544
      003053 01                    3627 	.db	1
      003054 09                    3628 	.db	9
      003055 00 00                 3629 	.dw	Sstm8s_tim2$TIM2_ForcedOC3Config$267-Sstm8s_tim2$TIM2_ForcedOC3Config$265
      003057 03                    3630 	.db	3
      003058 06                    3631 	.sleb128	6
      003059 01                    3632 	.db	1
      00305A 09                    3633 	.db	9
      00305B 00 05                 3634 	.dw	Sstm8s_tim2$TIM2_ForcedOC3Config$268-Sstm8s_tim2$TIM2_ForcedOC3Config$267
      00305D 03                    3635 	.db	3
      00305E 01                    3636 	.sleb128	1
      00305F 01                    3637 	.db	1
      003060 09                    3638 	.db	9
      003061 00 05                 3639 	.dw	Sstm8s_tim2$TIM2_ForcedOC3Config$269-Sstm8s_tim2$TIM2_ForcedOC3Config$268
      003063 03                    3640 	.db	3
      003064 01                    3641 	.sleb128	1
      003065 01                    3642 	.db	1
      003066 09                    3643 	.db	9
      003067 00 01                 3644 	.dw	1+Sstm8s_tim2$TIM2_ForcedOC3Config$270-Sstm8s_tim2$TIM2_ForcedOC3Config$269
      003069 00                    3645 	.db	0
      00306A 01                    3646 	.uleb128	1
      00306B 01                    3647 	.db	1
      00306C 00                    3648 	.db	0
      00306D 05                    3649 	.uleb128	5
      00306E 02                    3650 	.db	2
      00306F 00 00 A1 11           3651 	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$272)
      003073 03                    3652 	.db	3
      003074 B0 04                 3653 	.sleb128	560
      003076 01                    3654 	.db	1
      003077 09                    3655 	.db	9
      003078 00 00                 3656 	.dw	Sstm8s_tim2$TIM2_ARRPreloadConfig$274-Sstm8s_tim2$TIM2_ARRPreloadConfig$272
      00307A 03                    3657 	.db	3
      00307B 08                    3658 	.sleb128	8
      00307C 01                    3659 	.db	1
      00307D 09                    3660 	.db	9
      00307E 00 03                 3661 	.dw	Sstm8s_tim2$TIM2_ARRPreloadConfig$275-Sstm8s_tim2$TIM2_ARRPreloadConfig$274
      003080 03                    3662 	.db	3
      003081 7E                    3663 	.sleb128	-2
      003082 01                    3664 	.db	1
      003083 09                    3665 	.db	9
      003084 00 07                 3666 	.dw	Sstm8s_tim2$TIM2_ARRPreloadConfig$277-Sstm8s_tim2$TIM2_ARRPreloadConfig$275
      003086 03                    3667 	.db	3
      003087 02                    3668 	.sleb128	2
      003088 01                    3669 	.db	1
      003089 09                    3670 	.db	9
      00308A 00 08                 3671 	.dw	Sstm8s_tim2$TIM2_ARRPreloadConfig$280-Sstm8s_tim2$TIM2_ARRPreloadConfig$277
      00308C 03                    3672 	.db	3
      00308D 04                    3673 	.sleb128	4
      00308E 01                    3674 	.db	1
      00308F 09                    3675 	.db	9
      003090 00 05                 3676 	.dw	Sstm8s_tim2$TIM2_ARRPreloadConfig$282-Sstm8s_tim2$TIM2_ARRPreloadConfig$280
      003092 03                    3677 	.db	3
      003093 02                    3678 	.sleb128	2
      003094 01                    3679 	.db	1
      003095 09                    3680 	.db	9
      003096 00 01                 3681 	.dw	1+Sstm8s_tim2$TIM2_ARRPreloadConfig$283-Sstm8s_tim2$TIM2_ARRPreloadConfig$282
      003098 00                    3682 	.db	0
      003099 01                    3683 	.uleb128	1
      00309A 01                    3684 	.db	1
      00309B 00                    3685 	.db	0
      00309C 05                    3686 	.uleb128	5
      00309D 02                    3687 	.db	2
      00309E 00 00 A1 29           3688 	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$285)
      0030A2 03                    3689 	.db	3
      0030A3 C6 04                 3690 	.sleb128	582
      0030A5 01                    3691 	.db	1
      0030A6 09                    3692 	.db	9
      0030A7 00 00                 3693 	.dw	Sstm8s_tim2$TIM2_OC1PreloadConfig$287-Sstm8s_tim2$TIM2_OC1PreloadConfig$285
      0030A9 03                    3694 	.db	3
      0030AA 08                    3695 	.sleb128	8
      0030AB 01                    3696 	.db	1
      0030AC 09                    3697 	.db	9
      0030AD 00 03                 3698 	.dw	Sstm8s_tim2$TIM2_OC1PreloadConfig$288-Sstm8s_tim2$TIM2_OC1PreloadConfig$287
      0030AF 03                    3699 	.db	3
      0030B0 7E                    3700 	.sleb128	-2
      0030B1 01                    3701 	.db	1
      0030B2 09                    3702 	.db	9
      0030B3 00 07                 3703 	.dw	Sstm8s_tim2$TIM2_OC1PreloadConfig$290-Sstm8s_tim2$TIM2_OC1PreloadConfig$288
      0030B5 03                    3704 	.db	3
      0030B6 02                    3705 	.sleb128	2
      0030B7 01                    3706 	.db	1
      0030B8 09                    3707 	.db	9
      0030B9 00 08                 3708 	.dw	Sstm8s_tim2$TIM2_OC1PreloadConfig$293-Sstm8s_tim2$TIM2_OC1PreloadConfig$290
      0030BB 03                    3709 	.db	3
      0030BC 04                    3710 	.sleb128	4
      0030BD 01                    3711 	.db	1
      0030BE 09                    3712 	.db	9
      0030BF 00 05                 3713 	.dw	Sstm8s_tim2$TIM2_OC1PreloadConfig$295-Sstm8s_tim2$TIM2_OC1PreloadConfig$293
      0030C1 03                    3714 	.db	3
      0030C2 02                    3715 	.sleb128	2
      0030C3 01                    3716 	.db	1
      0030C4 09                    3717 	.db	9
      0030C5 00 01                 3718 	.dw	1+Sstm8s_tim2$TIM2_OC1PreloadConfig$296-Sstm8s_tim2$TIM2_OC1PreloadConfig$295
      0030C7 00                    3719 	.db	0
      0030C8 01                    3720 	.uleb128	1
      0030C9 01                    3721 	.db	1
      0030CA 00                    3722 	.db	0
      0030CB 05                    3723 	.uleb128	5
      0030CC 02                    3724 	.db	2
      0030CD 00 00 A1 41           3725 	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$298)
      0030D1 03                    3726 	.db	3
      0030D2 DC 04                 3727 	.sleb128	604
      0030D4 01                    3728 	.db	1
      0030D5 09                    3729 	.db	9
      0030D6 00 00                 3730 	.dw	Sstm8s_tim2$TIM2_OC2PreloadConfig$300-Sstm8s_tim2$TIM2_OC2PreloadConfig$298
      0030D8 03                    3731 	.db	3
      0030D9 08                    3732 	.sleb128	8
      0030DA 01                    3733 	.db	1
      0030DB 09                    3734 	.db	9
      0030DC 00 03                 3735 	.dw	Sstm8s_tim2$TIM2_OC2PreloadConfig$301-Sstm8s_tim2$TIM2_OC2PreloadConfig$300
      0030DE 03                    3736 	.db	3
      0030DF 7E                    3737 	.sleb128	-2
      0030E0 01                    3738 	.db	1
      0030E1 09                    3739 	.db	9
      0030E2 00 07                 3740 	.dw	Sstm8s_tim2$TIM2_OC2PreloadConfig$303-Sstm8s_tim2$TIM2_OC2PreloadConfig$301
      0030E4 03                    3741 	.db	3
      0030E5 02                    3742 	.sleb128	2
      0030E6 01                    3743 	.db	1
      0030E7 09                    3744 	.db	9
      0030E8 00 08                 3745 	.dw	Sstm8s_tim2$TIM2_OC2PreloadConfig$306-Sstm8s_tim2$TIM2_OC2PreloadConfig$303
      0030EA 03                    3746 	.db	3
      0030EB 04                    3747 	.sleb128	4
      0030EC 01                    3748 	.db	1
      0030ED 09                    3749 	.db	9
      0030EE 00 05                 3750 	.dw	Sstm8s_tim2$TIM2_OC2PreloadConfig$308-Sstm8s_tim2$TIM2_OC2PreloadConfig$306
      0030F0 03                    3751 	.db	3
      0030F1 02                    3752 	.sleb128	2
      0030F2 01                    3753 	.db	1
      0030F3 09                    3754 	.db	9
      0030F4 00 01                 3755 	.dw	1+Sstm8s_tim2$TIM2_OC2PreloadConfig$309-Sstm8s_tim2$TIM2_OC2PreloadConfig$308
      0030F6 00                    3756 	.db	0
      0030F7 01                    3757 	.uleb128	1
      0030F8 01                    3758 	.db	1
      0030F9 00                    3759 	.db	0
      0030FA 05                    3760 	.uleb128	5
      0030FB 02                    3761 	.db	2
      0030FC 00 00 A1 59           3762 	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$311)
      003100 03                    3763 	.db	3
      003101 F2 04                 3764 	.sleb128	626
      003103 01                    3765 	.db	1
      003104 09                    3766 	.db	9
      003105 00 00                 3767 	.dw	Sstm8s_tim2$TIM2_OC3PreloadConfig$313-Sstm8s_tim2$TIM2_OC3PreloadConfig$311
      003107 03                    3768 	.db	3
      003108 08                    3769 	.sleb128	8
      003109 01                    3770 	.db	1
      00310A 09                    3771 	.db	9
      00310B 00 03                 3772 	.dw	Sstm8s_tim2$TIM2_OC3PreloadConfig$314-Sstm8s_tim2$TIM2_OC3PreloadConfig$313
      00310D 03                    3773 	.db	3
      00310E 7E                    3774 	.sleb128	-2
      00310F 01                    3775 	.db	1
      003110 09                    3776 	.db	9
      003111 00 07                 3777 	.dw	Sstm8s_tim2$TIM2_OC3PreloadConfig$316-Sstm8s_tim2$TIM2_OC3PreloadConfig$314
      003113 03                    3778 	.db	3
      003114 02                    3779 	.sleb128	2
      003115 01                    3780 	.db	1
      003116 09                    3781 	.db	9
      003117 00 08                 3782 	.dw	Sstm8s_tim2$TIM2_OC3PreloadConfig$319-Sstm8s_tim2$TIM2_OC3PreloadConfig$316
      003119 03                    3783 	.db	3
      00311A 04                    3784 	.sleb128	4
      00311B 01                    3785 	.db	1
      00311C 09                    3786 	.db	9
      00311D 00 05                 3787 	.dw	Sstm8s_tim2$TIM2_OC3PreloadConfig$321-Sstm8s_tim2$TIM2_OC3PreloadConfig$319
      00311F 03                    3788 	.db	3
      003120 02                    3789 	.sleb128	2
      003121 01                    3790 	.db	1
      003122 09                    3791 	.db	9
      003123 00 01                 3792 	.dw	1+Sstm8s_tim2$TIM2_OC3PreloadConfig$322-Sstm8s_tim2$TIM2_OC3PreloadConfig$321
      003125 00                    3793 	.db	0
      003126 01                    3794 	.uleb128	1
      003127 01                    3795 	.db	1
      003128 00                    3796 	.db	0
      003129 05                    3797 	.uleb128	5
      00312A 02                    3798 	.db	2
      00312B 00 00 A1 71           3799 	.dw	0,(Sstm8s_tim2$TIM2_GenerateEvent$324)
      00312F 03                    3800 	.db	3
      003130 8C 05                 3801 	.sleb128	652
      003132 01                    3802 	.db	1
      003133 09                    3803 	.db	9
      003134 00 00                 3804 	.dw	Sstm8s_tim2$TIM2_GenerateEvent$326-Sstm8s_tim2$TIM2_GenerateEvent$324
      003136 03                    3805 	.db	3
      003137 06                    3806 	.sleb128	6
      003138 01                    3807 	.db	1
      003139 09                    3808 	.db	9
      00313A 00 06                 3809 	.dw	Sstm8s_tim2$TIM2_GenerateEvent$327-Sstm8s_tim2$TIM2_GenerateEvent$326
      00313C 03                    3810 	.db	3
      00313D 01                    3811 	.sleb128	1
      00313E 01                    3812 	.db	1
      00313F 09                    3813 	.db	9
      003140 00 01                 3814 	.dw	1+Sstm8s_tim2$TIM2_GenerateEvent$328-Sstm8s_tim2$TIM2_GenerateEvent$327
      003142 00                    3815 	.db	0
      003143 01                    3816 	.uleb128	1
      003144 01                    3817 	.db	1
      003145 00                    3818 	.db	0
      003146 05                    3819 	.uleb128	5
      003147 02                    3820 	.db	2
      003148 00 00 A1 78           3821 	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$330)
      00314C 03                    3822 	.db	3
      00314D 9D 05                 3823 	.sleb128	669
      00314F 01                    3824 	.db	1
      003150 09                    3825 	.db	9
      003151 00 00                 3826 	.dw	Sstm8s_tim2$TIM2_OC1PolarityConfig$332-Sstm8s_tim2$TIM2_OC1PolarityConfig$330
      003153 03                    3827 	.db	3
      003154 08                    3828 	.sleb128	8
      003155 01                    3829 	.db	1
      003156 09                    3830 	.db	9
      003157 00 03                 3831 	.dw	Sstm8s_tim2$TIM2_OC1PolarityConfig$333-Sstm8s_tim2$TIM2_OC1PolarityConfig$332
      003159 03                    3832 	.db	3
      00315A 7E                    3833 	.sleb128	-2
      00315B 01                    3834 	.db	1
      00315C 09                    3835 	.db	9
      00315D 00 07                 3836 	.dw	Sstm8s_tim2$TIM2_OC1PolarityConfig$335-Sstm8s_tim2$TIM2_OC1PolarityConfig$333
      00315F 03                    3837 	.db	3
      003160 02                    3838 	.sleb128	2
      003161 01                    3839 	.db	1
      003162 09                    3840 	.db	9
      003163 00 08                 3841 	.dw	Sstm8s_tim2$TIM2_OC1PolarityConfig$338-Sstm8s_tim2$TIM2_OC1PolarityConfig$335
      003165 03                    3842 	.db	3
      003166 04                    3843 	.sleb128	4
      003167 01                    3844 	.db	1
      003168 09                    3845 	.db	9
      003169 00 05                 3846 	.dw	Sstm8s_tim2$TIM2_OC1PolarityConfig$340-Sstm8s_tim2$TIM2_OC1PolarityConfig$338
      00316B 03                    3847 	.db	3
      00316C 02                    3848 	.sleb128	2
      00316D 01                    3849 	.db	1
      00316E 09                    3850 	.db	9
      00316F 00 01                 3851 	.dw	1+Sstm8s_tim2$TIM2_OC1PolarityConfig$341-Sstm8s_tim2$TIM2_OC1PolarityConfig$340
      003171 00                    3852 	.db	0
      003172 01                    3853 	.uleb128	1
      003173 01                    3854 	.db	1
      003174 00                    3855 	.db	0
      003175 05                    3856 	.uleb128	5
      003176 02                    3857 	.db	2
      003177 00 00 A1 90           3858 	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$343)
      00317B 03                    3859 	.db	3
      00317C B5 05                 3860 	.sleb128	693
      00317E 01                    3861 	.db	1
      00317F 09                    3862 	.db	9
      003180 00 00                 3863 	.dw	Sstm8s_tim2$TIM2_OC2PolarityConfig$345-Sstm8s_tim2$TIM2_OC2PolarityConfig$343
      003182 03                    3864 	.db	3
      003183 08                    3865 	.sleb128	8
      003184 01                    3866 	.db	1
      003185 09                    3867 	.db	9
      003186 00 03                 3868 	.dw	Sstm8s_tim2$TIM2_OC2PolarityConfig$346-Sstm8s_tim2$TIM2_OC2PolarityConfig$345
      003188 03                    3869 	.db	3
      003189 7E                    3870 	.sleb128	-2
      00318A 01                    3871 	.db	1
      00318B 09                    3872 	.db	9
      00318C 00 07                 3873 	.dw	Sstm8s_tim2$TIM2_OC2PolarityConfig$348-Sstm8s_tim2$TIM2_OC2PolarityConfig$346
      00318E 03                    3874 	.db	3
      00318F 02                    3875 	.sleb128	2
      003190 01                    3876 	.db	1
      003191 09                    3877 	.db	9
      003192 00 08                 3878 	.dw	Sstm8s_tim2$TIM2_OC2PolarityConfig$351-Sstm8s_tim2$TIM2_OC2PolarityConfig$348
      003194 03                    3879 	.db	3
      003195 04                    3880 	.sleb128	4
      003196 01                    3881 	.db	1
      003197 09                    3882 	.db	9
      003198 00 05                 3883 	.dw	Sstm8s_tim2$TIM2_OC2PolarityConfig$353-Sstm8s_tim2$TIM2_OC2PolarityConfig$351
      00319A 03                    3884 	.db	3
      00319B 02                    3885 	.sleb128	2
      00319C 01                    3886 	.db	1
      00319D 09                    3887 	.db	9
      00319E 00 01                 3888 	.dw	1+Sstm8s_tim2$TIM2_OC2PolarityConfig$354-Sstm8s_tim2$TIM2_OC2PolarityConfig$353
      0031A0 00                    3889 	.db	0
      0031A1 01                    3890 	.uleb128	1
      0031A2 01                    3891 	.db	1
      0031A3 00                    3892 	.db	0
      0031A4 05                    3893 	.uleb128	5
      0031A5 02                    3894 	.db	2
      0031A6 00 00 A1 A8           3895 	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$356)
      0031AA 03                    3896 	.db	3
      0031AB CD 05                 3897 	.sleb128	717
      0031AD 01                    3898 	.db	1
      0031AE 09                    3899 	.db	9
      0031AF 00 00                 3900 	.dw	Sstm8s_tim2$TIM2_OC3PolarityConfig$358-Sstm8s_tim2$TIM2_OC3PolarityConfig$356
      0031B1 03                    3901 	.db	3
      0031B2 08                    3902 	.sleb128	8
      0031B3 01                    3903 	.db	1
      0031B4 09                    3904 	.db	9
      0031B5 00 03                 3905 	.dw	Sstm8s_tim2$TIM2_OC3PolarityConfig$359-Sstm8s_tim2$TIM2_OC3PolarityConfig$358
      0031B7 03                    3906 	.db	3
      0031B8 7E                    3907 	.sleb128	-2
      0031B9 01                    3908 	.db	1
      0031BA 09                    3909 	.db	9
      0031BB 00 07                 3910 	.dw	Sstm8s_tim2$TIM2_OC3PolarityConfig$361-Sstm8s_tim2$TIM2_OC3PolarityConfig$359
      0031BD 03                    3911 	.db	3
      0031BE 02                    3912 	.sleb128	2
      0031BF 01                    3913 	.db	1
      0031C0 09                    3914 	.db	9
      0031C1 00 08                 3915 	.dw	Sstm8s_tim2$TIM2_OC3PolarityConfig$364-Sstm8s_tim2$TIM2_OC3PolarityConfig$361
      0031C3 03                    3916 	.db	3
      0031C4 04                    3917 	.sleb128	4
      0031C5 01                    3918 	.db	1
      0031C6 09                    3919 	.db	9
      0031C7 00 05                 3920 	.dw	Sstm8s_tim2$TIM2_OC3PolarityConfig$366-Sstm8s_tim2$TIM2_OC3PolarityConfig$364
      0031C9 03                    3921 	.db	3
      0031CA 02                    3922 	.sleb128	2
      0031CB 01                    3923 	.db	1
      0031CC 09                    3924 	.db	9
      0031CD 00 01                 3925 	.dw	1+Sstm8s_tim2$TIM2_OC3PolarityConfig$367-Sstm8s_tim2$TIM2_OC3PolarityConfig$366
      0031CF 00                    3926 	.db	0
      0031D0 01                    3927 	.uleb128	1
      0031D1 01                    3928 	.db	1
      0031D2 00                    3929 	.db	0
      0031D3 05                    3930 	.uleb128	5
      0031D4 02                    3931 	.db	2
      0031D5 00 00 A1 C0           3932 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$369)
      0031D9 03                    3933 	.db	3
      0031DA E8 05                 3934 	.sleb128	744
      0031DC 01                    3935 	.db	1
      0031DD 09                    3936 	.db	9
      0031DE 00 00                 3937 	.dw	Sstm8s_tim2$TIM2_CCxCmd$371-Sstm8s_tim2$TIM2_CCxCmd$369
      0031E0 03                    3938 	.db	3
      0031E1 06                    3939 	.sleb128	6
      0031E2 01                    3940 	.db	1
      0031E3 09                    3941 	.db	9
      0031E4 00 07                 3942 	.dw	Sstm8s_tim2$TIM2_CCxCmd$372-Sstm8s_tim2$TIM2_CCxCmd$371
      0031E6 03                    3943 	.db	3
      0031E7 05                    3944 	.sleb128	5
      0031E8 01                    3945 	.db	1
      0031E9 09                    3946 	.db	9
      0031EA 00 03                 3947 	.dw	Sstm8s_tim2$TIM2_CCxCmd$374-Sstm8s_tim2$TIM2_CCxCmd$372
      0031EC 03                    3948 	.db	3
      0031ED 7E                    3949 	.sleb128	-2
      0031EE 01                    3950 	.db	1
      0031EF 09                    3951 	.db	9
      0031F0 00 07                 3952 	.dw	Sstm8s_tim2$TIM2_CCxCmd$376-Sstm8s_tim2$TIM2_CCxCmd$374
      0031F2 03                    3953 	.db	3
      0031F3 02                    3954 	.sleb128	2
      0031F4 01                    3955 	.db	1
      0031F5 09                    3956 	.db	9
      0031F6 00 08                 3957 	.dw	Sstm8s_tim2$TIM2_CCxCmd$379-Sstm8s_tim2$TIM2_CCxCmd$376
      0031F8 03                    3958 	.db	3
      0031F9 04                    3959 	.sleb128	4
      0031FA 01                    3960 	.db	1
      0031FB 09                    3961 	.db	9
      0031FC 00 08                 3962 	.dw	Sstm8s_tim2$TIM2_CCxCmd$381-Sstm8s_tim2$TIM2_CCxCmd$379
      0031FE 03                    3963 	.db	3
      0031FF 04                    3964 	.sleb128	4
      003200 01                    3965 	.db	1
      003201 09                    3966 	.db	9
      003202 00 0B                 3967 	.dw	Sstm8s_tim2$TIM2_CCxCmd$383-Sstm8s_tim2$TIM2_CCxCmd$381
      003204 03                    3968 	.db	3
      003205 78                    3969 	.sleb128	-8
      003206 01                    3970 	.db	1
      003207 09                    3971 	.db	9
      003208 00 03                 3972 	.dw	Sstm8s_tim2$TIM2_CCxCmd$385-Sstm8s_tim2$TIM2_CCxCmd$383
      00320A 03                    3973 	.db	3
      00320B 0B                    3974 	.sleb128	11
      00320C 01                    3975 	.db	1
      00320D 09                    3976 	.db	9
      00320E 00 07                 3977 	.dw	Sstm8s_tim2$TIM2_CCxCmd$387-Sstm8s_tim2$TIM2_CCxCmd$385
      003210 03                    3978 	.db	3
      003211 02                    3979 	.sleb128	2
      003212 01                    3980 	.db	1
      003213 09                    3981 	.db	9
      003214 00 08                 3982 	.dw	Sstm8s_tim2$TIM2_CCxCmd$390-Sstm8s_tim2$TIM2_CCxCmd$387
      003216 03                    3983 	.db	3
      003217 04                    3984 	.sleb128	4
      003218 01                    3985 	.db	1
      003219 09                    3986 	.db	9
      00321A 00 08                 3987 	.dw	Sstm8s_tim2$TIM2_CCxCmd$392-Sstm8s_tim2$TIM2_CCxCmd$390
      00321C 03                    3988 	.db	3
      00321D 08                    3989 	.sleb128	8
      00321E 01                    3990 	.db	1
      00321F 09                    3991 	.db	9
      003220 00 03                 3992 	.dw	Sstm8s_tim2$TIM2_CCxCmd$394-Sstm8s_tim2$TIM2_CCxCmd$392
      003222 03                    3993 	.db	3
      003223 7E                    3994 	.sleb128	-2
      003224 01                    3995 	.db	1
      003225 09                    3996 	.db	9
      003226 00 07                 3997 	.dw	Sstm8s_tim2$TIM2_CCxCmd$396-Sstm8s_tim2$TIM2_CCxCmd$394
      003228 03                    3998 	.db	3
      003229 02                    3999 	.sleb128	2
      00322A 01                    4000 	.db	1
      00322B 09                    4001 	.db	9
      00322C 00 08                 4002 	.dw	Sstm8s_tim2$TIM2_CCxCmd$399-Sstm8s_tim2$TIM2_CCxCmd$396
      00322E 03                    4003 	.db	3
      00322F 04                    4004 	.sleb128	4
      003230 01                    4005 	.db	1
      003231 09                    4006 	.db	9
      003232 00 05                 4007 	.dw	Sstm8s_tim2$TIM2_CCxCmd$401-Sstm8s_tim2$TIM2_CCxCmd$399
      003234 03                    4008 	.db	3
      003235 03                    4009 	.sleb128	3
      003236 01                    4010 	.db	1
      003237 09                    4011 	.db	9
      003238 00 01                 4012 	.dw	1+Sstm8s_tim2$TIM2_CCxCmd$402-Sstm8s_tim2$TIM2_CCxCmd$401
      00323A 00                    4013 	.db	0
      00323B 01                    4014 	.uleb128	1
      00323C 01                    4015 	.db	1
      00323D 00                    4016 	.db	0
      00323E 05                    4017 	.uleb128	5
      00323F 02                    4018 	.db	2
      003240 00 00 A2 1E           4019 	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$404)
      003244 03                    4020 	.db	3
      003245 A9 06                 4021 	.sleb128	809
      003247 01                    4022 	.db	1
      003248 09                    4023 	.db	9
      003249 00 00                 4024 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$406-Sstm8s_tim2$TIM2_SelectOCxM$404
      00324B 03                    4025 	.db	3
      00324C 06                    4026 	.sleb128	6
      00324D 01                    4027 	.db	1
      00324E 09                    4028 	.db	9
      00324F 00 07                 4029 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$408-Sstm8s_tim2$TIM2_SelectOCxM$406
      003251 03                    4030 	.db	3
      003252 03                    4031 	.sleb128	3
      003253 01                    4032 	.db	1
      003254 09                    4033 	.db	9
      003255 00 08                 4034 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$409-Sstm8s_tim2$TIM2_SelectOCxM$408
      003257 03                    4035 	.db	3
      003258 03                    4036 	.sleb128	3
      003259 01                    4037 	.db	1
      00325A 09                    4038 	.db	9
      00325B 00 05                 4039 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$410-Sstm8s_tim2$TIM2_SelectOCxM$409
      00325D 03                    4040 	.db	3
      00325E 01                    4041 	.sleb128	1
      00325F 01                    4042 	.db	1
      003260 09                    4043 	.db	9
      003261 00 08                 4044 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$412-Sstm8s_tim2$TIM2_SelectOCxM$410
      003263 03                    4045 	.db	3
      003264 02                    4046 	.sleb128	2
      003265 01                    4047 	.db	1
      003266 09                    4048 	.db	9
      003267 00 0B                 4049 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$415-Sstm8s_tim2$TIM2_SelectOCxM$412
      003269 03                    4050 	.db	3
      00326A 03                    4051 	.sleb128	3
      00326B 01                    4052 	.db	1
      00326C 09                    4053 	.db	9
      00326D 00 08                 4054 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$416-Sstm8s_tim2$TIM2_SelectOCxM$415
      00326F 03                    4055 	.db	3
      003270 03                    4056 	.sleb128	3
      003271 01                    4057 	.db	1
      003272 09                    4058 	.db	9
      003273 00 05                 4059 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$417-Sstm8s_tim2$TIM2_SelectOCxM$416
      003275 03                    4060 	.db	3
      003276 01                    4061 	.sleb128	1
      003277 01                    4062 	.db	1
      003278 09                    4063 	.db	9
      003279 00 08                 4064 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$420-Sstm8s_tim2$TIM2_SelectOCxM$417
      00327B 03                    4065 	.db	3
      00327C 05                    4066 	.sleb128	5
      00327D 01                    4067 	.db	1
      00327E 09                    4068 	.db	9
      00327F 00 08                 4069 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$421-Sstm8s_tim2$TIM2_SelectOCxM$420
      003281 03                    4070 	.db	3
      003282 03                    4071 	.sleb128	3
      003283 01                    4072 	.db	1
      003284 09                    4073 	.db	9
      003285 00 05                 4074 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$422-Sstm8s_tim2$TIM2_SelectOCxM$421
      003287 03                    4075 	.db	3
      003288 01                    4076 	.sleb128	1
      003289 01                    4077 	.db	1
      00328A 09                    4078 	.db	9
      00328B 00 05                 4079 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$424-Sstm8s_tim2$TIM2_SelectOCxM$422
      00328D 03                    4080 	.db	3
      00328E 02                    4081 	.sleb128	2
      00328F 01                    4082 	.db	1
      003290 09                    4083 	.db	9
      003291 00 01                 4084 	.dw	1+Sstm8s_tim2$TIM2_SelectOCxM$425-Sstm8s_tim2$TIM2_SelectOCxM$424
      003293 00                    4085 	.db	0
      003294 01                    4086 	.uleb128	1
      003295 01                    4087 	.db	1
      003296 00                    4088 	.db	0
      003297 05                    4089 	.uleb128	5
      003298 02                    4090 	.db	2
      003299 00 00 A2 6D           4091 	.dw	0,(Sstm8s_tim2$TIM2_SetCounter$427)
      00329D 03                    4092 	.db	3
      00329E D2 06                 4093 	.sleb128	850
      0032A0 01                    4094 	.db	1
      0032A1 09                    4095 	.db	9
      0032A2 00 00                 4096 	.dw	Sstm8s_tim2$TIM2_SetCounter$429-Sstm8s_tim2$TIM2_SetCounter$427
      0032A4 03                    4097 	.db	3
      0032A5 03                    4098 	.sleb128	3
      0032A6 01                    4099 	.db	1
      0032A7 09                    4100 	.db	9
      0032A8 00 06                 4101 	.dw	Sstm8s_tim2$TIM2_SetCounter$430-Sstm8s_tim2$TIM2_SetCounter$429
      0032AA 03                    4102 	.db	3
      0032AB 01                    4103 	.sleb128	1
      0032AC 01                    4104 	.db	1
      0032AD 09                    4105 	.db	9
      0032AE 00 05                 4106 	.dw	Sstm8s_tim2$TIM2_SetCounter$431-Sstm8s_tim2$TIM2_SetCounter$430
      0032B0 03                    4107 	.db	3
      0032B1 01                    4108 	.sleb128	1
      0032B2 01                    4109 	.db	1
      0032B3 09                    4110 	.db	9
      0032B4 00 01                 4111 	.dw	1+Sstm8s_tim2$TIM2_SetCounter$432-Sstm8s_tim2$TIM2_SetCounter$431
      0032B6 00                    4112 	.db	0
      0032B7 01                    4113 	.uleb128	1
      0032B8 01                    4114 	.db	1
      0032B9 00                    4115 	.db	0
      0032BA 05                    4116 	.uleb128	5
      0032BB 02                    4117 	.db	2
      0032BC 00 00 A2 79           4118 	.dw	0,(Sstm8s_tim2$TIM2_SetAutoreload$434)
      0032C0 03                    4119 	.db	3
      0032C1 DF 06                 4120 	.sleb128	863
      0032C3 01                    4121 	.db	1
      0032C4 09                    4122 	.db	9
      0032C5 00 00                 4123 	.dw	Sstm8s_tim2$TIM2_SetAutoreload$436-Sstm8s_tim2$TIM2_SetAutoreload$434
      0032C7 03                    4124 	.db	3
      0032C8 03                    4125 	.sleb128	3
      0032C9 01                    4126 	.db	1
      0032CA 09                    4127 	.db	9
      0032CB 00 06                 4128 	.dw	Sstm8s_tim2$TIM2_SetAutoreload$437-Sstm8s_tim2$TIM2_SetAutoreload$436
      0032CD 03                    4129 	.db	3
      0032CE 01                    4130 	.sleb128	1
      0032CF 01                    4131 	.db	1
      0032D0 09                    4132 	.db	9
      0032D1 00 05                 4133 	.dw	Sstm8s_tim2$TIM2_SetAutoreload$438-Sstm8s_tim2$TIM2_SetAutoreload$437
      0032D3 03                    4134 	.db	3
      0032D4 01                    4135 	.sleb128	1
      0032D5 01                    4136 	.db	1
      0032D6 09                    4137 	.db	9
      0032D7 00 01                 4138 	.dw	1+Sstm8s_tim2$TIM2_SetAutoreload$439-Sstm8s_tim2$TIM2_SetAutoreload$438
      0032D9 00                    4139 	.db	0
      0032DA 01                    4140 	.uleb128	1
      0032DB 01                    4141 	.db	1
      0032DC 00                    4142 	.db	0
      0032DD 05                    4143 	.uleb128	5
      0032DE 02                    4144 	.db	2
      0032DF 00 00 A2 85           4145 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare1$441)
      0032E3 03                    4146 	.db	3
      0032E4 EC 06                 4147 	.sleb128	876
      0032E6 01                    4148 	.db	1
      0032E7 09                    4149 	.db	9
      0032E8 00 00                 4150 	.dw	Sstm8s_tim2$TIM2_SetCompare1$443-Sstm8s_tim2$TIM2_SetCompare1$441
      0032EA 03                    4151 	.db	3
      0032EB 03                    4152 	.sleb128	3
      0032EC 01                    4153 	.db	1
      0032ED 09                    4154 	.db	9
      0032EE 00 06                 4155 	.dw	Sstm8s_tim2$TIM2_SetCompare1$444-Sstm8s_tim2$TIM2_SetCompare1$443
      0032F0 03                    4156 	.db	3
      0032F1 01                    4157 	.sleb128	1
      0032F2 01                    4158 	.db	1
      0032F3 09                    4159 	.db	9
      0032F4 00 05                 4160 	.dw	Sstm8s_tim2$TIM2_SetCompare1$445-Sstm8s_tim2$TIM2_SetCompare1$444
      0032F6 03                    4161 	.db	3
      0032F7 01                    4162 	.sleb128	1
      0032F8 01                    4163 	.db	1
      0032F9 09                    4164 	.db	9
      0032FA 00 01                 4165 	.dw	1+Sstm8s_tim2$TIM2_SetCompare1$446-Sstm8s_tim2$TIM2_SetCompare1$445
      0032FC 00                    4166 	.db	0
      0032FD 01                    4167 	.uleb128	1
      0032FE 01                    4168 	.db	1
      0032FF 00                    4169 	.db	0
      003300 05                    4170 	.uleb128	5
      003301 02                    4171 	.db	2
      003302 00 00 A2 91           4172 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare2$448)
      003306 03                    4173 	.db	3
      003307 F9 06                 4174 	.sleb128	889
      003309 01                    4175 	.db	1
      00330A 09                    4176 	.db	9
      00330B 00 00                 4177 	.dw	Sstm8s_tim2$TIM2_SetCompare2$450-Sstm8s_tim2$TIM2_SetCompare2$448
      00330D 03                    4178 	.db	3
      00330E 03                    4179 	.sleb128	3
      00330F 01                    4180 	.db	1
      003310 09                    4181 	.db	9
      003311 00 06                 4182 	.dw	Sstm8s_tim2$TIM2_SetCompare2$451-Sstm8s_tim2$TIM2_SetCompare2$450
      003313 03                    4183 	.db	3
      003314 01                    4184 	.sleb128	1
      003315 01                    4185 	.db	1
      003316 09                    4186 	.db	9
      003317 00 05                 4187 	.dw	Sstm8s_tim2$TIM2_SetCompare2$452-Sstm8s_tim2$TIM2_SetCompare2$451
      003319 03                    4188 	.db	3
      00331A 01                    4189 	.sleb128	1
      00331B 01                    4190 	.db	1
      00331C 09                    4191 	.db	9
      00331D 00 01                 4192 	.dw	1+Sstm8s_tim2$TIM2_SetCompare2$453-Sstm8s_tim2$TIM2_SetCompare2$452
      00331F 00                    4193 	.db	0
      003320 01                    4194 	.uleb128	1
      003321 01                    4195 	.db	1
      003322 00                    4196 	.db	0
      003323 05                    4197 	.uleb128	5
      003324 02                    4198 	.db	2
      003325 00 00 A2 9D           4199 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare3$455)
      003329 03                    4200 	.db	3
      00332A 86 07                 4201 	.sleb128	902
      00332C 01                    4202 	.db	1
      00332D 09                    4203 	.db	9
      00332E 00 00                 4204 	.dw	Sstm8s_tim2$TIM2_SetCompare3$457-Sstm8s_tim2$TIM2_SetCompare3$455
      003330 03                    4205 	.db	3
      003331 03                    4206 	.sleb128	3
      003332 01                    4207 	.db	1
      003333 09                    4208 	.db	9
      003334 00 06                 4209 	.dw	Sstm8s_tim2$TIM2_SetCompare3$458-Sstm8s_tim2$TIM2_SetCompare3$457
      003336 03                    4210 	.db	3
      003337 01                    4211 	.sleb128	1
      003338 01                    4212 	.db	1
      003339 09                    4213 	.db	9
      00333A 00 05                 4214 	.dw	Sstm8s_tim2$TIM2_SetCompare3$459-Sstm8s_tim2$TIM2_SetCompare3$458
      00333C 03                    4215 	.db	3
      00333D 01                    4216 	.sleb128	1
      00333E 01                    4217 	.db	1
      00333F 09                    4218 	.db	9
      003340 00 01                 4219 	.dw	1+Sstm8s_tim2$TIM2_SetCompare3$460-Sstm8s_tim2$TIM2_SetCompare3$459
      003342 00                    4220 	.db	0
      003343 01                    4221 	.uleb128	1
      003344 01                    4222 	.db	1
      003345 00                    4223 	.db	0
      003346 05                    4224 	.uleb128	5
      003347 02                    4225 	.db	2
      003348 00 00 A2 A9           4226 	.dw	0,(Sstm8s_tim2$TIM2_SetIC1Prescaler$462)
      00334C 03                    4227 	.db	3
      00334D 97 07                 4228 	.sleb128	919
      00334F 01                    4229 	.db	1
      003350 09                    4230 	.db	9
      003351 00 00                 4231 	.dw	Sstm8s_tim2$TIM2_SetIC1Prescaler$464-Sstm8s_tim2$TIM2_SetIC1Prescaler$462
      003353 03                    4232 	.db	3
      003354 06                    4233 	.sleb128	6
      003355 01                    4234 	.db	1
      003356 09                    4235 	.db	9
      003357 00 05                 4236 	.dw	Sstm8s_tim2$TIM2_SetIC1Prescaler$465-Sstm8s_tim2$TIM2_SetIC1Prescaler$464
      003359 03                    4237 	.db	3
      00335A 01                    4238 	.sleb128	1
      00335B 01                    4239 	.db	1
      00335C 09                    4240 	.db	9
      00335D 00 05                 4241 	.dw	Sstm8s_tim2$TIM2_SetIC1Prescaler$466-Sstm8s_tim2$TIM2_SetIC1Prescaler$465
      00335F 03                    4242 	.db	3
      003360 01                    4243 	.sleb128	1
      003361 01                    4244 	.db	1
      003362 09                    4245 	.db	9
      003363 00 01                 4246 	.dw	1+Sstm8s_tim2$TIM2_SetIC1Prescaler$467-Sstm8s_tim2$TIM2_SetIC1Prescaler$466
      003365 00                    4247 	.db	0
      003366 01                    4248 	.uleb128	1
      003367 01                    4249 	.db	1
      003368 00                    4250 	.db	0
      003369 05                    4251 	.uleb128	5
      00336A 02                    4252 	.db	2
      00336B 00 00 A2 B4           4253 	.dw	0,(Sstm8s_tim2$TIM2_SetIC2Prescaler$469)
      00336F 03                    4254 	.db	3
      003370 AB 07                 4255 	.sleb128	939
      003372 01                    4256 	.db	1
      003373 09                    4257 	.db	9
      003374 00 00                 4258 	.dw	Sstm8s_tim2$TIM2_SetIC2Prescaler$471-Sstm8s_tim2$TIM2_SetIC2Prescaler$469
      003376 03                    4259 	.db	3
      003377 06                    4260 	.sleb128	6
      003378 01                    4261 	.db	1
      003379 09                    4262 	.db	9
      00337A 00 05                 4263 	.dw	Sstm8s_tim2$TIM2_SetIC2Prescaler$472-Sstm8s_tim2$TIM2_SetIC2Prescaler$471
      00337C 03                    4264 	.db	3
      00337D 01                    4265 	.sleb128	1
      00337E 01                    4266 	.db	1
      00337F 09                    4267 	.db	9
      003380 00 05                 4268 	.dw	Sstm8s_tim2$TIM2_SetIC2Prescaler$473-Sstm8s_tim2$TIM2_SetIC2Prescaler$472
      003382 03                    4269 	.db	3
      003383 01                    4270 	.sleb128	1
      003384 01                    4271 	.db	1
      003385 09                    4272 	.db	9
      003386 00 01                 4273 	.dw	1+Sstm8s_tim2$TIM2_SetIC2Prescaler$474-Sstm8s_tim2$TIM2_SetIC2Prescaler$473
      003388 00                    4274 	.db	0
      003389 01                    4275 	.uleb128	1
      00338A 01                    4276 	.db	1
      00338B 00                    4277 	.db	0
      00338C 05                    4278 	.uleb128	5
      00338D 02                    4279 	.db	2
      00338E 00 00 A2 BF           4280 	.dw	0,(Sstm8s_tim2$TIM2_SetIC3Prescaler$476)
      003392 03                    4281 	.db	3
      003393 BF 07                 4282 	.sleb128	959
      003395 01                    4283 	.db	1
      003396 09                    4284 	.db	9
      003397 00 00                 4285 	.dw	Sstm8s_tim2$TIM2_SetIC3Prescaler$478-Sstm8s_tim2$TIM2_SetIC3Prescaler$476
      003399 03                    4286 	.db	3
      00339A 06                    4287 	.sleb128	6
      00339B 01                    4288 	.db	1
      00339C 09                    4289 	.db	9
      00339D 00 05                 4290 	.dw	Sstm8s_tim2$TIM2_SetIC3Prescaler$479-Sstm8s_tim2$TIM2_SetIC3Prescaler$478
      00339F 03                    4291 	.db	3
      0033A0 01                    4292 	.sleb128	1
      0033A1 01                    4293 	.db	1
      0033A2 09                    4294 	.db	9
      0033A3 00 05                 4295 	.dw	Sstm8s_tim2$TIM2_SetIC3Prescaler$480-Sstm8s_tim2$TIM2_SetIC3Prescaler$479
      0033A5 03                    4296 	.db	3
      0033A6 01                    4297 	.sleb128	1
      0033A7 01                    4298 	.db	1
      0033A8 09                    4299 	.db	9
      0033A9 00 01                 4300 	.dw	1+Sstm8s_tim2$TIM2_SetIC3Prescaler$481-Sstm8s_tim2$TIM2_SetIC3Prescaler$480
      0033AB 00                    4301 	.db	0
      0033AC 01                    4302 	.uleb128	1
      0033AD 01                    4303 	.db	1
      0033AE 00                    4304 	.db	0
      0033AF 05                    4305 	.uleb128	5
      0033B0 02                    4306 	.db	2
      0033B1 00 00 A2 CA           4307 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$483)
      0033B5 03                    4308 	.db	3
      0033B6 CE 07                 4309 	.sleb128	974
      0033B8 01                    4310 	.db	1
      0033B9 09                    4311 	.db	9
      0033BA 00 01                 4312 	.dw	Sstm8s_tim2$TIM2_GetCapture1$486-Sstm8s_tim2$TIM2_GetCapture1$483
      0033BC 03                    4313 	.db	3
      0033BD 06                    4314 	.sleb128	6
      0033BE 01                    4315 	.db	1
      0033BF 09                    4316 	.db	9
      0033C0 00 04                 4317 	.dw	Sstm8s_tim2$TIM2_GetCapture1$487-Sstm8s_tim2$TIM2_GetCapture1$486
      0033C2 03                    4318 	.db	3
      0033C3 01                    4319 	.sleb128	1
      0033C4 01                    4320 	.db	1
      0033C5 09                    4321 	.db	9
      0033C6 00 03                 4322 	.dw	Sstm8s_tim2$TIM2_GetCapture1$488-Sstm8s_tim2$TIM2_GetCapture1$487
      0033C8 03                    4323 	.db	3
      0033C9 02                    4324 	.sleb128	2
      0033CA 01                    4325 	.db	1
      0033CB 09                    4326 	.db	9
      0033CC 00 02                 4327 	.dw	Sstm8s_tim2$TIM2_GetCapture1$489-Sstm8s_tim2$TIM2_GetCapture1$488
      0033CE 03                    4328 	.db	3
      0033CF 01                    4329 	.sleb128	1
      0033D0 01                    4330 	.db	1
      0033D1 09                    4331 	.db	9
      0033D2 00 0D                 4332 	.dw	Sstm8s_tim2$TIM2_GetCapture1$492-Sstm8s_tim2$TIM2_GetCapture1$489
      0033D4 03                    4333 	.db	3
      0033D5 02                    4334 	.sleb128	2
      0033D6 01                    4335 	.db	1
      0033D7 09                    4336 	.db	9
      0033D8 00 00                 4337 	.dw	Sstm8s_tim2$TIM2_GetCapture1$493-Sstm8s_tim2$TIM2_GetCapture1$492
      0033DA 03                    4338 	.db	3
      0033DB 01                    4339 	.sleb128	1
      0033DC 01                    4340 	.db	1
      0033DD 09                    4341 	.db	9
      0033DE 00 03                 4342 	.dw	1+Sstm8s_tim2$TIM2_GetCapture1$495-Sstm8s_tim2$TIM2_GetCapture1$493
      0033E0 00                    4343 	.db	0
      0033E1 01                    4344 	.uleb128	1
      0033E2 01                    4345 	.db	1
      0033E3 00                    4346 	.db	0
      0033E4 05                    4347 	.uleb128	5
      0033E5 02                    4348 	.db	2
      0033E6 00 00 A2 E4           4349 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$497)
      0033EA 03                    4350 	.db	3
      0033EB E2 07                 4351 	.sleb128	994
      0033ED 01                    4352 	.db	1
      0033EE 09                    4353 	.db	9
      0033EF 00 01                 4354 	.dw	Sstm8s_tim2$TIM2_GetCapture2$500-Sstm8s_tim2$TIM2_GetCapture2$497
      0033F1 03                    4355 	.db	3
      0033F2 06                    4356 	.sleb128	6
      0033F3 01                    4357 	.db	1
      0033F4 09                    4358 	.db	9
      0033F5 00 04                 4359 	.dw	Sstm8s_tim2$TIM2_GetCapture2$501-Sstm8s_tim2$TIM2_GetCapture2$500
      0033F7 03                    4360 	.db	3
      0033F8 01                    4361 	.sleb128	1
      0033F9 01                    4362 	.db	1
      0033FA 09                    4363 	.db	9
      0033FB 00 03                 4364 	.dw	Sstm8s_tim2$TIM2_GetCapture2$502-Sstm8s_tim2$TIM2_GetCapture2$501
      0033FD 03                    4365 	.db	3
      0033FE 02                    4366 	.sleb128	2
      0033FF 01                    4367 	.db	1
      003400 09                    4368 	.db	9
      003401 00 02                 4369 	.dw	Sstm8s_tim2$TIM2_GetCapture2$503-Sstm8s_tim2$TIM2_GetCapture2$502
      003403 03                    4370 	.db	3
      003404 01                    4371 	.sleb128	1
      003405 01                    4372 	.db	1
      003406 09                    4373 	.db	9
      003407 00 0D                 4374 	.dw	Sstm8s_tim2$TIM2_GetCapture2$506-Sstm8s_tim2$TIM2_GetCapture2$503
      003409 03                    4375 	.db	3
      00340A 02                    4376 	.sleb128	2
      00340B 01                    4377 	.db	1
      00340C 09                    4378 	.db	9
      00340D 00 00                 4379 	.dw	Sstm8s_tim2$TIM2_GetCapture2$507-Sstm8s_tim2$TIM2_GetCapture2$506
      00340F 03                    4380 	.db	3
      003410 01                    4381 	.sleb128	1
      003411 01                    4382 	.db	1
      003412 09                    4383 	.db	9
      003413 00 03                 4384 	.dw	1+Sstm8s_tim2$TIM2_GetCapture2$509-Sstm8s_tim2$TIM2_GetCapture2$507
      003415 00                    4385 	.db	0
      003416 01                    4386 	.uleb128	1
      003417 01                    4387 	.db	1
      003418 00                    4388 	.db	0
      003419 05                    4389 	.uleb128	5
      00341A 02                    4390 	.db	2
      00341B 00 00 A2 FE           4391 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$511)
      00341F 03                    4392 	.db	3
      003420 F6 07                 4393 	.sleb128	1014
      003422 01                    4394 	.db	1
      003423 09                    4395 	.db	9
      003424 00 01                 4396 	.dw	Sstm8s_tim2$TIM2_GetCapture3$514-Sstm8s_tim2$TIM2_GetCapture3$511
      003426 03                    4397 	.db	3
      003427 06                    4398 	.sleb128	6
      003428 01                    4399 	.db	1
      003429 09                    4400 	.db	9
      00342A 00 04                 4401 	.dw	Sstm8s_tim2$TIM2_GetCapture3$515-Sstm8s_tim2$TIM2_GetCapture3$514
      00342C 03                    4402 	.db	3
      00342D 01                    4403 	.sleb128	1
      00342E 01                    4404 	.db	1
      00342F 09                    4405 	.db	9
      003430 00 03                 4406 	.dw	Sstm8s_tim2$TIM2_GetCapture3$516-Sstm8s_tim2$TIM2_GetCapture3$515
      003432 03                    4407 	.db	3
      003433 02                    4408 	.sleb128	2
      003434 01                    4409 	.db	1
      003435 09                    4410 	.db	9
      003436 00 02                 4411 	.dw	Sstm8s_tim2$TIM2_GetCapture3$517-Sstm8s_tim2$TIM2_GetCapture3$516
      003438 03                    4412 	.db	3
      003439 01                    4413 	.sleb128	1
      00343A 01                    4414 	.db	1
      00343B 09                    4415 	.db	9
      00343C 00 0D                 4416 	.dw	Sstm8s_tim2$TIM2_GetCapture3$520-Sstm8s_tim2$TIM2_GetCapture3$517
      00343E 03                    4417 	.db	3
      00343F 02                    4418 	.sleb128	2
      003440 01                    4419 	.db	1
      003441 09                    4420 	.db	9
      003442 00 00                 4421 	.dw	Sstm8s_tim2$TIM2_GetCapture3$521-Sstm8s_tim2$TIM2_GetCapture3$520
      003444 03                    4422 	.db	3
      003445 01                    4423 	.sleb128	1
      003446 01                    4424 	.db	1
      003447 09                    4425 	.db	9
      003448 00 03                 4426 	.dw	1+Sstm8s_tim2$TIM2_GetCapture3$523-Sstm8s_tim2$TIM2_GetCapture3$521
      00344A 00                    4427 	.db	0
      00344B 01                    4428 	.uleb128	1
      00344C 01                    4429 	.db	1
      00344D 00                    4430 	.db	0
      00344E 05                    4431 	.uleb128	5
      00344F 02                    4432 	.db	2
      003450 00 00 A3 18           4433 	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$525)
      003454 03                    4434 	.db	3
      003455 8A 08                 4435 	.sleb128	1034
      003457 01                    4436 	.db	1
      003458 09                    4437 	.db	9
      003459 00 02                 4438 	.dw	Sstm8s_tim2$TIM2_GetCounter$528-Sstm8s_tim2$TIM2_GetCounter$525
      00345B 03                    4439 	.db	3
      00345C 04                    4440 	.sleb128	4
      00345D 01                    4441 	.db	1
      00345E 09                    4442 	.db	9
      00345F 00 08                 4443 	.dw	Sstm8s_tim2$TIM2_GetCounter$529-Sstm8s_tim2$TIM2_GetCounter$528
      003461 03                    4444 	.db	3
      003462 02                    4445 	.sleb128	2
      003463 01                    4446 	.db	1
      003464 09                    4447 	.db	9
      003465 00 0C                 4448 	.dw	Sstm8s_tim2$TIM2_GetCounter$530-Sstm8s_tim2$TIM2_GetCounter$529
      003467 03                    4449 	.db	3
      003468 01                    4450 	.sleb128	1
      003469 01                    4451 	.db	1
      00346A 09                    4452 	.db	9
      00346B 00 03                 4453 	.dw	1+Sstm8s_tim2$TIM2_GetCounter$532-Sstm8s_tim2$TIM2_GetCounter$530
      00346D 00                    4454 	.db	0
      00346E 01                    4455 	.uleb128	1
      00346F 01                    4456 	.db	1
      003470 00                    4457 	.db	0
      003471 05                    4458 	.uleb128	5
      003472 02                    4459 	.db	2
      003473 00 00 A3 31           4460 	.dw	0,(Sstm8s_tim2$TIM2_GetPrescaler$534)
      003477 03                    4461 	.db	3
      003478 98 08                 4462 	.sleb128	1048
      00347A 01                    4463 	.db	1
      00347B 09                    4464 	.db	9
      00347C 00 00                 4465 	.dw	Sstm8s_tim2$TIM2_GetPrescaler$536-Sstm8s_tim2$TIM2_GetPrescaler$534
      00347E 03                    4466 	.db	3
      00347F 03                    4467 	.sleb128	3
      003480 01                    4468 	.db	1
      003481 09                    4469 	.db	9
      003482 00 03                 4470 	.dw	Sstm8s_tim2$TIM2_GetPrescaler$537-Sstm8s_tim2$TIM2_GetPrescaler$536
      003484 03                    4471 	.db	3
      003485 01                    4472 	.sleb128	1
      003486 01                    4473 	.db	1
      003487 09                    4474 	.db	9
      003488 00 01                 4475 	.dw	1+Sstm8s_tim2$TIM2_GetPrescaler$538-Sstm8s_tim2$TIM2_GetPrescaler$537
      00348A 00                    4476 	.db	0
      00348B 01                    4477 	.uleb128	1
      00348C 01                    4478 	.db	1
      00348D 00                    4479 	.db	0
      00348E 05                    4480 	.uleb128	5
      00348F 02                    4481 	.db	2
      003490 00 00 A3 35           4482 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$540)
      003494 03                    4483 	.db	3
      003495 AB 08                 4484 	.sleb128	1067
      003497 01                    4485 	.db	1
      003498 09                    4486 	.db	9
      003499 00 01                 4487 	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$543-Sstm8s_tim2$TIM2_GetFlagStatus$540
      00349B 03                    4488 	.db	3
      00349C 08                    4489 	.sleb128	8
      00349D 01                    4490 	.db	1
      00349E 09                    4491 	.db	9
      00349F 00 0B                 4492 	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$544-Sstm8s_tim2$TIM2_GetFlagStatus$543
      0034A1 03                    4493 	.db	3
      0034A2 01                    4494 	.sleb128	1
      0034A3 01                    4495 	.db	1
      0034A4 09                    4496 	.db	9
      0034A5 00 03                 4497 	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$545-Sstm8s_tim2$TIM2_GetFlagStatus$544
      0034A7 03                    4498 	.db	3
      0034A8 02                    4499 	.sleb128	2
      0034A9 01                    4500 	.db	1
      0034AA 09                    4501 	.db	9
      0034AB 00 0F                 4502 	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$549-Sstm8s_tim2$TIM2_GetFlagStatus$545
      0034AD 03                    4503 	.db	3
      0034AE 02                    4504 	.sleb128	2
      0034AF 01                    4505 	.db	1
      0034B0 09                    4506 	.db	9
      0034B1 00 05                 4507 	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$552-Sstm8s_tim2$TIM2_GetFlagStatus$549
      0034B3 03                    4508 	.db	3
      0034B4 04                    4509 	.sleb128	4
      0034B5 01                    4510 	.db	1
      0034B6 09                    4511 	.db	9
      0034B7 00 01                 4512 	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$554-Sstm8s_tim2$TIM2_GetFlagStatus$552
      0034B9 03                    4513 	.db	3
      0034BA 02                    4514 	.sleb128	2
      0034BB 01                    4515 	.db	1
      0034BC 09                    4516 	.db	9
      0034BD 00 00                 4517 	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$555-Sstm8s_tim2$TIM2_GetFlagStatus$554
      0034BF 03                    4518 	.db	3
      0034C0 01                    4519 	.sleb128	1
      0034C1 01                    4520 	.db	1
      0034C2 09                    4521 	.db	9
      0034C3 00 03                 4522 	.dw	1+Sstm8s_tim2$TIM2_GetFlagStatus$557-Sstm8s_tim2$TIM2_GetFlagStatus$555
      0034C5 00                    4523 	.db	0
      0034C6 01                    4524 	.uleb128	1
      0034C7 01                    4525 	.db	1
      0034C8 00                    4526 	.db	0
      0034C9 05                    4527 	.uleb128	5
      0034CA 02                    4528 	.db	2
      0034CB 00 00 A3 5C           4529 	.dw	0,(Sstm8s_tim2$TIM2_ClearFlag$559)
      0034CF 03                    4530 	.db	3
      0034D0 CE 08                 4531 	.sleb128	1102
      0034D2 01                    4532 	.db	1
      0034D3 09                    4533 	.db	9
      0034D4 00 00                 4534 	.dw	Sstm8s_tim2$TIM2_ClearFlag$561-Sstm8s_tim2$TIM2_ClearFlag$559
      0034D6 03                    4535 	.db	3
      0034D7 06                    4536 	.sleb128	6
      0034D8 01                    4537 	.db	1
      0034D9 09                    4538 	.db	9
      0034DA 00 06                 4539 	.dw	Sstm8s_tim2$TIM2_ClearFlag$562-Sstm8s_tim2$TIM2_ClearFlag$561
      0034DC 03                    4540 	.db	3
      0034DD 01                    4541 	.sleb128	1
      0034DE 01                    4542 	.db	1
      0034DF 09                    4543 	.db	9
      0034E0 00 04                 4544 	.dw	Sstm8s_tim2$TIM2_ClearFlag$563-Sstm8s_tim2$TIM2_ClearFlag$562
      0034E2 03                    4545 	.db	3
      0034E3 01                    4546 	.sleb128	1
      0034E4 01                    4547 	.db	1
      0034E5 09                    4548 	.db	9
      0034E6 00 01                 4549 	.dw	1+Sstm8s_tim2$TIM2_ClearFlag$564-Sstm8s_tim2$TIM2_ClearFlag$563
      0034E8 00                    4550 	.db	0
      0034E9 01                    4551 	.uleb128	1
      0034EA 01                    4552 	.db	1
      0034EB 00                    4553 	.db	0
      0034EC 05                    4554 	.uleb128	5
      0034ED 02                    4555 	.db	2
      0034EE 00 00 A3 67           4556 	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$566)
      0034F2 03                    4557 	.db	3
      0034F3 E2 08                 4558 	.sleb128	1122
      0034F5 01                    4559 	.db	1
      0034F6 09                    4560 	.db	9
      0034F7 00 01                 4561 	.dw	Sstm8s_tim2$TIM2_GetITStatus$569-Sstm8s_tim2$TIM2_GetITStatus$566
      0034F9 03                    4562 	.db	3
      0034FA 08                    4563 	.sleb128	8
      0034FB 01                    4564 	.db	1
      0034FC 09                    4565 	.db	9
      0034FD 00 07                 4566 	.dw	Sstm8s_tim2$TIM2_GetITStatus$570-Sstm8s_tim2$TIM2_GetITStatus$569
      0034FF 03                    4567 	.db	3
      003500 02                    4568 	.sleb128	2
      003501 01                    4569 	.db	1
      003502 09                    4570 	.db	9
      003503 00 05                 4571 	.dw	Sstm8s_tim2$TIM2_GetITStatus$571-Sstm8s_tim2$TIM2_GetITStatus$570
      003505 03                    4572 	.db	3
      003506 02                    4573 	.sleb128	2
      003507 01                    4574 	.db	1
      003508 09                    4575 	.db	9
      003509 00 0D                 4576 	.dw	Sstm8s_tim2$TIM2_GetITStatus$573-Sstm8s_tim2$TIM2_GetITStatus$571
      00350B 03                    4577 	.db	3
      00350C 02                    4578 	.sleb128	2
      00350D 01                    4579 	.db	1
      00350E 09                    4580 	.db	9
      00350F 00 05                 4581 	.dw	Sstm8s_tim2$TIM2_GetITStatus$576-Sstm8s_tim2$TIM2_GetITStatus$573
      003511 03                    4582 	.db	3
      003512 04                    4583 	.sleb128	4
      003513 01                    4584 	.db	1
      003514 09                    4585 	.db	9
      003515 00 01                 4586 	.dw	Sstm8s_tim2$TIM2_GetITStatus$578-Sstm8s_tim2$TIM2_GetITStatus$576
      003517 03                    4587 	.db	3
      003518 02                    4588 	.sleb128	2
      003519 01                    4589 	.db	1
      00351A 09                    4590 	.db	9
      00351B 00 00                 4591 	.dw	Sstm8s_tim2$TIM2_GetITStatus$579-Sstm8s_tim2$TIM2_GetITStatus$578
      00351D 03                    4592 	.db	3
      00351E 01                    4593 	.sleb128	1
      00351F 01                    4594 	.db	1
      003520 09                    4595 	.db	9
      003521 00 03                 4596 	.dw	1+Sstm8s_tim2$TIM2_GetITStatus$581-Sstm8s_tim2$TIM2_GetITStatus$579
      003523 00                    4597 	.db	0
      003524 01                    4598 	.uleb128	1
      003525 01                    4599 	.db	1
      003526 00                    4600 	.db	0
      003527 05                    4601 	.uleb128	5
      003528 02                    4602 	.db	2
      003529 00 00 A3 8A           4603 	.dw	0,(Sstm8s_tim2$TIM2_ClearITPendingBit$583)
      00352D 03                    4604 	.db	3
      00352E 83 09                 4605 	.sleb128	1155
      003530 01                    4606 	.db	1
      003531 09                    4607 	.db	9
      003532 00 00                 4608 	.dw	Sstm8s_tim2$TIM2_ClearITPendingBit$585-Sstm8s_tim2$TIM2_ClearITPendingBit$583
      003534 03                    4609 	.db	3
      003535 06                    4610 	.sleb128	6
      003536 01                    4611 	.db	1
      003537 09                    4612 	.db	9
      003538 00 06                 4613 	.dw	Sstm8s_tim2$TIM2_ClearITPendingBit$586-Sstm8s_tim2$TIM2_ClearITPendingBit$585
      00353A 03                    4614 	.db	3
      00353B 01                    4615 	.sleb128	1
      00353C 01                    4616 	.db	1
      00353D 09                    4617 	.db	9
      00353E 00 01                 4618 	.dw	1+Sstm8s_tim2$TIM2_ClearITPendingBit$587-Sstm8s_tim2$TIM2_ClearITPendingBit$586
      003540 00                    4619 	.db	0
      003541 01                    4620 	.uleb128	1
      003542 01                    4621 	.db	1
      003543 00                    4622 	.db	0
      003544 05                    4623 	.uleb128	5
      003545 02                    4624 	.db	2
      003546 00 00 A3 91           4625 	.dw	0,(Sstm8s_tim2$TI1_Config$589)
      00354A 03                    4626 	.db	3
      00354B 9C 09                 4627 	.sleb128	1180
      00354D 01                    4628 	.db	1
      00354E 09                    4629 	.db	9
      00354F 00 01                 4630 	.dw	Sstm8s_tim2$TI1_Config$592-Sstm8s_tim2$TI1_Config$589
      003551 03                    4631 	.db	3
      003552 05                    4632 	.sleb128	5
      003553 01                    4633 	.db	1
      003554 09                    4634 	.db	9
      003555 00 08                 4635 	.dw	Sstm8s_tim2$TI1_Config$593-Sstm8s_tim2$TI1_Config$592
      003557 03                    4636 	.db	3
      003558 03                    4637 	.sleb128	3
      003559 01                    4638 	.db	1
      00355A 09                    4639 	.db	9
      00355B 00 07                 4640 	.dw	Sstm8s_tim2$TI1_Config$594-Sstm8s_tim2$TI1_Config$593
      00355D 03                    4641 	.db	3
      00355E 01                    4642 	.sleb128	1
      00355F 01                    4643 	.db	1
      003560 09                    4644 	.db	9
      003561 00 0C                 4645 	.dw	Sstm8s_tim2$TI1_Config$595-Sstm8s_tim2$TI1_Config$594
      003563 03                    4646 	.db	3
      003564 7C                    4647 	.sleb128	-4
      003565 01                    4648 	.db	1
      003566 09                    4649 	.db	9
      003567 00 03                 4650 	.dw	Sstm8s_tim2$TI1_Config$596-Sstm8s_tim2$TI1_Config$595
      003569 03                    4651 	.db	3
      00356A 07                    4652 	.sleb128	7
      00356B 01                    4653 	.db	1
      00356C 09                    4654 	.db	9
      00356D 00 07                 4655 	.dw	Sstm8s_tim2$TI1_Config$598-Sstm8s_tim2$TI1_Config$596
      00356F 03                    4656 	.db	3
      003570 02                    4657 	.sleb128	2
      003571 01                    4658 	.db	1
      003572 09                    4659 	.db	9
      003573 00 08                 4660 	.dw	Sstm8s_tim2$TI1_Config$601-Sstm8s_tim2$TI1_Config$598
      003575 03                    4661 	.db	3
      003576 04                    4662 	.sleb128	4
      003577 01                    4663 	.db	1
      003578 09                    4664 	.db	9
      003579 00 05                 4665 	.dw	Sstm8s_tim2$TI1_Config$603-Sstm8s_tim2$TI1_Config$601
      00357B 03                    4666 	.db	3
      00357C 03                    4667 	.sleb128	3
      00357D 01                    4668 	.db	1
      00357E 09                    4669 	.db	9
      00357F 00 08                 4670 	.dw	Sstm8s_tim2$TI1_Config$604-Sstm8s_tim2$TI1_Config$603
      003581 03                    4671 	.db	3
      003582 01                    4672 	.sleb128	1
      003583 01                    4673 	.db	1
      003584 09                    4674 	.db	9
      003585 00 02                 4675 	.dw	1+Sstm8s_tim2$TI1_Config$606-Sstm8s_tim2$TI1_Config$604
      003587 00                    4676 	.db	0
      003588 01                    4677 	.uleb128	1
      003589 01                    4678 	.db	1
      00358A 00                    4679 	.db	0
      00358B 05                    4680 	.uleb128	5
      00358C 02                    4681 	.db	2
      00358D 00 00 A3 CE           4682 	.dw	0,(Sstm8s_tim2$TI2_Config$608)
      003591 03                    4683 	.db	3
      003592 C4 09                 4684 	.sleb128	1220
      003594 01                    4685 	.db	1
      003595 09                    4686 	.db	9
      003596 00 01                 4687 	.dw	Sstm8s_tim2$TI2_Config$611-Sstm8s_tim2$TI2_Config$608
      003598 03                    4688 	.db	3
      003599 05                    4689 	.sleb128	5
      00359A 01                    4690 	.db	1
      00359B 09                    4691 	.db	9
      00359C 00 08                 4692 	.dw	Sstm8s_tim2$TI2_Config$612-Sstm8s_tim2$TI2_Config$611
      00359E 03                    4693 	.db	3
      00359F 03                    4694 	.sleb128	3
      0035A0 01                    4695 	.db	1
      0035A1 09                    4696 	.db	9
      0035A2 00 07                 4697 	.dw	Sstm8s_tim2$TI2_Config$613-Sstm8s_tim2$TI2_Config$612
      0035A4 03                    4698 	.db	3
      0035A5 01                    4699 	.sleb128	1
      0035A6 01                    4700 	.db	1
      0035A7 09                    4701 	.db	9
      0035A8 00 0C                 4702 	.dw	Sstm8s_tim2$TI2_Config$614-Sstm8s_tim2$TI2_Config$613
      0035AA 03                    4703 	.db	3
      0035AB 7C                    4704 	.sleb128	-4
      0035AC 01                    4705 	.db	1
      0035AD 09                    4706 	.db	9
      0035AE 00 03                 4707 	.dw	Sstm8s_tim2$TI2_Config$615-Sstm8s_tim2$TI2_Config$614
      0035B0 03                    4708 	.db	3
      0035B1 08                    4709 	.sleb128	8
      0035B2 01                    4710 	.db	1
      0035B3 09                    4711 	.db	9
      0035B4 00 07                 4712 	.dw	Sstm8s_tim2$TI2_Config$617-Sstm8s_tim2$TI2_Config$615
      0035B6 03                    4713 	.db	3
      0035B7 02                    4714 	.sleb128	2
      0035B8 01                    4715 	.db	1
      0035B9 09                    4716 	.db	9
      0035BA 00 08                 4717 	.dw	Sstm8s_tim2$TI2_Config$620-Sstm8s_tim2$TI2_Config$617
      0035BC 03                    4718 	.db	3
      0035BD 04                    4719 	.sleb128	4
      0035BE 01                    4720 	.db	1
      0035BF 09                    4721 	.db	9
      0035C0 00 05                 4722 	.dw	Sstm8s_tim2$TI2_Config$622-Sstm8s_tim2$TI2_Config$620
      0035C2 03                    4723 	.db	3
      0035C3 04                    4724 	.sleb128	4
      0035C4 01                    4725 	.db	1
      0035C5 09                    4726 	.db	9
      0035C6 00 08                 4727 	.dw	Sstm8s_tim2$TI2_Config$623-Sstm8s_tim2$TI2_Config$622
      0035C8 03                    4728 	.db	3
      0035C9 01                    4729 	.sleb128	1
      0035CA 01                    4730 	.db	1
      0035CB 09                    4731 	.db	9
      0035CC 00 02                 4732 	.dw	1+Sstm8s_tim2$TI2_Config$625-Sstm8s_tim2$TI2_Config$623
      0035CE 00                    4733 	.db	0
      0035CF 01                    4734 	.uleb128	1
      0035D0 01                    4735 	.db	1
      0035D1 00                    4736 	.db	0
      0035D2 05                    4737 	.uleb128	5
      0035D3 02                    4738 	.db	2
      0035D4 00 00 A4 0B           4739 	.dw	0,(Sstm8s_tim2$TI3_Config$627)
      0035D8 03                    4740 	.db	3
      0035D9 EC 09                 4741 	.sleb128	1260
      0035DB 01                    4742 	.db	1
      0035DC 09                    4743 	.db	9
      0035DD 00 01                 4744 	.dw	Sstm8s_tim2$TI3_Config$630-Sstm8s_tim2$TI3_Config$627
      0035DF 03                    4745 	.db	3
      0035E0 04                    4746 	.sleb128	4
      0035E1 01                    4747 	.db	1
      0035E2 09                    4748 	.db	9
      0035E3 00 08                 4749 	.dw	Sstm8s_tim2$TI3_Config$631-Sstm8s_tim2$TI3_Config$630
      0035E5 03                    4750 	.db	3
      0035E6 03                    4751 	.sleb128	3
      0035E7 01                    4752 	.db	1
      0035E8 09                    4753 	.db	9
      0035E9 00 07                 4754 	.dw	Sstm8s_tim2$TI3_Config$632-Sstm8s_tim2$TI3_Config$631
      0035EB 03                    4755 	.db	3
      0035EC 01                    4756 	.sleb128	1
      0035ED 01                    4757 	.db	1
      0035EE 09                    4758 	.db	9
      0035EF 00 0C                 4759 	.dw	Sstm8s_tim2$TI3_Config$633-Sstm8s_tim2$TI3_Config$632
      0035F1 03                    4760 	.db	3
      0035F2 7C                    4761 	.sleb128	-4
      0035F3 01                    4762 	.db	1
      0035F4 09                    4763 	.db	9
      0035F5 00 03                 4764 	.dw	Sstm8s_tim2$TI3_Config$634-Sstm8s_tim2$TI3_Config$633
      0035F7 03                    4765 	.db	3
      0035F8 08                    4766 	.sleb128	8
      0035F9 01                    4767 	.db	1
      0035FA 09                    4768 	.db	9
      0035FB 00 07                 4769 	.dw	Sstm8s_tim2$TI3_Config$636-Sstm8s_tim2$TI3_Config$634
      0035FD 03                    4770 	.db	3
      0035FE 02                    4771 	.sleb128	2
      0035FF 01                    4772 	.db	1
      003600 09                    4773 	.db	9
      003601 00 08                 4774 	.dw	Sstm8s_tim2$TI3_Config$639-Sstm8s_tim2$TI3_Config$636
      003603 03                    4775 	.db	3
      003604 04                    4776 	.sleb128	4
      003605 01                    4777 	.db	1
      003606 09                    4778 	.db	9
      003607 00 05                 4779 	.dw	Sstm8s_tim2$TI3_Config$641-Sstm8s_tim2$TI3_Config$639
      003609 03                    4780 	.db	3
      00360A 03                    4781 	.sleb128	3
      00360B 01                    4782 	.db	1
      00360C 09                    4783 	.db	9
      00360D 00 08                 4784 	.dw	Sstm8s_tim2$TI3_Config$642-Sstm8s_tim2$TI3_Config$641
      00360F 03                    4785 	.db	3
      003610 01                    4786 	.sleb128	1
      003611 01                    4787 	.db	1
      003612 09                    4788 	.db	9
      003613 00 02                 4789 	.dw	1+Sstm8s_tim2$TI3_Config$644-Sstm8s_tim2$TI3_Config$642
      003615 00                    4790 	.db	0
      003616 01                    4791 	.uleb128	1
      003617 01                    4792 	.db	1
      003618                       4793 Ldebug_line_end:
                                   4794 
                                   4795 	.area .debug_loc (NOLOAD)
      0032EC                       4796 Ldebug_loc_start:
      0032EC 00 00 A4 47           4797 	.dw	0,(Sstm8s_tim2$TI3_Config$643)
      0032F0 00 00 A4 48           4798 	.dw	0,(Sstm8s_tim2$TI3_Config$645)
      0032F4 00 02                 4799 	.dw	2
      0032F6 78                    4800 	.db	120
      0032F7 01                    4801 	.sleb128	1
      0032F8 00 00 A4 0C           4802 	.dw	0,(Sstm8s_tim2$TI3_Config$629)
      0032FC 00 00 A4 47           4803 	.dw	0,(Sstm8s_tim2$TI3_Config$643)
      003300 00 02                 4804 	.dw	2
      003302 78                    4805 	.db	120
      003303 02                    4806 	.sleb128	2
      003304 00 00 A4 0B           4807 	.dw	0,(Sstm8s_tim2$TI3_Config$628)
      003308 00 00 A4 0C           4808 	.dw	0,(Sstm8s_tim2$TI3_Config$629)
      00330C 00 02                 4809 	.dw	2
      00330E 78                    4810 	.db	120
      00330F 01                    4811 	.sleb128	1
      003310 00 00 00 00           4812 	.dw	0,0
      003314 00 00 00 00           4813 	.dw	0,0
      003318 00 00 A4 0A           4814 	.dw	0,(Sstm8s_tim2$TI2_Config$624)
      00331C 00 00 A4 0B           4815 	.dw	0,(Sstm8s_tim2$TI2_Config$626)
      003320 00 02                 4816 	.dw	2
      003322 78                    4817 	.db	120
      003323 01                    4818 	.sleb128	1
      003324 00 00 A3 CF           4819 	.dw	0,(Sstm8s_tim2$TI2_Config$610)
      003328 00 00 A4 0A           4820 	.dw	0,(Sstm8s_tim2$TI2_Config$624)
      00332C 00 02                 4821 	.dw	2
      00332E 78                    4822 	.db	120
      00332F 02                    4823 	.sleb128	2
      003330 00 00 A3 CE           4824 	.dw	0,(Sstm8s_tim2$TI2_Config$609)
      003334 00 00 A3 CF           4825 	.dw	0,(Sstm8s_tim2$TI2_Config$610)
      003338 00 02                 4826 	.dw	2
      00333A 78                    4827 	.db	120
      00333B 01                    4828 	.sleb128	1
      00333C 00 00 00 00           4829 	.dw	0,0
      003340 00 00 00 00           4830 	.dw	0,0
      003344 00 00 A3 CD           4831 	.dw	0,(Sstm8s_tim2$TI1_Config$605)
      003348 00 00 A3 CE           4832 	.dw	0,(Sstm8s_tim2$TI1_Config$607)
      00334C 00 02                 4833 	.dw	2
      00334E 78                    4834 	.db	120
      00334F 01                    4835 	.sleb128	1
      003350 00 00 A3 92           4836 	.dw	0,(Sstm8s_tim2$TI1_Config$591)
      003354 00 00 A3 CD           4837 	.dw	0,(Sstm8s_tim2$TI1_Config$605)
      003358 00 02                 4838 	.dw	2
      00335A 78                    4839 	.db	120
      00335B 02                    4840 	.sleb128	2
      00335C 00 00 A3 91           4841 	.dw	0,(Sstm8s_tim2$TI1_Config$590)
      003360 00 00 A3 92           4842 	.dw	0,(Sstm8s_tim2$TI1_Config$591)
      003364 00 02                 4843 	.dw	2
      003366 78                    4844 	.db	120
      003367 01                    4845 	.sleb128	1
      003368 00 00 00 00           4846 	.dw	0,0
      00336C 00 00 00 00           4847 	.dw	0,0
      003370 00 00 A3 8A           4848 	.dw	0,(Sstm8s_tim2$TIM2_ClearITPendingBit$584)
      003374 00 00 A3 91           4849 	.dw	0,(Sstm8s_tim2$TIM2_ClearITPendingBit$588)
      003378 00 02                 4850 	.dw	2
      00337A 78                    4851 	.db	120
      00337B 01                    4852 	.sleb128	1
      00337C 00 00 00 00           4853 	.dw	0,0
      003380 00 00 00 00           4854 	.dw	0,0
      003384 00 00 A3 89           4855 	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$580)
      003388 00 00 A3 8A           4856 	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$582)
      00338C 00 02                 4857 	.dw	2
      00338E 78                    4858 	.db	120
      00338F 01                    4859 	.sleb128	1
      003390 00 00 A3 68           4860 	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$568)
      003394 00 00 A3 89           4861 	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$580)
      003398 00 02                 4862 	.dw	2
      00339A 78                    4863 	.db	120
      00339B 02                    4864 	.sleb128	2
      00339C 00 00 A3 67           4865 	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$567)
      0033A0 00 00 A3 68           4866 	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$568)
      0033A4 00 02                 4867 	.dw	2
      0033A6 78                    4868 	.db	120
      0033A7 01                    4869 	.sleb128	1
      0033A8 00 00 00 00           4870 	.dw	0,0
      0033AC 00 00 00 00           4871 	.dw	0,0
      0033B0 00 00 A3 5C           4872 	.dw	0,(Sstm8s_tim2$TIM2_ClearFlag$560)
      0033B4 00 00 A3 67           4873 	.dw	0,(Sstm8s_tim2$TIM2_ClearFlag$565)
      0033B8 00 02                 4874 	.dw	2
      0033BA 78                    4875 	.db	120
      0033BB 01                    4876 	.sleb128	1
      0033BC 00 00 00 00           4877 	.dw	0,0
      0033C0 00 00 00 00           4878 	.dw	0,0
      0033C4 00 00 A3 5B           4879 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$556)
      0033C8 00 00 A3 5C           4880 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$558)
      0033CC 00 02                 4881 	.dw	2
      0033CE 78                    4882 	.db	120
      0033CF 01                    4883 	.sleb128	1
      0033D0 00 00 A3 4B           4884 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$547)
      0033D4 00 00 A3 5B           4885 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$556)
      0033D8 00 02                 4886 	.dw	2
      0033DA 78                    4887 	.db	120
      0033DB 02                    4888 	.sleb128	2
      0033DC 00 00 A3 48           4889 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$546)
      0033E0 00 00 A3 4B           4890 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$547)
      0033E4 00 02                 4891 	.dw	2
      0033E6 78                    4892 	.db	120
      0033E7 04                    4893 	.sleb128	4
      0033E8 00 00 A3 36           4894 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$542)
      0033EC 00 00 A3 48           4895 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$546)
      0033F0 00 02                 4896 	.dw	2
      0033F2 78                    4897 	.db	120
      0033F3 02                    4898 	.sleb128	2
      0033F4 00 00 A3 35           4899 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$541)
      0033F8 00 00 A3 36           4900 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$542)
      0033FC 00 02                 4901 	.dw	2
      0033FE 78                    4902 	.db	120
      0033FF 01                    4903 	.sleb128	1
      003400 00 00 00 00           4904 	.dw	0,0
      003404 00 00 00 00           4905 	.dw	0,0
      003408 00 00 A3 31           4906 	.dw	0,(Sstm8s_tim2$TIM2_GetPrescaler$535)
      00340C 00 00 A3 35           4907 	.dw	0,(Sstm8s_tim2$TIM2_GetPrescaler$539)
      003410 00 02                 4908 	.dw	2
      003412 78                    4909 	.db	120
      003413 01                    4910 	.sleb128	1
      003414 00 00 00 00           4911 	.dw	0,0
      003418 00 00 00 00           4912 	.dw	0,0
      00341C 00 00 A3 30           4913 	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$531)
      003420 00 00 A3 31           4914 	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$533)
      003424 00 02                 4915 	.dw	2
      003426 78                    4916 	.db	120
      003427 01                    4917 	.sleb128	1
      003428 00 00 A3 1A           4918 	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$527)
      00342C 00 00 A3 30           4919 	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$531)
      003430 00 02                 4920 	.dw	2
      003432 78                    4921 	.db	120
      003433 05                    4922 	.sleb128	5
      003434 00 00 A3 18           4923 	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$526)
      003438 00 00 A3 1A           4924 	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$527)
      00343C 00 02                 4925 	.dw	2
      00343E 78                    4926 	.db	120
      00343F 01                    4927 	.sleb128	1
      003440 00 00 00 00           4928 	.dw	0,0
      003444 00 00 00 00           4929 	.dw	0,0
      003448 00 00 A3 17           4930 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$522)
      00344C 00 00 A3 18           4931 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$524)
      003450 00 02                 4932 	.dw	2
      003452 78                    4933 	.db	120
      003453 01                    4934 	.sleb128	1
      003454 00 00 A3 10           4935 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$519)
      003458 00 00 A3 17           4936 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$522)
      00345C 00 02                 4937 	.dw	2
      00345E 78                    4938 	.db	120
      00345F 03                    4939 	.sleb128	3
      003460 00 00 A3 0D           4940 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$518)
      003464 00 00 A3 10           4941 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$519)
      003468 00 02                 4942 	.dw	2
      00346A 78                    4943 	.db	120
      00346B 05                    4944 	.sleb128	5
      00346C 00 00 A2 FF           4945 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$513)
      003470 00 00 A3 0D           4946 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$518)
      003474 00 02                 4947 	.dw	2
      003476 78                    4948 	.db	120
      003477 03                    4949 	.sleb128	3
      003478 00 00 A2 FE           4950 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$512)
      00347C 00 00 A2 FF           4951 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$513)
      003480 00 02                 4952 	.dw	2
      003482 78                    4953 	.db	120
      003483 01                    4954 	.sleb128	1
      003484 00 00 00 00           4955 	.dw	0,0
      003488 00 00 00 00           4956 	.dw	0,0
      00348C 00 00 A2 FD           4957 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$508)
      003490 00 00 A2 FE           4958 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$510)
      003494 00 02                 4959 	.dw	2
      003496 78                    4960 	.db	120
      003497 01                    4961 	.sleb128	1
      003498 00 00 A2 F6           4962 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$505)
      00349C 00 00 A2 FD           4963 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$508)
      0034A0 00 02                 4964 	.dw	2
      0034A2 78                    4965 	.db	120
      0034A3 03                    4966 	.sleb128	3
      0034A4 00 00 A2 F3           4967 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$504)
      0034A8 00 00 A2 F6           4968 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$505)
      0034AC 00 02                 4969 	.dw	2
      0034AE 78                    4970 	.db	120
      0034AF 05                    4971 	.sleb128	5
      0034B0 00 00 A2 E5           4972 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$499)
      0034B4 00 00 A2 F3           4973 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$504)
      0034B8 00 02                 4974 	.dw	2
      0034BA 78                    4975 	.db	120
      0034BB 03                    4976 	.sleb128	3
      0034BC 00 00 A2 E4           4977 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$498)
      0034C0 00 00 A2 E5           4978 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$499)
      0034C4 00 02                 4979 	.dw	2
      0034C6 78                    4980 	.db	120
      0034C7 01                    4981 	.sleb128	1
      0034C8 00 00 00 00           4982 	.dw	0,0
      0034CC 00 00 00 00           4983 	.dw	0,0
      0034D0 00 00 A2 E3           4984 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$494)
      0034D4 00 00 A2 E4           4985 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$496)
      0034D8 00 02                 4986 	.dw	2
      0034DA 78                    4987 	.db	120
      0034DB 01                    4988 	.sleb128	1
      0034DC 00 00 A2 DC           4989 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$491)
      0034E0 00 00 A2 E3           4990 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$494)
      0034E4 00 02                 4991 	.dw	2
      0034E6 78                    4992 	.db	120
      0034E7 03                    4993 	.sleb128	3
      0034E8 00 00 A2 D9           4994 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$490)
      0034EC 00 00 A2 DC           4995 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$491)
      0034F0 00 02                 4996 	.dw	2
      0034F2 78                    4997 	.db	120
      0034F3 05                    4998 	.sleb128	5
      0034F4 00 00 A2 CB           4999 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$485)
      0034F8 00 00 A2 D9           5000 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$490)
      0034FC 00 02                 5001 	.dw	2
      0034FE 78                    5002 	.db	120
      0034FF 03                    5003 	.sleb128	3
      003500 00 00 A2 CA           5004 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$484)
      003504 00 00 A2 CB           5005 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$485)
      003508 00 02                 5006 	.dw	2
      00350A 78                    5007 	.db	120
      00350B 01                    5008 	.sleb128	1
      00350C 00 00 00 00           5009 	.dw	0,0
      003510 00 00 00 00           5010 	.dw	0,0
      003514 00 00 A2 BF           5011 	.dw	0,(Sstm8s_tim2$TIM2_SetIC3Prescaler$477)
      003518 00 00 A2 CA           5012 	.dw	0,(Sstm8s_tim2$TIM2_SetIC3Prescaler$482)
      00351C 00 02                 5013 	.dw	2
      00351E 78                    5014 	.db	120
      00351F 01                    5015 	.sleb128	1
      003520 00 00 00 00           5016 	.dw	0,0
      003524 00 00 00 00           5017 	.dw	0,0
      003528 00 00 A2 B4           5018 	.dw	0,(Sstm8s_tim2$TIM2_SetIC2Prescaler$470)
      00352C 00 00 A2 BF           5019 	.dw	0,(Sstm8s_tim2$TIM2_SetIC2Prescaler$475)
      003530 00 02                 5020 	.dw	2
      003532 78                    5021 	.db	120
      003533 01                    5022 	.sleb128	1
      003534 00 00 00 00           5023 	.dw	0,0
      003538 00 00 00 00           5024 	.dw	0,0
      00353C 00 00 A2 A9           5025 	.dw	0,(Sstm8s_tim2$TIM2_SetIC1Prescaler$463)
      003540 00 00 A2 B4           5026 	.dw	0,(Sstm8s_tim2$TIM2_SetIC1Prescaler$468)
      003544 00 02                 5027 	.dw	2
      003546 78                    5028 	.db	120
      003547 01                    5029 	.sleb128	1
      003548 00 00 00 00           5030 	.dw	0,0
      00354C 00 00 00 00           5031 	.dw	0,0
      003550 00 00 A2 9D           5032 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare3$456)
      003554 00 00 A2 A9           5033 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare3$461)
      003558 00 02                 5034 	.dw	2
      00355A 78                    5035 	.db	120
      00355B 01                    5036 	.sleb128	1
      00355C 00 00 00 00           5037 	.dw	0,0
      003560 00 00 00 00           5038 	.dw	0,0
      003564 00 00 A2 91           5039 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare2$449)
      003568 00 00 A2 9D           5040 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare2$454)
      00356C 00 02                 5041 	.dw	2
      00356E 78                    5042 	.db	120
      00356F 01                    5043 	.sleb128	1
      003570 00 00 00 00           5044 	.dw	0,0
      003574 00 00 00 00           5045 	.dw	0,0
      003578 00 00 A2 85           5046 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare1$442)
      00357C 00 00 A2 91           5047 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare1$447)
      003580 00 02                 5048 	.dw	2
      003582 78                    5049 	.db	120
      003583 01                    5050 	.sleb128	1
      003584 00 00 00 00           5051 	.dw	0,0
      003588 00 00 00 00           5052 	.dw	0,0
      00358C 00 00 A2 79           5053 	.dw	0,(Sstm8s_tim2$TIM2_SetAutoreload$435)
      003590 00 00 A2 85           5054 	.dw	0,(Sstm8s_tim2$TIM2_SetAutoreload$440)
      003594 00 02                 5055 	.dw	2
      003596 78                    5056 	.db	120
      003597 01                    5057 	.sleb128	1
      003598 00 00 00 00           5058 	.dw	0,0
      00359C 00 00 00 00           5059 	.dw	0,0
      0035A0 00 00 A2 6D           5060 	.dw	0,(Sstm8s_tim2$TIM2_SetCounter$428)
      0035A4 00 00 A2 79           5061 	.dw	0,(Sstm8s_tim2$TIM2_SetCounter$433)
      0035A8 00 02                 5062 	.dw	2
      0035AA 78                    5063 	.db	120
      0035AB 01                    5064 	.sleb128	1
      0035AC 00 00 00 00           5065 	.dw	0,0
      0035B0 00 00 00 00           5066 	.dw	0,0
      0035B4 00 00 A2 45           5067 	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$413)
      0035B8 00 00 A2 6D           5068 	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$426)
      0035BC 00 02                 5069 	.dw	2
      0035BE 78                    5070 	.db	120
      0035BF 01                    5071 	.sleb128	1
      0035C0 00 00 A2 1E           5072 	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$405)
      0035C4 00 00 A2 45           5073 	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$413)
      0035C8 00 02                 5074 	.dw	2
      0035CA 78                    5075 	.db	120
      0035CB 01                    5076 	.sleb128	1
      0035CC 00 00 00 00           5077 	.dw	0,0
      0035D0 00 00 00 00           5078 	.dw	0,0
      0035D4 00 00 A1 EC           5079 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$382)
      0035D8 00 00 A2 1E           5080 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$403)
      0035DC 00 02                 5081 	.dw	2
      0035DE 78                    5082 	.db	120
      0035DF 01                    5083 	.sleb128	1
      0035E0 00 00 A1 C0           5084 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$370)
      0035E4 00 00 A1 EC           5085 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$382)
      0035E8 00 02                 5086 	.dw	2
      0035EA 78                    5087 	.db	120
      0035EB 01                    5088 	.sleb128	1
      0035EC 00 00 00 00           5089 	.dw	0,0
      0035F0 00 00 00 00           5090 	.dw	0,0
      0035F4 00 00 A1 A8           5091 	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$357)
      0035F8 00 00 A1 C0           5092 	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$368)
      0035FC 00 02                 5093 	.dw	2
      0035FE 78                    5094 	.db	120
      0035FF 01                    5095 	.sleb128	1
      003600 00 00 00 00           5096 	.dw	0,0
      003604 00 00 00 00           5097 	.dw	0,0
      003608 00 00 A1 90           5098 	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$344)
      00360C 00 00 A1 A8           5099 	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$355)
      003610 00 02                 5100 	.dw	2
      003612 78                    5101 	.db	120
      003613 01                    5102 	.sleb128	1
      003614 00 00 00 00           5103 	.dw	0,0
      003618 00 00 00 00           5104 	.dw	0,0
      00361C 00 00 A1 78           5105 	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$331)
      003620 00 00 A1 90           5106 	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$342)
      003624 00 02                 5107 	.dw	2
      003626 78                    5108 	.db	120
      003627 01                    5109 	.sleb128	1
      003628 00 00 00 00           5110 	.dw	0,0
      00362C 00 00 00 00           5111 	.dw	0,0
      003630 00 00 A1 71           5112 	.dw	0,(Sstm8s_tim2$TIM2_GenerateEvent$325)
      003634 00 00 A1 78           5113 	.dw	0,(Sstm8s_tim2$TIM2_GenerateEvent$329)
      003638 00 02                 5114 	.dw	2
      00363A 78                    5115 	.db	120
      00363B 01                    5116 	.sleb128	1
      00363C 00 00 00 00           5117 	.dw	0,0
      003640 00 00 00 00           5118 	.dw	0,0
      003644 00 00 A1 59           5119 	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$312)
      003648 00 00 A1 71           5120 	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$323)
      00364C 00 02                 5121 	.dw	2
      00364E 78                    5122 	.db	120
      00364F 01                    5123 	.sleb128	1
      003650 00 00 00 00           5124 	.dw	0,0
      003654 00 00 00 00           5125 	.dw	0,0
      003658 00 00 A1 41           5126 	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$299)
      00365C 00 00 A1 59           5127 	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$310)
      003660 00 02                 5128 	.dw	2
      003662 78                    5129 	.db	120
      003663 01                    5130 	.sleb128	1
      003664 00 00 00 00           5131 	.dw	0,0
      003668 00 00 00 00           5132 	.dw	0,0
      00366C 00 00 A1 29           5133 	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$286)
      003670 00 00 A1 41           5134 	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$297)
      003674 00 02                 5135 	.dw	2
      003676 78                    5136 	.db	120
      003677 01                    5137 	.sleb128	1
      003678 00 00 00 00           5138 	.dw	0,0
      00367C 00 00 00 00           5139 	.dw	0,0
      003680 00 00 A1 11           5140 	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$273)
      003684 00 00 A1 29           5141 	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$284)
      003688 00 02                 5142 	.dw	2
      00368A 78                    5143 	.db	120
      00368B 01                    5144 	.sleb128	1
      00368C 00 00 00 00           5145 	.dw	0,0
      003690 00 00 00 00           5146 	.dw	0,0
      003694 00 00 A1 06           5147 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC3Config$266)
      003698 00 00 A1 11           5148 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC3Config$271)
      00369C 00 02                 5149 	.dw	2
      00369E 78                    5150 	.db	120
      00369F 01                    5151 	.sleb128	1
      0036A0 00 00 00 00           5152 	.dw	0,0
      0036A4 00 00 00 00           5153 	.dw	0,0
      0036A8 00 00 A0 FB           5154 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC2Config$259)
      0036AC 00 00 A1 06           5155 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC2Config$264)
      0036B0 00 02                 5156 	.dw	2
      0036B2 78                    5157 	.db	120
      0036B3 01                    5158 	.sleb128	1
      0036B4 00 00 00 00           5159 	.dw	0,0
      0036B8 00 00 00 00           5160 	.dw	0,0
      0036BC 00 00 A0 F0           5161 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC1Config$252)
      0036C0 00 00 A0 FB           5162 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC1Config$257)
      0036C4 00 02                 5163 	.dw	2
      0036C6 78                    5164 	.db	120
      0036C7 01                    5165 	.sleb128	1
      0036C8 00 00 00 00           5166 	.dw	0,0
      0036CC 00 00 00 00           5167 	.dw	0,0
      0036D0 00 00 A0 E3           5168 	.dw	0,(Sstm8s_tim2$TIM2_PrescalerConfig$245)
      0036D4 00 00 A0 F0           5169 	.dw	0,(Sstm8s_tim2$TIM2_PrescalerConfig$250)
      0036D8 00 02                 5170 	.dw	2
      0036DA 78                    5171 	.db	120
      0036DB 01                    5172 	.sleb128	1
      0036DC 00 00 00 00           5173 	.dw	0,0
      0036E0 00 00 00 00           5174 	.dw	0,0
      0036E4 00 00 A0 CB           5175 	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$232)
      0036E8 00 00 A0 E3           5176 	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$243)
      0036EC 00 02                 5177 	.dw	2
      0036EE 78                    5178 	.db	120
      0036EF 01                    5179 	.sleb128	1
      0036F0 00 00 00 00           5180 	.dw	0,0
      0036F4 00 00 00 00           5181 	.dw	0,0
      0036F8 00 00 A0 B3           5182 	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$219)
      0036FC 00 00 A0 CB           5183 	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$230)
      003700 00 02                 5184 	.dw	2
      003702 78                    5185 	.db	120
      003703 01                    5186 	.sleb128	1
      003704 00 00 00 00           5187 	.dw	0,0
      003708 00 00 00 00           5188 	.dw	0,0
      00370C 00 00 A0 9B           5189 	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$206)
      003710 00 00 A0 B3           5190 	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$217)
      003714 00 02                 5191 	.dw	2
      003716 78                    5192 	.db	120
      003717 01                    5193 	.sleb128	1
      003718 00 00 00 00           5194 	.dw	0,0
      00371C 00 00 00 00           5195 	.dw	0,0
      003720 00 00 A0 9A           5196 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$202)
      003724 00 00 A0 9B           5197 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$204)
      003728 00 02                 5198 	.dw	2
      00372A 78                    5199 	.db	120
      00372B 01                    5200 	.sleb128	1
      00372C 00 00 A0 94           5201 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$199)
      003730 00 00 A0 9A           5202 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$202)
      003734 00 02                 5203 	.dw	2
      003736 78                    5204 	.db	120
      003737 02                    5205 	.sleb128	2
      003738 00 00 A0 8E           5206 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$198)
      00373C 00 00 A0 94           5207 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$199)
      003740 00 02                 5208 	.dw	2
      003742 78                    5209 	.db	120
      003743 03                    5210 	.sleb128	3
      003744 00 00 A0 7B           5211 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$190)
      003748 00 00 A0 8E           5212 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$198)
      00374C 00 02                 5213 	.dw	2
      00374E 78                    5214 	.db	120
      00374F 02                    5215 	.sleb128	2
      003750 00 00 A0 7A           5216 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$189)
      003754 00 00 A0 7B           5217 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$190)
      003758 00 02                 5218 	.dw	2
      00375A 78                    5219 	.db	120
      00375B 01                    5220 	.sleb128	1
      00375C 00 00 00 00           5221 	.dw	0,0
      003760 00 00 00 00           5222 	.dw	0,0
      003764 00 00 A0 62           5223 	.dw	0,(Sstm8s_tim2$TIM2_Cmd$176)
      003768 00 00 A0 7A           5224 	.dw	0,(Sstm8s_tim2$TIM2_Cmd$187)
      00376C 00 02                 5225 	.dw	2
      00376E 78                    5226 	.db	120
      00376F 01                    5227 	.sleb128	1
      003770 00 00 00 00           5228 	.dw	0,0
      003774 00 00 00 00           5229 	.dw	0,0
      003778 00 00 A0 61           5230 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$172)
      00377C 00 00 A0 62           5231 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$174)
      003780 00 02                 5232 	.dw	2
      003782 78                    5233 	.db	120
      003783 01                    5234 	.sleb128	1
      003784 00 00 A0 60           5235 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$169)
      003788 00 00 A0 61           5236 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$172)
      00378C 00 02                 5237 	.dw	2
      00378E 78                    5238 	.db	120
      00378F 03                    5239 	.sleb128	3
      003790 00 00 A0 5C           5240 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$168)
      003794 00 00 A0 60           5241 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$169)
      003798 00 02                 5242 	.dw	2
      00379A 78                    5243 	.db	120
      00379B 04                    5244 	.sleb128	4
      00379C 00 00 A0 59           5245 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$166)
      0037A0 00 00 A0 5C           5246 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$168)
      0037A4 00 02                 5247 	.dw	2
      0037A6 78                    5248 	.db	120
      0037A7 03                    5249 	.sleb128	3
      0037A8 00 00 A0 54           5250 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$165)
      0037AC 00 00 A0 59           5251 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$166)
      0037B0 00 02                 5252 	.dw	2
      0037B2 78                    5253 	.db	120
      0037B3 06                    5254 	.sleb128	6
      0037B4 00 00 A0 51           5255 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$164)
      0037B8 00 00 A0 54           5256 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$165)
      0037BC 00 02                 5257 	.dw	2
      0037BE 78                    5258 	.db	120
      0037BF 05                    5259 	.sleb128	5
      0037C0 00 00 A0 4E           5260 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$163)
      0037C4 00 00 A0 51           5261 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$164)
      0037C8 00 02                 5262 	.dw	2
      0037CA 78                    5263 	.db	120
      0037CB 04                    5264 	.sleb128	4
      0037CC 00 00 A0 4B           5265 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$161)
      0037D0 00 00 A0 4E           5266 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$163)
      0037D4 00 02                 5267 	.dw	2
      0037D6 78                    5268 	.db	120
      0037D7 03                    5269 	.sleb128	3
      0037D8 00 00 A0 47           5270 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$160)
      0037DC 00 00 A0 4B           5271 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$161)
      0037E0 00 02                 5272 	.dw	2
      0037E2 78                    5273 	.db	120
      0037E3 04                    5274 	.sleb128	4
      0037E4 00 00 A0 44           5275 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$158)
      0037E8 00 00 A0 47           5276 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$160)
      0037EC 00 02                 5277 	.dw	2
      0037EE 78                    5278 	.db	120
      0037EF 03                    5279 	.sleb128	3
      0037F0 00 00 A0 3F           5280 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$157)
      0037F4 00 00 A0 44           5281 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$158)
      0037F8 00 02                 5282 	.dw	2
      0037FA 78                    5283 	.db	120
      0037FB 06                    5284 	.sleb128	6
      0037FC 00 00 A0 3C           5285 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$156)
      003800 00 00 A0 3F           5286 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$157)
      003804 00 02                 5287 	.dw	2
      003806 78                    5288 	.db	120
      003807 05                    5289 	.sleb128	5
      003808 00 00 A0 39           5290 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$155)
      00380C 00 00 A0 3C           5291 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$156)
      003810 00 02                 5292 	.dw	2
      003812 78                    5293 	.db	120
      003813 04                    5294 	.sleb128	4
      003814 00 00 A0 33           5295 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$151)
      003818 00 00 A0 39           5296 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$155)
      00381C 00 02                 5297 	.dw	2
      00381E 78                    5298 	.db	120
      00381F 03                    5299 	.sleb128	3
      003820 00 00 A0 2F           5300 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$150)
      003824 00 00 A0 33           5301 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$151)
      003828 00 02                 5302 	.dw	2
      00382A 78                    5303 	.db	120
      00382B 04                    5304 	.sleb128	4
      00382C 00 00 A0 2C           5305 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$148)
      003830 00 00 A0 2F           5306 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$150)
      003834 00 02                 5307 	.dw	2
      003836 78                    5308 	.db	120
      003837 03                    5309 	.sleb128	3
      003838 00 00 A0 27           5310 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$147)
      00383C 00 00 A0 2C           5311 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$148)
      003840 00 02                 5312 	.dw	2
      003842 78                    5313 	.db	120
      003843 06                    5314 	.sleb128	6
      003844 00 00 A0 24           5315 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$146)
      003848 00 00 A0 27           5316 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$147)
      00384C 00 02                 5317 	.dw	2
      00384E 78                    5318 	.db	120
      00384F 05                    5319 	.sleb128	5
      003850 00 00 A0 21           5320 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$145)
      003854 00 00 A0 24           5321 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$146)
      003858 00 02                 5322 	.dw	2
      00385A 78                    5323 	.db	120
      00385B 04                    5324 	.sleb128	4
      00385C 00 00 A0 1E           5325 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$143)
      003860 00 00 A0 21           5326 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$145)
      003864 00 02                 5327 	.dw	2
      003866 78                    5328 	.db	120
      003867 03                    5329 	.sleb128	3
      003868 00 00 A0 1A           5330 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$142)
      00386C 00 00 A0 1E           5331 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$143)
      003870 00 02                 5332 	.dw	2
      003872 78                    5333 	.db	120
      003873 04                    5334 	.sleb128	4
      003874 00 00 A0 17           5335 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$140)
      003878 00 00 A0 1A           5336 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$142)
      00387C 00 02                 5337 	.dw	2
      00387E 78                    5338 	.db	120
      00387F 03                    5339 	.sleb128	3
      003880 00 00 A0 12           5340 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$139)
      003884 00 00 A0 17           5341 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$140)
      003888 00 02                 5342 	.dw	2
      00388A 78                    5343 	.db	120
      00388B 06                    5344 	.sleb128	6
      00388C 00 00 A0 0F           5345 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$138)
      003890 00 00 A0 12           5346 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$139)
      003894 00 02                 5347 	.dw	2
      003896 78                    5348 	.db	120
      003897 05                    5349 	.sleb128	5
      003898 00 00 A0 0C           5350 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$137)
      00389C 00 00 A0 0F           5351 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$138)
      0038A0 00 02                 5352 	.dw	2
      0038A2 78                    5353 	.db	120
      0038A3 04                    5354 	.sleb128	4
      0038A4 00 00 9F F7           5355 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$127)
      0038A8 00 00 A0 0C           5356 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$137)
      0038AC 00 02                 5357 	.dw	2
      0038AE 78                    5358 	.db	120
      0038AF 03                    5359 	.sleb128	3
      0038B0 00 00 9F E3           5360 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$119)
      0038B4 00 00 9F F7           5361 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$127)
      0038B8 00 02                 5362 	.dw	2
      0038BA 78                    5363 	.db	120
      0038BB 03                    5364 	.sleb128	3
      0038BC 00 00 9F DA           5365 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$117)
      0038C0 00 00 9F E3           5366 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$119)
      0038C4 00 02                 5367 	.dw	2
      0038C6 78                    5368 	.db	120
      0038C7 03                    5369 	.sleb128	3
      0038C8 00 00 9F D9           5370 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$116)
      0038CC 00 00 9F DA           5371 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$117)
      0038D0 00 02                 5372 	.dw	2
      0038D2 78                    5373 	.db	120
      0038D3 01                    5374 	.sleb128	1
      0038D4 00 00 00 00           5375 	.dw	0,0
      0038D8 00 00 00 00           5376 	.dw	0,0
      0038DC 00 00 9F D8           5377 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$110)
      0038E0 00 00 9F D9           5378 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$114)
      0038E4 00 02                 5379 	.dw	2
      0038E6 78                    5380 	.db	120
      0038E7 01                    5381 	.sleb128	1
      0038E8 00 00 9F D4           5382 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$109)
      0038EC 00 00 9F D8           5383 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$110)
      0038F0 00 02                 5384 	.dw	2
      0038F2 78                    5385 	.db	120
      0038F3 02                    5386 	.sleb128	2
      0038F4 00 00 9F D1           5387 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$107)
      0038F8 00 00 9F D4           5388 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$109)
      0038FC 00 02                 5389 	.dw	2
      0038FE 78                    5390 	.db	120
      0038FF 01                    5391 	.sleb128	1
      003900 00 00 9F CC           5392 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$106)
      003904 00 00 9F D1           5393 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$107)
      003908 00 02                 5394 	.dw	2
      00390A 78                    5395 	.db	120
      00390B 04                    5396 	.sleb128	4
      00390C 00 00 9F C9           5397 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$105)
      003910 00 00 9F CC           5398 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$106)
      003914 00 02                 5399 	.dw	2
      003916 78                    5400 	.db	120
      003917 03                    5401 	.sleb128	3
      003918 00 00 9F C6           5402 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$104)
      00391C 00 00 9F C9           5403 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$105)
      003920 00 02                 5404 	.dw	2
      003922 78                    5405 	.db	120
      003923 02                    5406 	.sleb128	2
      003924 00 00 9F C0           5407 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$100)
      003928 00 00 9F C6           5408 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$104)
      00392C 00 02                 5409 	.dw	2
      00392E 78                    5410 	.db	120
      00392F 01                    5411 	.sleb128	1
      003930 00 00 9F BC           5412 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$99)
      003934 00 00 9F C0           5413 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$100)
      003938 00 02                 5414 	.dw	2
      00393A 78                    5415 	.db	120
      00393B 02                    5416 	.sleb128	2
      00393C 00 00 9F B9           5417 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$97)
      003940 00 00 9F BC           5418 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$99)
      003944 00 02                 5419 	.dw	2
      003946 78                    5420 	.db	120
      003947 01                    5421 	.sleb128	1
      003948 00 00 9F B4           5422 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$96)
      00394C 00 00 9F B9           5423 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$97)
      003950 00 02                 5424 	.dw	2
      003952 78                    5425 	.db	120
      003953 04                    5426 	.sleb128	4
      003954 00 00 9F B1           5427 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$95)
      003958 00 00 9F B4           5428 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$96)
      00395C 00 02                 5429 	.dw	2
      00395E 78                    5430 	.db	120
      00395F 03                    5431 	.sleb128	3
      003960 00 00 9F AE           5432 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$94)
      003964 00 00 9F B1           5433 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$95)
      003968 00 02                 5434 	.dw	2
      00396A 78                    5435 	.db	120
      00396B 02                    5436 	.sleb128	2
      00396C 00 00 9F AB           5437 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$91)
      003970 00 00 9F AE           5438 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$94)
      003974 00 02                 5439 	.dw	2
      003976 78                    5440 	.db	120
      003977 01                    5441 	.sleb128	1
      003978 00 00 9F 9D           5442 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$88)
      00397C 00 00 9F AB           5443 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$91)
      003980 00 02                 5444 	.dw	2
      003982 78                    5445 	.db	120
      003983 01                    5446 	.sleb128	1
      003984 00 00 9F 99           5447 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$87)
      003988 00 00 9F 9D           5448 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$88)
      00398C 00 02                 5449 	.dw	2
      00398E 78                    5450 	.db	120
      00398F 02                    5451 	.sleb128	2
      003990 00 00 9F 96           5452 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$85)
      003994 00 00 9F 99           5453 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$87)
      003998 00 02                 5454 	.dw	2
      00399A 78                    5455 	.db	120
      00399B 01                    5456 	.sleb128	1
      00399C 00 00 9F 91           5457 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$84)
      0039A0 00 00 9F 96           5458 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$85)
      0039A4 00 02                 5459 	.dw	2
      0039A6 78                    5460 	.db	120
      0039A7 04                    5461 	.sleb128	4
      0039A8 00 00 9F 8E           5462 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$83)
      0039AC 00 00 9F 91           5463 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$84)
      0039B0 00 02                 5464 	.dw	2
      0039B2 78                    5465 	.db	120
      0039B3 03                    5466 	.sleb128	3
      0039B4 00 00 9F 8B           5467 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$82)
      0039B8 00 00 9F 8E           5468 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$83)
      0039BC 00 02                 5469 	.dw	2
      0039BE 78                    5470 	.db	120
      0039BF 02                    5471 	.sleb128	2
      0039C0 00 00 9F 81           5472 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$78)
      0039C4 00 00 9F 8B           5473 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$82)
      0039C8 00 02                 5474 	.dw	2
      0039CA 78                    5475 	.db	120
      0039CB 01                    5476 	.sleb128	1
      0039CC 00 00 00 00           5477 	.dw	0,0
      0039D0 00 00 00 00           5478 	.dw	0,0
      0039D4 00 00 9F 80           5479 	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$74)
      0039D8 00 00 9F 81           5480 	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$76)
      0039DC 00 02                 5481 	.dw	2
      0039DE 78                    5482 	.db	120
      0039DF 01                    5483 	.sleb128	1
      0039E0 00 00 9F 4C           5484 	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$65)
      0039E4 00 00 9F 80           5485 	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$74)
      0039E8 00 02                 5486 	.dw	2
      0039EA 78                    5487 	.db	120
      0039EB 03                    5488 	.sleb128	3
      0039EC 00 00 9F 4B           5489 	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$64)
      0039F0 00 00 9F 4C           5490 	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$65)
      0039F4 00 02                 5491 	.dw	2
      0039F6 78                    5492 	.db	120
      0039F7 01                    5493 	.sleb128	1
      0039F8 00 00 00 00           5494 	.dw	0,0
      0039FC 00 00 00 00           5495 	.dw	0,0
      003A00 00 00 9F 4A           5496 	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$60)
      003A04 00 00 9F 4B           5497 	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$62)
      003A08 00 02                 5498 	.dw	2
      003A0A 78                    5499 	.db	120
      003A0B 01                    5500 	.sleb128	1
      003A0C 00 00 9F 16           5501 	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$51)
      003A10 00 00 9F 4A           5502 	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$60)
      003A14 00 02                 5503 	.dw	2
      003A16 78                    5504 	.db	120
      003A17 03                    5505 	.sleb128	3
      003A18 00 00 9F 15           5506 	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$50)
      003A1C 00 00 9F 16           5507 	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$51)
      003A20 00 02                 5508 	.dw	2
      003A22 78                    5509 	.db	120
      003A23 01                    5510 	.sleb128	1
      003A24 00 00 00 00           5511 	.dw	0,0
      003A28 00 00 00 00           5512 	.dw	0,0
      003A2C 00 00 9F 14           5513 	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$46)
      003A30 00 00 9F 15           5514 	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$48)
      003A34 00 02                 5515 	.dw	2
      003A36 78                    5516 	.db	120
      003A37 01                    5517 	.sleb128	1
      003A38 00 00 9E E0           5518 	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$37)
      003A3C 00 00 9F 14           5519 	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$46)
      003A40 00 02                 5520 	.dw	2
      003A42 78                    5521 	.db	120
      003A43 03                    5522 	.sleb128	3
      003A44 00 00 9E DF           5523 	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$36)
      003A48 00 00 9E E0           5524 	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$37)
      003A4C 00 02                 5525 	.dw	2
      003A4E 78                    5526 	.db	120
      003A4F 01                    5527 	.sleb128	1
      003A50 00 00 00 00           5528 	.dw	0,0
      003A54 00 00 00 00           5529 	.dw	0,0
      003A58 00 00 9E CD           5530 	.dw	0,(Sstm8s_tim2$TIM2_TimeBaseInit$28)
      003A5C 00 00 9E DF           5531 	.dw	0,(Sstm8s_tim2$TIM2_TimeBaseInit$34)
      003A60 00 02                 5532 	.dw	2
      003A62 78                    5533 	.db	120
      003A63 01                    5534 	.sleb128	1
      003A64 00 00 00 00           5535 	.dw	0,0
      003A68 00 00 00 00           5536 	.dw	0,0
      003A6C 00 00 9E 74           5537 	.dw	0,(Sstm8s_tim2$TIM2_DeInit$1)
      003A70 00 00 9E CD           5538 	.dw	0,(Sstm8s_tim2$TIM2_DeInit$26)
      003A74 00 02                 5539 	.dw	2
      003A76 78                    5540 	.db	120
      003A77 01                    5541 	.sleb128	1
      003A78 00 00 00 00           5542 	.dw	0,0
      003A7C 00 00 00 00           5543 	.dw	0,0
                                   5544 
                                   5545 	.area .debug_abbrev (NOLOAD)
      000741                       5546 Ldebug_abbrev:
      000741 0B                    5547 	.uleb128	11
      000742 2E                    5548 	.uleb128	46
      000743 00                    5549 	.db	0
      000744 03                    5550 	.uleb128	3
      000745 08                    5551 	.uleb128	8
      000746 11                    5552 	.uleb128	17
      000747 01                    5553 	.uleb128	1
      000748 12                    5554 	.uleb128	18
      000749 01                    5555 	.uleb128	1
      00074A 3F                    5556 	.uleb128	63
      00074B 0C                    5557 	.uleb128	12
      00074C 40                    5558 	.uleb128	64
      00074D 06                    5559 	.uleb128	6
      00074E 49                    5560 	.uleb128	73
      00074F 13                    5561 	.uleb128	19
      000750 00                    5562 	.uleb128	0
      000751 00                    5563 	.uleb128	0
      000752 04                    5564 	.uleb128	4
      000753 05                    5565 	.uleb128	5
      000754 00                    5566 	.db	0
      000755 02                    5567 	.uleb128	2
      000756 0A                    5568 	.uleb128	10
      000757 03                    5569 	.uleb128	3
      000758 08                    5570 	.uleb128	8
      000759 49                    5571 	.uleb128	73
      00075A 13                    5572 	.uleb128	19
      00075B 00                    5573 	.uleb128	0
      00075C 00                    5574 	.uleb128	0
      00075D 03                    5575 	.uleb128	3
      00075E 2E                    5576 	.uleb128	46
      00075F 01                    5577 	.db	1
      000760 01                    5578 	.uleb128	1
      000761 13                    5579 	.uleb128	19
      000762 03                    5580 	.uleb128	3
      000763 08                    5581 	.uleb128	8
      000764 11                    5582 	.uleb128	17
      000765 01                    5583 	.uleb128	1
      000766 12                    5584 	.uleb128	18
      000767 01                    5585 	.uleb128	1
      000768 3F                    5586 	.uleb128	63
      000769 0C                    5587 	.uleb128	12
      00076A 40                    5588 	.uleb128	64
      00076B 06                    5589 	.uleb128	6
      00076C 00                    5590 	.uleb128	0
      00076D 00                    5591 	.uleb128	0
      00076E 07                    5592 	.uleb128	7
      00076F 34                    5593 	.uleb128	52
      000770 00                    5594 	.db	0
      000771 02                    5595 	.uleb128	2
      000772 0A                    5596 	.uleb128	10
      000773 03                    5597 	.uleb128	3
      000774 08                    5598 	.uleb128	8
      000775 49                    5599 	.uleb128	73
      000776 13                    5600 	.uleb128	19
      000777 00                    5601 	.uleb128	0
      000778 00                    5602 	.uleb128	0
      000779 0A                    5603 	.uleb128	10
      00077A 2E                    5604 	.uleb128	46
      00077B 01                    5605 	.db	1
      00077C 01                    5606 	.uleb128	1
      00077D 13                    5607 	.uleb128	19
      00077E 03                    5608 	.uleb128	3
      00077F 08                    5609 	.uleb128	8
      000780 11                    5610 	.uleb128	17
      000781 01                    5611 	.uleb128	1
      000782 12                    5612 	.uleb128	18
      000783 01                    5613 	.uleb128	1
      000784 3F                    5614 	.uleb128	63
      000785 0C                    5615 	.uleb128	12
      000786 40                    5616 	.uleb128	64
      000787 06                    5617 	.uleb128	6
      000788 49                    5618 	.uleb128	73
      000789 13                    5619 	.uleb128	19
      00078A 00                    5620 	.uleb128	0
      00078B 00                    5621 	.uleb128	0
      00078C 09                    5622 	.uleb128	9
      00078D 0B                    5623 	.uleb128	11
      00078E 01                    5624 	.db	1
      00078F 11                    5625 	.uleb128	17
      000790 01                    5626 	.uleb128	1
      000791 00                    5627 	.uleb128	0
      000792 00                    5628 	.uleb128	0
      000793 01                    5629 	.uleb128	1
      000794 11                    5630 	.uleb128	17
      000795 01                    5631 	.db	1
      000796 03                    5632 	.uleb128	3
      000797 08                    5633 	.uleb128	8
      000798 10                    5634 	.uleb128	16
      000799 06                    5635 	.uleb128	6
      00079A 13                    5636 	.uleb128	19
      00079B 0B                    5637 	.uleb128	11
      00079C 25                    5638 	.uleb128	37
      00079D 08                    5639 	.uleb128	8
      00079E 00                    5640 	.uleb128	0
      00079F 00                    5641 	.uleb128	0
      0007A0 06                    5642 	.uleb128	6
      0007A1 0B                    5643 	.uleb128	11
      0007A2 00                    5644 	.db	0
      0007A3 11                    5645 	.uleb128	17
      0007A4 01                    5646 	.uleb128	1
      0007A5 12                    5647 	.uleb128	18
      0007A6 01                    5648 	.uleb128	1
      0007A7 00                    5649 	.uleb128	0
      0007A8 00                    5650 	.uleb128	0
      0007A9 08                    5651 	.uleb128	8
      0007AA 0B                    5652 	.uleb128	11
      0007AB 01                    5653 	.db	1
      0007AC 01                    5654 	.uleb128	1
      0007AD 13                    5655 	.uleb128	19
      0007AE 11                    5656 	.uleb128	17
      0007AF 01                    5657 	.uleb128	1
      0007B0 00                    5658 	.uleb128	0
      0007B1 00                    5659 	.uleb128	0
      0007B2 02                    5660 	.uleb128	2
      0007B3 2E                    5661 	.uleb128	46
      0007B4 00                    5662 	.db	0
      0007B5 03                    5663 	.uleb128	3
      0007B6 08                    5664 	.uleb128	8
      0007B7 11                    5665 	.uleb128	17
      0007B8 01                    5666 	.uleb128	1
      0007B9 12                    5667 	.uleb128	18
      0007BA 01                    5668 	.uleb128	1
      0007BB 3F                    5669 	.uleb128	63
      0007BC 0C                    5670 	.uleb128	12
      0007BD 40                    5671 	.uleb128	64
      0007BE 06                    5672 	.uleb128	6
      0007BF 00                    5673 	.uleb128	0
      0007C0 00                    5674 	.uleb128	0
      0007C1 0C                    5675 	.uleb128	12
      0007C2 2E                    5676 	.uleb128	46
      0007C3 01                    5677 	.db	1
      0007C4 03                    5678 	.uleb128	3
      0007C5 08                    5679 	.uleb128	8
      0007C6 11                    5680 	.uleb128	17
      0007C7 01                    5681 	.uleb128	1
      0007C8 12                    5682 	.uleb128	18
      0007C9 01                    5683 	.uleb128	1
      0007CA 3F                    5684 	.uleb128	63
      0007CB 0C                    5685 	.uleb128	12
      0007CC 40                    5686 	.uleb128	64
      0007CD 06                    5687 	.uleb128	6
      0007CE 00                    5688 	.uleb128	0
      0007CF 00                    5689 	.uleb128	0
      0007D0 05                    5690 	.uleb128	5
      0007D1 24                    5691 	.uleb128	36
      0007D2 00                    5692 	.db	0
      0007D3 03                    5693 	.uleb128	3
      0007D4 08                    5694 	.uleb128	8
      0007D5 0B                    5695 	.uleb128	11
      0007D6 0B                    5696 	.uleb128	11
      0007D7 3E                    5697 	.uleb128	62
      0007D8 0B                    5698 	.uleb128	11
      0007D9 00                    5699 	.uleb128	0
      0007DA 00                    5700 	.uleb128	0
      0007DB 00                    5701 	.uleb128	0
                                   5702 
                                   5703 	.area .debug_info (NOLOAD)
      0044BE 00 00 10 16           5704 	.dw	0,Ldebug_info_end-Ldebug_info_start
      0044C2                       5705 Ldebug_info_start:
      0044C2 00 02                 5706 	.dw	2
      0044C4 00 00 07 41           5707 	.dw	0,(Ldebug_abbrev)
      0044C8 04                    5708 	.db	4
      0044C9 01                    5709 	.uleb128	1
      0044CA 2E 2E 2F 53 50 4C 2F  5710 	.ascii "../SPL/src/stm8s_tim2.c"
             73 72 63 2F 73 74 6D
             38 73 5F 74 69 6D 32
             2E 63
      0044E1 00                    5711 	.db	0
      0044E2 00 00 2C 35           5712 	.dw	0,(Ldebug_line_start+-4)
      0044E6 01                    5713 	.db	1
      0044E7 53 44 43 43 20 76 65  5714 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      004500 00                    5715 	.db	0
      004501 02                    5716 	.uleb128	2
      004502 54 49 4D 32 5F 44 65  5717 	.ascii "TIM2_DeInit"
             49 6E 69 74
      00450D 00                    5718 	.db	0
      00450E 00 00 9E 74           5719 	.dw	0,(_TIM2_DeInit)
      004512 00 00 9E CD           5720 	.dw	0,(XG$TIM2_DeInit$0$0+1)
      004516 01                    5721 	.db	1
      004517 00 00 3A 6C           5722 	.dw	0,(Ldebug_loc_start+1920)
      00451B 03                    5723 	.uleb128	3
      00451C 00 00 00 AD           5724 	.dw	0,173
      004520 54 49 4D 32 5F 54 69  5725 	.ascii "TIM2_TimeBaseInit"
             6D 65 42 61 73 65 49
             6E 69 74
      004531 00                    5726 	.db	0
      004532 00 00 9E CD           5727 	.dw	0,(_TIM2_TimeBaseInit)
      004536 00 00 9E DF           5728 	.dw	0,(XG$TIM2_TimeBaseInit$0$0+1)
      00453A 01                    5729 	.db	1
      00453B 00 00 3A 58           5730 	.dw	0,(Ldebug_loc_start+1900)
      00453F 04                    5731 	.uleb128	4
      004540 02                    5732 	.db	2
      004541 91                    5733 	.db	145
      004542 02                    5734 	.sleb128	2
      004543 54 49 4D 32 5F 50 72  5735 	.ascii "TIM2_Prescaler"
             65 73 63 61 6C 65 72
      004551 00                    5736 	.db	0
      004552 00 00 00 AD           5737 	.dw	0,173
      004556 04                    5738 	.uleb128	4
      004557 02                    5739 	.db	2
      004558 91                    5740 	.db	145
      004559 03                    5741 	.sleb128	3
      00455A 54 49 4D 32 5F 50 65  5742 	.ascii "TIM2_Period"
             72 69 6F 64
      004565 00                    5743 	.db	0
      004566 00 00 00 BE           5744 	.dw	0,190
      00456A 00                    5745 	.uleb128	0
      00456B 05                    5746 	.uleb128	5
      00456C 75 6E 73 69 67 6E 65  5747 	.ascii "unsigned char"
             64 20 63 68 61 72
      004579 00                    5748 	.db	0
      00457A 01                    5749 	.db	1
      00457B 08                    5750 	.db	8
      00457C 05                    5751 	.uleb128	5
      00457D 75 6E 73 69 67 6E 65  5752 	.ascii "unsigned int"
             64 20 69 6E 74
      004589 00                    5753 	.db	0
      00458A 02                    5754 	.db	2
      00458B 07                    5755 	.db	7
      00458C 03                    5756 	.uleb128	3
      00458D 00 00 01 46           5757 	.dw	0,326
      004591 54 49 4D 32 5F 4F 43  5758 	.ascii "TIM2_OC1Init"
             31 49 6E 69 74
      00459D 00                    5759 	.db	0
      00459E 00 00 9E DF           5760 	.dw	0,(_TIM2_OC1Init)
      0045A2 00 00 9F 15           5761 	.dw	0,(XG$TIM2_OC1Init$0$0+1)
      0045A6 01                    5762 	.db	1
      0045A7 00 00 3A 2C           5763 	.dw	0,(Ldebug_loc_start+1856)
      0045AB 04                    5764 	.uleb128	4
      0045AC 02                    5765 	.db	2
      0045AD 91                    5766 	.db	145
      0045AE 02                    5767 	.sleb128	2
      0045AF 54 49 4D 32 5F 4F 43  5768 	.ascii "TIM2_OCMode"
             4D 6F 64 65
      0045BA 00                    5769 	.db	0
      0045BB 00 00 00 AD           5770 	.dw	0,173
      0045BF 04                    5771 	.uleb128	4
      0045C0 02                    5772 	.db	2
      0045C1 91                    5773 	.db	145
      0045C2 03                    5774 	.sleb128	3
      0045C3 54 49 4D 32 5F 4F 75  5775 	.ascii "TIM2_OutputState"
             74 70 75 74 53 74 61
             74 65
      0045D3 00                    5776 	.db	0
      0045D4 00 00 00 AD           5777 	.dw	0,173
      0045D8 04                    5778 	.uleb128	4
      0045D9 02                    5779 	.db	2
      0045DA 91                    5780 	.db	145
      0045DB 04                    5781 	.sleb128	4
      0045DC 54 49 4D 32 5F 50 75  5782 	.ascii "TIM2_Pulse"
             6C 73 65
      0045E6 00                    5783 	.db	0
      0045E7 00 00 00 BE           5784 	.dw	0,190
      0045EB 04                    5785 	.uleb128	4
      0045EC 02                    5786 	.db	2
      0045ED 91                    5787 	.db	145
      0045EE 06                    5788 	.sleb128	6
      0045EF 54 49 4D 32 5F 4F 43  5789 	.ascii "TIM2_OCPolarity"
             50 6F 6C 61 72 69 74
             79
      0045FE 00                    5790 	.db	0
      0045FF 00 00 00 AD           5791 	.dw	0,173
      004603 00                    5792 	.uleb128	0
      004604 03                    5793 	.uleb128	3
      004605 00 00 01 BE           5794 	.dw	0,446
      004609 54 49 4D 32 5F 4F 43  5795 	.ascii "TIM2_OC2Init"
             32 49 6E 69 74
      004615 00                    5796 	.db	0
      004616 00 00 9F 15           5797 	.dw	0,(_TIM2_OC2Init)
      00461A 00 00 9F 4B           5798 	.dw	0,(XG$TIM2_OC2Init$0$0+1)
      00461E 01                    5799 	.db	1
      00461F 00 00 3A 00           5800 	.dw	0,(Ldebug_loc_start+1812)
      004623 04                    5801 	.uleb128	4
      004624 02                    5802 	.db	2
      004625 91                    5803 	.db	145
      004626 02                    5804 	.sleb128	2
      004627 54 49 4D 32 5F 4F 43  5805 	.ascii "TIM2_OCMode"
             4D 6F 64 65
      004632 00                    5806 	.db	0
      004633 00 00 00 AD           5807 	.dw	0,173
      004637 04                    5808 	.uleb128	4
      004638 02                    5809 	.db	2
      004639 91                    5810 	.db	145
      00463A 03                    5811 	.sleb128	3
      00463B 54 49 4D 32 5F 4F 75  5812 	.ascii "TIM2_OutputState"
             74 70 75 74 53 74 61
             74 65
      00464B 00                    5813 	.db	0
      00464C 00 00 00 AD           5814 	.dw	0,173
      004650 04                    5815 	.uleb128	4
      004651 02                    5816 	.db	2
      004652 91                    5817 	.db	145
      004653 04                    5818 	.sleb128	4
      004654 54 49 4D 32 5F 50 75  5819 	.ascii "TIM2_Pulse"
             6C 73 65
      00465E 00                    5820 	.db	0
      00465F 00 00 00 BE           5821 	.dw	0,190
      004663 04                    5822 	.uleb128	4
      004664 02                    5823 	.db	2
      004665 91                    5824 	.db	145
      004666 06                    5825 	.sleb128	6
      004667 54 49 4D 32 5F 4F 43  5826 	.ascii "TIM2_OCPolarity"
             50 6F 6C 61 72 69 74
             79
      004676 00                    5827 	.db	0
      004677 00 00 00 AD           5828 	.dw	0,173
      00467B 00                    5829 	.uleb128	0
      00467C 03                    5830 	.uleb128	3
      00467D 00 00 02 36           5831 	.dw	0,566
      004681 54 49 4D 32 5F 4F 43  5832 	.ascii "TIM2_OC3Init"
             33 49 6E 69 74
      00468D 00                    5833 	.db	0
      00468E 00 00 9F 4B           5834 	.dw	0,(_TIM2_OC3Init)
      004692 00 00 9F 81           5835 	.dw	0,(XG$TIM2_OC3Init$0$0+1)
      004696 01                    5836 	.db	1
      004697 00 00 39 D4           5837 	.dw	0,(Ldebug_loc_start+1768)
      00469B 04                    5838 	.uleb128	4
      00469C 02                    5839 	.db	2
      00469D 91                    5840 	.db	145
      00469E 02                    5841 	.sleb128	2
      00469F 54 49 4D 32 5F 4F 43  5842 	.ascii "TIM2_OCMode"
             4D 6F 64 65
      0046AA 00                    5843 	.db	0
      0046AB 00 00 00 AD           5844 	.dw	0,173
      0046AF 04                    5845 	.uleb128	4
      0046B0 02                    5846 	.db	2
      0046B1 91                    5847 	.db	145
      0046B2 03                    5848 	.sleb128	3
      0046B3 54 49 4D 32 5F 4F 75  5849 	.ascii "TIM2_OutputState"
             74 70 75 74 53 74 61
             74 65
      0046C3 00                    5850 	.db	0
      0046C4 00 00 00 AD           5851 	.dw	0,173
      0046C8 04                    5852 	.uleb128	4
      0046C9 02                    5853 	.db	2
      0046CA 91                    5854 	.db	145
      0046CB 04                    5855 	.sleb128	4
      0046CC 54 49 4D 32 5F 50 75  5856 	.ascii "TIM2_Pulse"
             6C 73 65
      0046D6 00                    5857 	.db	0
      0046D7 00 00 00 BE           5858 	.dw	0,190
      0046DB 04                    5859 	.uleb128	4
      0046DC 02                    5860 	.db	2
      0046DD 91                    5861 	.db	145
      0046DE 06                    5862 	.sleb128	6
      0046DF 54 49 4D 32 5F 4F 43  5863 	.ascii "TIM2_OCPolarity"
             50 6F 6C 61 72 69 74
             79
      0046EE 00                    5864 	.db	0
      0046EF 00 00 00 AD           5865 	.dw	0,173
      0046F3 00                    5866 	.uleb128	0
      0046F4 03                    5867 	.uleb128	3
      0046F5 00 00 02 E5           5868 	.dw	0,741
      0046F9 54 49 4D 32 5F 49 43  5869 	.ascii "TIM2_ICInit"
             49 6E 69 74
      004704 00                    5870 	.db	0
      004705 00 00 9F 81           5871 	.dw	0,(_TIM2_ICInit)
      004709 00 00 9F D9           5872 	.dw	0,(XG$TIM2_ICInit$0$0+1)
      00470D 01                    5873 	.db	1
      00470E 00 00 38 DC           5874 	.dw	0,(Ldebug_loc_start+1520)
      004712 04                    5875 	.uleb128	4
      004713 02                    5876 	.db	2
      004714 91                    5877 	.db	145
      004715 02                    5878 	.sleb128	2
      004716 54 49 4D 32 5F 43 68  5879 	.ascii "TIM2_Channel"
             61 6E 6E 65 6C
      004722 00                    5880 	.db	0
      004723 00 00 00 AD           5881 	.dw	0,173
      004727 04                    5882 	.uleb128	4
      004728 02                    5883 	.db	2
      004729 91                    5884 	.db	145
      00472A 03                    5885 	.sleb128	3
      00472B 54 49 4D 32 5F 49 43  5886 	.ascii "TIM2_ICPolarity"
             50 6F 6C 61 72 69 74
             79
      00473A 00                    5887 	.db	0
      00473B 00 00 00 AD           5888 	.dw	0,173
      00473F 04                    5889 	.uleb128	4
      004740 02                    5890 	.db	2
      004741 91                    5891 	.db	145
      004742 04                    5892 	.sleb128	4
      004743 54 49 4D 32 5F 49 43  5893 	.ascii "TIM2_ICSelection"
             53 65 6C 65 63 74 69
             6F 6E
      004753 00                    5894 	.db	0
      004754 00 00 00 AD           5895 	.dw	0,173
      004758 04                    5896 	.uleb128	4
      004759 02                    5897 	.db	2
      00475A 91                    5898 	.db	145
      00475B 05                    5899 	.sleb128	5
      00475C 54 49 4D 32 5F 49 43  5900 	.ascii "TIM2_ICPrescaler"
             50 72 65 73 63 61 6C
             65 72
      00476C 00                    5901 	.db	0
      00476D 00 00 00 AD           5902 	.dw	0,173
      004771 04                    5903 	.uleb128	4
      004772 02                    5904 	.db	2
      004773 91                    5905 	.db	145
      004774 06                    5906 	.sleb128	6
      004775 54 49 4D 32 5F 49 43  5907 	.ascii "TIM2_ICFilter"
             46 69 6C 74 65 72
      004782 00                    5908 	.db	0
      004783 00 00 00 AD           5909 	.dw	0,173
      004787 06                    5910 	.uleb128	6
      004788 00 00 9F 88           5911 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$80)
      00478C 00 00 9F 9D           5912 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$89)
      004790 06                    5913 	.uleb128	6
      004791 00 00 9F AB           5914 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$92)
      004795 00 00 9F C0           5915 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$101)
      004799 06                    5916 	.uleb128	6
      00479A 00 00 9F C3           5917 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$102)
      00479E 00 00 9F D8           5918 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$111)
      0047A2 00                    5919 	.uleb128	0
      0047A3 03                    5920 	.uleb128	3
      0047A4 00 00 03 DA           5921 	.dw	0,986
      0047A8 54 49 4D 32 5F 50 57  5922 	.ascii "TIM2_PWMIConfig"
             4D 49 43 6F 6E 66 69
             67
      0047B7 00                    5923 	.db	0
      0047B8 00 00 9F D9           5924 	.dw	0,(_TIM2_PWMIConfig)
      0047BC 00 00 A0 62           5925 	.dw	0,(XG$TIM2_PWMIConfig$0$0+1)
      0047C0 01                    5926 	.db	1
      0047C1 00 00 37 78           5927 	.dw	0,(Ldebug_loc_start+1164)
      0047C5 04                    5928 	.uleb128	4
      0047C6 02                    5929 	.db	2
      0047C7 91                    5930 	.db	145
      0047C8 02                    5931 	.sleb128	2
      0047C9 54 49 4D 32 5F 43 68  5932 	.ascii "TIM2_Channel"
             61 6E 6E 65 6C
      0047D5 00                    5933 	.db	0
      0047D6 00 00 00 AD           5934 	.dw	0,173
      0047DA 04                    5935 	.uleb128	4
      0047DB 02                    5936 	.db	2
      0047DC 91                    5937 	.db	145
      0047DD 03                    5938 	.sleb128	3
      0047DE 54 49 4D 32 5F 49 43  5939 	.ascii "TIM2_ICPolarity"
             50 6F 6C 61 72 69 74
             79
      0047ED 00                    5940 	.db	0
      0047EE 00 00 00 AD           5941 	.dw	0,173
      0047F2 04                    5942 	.uleb128	4
      0047F3 02                    5943 	.db	2
      0047F4 91                    5944 	.db	145
      0047F5 04                    5945 	.sleb128	4
      0047F6 54 49 4D 32 5F 49 43  5946 	.ascii "TIM2_ICSelection"
             53 65 6C 65 63 74 69
             6F 6E
      004806 00                    5947 	.db	0
      004807 00 00 00 AD           5948 	.dw	0,173
      00480B 04                    5949 	.uleb128	4
      00480C 02                    5950 	.db	2
      00480D 91                    5951 	.db	145
      00480E 05                    5952 	.sleb128	5
      00480F 54 49 4D 32 5F 49 43  5953 	.ascii "TIM2_ICPrescaler"
             50 72 65 73 63 61 6C
             65 72
      00481F 00                    5954 	.db	0
      004820 00 00 00 AD           5955 	.dw	0,173
      004824 04                    5956 	.uleb128	4
      004825 02                    5957 	.db	2
      004826 91                    5958 	.db	145
      004827 06                    5959 	.sleb128	6
      004828 54 49 4D 32 5F 49 43  5960 	.ascii "TIM2_ICFilter"
             46 69 6C 74 65 72
      004835 00                    5961 	.db	0
      004836 00 00 00 AD           5962 	.dw	0,173
      00483A 06                    5963 	.uleb128	6
      00483B 00 00 9F E3           5964 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$120)
      00483F 00 00 9F E7           5965 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$122)
      004843 06                    5966 	.uleb128	6
      004844 00 00 9F EA           5967 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$123)
      004848 00 00 9F EC           5968 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$125)
      00484C 06                    5969 	.uleb128	6
      00484D 00 00 9F F7           5970 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$128)
      004851 00 00 9F FB           5971 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$130)
      004855 06                    5972 	.uleb128	6
      004856 00 00 9F FE           5973 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$131)
      00485A 00 00 A0 02           5974 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$133)
      00485E 06                    5975 	.uleb128	6
      00485F 00 00 A0 09           5976 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$135)
      004863 00 00 A0 33           5977 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$152)
      004867 06                    5978 	.uleb128	6
      004868 00 00 A0 36           5979 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$153)
      00486C 00 00 A0 60           5980 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$170)
      004870 07                    5981 	.uleb128	7
      004871 02                    5982 	.db	2
      004872 91                    5983 	.db	145
      004873 7E                    5984 	.sleb128	-2
      004874 69 63 70 6F 6C 61 72  5985 	.ascii "icpolarity"
             69 74 79
      00487E 00                    5986 	.db	0
      00487F 00 00 00 AD           5987 	.dw	0,173
      004883 07                    5988 	.uleb128	7
      004884 02                    5989 	.db	2
      004885 91                    5990 	.db	145
      004886 7F                    5991 	.sleb128	-1
      004887 69 63 73 65 6C 65 63  5992 	.ascii "icselection"
             74 69 6F 6E
      004892 00                    5993 	.db	0
      004893 00 00 00 AD           5994 	.dw	0,173
      004897 00                    5995 	.uleb128	0
      004898 03                    5996 	.uleb128	3
      004899 00 00 04 19           5997 	.dw	0,1049
      00489D 54 49 4D 32 5F 43 6D  5998 	.ascii "TIM2_Cmd"
             64
      0048A5 00                    5999 	.db	0
      0048A6 00 00 A0 62           6000 	.dw	0,(_TIM2_Cmd)
      0048AA 00 00 A0 7A           6001 	.dw	0,(XG$TIM2_Cmd$0$0+1)
      0048AE 01                    6002 	.db	1
      0048AF 00 00 37 64           6003 	.dw	0,(Ldebug_loc_start+1144)
      0048B3 04                    6004 	.uleb128	4
      0048B4 02                    6005 	.db	2
      0048B5 91                    6006 	.db	145
      0048B6 02                    6007 	.sleb128	2
      0048B7 4E 65 77 53 74 61 74  6008 	.ascii "NewState"
             65
      0048BF 00                    6009 	.db	0
      0048C0 00 00 00 AD           6010 	.dw	0,173
      0048C4 06                    6011 	.uleb128	6
      0048C5 00 00 A0 6C           6012 	.dw	0,(Sstm8s_tim2$TIM2_Cmd$179)
      0048C9 00 00 A0 71           6013 	.dw	0,(Sstm8s_tim2$TIM2_Cmd$181)
      0048CD 06                    6014 	.uleb128	6
      0048CE 00 00 A0 74           6015 	.dw	0,(Sstm8s_tim2$TIM2_Cmd$182)
      0048D2 00 00 A0 79           6016 	.dw	0,(Sstm8s_tim2$TIM2_Cmd$184)
      0048D6 00                    6017 	.uleb128	0
      0048D7 03                    6018 	.uleb128	3
      0048D8 00 00 04 6D           6019 	.dw	0,1133
      0048DC 54 49 4D 32 5F 49 54  6020 	.ascii "TIM2_ITConfig"
             43 6F 6E 66 69 67
      0048E9 00                    6021 	.db	0
      0048EA 00 00 A0 7A           6022 	.dw	0,(_TIM2_ITConfig)
      0048EE 00 00 A0 9B           6023 	.dw	0,(XG$TIM2_ITConfig$0$0+1)
      0048F2 01                    6024 	.db	1
      0048F3 00 00 37 20           6025 	.dw	0,(Ldebug_loc_start+1076)
      0048F7 04                    6026 	.uleb128	4
      0048F8 02                    6027 	.db	2
      0048F9 91                    6028 	.db	145
      0048FA 02                    6029 	.sleb128	2
      0048FB 54 49 4D 32 5F 49 54  6030 	.ascii "TIM2_IT"
      004902 00                    6031 	.db	0
      004903 00 00 00 AD           6032 	.dw	0,173
      004907 04                    6033 	.uleb128	4
      004908 02                    6034 	.db	2
      004909 91                    6035 	.db	145
      00490A 03                    6036 	.sleb128	3
      00490B 4E 65 77 53 74 61 74  6037 	.ascii "NewState"
             65
      004913 00                    6038 	.db	0
      004914 00 00 00 AD           6039 	.dw	0,173
      004918 06                    6040 	.uleb128	6
      004919 00 00 A0 85           6041 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$193)
      00491D 00 00 A0 8A           6042 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$195)
      004921 06                    6043 	.uleb128	6
      004922 00 00 A0 8D           6044 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$196)
      004926 00 00 A0 99           6045 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$200)
      00492A 00                    6046 	.uleb128	0
      00492B 03                    6047 	.uleb128	3
      00492C 00 00 04 BC           6048 	.dw	0,1212
      004930 54 49 4D 32 5F 55 70  6049 	.ascii "TIM2_UpdateDisableConfig"
             64 61 74 65 44 69 73
             61 62 6C 65 43 6F 6E
             66 69 67
      004948 00                    6050 	.db	0
      004949 00 00 A0 9B           6051 	.dw	0,(_TIM2_UpdateDisableConfig)
      00494D 00 00 A0 B3           6052 	.dw	0,(XG$TIM2_UpdateDisableConfig$0$0+1)
      004951 01                    6053 	.db	1
      004952 00 00 37 0C           6054 	.dw	0,(Ldebug_loc_start+1056)
      004956 04                    6055 	.uleb128	4
      004957 02                    6056 	.db	2
      004958 91                    6057 	.db	145
      004959 02                    6058 	.sleb128	2
      00495A 4E 65 77 53 74 61 74  6059 	.ascii "NewState"
             65
      004962 00                    6060 	.db	0
      004963 00 00 00 AD           6061 	.dw	0,173
      004967 06                    6062 	.uleb128	6
      004968 00 00 A0 A5           6063 	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$209)
      00496C 00 00 A0 AA           6064 	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$211)
      004970 06                    6065 	.uleb128	6
      004971 00 00 A0 AD           6066 	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$212)
      004975 00 00 A0 B2           6067 	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$214)
      004979 00                    6068 	.uleb128	0
      00497A 03                    6069 	.uleb128	3
      00497B 00 00 05 14           6070 	.dw	0,1300
      00497F 54 49 4D 32 5F 55 70  6071 	.ascii "TIM2_UpdateRequestConfig"
             64 61 74 65 52 65 71
             75 65 73 74 43 6F 6E
             66 69 67
      004997 00                    6072 	.db	0
      004998 00 00 A0 B3           6073 	.dw	0,(_TIM2_UpdateRequestConfig)
      00499C 00 00 A0 CB           6074 	.dw	0,(XG$TIM2_UpdateRequestConfig$0$0+1)
      0049A0 01                    6075 	.db	1
      0049A1 00 00 36 F8           6076 	.dw	0,(Ldebug_loc_start+1036)
      0049A5 04                    6077 	.uleb128	4
      0049A6 02                    6078 	.db	2
      0049A7 91                    6079 	.db	145
      0049A8 02                    6080 	.sleb128	2
      0049A9 54 49 4D 32 5F 55 70  6081 	.ascii "TIM2_UpdateSource"
             64 61 74 65 53 6F 75
             72 63 65
      0049BA 00                    6082 	.db	0
      0049BB 00 00 00 AD           6083 	.dw	0,173
      0049BF 06                    6084 	.uleb128	6
      0049C0 00 00 A0 BD           6085 	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$222)
      0049C4 00 00 A0 C2           6086 	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$224)
      0049C8 06                    6087 	.uleb128	6
      0049C9 00 00 A0 C5           6088 	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$225)
      0049CD 00 00 A0 CA           6089 	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$227)
      0049D1 00                    6090 	.uleb128	0
      0049D2 03                    6091 	.uleb128	3
      0049D3 00 00 05 65           6092 	.dw	0,1381
      0049D7 54 49 4D 32 5F 53 65  6093 	.ascii "TIM2_SelectOnePulseMode"
             6C 65 63 74 4F 6E 65
             50 75 6C 73 65 4D 6F
             64 65
      0049EE 00                    6094 	.db	0
      0049EF 00 00 A0 CB           6095 	.dw	0,(_TIM2_SelectOnePulseMode)
      0049F3 00 00 A0 E3           6096 	.dw	0,(XG$TIM2_SelectOnePulseMode$0$0+1)
      0049F7 01                    6097 	.db	1
      0049F8 00 00 36 E4           6098 	.dw	0,(Ldebug_loc_start+1016)
      0049FC 04                    6099 	.uleb128	4
      0049FD 02                    6100 	.db	2
      0049FE 91                    6101 	.db	145
      0049FF 02                    6102 	.sleb128	2
      004A00 54 49 4D 32 5F 4F 50  6103 	.ascii "TIM2_OPMode"
             4D 6F 64 65
      004A0B 00                    6104 	.db	0
      004A0C 00 00 00 AD           6105 	.dw	0,173
      004A10 06                    6106 	.uleb128	6
      004A11 00 00 A0 D5           6107 	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$235)
      004A15 00 00 A0 DA           6108 	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$237)
      004A19 06                    6109 	.uleb128	6
      004A1A 00 00 A0 DD           6110 	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$238)
      004A1E 00 00 A0 E2           6111 	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$240)
      004A22 00                    6112 	.uleb128	0
      004A23 03                    6113 	.uleb128	3
      004A24 00 00 05 BA           6114 	.dw	0,1466
      004A28 54 49 4D 32 5F 50 72  6115 	.ascii "TIM2_PrescalerConfig"
             65 73 63 61 6C 65 72
             43 6F 6E 66 69 67
      004A3C 00                    6116 	.db	0
      004A3D 00 00 A0 E3           6117 	.dw	0,(_TIM2_PrescalerConfig)
      004A41 00 00 A0 F0           6118 	.dw	0,(XG$TIM2_PrescalerConfig$0$0+1)
      004A45 01                    6119 	.db	1
      004A46 00 00 36 D0           6120 	.dw	0,(Ldebug_loc_start+996)
      004A4A 04                    6121 	.uleb128	4
      004A4B 02                    6122 	.db	2
      004A4C 91                    6123 	.db	145
      004A4D 02                    6124 	.sleb128	2
      004A4E 50 72 65 73 63 61 6C  6125 	.ascii "Prescaler"
             65 72
      004A57 00                    6126 	.db	0
      004A58 00 00 00 AD           6127 	.dw	0,173
      004A5C 04                    6128 	.uleb128	4
      004A5D 02                    6129 	.db	2
      004A5E 91                    6130 	.db	145
      004A5F 03                    6131 	.sleb128	3
      004A60 54 49 4D 32 5F 50 53  6132 	.ascii "TIM2_PSCReloadMode"
             43 52 65 6C 6F 61 64
             4D 6F 64 65
      004A72 00                    6133 	.db	0
      004A73 00 00 00 AD           6134 	.dw	0,173
      004A77 00                    6135 	.uleb128	0
      004A78 03                    6136 	.uleb128	3
      004A79 00 00 05 FC           6137 	.dw	0,1532
      004A7D 54 49 4D 32 5F 46 6F  6138 	.ascii "TIM2_ForcedOC1Config"
             72 63 65 64 4F 43 31
             43 6F 6E 66 69 67
      004A91 00                    6139 	.db	0
      004A92 00 00 A0 F0           6140 	.dw	0,(_TIM2_ForcedOC1Config)
      004A96 00 00 A0 FB           6141 	.dw	0,(XG$TIM2_ForcedOC1Config$0$0+1)
      004A9A 01                    6142 	.db	1
      004A9B 00 00 36 BC           6143 	.dw	0,(Ldebug_loc_start+976)
      004A9F 04                    6144 	.uleb128	4
      004AA0 02                    6145 	.db	2
      004AA1 91                    6146 	.db	145
      004AA2 02                    6147 	.sleb128	2
      004AA3 54 49 4D 32 5F 46 6F  6148 	.ascii "TIM2_ForcedAction"
             72 63 65 64 41 63 74
             69 6F 6E
      004AB4 00                    6149 	.db	0
      004AB5 00 00 00 AD           6150 	.dw	0,173
      004AB9 00                    6151 	.uleb128	0
      004ABA 03                    6152 	.uleb128	3
      004ABB 00 00 06 3E           6153 	.dw	0,1598
      004ABF 54 49 4D 32 5F 46 6F  6154 	.ascii "TIM2_ForcedOC2Config"
             72 63 65 64 4F 43 32
             43 6F 6E 66 69 67
      004AD3 00                    6155 	.db	0
      004AD4 00 00 A0 FB           6156 	.dw	0,(_TIM2_ForcedOC2Config)
      004AD8 00 00 A1 06           6157 	.dw	0,(XG$TIM2_ForcedOC2Config$0$0+1)
      004ADC 01                    6158 	.db	1
      004ADD 00 00 36 A8           6159 	.dw	0,(Ldebug_loc_start+956)
      004AE1 04                    6160 	.uleb128	4
      004AE2 02                    6161 	.db	2
      004AE3 91                    6162 	.db	145
      004AE4 02                    6163 	.sleb128	2
      004AE5 54 49 4D 32 5F 46 6F  6164 	.ascii "TIM2_ForcedAction"
             72 63 65 64 41 63 74
             69 6F 6E
      004AF6 00                    6165 	.db	0
      004AF7 00 00 00 AD           6166 	.dw	0,173
      004AFB 00                    6167 	.uleb128	0
      004AFC 03                    6168 	.uleb128	3
      004AFD 00 00 06 80           6169 	.dw	0,1664
      004B01 54 49 4D 32 5F 46 6F  6170 	.ascii "TIM2_ForcedOC3Config"
             72 63 65 64 4F 43 33
             43 6F 6E 66 69 67
      004B15 00                    6171 	.db	0
      004B16 00 00 A1 06           6172 	.dw	0,(_TIM2_ForcedOC3Config)
      004B1A 00 00 A1 11           6173 	.dw	0,(XG$TIM2_ForcedOC3Config$0$0+1)
      004B1E 01                    6174 	.db	1
      004B1F 00 00 36 94           6175 	.dw	0,(Ldebug_loc_start+936)
      004B23 04                    6176 	.uleb128	4
      004B24 02                    6177 	.db	2
      004B25 91                    6178 	.db	145
      004B26 02                    6179 	.sleb128	2
      004B27 54 49 4D 32 5F 46 6F  6180 	.ascii "TIM2_ForcedAction"
             72 63 65 64 41 63 74
             69 6F 6E
      004B38 00                    6181 	.db	0
      004B39 00 00 00 AD           6182 	.dw	0,173
      004B3D 00                    6183 	.uleb128	0
      004B3E 03                    6184 	.uleb128	3
      004B3F 00 00 06 CC           6185 	.dw	0,1740
      004B43 54 49 4D 32 5F 41 52  6186 	.ascii "TIM2_ARRPreloadConfig"
             52 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      004B58 00                    6187 	.db	0
      004B59 00 00 A1 11           6188 	.dw	0,(_TIM2_ARRPreloadConfig)
      004B5D 00 00 A1 29           6189 	.dw	0,(XG$TIM2_ARRPreloadConfig$0$0+1)
      004B61 01                    6190 	.db	1
      004B62 00 00 36 80           6191 	.dw	0,(Ldebug_loc_start+916)
      004B66 04                    6192 	.uleb128	4
      004B67 02                    6193 	.db	2
      004B68 91                    6194 	.db	145
      004B69 02                    6195 	.sleb128	2
      004B6A 4E 65 77 53 74 61 74  6196 	.ascii "NewState"
             65
      004B72 00                    6197 	.db	0
      004B73 00 00 00 AD           6198 	.dw	0,173
      004B77 06                    6199 	.uleb128	6
      004B78 00 00 A1 1B           6200 	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$276)
      004B7C 00 00 A1 20           6201 	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$278)
      004B80 06                    6202 	.uleb128	6
      004B81 00 00 A1 23           6203 	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$279)
      004B85 00 00 A1 28           6204 	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$281)
      004B89 00                    6205 	.uleb128	0
      004B8A 03                    6206 	.uleb128	3
      004B8B 00 00 07 18           6207 	.dw	0,1816
      004B8F 54 49 4D 32 5F 4F 43  6208 	.ascii "TIM2_OC1PreloadConfig"
             31 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      004BA4 00                    6209 	.db	0
      004BA5 00 00 A1 29           6210 	.dw	0,(_TIM2_OC1PreloadConfig)
      004BA9 00 00 A1 41           6211 	.dw	0,(XG$TIM2_OC1PreloadConfig$0$0+1)
      004BAD 01                    6212 	.db	1
      004BAE 00 00 36 6C           6213 	.dw	0,(Ldebug_loc_start+896)
      004BB2 04                    6214 	.uleb128	4
      004BB3 02                    6215 	.db	2
      004BB4 91                    6216 	.db	145
      004BB5 02                    6217 	.sleb128	2
      004BB6 4E 65 77 53 74 61 74  6218 	.ascii "NewState"
             65
      004BBE 00                    6219 	.db	0
      004BBF 00 00 00 AD           6220 	.dw	0,173
      004BC3 06                    6221 	.uleb128	6
      004BC4 00 00 A1 33           6222 	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$289)
      004BC8 00 00 A1 38           6223 	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$291)
      004BCC 06                    6224 	.uleb128	6
      004BCD 00 00 A1 3B           6225 	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$292)
      004BD1 00 00 A1 40           6226 	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$294)
      004BD5 00                    6227 	.uleb128	0
      004BD6 03                    6228 	.uleb128	3
      004BD7 00 00 07 64           6229 	.dw	0,1892
      004BDB 54 49 4D 32 5F 4F 43  6230 	.ascii "TIM2_OC2PreloadConfig"
             32 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      004BF0 00                    6231 	.db	0
      004BF1 00 00 A1 41           6232 	.dw	0,(_TIM2_OC2PreloadConfig)
      004BF5 00 00 A1 59           6233 	.dw	0,(XG$TIM2_OC2PreloadConfig$0$0+1)
      004BF9 01                    6234 	.db	1
      004BFA 00 00 36 58           6235 	.dw	0,(Ldebug_loc_start+876)
      004BFE 04                    6236 	.uleb128	4
      004BFF 02                    6237 	.db	2
      004C00 91                    6238 	.db	145
      004C01 02                    6239 	.sleb128	2
      004C02 4E 65 77 53 74 61 74  6240 	.ascii "NewState"
             65
      004C0A 00                    6241 	.db	0
      004C0B 00 00 00 AD           6242 	.dw	0,173
      004C0F 06                    6243 	.uleb128	6
      004C10 00 00 A1 4B           6244 	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$302)
      004C14 00 00 A1 50           6245 	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$304)
      004C18 06                    6246 	.uleb128	6
      004C19 00 00 A1 53           6247 	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$305)
      004C1D 00 00 A1 58           6248 	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$307)
      004C21 00                    6249 	.uleb128	0
      004C22 03                    6250 	.uleb128	3
      004C23 00 00 07 B0           6251 	.dw	0,1968
      004C27 54 49 4D 32 5F 4F 43  6252 	.ascii "TIM2_OC3PreloadConfig"
             33 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      004C3C 00                    6253 	.db	0
      004C3D 00 00 A1 59           6254 	.dw	0,(_TIM2_OC3PreloadConfig)
      004C41 00 00 A1 71           6255 	.dw	0,(XG$TIM2_OC3PreloadConfig$0$0+1)
      004C45 01                    6256 	.db	1
      004C46 00 00 36 44           6257 	.dw	0,(Ldebug_loc_start+856)
      004C4A 04                    6258 	.uleb128	4
      004C4B 02                    6259 	.db	2
      004C4C 91                    6260 	.db	145
      004C4D 02                    6261 	.sleb128	2
      004C4E 4E 65 77 53 74 61 74  6262 	.ascii "NewState"
             65
      004C56 00                    6263 	.db	0
      004C57 00 00 00 AD           6264 	.dw	0,173
      004C5B 06                    6265 	.uleb128	6
      004C5C 00 00 A1 63           6266 	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$315)
      004C60 00 00 A1 68           6267 	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$317)
      004C64 06                    6268 	.uleb128	6
      004C65 00 00 A1 6B           6269 	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$318)
      004C69 00 00 A1 70           6270 	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$320)
      004C6D 00                    6271 	.uleb128	0
      004C6E 03                    6272 	.uleb128	3
      004C6F 00 00 07 EF           6273 	.dw	0,2031
      004C73 54 49 4D 32 5F 47 65  6274 	.ascii "TIM2_GenerateEvent"
             6E 65 72 61 74 65 45
             76 65 6E 74
      004C85 00                    6275 	.db	0
      004C86 00 00 A1 71           6276 	.dw	0,(_TIM2_GenerateEvent)
      004C8A 00 00 A1 78           6277 	.dw	0,(XG$TIM2_GenerateEvent$0$0+1)
      004C8E 01                    6278 	.db	1
      004C8F 00 00 36 30           6279 	.dw	0,(Ldebug_loc_start+836)
      004C93 04                    6280 	.uleb128	4
      004C94 02                    6281 	.db	2
      004C95 91                    6282 	.db	145
      004C96 02                    6283 	.sleb128	2
      004C97 54 49 4D 32 5F 45 76  6284 	.ascii "TIM2_EventSource"
             65 6E 74 53 6F 75 72
             63 65
      004CA7 00                    6285 	.db	0
      004CA8 00 00 00 AD           6286 	.dw	0,173
      004CAC 00                    6287 	.uleb128	0
      004CAD 03                    6288 	.uleb128	3
      004CAE 00 00 08 43           6289 	.dw	0,2115
      004CB2 54 49 4D 32 5F 4F 43  6290 	.ascii "TIM2_OC1PolarityConfig"
             31 50 6F 6C 61 72 69
             74 79 43 6F 6E 66 69
             67
      004CC8 00                    6291 	.db	0
      004CC9 00 00 A1 78           6292 	.dw	0,(_TIM2_OC1PolarityConfig)
      004CCD 00 00 A1 90           6293 	.dw	0,(XG$TIM2_OC1PolarityConfig$0$0+1)
      004CD1 01                    6294 	.db	1
      004CD2 00 00 36 1C           6295 	.dw	0,(Ldebug_loc_start+816)
      004CD6 04                    6296 	.uleb128	4
      004CD7 02                    6297 	.db	2
      004CD8 91                    6298 	.db	145
      004CD9 02                    6299 	.sleb128	2
      004CDA 54 49 4D 32 5F 4F 43  6300 	.ascii "TIM2_OCPolarity"
             50 6F 6C 61 72 69 74
             79
      004CE9 00                    6301 	.db	0
      004CEA 00 00 00 AD           6302 	.dw	0,173
      004CEE 06                    6303 	.uleb128	6
      004CEF 00 00 A1 82           6304 	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$334)
      004CF3 00 00 A1 87           6305 	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$336)
      004CF7 06                    6306 	.uleb128	6
      004CF8 00 00 A1 8A           6307 	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$337)
      004CFC 00 00 A1 8F           6308 	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$339)
      004D00 00                    6309 	.uleb128	0
      004D01 03                    6310 	.uleb128	3
      004D02 00 00 08 97           6311 	.dw	0,2199
      004D06 54 49 4D 32 5F 4F 43  6312 	.ascii "TIM2_OC2PolarityConfig"
             32 50 6F 6C 61 72 69
             74 79 43 6F 6E 66 69
             67
      004D1C 00                    6313 	.db	0
      004D1D 00 00 A1 90           6314 	.dw	0,(_TIM2_OC2PolarityConfig)
      004D21 00 00 A1 A8           6315 	.dw	0,(XG$TIM2_OC2PolarityConfig$0$0+1)
      004D25 01                    6316 	.db	1
      004D26 00 00 36 08           6317 	.dw	0,(Ldebug_loc_start+796)
      004D2A 04                    6318 	.uleb128	4
      004D2B 02                    6319 	.db	2
      004D2C 91                    6320 	.db	145
      004D2D 02                    6321 	.sleb128	2
      004D2E 54 49 4D 32 5F 4F 43  6322 	.ascii "TIM2_OCPolarity"
             50 6F 6C 61 72 69 74
             79
      004D3D 00                    6323 	.db	0
      004D3E 00 00 00 AD           6324 	.dw	0,173
      004D42 06                    6325 	.uleb128	6
      004D43 00 00 A1 9A           6326 	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$347)
      004D47 00 00 A1 9F           6327 	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$349)
      004D4B 06                    6328 	.uleb128	6
      004D4C 00 00 A1 A2           6329 	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$350)
      004D50 00 00 A1 A7           6330 	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$352)
      004D54 00                    6331 	.uleb128	0
      004D55 03                    6332 	.uleb128	3
      004D56 00 00 08 EB           6333 	.dw	0,2283
      004D5A 54 49 4D 32 5F 4F 43  6334 	.ascii "TIM2_OC3PolarityConfig"
             33 50 6F 6C 61 72 69
             74 79 43 6F 6E 66 69
             67
      004D70 00                    6335 	.db	0
      004D71 00 00 A1 A8           6336 	.dw	0,(_TIM2_OC3PolarityConfig)
      004D75 00 00 A1 C0           6337 	.dw	0,(XG$TIM2_OC3PolarityConfig$0$0+1)
      004D79 01                    6338 	.db	1
      004D7A 00 00 35 F4           6339 	.dw	0,(Ldebug_loc_start+776)
      004D7E 04                    6340 	.uleb128	4
      004D7F 02                    6341 	.db	2
      004D80 91                    6342 	.db	145
      004D81 02                    6343 	.sleb128	2
      004D82 54 49 4D 32 5F 4F 43  6344 	.ascii "TIM2_OCPolarity"
             50 6F 6C 61 72 69 74
             79
      004D91 00                    6345 	.db	0
      004D92 00 00 00 AD           6346 	.dw	0,173
      004D96 06                    6347 	.uleb128	6
      004D97 00 00 A1 B2           6348 	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$360)
      004D9B 00 00 A1 B7           6349 	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$362)
      004D9F 06                    6350 	.uleb128	6
      004DA0 00 00 A1 BA           6351 	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$363)
      004DA4 00 00 A1 BF           6352 	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$365)
      004DA8 00                    6353 	.uleb128	0
      004DA9 03                    6354 	.uleb128	3
      004DAA 00 00 09 80           6355 	.dw	0,2432
      004DAE 54 49 4D 32 5F 43 43  6356 	.ascii "TIM2_CCxCmd"
             78 43 6D 64
      004DB9 00                    6357 	.db	0
      004DBA 00 00 A1 C0           6358 	.dw	0,(_TIM2_CCxCmd)
      004DBE 00 00 A2 1E           6359 	.dw	0,(XG$TIM2_CCxCmd$0$0+1)
      004DC2 01                    6360 	.db	1
      004DC3 00 00 35 D4           6361 	.dw	0,(Ldebug_loc_start+744)
      004DC7 04                    6362 	.uleb128	4
      004DC8 02                    6363 	.db	2
      004DC9 91                    6364 	.db	145
      004DCA 02                    6365 	.sleb128	2
      004DCB 54 49 4D 32 5F 43 68  6366 	.ascii "TIM2_Channel"
             61 6E 6E 65 6C
      004DD7 00                    6367 	.db	0
      004DD8 00 00 00 AD           6368 	.dw	0,173
      004DDC 04                    6369 	.uleb128	4
      004DDD 02                    6370 	.db	2
      004DDE 91                    6371 	.db	145
      004DDF 03                    6372 	.sleb128	3
      004DE0 4E 65 77 53 74 61 74  6373 	.ascii "NewState"
             65
      004DE8 00                    6374 	.db	0
      004DE9 00 00 00 AD           6375 	.dw	0,173
      004DED 08                    6376 	.uleb128	8
      004DEE 00 00 09 4B           6377 	.dw	0,2379
      004DF2 00 00 A1 CA           6378 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$373)
      004DF6 06                    6379 	.uleb128	6
      004DF7 00 00 A1 D1           6380 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$375)
      004DFB 00 00 A1 D6           6381 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$377)
      004DFF 06                    6382 	.uleb128	6
      004E00 00 00 A1 D9           6383 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$378)
      004E04 00 00 A1 DE           6384 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$380)
      004E08 00                    6385 	.uleb128	0
      004E09 08                    6386 	.uleb128	8
      004E0A 00 00 09 67           6387 	.dw	0,2407
      004E0E 00 00 A1 EF           6388 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$384)
      004E12 06                    6389 	.uleb128	6
      004E13 00 00 A1 F6           6390 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$386)
      004E17 00 00 A1 FB           6391 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$388)
      004E1B 06                    6392 	.uleb128	6
      004E1C 00 00 A1 FE           6393 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$389)
      004E20 00 00 A2 03           6394 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$391)
      004E24 00                    6395 	.uleb128	0
      004E25 09                    6396 	.uleb128	9
      004E26 00 00 A2 09           6397 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$393)
      004E2A 06                    6398 	.uleb128	6
      004E2B 00 00 A2 10           6399 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$395)
      004E2F 00 00 A2 15           6400 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$397)
      004E33 06                    6401 	.uleb128	6
      004E34 00 00 A2 18           6402 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$398)
      004E38 00 00 A2 1D           6403 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$400)
      004E3C 00                    6404 	.uleb128	0
      004E3D 00                    6405 	.uleb128	0
      004E3E 03                    6406 	.uleb128	3
      004E3F 00 00 09 E7           6407 	.dw	0,2535
      004E43 54 49 4D 32 5F 53 65  6408 	.ascii "TIM2_SelectOCxM"
             6C 65 63 74 4F 43 78
             4D
      004E52 00                    6409 	.db	0
      004E53 00 00 A2 1E           6410 	.dw	0,(_TIM2_SelectOCxM)
      004E57 00 00 A2 6D           6411 	.dw	0,(XG$TIM2_SelectOCxM$0$0+1)
      004E5B 01                    6412 	.db	1
      004E5C 00 00 35 B4           6413 	.dw	0,(Ldebug_loc_start+712)
      004E60 04                    6414 	.uleb128	4
      004E61 02                    6415 	.db	2
      004E62 91                    6416 	.db	145
      004E63 02                    6417 	.sleb128	2
      004E64 54 49 4D 32 5F 43 68  6418 	.ascii "TIM2_Channel"
             61 6E 6E 65 6C
      004E70 00                    6419 	.db	0
      004E71 00 00 00 AD           6420 	.dw	0,173
      004E75 04                    6421 	.uleb128	4
      004E76 02                    6422 	.db	2
      004E77 91                    6423 	.db	145
      004E78 03                    6424 	.sleb128	3
      004E79 54 49 4D 32 5F 4F 43  6425 	.ascii "TIM2_OCMode"
             4D 6F 64 65
      004E84 00                    6426 	.db	0
      004E85 00 00 00 AD           6427 	.dw	0,173
      004E89 06                    6428 	.uleb128	6
      004E8A 00 00 A2 25           6429 	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$407)
      004E8E 00 00 A2 37           6430 	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$411)
      004E92 06                    6431 	.uleb128	6
      004E93 00 00 A2 45           6432 	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$414)
      004E97 00 00 A2 57           6433 	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$418)
      004E9B 06                    6434 	.uleb128	6
      004E9C 00 00 A2 5A           6435 	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$419)
      004EA0 00 00 A2 6C           6436 	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$423)
      004EA4 00                    6437 	.uleb128	0
      004EA5 03                    6438 	.uleb128	3
      004EA6 00 00 0A 1A           6439 	.dw	0,2586
      004EAA 54 49 4D 32 5F 53 65  6440 	.ascii "TIM2_SetCounter"
             74 43 6F 75 6E 74 65
             72
      004EB9 00                    6441 	.db	0
      004EBA 00 00 A2 6D           6442 	.dw	0,(_TIM2_SetCounter)
      004EBE 00 00 A2 79           6443 	.dw	0,(XG$TIM2_SetCounter$0$0+1)
      004EC2 01                    6444 	.db	1
      004EC3 00 00 35 A0           6445 	.dw	0,(Ldebug_loc_start+692)
      004EC7 04                    6446 	.uleb128	4
      004EC8 02                    6447 	.db	2
      004EC9 91                    6448 	.db	145
      004ECA 02                    6449 	.sleb128	2
      004ECB 43 6F 75 6E 74 65 72  6450 	.ascii "Counter"
      004ED2 00                    6451 	.db	0
      004ED3 00 00 00 BE           6452 	.dw	0,190
      004ED7 00                    6453 	.uleb128	0
      004ED8 03                    6454 	.uleb128	3
      004ED9 00 00 0A 53           6455 	.dw	0,2643
      004EDD 54 49 4D 32 5F 53 65  6456 	.ascii "TIM2_SetAutoreload"
             74 41 75 74 6F 72 65
             6C 6F 61 64
      004EEF 00                    6457 	.db	0
      004EF0 00 00 A2 79           6458 	.dw	0,(_TIM2_SetAutoreload)
      004EF4 00 00 A2 85           6459 	.dw	0,(XG$TIM2_SetAutoreload$0$0+1)
      004EF8 01                    6460 	.db	1
      004EF9 00 00 35 8C           6461 	.dw	0,(Ldebug_loc_start+672)
      004EFD 04                    6462 	.uleb128	4
      004EFE 02                    6463 	.db	2
      004EFF 91                    6464 	.db	145
      004F00 02                    6465 	.sleb128	2
      004F01 41 75 74 6F 72 65 6C  6466 	.ascii "Autoreload"
             6F 61 64
      004F0B 00                    6467 	.db	0
      004F0C 00 00 00 BE           6468 	.dw	0,190
      004F10 00                    6469 	.uleb128	0
      004F11 03                    6470 	.uleb128	3
      004F12 00 00 0A 88           6471 	.dw	0,2696
      004F16 54 49 4D 32 5F 53 65  6472 	.ascii "TIM2_SetCompare1"
             74 43 6F 6D 70 61 72
             65 31
      004F26 00                    6473 	.db	0
      004F27 00 00 A2 85           6474 	.dw	0,(_TIM2_SetCompare1)
      004F2B 00 00 A2 91           6475 	.dw	0,(XG$TIM2_SetCompare1$0$0+1)
      004F2F 01                    6476 	.db	1
      004F30 00 00 35 78           6477 	.dw	0,(Ldebug_loc_start+652)
      004F34 04                    6478 	.uleb128	4
      004F35 02                    6479 	.db	2
      004F36 91                    6480 	.db	145
      004F37 02                    6481 	.sleb128	2
      004F38 43 6F 6D 70 61 72 65  6482 	.ascii "Compare1"
             31
      004F40 00                    6483 	.db	0
      004F41 00 00 00 BE           6484 	.dw	0,190
      004F45 00                    6485 	.uleb128	0
      004F46 03                    6486 	.uleb128	3
      004F47 00 00 0A BD           6487 	.dw	0,2749
      004F4B 54 49 4D 32 5F 53 65  6488 	.ascii "TIM2_SetCompare2"
             74 43 6F 6D 70 61 72
             65 32
      004F5B 00                    6489 	.db	0
      004F5C 00 00 A2 91           6490 	.dw	0,(_TIM2_SetCompare2)
      004F60 00 00 A2 9D           6491 	.dw	0,(XG$TIM2_SetCompare2$0$0+1)
      004F64 01                    6492 	.db	1
      004F65 00 00 35 64           6493 	.dw	0,(Ldebug_loc_start+632)
      004F69 04                    6494 	.uleb128	4
      004F6A 02                    6495 	.db	2
      004F6B 91                    6496 	.db	145
      004F6C 02                    6497 	.sleb128	2
      004F6D 43 6F 6D 70 61 72 65  6498 	.ascii "Compare2"
             32
      004F75 00                    6499 	.db	0
      004F76 00 00 00 BE           6500 	.dw	0,190
      004F7A 00                    6501 	.uleb128	0
      004F7B 03                    6502 	.uleb128	3
      004F7C 00 00 0A F2           6503 	.dw	0,2802
      004F80 54 49 4D 32 5F 53 65  6504 	.ascii "TIM2_SetCompare3"
             74 43 6F 6D 70 61 72
             65 33
      004F90 00                    6505 	.db	0
      004F91 00 00 A2 9D           6506 	.dw	0,(_TIM2_SetCompare3)
      004F95 00 00 A2 A9           6507 	.dw	0,(XG$TIM2_SetCompare3$0$0+1)
      004F99 01                    6508 	.db	1
      004F9A 00 00 35 50           6509 	.dw	0,(Ldebug_loc_start+612)
      004F9E 04                    6510 	.uleb128	4
      004F9F 02                    6511 	.db	2
      004FA0 91                    6512 	.db	145
      004FA1 02                    6513 	.sleb128	2
      004FA2 43 6F 6D 70 61 72 65  6514 	.ascii "Compare3"
             33
      004FAA 00                    6515 	.db	0
      004FAB 00 00 00 BE           6516 	.dw	0,190
      004FAF 00                    6517 	.uleb128	0
      004FB0 03                    6518 	.uleb128	3
      004FB1 00 00 0B 34           6519 	.dw	0,2868
      004FB5 54 49 4D 32 5F 53 65  6520 	.ascii "TIM2_SetIC1Prescaler"
             74 49 43 31 50 72 65
             73 63 61 6C 65 72
      004FC9 00                    6521 	.db	0
      004FCA 00 00 A2 A9           6522 	.dw	0,(_TIM2_SetIC1Prescaler)
      004FCE 00 00 A2 B4           6523 	.dw	0,(XG$TIM2_SetIC1Prescaler$0$0+1)
      004FD2 01                    6524 	.db	1
      004FD3 00 00 35 3C           6525 	.dw	0,(Ldebug_loc_start+592)
      004FD7 04                    6526 	.uleb128	4
      004FD8 02                    6527 	.db	2
      004FD9 91                    6528 	.db	145
      004FDA 02                    6529 	.sleb128	2
      004FDB 54 49 4D 32 5F 49 43  6530 	.ascii "TIM2_IC1Prescaler"
             31 50 72 65 73 63 61
             6C 65 72
      004FEC 00                    6531 	.db	0
      004FED 00 00 00 AD           6532 	.dw	0,173
      004FF1 00                    6533 	.uleb128	0
      004FF2 03                    6534 	.uleb128	3
      004FF3 00 00 0B 76           6535 	.dw	0,2934
      004FF7 54 49 4D 32 5F 53 65  6536 	.ascii "TIM2_SetIC2Prescaler"
             74 49 43 32 50 72 65
             73 63 61 6C 65 72
      00500B 00                    6537 	.db	0
      00500C 00 00 A2 B4           6538 	.dw	0,(_TIM2_SetIC2Prescaler)
      005010 00 00 A2 BF           6539 	.dw	0,(XG$TIM2_SetIC2Prescaler$0$0+1)
      005014 01                    6540 	.db	1
      005015 00 00 35 28           6541 	.dw	0,(Ldebug_loc_start+572)
      005019 04                    6542 	.uleb128	4
      00501A 02                    6543 	.db	2
      00501B 91                    6544 	.db	145
      00501C 02                    6545 	.sleb128	2
      00501D 54 49 4D 32 5F 49 43  6546 	.ascii "TIM2_IC2Prescaler"
             32 50 72 65 73 63 61
             6C 65 72
      00502E 00                    6547 	.db	0
      00502F 00 00 00 AD           6548 	.dw	0,173
      005033 00                    6549 	.uleb128	0
      005034 03                    6550 	.uleb128	3
      005035 00 00 0B B8           6551 	.dw	0,3000
      005039 54 49 4D 32 5F 53 65  6552 	.ascii "TIM2_SetIC3Prescaler"
             74 49 43 33 50 72 65
             73 63 61 6C 65 72
      00504D 00                    6553 	.db	0
      00504E 00 00 A2 BF           6554 	.dw	0,(_TIM2_SetIC3Prescaler)
      005052 00 00 A2 CA           6555 	.dw	0,(XG$TIM2_SetIC3Prescaler$0$0+1)
      005056 01                    6556 	.db	1
      005057 00 00 35 14           6557 	.dw	0,(Ldebug_loc_start+552)
      00505B 04                    6558 	.uleb128	4
      00505C 02                    6559 	.db	2
      00505D 91                    6560 	.db	145
      00505E 02                    6561 	.sleb128	2
      00505F 54 49 4D 32 5F 49 43  6562 	.ascii "TIM2_IC3Prescaler"
             33 50 72 65 73 63 61
             6C 65 72
      005070 00                    6563 	.db	0
      005071 00 00 00 AD           6564 	.dw	0,173
      005075 00                    6565 	.uleb128	0
      005076 0A                    6566 	.uleb128	10
      005077 00 00 0C 14           6567 	.dw	0,3092
      00507B 54 49 4D 32 5F 47 65  6568 	.ascii "TIM2_GetCapture1"
             74 43 61 70 74 75 72
             65 31
      00508B 00                    6569 	.db	0
      00508C 00 00 A2 CA           6570 	.dw	0,(_TIM2_GetCapture1)
      005090 00 00 A2 E4           6571 	.dw	0,(XG$TIM2_GetCapture1$0$0+1)
      005094 01                    6572 	.db	1
      005095 00 00 34 D0           6573 	.dw	0,(Ldebug_loc_start+484)
      005099 00 00 00 BE           6574 	.dw	0,190
      00509D 07                    6575 	.uleb128	7
      00509E 06                    6576 	.db	6
      00509F 52                    6577 	.db	82
      0050A0 93                    6578 	.db	147
      0050A1 01                    6579 	.uleb128	1
      0050A2 51                    6580 	.db	81
      0050A3 93                    6581 	.db	147
      0050A4 01                    6582 	.uleb128	1
      0050A5 74 6D 70 63 63 72 31  6583 	.ascii "tmpccr1"
      0050AC 00                    6584 	.db	0
      0050AD 00 00 00 BE           6585 	.dw	0,190
      0050B1 07                    6586 	.uleb128	7
      0050B2 01                    6587 	.db	1
      0050B3 50                    6588 	.db	80
      0050B4 74 6D 70 63 63 72 31  6589 	.ascii "tmpccr1l"
             6C
      0050BC 00                    6590 	.db	0
      0050BD 00 00 00 AD           6591 	.dw	0,173
      0050C1 07                    6592 	.uleb128	7
      0050C2 01                    6593 	.db	1
      0050C3 52                    6594 	.db	82
      0050C4 74 6D 70 63 63 72 31  6595 	.ascii "tmpccr1h"
             68
      0050CC 00                    6596 	.db	0
      0050CD 00 00 00 AD           6597 	.dw	0,173
      0050D1 00                    6598 	.uleb128	0
      0050D2 0A                    6599 	.uleb128	10
      0050D3 00 00 0C 70           6600 	.dw	0,3184
      0050D7 54 49 4D 32 5F 47 65  6601 	.ascii "TIM2_GetCapture2"
             74 43 61 70 74 75 72
             65 32
      0050E7 00                    6602 	.db	0
      0050E8 00 00 A2 E4           6603 	.dw	0,(_TIM2_GetCapture2)
      0050EC 00 00 A2 FE           6604 	.dw	0,(XG$TIM2_GetCapture2$0$0+1)
      0050F0 01                    6605 	.db	1
      0050F1 00 00 34 8C           6606 	.dw	0,(Ldebug_loc_start+416)
      0050F5 00 00 00 BE           6607 	.dw	0,190
      0050F9 07                    6608 	.uleb128	7
      0050FA 06                    6609 	.db	6
      0050FB 52                    6610 	.db	82
      0050FC 93                    6611 	.db	147
      0050FD 01                    6612 	.uleb128	1
      0050FE 51                    6613 	.db	81
      0050FF 93                    6614 	.db	147
      005100 01                    6615 	.uleb128	1
      005101 74 6D 70 63 63 72 32  6616 	.ascii "tmpccr2"
      005108 00                    6617 	.db	0
      005109 00 00 00 BE           6618 	.dw	0,190
      00510D 07                    6619 	.uleb128	7
      00510E 01                    6620 	.db	1
      00510F 50                    6621 	.db	80
      005110 74 6D 70 63 63 72 32  6622 	.ascii "tmpccr2l"
             6C
      005118 00                    6623 	.db	0
      005119 00 00 00 AD           6624 	.dw	0,173
      00511D 07                    6625 	.uleb128	7
      00511E 01                    6626 	.db	1
      00511F 52                    6627 	.db	82
      005120 74 6D 70 63 63 72 32  6628 	.ascii "tmpccr2h"
             68
      005128 00                    6629 	.db	0
      005129 00 00 00 AD           6630 	.dw	0,173
      00512D 00                    6631 	.uleb128	0
      00512E 0A                    6632 	.uleb128	10
      00512F 00 00 0C CC           6633 	.dw	0,3276
      005133 54 49 4D 32 5F 47 65  6634 	.ascii "TIM2_GetCapture3"
             74 43 61 70 74 75 72
             65 33
      005143 00                    6635 	.db	0
      005144 00 00 A2 FE           6636 	.dw	0,(_TIM2_GetCapture3)
      005148 00 00 A3 18           6637 	.dw	0,(XG$TIM2_GetCapture3$0$0+1)
      00514C 01                    6638 	.db	1
      00514D 00 00 34 48           6639 	.dw	0,(Ldebug_loc_start+348)
      005151 00 00 00 BE           6640 	.dw	0,190
      005155 07                    6641 	.uleb128	7
      005156 06                    6642 	.db	6
      005157 52                    6643 	.db	82
      005158 93                    6644 	.db	147
      005159 01                    6645 	.uleb128	1
      00515A 51                    6646 	.db	81
      00515B 93                    6647 	.db	147
      00515C 01                    6648 	.uleb128	1
      00515D 74 6D 70 63 63 72 33  6649 	.ascii "tmpccr3"
      005164 00                    6650 	.db	0
      005165 00 00 00 BE           6651 	.dw	0,190
      005169 07                    6652 	.uleb128	7
      00516A 01                    6653 	.db	1
      00516B 50                    6654 	.db	80
      00516C 74 6D 70 63 63 72 33  6655 	.ascii "tmpccr3l"
             6C
      005174 00                    6656 	.db	0
      005175 00 00 00 AD           6657 	.dw	0,173
      005179 07                    6658 	.uleb128	7
      00517A 01                    6659 	.db	1
      00517B 52                    6660 	.db	82
      00517C 74 6D 70 63 63 72 33  6661 	.ascii "tmpccr3h"
             68
      005184 00                    6662 	.db	0
      005185 00 00 00 AD           6663 	.dw	0,173
      005189 00                    6664 	.uleb128	0
      00518A 0A                    6665 	.uleb128	10
      00518B 00 00 0D 08           6666 	.dw	0,3336
      00518F 54 49 4D 32 5F 47 65  6667 	.ascii "TIM2_GetCounter"
             74 43 6F 75 6E 74 65
             72
      00519E 00                    6668 	.db	0
      00519F 00 00 A3 18           6669 	.dw	0,(_TIM2_GetCounter)
      0051A3 00 00 A3 31           6670 	.dw	0,(XG$TIM2_GetCounter$0$0+1)
      0051A7 01                    6671 	.db	1
      0051A8 00 00 34 1C           6672 	.dw	0,(Ldebug_loc_start+304)
      0051AC 00 00 00 BE           6673 	.dw	0,190
      0051B0 07                    6674 	.uleb128	7
      0051B1 07                    6675 	.db	7
      0051B2 52                    6676 	.db	82
      0051B3 93                    6677 	.db	147
      0051B4 01                    6678 	.uleb128	1
      0051B5 91                    6679 	.db	145
      0051B6 7D                    6680 	.sleb128	-3
      0051B7 93                    6681 	.db	147
      0051B8 01                    6682 	.uleb128	1
      0051B9 74 6D 70 63 6E 74 72  6683 	.ascii "tmpcntr"
      0051C0 00                    6684 	.db	0
      0051C1 00 00 00 BE           6685 	.dw	0,190
      0051C5 00                    6686 	.uleb128	0
      0051C6 0B                    6687 	.uleb128	11
      0051C7 54 49 4D 32 5F 47 65  6688 	.ascii "TIM2_GetPrescaler"
             74 50 72 65 73 63 61
             6C 65 72
      0051D8 00                    6689 	.db	0
      0051D9 00 00 A3 31           6690 	.dw	0,(_TIM2_GetPrescaler)
      0051DD 00 00 A3 35           6691 	.dw	0,(XG$TIM2_GetPrescaler$0$0+1)
      0051E1 01                    6692 	.db	1
      0051E2 00 00 34 08           6693 	.dw	0,(Ldebug_loc_start+284)
      0051E6 00 00 00 AD           6694 	.dw	0,173
      0051EA 0A                    6695 	.uleb128	10
      0051EB 00 00 0D B2           6696 	.dw	0,3506
      0051EF 54 49 4D 32 5F 47 65  6697 	.ascii "TIM2_GetFlagStatus"
             74 46 6C 61 67 53 74
             61 74 75 73
      005201 00                    6698 	.db	0
      005202 00 00 A3 35           6699 	.dw	0,(_TIM2_GetFlagStatus)
      005206 00 00 A3 5C           6700 	.dw	0,(XG$TIM2_GetFlagStatus$0$0+1)
      00520A 01                    6701 	.db	1
      00520B 00 00 33 C4           6702 	.dw	0,(Ldebug_loc_start+216)
      00520F 00 00 00 AD           6703 	.dw	0,173
      005213 04                    6704 	.uleb128	4
      005214 02                    6705 	.db	2
      005215 91                    6706 	.db	145
      005216 02                    6707 	.sleb128	2
      005217 54 49 4D 32 5F 46 4C  6708 	.ascii "TIM2_FLAG"
             41 47
      005220 00                    6709 	.db	0
      005221 00 00 0D B2           6710 	.dw	0,3506
      005225 06                    6711 	.uleb128	6
      005226 00 00 A3 53           6712 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$548)
      00522A 00 00 A3 55           6713 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$550)
      00522E 06                    6714 	.uleb128	6
      00522F 00 00 A3 58           6715 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$551)
      005233 00 00 A3 59           6716 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$553)
      005237 07                    6717 	.uleb128	7
      005238 01                    6718 	.db	1
      005239 50                    6719 	.db	80
      00523A 62 69 74 73 74 61 74  6720 	.ascii "bitstatus"
             75 73
      005243 00                    6721 	.db	0
      005244 00 00 00 AD           6722 	.dw	0,173
      005248 07                    6723 	.uleb128	7
      005249 02                    6724 	.db	2
      00524A 91                    6725 	.db	145
      00524B 7F                    6726 	.sleb128	-1
      00524C 74 69 6D 32 5F 66 6C  6727 	.ascii "tim2_flag_l"
             61 67 5F 6C
      005257 00                    6728 	.db	0
      005258 00 00 00 AD           6729 	.dw	0,173
      00525C 07                    6730 	.uleb128	7
      00525D 01                    6731 	.db	1
      00525E 52                    6732 	.db	82
      00525F 74 69 6D 32 5F 66 6C  6733 	.ascii "tim2_flag_h"
             61 67 5F 68
      00526A 00                    6734 	.db	0
      00526B 00 00 00 AD           6735 	.dw	0,173
      00526F 00                    6736 	.uleb128	0
      005270 05                    6737 	.uleb128	5
      005271 75 6E 73 69 67 6E 65  6738 	.ascii "unsigned int"
             64 20 69 6E 74
      00527D 00                    6739 	.db	0
      00527E 02                    6740 	.db	2
      00527F 07                    6741 	.db	7
      005280 03                    6742 	.uleb128	3
      005281 00 00 0D F6           6743 	.dw	0,3574
      005285 54 49 4D 32 5F 43 6C  6744 	.ascii "TIM2_ClearFlag"
             65 61 72 46 6C 61 67
      005293 00                    6745 	.db	0
      005294 00 00 A3 5C           6746 	.dw	0,(_TIM2_ClearFlag)
      005298 00 00 A3 67           6747 	.dw	0,(XG$TIM2_ClearFlag$0$0+1)
      00529C 01                    6748 	.db	1
      00529D 00 00 33 B0           6749 	.dw	0,(Ldebug_loc_start+196)
      0052A1 04                    6750 	.uleb128	4
      0052A2 02                    6751 	.db	2
      0052A3 91                    6752 	.db	145
      0052A4 02                    6753 	.sleb128	2
      0052A5 54 49 4D 32 5F 46 4C  6754 	.ascii "TIM2_FLAG"
             41 47
      0052AE 00                    6755 	.db	0
      0052AF 00 00 0D B2           6756 	.dw	0,3506
      0052B3 00                    6757 	.uleb128	0
      0052B4 0A                    6758 	.uleb128	10
      0052B5 00 00 0E 7C           6759 	.dw	0,3708
      0052B9 54 49 4D 32 5F 47 65  6760 	.ascii "TIM2_GetITStatus"
             74 49 54 53 74 61 74
             75 73
      0052C9 00                    6761 	.db	0
      0052CA 00 00 A3 67           6762 	.dw	0,(_TIM2_GetITStatus)
      0052CE 00 00 A3 8A           6763 	.dw	0,(XG$TIM2_GetITStatus$0$0+1)
      0052D2 01                    6764 	.db	1
      0052D3 00 00 33 84           6765 	.dw	0,(Ldebug_loc_start+152)
      0052D7 00 00 00 AD           6766 	.dw	0,173
      0052DB 04                    6767 	.uleb128	4
      0052DC 02                    6768 	.db	2
      0052DD 91                    6769 	.db	145
      0052DE 02                    6770 	.sleb128	2
      0052DF 54 49 4D 32 5F 49 54  6771 	.ascii "TIM2_IT"
      0052E6 00                    6772 	.db	0
      0052E7 00 00 00 AD           6773 	.dw	0,173
      0052EB 06                    6774 	.uleb128	6
      0052EC 00 00 A3 81           6775 	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$572)
      0052F0 00 00 A3 83           6776 	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$574)
      0052F4 06                    6777 	.uleb128	6
      0052F5 00 00 A3 86           6778 	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$575)
      0052F9 00 00 A3 87           6779 	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$577)
      0052FD 07                    6780 	.uleb128	7
      0052FE 01                    6781 	.db	1
      0052FF 50                    6782 	.db	80
      005300 62 69 74 73 74 61 74  6783 	.ascii "bitstatus"
             75 73
      005309 00                    6784 	.db	0
      00530A 00 00 00 AD           6785 	.dw	0,173
      00530E 07                    6786 	.uleb128	7
      00530F 02                    6787 	.db	2
      005310 91                    6788 	.db	145
      005311 7F                    6789 	.sleb128	-1
      005312 54 49 4D 32 5F 69 74  6790 	.ascii "TIM2_itStatus"
             53 74 61 74 75 73
      00531F 00                    6791 	.db	0
      005320 00 00 00 AD           6792 	.dw	0,173
      005324 07                    6793 	.uleb128	7
      005325 01                    6794 	.db	1
      005326 50                    6795 	.db	80
      005327 54 49 4D 32 5F 69 74  6796 	.ascii "TIM2_itEnable"
             45 6E 61 62 6C 65
      005334 00                    6797 	.db	0
      005335 00 00 00 AD           6798 	.dw	0,173
      005339 00                    6799 	.uleb128	0
      00533A 03                    6800 	.uleb128	3
      00533B 00 00 0E B6           6801 	.dw	0,3766
      00533F 54 49 4D 32 5F 43 6C  6802 	.ascii "TIM2_ClearITPendingBit"
             65 61 72 49 54 50 65
             6E 64 69 6E 67 42 69
             74
      005355 00                    6803 	.db	0
      005356 00 00 A3 8A           6804 	.dw	0,(_TIM2_ClearITPendingBit)
      00535A 00 00 A3 91           6805 	.dw	0,(XG$TIM2_ClearITPendingBit$0$0+1)
      00535E 01                    6806 	.db	1
      00535F 00 00 33 70           6807 	.dw	0,(Ldebug_loc_start+132)
      005363 04                    6808 	.uleb128	4
      005364 02                    6809 	.db	2
      005365 91                    6810 	.db	145
      005366 02                    6811 	.sleb128	2
      005367 54 49 4D 32 5F 49 54  6812 	.ascii "TIM2_IT"
      00536E 00                    6813 	.db	0
      00536F 00 00 00 AD           6814 	.dw	0,173
      005373 00                    6815 	.uleb128	0
      005374 03                    6816 	.uleb128	3
      005375 00 00 0F 2D           6817 	.dw	0,3885
      005379 54 49 31 5F 43 6F 6E  6818 	.ascii "TI1_Config"
             66 69 67
      005383 00                    6819 	.db	0
      005384 00 00 A3 91           6820 	.dw	0,(_TI1_Config)
      005388 00 00 A3 CE           6821 	.dw	0,(XFstm8s_tim2$TI1_Config$0$0+1)
      00538C 00                    6822 	.db	0
      00538D 00 00 33 44           6823 	.dw	0,(Ldebug_loc_start+88)
      005391 04                    6824 	.uleb128	4
      005392 02                    6825 	.db	2
      005393 91                    6826 	.db	145
      005394 02                    6827 	.sleb128	2
      005395 54 49 4D 32 5F 49 43  6828 	.ascii "TIM2_ICPolarity"
             50 6F 6C 61 72 69 74
             79
      0053A4 00                    6829 	.db	0
      0053A5 00 00 00 AD           6830 	.dw	0,173
      0053A9 04                    6831 	.uleb128	4
      0053AA 02                    6832 	.db	2
      0053AB 91                    6833 	.db	145
      0053AC 03                    6834 	.sleb128	3
      0053AD 54 49 4D 32 5F 49 43  6835 	.ascii "TIM2_ICSelection"
             53 65 6C 65 63 74 69
             6F 6E
      0053BD 00                    6836 	.db	0
      0053BE 00 00 00 AD           6837 	.dw	0,173
      0053C2 04                    6838 	.uleb128	4
      0053C3 02                    6839 	.db	2
      0053C4 91                    6840 	.db	145
      0053C5 04                    6841 	.sleb128	4
      0053C6 54 49 4D 32 5F 49 43  6842 	.ascii "TIM2_ICFilter"
             46 69 6C 74 65 72
      0053D3 00                    6843 	.db	0
      0053D4 00 00 00 AD           6844 	.dw	0,173
      0053D8 06                    6845 	.uleb128	6
      0053D9 00 00 A3 B7           6846 	.dw	0,(Sstm8s_tim2$TI1_Config$597)
      0053DD 00 00 A3 BC           6847 	.dw	0,(Sstm8s_tim2$TI1_Config$599)
      0053E1 06                    6848 	.uleb128	6
      0053E2 00 00 A3 BF           6849 	.dw	0,(Sstm8s_tim2$TI1_Config$600)
      0053E6 00 00 A3 C4           6850 	.dw	0,(Sstm8s_tim2$TI1_Config$602)
      0053EA 00                    6851 	.uleb128	0
      0053EB 03                    6852 	.uleb128	3
      0053EC 00 00 0F A4           6853 	.dw	0,4004
      0053F0 54 49 32 5F 43 6F 6E  6854 	.ascii "TI2_Config"
             66 69 67
      0053FA 00                    6855 	.db	0
      0053FB 00 00 A3 CE           6856 	.dw	0,(_TI2_Config)
      0053FF 00 00 A4 0B           6857 	.dw	0,(XFstm8s_tim2$TI2_Config$0$0+1)
      005403 00                    6858 	.db	0
      005404 00 00 33 18           6859 	.dw	0,(Ldebug_loc_start+44)
      005408 04                    6860 	.uleb128	4
      005409 02                    6861 	.db	2
      00540A 91                    6862 	.db	145
      00540B 02                    6863 	.sleb128	2
      00540C 54 49 4D 32 5F 49 43  6864 	.ascii "TIM2_ICPolarity"
             50 6F 6C 61 72 69 74
             79
      00541B 00                    6865 	.db	0
      00541C 00 00 00 AD           6866 	.dw	0,173
      005420 04                    6867 	.uleb128	4
      005421 02                    6868 	.db	2
      005422 91                    6869 	.db	145
      005423 03                    6870 	.sleb128	3
      005424 54 49 4D 32 5F 49 43  6871 	.ascii "TIM2_ICSelection"
             53 65 6C 65 63 74 69
             6F 6E
      005434 00                    6872 	.db	0
      005435 00 00 00 AD           6873 	.dw	0,173
      005439 04                    6874 	.uleb128	4
      00543A 02                    6875 	.db	2
      00543B 91                    6876 	.db	145
      00543C 04                    6877 	.sleb128	4
      00543D 54 49 4D 32 5F 49 43  6878 	.ascii "TIM2_ICFilter"
             46 69 6C 74 65 72
      00544A 00                    6879 	.db	0
      00544B 00 00 00 AD           6880 	.dw	0,173
      00544F 06                    6881 	.uleb128	6
      005450 00 00 A3 F4           6882 	.dw	0,(Sstm8s_tim2$TI2_Config$616)
      005454 00 00 A3 F9           6883 	.dw	0,(Sstm8s_tim2$TI2_Config$618)
      005458 06                    6884 	.uleb128	6
      005459 00 00 A3 FC           6885 	.dw	0,(Sstm8s_tim2$TI2_Config$619)
      00545D 00 00 A4 01           6886 	.dw	0,(Sstm8s_tim2$TI2_Config$621)
      005461 00                    6887 	.uleb128	0
      005462 0C                    6888 	.uleb128	12
      005463 54 49 33 5F 43 6F 6E  6889 	.ascii "TI3_Config"
             66 69 67
      00546D 00                    6890 	.db	0
      00546E 00 00 A4 0B           6891 	.dw	0,(_TI3_Config)
      005472 00 00 A4 48           6892 	.dw	0,(XFstm8s_tim2$TI3_Config$0$0+1)
      005476 00                    6893 	.db	0
      005477 00 00 32 EC           6894 	.dw	0,(Ldebug_loc_start)
      00547B 04                    6895 	.uleb128	4
      00547C 02                    6896 	.db	2
      00547D 91                    6897 	.db	145
      00547E 02                    6898 	.sleb128	2
      00547F 54 49 4D 32 5F 49 43  6899 	.ascii "TIM2_ICPolarity"
             50 6F 6C 61 72 69 74
             79
      00548E 00                    6900 	.db	0
      00548F 00 00 00 AD           6901 	.dw	0,173
      005493 04                    6902 	.uleb128	4
      005494 02                    6903 	.db	2
      005495 91                    6904 	.db	145
      005496 03                    6905 	.sleb128	3
      005497 54 49 4D 32 5F 49 43  6906 	.ascii "TIM2_ICSelection"
             53 65 6C 65 63 74 69
             6F 6E
      0054A7 00                    6907 	.db	0
      0054A8 00 00 00 AD           6908 	.dw	0,173
      0054AC 04                    6909 	.uleb128	4
      0054AD 02                    6910 	.db	2
      0054AE 91                    6911 	.db	145
      0054AF 04                    6912 	.sleb128	4
      0054B0 54 49 4D 32 5F 49 43  6913 	.ascii "TIM2_ICFilter"
             46 69 6C 74 65 72
      0054BD 00                    6914 	.db	0
      0054BE 00 00 00 AD           6915 	.dw	0,173
      0054C2 06                    6916 	.uleb128	6
      0054C3 00 00 A4 31           6917 	.dw	0,(Sstm8s_tim2$TI3_Config$635)
      0054C7 00 00 A4 36           6918 	.dw	0,(Sstm8s_tim2$TI3_Config$637)
      0054CB 06                    6919 	.uleb128	6
      0054CC 00 00 A4 39           6920 	.dw	0,(Sstm8s_tim2$TI3_Config$638)
      0054D0 00 00 A4 3E           6921 	.dw	0,(Sstm8s_tim2$TI3_Config$640)
      0054D4 00                    6922 	.uleb128	0
      0054D5 00                    6923 	.uleb128	0
      0054D6 00                    6924 	.uleb128	0
      0054D7 00                    6925 	.uleb128	0
      0054D8                       6926 Ldebug_info_end:
                                   6927 
                                   6928 	.area .debug_pubnames (NOLOAD)
      000E78 00 00 03 D0           6929 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000E7C                       6930 Ldebug_pubnames_start:
      000E7C 00 02                 6931 	.dw	2
      000E7E 00 00 44 BE           6932 	.dw	0,(Ldebug_info_start-4)
      000E82 00 00 10 1A           6933 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000E86 00 00 00 43           6934 	.dw	0,67
      000E8A 54 49 4D 32 5F 44 65  6935 	.ascii "TIM2_DeInit"
             49 6E 69 74
      000E95 00                    6936 	.db	0
      000E96 00 00 00 5D           6937 	.dw	0,93
      000E9A 54 49 4D 32 5F 54 69  6938 	.ascii "TIM2_TimeBaseInit"
             6D 65 42 61 73 65 49
             6E 69 74
      000EAB 00                    6939 	.db	0
      000EAC 00 00 00 CE           6940 	.dw	0,206
      000EB0 54 49 4D 32 5F 4F 43  6941 	.ascii "TIM2_OC1Init"
             31 49 6E 69 74
      000EBC 00                    6942 	.db	0
      000EBD 00 00 01 46           6943 	.dw	0,326
      000EC1 54 49 4D 32 5F 4F 43  6944 	.ascii "TIM2_OC2Init"
             32 49 6E 69 74
      000ECD 00                    6945 	.db	0
      000ECE 00 00 01 BE           6946 	.dw	0,446
      000ED2 54 49 4D 32 5F 4F 43  6947 	.ascii "TIM2_OC3Init"
             33 49 6E 69 74
      000EDE 00                    6948 	.db	0
      000EDF 00 00 02 36           6949 	.dw	0,566
      000EE3 54 49 4D 32 5F 49 43  6950 	.ascii "TIM2_ICInit"
             49 6E 69 74
      000EEE 00                    6951 	.db	0
      000EEF 00 00 02 E5           6952 	.dw	0,741
      000EF3 54 49 4D 32 5F 50 57  6953 	.ascii "TIM2_PWMIConfig"
             4D 49 43 6F 6E 66 69
             67
      000F02 00                    6954 	.db	0
      000F03 00 00 03 DA           6955 	.dw	0,986
      000F07 54 49 4D 32 5F 43 6D  6956 	.ascii "TIM2_Cmd"
             64
      000F0F 00                    6957 	.db	0
      000F10 00 00 04 19           6958 	.dw	0,1049
      000F14 54 49 4D 32 5F 49 54  6959 	.ascii "TIM2_ITConfig"
             43 6F 6E 66 69 67
      000F21 00                    6960 	.db	0
      000F22 00 00 04 6D           6961 	.dw	0,1133
      000F26 54 49 4D 32 5F 55 70  6962 	.ascii "TIM2_UpdateDisableConfig"
             64 61 74 65 44 69 73
             61 62 6C 65 43 6F 6E
             66 69 67
      000F3E 00                    6963 	.db	0
      000F3F 00 00 04 BC           6964 	.dw	0,1212
      000F43 54 49 4D 32 5F 55 70  6965 	.ascii "TIM2_UpdateRequestConfig"
             64 61 74 65 52 65 71
             75 65 73 74 43 6F 6E
             66 69 67
      000F5B 00                    6966 	.db	0
      000F5C 00 00 05 14           6967 	.dw	0,1300
      000F60 54 49 4D 32 5F 53 65  6968 	.ascii "TIM2_SelectOnePulseMode"
             6C 65 63 74 4F 6E 65
             50 75 6C 73 65 4D 6F
             64 65
      000F77 00                    6969 	.db	0
      000F78 00 00 05 65           6970 	.dw	0,1381
      000F7C 54 49 4D 32 5F 50 72  6971 	.ascii "TIM2_PrescalerConfig"
             65 73 63 61 6C 65 72
             43 6F 6E 66 69 67
      000F90 00                    6972 	.db	0
      000F91 00 00 05 BA           6973 	.dw	0,1466
      000F95 54 49 4D 32 5F 46 6F  6974 	.ascii "TIM2_ForcedOC1Config"
             72 63 65 64 4F 43 31
             43 6F 6E 66 69 67
      000FA9 00                    6975 	.db	0
      000FAA 00 00 05 FC           6976 	.dw	0,1532
      000FAE 54 49 4D 32 5F 46 6F  6977 	.ascii "TIM2_ForcedOC2Config"
             72 63 65 64 4F 43 32
             43 6F 6E 66 69 67
      000FC2 00                    6978 	.db	0
      000FC3 00 00 06 3E           6979 	.dw	0,1598
      000FC7 54 49 4D 32 5F 46 6F  6980 	.ascii "TIM2_ForcedOC3Config"
             72 63 65 64 4F 43 33
             43 6F 6E 66 69 67
      000FDB 00                    6981 	.db	0
      000FDC 00 00 06 80           6982 	.dw	0,1664
      000FE0 54 49 4D 32 5F 41 52  6983 	.ascii "TIM2_ARRPreloadConfig"
             52 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      000FF5 00                    6984 	.db	0
      000FF6 00 00 06 CC           6985 	.dw	0,1740
      000FFA 54 49 4D 32 5F 4F 43  6986 	.ascii "TIM2_OC1PreloadConfig"
             31 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      00100F 00                    6987 	.db	0
      001010 00 00 07 18           6988 	.dw	0,1816
      001014 54 49 4D 32 5F 4F 43  6989 	.ascii "TIM2_OC2PreloadConfig"
             32 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      001029 00                    6990 	.db	0
      00102A 00 00 07 64           6991 	.dw	0,1892
      00102E 54 49 4D 32 5F 4F 43  6992 	.ascii "TIM2_OC3PreloadConfig"
             33 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      001043 00                    6993 	.db	0
      001044 00 00 07 B0           6994 	.dw	0,1968
      001048 54 49 4D 32 5F 47 65  6995 	.ascii "TIM2_GenerateEvent"
             6E 65 72 61 74 65 45
             76 65 6E 74
      00105A 00                    6996 	.db	0
      00105B 00 00 07 EF           6997 	.dw	0,2031
      00105F 54 49 4D 32 5F 4F 43  6998 	.ascii "TIM2_OC1PolarityConfig"
             31 50 6F 6C 61 72 69
             74 79 43 6F 6E 66 69
             67
      001075 00                    6999 	.db	0
      001076 00 00 08 43           7000 	.dw	0,2115
      00107A 54 49 4D 32 5F 4F 43  7001 	.ascii "TIM2_OC2PolarityConfig"
             32 50 6F 6C 61 72 69
             74 79 43 6F 6E 66 69
             67
      001090 00                    7002 	.db	0
      001091 00 00 08 97           7003 	.dw	0,2199
      001095 54 49 4D 32 5F 4F 43  7004 	.ascii "TIM2_OC3PolarityConfig"
             33 50 6F 6C 61 72 69
             74 79 43 6F 6E 66 69
             67
      0010AB 00                    7005 	.db	0
      0010AC 00 00 08 EB           7006 	.dw	0,2283
      0010B0 54 49 4D 32 5F 43 43  7007 	.ascii "TIM2_CCxCmd"
             78 43 6D 64
      0010BB 00                    7008 	.db	0
      0010BC 00 00 09 80           7009 	.dw	0,2432
      0010C0 54 49 4D 32 5F 53 65  7010 	.ascii "TIM2_SelectOCxM"
             6C 65 63 74 4F 43 78
             4D
      0010CF 00                    7011 	.db	0
      0010D0 00 00 09 E7           7012 	.dw	0,2535
      0010D4 54 49 4D 32 5F 53 65  7013 	.ascii "TIM2_SetCounter"
             74 43 6F 75 6E 74 65
             72
      0010E3 00                    7014 	.db	0
      0010E4 00 00 0A 1A           7015 	.dw	0,2586
      0010E8 54 49 4D 32 5F 53 65  7016 	.ascii "TIM2_SetAutoreload"
             74 41 75 74 6F 72 65
             6C 6F 61 64
      0010FA 00                    7017 	.db	0
      0010FB 00 00 0A 53           7018 	.dw	0,2643
      0010FF 54 49 4D 32 5F 53 65  7019 	.ascii "TIM2_SetCompare1"
             74 43 6F 6D 70 61 72
             65 31
      00110F 00                    7020 	.db	0
      001110 00 00 0A 88           7021 	.dw	0,2696
      001114 54 49 4D 32 5F 53 65  7022 	.ascii "TIM2_SetCompare2"
             74 43 6F 6D 70 61 72
             65 32
      001124 00                    7023 	.db	0
      001125 00 00 0A BD           7024 	.dw	0,2749
      001129 54 49 4D 32 5F 53 65  7025 	.ascii "TIM2_SetCompare3"
             74 43 6F 6D 70 61 72
             65 33
      001139 00                    7026 	.db	0
      00113A 00 00 0A F2           7027 	.dw	0,2802
      00113E 54 49 4D 32 5F 53 65  7028 	.ascii "TIM2_SetIC1Prescaler"
             74 49 43 31 50 72 65
             73 63 61 6C 65 72
      001152 00                    7029 	.db	0
      001153 00 00 0B 34           7030 	.dw	0,2868
      001157 54 49 4D 32 5F 53 65  7031 	.ascii "TIM2_SetIC2Prescaler"
             74 49 43 32 50 72 65
             73 63 61 6C 65 72
      00116B 00                    7032 	.db	0
      00116C 00 00 0B 76           7033 	.dw	0,2934
      001170 54 49 4D 32 5F 53 65  7034 	.ascii "TIM2_SetIC3Prescaler"
             74 49 43 33 50 72 65
             73 63 61 6C 65 72
      001184 00                    7035 	.db	0
      001185 00 00 0B B8           7036 	.dw	0,3000
      001189 54 49 4D 32 5F 47 65  7037 	.ascii "TIM2_GetCapture1"
             74 43 61 70 74 75 72
             65 31
      001199 00                    7038 	.db	0
      00119A 00 00 0C 14           7039 	.dw	0,3092
      00119E 54 49 4D 32 5F 47 65  7040 	.ascii "TIM2_GetCapture2"
             74 43 61 70 74 75 72
             65 32
      0011AE 00                    7041 	.db	0
      0011AF 00 00 0C 70           7042 	.dw	0,3184
      0011B3 54 49 4D 32 5F 47 65  7043 	.ascii "TIM2_GetCapture3"
             74 43 61 70 74 75 72
             65 33
      0011C3 00                    7044 	.db	0
      0011C4 00 00 0C CC           7045 	.dw	0,3276
      0011C8 54 49 4D 32 5F 47 65  7046 	.ascii "TIM2_GetCounter"
             74 43 6F 75 6E 74 65
             72
      0011D7 00                    7047 	.db	0
      0011D8 00 00 0D 08           7048 	.dw	0,3336
      0011DC 54 49 4D 32 5F 47 65  7049 	.ascii "TIM2_GetPrescaler"
             74 50 72 65 73 63 61
             6C 65 72
      0011ED 00                    7050 	.db	0
      0011EE 00 00 0D 2C           7051 	.dw	0,3372
      0011F2 54 49 4D 32 5F 47 65  7052 	.ascii "TIM2_GetFlagStatus"
             74 46 6C 61 67 53 74
             61 74 75 73
      001204 00                    7053 	.db	0
      001205 00 00 0D C2           7054 	.dw	0,3522
      001209 54 49 4D 32 5F 43 6C  7055 	.ascii "TIM2_ClearFlag"
             65 61 72 46 6C 61 67
      001217 00                    7056 	.db	0
      001218 00 00 0D F6           7057 	.dw	0,3574
      00121C 54 49 4D 32 5F 47 65  7058 	.ascii "TIM2_GetITStatus"
             74 49 54 53 74 61 74
             75 73
      00122C 00                    7059 	.db	0
      00122D 00 00 0E 7C           7060 	.dw	0,3708
      001231 54 49 4D 32 5F 43 6C  7061 	.ascii "TIM2_ClearITPendingBit"
             65 61 72 49 54 50 65
             6E 64 69 6E 67 42 69
             74
      001247 00                    7062 	.db	0
      001248 00 00 00 00           7063 	.dw	0,0
      00124C                       7064 Ldebug_pubnames_end:
                                   7065 
                                   7066 	.area .debug_frame (NOLOAD)
      0030D7 00 00                 7067 	.dw	0
      0030D9 00 0E                 7068 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0030DB                       7069 Ldebug_CIE0_start:
      0030DB FF FF                 7070 	.dw	0xffff
      0030DD FF FF                 7071 	.dw	0xffff
      0030DF 01                    7072 	.db	1
      0030E0 00                    7073 	.db	0
      0030E1 01                    7074 	.uleb128	1
      0030E2 7F                    7075 	.sleb128	-1
      0030E3 09                    7076 	.db	9
      0030E4 0C                    7077 	.db	12
      0030E5 08                    7078 	.uleb128	8
      0030E6 02                    7079 	.uleb128	2
      0030E7 89                    7080 	.db	137
      0030E8 01                    7081 	.uleb128	1
      0030E9                       7082 Ldebug_CIE0_end:
      0030E9 00 00 00 21           7083 	.dw	0,33
      0030ED 00 00 30 D7           7084 	.dw	0,(Ldebug_CIE0_start-4)
      0030F1 00 00 A4 0B           7085 	.dw	0,(Sstm8s_tim2$TI3_Config$628)	;initial loc
      0030F5 00 00 00 3D           7086 	.dw	0,Sstm8s_tim2$TI3_Config$645-Sstm8s_tim2$TI3_Config$628
      0030F9 01                    7087 	.db	1
      0030FA 00 00 A4 0B           7088 	.dw	0,(Sstm8s_tim2$TI3_Config$628)
      0030FE 0E                    7089 	.db	14
      0030FF 02                    7090 	.uleb128	2
      003100 01                    7091 	.db	1
      003101 00 00 A4 0C           7092 	.dw	0,(Sstm8s_tim2$TI3_Config$629)
      003105 0E                    7093 	.db	14
      003106 03                    7094 	.uleb128	3
      003107 01                    7095 	.db	1
      003108 00 00 A4 47           7096 	.dw	0,(Sstm8s_tim2$TI3_Config$643)
      00310C 0E                    7097 	.db	14
      00310D 02                    7098 	.uleb128	2
                                   7099 
                                   7100 	.area .debug_frame (NOLOAD)
      00310E 00 00                 7101 	.dw	0
      003110 00 0E                 7102 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      003112                       7103 Ldebug_CIE1_start:
      003112 FF FF                 7104 	.dw	0xffff
      003114 FF FF                 7105 	.dw	0xffff
      003116 01                    7106 	.db	1
      003117 00                    7107 	.db	0
      003118 01                    7108 	.uleb128	1
      003119 7F                    7109 	.sleb128	-1
      00311A 09                    7110 	.db	9
      00311B 0C                    7111 	.db	12
      00311C 08                    7112 	.uleb128	8
      00311D 02                    7113 	.uleb128	2
      00311E 89                    7114 	.db	137
      00311F 01                    7115 	.uleb128	1
      003120                       7116 Ldebug_CIE1_end:
      003120 00 00 00 21           7117 	.dw	0,33
      003124 00 00 31 0E           7118 	.dw	0,(Ldebug_CIE1_start-4)
      003128 00 00 A3 CE           7119 	.dw	0,(Sstm8s_tim2$TI2_Config$609)	;initial loc
      00312C 00 00 00 3D           7120 	.dw	0,Sstm8s_tim2$TI2_Config$626-Sstm8s_tim2$TI2_Config$609
      003130 01                    7121 	.db	1
      003131 00 00 A3 CE           7122 	.dw	0,(Sstm8s_tim2$TI2_Config$609)
      003135 0E                    7123 	.db	14
      003136 02                    7124 	.uleb128	2
      003137 01                    7125 	.db	1
      003138 00 00 A3 CF           7126 	.dw	0,(Sstm8s_tim2$TI2_Config$610)
      00313C 0E                    7127 	.db	14
      00313D 03                    7128 	.uleb128	3
      00313E 01                    7129 	.db	1
      00313F 00 00 A4 0A           7130 	.dw	0,(Sstm8s_tim2$TI2_Config$624)
      003143 0E                    7131 	.db	14
      003144 02                    7132 	.uleb128	2
                                   7133 
                                   7134 	.area .debug_frame (NOLOAD)
      003145 00 00                 7135 	.dw	0
      003147 00 0E                 7136 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      003149                       7137 Ldebug_CIE2_start:
      003149 FF FF                 7138 	.dw	0xffff
      00314B FF FF                 7139 	.dw	0xffff
      00314D 01                    7140 	.db	1
      00314E 00                    7141 	.db	0
      00314F 01                    7142 	.uleb128	1
      003150 7F                    7143 	.sleb128	-1
      003151 09                    7144 	.db	9
      003152 0C                    7145 	.db	12
      003153 08                    7146 	.uleb128	8
      003154 02                    7147 	.uleb128	2
      003155 89                    7148 	.db	137
      003156 01                    7149 	.uleb128	1
      003157                       7150 Ldebug_CIE2_end:
      003157 00 00 00 21           7151 	.dw	0,33
      00315B 00 00 31 45           7152 	.dw	0,(Ldebug_CIE2_start-4)
      00315F 00 00 A3 91           7153 	.dw	0,(Sstm8s_tim2$TI1_Config$590)	;initial loc
      003163 00 00 00 3D           7154 	.dw	0,Sstm8s_tim2$TI1_Config$607-Sstm8s_tim2$TI1_Config$590
      003167 01                    7155 	.db	1
      003168 00 00 A3 91           7156 	.dw	0,(Sstm8s_tim2$TI1_Config$590)
      00316C 0E                    7157 	.db	14
      00316D 02                    7158 	.uleb128	2
      00316E 01                    7159 	.db	1
      00316F 00 00 A3 92           7160 	.dw	0,(Sstm8s_tim2$TI1_Config$591)
      003173 0E                    7161 	.db	14
      003174 03                    7162 	.uleb128	3
      003175 01                    7163 	.db	1
      003176 00 00 A3 CD           7164 	.dw	0,(Sstm8s_tim2$TI1_Config$605)
      00317A 0E                    7165 	.db	14
      00317B 02                    7166 	.uleb128	2
                                   7167 
                                   7168 	.area .debug_frame (NOLOAD)
      00317C 00 00                 7169 	.dw	0
      00317E 00 0E                 7170 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      003180                       7171 Ldebug_CIE3_start:
      003180 FF FF                 7172 	.dw	0xffff
      003182 FF FF                 7173 	.dw	0xffff
      003184 01                    7174 	.db	1
      003185 00                    7175 	.db	0
      003186 01                    7176 	.uleb128	1
      003187 7F                    7177 	.sleb128	-1
      003188 09                    7178 	.db	9
      003189 0C                    7179 	.db	12
      00318A 08                    7180 	.uleb128	8
      00318B 02                    7181 	.uleb128	2
      00318C 89                    7182 	.db	137
      00318D 01                    7183 	.uleb128	1
      00318E                       7184 Ldebug_CIE3_end:
      00318E 00 00 00 13           7185 	.dw	0,19
      003192 00 00 31 7C           7186 	.dw	0,(Ldebug_CIE3_start-4)
      003196 00 00 A3 8A           7187 	.dw	0,(Sstm8s_tim2$TIM2_ClearITPendingBit$584)	;initial loc
      00319A 00 00 00 07           7188 	.dw	0,Sstm8s_tim2$TIM2_ClearITPendingBit$588-Sstm8s_tim2$TIM2_ClearITPendingBit$584
      00319E 01                    7189 	.db	1
      00319F 00 00 A3 8A           7190 	.dw	0,(Sstm8s_tim2$TIM2_ClearITPendingBit$584)
      0031A3 0E                    7191 	.db	14
      0031A4 02                    7192 	.uleb128	2
                                   7193 
                                   7194 	.area .debug_frame (NOLOAD)
      0031A5 00 00                 7195 	.dw	0
      0031A7 00 0E                 7196 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      0031A9                       7197 Ldebug_CIE4_start:
      0031A9 FF FF                 7198 	.dw	0xffff
      0031AB FF FF                 7199 	.dw	0xffff
      0031AD 01                    7200 	.db	1
      0031AE 00                    7201 	.db	0
      0031AF 01                    7202 	.uleb128	1
      0031B0 7F                    7203 	.sleb128	-1
      0031B1 09                    7204 	.db	9
      0031B2 0C                    7205 	.db	12
      0031B3 08                    7206 	.uleb128	8
      0031B4 02                    7207 	.uleb128	2
      0031B5 89                    7208 	.db	137
      0031B6 01                    7209 	.uleb128	1
      0031B7                       7210 Ldebug_CIE4_end:
      0031B7 00 00 00 21           7211 	.dw	0,33
      0031BB 00 00 31 A5           7212 	.dw	0,(Ldebug_CIE4_start-4)
      0031BF 00 00 A3 67           7213 	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$567)	;initial loc
      0031C3 00 00 00 23           7214 	.dw	0,Sstm8s_tim2$TIM2_GetITStatus$582-Sstm8s_tim2$TIM2_GetITStatus$567
      0031C7 01                    7215 	.db	1
      0031C8 00 00 A3 67           7216 	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$567)
      0031CC 0E                    7217 	.db	14
      0031CD 02                    7218 	.uleb128	2
      0031CE 01                    7219 	.db	1
      0031CF 00 00 A3 68           7220 	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$568)
      0031D3 0E                    7221 	.db	14
      0031D4 03                    7222 	.uleb128	3
      0031D5 01                    7223 	.db	1
      0031D6 00 00 A3 89           7224 	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$580)
      0031DA 0E                    7225 	.db	14
      0031DB 02                    7226 	.uleb128	2
                                   7227 
                                   7228 	.area .debug_frame (NOLOAD)
      0031DC 00 00                 7229 	.dw	0
      0031DE 00 0E                 7230 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      0031E0                       7231 Ldebug_CIE5_start:
      0031E0 FF FF                 7232 	.dw	0xffff
      0031E2 FF FF                 7233 	.dw	0xffff
      0031E4 01                    7234 	.db	1
      0031E5 00                    7235 	.db	0
      0031E6 01                    7236 	.uleb128	1
      0031E7 7F                    7237 	.sleb128	-1
      0031E8 09                    7238 	.db	9
      0031E9 0C                    7239 	.db	12
      0031EA 08                    7240 	.uleb128	8
      0031EB 02                    7241 	.uleb128	2
      0031EC 89                    7242 	.db	137
      0031ED 01                    7243 	.uleb128	1
      0031EE                       7244 Ldebug_CIE5_end:
      0031EE 00 00 00 13           7245 	.dw	0,19
      0031F2 00 00 31 DC           7246 	.dw	0,(Ldebug_CIE5_start-4)
      0031F6 00 00 A3 5C           7247 	.dw	0,(Sstm8s_tim2$TIM2_ClearFlag$560)	;initial loc
      0031FA 00 00 00 0B           7248 	.dw	0,Sstm8s_tim2$TIM2_ClearFlag$565-Sstm8s_tim2$TIM2_ClearFlag$560
      0031FE 01                    7249 	.db	1
      0031FF 00 00 A3 5C           7250 	.dw	0,(Sstm8s_tim2$TIM2_ClearFlag$560)
      003203 0E                    7251 	.db	14
      003204 02                    7252 	.uleb128	2
                                   7253 
                                   7254 	.area .debug_frame (NOLOAD)
      003205 00 00                 7255 	.dw	0
      003207 00 0E                 7256 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      003209                       7257 Ldebug_CIE6_start:
      003209 FF FF                 7258 	.dw	0xffff
      00320B FF FF                 7259 	.dw	0xffff
      00320D 01                    7260 	.db	1
      00320E 00                    7261 	.db	0
      00320F 01                    7262 	.uleb128	1
      003210 7F                    7263 	.sleb128	-1
      003211 09                    7264 	.db	9
      003212 0C                    7265 	.db	12
      003213 08                    7266 	.uleb128	8
      003214 02                    7267 	.uleb128	2
      003215 89                    7268 	.db	137
      003216 01                    7269 	.uleb128	1
      003217                       7270 Ldebug_CIE6_end:
      003217 00 00 00 2F           7271 	.dw	0,47
      00321B 00 00 32 05           7272 	.dw	0,(Ldebug_CIE6_start-4)
      00321F 00 00 A3 35           7273 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$541)	;initial loc
      003223 00 00 00 27           7274 	.dw	0,Sstm8s_tim2$TIM2_GetFlagStatus$558-Sstm8s_tim2$TIM2_GetFlagStatus$541
      003227 01                    7275 	.db	1
      003228 00 00 A3 35           7276 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$541)
      00322C 0E                    7277 	.db	14
      00322D 02                    7278 	.uleb128	2
      00322E 01                    7279 	.db	1
      00322F 00 00 A3 36           7280 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$542)
      003233 0E                    7281 	.db	14
      003234 03                    7282 	.uleb128	3
      003235 01                    7283 	.db	1
      003236 00 00 A3 48           7284 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$546)
      00323A 0E                    7285 	.db	14
      00323B 05                    7286 	.uleb128	5
      00323C 01                    7287 	.db	1
      00323D 00 00 A3 4B           7288 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$547)
      003241 0E                    7289 	.db	14
      003242 03                    7290 	.uleb128	3
      003243 01                    7291 	.db	1
      003244 00 00 A3 5B           7292 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$556)
      003248 0E                    7293 	.db	14
      003249 02                    7294 	.uleb128	2
                                   7295 
                                   7296 	.area .debug_frame (NOLOAD)
      00324A 00 00                 7297 	.dw	0
      00324C 00 0E                 7298 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      00324E                       7299 Ldebug_CIE7_start:
      00324E FF FF                 7300 	.dw	0xffff
      003250 FF FF                 7301 	.dw	0xffff
      003252 01                    7302 	.db	1
      003253 00                    7303 	.db	0
      003254 01                    7304 	.uleb128	1
      003255 7F                    7305 	.sleb128	-1
      003256 09                    7306 	.db	9
      003257 0C                    7307 	.db	12
      003258 08                    7308 	.uleb128	8
      003259 02                    7309 	.uleb128	2
      00325A 89                    7310 	.db	137
      00325B 01                    7311 	.uleb128	1
      00325C                       7312 Ldebug_CIE7_end:
      00325C 00 00 00 13           7313 	.dw	0,19
      003260 00 00 32 4A           7314 	.dw	0,(Ldebug_CIE7_start-4)
      003264 00 00 A3 31           7315 	.dw	0,(Sstm8s_tim2$TIM2_GetPrescaler$535)	;initial loc
      003268 00 00 00 04           7316 	.dw	0,Sstm8s_tim2$TIM2_GetPrescaler$539-Sstm8s_tim2$TIM2_GetPrescaler$535
      00326C 01                    7317 	.db	1
      00326D 00 00 A3 31           7318 	.dw	0,(Sstm8s_tim2$TIM2_GetPrescaler$535)
      003271 0E                    7319 	.db	14
      003272 02                    7320 	.uleb128	2
                                   7321 
                                   7322 	.area .debug_frame (NOLOAD)
      003273 00 00                 7323 	.dw	0
      003275 00 0E                 7324 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      003277                       7325 Ldebug_CIE8_start:
      003277 FF FF                 7326 	.dw	0xffff
      003279 FF FF                 7327 	.dw	0xffff
      00327B 01                    7328 	.db	1
      00327C 00                    7329 	.db	0
      00327D 01                    7330 	.uleb128	1
      00327E 7F                    7331 	.sleb128	-1
      00327F 09                    7332 	.db	9
      003280 0C                    7333 	.db	12
      003281 08                    7334 	.uleb128	8
      003282 02                    7335 	.uleb128	2
      003283 89                    7336 	.db	137
      003284 01                    7337 	.uleb128	1
      003285                       7338 Ldebug_CIE8_end:
      003285 00 00 00 21           7339 	.dw	0,33
      003289 00 00 32 73           7340 	.dw	0,(Ldebug_CIE8_start-4)
      00328D 00 00 A3 18           7341 	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$526)	;initial loc
      003291 00 00 00 19           7342 	.dw	0,Sstm8s_tim2$TIM2_GetCounter$533-Sstm8s_tim2$TIM2_GetCounter$526
      003295 01                    7343 	.db	1
      003296 00 00 A3 18           7344 	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$526)
      00329A 0E                    7345 	.db	14
      00329B 02                    7346 	.uleb128	2
      00329C 01                    7347 	.db	1
      00329D 00 00 A3 1A           7348 	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$527)
      0032A1 0E                    7349 	.db	14
      0032A2 06                    7350 	.uleb128	6
      0032A3 01                    7351 	.db	1
      0032A4 00 00 A3 30           7352 	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$531)
      0032A8 0E                    7353 	.db	14
      0032A9 02                    7354 	.uleb128	2
                                   7355 
                                   7356 	.area .debug_frame (NOLOAD)
      0032AA 00 00                 7357 	.dw	0
      0032AC 00 0E                 7358 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      0032AE                       7359 Ldebug_CIE9_start:
      0032AE FF FF                 7360 	.dw	0xffff
      0032B0 FF FF                 7361 	.dw	0xffff
      0032B2 01                    7362 	.db	1
      0032B3 00                    7363 	.db	0
      0032B4 01                    7364 	.uleb128	1
      0032B5 7F                    7365 	.sleb128	-1
      0032B6 09                    7366 	.db	9
      0032B7 0C                    7367 	.db	12
      0032B8 08                    7368 	.uleb128	8
      0032B9 02                    7369 	.uleb128	2
      0032BA 89                    7370 	.db	137
      0032BB 01                    7371 	.uleb128	1
      0032BC                       7372 Ldebug_CIE9_end:
      0032BC 00 00 00 2F           7373 	.dw	0,47
      0032C0 00 00 32 AA           7374 	.dw	0,(Ldebug_CIE9_start-4)
      0032C4 00 00 A2 FE           7375 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$512)	;initial loc
      0032C8 00 00 00 1A           7376 	.dw	0,Sstm8s_tim2$TIM2_GetCapture3$524-Sstm8s_tim2$TIM2_GetCapture3$512
      0032CC 01                    7377 	.db	1
      0032CD 00 00 A2 FE           7378 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$512)
      0032D1 0E                    7379 	.db	14
      0032D2 02                    7380 	.uleb128	2
      0032D3 01                    7381 	.db	1
      0032D4 00 00 A2 FF           7382 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$513)
      0032D8 0E                    7383 	.db	14
      0032D9 04                    7384 	.uleb128	4
      0032DA 01                    7385 	.db	1
      0032DB 00 00 A3 0D           7386 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$518)
      0032DF 0E                    7387 	.db	14
      0032E0 06                    7388 	.uleb128	6
      0032E1 01                    7389 	.db	1
      0032E2 00 00 A3 10           7390 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$519)
      0032E6 0E                    7391 	.db	14
      0032E7 04                    7392 	.uleb128	4
      0032E8 01                    7393 	.db	1
      0032E9 00 00 A3 17           7394 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$522)
      0032ED 0E                    7395 	.db	14
      0032EE 02                    7396 	.uleb128	2
                                   7397 
                                   7398 	.area .debug_frame (NOLOAD)
      0032EF 00 00                 7399 	.dw	0
      0032F1 00 0E                 7400 	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
      0032F3                       7401 Ldebug_CIE10_start:
      0032F3 FF FF                 7402 	.dw	0xffff
      0032F5 FF FF                 7403 	.dw	0xffff
      0032F7 01                    7404 	.db	1
      0032F8 00                    7405 	.db	0
      0032F9 01                    7406 	.uleb128	1
      0032FA 7F                    7407 	.sleb128	-1
      0032FB 09                    7408 	.db	9
      0032FC 0C                    7409 	.db	12
      0032FD 08                    7410 	.uleb128	8
      0032FE 02                    7411 	.uleb128	2
      0032FF 89                    7412 	.db	137
      003300 01                    7413 	.uleb128	1
      003301                       7414 Ldebug_CIE10_end:
      003301 00 00 00 2F           7415 	.dw	0,47
      003305 00 00 32 EF           7416 	.dw	0,(Ldebug_CIE10_start-4)
      003309 00 00 A2 E4           7417 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$498)	;initial loc
      00330D 00 00 00 1A           7418 	.dw	0,Sstm8s_tim2$TIM2_GetCapture2$510-Sstm8s_tim2$TIM2_GetCapture2$498
      003311 01                    7419 	.db	1
      003312 00 00 A2 E4           7420 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$498)
      003316 0E                    7421 	.db	14
      003317 02                    7422 	.uleb128	2
      003318 01                    7423 	.db	1
      003319 00 00 A2 E5           7424 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$499)
      00331D 0E                    7425 	.db	14
      00331E 04                    7426 	.uleb128	4
      00331F 01                    7427 	.db	1
      003320 00 00 A2 F3           7428 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$504)
      003324 0E                    7429 	.db	14
      003325 06                    7430 	.uleb128	6
      003326 01                    7431 	.db	1
      003327 00 00 A2 F6           7432 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$505)
      00332B 0E                    7433 	.db	14
      00332C 04                    7434 	.uleb128	4
      00332D 01                    7435 	.db	1
      00332E 00 00 A2 FD           7436 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$508)
      003332 0E                    7437 	.db	14
      003333 02                    7438 	.uleb128	2
                                   7439 
                                   7440 	.area .debug_frame (NOLOAD)
      003334 00 00                 7441 	.dw	0
      003336 00 0E                 7442 	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
      003338                       7443 Ldebug_CIE11_start:
      003338 FF FF                 7444 	.dw	0xffff
      00333A FF FF                 7445 	.dw	0xffff
      00333C 01                    7446 	.db	1
      00333D 00                    7447 	.db	0
      00333E 01                    7448 	.uleb128	1
      00333F 7F                    7449 	.sleb128	-1
      003340 09                    7450 	.db	9
      003341 0C                    7451 	.db	12
      003342 08                    7452 	.uleb128	8
      003343 02                    7453 	.uleb128	2
      003344 89                    7454 	.db	137
      003345 01                    7455 	.uleb128	1
      003346                       7456 Ldebug_CIE11_end:
      003346 00 00 00 2F           7457 	.dw	0,47
      00334A 00 00 33 34           7458 	.dw	0,(Ldebug_CIE11_start-4)
      00334E 00 00 A2 CA           7459 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$484)	;initial loc
      003352 00 00 00 1A           7460 	.dw	0,Sstm8s_tim2$TIM2_GetCapture1$496-Sstm8s_tim2$TIM2_GetCapture1$484
      003356 01                    7461 	.db	1
      003357 00 00 A2 CA           7462 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$484)
      00335B 0E                    7463 	.db	14
      00335C 02                    7464 	.uleb128	2
      00335D 01                    7465 	.db	1
      00335E 00 00 A2 CB           7466 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$485)
      003362 0E                    7467 	.db	14
      003363 04                    7468 	.uleb128	4
      003364 01                    7469 	.db	1
      003365 00 00 A2 D9           7470 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$490)
      003369 0E                    7471 	.db	14
      00336A 06                    7472 	.uleb128	6
      00336B 01                    7473 	.db	1
      00336C 00 00 A2 DC           7474 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$491)
      003370 0E                    7475 	.db	14
      003371 04                    7476 	.uleb128	4
      003372 01                    7477 	.db	1
      003373 00 00 A2 E3           7478 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$494)
      003377 0E                    7479 	.db	14
      003378 02                    7480 	.uleb128	2
                                   7481 
                                   7482 	.area .debug_frame (NOLOAD)
      003379 00 00                 7483 	.dw	0
      00337B 00 0E                 7484 	.dw	Ldebug_CIE12_end-Ldebug_CIE12_start
      00337D                       7485 Ldebug_CIE12_start:
      00337D FF FF                 7486 	.dw	0xffff
      00337F FF FF                 7487 	.dw	0xffff
      003381 01                    7488 	.db	1
      003382 00                    7489 	.db	0
      003383 01                    7490 	.uleb128	1
      003384 7F                    7491 	.sleb128	-1
      003385 09                    7492 	.db	9
      003386 0C                    7493 	.db	12
      003387 08                    7494 	.uleb128	8
      003388 02                    7495 	.uleb128	2
      003389 89                    7496 	.db	137
      00338A 01                    7497 	.uleb128	1
      00338B                       7498 Ldebug_CIE12_end:
      00338B 00 00 00 13           7499 	.dw	0,19
      00338F 00 00 33 79           7500 	.dw	0,(Ldebug_CIE12_start-4)
      003393 00 00 A2 BF           7501 	.dw	0,(Sstm8s_tim2$TIM2_SetIC3Prescaler$477)	;initial loc
      003397 00 00 00 0B           7502 	.dw	0,Sstm8s_tim2$TIM2_SetIC3Prescaler$482-Sstm8s_tim2$TIM2_SetIC3Prescaler$477
      00339B 01                    7503 	.db	1
      00339C 00 00 A2 BF           7504 	.dw	0,(Sstm8s_tim2$TIM2_SetIC3Prescaler$477)
      0033A0 0E                    7505 	.db	14
      0033A1 02                    7506 	.uleb128	2
                                   7507 
                                   7508 	.area .debug_frame (NOLOAD)
      0033A2 00 00                 7509 	.dw	0
      0033A4 00 0E                 7510 	.dw	Ldebug_CIE13_end-Ldebug_CIE13_start
      0033A6                       7511 Ldebug_CIE13_start:
      0033A6 FF FF                 7512 	.dw	0xffff
      0033A8 FF FF                 7513 	.dw	0xffff
      0033AA 01                    7514 	.db	1
      0033AB 00                    7515 	.db	0
      0033AC 01                    7516 	.uleb128	1
      0033AD 7F                    7517 	.sleb128	-1
      0033AE 09                    7518 	.db	9
      0033AF 0C                    7519 	.db	12
      0033B0 08                    7520 	.uleb128	8
      0033B1 02                    7521 	.uleb128	2
      0033B2 89                    7522 	.db	137
      0033B3 01                    7523 	.uleb128	1
      0033B4                       7524 Ldebug_CIE13_end:
      0033B4 00 00 00 13           7525 	.dw	0,19
      0033B8 00 00 33 A2           7526 	.dw	0,(Ldebug_CIE13_start-4)
      0033BC 00 00 A2 B4           7527 	.dw	0,(Sstm8s_tim2$TIM2_SetIC2Prescaler$470)	;initial loc
      0033C0 00 00 00 0B           7528 	.dw	0,Sstm8s_tim2$TIM2_SetIC2Prescaler$475-Sstm8s_tim2$TIM2_SetIC2Prescaler$470
      0033C4 01                    7529 	.db	1
      0033C5 00 00 A2 B4           7530 	.dw	0,(Sstm8s_tim2$TIM2_SetIC2Prescaler$470)
      0033C9 0E                    7531 	.db	14
      0033CA 02                    7532 	.uleb128	2
                                   7533 
                                   7534 	.area .debug_frame (NOLOAD)
      0033CB 00 00                 7535 	.dw	0
      0033CD 00 0E                 7536 	.dw	Ldebug_CIE14_end-Ldebug_CIE14_start
      0033CF                       7537 Ldebug_CIE14_start:
      0033CF FF FF                 7538 	.dw	0xffff
      0033D1 FF FF                 7539 	.dw	0xffff
      0033D3 01                    7540 	.db	1
      0033D4 00                    7541 	.db	0
      0033D5 01                    7542 	.uleb128	1
      0033D6 7F                    7543 	.sleb128	-1
      0033D7 09                    7544 	.db	9
      0033D8 0C                    7545 	.db	12
      0033D9 08                    7546 	.uleb128	8
      0033DA 02                    7547 	.uleb128	2
      0033DB 89                    7548 	.db	137
      0033DC 01                    7549 	.uleb128	1
      0033DD                       7550 Ldebug_CIE14_end:
      0033DD 00 00 00 13           7551 	.dw	0,19
      0033E1 00 00 33 CB           7552 	.dw	0,(Ldebug_CIE14_start-4)
      0033E5 00 00 A2 A9           7553 	.dw	0,(Sstm8s_tim2$TIM2_SetIC1Prescaler$463)	;initial loc
      0033E9 00 00 00 0B           7554 	.dw	0,Sstm8s_tim2$TIM2_SetIC1Prescaler$468-Sstm8s_tim2$TIM2_SetIC1Prescaler$463
      0033ED 01                    7555 	.db	1
      0033EE 00 00 A2 A9           7556 	.dw	0,(Sstm8s_tim2$TIM2_SetIC1Prescaler$463)
      0033F2 0E                    7557 	.db	14
      0033F3 02                    7558 	.uleb128	2
                                   7559 
                                   7560 	.area .debug_frame (NOLOAD)
      0033F4 00 00                 7561 	.dw	0
      0033F6 00 0E                 7562 	.dw	Ldebug_CIE15_end-Ldebug_CIE15_start
      0033F8                       7563 Ldebug_CIE15_start:
      0033F8 FF FF                 7564 	.dw	0xffff
      0033FA FF FF                 7565 	.dw	0xffff
      0033FC 01                    7566 	.db	1
      0033FD 00                    7567 	.db	0
      0033FE 01                    7568 	.uleb128	1
      0033FF 7F                    7569 	.sleb128	-1
      003400 09                    7570 	.db	9
      003401 0C                    7571 	.db	12
      003402 08                    7572 	.uleb128	8
      003403 02                    7573 	.uleb128	2
      003404 89                    7574 	.db	137
      003405 01                    7575 	.uleb128	1
      003406                       7576 Ldebug_CIE15_end:
      003406 00 00 00 13           7577 	.dw	0,19
      00340A 00 00 33 F4           7578 	.dw	0,(Ldebug_CIE15_start-4)
      00340E 00 00 A2 9D           7579 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare3$456)	;initial loc
      003412 00 00 00 0C           7580 	.dw	0,Sstm8s_tim2$TIM2_SetCompare3$461-Sstm8s_tim2$TIM2_SetCompare3$456
      003416 01                    7581 	.db	1
      003417 00 00 A2 9D           7582 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare3$456)
      00341B 0E                    7583 	.db	14
      00341C 02                    7584 	.uleb128	2
                                   7585 
                                   7586 	.area .debug_frame (NOLOAD)
      00341D 00 00                 7587 	.dw	0
      00341F 00 0E                 7588 	.dw	Ldebug_CIE16_end-Ldebug_CIE16_start
      003421                       7589 Ldebug_CIE16_start:
      003421 FF FF                 7590 	.dw	0xffff
      003423 FF FF                 7591 	.dw	0xffff
      003425 01                    7592 	.db	1
      003426 00                    7593 	.db	0
      003427 01                    7594 	.uleb128	1
      003428 7F                    7595 	.sleb128	-1
      003429 09                    7596 	.db	9
      00342A 0C                    7597 	.db	12
      00342B 08                    7598 	.uleb128	8
      00342C 02                    7599 	.uleb128	2
      00342D 89                    7600 	.db	137
      00342E 01                    7601 	.uleb128	1
      00342F                       7602 Ldebug_CIE16_end:
      00342F 00 00 00 13           7603 	.dw	0,19
      003433 00 00 34 1D           7604 	.dw	0,(Ldebug_CIE16_start-4)
      003437 00 00 A2 91           7605 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare2$449)	;initial loc
      00343B 00 00 00 0C           7606 	.dw	0,Sstm8s_tim2$TIM2_SetCompare2$454-Sstm8s_tim2$TIM2_SetCompare2$449
      00343F 01                    7607 	.db	1
      003440 00 00 A2 91           7608 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare2$449)
      003444 0E                    7609 	.db	14
      003445 02                    7610 	.uleb128	2
                                   7611 
                                   7612 	.area .debug_frame (NOLOAD)
      003446 00 00                 7613 	.dw	0
      003448 00 0E                 7614 	.dw	Ldebug_CIE17_end-Ldebug_CIE17_start
      00344A                       7615 Ldebug_CIE17_start:
      00344A FF FF                 7616 	.dw	0xffff
      00344C FF FF                 7617 	.dw	0xffff
      00344E 01                    7618 	.db	1
      00344F 00                    7619 	.db	0
      003450 01                    7620 	.uleb128	1
      003451 7F                    7621 	.sleb128	-1
      003452 09                    7622 	.db	9
      003453 0C                    7623 	.db	12
      003454 08                    7624 	.uleb128	8
      003455 02                    7625 	.uleb128	2
      003456 89                    7626 	.db	137
      003457 01                    7627 	.uleb128	1
      003458                       7628 Ldebug_CIE17_end:
      003458 00 00 00 13           7629 	.dw	0,19
      00345C 00 00 34 46           7630 	.dw	0,(Ldebug_CIE17_start-4)
      003460 00 00 A2 85           7631 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare1$442)	;initial loc
      003464 00 00 00 0C           7632 	.dw	0,Sstm8s_tim2$TIM2_SetCompare1$447-Sstm8s_tim2$TIM2_SetCompare1$442
      003468 01                    7633 	.db	1
      003469 00 00 A2 85           7634 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare1$442)
      00346D 0E                    7635 	.db	14
      00346E 02                    7636 	.uleb128	2
                                   7637 
                                   7638 	.area .debug_frame (NOLOAD)
      00346F 00 00                 7639 	.dw	0
      003471 00 0E                 7640 	.dw	Ldebug_CIE18_end-Ldebug_CIE18_start
      003473                       7641 Ldebug_CIE18_start:
      003473 FF FF                 7642 	.dw	0xffff
      003475 FF FF                 7643 	.dw	0xffff
      003477 01                    7644 	.db	1
      003478 00                    7645 	.db	0
      003479 01                    7646 	.uleb128	1
      00347A 7F                    7647 	.sleb128	-1
      00347B 09                    7648 	.db	9
      00347C 0C                    7649 	.db	12
      00347D 08                    7650 	.uleb128	8
      00347E 02                    7651 	.uleb128	2
      00347F 89                    7652 	.db	137
      003480 01                    7653 	.uleb128	1
      003481                       7654 Ldebug_CIE18_end:
      003481 00 00 00 13           7655 	.dw	0,19
      003485 00 00 34 6F           7656 	.dw	0,(Ldebug_CIE18_start-4)
      003489 00 00 A2 79           7657 	.dw	0,(Sstm8s_tim2$TIM2_SetAutoreload$435)	;initial loc
      00348D 00 00 00 0C           7658 	.dw	0,Sstm8s_tim2$TIM2_SetAutoreload$440-Sstm8s_tim2$TIM2_SetAutoreload$435
      003491 01                    7659 	.db	1
      003492 00 00 A2 79           7660 	.dw	0,(Sstm8s_tim2$TIM2_SetAutoreload$435)
      003496 0E                    7661 	.db	14
      003497 02                    7662 	.uleb128	2
                                   7663 
                                   7664 	.area .debug_frame (NOLOAD)
      003498 00 00                 7665 	.dw	0
      00349A 00 0E                 7666 	.dw	Ldebug_CIE19_end-Ldebug_CIE19_start
      00349C                       7667 Ldebug_CIE19_start:
      00349C FF FF                 7668 	.dw	0xffff
      00349E FF FF                 7669 	.dw	0xffff
      0034A0 01                    7670 	.db	1
      0034A1 00                    7671 	.db	0
      0034A2 01                    7672 	.uleb128	1
      0034A3 7F                    7673 	.sleb128	-1
      0034A4 09                    7674 	.db	9
      0034A5 0C                    7675 	.db	12
      0034A6 08                    7676 	.uleb128	8
      0034A7 02                    7677 	.uleb128	2
      0034A8 89                    7678 	.db	137
      0034A9 01                    7679 	.uleb128	1
      0034AA                       7680 Ldebug_CIE19_end:
      0034AA 00 00 00 13           7681 	.dw	0,19
      0034AE 00 00 34 98           7682 	.dw	0,(Ldebug_CIE19_start-4)
      0034B2 00 00 A2 6D           7683 	.dw	0,(Sstm8s_tim2$TIM2_SetCounter$428)	;initial loc
      0034B6 00 00 00 0C           7684 	.dw	0,Sstm8s_tim2$TIM2_SetCounter$433-Sstm8s_tim2$TIM2_SetCounter$428
      0034BA 01                    7685 	.db	1
      0034BB 00 00 A2 6D           7686 	.dw	0,(Sstm8s_tim2$TIM2_SetCounter$428)
      0034BF 0E                    7687 	.db	14
      0034C0 02                    7688 	.uleb128	2
                                   7689 
                                   7690 	.area .debug_frame (NOLOAD)
      0034C1 00 00                 7691 	.dw	0
      0034C3 00 0E                 7692 	.dw	Ldebug_CIE20_end-Ldebug_CIE20_start
      0034C5                       7693 Ldebug_CIE20_start:
      0034C5 FF FF                 7694 	.dw	0xffff
      0034C7 FF FF                 7695 	.dw	0xffff
      0034C9 01                    7696 	.db	1
      0034CA 00                    7697 	.db	0
      0034CB 01                    7698 	.uleb128	1
      0034CC 7F                    7699 	.sleb128	-1
      0034CD 09                    7700 	.db	9
      0034CE 0C                    7701 	.db	12
      0034CF 08                    7702 	.uleb128	8
      0034D0 02                    7703 	.uleb128	2
      0034D1 89                    7704 	.db	137
      0034D2 01                    7705 	.uleb128	1
      0034D3                       7706 Ldebug_CIE20_end:
      0034D3 00 00 00 1A           7707 	.dw	0,26
      0034D7 00 00 34 C1           7708 	.dw	0,(Ldebug_CIE20_start-4)
      0034DB 00 00 A2 1E           7709 	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$405)	;initial loc
      0034DF 00 00 00 4F           7710 	.dw	0,Sstm8s_tim2$TIM2_SelectOCxM$426-Sstm8s_tim2$TIM2_SelectOCxM$405
      0034E3 01                    7711 	.db	1
      0034E4 00 00 A2 1E           7712 	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$405)
      0034E8 0E                    7713 	.db	14
      0034E9 02                    7714 	.uleb128	2
      0034EA 01                    7715 	.db	1
      0034EB 00 00 A2 45           7716 	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$413)
      0034EF 0E                    7717 	.db	14
      0034F0 02                    7718 	.uleb128	2
                                   7719 
                                   7720 	.area .debug_frame (NOLOAD)
      0034F1 00 00                 7721 	.dw	0
      0034F3 00 0E                 7722 	.dw	Ldebug_CIE21_end-Ldebug_CIE21_start
      0034F5                       7723 Ldebug_CIE21_start:
      0034F5 FF FF                 7724 	.dw	0xffff
      0034F7 FF FF                 7725 	.dw	0xffff
      0034F9 01                    7726 	.db	1
      0034FA 00                    7727 	.db	0
      0034FB 01                    7728 	.uleb128	1
      0034FC 7F                    7729 	.sleb128	-1
      0034FD 09                    7730 	.db	9
      0034FE 0C                    7731 	.db	12
      0034FF 08                    7732 	.uleb128	8
      003500 02                    7733 	.uleb128	2
      003501 89                    7734 	.db	137
      003502 01                    7735 	.uleb128	1
      003503                       7736 Ldebug_CIE21_end:
      003503 00 00 00 1A           7737 	.dw	0,26
      003507 00 00 34 F1           7738 	.dw	0,(Ldebug_CIE21_start-4)
      00350B 00 00 A1 C0           7739 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$370)	;initial loc
      00350F 00 00 00 5E           7740 	.dw	0,Sstm8s_tim2$TIM2_CCxCmd$403-Sstm8s_tim2$TIM2_CCxCmd$370
      003513 01                    7741 	.db	1
      003514 00 00 A1 C0           7742 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$370)
      003518 0E                    7743 	.db	14
      003519 02                    7744 	.uleb128	2
      00351A 01                    7745 	.db	1
      00351B 00 00 A1 EC           7746 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$382)
      00351F 0E                    7747 	.db	14
      003520 02                    7748 	.uleb128	2
                                   7749 
                                   7750 	.area .debug_frame (NOLOAD)
      003521 00 00                 7751 	.dw	0
      003523 00 0E                 7752 	.dw	Ldebug_CIE22_end-Ldebug_CIE22_start
      003525                       7753 Ldebug_CIE22_start:
      003525 FF FF                 7754 	.dw	0xffff
      003527 FF FF                 7755 	.dw	0xffff
      003529 01                    7756 	.db	1
      00352A 00                    7757 	.db	0
      00352B 01                    7758 	.uleb128	1
      00352C 7F                    7759 	.sleb128	-1
      00352D 09                    7760 	.db	9
      00352E 0C                    7761 	.db	12
      00352F 08                    7762 	.uleb128	8
      003530 02                    7763 	.uleb128	2
      003531 89                    7764 	.db	137
      003532 01                    7765 	.uleb128	1
      003533                       7766 Ldebug_CIE22_end:
      003533 00 00 00 13           7767 	.dw	0,19
      003537 00 00 35 21           7768 	.dw	0,(Ldebug_CIE22_start-4)
      00353B 00 00 A1 A8           7769 	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$357)	;initial loc
      00353F 00 00 00 18           7770 	.dw	0,Sstm8s_tim2$TIM2_OC3PolarityConfig$368-Sstm8s_tim2$TIM2_OC3PolarityConfig$357
      003543 01                    7771 	.db	1
      003544 00 00 A1 A8           7772 	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$357)
      003548 0E                    7773 	.db	14
      003549 02                    7774 	.uleb128	2
                                   7775 
                                   7776 	.area .debug_frame (NOLOAD)
      00354A 00 00                 7777 	.dw	0
      00354C 00 0E                 7778 	.dw	Ldebug_CIE23_end-Ldebug_CIE23_start
      00354E                       7779 Ldebug_CIE23_start:
      00354E FF FF                 7780 	.dw	0xffff
      003550 FF FF                 7781 	.dw	0xffff
      003552 01                    7782 	.db	1
      003553 00                    7783 	.db	0
      003554 01                    7784 	.uleb128	1
      003555 7F                    7785 	.sleb128	-1
      003556 09                    7786 	.db	9
      003557 0C                    7787 	.db	12
      003558 08                    7788 	.uleb128	8
      003559 02                    7789 	.uleb128	2
      00355A 89                    7790 	.db	137
      00355B 01                    7791 	.uleb128	1
      00355C                       7792 Ldebug_CIE23_end:
      00355C 00 00 00 13           7793 	.dw	0,19
      003560 00 00 35 4A           7794 	.dw	0,(Ldebug_CIE23_start-4)
      003564 00 00 A1 90           7795 	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$344)	;initial loc
      003568 00 00 00 18           7796 	.dw	0,Sstm8s_tim2$TIM2_OC2PolarityConfig$355-Sstm8s_tim2$TIM2_OC2PolarityConfig$344
      00356C 01                    7797 	.db	1
      00356D 00 00 A1 90           7798 	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$344)
      003571 0E                    7799 	.db	14
      003572 02                    7800 	.uleb128	2
                                   7801 
                                   7802 	.area .debug_frame (NOLOAD)
      003573 00 00                 7803 	.dw	0
      003575 00 0E                 7804 	.dw	Ldebug_CIE24_end-Ldebug_CIE24_start
      003577                       7805 Ldebug_CIE24_start:
      003577 FF FF                 7806 	.dw	0xffff
      003579 FF FF                 7807 	.dw	0xffff
      00357B 01                    7808 	.db	1
      00357C 00                    7809 	.db	0
      00357D 01                    7810 	.uleb128	1
      00357E 7F                    7811 	.sleb128	-1
      00357F 09                    7812 	.db	9
      003580 0C                    7813 	.db	12
      003581 08                    7814 	.uleb128	8
      003582 02                    7815 	.uleb128	2
      003583 89                    7816 	.db	137
      003584 01                    7817 	.uleb128	1
      003585                       7818 Ldebug_CIE24_end:
      003585 00 00 00 13           7819 	.dw	0,19
      003589 00 00 35 73           7820 	.dw	0,(Ldebug_CIE24_start-4)
      00358D 00 00 A1 78           7821 	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$331)	;initial loc
      003591 00 00 00 18           7822 	.dw	0,Sstm8s_tim2$TIM2_OC1PolarityConfig$342-Sstm8s_tim2$TIM2_OC1PolarityConfig$331
      003595 01                    7823 	.db	1
      003596 00 00 A1 78           7824 	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$331)
      00359A 0E                    7825 	.db	14
      00359B 02                    7826 	.uleb128	2
                                   7827 
                                   7828 	.area .debug_frame (NOLOAD)
      00359C 00 00                 7829 	.dw	0
      00359E 00 0E                 7830 	.dw	Ldebug_CIE25_end-Ldebug_CIE25_start
      0035A0                       7831 Ldebug_CIE25_start:
      0035A0 FF FF                 7832 	.dw	0xffff
      0035A2 FF FF                 7833 	.dw	0xffff
      0035A4 01                    7834 	.db	1
      0035A5 00                    7835 	.db	0
      0035A6 01                    7836 	.uleb128	1
      0035A7 7F                    7837 	.sleb128	-1
      0035A8 09                    7838 	.db	9
      0035A9 0C                    7839 	.db	12
      0035AA 08                    7840 	.uleb128	8
      0035AB 02                    7841 	.uleb128	2
      0035AC 89                    7842 	.db	137
      0035AD 01                    7843 	.uleb128	1
      0035AE                       7844 Ldebug_CIE25_end:
      0035AE 00 00 00 13           7845 	.dw	0,19
      0035B2 00 00 35 9C           7846 	.dw	0,(Ldebug_CIE25_start-4)
      0035B6 00 00 A1 71           7847 	.dw	0,(Sstm8s_tim2$TIM2_GenerateEvent$325)	;initial loc
      0035BA 00 00 00 07           7848 	.dw	0,Sstm8s_tim2$TIM2_GenerateEvent$329-Sstm8s_tim2$TIM2_GenerateEvent$325
      0035BE 01                    7849 	.db	1
      0035BF 00 00 A1 71           7850 	.dw	0,(Sstm8s_tim2$TIM2_GenerateEvent$325)
      0035C3 0E                    7851 	.db	14
      0035C4 02                    7852 	.uleb128	2
                                   7853 
                                   7854 	.area .debug_frame (NOLOAD)
      0035C5 00 00                 7855 	.dw	0
      0035C7 00 0E                 7856 	.dw	Ldebug_CIE26_end-Ldebug_CIE26_start
      0035C9                       7857 Ldebug_CIE26_start:
      0035C9 FF FF                 7858 	.dw	0xffff
      0035CB FF FF                 7859 	.dw	0xffff
      0035CD 01                    7860 	.db	1
      0035CE 00                    7861 	.db	0
      0035CF 01                    7862 	.uleb128	1
      0035D0 7F                    7863 	.sleb128	-1
      0035D1 09                    7864 	.db	9
      0035D2 0C                    7865 	.db	12
      0035D3 08                    7866 	.uleb128	8
      0035D4 02                    7867 	.uleb128	2
      0035D5 89                    7868 	.db	137
      0035D6 01                    7869 	.uleb128	1
      0035D7                       7870 Ldebug_CIE26_end:
      0035D7 00 00 00 13           7871 	.dw	0,19
      0035DB 00 00 35 C5           7872 	.dw	0,(Ldebug_CIE26_start-4)
      0035DF 00 00 A1 59           7873 	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$312)	;initial loc
      0035E3 00 00 00 18           7874 	.dw	0,Sstm8s_tim2$TIM2_OC3PreloadConfig$323-Sstm8s_tim2$TIM2_OC3PreloadConfig$312
      0035E7 01                    7875 	.db	1
      0035E8 00 00 A1 59           7876 	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$312)
      0035EC 0E                    7877 	.db	14
      0035ED 02                    7878 	.uleb128	2
                                   7879 
                                   7880 	.area .debug_frame (NOLOAD)
      0035EE 00 00                 7881 	.dw	0
      0035F0 00 0E                 7882 	.dw	Ldebug_CIE27_end-Ldebug_CIE27_start
      0035F2                       7883 Ldebug_CIE27_start:
      0035F2 FF FF                 7884 	.dw	0xffff
      0035F4 FF FF                 7885 	.dw	0xffff
      0035F6 01                    7886 	.db	1
      0035F7 00                    7887 	.db	0
      0035F8 01                    7888 	.uleb128	1
      0035F9 7F                    7889 	.sleb128	-1
      0035FA 09                    7890 	.db	9
      0035FB 0C                    7891 	.db	12
      0035FC 08                    7892 	.uleb128	8
      0035FD 02                    7893 	.uleb128	2
      0035FE 89                    7894 	.db	137
      0035FF 01                    7895 	.uleb128	1
      003600                       7896 Ldebug_CIE27_end:
      003600 00 00 00 13           7897 	.dw	0,19
      003604 00 00 35 EE           7898 	.dw	0,(Ldebug_CIE27_start-4)
      003608 00 00 A1 41           7899 	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$299)	;initial loc
      00360C 00 00 00 18           7900 	.dw	0,Sstm8s_tim2$TIM2_OC2PreloadConfig$310-Sstm8s_tim2$TIM2_OC2PreloadConfig$299
      003610 01                    7901 	.db	1
      003611 00 00 A1 41           7902 	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$299)
      003615 0E                    7903 	.db	14
      003616 02                    7904 	.uleb128	2
                                   7905 
                                   7906 	.area .debug_frame (NOLOAD)
      003617 00 00                 7907 	.dw	0
      003619 00 0E                 7908 	.dw	Ldebug_CIE28_end-Ldebug_CIE28_start
      00361B                       7909 Ldebug_CIE28_start:
      00361B FF FF                 7910 	.dw	0xffff
      00361D FF FF                 7911 	.dw	0xffff
      00361F 01                    7912 	.db	1
      003620 00                    7913 	.db	0
      003621 01                    7914 	.uleb128	1
      003622 7F                    7915 	.sleb128	-1
      003623 09                    7916 	.db	9
      003624 0C                    7917 	.db	12
      003625 08                    7918 	.uleb128	8
      003626 02                    7919 	.uleb128	2
      003627 89                    7920 	.db	137
      003628 01                    7921 	.uleb128	1
      003629                       7922 Ldebug_CIE28_end:
      003629 00 00 00 13           7923 	.dw	0,19
      00362D 00 00 36 17           7924 	.dw	0,(Ldebug_CIE28_start-4)
      003631 00 00 A1 29           7925 	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$286)	;initial loc
      003635 00 00 00 18           7926 	.dw	0,Sstm8s_tim2$TIM2_OC1PreloadConfig$297-Sstm8s_tim2$TIM2_OC1PreloadConfig$286
      003639 01                    7927 	.db	1
      00363A 00 00 A1 29           7928 	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$286)
      00363E 0E                    7929 	.db	14
      00363F 02                    7930 	.uleb128	2
                                   7931 
                                   7932 	.area .debug_frame (NOLOAD)
      003640 00 00                 7933 	.dw	0
      003642 00 0E                 7934 	.dw	Ldebug_CIE29_end-Ldebug_CIE29_start
      003644                       7935 Ldebug_CIE29_start:
      003644 FF FF                 7936 	.dw	0xffff
      003646 FF FF                 7937 	.dw	0xffff
      003648 01                    7938 	.db	1
      003649 00                    7939 	.db	0
      00364A 01                    7940 	.uleb128	1
      00364B 7F                    7941 	.sleb128	-1
      00364C 09                    7942 	.db	9
      00364D 0C                    7943 	.db	12
      00364E 08                    7944 	.uleb128	8
      00364F 02                    7945 	.uleb128	2
      003650 89                    7946 	.db	137
      003651 01                    7947 	.uleb128	1
      003652                       7948 Ldebug_CIE29_end:
      003652 00 00 00 13           7949 	.dw	0,19
      003656 00 00 36 40           7950 	.dw	0,(Ldebug_CIE29_start-4)
      00365A 00 00 A1 11           7951 	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$273)	;initial loc
      00365E 00 00 00 18           7952 	.dw	0,Sstm8s_tim2$TIM2_ARRPreloadConfig$284-Sstm8s_tim2$TIM2_ARRPreloadConfig$273
      003662 01                    7953 	.db	1
      003663 00 00 A1 11           7954 	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$273)
      003667 0E                    7955 	.db	14
      003668 02                    7956 	.uleb128	2
                                   7957 
                                   7958 	.area .debug_frame (NOLOAD)
      003669 00 00                 7959 	.dw	0
      00366B 00 0E                 7960 	.dw	Ldebug_CIE30_end-Ldebug_CIE30_start
      00366D                       7961 Ldebug_CIE30_start:
      00366D FF FF                 7962 	.dw	0xffff
      00366F FF FF                 7963 	.dw	0xffff
      003671 01                    7964 	.db	1
      003672 00                    7965 	.db	0
      003673 01                    7966 	.uleb128	1
      003674 7F                    7967 	.sleb128	-1
      003675 09                    7968 	.db	9
      003676 0C                    7969 	.db	12
      003677 08                    7970 	.uleb128	8
      003678 02                    7971 	.uleb128	2
      003679 89                    7972 	.db	137
      00367A 01                    7973 	.uleb128	1
      00367B                       7974 Ldebug_CIE30_end:
      00367B 00 00 00 13           7975 	.dw	0,19
      00367F 00 00 36 69           7976 	.dw	0,(Ldebug_CIE30_start-4)
      003683 00 00 A1 06           7977 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC3Config$266)	;initial loc
      003687 00 00 00 0B           7978 	.dw	0,Sstm8s_tim2$TIM2_ForcedOC3Config$271-Sstm8s_tim2$TIM2_ForcedOC3Config$266
      00368B 01                    7979 	.db	1
      00368C 00 00 A1 06           7980 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC3Config$266)
      003690 0E                    7981 	.db	14
      003691 02                    7982 	.uleb128	2
                                   7983 
                                   7984 	.area .debug_frame (NOLOAD)
      003692 00 00                 7985 	.dw	0
      003694 00 0E                 7986 	.dw	Ldebug_CIE31_end-Ldebug_CIE31_start
      003696                       7987 Ldebug_CIE31_start:
      003696 FF FF                 7988 	.dw	0xffff
      003698 FF FF                 7989 	.dw	0xffff
      00369A 01                    7990 	.db	1
      00369B 00                    7991 	.db	0
      00369C 01                    7992 	.uleb128	1
      00369D 7F                    7993 	.sleb128	-1
      00369E 09                    7994 	.db	9
      00369F 0C                    7995 	.db	12
      0036A0 08                    7996 	.uleb128	8
      0036A1 02                    7997 	.uleb128	2
      0036A2 89                    7998 	.db	137
      0036A3 01                    7999 	.uleb128	1
      0036A4                       8000 Ldebug_CIE31_end:
      0036A4 00 00 00 13           8001 	.dw	0,19
      0036A8 00 00 36 92           8002 	.dw	0,(Ldebug_CIE31_start-4)
      0036AC 00 00 A0 FB           8003 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC2Config$259)	;initial loc
      0036B0 00 00 00 0B           8004 	.dw	0,Sstm8s_tim2$TIM2_ForcedOC2Config$264-Sstm8s_tim2$TIM2_ForcedOC2Config$259
      0036B4 01                    8005 	.db	1
      0036B5 00 00 A0 FB           8006 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC2Config$259)
      0036B9 0E                    8007 	.db	14
      0036BA 02                    8008 	.uleb128	2
                                   8009 
                                   8010 	.area .debug_frame (NOLOAD)
      0036BB 00 00                 8011 	.dw	0
      0036BD 00 0E                 8012 	.dw	Ldebug_CIE32_end-Ldebug_CIE32_start
      0036BF                       8013 Ldebug_CIE32_start:
      0036BF FF FF                 8014 	.dw	0xffff
      0036C1 FF FF                 8015 	.dw	0xffff
      0036C3 01                    8016 	.db	1
      0036C4 00                    8017 	.db	0
      0036C5 01                    8018 	.uleb128	1
      0036C6 7F                    8019 	.sleb128	-1
      0036C7 09                    8020 	.db	9
      0036C8 0C                    8021 	.db	12
      0036C9 08                    8022 	.uleb128	8
      0036CA 02                    8023 	.uleb128	2
      0036CB 89                    8024 	.db	137
      0036CC 01                    8025 	.uleb128	1
      0036CD                       8026 Ldebug_CIE32_end:
      0036CD 00 00 00 13           8027 	.dw	0,19
      0036D1 00 00 36 BB           8028 	.dw	0,(Ldebug_CIE32_start-4)
      0036D5 00 00 A0 F0           8029 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC1Config$252)	;initial loc
      0036D9 00 00 00 0B           8030 	.dw	0,Sstm8s_tim2$TIM2_ForcedOC1Config$257-Sstm8s_tim2$TIM2_ForcedOC1Config$252
      0036DD 01                    8031 	.db	1
      0036DE 00 00 A0 F0           8032 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC1Config$252)
      0036E2 0E                    8033 	.db	14
      0036E3 02                    8034 	.uleb128	2
                                   8035 
                                   8036 	.area .debug_frame (NOLOAD)
      0036E4 00 00                 8037 	.dw	0
      0036E6 00 0E                 8038 	.dw	Ldebug_CIE33_end-Ldebug_CIE33_start
      0036E8                       8039 Ldebug_CIE33_start:
      0036E8 FF FF                 8040 	.dw	0xffff
      0036EA FF FF                 8041 	.dw	0xffff
      0036EC 01                    8042 	.db	1
      0036ED 00                    8043 	.db	0
      0036EE 01                    8044 	.uleb128	1
      0036EF 7F                    8045 	.sleb128	-1
      0036F0 09                    8046 	.db	9
      0036F1 0C                    8047 	.db	12
      0036F2 08                    8048 	.uleb128	8
      0036F3 02                    8049 	.uleb128	2
      0036F4 89                    8050 	.db	137
      0036F5 01                    8051 	.uleb128	1
      0036F6                       8052 Ldebug_CIE33_end:
      0036F6 00 00 00 13           8053 	.dw	0,19
      0036FA 00 00 36 E4           8054 	.dw	0,(Ldebug_CIE33_start-4)
      0036FE 00 00 A0 E3           8055 	.dw	0,(Sstm8s_tim2$TIM2_PrescalerConfig$245)	;initial loc
      003702 00 00 00 0D           8056 	.dw	0,Sstm8s_tim2$TIM2_PrescalerConfig$250-Sstm8s_tim2$TIM2_PrescalerConfig$245
      003706 01                    8057 	.db	1
      003707 00 00 A0 E3           8058 	.dw	0,(Sstm8s_tim2$TIM2_PrescalerConfig$245)
      00370B 0E                    8059 	.db	14
      00370C 02                    8060 	.uleb128	2
                                   8061 
                                   8062 	.area .debug_frame (NOLOAD)
      00370D 00 00                 8063 	.dw	0
      00370F 00 0E                 8064 	.dw	Ldebug_CIE34_end-Ldebug_CIE34_start
      003711                       8065 Ldebug_CIE34_start:
      003711 FF FF                 8066 	.dw	0xffff
      003713 FF FF                 8067 	.dw	0xffff
      003715 01                    8068 	.db	1
      003716 00                    8069 	.db	0
      003717 01                    8070 	.uleb128	1
      003718 7F                    8071 	.sleb128	-1
      003719 09                    8072 	.db	9
      00371A 0C                    8073 	.db	12
      00371B 08                    8074 	.uleb128	8
      00371C 02                    8075 	.uleb128	2
      00371D 89                    8076 	.db	137
      00371E 01                    8077 	.uleb128	1
      00371F                       8078 Ldebug_CIE34_end:
      00371F 00 00 00 13           8079 	.dw	0,19
      003723 00 00 37 0D           8080 	.dw	0,(Ldebug_CIE34_start-4)
      003727 00 00 A0 CB           8081 	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$232)	;initial loc
      00372B 00 00 00 18           8082 	.dw	0,Sstm8s_tim2$TIM2_SelectOnePulseMode$243-Sstm8s_tim2$TIM2_SelectOnePulseMode$232
      00372F 01                    8083 	.db	1
      003730 00 00 A0 CB           8084 	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$232)
      003734 0E                    8085 	.db	14
      003735 02                    8086 	.uleb128	2
                                   8087 
                                   8088 	.area .debug_frame (NOLOAD)
      003736 00 00                 8089 	.dw	0
      003738 00 0E                 8090 	.dw	Ldebug_CIE35_end-Ldebug_CIE35_start
      00373A                       8091 Ldebug_CIE35_start:
      00373A FF FF                 8092 	.dw	0xffff
      00373C FF FF                 8093 	.dw	0xffff
      00373E 01                    8094 	.db	1
      00373F 00                    8095 	.db	0
      003740 01                    8096 	.uleb128	1
      003741 7F                    8097 	.sleb128	-1
      003742 09                    8098 	.db	9
      003743 0C                    8099 	.db	12
      003744 08                    8100 	.uleb128	8
      003745 02                    8101 	.uleb128	2
      003746 89                    8102 	.db	137
      003747 01                    8103 	.uleb128	1
      003748                       8104 Ldebug_CIE35_end:
      003748 00 00 00 13           8105 	.dw	0,19
      00374C 00 00 37 36           8106 	.dw	0,(Ldebug_CIE35_start-4)
      003750 00 00 A0 B3           8107 	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$219)	;initial loc
      003754 00 00 00 18           8108 	.dw	0,Sstm8s_tim2$TIM2_UpdateRequestConfig$230-Sstm8s_tim2$TIM2_UpdateRequestConfig$219
      003758 01                    8109 	.db	1
      003759 00 00 A0 B3           8110 	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$219)
      00375D 0E                    8111 	.db	14
      00375E 02                    8112 	.uleb128	2
                                   8113 
                                   8114 	.area .debug_frame (NOLOAD)
      00375F 00 00                 8115 	.dw	0
      003761 00 0E                 8116 	.dw	Ldebug_CIE36_end-Ldebug_CIE36_start
      003763                       8117 Ldebug_CIE36_start:
      003763 FF FF                 8118 	.dw	0xffff
      003765 FF FF                 8119 	.dw	0xffff
      003767 01                    8120 	.db	1
      003768 00                    8121 	.db	0
      003769 01                    8122 	.uleb128	1
      00376A 7F                    8123 	.sleb128	-1
      00376B 09                    8124 	.db	9
      00376C 0C                    8125 	.db	12
      00376D 08                    8126 	.uleb128	8
      00376E 02                    8127 	.uleb128	2
      00376F 89                    8128 	.db	137
      003770 01                    8129 	.uleb128	1
      003771                       8130 Ldebug_CIE36_end:
      003771 00 00 00 13           8131 	.dw	0,19
      003775 00 00 37 5F           8132 	.dw	0,(Ldebug_CIE36_start-4)
      003779 00 00 A0 9B           8133 	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$206)	;initial loc
      00377D 00 00 00 18           8134 	.dw	0,Sstm8s_tim2$TIM2_UpdateDisableConfig$217-Sstm8s_tim2$TIM2_UpdateDisableConfig$206
      003781 01                    8135 	.db	1
      003782 00 00 A0 9B           8136 	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$206)
      003786 0E                    8137 	.db	14
      003787 02                    8138 	.uleb128	2
                                   8139 
                                   8140 	.area .debug_frame (NOLOAD)
      003788 00 00                 8141 	.dw	0
      00378A 00 0E                 8142 	.dw	Ldebug_CIE37_end-Ldebug_CIE37_start
      00378C                       8143 Ldebug_CIE37_start:
      00378C FF FF                 8144 	.dw	0xffff
      00378E FF FF                 8145 	.dw	0xffff
      003790 01                    8146 	.db	1
      003791 00                    8147 	.db	0
      003792 01                    8148 	.uleb128	1
      003793 7F                    8149 	.sleb128	-1
      003794 09                    8150 	.db	9
      003795 0C                    8151 	.db	12
      003796 08                    8152 	.uleb128	8
      003797 02                    8153 	.uleb128	2
      003798 89                    8154 	.db	137
      003799 01                    8155 	.uleb128	1
      00379A                       8156 Ldebug_CIE37_end:
      00379A 00 00 00 2F           8157 	.dw	0,47
      00379E 00 00 37 88           8158 	.dw	0,(Ldebug_CIE37_start-4)
      0037A2 00 00 A0 7A           8159 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$189)	;initial loc
      0037A6 00 00 00 21           8160 	.dw	0,Sstm8s_tim2$TIM2_ITConfig$204-Sstm8s_tim2$TIM2_ITConfig$189
      0037AA 01                    8161 	.db	1
      0037AB 00 00 A0 7A           8162 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$189)
      0037AF 0E                    8163 	.db	14
      0037B0 02                    8164 	.uleb128	2
      0037B1 01                    8165 	.db	1
      0037B2 00 00 A0 7B           8166 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$190)
      0037B6 0E                    8167 	.db	14
      0037B7 03                    8168 	.uleb128	3
      0037B8 01                    8169 	.db	1
      0037B9 00 00 A0 8E           8170 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$198)
      0037BD 0E                    8171 	.db	14
      0037BE 04                    8172 	.uleb128	4
      0037BF 01                    8173 	.db	1
      0037C0 00 00 A0 94           8174 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$199)
      0037C4 0E                    8175 	.db	14
      0037C5 03                    8176 	.uleb128	3
      0037C6 01                    8177 	.db	1
      0037C7 00 00 A0 9A           8178 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$202)
      0037CB 0E                    8179 	.db	14
      0037CC 02                    8180 	.uleb128	2
                                   8181 
                                   8182 	.area .debug_frame (NOLOAD)
      0037CD 00 00                 8183 	.dw	0
      0037CF 00 0E                 8184 	.dw	Ldebug_CIE38_end-Ldebug_CIE38_start
      0037D1                       8185 Ldebug_CIE38_start:
      0037D1 FF FF                 8186 	.dw	0xffff
      0037D3 FF FF                 8187 	.dw	0xffff
      0037D5 01                    8188 	.db	1
      0037D6 00                    8189 	.db	0
      0037D7 01                    8190 	.uleb128	1
      0037D8 7F                    8191 	.sleb128	-1
      0037D9 09                    8192 	.db	9
      0037DA 0C                    8193 	.db	12
      0037DB 08                    8194 	.uleb128	8
      0037DC 02                    8195 	.uleb128	2
      0037DD 89                    8196 	.db	137
      0037DE 01                    8197 	.uleb128	1
      0037DF                       8198 Ldebug_CIE38_end:
      0037DF 00 00 00 13           8199 	.dw	0,19
      0037E3 00 00 37 CD           8200 	.dw	0,(Ldebug_CIE38_start-4)
      0037E7 00 00 A0 62           8201 	.dw	0,(Sstm8s_tim2$TIM2_Cmd$176)	;initial loc
      0037EB 00 00 00 18           8202 	.dw	0,Sstm8s_tim2$TIM2_Cmd$187-Sstm8s_tim2$TIM2_Cmd$176
      0037EF 01                    8203 	.db	1
      0037F0 00 00 A0 62           8204 	.dw	0,(Sstm8s_tim2$TIM2_Cmd$176)
      0037F4 0E                    8205 	.db	14
      0037F5 02                    8206 	.uleb128	2
                                   8207 
                                   8208 	.area .debug_frame (NOLOAD)
      0037F6 00 00                 8209 	.dw	0
      0037F8 00 0E                 8210 	.dw	Ldebug_CIE39_end-Ldebug_CIE39_start
      0037FA                       8211 Ldebug_CIE39_start:
      0037FA FF FF                 8212 	.dw	0xffff
      0037FC FF FF                 8213 	.dw	0xffff
      0037FE 01                    8214 	.db	1
      0037FF 00                    8215 	.db	0
      003800 01                    8216 	.uleb128	1
      003801 7F                    8217 	.sleb128	-1
      003802 09                    8218 	.db	9
      003803 0C                    8219 	.db	12
      003804 08                    8220 	.uleb128	8
      003805 02                    8221 	.uleb128	2
      003806 89                    8222 	.db	137
      003807 01                    8223 	.uleb128	1
      003808                       8224 Ldebug_CIE39_end:
      003808 00 00 00 D7           8225 	.dw	0,215
      00380C 00 00 37 F6           8226 	.dw	0,(Ldebug_CIE39_start-4)
      003810 00 00 9F D9           8227 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$116)	;initial loc
      003814 00 00 00 89           8228 	.dw	0,Sstm8s_tim2$TIM2_PWMIConfig$174-Sstm8s_tim2$TIM2_PWMIConfig$116
      003818 01                    8229 	.db	1
      003819 00 00 9F D9           8230 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$116)
      00381D 0E                    8231 	.db	14
      00381E 02                    8232 	.uleb128	2
      00381F 01                    8233 	.db	1
      003820 00 00 9F DA           8234 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$117)
      003824 0E                    8235 	.db	14
      003825 04                    8236 	.uleb128	4
      003826 01                    8237 	.db	1
      003827 00 00 9F E3           8238 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$119)
      00382B 0E                    8239 	.db	14
      00382C 04                    8240 	.uleb128	4
      00382D 01                    8241 	.db	1
      00382E 00 00 9F F7           8242 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$127)
      003832 0E                    8243 	.db	14
      003833 04                    8244 	.uleb128	4
      003834 01                    8245 	.db	1
      003835 00 00 A0 0C           8246 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$137)
      003839 0E                    8247 	.db	14
      00383A 05                    8248 	.uleb128	5
      00383B 01                    8249 	.db	1
      00383C 00 00 A0 0F           8250 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$138)
      003840 0E                    8251 	.db	14
      003841 06                    8252 	.uleb128	6
      003842 01                    8253 	.db	1
      003843 00 00 A0 12           8254 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$139)
      003847 0E                    8255 	.db	14
      003848 07                    8256 	.uleb128	7
      003849 01                    8257 	.db	1
      00384A 00 00 A0 17           8258 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$140)
      00384E 0E                    8259 	.db	14
      00384F 04                    8260 	.uleb128	4
      003850 01                    8261 	.db	1
      003851 00 00 A0 1A           8262 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$142)
      003855 0E                    8263 	.db	14
      003856 05                    8264 	.uleb128	5
      003857 01                    8265 	.db	1
      003858 00 00 A0 1E           8266 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$143)
      00385C 0E                    8267 	.db	14
      00385D 04                    8268 	.uleb128	4
      00385E 01                    8269 	.db	1
      00385F 00 00 A0 21           8270 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$145)
      003863 0E                    8271 	.db	14
      003864 05                    8272 	.uleb128	5
      003865 01                    8273 	.db	1
      003866 00 00 A0 24           8274 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$146)
      00386A 0E                    8275 	.db	14
      00386B 06                    8276 	.uleb128	6
      00386C 01                    8277 	.db	1
      00386D 00 00 A0 27           8278 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$147)
      003871 0E                    8279 	.db	14
      003872 07                    8280 	.uleb128	7
      003873 01                    8281 	.db	1
      003874 00 00 A0 2C           8282 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$148)
      003878 0E                    8283 	.db	14
      003879 04                    8284 	.uleb128	4
      00387A 01                    8285 	.db	1
      00387B 00 00 A0 2F           8286 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$150)
      00387F 0E                    8287 	.db	14
      003880 05                    8288 	.uleb128	5
      003881 01                    8289 	.db	1
      003882 00 00 A0 33           8290 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$151)
      003886 0E                    8291 	.db	14
      003887 04                    8292 	.uleb128	4
      003888 01                    8293 	.db	1
      003889 00 00 A0 39           8294 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$155)
      00388D 0E                    8295 	.db	14
      00388E 05                    8296 	.uleb128	5
      00388F 01                    8297 	.db	1
      003890 00 00 A0 3C           8298 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$156)
      003894 0E                    8299 	.db	14
      003895 06                    8300 	.uleb128	6
      003896 01                    8301 	.db	1
      003897 00 00 A0 3F           8302 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$157)
      00389B 0E                    8303 	.db	14
      00389C 07                    8304 	.uleb128	7
      00389D 01                    8305 	.db	1
      00389E 00 00 A0 44           8306 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$158)
      0038A2 0E                    8307 	.db	14
      0038A3 04                    8308 	.uleb128	4
      0038A4 01                    8309 	.db	1
      0038A5 00 00 A0 47           8310 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$160)
      0038A9 0E                    8311 	.db	14
      0038AA 05                    8312 	.uleb128	5
      0038AB 01                    8313 	.db	1
      0038AC 00 00 A0 4B           8314 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$161)
      0038B0 0E                    8315 	.db	14
      0038B1 04                    8316 	.uleb128	4
      0038B2 01                    8317 	.db	1
      0038B3 00 00 A0 4E           8318 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$163)
      0038B7 0E                    8319 	.db	14
      0038B8 05                    8320 	.uleb128	5
      0038B9 01                    8321 	.db	1
      0038BA 00 00 A0 51           8322 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$164)
      0038BE 0E                    8323 	.db	14
      0038BF 06                    8324 	.uleb128	6
      0038C0 01                    8325 	.db	1
      0038C1 00 00 A0 54           8326 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$165)
      0038C5 0E                    8327 	.db	14
      0038C6 07                    8328 	.uleb128	7
      0038C7 01                    8329 	.db	1
      0038C8 00 00 A0 59           8330 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$166)
      0038CC 0E                    8331 	.db	14
      0038CD 04                    8332 	.uleb128	4
      0038CE 01                    8333 	.db	1
      0038CF 00 00 A0 5C           8334 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$168)
      0038D3 0E                    8335 	.db	14
      0038D4 05                    8336 	.uleb128	5
      0038D5 01                    8337 	.db	1
      0038D6 00 00 A0 60           8338 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$169)
      0038DA 0E                    8339 	.db	14
      0038DB 04                    8340 	.uleb128	4
      0038DC 01                    8341 	.db	1
      0038DD 00 00 A0 61           8342 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$172)
      0038E1 0E                    8343 	.db	14
      0038E2 02                    8344 	.uleb128	2
                                   8345 
                                   8346 	.area .debug_frame (NOLOAD)
      0038E3 00 00                 8347 	.dw	0
      0038E5 00 0E                 8348 	.dw	Ldebug_CIE40_end-Ldebug_CIE40_start
      0038E7                       8349 Ldebug_CIE40_start:
      0038E7 FF FF                 8350 	.dw	0xffff
      0038E9 FF FF                 8351 	.dw	0xffff
      0038EB 01                    8352 	.db	1
      0038EC 00                    8353 	.db	0
      0038ED 01                    8354 	.uleb128	1
      0038EE 7F                    8355 	.sleb128	-1
      0038EF 09                    8356 	.db	9
      0038F0 0C                    8357 	.db	12
      0038F1 08                    8358 	.uleb128	8
      0038F2 02                    8359 	.uleb128	2
      0038F3 89                    8360 	.db	137
      0038F4 01                    8361 	.uleb128	1
      0038F5                       8362 Ldebug_CIE40_end:
      0038F5 00 00 00 98           8363 	.dw	0,152
      0038F9 00 00 38 E3           8364 	.dw	0,(Ldebug_CIE40_start-4)
      0038FD 00 00 9F 81           8365 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$78)	;initial loc
      003901 00 00 00 58           8366 	.dw	0,Sstm8s_tim2$TIM2_ICInit$114-Sstm8s_tim2$TIM2_ICInit$78
      003905 01                    8367 	.db	1
      003906 00 00 9F 81           8368 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$78)
      00390A 0E                    8369 	.db	14
      00390B 02                    8370 	.uleb128	2
      00390C 01                    8371 	.db	1
      00390D 00 00 9F 8B           8372 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$82)
      003911 0E                    8373 	.db	14
      003912 03                    8374 	.uleb128	3
      003913 01                    8375 	.db	1
      003914 00 00 9F 8E           8376 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$83)
      003918 0E                    8377 	.db	14
      003919 04                    8378 	.uleb128	4
      00391A 01                    8379 	.db	1
      00391B 00 00 9F 91           8380 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$84)
      00391F 0E                    8381 	.db	14
      003920 05                    8382 	.uleb128	5
      003921 01                    8383 	.db	1
      003922 00 00 9F 96           8384 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$85)
      003926 0E                    8385 	.db	14
      003927 02                    8386 	.uleb128	2
      003928 01                    8387 	.db	1
      003929 00 00 9F 99           8388 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$87)
      00392D 0E                    8389 	.db	14
      00392E 03                    8390 	.uleb128	3
      00392F 01                    8391 	.db	1
      003930 00 00 9F 9D           8392 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$88)
      003934 0E                    8393 	.db	14
      003935 02                    8394 	.uleb128	2
      003936 01                    8395 	.db	1
      003937 00 00 9F AB           8396 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$91)
      00393B 0E                    8397 	.db	14
      00393C 02                    8398 	.uleb128	2
      00393D 01                    8399 	.db	1
      00393E 00 00 9F AE           8400 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$94)
      003942 0E                    8401 	.db	14
      003943 03                    8402 	.uleb128	3
      003944 01                    8403 	.db	1
      003945 00 00 9F B1           8404 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$95)
      003949 0E                    8405 	.db	14
      00394A 04                    8406 	.uleb128	4
      00394B 01                    8407 	.db	1
      00394C 00 00 9F B4           8408 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$96)
      003950 0E                    8409 	.db	14
      003951 05                    8410 	.uleb128	5
      003952 01                    8411 	.db	1
      003953 00 00 9F B9           8412 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$97)
      003957 0E                    8413 	.db	14
      003958 02                    8414 	.uleb128	2
      003959 01                    8415 	.db	1
      00395A 00 00 9F BC           8416 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$99)
      00395E 0E                    8417 	.db	14
      00395F 03                    8418 	.uleb128	3
      003960 01                    8419 	.db	1
      003961 00 00 9F C0           8420 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$100)
      003965 0E                    8421 	.db	14
      003966 02                    8422 	.uleb128	2
      003967 01                    8423 	.db	1
      003968 00 00 9F C6           8424 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$104)
      00396C 0E                    8425 	.db	14
      00396D 03                    8426 	.uleb128	3
      00396E 01                    8427 	.db	1
      00396F 00 00 9F C9           8428 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$105)
      003973 0E                    8429 	.db	14
      003974 04                    8430 	.uleb128	4
      003975 01                    8431 	.db	1
      003976 00 00 9F CC           8432 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$106)
      00397A 0E                    8433 	.db	14
      00397B 05                    8434 	.uleb128	5
      00397C 01                    8435 	.db	1
      00397D 00 00 9F D1           8436 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$107)
      003981 0E                    8437 	.db	14
      003982 02                    8438 	.uleb128	2
      003983 01                    8439 	.db	1
      003984 00 00 9F D4           8440 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$109)
      003988 0E                    8441 	.db	14
      003989 03                    8442 	.uleb128	3
      00398A 01                    8443 	.db	1
      00398B 00 00 9F D8           8444 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$110)
      00398F 0E                    8445 	.db	14
      003990 02                    8446 	.uleb128	2
                                   8447 
                                   8448 	.area .debug_frame (NOLOAD)
      003991 00 00                 8449 	.dw	0
      003993 00 0E                 8450 	.dw	Ldebug_CIE41_end-Ldebug_CIE41_start
      003995                       8451 Ldebug_CIE41_start:
      003995 FF FF                 8452 	.dw	0xffff
      003997 FF FF                 8453 	.dw	0xffff
      003999 01                    8454 	.db	1
      00399A 00                    8455 	.db	0
      00399B 01                    8456 	.uleb128	1
      00399C 7F                    8457 	.sleb128	-1
      00399D 09                    8458 	.db	9
      00399E 0C                    8459 	.db	12
      00399F 08                    8460 	.uleb128	8
      0039A0 02                    8461 	.uleb128	2
      0039A1 89                    8462 	.db	137
      0039A2 01                    8463 	.uleb128	1
      0039A3                       8464 Ldebug_CIE41_end:
      0039A3 00 00 00 21           8465 	.dw	0,33
      0039A7 00 00 39 91           8466 	.dw	0,(Ldebug_CIE41_start-4)
      0039AB 00 00 9F 4B           8467 	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$64)	;initial loc
      0039AF 00 00 00 36           8468 	.dw	0,Sstm8s_tim2$TIM2_OC3Init$76-Sstm8s_tim2$TIM2_OC3Init$64
      0039B3 01                    8469 	.db	1
      0039B4 00 00 9F 4B           8470 	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$64)
      0039B8 0E                    8471 	.db	14
      0039B9 02                    8472 	.uleb128	2
      0039BA 01                    8473 	.db	1
      0039BB 00 00 9F 4C           8474 	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$65)
      0039BF 0E                    8475 	.db	14
      0039C0 04                    8476 	.uleb128	4
      0039C1 01                    8477 	.db	1
      0039C2 00 00 9F 80           8478 	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$74)
      0039C6 0E                    8479 	.db	14
      0039C7 02                    8480 	.uleb128	2
                                   8481 
                                   8482 	.area .debug_frame (NOLOAD)
      0039C8 00 00                 8483 	.dw	0
      0039CA 00 0E                 8484 	.dw	Ldebug_CIE42_end-Ldebug_CIE42_start
      0039CC                       8485 Ldebug_CIE42_start:
      0039CC FF FF                 8486 	.dw	0xffff
      0039CE FF FF                 8487 	.dw	0xffff
      0039D0 01                    8488 	.db	1
      0039D1 00                    8489 	.db	0
      0039D2 01                    8490 	.uleb128	1
      0039D3 7F                    8491 	.sleb128	-1
      0039D4 09                    8492 	.db	9
      0039D5 0C                    8493 	.db	12
      0039D6 08                    8494 	.uleb128	8
      0039D7 02                    8495 	.uleb128	2
      0039D8 89                    8496 	.db	137
      0039D9 01                    8497 	.uleb128	1
      0039DA                       8498 Ldebug_CIE42_end:
      0039DA 00 00 00 21           8499 	.dw	0,33
      0039DE 00 00 39 C8           8500 	.dw	0,(Ldebug_CIE42_start-4)
      0039E2 00 00 9F 15           8501 	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$50)	;initial loc
      0039E6 00 00 00 36           8502 	.dw	0,Sstm8s_tim2$TIM2_OC2Init$62-Sstm8s_tim2$TIM2_OC2Init$50
      0039EA 01                    8503 	.db	1
      0039EB 00 00 9F 15           8504 	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$50)
      0039EF 0E                    8505 	.db	14
      0039F0 02                    8506 	.uleb128	2
      0039F1 01                    8507 	.db	1
      0039F2 00 00 9F 16           8508 	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$51)
      0039F6 0E                    8509 	.db	14
      0039F7 04                    8510 	.uleb128	4
      0039F8 01                    8511 	.db	1
      0039F9 00 00 9F 4A           8512 	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$60)
      0039FD 0E                    8513 	.db	14
      0039FE 02                    8514 	.uleb128	2
                                   8515 
                                   8516 	.area .debug_frame (NOLOAD)
      0039FF 00 00                 8517 	.dw	0
      003A01 00 0E                 8518 	.dw	Ldebug_CIE43_end-Ldebug_CIE43_start
      003A03                       8519 Ldebug_CIE43_start:
      003A03 FF FF                 8520 	.dw	0xffff
      003A05 FF FF                 8521 	.dw	0xffff
      003A07 01                    8522 	.db	1
      003A08 00                    8523 	.db	0
      003A09 01                    8524 	.uleb128	1
      003A0A 7F                    8525 	.sleb128	-1
      003A0B 09                    8526 	.db	9
      003A0C 0C                    8527 	.db	12
      003A0D 08                    8528 	.uleb128	8
      003A0E 02                    8529 	.uleb128	2
      003A0F 89                    8530 	.db	137
      003A10 01                    8531 	.uleb128	1
      003A11                       8532 Ldebug_CIE43_end:
      003A11 00 00 00 21           8533 	.dw	0,33
      003A15 00 00 39 FF           8534 	.dw	0,(Ldebug_CIE43_start-4)
      003A19 00 00 9E DF           8535 	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$36)	;initial loc
      003A1D 00 00 00 36           8536 	.dw	0,Sstm8s_tim2$TIM2_OC1Init$48-Sstm8s_tim2$TIM2_OC1Init$36
      003A21 01                    8537 	.db	1
      003A22 00 00 9E DF           8538 	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$36)
      003A26 0E                    8539 	.db	14
      003A27 02                    8540 	.uleb128	2
      003A28 01                    8541 	.db	1
      003A29 00 00 9E E0           8542 	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$37)
      003A2D 0E                    8543 	.db	14
      003A2E 04                    8544 	.uleb128	4
      003A2F 01                    8545 	.db	1
      003A30 00 00 9F 14           8546 	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$46)
      003A34 0E                    8547 	.db	14
      003A35 02                    8548 	.uleb128	2
                                   8549 
                                   8550 	.area .debug_frame (NOLOAD)
      003A36 00 00                 8551 	.dw	0
      003A38 00 0E                 8552 	.dw	Ldebug_CIE44_end-Ldebug_CIE44_start
      003A3A                       8553 Ldebug_CIE44_start:
      003A3A FF FF                 8554 	.dw	0xffff
      003A3C FF FF                 8555 	.dw	0xffff
      003A3E 01                    8556 	.db	1
      003A3F 00                    8557 	.db	0
      003A40 01                    8558 	.uleb128	1
      003A41 7F                    8559 	.sleb128	-1
      003A42 09                    8560 	.db	9
      003A43 0C                    8561 	.db	12
      003A44 08                    8562 	.uleb128	8
      003A45 02                    8563 	.uleb128	2
      003A46 89                    8564 	.db	137
      003A47 01                    8565 	.uleb128	1
      003A48                       8566 Ldebug_CIE44_end:
      003A48 00 00 00 13           8567 	.dw	0,19
      003A4C 00 00 3A 36           8568 	.dw	0,(Ldebug_CIE44_start-4)
      003A50 00 00 9E CD           8569 	.dw	0,(Sstm8s_tim2$TIM2_TimeBaseInit$28)	;initial loc
      003A54 00 00 00 12           8570 	.dw	0,Sstm8s_tim2$TIM2_TimeBaseInit$34-Sstm8s_tim2$TIM2_TimeBaseInit$28
      003A58 01                    8571 	.db	1
      003A59 00 00 9E CD           8572 	.dw	0,(Sstm8s_tim2$TIM2_TimeBaseInit$28)
      003A5D 0E                    8573 	.db	14
      003A5E 02                    8574 	.uleb128	2
                                   8575 
                                   8576 	.area .debug_frame (NOLOAD)
      003A5F 00 00                 8577 	.dw	0
      003A61 00 0E                 8578 	.dw	Ldebug_CIE45_end-Ldebug_CIE45_start
      003A63                       8579 Ldebug_CIE45_start:
      003A63 FF FF                 8580 	.dw	0xffff
      003A65 FF FF                 8581 	.dw	0xffff
      003A67 01                    8582 	.db	1
      003A68 00                    8583 	.db	0
      003A69 01                    8584 	.uleb128	1
      003A6A 7F                    8585 	.sleb128	-1
      003A6B 09                    8586 	.db	9
      003A6C 0C                    8587 	.db	12
      003A6D 08                    8588 	.uleb128	8
      003A6E 02                    8589 	.uleb128	2
      003A6F 89                    8590 	.db	137
      003A70 01                    8591 	.uleb128	1
      003A71                       8592 Ldebug_CIE45_end:
      003A71 00 00 00 13           8593 	.dw	0,19
      003A75 00 00 3A 5F           8594 	.dw	0,(Ldebug_CIE45_start-4)
      003A79 00 00 9E 74           8595 	.dw	0,(Sstm8s_tim2$TIM2_DeInit$1)	;initial loc
      003A7D 00 00 00 59           8596 	.dw	0,Sstm8s_tim2$TIM2_DeInit$26-Sstm8s_tim2$TIM2_DeInit$1
      003A81 01                    8597 	.db	1
      003A82 00 00 9E 74           8598 	.dw	0,(Sstm8s_tim2$TIM2_DeInit$1)
      003A86 0E                    8599 	.db	14
      003A87 02                    8600 	.uleb128	2

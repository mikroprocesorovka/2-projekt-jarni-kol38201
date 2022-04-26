                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_adc2
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ADC2_DeInit
                                     12 	.globl _ADC2_Init
                                     13 	.globl _ADC2_Cmd
                                     14 	.globl _ADC2_ITConfig
                                     15 	.globl _ADC2_PrescalerConfig
                                     16 	.globl _ADC2_SchmittTriggerConfig
                                     17 	.globl _ADC2_ConversionConfig
                                     18 	.globl _ADC2_ExternalTriggerConfig
                                     19 	.globl _ADC2_StartConversion
                                     20 	.globl _ADC2_GetConversionValue
                                     21 	.globl _ADC2_GetFlagStatus
                                     22 	.globl _ADC2_ClearFlag
                                     23 	.globl _ADC2_GetITStatus
                                     24 	.globl _ADC2_ClearITPendingBit
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
                           000000    62 	Sstm8s_adc2$ADC2_DeInit$0 ==.
                                     63 ;	../SPL/src/stm8s_adc2.c: 54: void ADC2_DeInit(void)
                                     64 ; genLabel
                                     65 ;	-----------------------------------------
                                     66 ;	 function ADC2_DeInit
                                     67 ;	-----------------------------------------
                                     68 ;	Register assignment is optimal.
                                     69 ;	Stack space usage: 0 bytes.
      009C83                         70 _ADC2_DeInit:
                           000000    71 	Sstm8s_adc2$ADC2_DeInit$1 ==.
                           000000    72 	Sstm8s_adc2$ADC2_DeInit$2 ==.
                                     73 ;	../SPL/src/stm8s_adc2.c: 56: ADC2->CSR  = ADC2_CSR_RESET_VALUE;
                                     74 ; genPointerSet
      009C83 35 00 54 00      [ 1]   75 	mov	0x5400+0, #0x00
                           000004    76 	Sstm8s_adc2$ADC2_DeInit$3 ==.
                                     77 ;	../SPL/src/stm8s_adc2.c: 57: ADC2->CR1  = ADC2_CR1_RESET_VALUE;
                                     78 ; genPointerSet
      009C87 35 00 54 01      [ 1]   79 	mov	0x5401+0, #0x00
                           000008    80 	Sstm8s_adc2$ADC2_DeInit$4 ==.
                                     81 ;	../SPL/src/stm8s_adc2.c: 58: ADC2->CR2  = ADC2_CR2_RESET_VALUE;
                                     82 ; genPointerSet
      009C8B 35 00 54 02      [ 1]   83 	mov	0x5402+0, #0x00
                           00000C    84 	Sstm8s_adc2$ADC2_DeInit$5 ==.
                                     85 ;	../SPL/src/stm8s_adc2.c: 59: ADC2->TDRH = ADC2_TDRH_RESET_VALUE;
                                     86 ; genPointerSet
      009C8F 35 00 54 06      [ 1]   87 	mov	0x5406+0, #0x00
                           000010    88 	Sstm8s_adc2$ADC2_DeInit$6 ==.
                                     89 ;	../SPL/src/stm8s_adc2.c: 60: ADC2->TDRL = ADC2_TDRL_RESET_VALUE;
                                     90 ; genPointerSet
      009C93 35 00 54 07      [ 1]   91 	mov	0x5407+0, #0x00
                                     92 ; genLabel
      009C97                         93 00101$:
                           000014    94 	Sstm8s_adc2$ADC2_DeInit$7 ==.
                                     95 ;	../SPL/src/stm8s_adc2.c: 61: }
                                     96 ; genEndFunction
                           000014    97 	Sstm8s_adc2$ADC2_DeInit$8 ==.
                           000014    98 	XG$ADC2_DeInit$0$0 ==.
      009C97 81               [ 4]   99 	ret
                           000015   100 	Sstm8s_adc2$ADC2_DeInit$9 ==.
                           000015   101 	Sstm8s_adc2$ADC2_Init$10 ==.
                                    102 ;	../SPL/src/stm8s_adc2.c: 83: void ADC2_Init(ADC2_ConvMode_TypeDef ADC2_ConversionMode, ADC2_Channel_TypeDef ADC2_Channel, ADC2_PresSel_TypeDef ADC2_PrescalerSelection, ADC2_ExtTrig_TypeDef ADC2_ExtTrigger, FunctionalState ADC2_ExtTriggerState, ADC2_Align_TypeDef ADC2_Align, ADC2_SchmittTrigg_TypeDef ADC2_SchmittTriggerChannel, FunctionalState ADC2_SchmittTriggerState)
                                    103 ; genLabel
                                    104 ;	-----------------------------------------
                                    105 ;	 function ADC2_Init
                                    106 ;	-----------------------------------------
                                    107 ;	Register assignment is optimal.
                                    108 ;	Stack space usage: 0 bytes.
      009C98                        109 _ADC2_Init:
                           000015   110 	Sstm8s_adc2$ADC2_Init$11 ==.
                           000015   111 	Sstm8s_adc2$ADC2_Init$12 ==.
                                    112 ;	../SPL/src/stm8s_adc2.c: 98: ADC2_ConversionConfig(ADC2_ConversionMode, ADC2_Channel, ADC2_Align);
                                    113 ; genIPush
      009C98 7B 08            [ 1]  114 	ld	a, (0x08, sp)
      009C9A 88               [ 1]  115 	push	a
                           000018   116 	Sstm8s_adc2$ADC2_Init$13 ==.
                                    117 ; genIPush
      009C9B 7B 05            [ 1]  118 	ld	a, (0x05, sp)
      009C9D 88               [ 1]  119 	push	a
                           00001B   120 	Sstm8s_adc2$ADC2_Init$14 ==.
                                    121 ; genIPush
      009C9E 7B 05            [ 1]  122 	ld	a, (0x05, sp)
      009CA0 88               [ 1]  123 	push	a
                           00001E   124 	Sstm8s_adc2$ADC2_Init$15 ==.
                                    125 ; genCall
      009CA1 CD 9D 9F         [ 4]  126 	call	_ADC2_ConversionConfig
      009CA4 5B 03            [ 2]  127 	addw	sp, #3
                           000023   128 	Sstm8s_adc2$ADC2_Init$16 ==.
                           000023   129 	Sstm8s_adc2$ADC2_Init$17 ==.
                                    130 ;	../SPL/src/stm8s_adc2.c: 100: ADC2_PrescalerConfig(ADC2_PrescalerSelection);
                                    131 ; genIPush
      009CA6 7B 05            [ 1]  132 	ld	a, (0x05, sp)
      009CA8 88               [ 1]  133 	push	a
                           000026   134 	Sstm8s_adc2$ADC2_Init$18 ==.
                                    135 ; genCall
      009CA9 CD 9C FA         [ 4]  136 	call	_ADC2_PrescalerConfig
      009CAC 84               [ 1]  137 	pop	a
                           00002A   138 	Sstm8s_adc2$ADC2_Init$19 ==.
                           00002A   139 	Sstm8s_adc2$ADC2_Init$20 ==.
                                    140 ;	../SPL/src/stm8s_adc2.c: 105: ADC2_ExternalTriggerConfig(ADC2_ExtTrigger, ADC2_ExtTriggerState);
                                    141 ; genIPush
      009CAD 7B 07            [ 1]  142 	ld	a, (0x07, sp)
      009CAF 88               [ 1]  143 	push	a
                           00002D   144 	Sstm8s_adc2$ADC2_Init$21 ==.
                                    145 ; genIPush
      009CB0 7B 07            [ 1]  146 	ld	a, (0x07, sp)
      009CB2 88               [ 1]  147 	push	a
                           000030   148 	Sstm8s_adc2$ADC2_Init$22 ==.
                                    149 ; genCall
      009CB3 CD 9D DD         [ 4]  150 	call	_ADC2_ExternalTriggerConfig
      009CB6 85               [ 2]  151 	popw	x
                           000034   152 	Sstm8s_adc2$ADC2_Init$23 ==.
                           000034   153 	Sstm8s_adc2$ADC2_Init$24 ==.
                                    154 ;	../SPL/src/stm8s_adc2.c: 110: ADC2_SchmittTriggerConfig(ADC2_SchmittTriggerChannel, ADC2_SchmittTriggerState);
                                    155 ; genIPush
      009CB7 7B 0A            [ 1]  156 	ld	a, (0x0a, sp)
      009CB9 88               [ 1]  157 	push	a
                           000037   158 	Sstm8s_adc2$ADC2_Init$25 ==.
                                    159 ; genIPush
      009CBA 7B 0A            [ 1]  160 	ld	a, (0x0a, sp)
      009CBC 88               [ 1]  161 	push	a
                           00003A   162 	Sstm8s_adc2$ADC2_Init$26 ==.
                                    163 ; genCall
      009CBD CD 9D 0B         [ 4]  164 	call	_ADC2_SchmittTriggerConfig
      009CC0 85               [ 2]  165 	popw	x
                           00003E   166 	Sstm8s_adc2$ADC2_Init$27 ==.
                           00003E   167 	Sstm8s_adc2$ADC2_Init$28 ==.
                                    168 ;	../SPL/src/stm8s_adc2.c: 113: ADC2->CR1 |= ADC2_CR1_ADON;
                                    169 ; genPointerGet
      009CC1 C6 54 01         [ 1]  170 	ld	a, 0x5401
                                    171 ; genOr
      009CC4 AA 01            [ 1]  172 	or	a, #0x01
                                    173 ; genPointerSet
      009CC6 C7 54 01         [ 1]  174 	ld	0x5401, a
                                    175 ; genLabel
      009CC9                        176 00101$:
                           000046   177 	Sstm8s_adc2$ADC2_Init$29 ==.
                                    178 ;	../SPL/src/stm8s_adc2.c: 114: }
                                    179 ; genEndFunction
                           000046   180 	Sstm8s_adc2$ADC2_Init$30 ==.
                           000046   181 	XG$ADC2_Init$0$0 ==.
      009CC9 81               [ 4]  182 	ret
                           000047   183 	Sstm8s_adc2$ADC2_Init$31 ==.
                           000047   184 	Sstm8s_adc2$ADC2_Cmd$32 ==.
                                    185 ;	../SPL/src/stm8s_adc2.c: 121: void ADC2_Cmd(FunctionalState NewState)
                                    186 ; genLabel
                                    187 ;	-----------------------------------------
                                    188 ;	 function ADC2_Cmd
                                    189 ;	-----------------------------------------
                                    190 ;	Register assignment is optimal.
                                    191 ;	Stack space usage: 0 bytes.
      009CCA                        192 _ADC2_Cmd:
                           000047   193 	Sstm8s_adc2$ADC2_Cmd$33 ==.
                           000047   194 	Sstm8s_adc2$ADC2_Cmd$34 ==.
                                    195 ;	../SPL/src/stm8s_adc2.c: 128: ADC2->CR1 |= ADC2_CR1_ADON;
                                    196 ; genPointerGet
      009CCA C6 54 01         [ 1]  197 	ld	a, 0x5401
                           00004A   198 	Sstm8s_adc2$ADC2_Cmd$35 ==.
                                    199 ;	../SPL/src/stm8s_adc2.c: 126: if (NewState != DISABLE)
                                    200 ; genIfx
      009CCD 0D 03            [ 1]  201 	tnz	(0x03, sp)
      009CCF 26 03            [ 1]  202 	jrne	00111$
      009CD1 CC 9C DC         [ 2]  203 	jp	00102$
      009CD4                        204 00111$:
                           000051   205 	Sstm8s_adc2$ADC2_Cmd$36 ==.
                           000051   206 	Sstm8s_adc2$ADC2_Cmd$37 ==.
                                    207 ;	../SPL/src/stm8s_adc2.c: 128: ADC2->CR1 |= ADC2_CR1_ADON;
                                    208 ; genOr
      009CD4 AA 01            [ 1]  209 	or	a, #0x01
                                    210 ; genPointerSet
      009CD6 C7 54 01         [ 1]  211 	ld	0x5401, a
                           000056   212 	Sstm8s_adc2$ADC2_Cmd$38 ==.
                                    213 ; genGoto
      009CD9 CC 9C E1         [ 2]  214 	jp	00104$
                                    215 ; genLabel
      009CDC                        216 00102$:
                           000059   217 	Sstm8s_adc2$ADC2_Cmd$39 ==.
                           000059   218 	Sstm8s_adc2$ADC2_Cmd$40 ==.
                                    219 ;	../SPL/src/stm8s_adc2.c: 132: ADC2->CR1 &= (uint8_t)(~ADC2_CR1_ADON);
                                    220 ; genAnd
      009CDC A4 FE            [ 1]  221 	and	a, #0xfe
                                    222 ; genPointerSet
      009CDE C7 54 01         [ 1]  223 	ld	0x5401, a
                           00005E   224 	Sstm8s_adc2$ADC2_Cmd$41 ==.
                                    225 ; genLabel
      009CE1                        226 00104$:
                           00005E   227 	Sstm8s_adc2$ADC2_Cmd$42 ==.
                                    228 ;	../SPL/src/stm8s_adc2.c: 134: }
                                    229 ; genEndFunction
                           00005E   230 	Sstm8s_adc2$ADC2_Cmd$43 ==.
                           00005E   231 	XG$ADC2_Cmd$0$0 ==.
      009CE1 81               [ 4]  232 	ret
                           00005F   233 	Sstm8s_adc2$ADC2_Cmd$44 ==.
                           00005F   234 	Sstm8s_adc2$ADC2_ITConfig$45 ==.
                                    235 ;	../SPL/src/stm8s_adc2.c: 141: void ADC2_ITConfig(FunctionalState NewState)
                                    236 ; genLabel
                                    237 ;	-----------------------------------------
                                    238 ;	 function ADC2_ITConfig
                                    239 ;	-----------------------------------------
                                    240 ;	Register assignment is optimal.
                                    241 ;	Stack space usage: 0 bytes.
      009CE2                        242 _ADC2_ITConfig:
                           00005F   243 	Sstm8s_adc2$ADC2_ITConfig$46 ==.
                           00005F   244 	Sstm8s_adc2$ADC2_ITConfig$47 ==.
                                    245 ;	../SPL/src/stm8s_adc2.c: 149: ADC2->CSR |= (uint8_t)ADC2_CSR_EOCIE;
                                    246 ; genPointerGet
      009CE2 C6 54 00         [ 1]  247 	ld	a, 0x5400
                           000062   248 	Sstm8s_adc2$ADC2_ITConfig$48 ==.
                                    249 ;	../SPL/src/stm8s_adc2.c: 146: if (NewState != DISABLE)
                                    250 ; genIfx
      009CE5 0D 03            [ 1]  251 	tnz	(0x03, sp)
      009CE7 26 03            [ 1]  252 	jrne	00111$
      009CE9 CC 9C F4         [ 2]  253 	jp	00102$
      009CEC                        254 00111$:
                           000069   255 	Sstm8s_adc2$ADC2_ITConfig$49 ==.
                           000069   256 	Sstm8s_adc2$ADC2_ITConfig$50 ==.
                                    257 ;	../SPL/src/stm8s_adc2.c: 149: ADC2->CSR |= (uint8_t)ADC2_CSR_EOCIE;
                                    258 ; genOr
      009CEC AA 20            [ 1]  259 	or	a, #0x20
                                    260 ; genPointerSet
      009CEE C7 54 00         [ 1]  261 	ld	0x5400, a
                           00006E   262 	Sstm8s_adc2$ADC2_ITConfig$51 ==.
                                    263 ; genGoto
      009CF1 CC 9C F9         [ 2]  264 	jp	00104$
                                    265 ; genLabel
      009CF4                        266 00102$:
                           000071   267 	Sstm8s_adc2$ADC2_ITConfig$52 ==.
                           000071   268 	Sstm8s_adc2$ADC2_ITConfig$53 ==.
                                    269 ;	../SPL/src/stm8s_adc2.c: 154: ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOCIE);
                                    270 ; genAnd
      009CF4 A4 DF            [ 1]  271 	and	a, #0xdf
                                    272 ; genPointerSet
      009CF6 C7 54 00         [ 1]  273 	ld	0x5400, a
                           000076   274 	Sstm8s_adc2$ADC2_ITConfig$54 ==.
                                    275 ; genLabel
      009CF9                        276 00104$:
                           000076   277 	Sstm8s_adc2$ADC2_ITConfig$55 ==.
                                    278 ;	../SPL/src/stm8s_adc2.c: 156: }
                                    279 ; genEndFunction
                           000076   280 	Sstm8s_adc2$ADC2_ITConfig$56 ==.
                           000076   281 	XG$ADC2_ITConfig$0$0 ==.
      009CF9 81               [ 4]  282 	ret
                           000077   283 	Sstm8s_adc2$ADC2_ITConfig$57 ==.
                           000077   284 	Sstm8s_adc2$ADC2_PrescalerConfig$58 ==.
                                    285 ;	../SPL/src/stm8s_adc2.c: 164: void ADC2_PrescalerConfig(ADC2_PresSel_TypeDef ADC2_Prescaler)
                                    286 ; genLabel
                                    287 ;	-----------------------------------------
                                    288 ;	 function ADC2_PrescalerConfig
                                    289 ;	-----------------------------------------
                                    290 ;	Register assignment is optimal.
                                    291 ;	Stack space usage: 0 bytes.
      009CFA                        292 _ADC2_PrescalerConfig:
                           000077   293 	Sstm8s_adc2$ADC2_PrescalerConfig$59 ==.
                           000077   294 	Sstm8s_adc2$ADC2_PrescalerConfig$60 ==.
                                    295 ;	../SPL/src/stm8s_adc2.c: 170: ADC2->CR1 &= (uint8_t)(~ADC2_CR1_SPSEL);
                                    296 ; genPointerGet
      009CFA C6 54 01         [ 1]  297 	ld	a, 0x5401
                                    298 ; genAnd
      009CFD A4 8F            [ 1]  299 	and	a, #0x8f
                                    300 ; genPointerSet
      009CFF C7 54 01         [ 1]  301 	ld	0x5401, a
                           00007F   302 	Sstm8s_adc2$ADC2_PrescalerConfig$61 ==.
                                    303 ;	../SPL/src/stm8s_adc2.c: 172: ADC2->CR1 |= (uint8_t)(ADC2_Prescaler);
                                    304 ; genPointerGet
      009D02 C6 54 01         [ 1]  305 	ld	a, 0x5401
                                    306 ; genOr
      009D05 1A 03            [ 1]  307 	or	a, (0x03, sp)
                                    308 ; genPointerSet
      009D07 C7 54 01         [ 1]  309 	ld	0x5401, a
                                    310 ; genLabel
      009D0A                        311 00101$:
                           000087   312 	Sstm8s_adc2$ADC2_PrescalerConfig$62 ==.
                                    313 ;	../SPL/src/stm8s_adc2.c: 173: }
                                    314 ; genEndFunction
                           000087   315 	Sstm8s_adc2$ADC2_PrescalerConfig$63 ==.
                           000087   316 	XG$ADC2_PrescalerConfig$0$0 ==.
      009D0A 81               [ 4]  317 	ret
                           000088   318 	Sstm8s_adc2$ADC2_PrescalerConfig$64 ==.
                           000088   319 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$65 ==.
                                    320 ;	../SPL/src/stm8s_adc2.c: 183: void ADC2_SchmittTriggerConfig(ADC2_SchmittTrigg_TypeDef ADC2_SchmittTriggerChannel, FunctionalState NewState)
                                    321 ; genLabel
                                    322 ;	-----------------------------------------
                                    323 ;	 function ADC2_SchmittTriggerConfig
                                    324 ;	-----------------------------------------
                                    325 ;	Register assignment is optimal.
                                    326 ;	Stack space usage: 1 bytes.
      009D0B                        327 _ADC2_SchmittTriggerConfig:
                           000088   328 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$66 ==.
      009D0B 88               [ 1]  329 	push	a
                           000089   330 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$67 ==.
                           000089   331 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$68 ==.
                                    332 ;	../SPL/src/stm8s_adc2.c: 189: if (ADC2_SchmittTriggerChannel == ADC2_SCHMITTTRIG_ALL)
                                    333 ; genCmpEQorNE
      009D0C 7B 04            [ 1]  334 	ld	a, (0x04, sp)
      009D0E A1 1F            [ 1]  335 	cp	a, #0x1f
      009D10 26 03            [ 1]  336 	jrne	00144$
      009D12 CC 9D 18         [ 2]  337 	jp	00145$
      009D15                        338 00144$:
      009D15 CC 9D 3E         [ 2]  339 	jp	00114$
      009D18                        340 00145$:
                           000095   341 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$69 ==.
                                    342 ; skipping generated iCode
                           000095   343 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$70 ==.
                                    344 ;	../SPL/src/stm8s_adc2.c: 193: ADC2->TDRL &= (uint8_t)0x0;
                                    345 ; genPointerGet
                                    346 ; Dummy read
      009D18 C6 54 07         [ 1]  347 	ld	a, 0x5407
                           000098   348 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$71 ==.
                           000098   349 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$72 ==.
                                    350 ;	../SPL/src/stm8s_adc2.c: 191: if (NewState != DISABLE)
                                    351 ; genIfx
      009D1B 0D 05            [ 1]  352 	tnz	(0x05, sp)
      009D1D 26 03            [ 1]  353 	jrne	00146$
      009D1F CC 9D 30         [ 2]  354 	jp	00102$
      009D22                        355 00146$:
                           00009F   356 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$73 ==.
                           00009F   357 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$74 ==.
                                    358 ;	../SPL/src/stm8s_adc2.c: 193: ADC2->TDRL &= (uint8_t)0x0;
                                    359 ; genPointerSet
      009D22 35 00 54 07      [ 1]  360 	mov	0x5407+0, #0x00
                           0000A3   361 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$75 ==.
                                    362 ;	../SPL/src/stm8s_adc2.c: 194: ADC2->TDRH &= (uint8_t)0x0;
                                    363 ; genPointerGet
                                    364 ; Dummy read
      009D26 C6 54 06         [ 1]  365 	ld	a, 0x5406
                                    366 ; genPointerSet
      009D29 35 00 54 06      [ 1]  367 	mov	0x5406+0, #0x00
                           0000AA   368 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$76 ==.
                                    369 ; genGoto
      009D2D CC 9D 9D         [ 2]  370 	jp	00116$
                                    371 ; genLabel
      009D30                        372 00102$:
                           0000AD   373 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$77 ==.
                           0000AD   374 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$78 ==.
                                    375 ;	../SPL/src/stm8s_adc2.c: 198: ADC2->TDRL |= (uint8_t)0xFF;
                                    376 ; genPointerSet
      009D30 35 FF 54 07      [ 1]  377 	mov	0x5407+0, #0xff
                           0000B1   378 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$79 ==.
                                    379 ;	../SPL/src/stm8s_adc2.c: 199: ADC2->TDRH |= (uint8_t)0xFF;
                                    380 ; genPointerGet
                                    381 ; Dummy read
      009D34 C6 54 06         [ 1]  382 	ld	a, 0x5406
                                    383 ; genPointerSet
      009D37 35 FF 54 06      [ 1]  384 	mov	0x5406+0, #0xff
                           0000B8   385 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$80 ==.
                                    386 ; genGoto
      009D3B CC 9D 9D         [ 2]  387 	jp	00116$
                                    388 ; genLabel
      009D3E                        389 00114$:
                           0000BB   390 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$81 ==.
                                    391 ;	../SPL/src/stm8s_adc2.c: 202: else if (ADC2_SchmittTriggerChannel < ADC2_SCHMITTTRIG_CHANNEL8)
                                    392 ; genCmp
                                    393 ; genCmpTop
      009D3E 7B 04            [ 1]  394 	ld	a, (0x04, sp)
      009D40 A1 08            [ 1]  395 	cp	a, #0x08
      009D42 25 03            [ 1]  396 	jrc	00147$
      009D44 CC 9D 71         [ 2]  397 	jp	00111$
      009D47                        398 00147$:
                                    399 ; skipping generated iCode
                           0000C4   400 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$82 ==.
                                    401 ;	../SPL/src/stm8s_adc2.c: 193: ADC2->TDRL &= (uint8_t)0x0;
                                    402 ; genPointerGet
      009D47 C6 54 07         [ 1]  403 	ld	a, 0x5407
      009D4A 6B 01            [ 1]  404 	ld	(0x01, sp), a
                           0000C9   405 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$83 ==.
                                    406 ;	../SPL/src/stm8s_adc2.c: 206: ADC2->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel));
                                    407 ; genLeftShift
      009D4C A6 01            [ 1]  408 	ld	a, #0x01
      009D4E 88               [ 1]  409 	push	a
                           0000CC   410 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$84 ==.
      009D4F 7B 05            [ 1]  411 	ld	a, (0x05, sp)
      009D51 27 05            [ 1]  412 	jreq	00149$
      009D53                        413 00148$:
      009D53 08 01            [ 1]  414 	sll	(1, sp)
      009D55 4A               [ 1]  415 	dec	a
      009D56 26 FB            [ 1]  416 	jrne	00148$
      009D58                        417 00149$:
      009D58 84               [ 1]  418 	pop	a
                           0000D6   419 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$85 ==.
                           0000D6   420 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$86 ==.
                           0000D6   421 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$87 ==.
                                    422 ;	../SPL/src/stm8s_adc2.c: 204: if (NewState != DISABLE)
                                    423 ; genIfx
      009D59 0D 05            [ 1]  424 	tnz	(0x05, sp)
      009D5B 26 03            [ 1]  425 	jrne	00150$
      009D5D CC 9D 69         [ 2]  426 	jp	00105$
      009D60                        427 00150$:
                           0000DD   428 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$88 ==.
                           0000DD   429 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$89 ==.
                                    430 ;	../SPL/src/stm8s_adc2.c: 206: ADC2->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel));
                                    431 ; genCpl
      009D60 43               [ 1]  432 	cpl	a
                                    433 ; genAnd
      009D61 14 01            [ 1]  434 	and	a, (0x01, sp)
                                    435 ; genPointerSet
      009D63 C7 54 07         [ 1]  436 	ld	0x5407, a
                           0000E3   437 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$90 ==.
                                    438 ; genGoto
      009D66 CC 9D 9D         [ 2]  439 	jp	00116$
                                    440 ; genLabel
      009D69                        441 00105$:
                           0000E6   442 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$91 ==.
                           0000E6   443 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$92 ==.
                                    444 ;	../SPL/src/stm8s_adc2.c: 210: ADC2->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel);
                                    445 ; genOr
      009D69 1A 01            [ 1]  446 	or	a, (0x01, sp)
                                    447 ; genPointerSet
      009D6B C7 54 07         [ 1]  448 	ld	0x5407, a
                           0000EB   449 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$93 ==.
                                    450 ; genGoto
      009D6E CC 9D 9D         [ 2]  451 	jp	00116$
                                    452 ; genLabel
      009D71                        453 00111$:
                           0000EE   454 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$94 ==.
                                    455 ;	../SPL/src/stm8s_adc2.c: 194: ADC2->TDRH &= (uint8_t)0x0;
                                    456 ; genPointerGet
      009D71 C6 54 06         [ 1]  457 	ld	a, 0x5406
      009D74 6B 01            [ 1]  458 	ld	(0x01, sp), a
                           0000F3   459 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$95 ==.
                                    460 ;	../SPL/src/stm8s_adc2.c: 217: ADC2->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8)));
                                    461 ; genMinus
      009D76 7B 04            [ 1]  462 	ld	a, (0x04, sp)
      009D78 A0 08            [ 1]  463 	sub	a, #0x08
      009D7A 97               [ 1]  464 	ld	xl, a
                                    465 ; genLeftShift
      009D7B A6 01            [ 1]  466 	ld	a, #0x01
      009D7D 88               [ 1]  467 	push	a
                           0000FB   468 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$96 ==.
      009D7E 9F               [ 1]  469 	ld	a, xl
      009D7F 4D               [ 1]  470 	tnz	a
      009D80 27 05            [ 1]  471 	jreq	00152$
      009D82                        472 00151$:
      009D82 08 01            [ 1]  473 	sll	(1, sp)
      009D84 4A               [ 1]  474 	dec	a
      009D85 26 FB            [ 1]  475 	jrne	00151$
      009D87                        476 00152$:
      009D87 84               [ 1]  477 	pop	a
                           000105   478 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$97 ==.
                           000105   479 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$98 ==.
                           000105   480 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$99 ==.
                                    481 ;	../SPL/src/stm8s_adc2.c: 215: if (NewState != DISABLE)
                                    482 ; genIfx
      009D88 0D 05            [ 1]  483 	tnz	(0x05, sp)
      009D8A 26 03            [ 1]  484 	jrne	00153$
      009D8C CC 9D 98         [ 2]  485 	jp	00108$
      009D8F                        486 00153$:
                           00010C   487 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$100 ==.
                           00010C   488 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$101 ==.
                                    489 ;	../SPL/src/stm8s_adc2.c: 217: ADC2->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8)));
                                    490 ; genCpl
      009D8F 43               [ 1]  491 	cpl	a
                                    492 ; genAnd
      009D90 14 01            [ 1]  493 	and	a, (0x01, sp)
                                    494 ; genPointerSet
      009D92 C7 54 06         [ 1]  495 	ld	0x5406, a
                           000112   496 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$102 ==.
                                    497 ; genGoto
      009D95 CC 9D 9D         [ 2]  498 	jp	00116$
                                    499 ; genLabel
      009D98                        500 00108$:
                           000115   501 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$103 ==.
                           000115   502 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$104 ==.
                                    503 ;	../SPL/src/stm8s_adc2.c: 221: ADC2->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8));
                                    504 ; genOr
      009D98 1A 01            [ 1]  505 	or	a, (0x01, sp)
                                    506 ; genPointerSet
      009D9A C7 54 06         [ 1]  507 	ld	0x5406, a
                           00011A   508 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$105 ==.
                                    509 ; genLabel
      009D9D                        510 00116$:
                           00011A   511 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$106 ==.
                                    512 ;	../SPL/src/stm8s_adc2.c: 224: }
                                    513 ; genEndFunction
      009D9D 84               [ 1]  514 	pop	a
                           00011B   515 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$107 ==.
                           00011B   516 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$108 ==.
                           00011B   517 	XG$ADC2_SchmittTriggerConfig$0$0 ==.
      009D9E 81               [ 4]  518 	ret
                           00011C   519 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$109 ==.
                           00011C   520 	Sstm8s_adc2$ADC2_ConversionConfig$110 ==.
                                    521 ;	../SPL/src/stm8s_adc2.c: 236: void ADC2_ConversionConfig(ADC2_ConvMode_TypeDef ADC2_ConversionMode, ADC2_Channel_TypeDef ADC2_Channel, ADC2_Align_TypeDef ADC2_Align)
                                    522 ; genLabel
                                    523 ;	-----------------------------------------
                                    524 ;	 function ADC2_ConversionConfig
                                    525 ;	-----------------------------------------
                                    526 ;	Register assignment is optimal.
                                    527 ;	Stack space usage: 0 bytes.
      009D9F                        528 _ADC2_ConversionConfig:
                           00011C   529 	Sstm8s_adc2$ADC2_ConversionConfig$111 ==.
                           00011C   530 	Sstm8s_adc2$ADC2_ConversionConfig$112 ==.
                                    531 ;	../SPL/src/stm8s_adc2.c: 244: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_ALIGN);
                                    532 ; genPointerGet
      009D9F C6 54 02         [ 1]  533 	ld	a, 0x5402
                                    534 ; genAnd
      009DA2 A4 F7            [ 1]  535 	and	a, #0xf7
                                    536 ; genPointerSet
      009DA4 C7 54 02         [ 1]  537 	ld	0x5402, a
                           000124   538 	Sstm8s_adc2$ADC2_ConversionConfig$113 ==.
                                    539 ;	../SPL/src/stm8s_adc2.c: 246: ADC2->CR2 |= (uint8_t)(ADC2_Align);
                                    540 ; genPointerGet
      009DA7 C6 54 02         [ 1]  541 	ld	a, 0x5402
                                    542 ; genOr
      009DAA 1A 05            [ 1]  543 	or	a, (0x05, sp)
                                    544 ; genPointerSet
      009DAC C7 54 02         [ 1]  545 	ld	0x5402, a
                           00012C   546 	Sstm8s_adc2$ADC2_ConversionConfig$114 ==.
                                    547 ;	../SPL/src/stm8s_adc2.c: 251: ADC2->CR1 |= ADC2_CR1_CONT;
                                    548 ; genPointerGet
      009DAF C6 54 01         [ 1]  549 	ld	a, 0x5401
                           00012F   550 	Sstm8s_adc2$ADC2_ConversionConfig$115 ==.
                                    551 ;	../SPL/src/stm8s_adc2.c: 248: if (ADC2_ConversionMode == ADC2_CONVERSIONMODE_CONTINUOUS)
                                    552 ; genCmpEQorNE
      009DB2 88               [ 1]  553 	push	a
                           000130   554 	Sstm8s_adc2$ADC2_ConversionConfig$116 ==.
      009DB3 7B 04            [ 1]  555 	ld	a, (0x04, sp)
      009DB5 4A               [ 1]  556 	dec	a
      009DB6 84               [ 1]  557 	pop	a
                           000134   558 	Sstm8s_adc2$ADC2_ConversionConfig$117 ==.
      009DB7 26 03            [ 1]  559 	jrne	00112$
      009DB9 CC 9D BF         [ 2]  560 	jp	00113$
      009DBC                        561 00112$:
      009DBC CC 9D C7         [ 2]  562 	jp	00102$
      009DBF                        563 00113$:
                           00013C   564 	Sstm8s_adc2$ADC2_ConversionConfig$118 ==.
                                    565 ; skipping generated iCode
                           00013C   566 	Sstm8s_adc2$ADC2_ConversionConfig$119 ==.
                           00013C   567 	Sstm8s_adc2$ADC2_ConversionConfig$120 ==.
                                    568 ;	../SPL/src/stm8s_adc2.c: 251: ADC2->CR1 |= ADC2_CR1_CONT;
                                    569 ; genOr
      009DBF AA 02            [ 1]  570 	or	a, #0x02
                                    571 ; genPointerSet
      009DC1 C7 54 01         [ 1]  572 	ld	0x5401, a
                           000141   573 	Sstm8s_adc2$ADC2_ConversionConfig$121 ==.
                                    574 ; genGoto
      009DC4 CC 9D CC         [ 2]  575 	jp	00103$
                                    576 ; genLabel
      009DC7                        577 00102$:
                           000144   578 	Sstm8s_adc2$ADC2_ConversionConfig$122 ==.
                           000144   579 	Sstm8s_adc2$ADC2_ConversionConfig$123 ==.
                                    580 ;	../SPL/src/stm8s_adc2.c: 256: ADC2->CR1 &= (uint8_t)(~ADC2_CR1_CONT);
                                    581 ; genAnd
      009DC7 A4 FD            [ 1]  582 	and	a, #0xfd
                                    583 ; genPointerSet
      009DC9 C7 54 01         [ 1]  584 	ld	0x5401, a
                           000149   585 	Sstm8s_adc2$ADC2_ConversionConfig$124 ==.
                                    586 ; genLabel
      009DCC                        587 00103$:
                           000149   588 	Sstm8s_adc2$ADC2_ConversionConfig$125 ==.
                                    589 ;	../SPL/src/stm8s_adc2.c: 260: ADC2->CSR &= (uint8_t)(~ADC2_CSR_CH);
                                    590 ; genPointerGet
      009DCC C6 54 00         [ 1]  591 	ld	a, 0x5400
                                    592 ; genAnd
      009DCF A4 F0            [ 1]  593 	and	a, #0xf0
                                    594 ; genPointerSet
      009DD1 C7 54 00         [ 1]  595 	ld	0x5400, a
                           000151   596 	Sstm8s_adc2$ADC2_ConversionConfig$126 ==.
                                    597 ;	../SPL/src/stm8s_adc2.c: 262: ADC2->CSR |= (uint8_t)(ADC2_Channel);
                                    598 ; genPointerGet
      009DD4 C6 54 00         [ 1]  599 	ld	a, 0x5400
                                    600 ; genOr
      009DD7 1A 04            [ 1]  601 	or	a, (0x04, sp)
                                    602 ; genPointerSet
      009DD9 C7 54 00         [ 1]  603 	ld	0x5400, a
                                    604 ; genLabel
      009DDC                        605 00104$:
                           000159   606 	Sstm8s_adc2$ADC2_ConversionConfig$127 ==.
                                    607 ;	../SPL/src/stm8s_adc2.c: 263: }
                                    608 ; genEndFunction
                           000159   609 	Sstm8s_adc2$ADC2_ConversionConfig$128 ==.
                           000159   610 	XG$ADC2_ConversionConfig$0$0 ==.
      009DDC 81               [ 4]  611 	ret
                           00015A   612 	Sstm8s_adc2$ADC2_ConversionConfig$129 ==.
                           00015A   613 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$130 ==.
                                    614 ;	../SPL/src/stm8s_adc2.c: 275: void ADC2_ExternalTriggerConfig(ADC2_ExtTrig_TypeDef ADC2_ExtTrigger, FunctionalState NewState)
                                    615 ; genLabel
                                    616 ;	-----------------------------------------
                                    617 ;	 function ADC2_ExternalTriggerConfig
                                    618 ;	-----------------------------------------
                                    619 ;	Register assignment is optimal.
                                    620 ;	Stack space usage: 0 bytes.
      009DDD                        621 _ADC2_ExternalTriggerConfig:
                           00015A   622 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$131 ==.
                           00015A   623 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$132 ==.
                                    624 ;	../SPL/src/stm8s_adc2.c: 282: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_EXTSEL);
                                    625 ; genPointerGet
      009DDD C6 54 02         [ 1]  626 	ld	a, 0x5402
                                    627 ; genAnd
      009DE0 A4 CF            [ 1]  628 	and	a, #0xcf
                                    629 ; genPointerSet
      009DE2 C7 54 02         [ 1]  630 	ld	0x5402, a
                                    631 ; genPointerGet
      009DE5 C6 54 02         [ 1]  632 	ld	a, 0x5402
                           000165   633 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$133 ==.
                                    634 ;	../SPL/src/stm8s_adc2.c: 284: if (NewState != DISABLE)
                                    635 ; genIfx
      009DE8 0D 04            [ 1]  636 	tnz	(0x04, sp)
      009DEA 26 03            [ 1]  637 	jrne	00111$
      009DEC CC 9D F7         [ 2]  638 	jp	00102$
      009DEF                        639 00111$:
                           00016C   640 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$134 ==.
                           00016C   641 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$135 ==.
                                    642 ;	../SPL/src/stm8s_adc2.c: 287: ADC2->CR2 |= (uint8_t)(ADC2_CR2_EXTTRIG);
                                    643 ; genOr
      009DEF AA 40            [ 1]  644 	or	a, #0x40
                                    645 ; genPointerSet
      009DF1 C7 54 02         [ 1]  646 	ld	0x5402, a
                           000171   647 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$136 ==.
                                    648 ; genGoto
      009DF4 CC 9D FC         [ 2]  649 	jp	00103$
                                    650 ; genLabel
      009DF7                        651 00102$:
                           000174   652 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$137 ==.
                           000174   653 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$138 ==.
                                    654 ;	../SPL/src/stm8s_adc2.c: 292: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_EXTTRIG);
                                    655 ; genAnd
      009DF7 A4 BF            [ 1]  656 	and	a, #0xbf
                                    657 ; genPointerSet
      009DF9 C7 54 02         [ 1]  658 	ld	0x5402, a
                           000179   659 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$139 ==.
                                    660 ; genLabel
      009DFC                        661 00103$:
                           000179   662 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$140 ==.
                                    663 ;	../SPL/src/stm8s_adc2.c: 296: ADC2->CR2 |= (uint8_t)(ADC2_ExtTrigger);
                                    664 ; genPointerGet
      009DFC C6 54 02         [ 1]  665 	ld	a, 0x5402
                                    666 ; genOr
      009DFF 1A 03            [ 1]  667 	or	a, (0x03, sp)
                                    668 ; genPointerSet
      009E01 C7 54 02         [ 1]  669 	ld	0x5402, a
                                    670 ; genLabel
      009E04                        671 00104$:
                           000181   672 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$141 ==.
                                    673 ;	../SPL/src/stm8s_adc2.c: 297: }
                                    674 ; genEndFunction
                           000181   675 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$142 ==.
                           000181   676 	XG$ADC2_ExternalTriggerConfig$0$0 ==.
      009E04 81               [ 4]  677 	ret
                           000182   678 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$143 ==.
                           000182   679 	Sstm8s_adc2$ADC2_StartConversion$144 ==.
                                    680 ;	../SPL/src/stm8s_adc2.c: 308: void ADC2_StartConversion(void)
                                    681 ; genLabel
                                    682 ;	-----------------------------------------
                                    683 ;	 function ADC2_StartConversion
                                    684 ;	-----------------------------------------
                                    685 ;	Register assignment is optimal.
                                    686 ;	Stack space usage: 0 bytes.
      009E05                        687 _ADC2_StartConversion:
                           000182   688 	Sstm8s_adc2$ADC2_StartConversion$145 ==.
                           000182   689 	Sstm8s_adc2$ADC2_StartConversion$146 ==.
                                    690 ;	../SPL/src/stm8s_adc2.c: 310: ADC2->CR1 |= ADC2_CR1_ADON;
                                    691 ; genPointerGet
      009E05 C6 54 01         [ 1]  692 	ld	a, 0x5401
                                    693 ; genOr
      009E08 AA 01            [ 1]  694 	or	a, #0x01
                                    695 ; genPointerSet
      009E0A C7 54 01         [ 1]  696 	ld	0x5401, a
                                    697 ; genLabel
      009E0D                        698 00101$:
                           00018A   699 	Sstm8s_adc2$ADC2_StartConversion$147 ==.
                                    700 ;	../SPL/src/stm8s_adc2.c: 311: }
                                    701 ; genEndFunction
                           00018A   702 	Sstm8s_adc2$ADC2_StartConversion$148 ==.
                           00018A   703 	XG$ADC2_StartConversion$0$0 ==.
      009E0D 81               [ 4]  704 	ret
                           00018B   705 	Sstm8s_adc2$ADC2_StartConversion$149 ==.
                           00018B   706 	Sstm8s_adc2$ADC2_GetConversionValue$150 ==.
                                    707 ;	../SPL/src/stm8s_adc2.c: 320: uint16_t ADC2_GetConversionValue(void)
                                    708 ; genLabel
                                    709 ;	-----------------------------------------
                                    710 ;	 function ADC2_GetConversionValue
                                    711 ;	-----------------------------------------
                                    712 ;	Register assignment might be sub-optimal.
                                    713 ;	Stack space usage: 4 bytes.
      009E0E                        714 _ADC2_GetConversionValue:
                           00018B   715 	Sstm8s_adc2$ADC2_GetConversionValue$151 ==.
      009E0E 52 04            [ 2]  716 	sub	sp, #4
                           00018D   717 	Sstm8s_adc2$ADC2_GetConversionValue$152 ==.
                           00018D   718 	Sstm8s_adc2$ADC2_GetConversionValue$153 ==.
                                    719 ;	../SPL/src/stm8s_adc2.c: 325: if ((ADC2->CR2 & ADC2_CR2_ALIGN) != 0) /* Right alignment */
                                    720 ; genPointerGet
      009E10 C6 54 02         [ 1]  721 	ld	a, 0x5402
                                    722 ; genAnd
      009E13 A5 08            [ 1]  723 	bcp	a, #0x08
      009E15 26 03            [ 1]  724 	jrne	00111$
      009E17 CC 9E 33         [ 2]  725 	jp	00102$
      009E1A                        726 00111$:
                                    727 ; skipping generated iCode
                           000197   728 	Sstm8s_adc2$ADC2_GetConversionValue$154 ==.
                           000197   729 	Sstm8s_adc2$ADC2_GetConversionValue$155 ==.
                                    730 ;	../SPL/src/stm8s_adc2.c: 328: templ = ADC2->DRL;
                                    731 ; genPointerGet
      009E1A C6 54 05         [ 1]  732 	ld	a, 0x5405
      009E1D 97               [ 1]  733 	ld	xl, a
                           00019B   734 	Sstm8s_adc2$ADC2_GetConversionValue$156 ==.
                                    735 ;	../SPL/src/stm8s_adc2.c: 330: temph = ADC2->DRH;
                                    736 ; genPointerGet
      009E1E C6 54 04         [ 1]  737 	ld	a, 0x5404
                                    738 ; genCast
                                    739 ; genAssign
      009E21 90 5F            [ 1]  740 	clrw	y
                                    741 ; genAssign
                           0001A0   742 	Sstm8s_adc2$ADC2_GetConversionValue$157 ==.
                                    743 ;	../SPL/src/stm8s_adc2.c: 332: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
                                    744 ; genLeftShiftLiteral
      009E23 0F 02            [ 1]  745 	clr	(0x02, sp)
                                    746 ; genCast
                                    747 ; genAssign
      009E25 0F 03            [ 1]  748 	clr	(0x03, sp)
                                    749 ; genOr
      009E27 1A 03            [ 1]  750 	or	a, (0x03, sp)
      009E29 95               [ 1]  751 	ld	xh, a
      009E2A 9F               [ 1]  752 	ld	a, xl
      009E2B 1A 02            [ 1]  753 	or	a, (0x02, sp)
      009E2D 97               [ 1]  754 	ld	xl, a
                                    755 ; genAssign
      009E2E 1F 03            [ 2]  756 	ldw	(0x03, sp), x
                           0001AD   757 	Sstm8s_adc2$ADC2_GetConversionValue$158 ==.
                                    758 ; genGoto
      009E30 CC 9E 51         [ 2]  759 	jp	00103$
                                    760 ; genLabel
      009E33                        761 00102$:
                           0001B0   762 	Sstm8s_adc2$ADC2_GetConversionValue$159 ==.
                           0001B0   763 	Sstm8s_adc2$ADC2_GetConversionValue$160 ==.
                                    764 ;	../SPL/src/stm8s_adc2.c: 337: temph = ADC2->DRH;
                                    765 ; genPointerGet
      009E33 C6 54 04         [ 1]  766 	ld	a, 0x5404
                                    767 ; genCast
                                    768 ; genAssign
      009E36 5F               [ 1]  769 	clrw	x
      009E37 97               [ 1]  770 	ld	xl, a
                                    771 ; genAssign
      009E38 51               [ 1]  772 	exgw	x, y
                           0001B6   773 	Sstm8s_adc2$ADC2_GetConversionValue$161 ==.
                                    774 ;	../SPL/src/stm8s_adc2.c: 339: templ = ADC2->DRL;
                                    775 ; genPointerGet
      009E39 C6 54 05         [ 1]  776 	ld	a, 0x5405
                           0001B9   777 	Sstm8s_adc2$ADC2_GetConversionValue$162 ==.
                                    778 ;	../SPL/src/stm8s_adc2.c: 341: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
                                    779 ; genCast
                                    780 ; genAssign
      009E3C 5F               [ 1]  781 	clrw	x
      009E3D 97               [ 1]  782 	ld	xl, a
                                    783 ; genLeftShiftLiteral
      009E3E 58               [ 2]  784 	sllw	x
      009E3F 58               [ 2]  785 	sllw	x
      009E40 58               [ 2]  786 	sllw	x
      009E41 58               [ 2]  787 	sllw	x
      009E42 58               [ 2]  788 	sllw	x
      009E43 58               [ 2]  789 	sllw	x
      009E44 1F 03            [ 2]  790 	ldw	(0x03, sp), x
                                    791 ; genLeftShiftLiteral
      009E46 4F               [ 1]  792 	clr	a
                                    793 ; genOr
      009E47 1A 04            [ 1]  794 	or	a, (0x04, sp)
      009E49 97               [ 1]  795 	ld	xl, a
      009E4A 90 9F            [ 1]  796 	ld	a, yl
      009E4C 1A 03            [ 1]  797 	or	a, (0x03, sp)
      009E4E 95               [ 1]  798 	ld	xh, a
                                    799 ; genAssign
      009E4F 1F 03            [ 2]  800 	ldw	(0x03, sp), x
                           0001CE   801 	Sstm8s_adc2$ADC2_GetConversionValue$163 ==.
                                    802 ; genLabel
      009E51                        803 00103$:
                           0001CE   804 	Sstm8s_adc2$ADC2_GetConversionValue$164 ==.
                                    805 ;	../SPL/src/stm8s_adc2.c: 344: return ((uint16_t)temph);
                                    806 ; genReturn
      009E51 1E 03            [ 2]  807 	ldw	x, (0x03, sp)
                                    808 ; genLabel
      009E53                        809 00104$:
                           0001D0   810 	Sstm8s_adc2$ADC2_GetConversionValue$165 ==.
                                    811 ;	../SPL/src/stm8s_adc2.c: 345: }
                                    812 ; genEndFunction
      009E53 5B 04            [ 2]  813 	addw	sp, #4
                           0001D2   814 	Sstm8s_adc2$ADC2_GetConversionValue$166 ==.
                           0001D2   815 	Sstm8s_adc2$ADC2_GetConversionValue$167 ==.
                           0001D2   816 	XG$ADC2_GetConversionValue$0$0 ==.
      009E55 81               [ 4]  817 	ret
                           0001D3   818 	Sstm8s_adc2$ADC2_GetConversionValue$168 ==.
                           0001D3   819 	Sstm8s_adc2$ADC2_GetFlagStatus$169 ==.
                                    820 ;	../SPL/src/stm8s_adc2.c: 352: FlagStatus ADC2_GetFlagStatus(void)
                                    821 ; genLabel
                                    822 ;	-----------------------------------------
                                    823 ;	 function ADC2_GetFlagStatus
                                    824 ;	-----------------------------------------
                                    825 ;	Register assignment is optimal.
                                    826 ;	Stack space usage: 0 bytes.
      009E56                        827 _ADC2_GetFlagStatus:
                           0001D3   828 	Sstm8s_adc2$ADC2_GetFlagStatus$170 ==.
                           0001D3   829 	Sstm8s_adc2$ADC2_GetFlagStatus$171 ==.
                                    830 ;	../SPL/src/stm8s_adc2.c: 355: return (FlagStatus)(ADC2->CSR & ADC2_CSR_EOC);
                                    831 ; genPointerGet
      009E56 C6 54 00         [ 1]  832 	ld	a, 0x5400
                                    833 ; genAnd
      009E59 A4 80            [ 1]  834 	and	a, #0x80
                                    835 ; genReturn
                                    836 ; genLabel
      009E5B                        837 00101$:
                           0001D8   838 	Sstm8s_adc2$ADC2_GetFlagStatus$172 ==.
                                    839 ;	../SPL/src/stm8s_adc2.c: 356: }
                                    840 ; genEndFunction
                           0001D8   841 	Sstm8s_adc2$ADC2_GetFlagStatus$173 ==.
                           0001D8   842 	XG$ADC2_GetFlagStatus$0$0 ==.
      009E5B 81               [ 4]  843 	ret
                           0001D9   844 	Sstm8s_adc2$ADC2_GetFlagStatus$174 ==.
                           0001D9   845 	Sstm8s_adc2$ADC2_ClearFlag$175 ==.
                                    846 ;	../SPL/src/stm8s_adc2.c: 363: void ADC2_ClearFlag(void)
                                    847 ; genLabel
                                    848 ;	-----------------------------------------
                                    849 ;	 function ADC2_ClearFlag
                                    850 ;	-----------------------------------------
                                    851 ;	Register assignment is optimal.
                                    852 ;	Stack space usage: 0 bytes.
      009E5C                        853 _ADC2_ClearFlag:
                           0001D9   854 	Sstm8s_adc2$ADC2_ClearFlag$176 ==.
                           0001D9   855 	Sstm8s_adc2$ADC2_ClearFlag$177 ==.
                                    856 ;	../SPL/src/stm8s_adc2.c: 365: ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOC);
                                    857 ; genPointerGet
      009E5C C6 54 00         [ 1]  858 	ld	a, 0x5400
                                    859 ; genAnd
      009E5F A4 7F            [ 1]  860 	and	a, #0x7f
                                    861 ; genPointerSet
      009E61 C7 54 00         [ 1]  862 	ld	0x5400, a
                                    863 ; genLabel
      009E64                        864 00101$:
                           0001E1   865 	Sstm8s_adc2$ADC2_ClearFlag$178 ==.
                                    866 ;	../SPL/src/stm8s_adc2.c: 366: }
                                    867 ; genEndFunction
                           0001E1   868 	Sstm8s_adc2$ADC2_ClearFlag$179 ==.
                           0001E1   869 	XG$ADC2_ClearFlag$0$0 ==.
      009E64 81               [ 4]  870 	ret
                           0001E2   871 	Sstm8s_adc2$ADC2_ClearFlag$180 ==.
                           0001E2   872 	Sstm8s_adc2$ADC2_GetITStatus$181 ==.
                                    873 ;	../SPL/src/stm8s_adc2.c: 374: ITStatus ADC2_GetITStatus(void)
                                    874 ; genLabel
                                    875 ;	-----------------------------------------
                                    876 ;	 function ADC2_GetITStatus
                                    877 ;	-----------------------------------------
                                    878 ;	Register assignment is optimal.
                                    879 ;	Stack space usage: 0 bytes.
      009E65                        880 _ADC2_GetITStatus:
                           0001E2   881 	Sstm8s_adc2$ADC2_GetITStatus$182 ==.
                           0001E2   882 	Sstm8s_adc2$ADC2_GetITStatus$183 ==.
                                    883 ;	../SPL/src/stm8s_adc2.c: 376: return (ITStatus)(ADC2->CSR & ADC2_CSR_EOC);
                                    884 ; genPointerGet
      009E65 C6 54 00         [ 1]  885 	ld	a, 0x5400
                                    886 ; genAnd
      009E68 A4 80            [ 1]  887 	and	a, #0x80
                                    888 ; genReturn
                                    889 ; genLabel
      009E6A                        890 00101$:
                           0001E7   891 	Sstm8s_adc2$ADC2_GetITStatus$184 ==.
                                    892 ;	../SPL/src/stm8s_adc2.c: 377: }
                                    893 ; genEndFunction
                           0001E7   894 	Sstm8s_adc2$ADC2_GetITStatus$185 ==.
                           0001E7   895 	XG$ADC2_GetITStatus$0$0 ==.
      009E6A 81               [ 4]  896 	ret
                           0001E8   897 	Sstm8s_adc2$ADC2_GetITStatus$186 ==.
                           0001E8   898 	Sstm8s_adc2$ADC2_ClearITPendingBit$187 ==.
                                    899 ;	../SPL/src/stm8s_adc2.c: 384: void ADC2_ClearITPendingBit(void)
                                    900 ; genLabel
                                    901 ;	-----------------------------------------
                                    902 ;	 function ADC2_ClearITPendingBit
                                    903 ;	-----------------------------------------
                                    904 ;	Register assignment is optimal.
                                    905 ;	Stack space usage: 0 bytes.
      009E6B                        906 _ADC2_ClearITPendingBit:
                           0001E8   907 	Sstm8s_adc2$ADC2_ClearITPendingBit$188 ==.
                           0001E8   908 	Sstm8s_adc2$ADC2_ClearITPendingBit$189 ==.
                                    909 ;	../SPL/src/stm8s_adc2.c: 386: ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOC);
                                    910 ; genPointerGet
      009E6B C6 54 00         [ 1]  911 	ld	a, 0x5400
                                    912 ; genAnd
      009E6E A4 7F            [ 1]  913 	and	a, #0x7f
                                    914 ; genPointerSet
      009E70 C7 54 00         [ 1]  915 	ld	0x5400, a
                                    916 ; genLabel
      009E73                        917 00101$:
                           0001F0   918 	Sstm8s_adc2$ADC2_ClearITPendingBit$190 ==.
                                    919 ;	../SPL/src/stm8s_adc2.c: 387: }
                                    920 ; genEndFunction
                           0001F0   921 	Sstm8s_adc2$ADC2_ClearITPendingBit$191 ==.
                           0001F0   922 	XG$ADC2_ClearITPendingBit$0$0 ==.
      009E73 81               [ 4]  923 	ret
                           0001F1   924 	Sstm8s_adc2$ADC2_ClearITPendingBit$192 ==.
                                    925 	.area CODE
                                    926 	.area CONST
                                    927 	.area INITIALIZER
                                    928 	.area CABS (ABS)
                                    929 
                                    930 	.area .debug_line (NOLOAD)
      0028F2 00 00 03 3F            931 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0028F6                        932 Ldebug_line_start:
      0028F6 00 02                  933 	.dw	2
      0028F8 00 00 00 78            934 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0028FC 01                     935 	.db	1
      0028FD 01                     936 	.db	1
      0028FE FB                     937 	.db	-5
      0028FF 0F                     938 	.db	15
      002900 0A                     939 	.db	10
      002901 00                     940 	.db	0
      002902 01                     941 	.db	1
      002903 01                     942 	.db	1
      002904 01                     943 	.db	1
      002905 01                     944 	.db	1
      002906 00                     945 	.db	0
      002907 00                     946 	.db	0
      002908 00                     947 	.db	0
      002909 01                     948 	.db	1
      00290A 43 3A 5C 50 72 6F 67   949 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      002932 00                     950 	.db	0
      002933 43 3A 5C 50 72 6F 67   951 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      002956 00                     952 	.db	0
      002957 00                     953 	.db	0
      002958 2E 2E 2F 53 50 4C 2F   954 	.ascii "../SPL/src/stm8s_adc2.c"
             73 72 63 2F 73 74 6D
             38 73 5F 61 64 63 32
             2E 63
      00296F 00                     955 	.db	0
      002970 00                     956 	.uleb128	0
      002971 00                     957 	.uleb128	0
      002972 00                     958 	.uleb128	0
      002973 00                     959 	.db	0
      002974                        960 Ldebug_line_stmt:
      002974 00                     961 	.db	0
      002975 05                     962 	.uleb128	5
      002976 02                     963 	.db	2
      002977 00 00 9C 83            964 	.dw	0,(Sstm8s_adc2$ADC2_DeInit$0)
      00297B 03                     965 	.db	3
      00297C 35                     966 	.sleb128	53
      00297D 01                     967 	.db	1
      00297E 09                     968 	.db	9
      00297F 00 00                  969 	.dw	Sstm8s_adc2$ADC2_DeInit$2-Sstm8s_adc2$ADC2_DeInit$0
      002981 03                     970 	.db	3
      002982 02                     971 	.sleb128	2
      002983 01                     972 	.db	1
      002984 09                     973 	.db	9
      002985 00 04                  974 	.dw	Sstm8s_adc2$ADC2_DeInit$3-Sstm8s_adc2$ADC2_DeInit$2
      002987 03                     975 	.db	3
      002988 01                     976 	.sleb128	1
      002989 01                     977 	.db	1
      00298A 09                     978 	.db	9
      00298B 00 04                  979 	.dw	Sstm8s_adc2$ADC2_DeInit$4-Sstm8s_adc2$ADC2_DeInit$3
      00298D 03                     980 	.db	3
      00298E 01                     981 	.sleb128	1
      00298F 01                     982 	.db	1
      002990 09                     983 	.db	9
      002991 00 04                  984 	.dw	Sstm8s_adc2$ADC2_DeInit$5-Sstm8s_adc2$ADC2_DeInit$4
      002993 03                     985 	.db	3
      002994 01                     986 	.sleb128	1
      002995 01                     987 	.db	1
      002996 09                     988 	.db	9
      002997 00 04                  989 	.dw	Sstm8s_adc2$ADC2_DeInit$6-Sstm8s_adc2$ADC2_DeInit$5
      002999 03                     990 	.db	3
      00299A 01                     991 	.sleb128	1
      00299B 01                     992 	.db	1
      00299C 09                     993 	.db	9
      00299D 00 04                  994 	.dw	Sstm8s_adc2$ADC2_DeInit$7-Sstm8s_adc2$ADC2_DeInit$6
      00299F 03                     995 	.db	3
      0029A0 01                     996 	.sleb128	1
      0029A1 01                     997 	.db	1
      0029A2 09                     998 	.db	9
      0029A3 00 01                  999 	.dw	1+Sstm8s_adc2$ADC2_DeInit$8-Sstm8s_adc2$ADC2_DeInit$7
      0029A5 00                    1000 	.db	0
      0029A6 01                    1001 	.uleb128	1
      0029A7 01                    1002 	.db	1
      0029A8 00                    1003 	.db	0
      0029A9 05                    1004 	.uleb128	5
      0029AA 02                    1005 	.db	2
      0029AB 00 00 9C 98           1006 	.dw	0,(Sstm8s_adc2$ADC2_Init$10)
      0029AF 03                    1007 	.db	3
      0029B0 D2 00                 1008 	.sleb128	82
      0029B2 01                    1009 	.db	1
      0029B3 09                    1010 	.db	9
      0029B4 00 00                 1011 	.dw	Sstm8s_adc2$ADC2_Init$12-Sstm8s_adc2$ADC2_Init$10
      0029B6 03                    1012 	.db	3
      0029B7 0F                    1013 	.sleb128	15
      0029B8 01                    1014 	.db	1
      0029B9 09                    1015 	.db	9
      0029BA 00 0E                 1016 	.dw	Sstm8s_adc2$ADC2_Init$17-Sstm8s_adc2$ADC2_Init$12
      0029BC 03                    1017 	.db	3
      0029BD 02                    1018 	.sleb128	2
      0029BE 01                    1019 	.db	1
      0029BF 09                    1020 	.db	9
      0029C0 00 07                 1021 	.dw	Sstm8s_adc2$ADC2_Init$20-Sstm8s_adc2$ADC2_Init$17
      0029C2 03                    1022 	.db	3
      0029C3 05                    1023 	.sleb128	5
      0029C4 01                    1024 	.db	1
      0029C5 09                    1025 	.db	9
      0029C6 00 0A                 1026 	.dw	Sstm8s_adc2$ADC2_Init$24-Sstm8s_adc2$ADC2_Init$20
      0029C8 03                    1027 	.db	3
      0029C9 05                    1028 	.sleb128	5
      0029CA 01                    1029 	.db	1
      0029CB 09                    1030 	.db	9
      0029CC 00 0A                 1031 	.dw	Sstm8s_adc2$ADC2_Init$28-Sstm8s_adc2$ADC2_Init$24
      0029CE 03                    1032 	.db	3
      0029CF 03                    1033 	.sleb128	3
      0029D0 01                    1034 	.db	1
      0029D1 09                    1035 	.db	9
      0029D2 00 08                 1036 	.dw	Sstm8s_adc2$ADC2_Init$29-Sstm8s_adc2$ADC2_Init$28
      0029D4 03                    1037 	.db	3
      0029D5 01                    1038 	.sleb128	1
      0029D6 01                    1039 	.db	1
      0029D7 09                    1040 	.db	9
      0029D8 00 01                 1041 	.dw	1+Sstm8s_adc2$ADC2_Init$30-Sstm8s_adc2$ADC2_Init$29
      0029DA 00                    1042 	.db	0
      0029DB 01                    1043 	.uleb128	1
      0029DC 01                    1044 	.db	1
      0029DD 00                    1045 	.db	0
      0029DE 05                    1046 	.uleb128	5
      0029DF 02                    1047 	.db	2
      0029E0 00 00 9C CA           1048 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$32)
      0029E4 03                    1049 	.db	3
      0029E5 F8 00                 1050 	.sleb128	120
      0029E7 01                    1051 	.db	1
      0029E8 09                    1052 	.db	9
      0029E9 00 00                 1053 	.dw	Sstm8s_adc2$ADC2_Cmd$34-Sstm8s_adc2$ADC2_Cmd$32
      0029EB 03                    1054 	.db	3
      0029EC 07                    1055 	.sleb128	7
      0029ED 01                    1056 	.db	1
      0029EE 09                    1057 	.db	9
      0029EF 00 03                 1058 	.dw	Sstm8s_adc2$ADC2_Cmd$35-Sstm8s_adc2$ADC2_Cmd$34
      0029F1 03                    1059 	.db	3
      0029F2 7E                    1060 	.sleb128	-2
      0029F3 01                    1061 	.db	1
      0029F4 09                    1062 	.db	9
      0029F5 00 07                 1063 	.dw	Sstm8s_adc2$ADC2_Cmd$37-Sstm8s_adc2$ADC2_Cmd$35
      0029F7 03                    1064 	.db	3
      0029F8 02                    1065 	.sleb128	2
      0029F9 01                    1066 	.db	1
      0029FA 09                    1067 	.db	9
      0029FB 00 08                 1068 	.dw	Sstm8s_adc2$ADC2_Cmd$40-Sstm8s_adc2$ADC2_Cmd$37
      0029FD 03                    1069 	.db	3
      0029FE 04                    1070 	.sleb128	4
      0029FF 01                    1071 	.db	1
      002A00 09                    1072 	.db	9
      002A01 00 05                 1073 	.dw	Sstm8s_adc2$ADC2_Cmd$42-Sstm8s_adc2$ADC2_Cmd$40
      002A03 03                    1074 	.db	3
      002A04 02                    1075 	.sleb128	2
      002A05 01                    1076 	.db	1
      002A06 09                    1077 	.db	9
      002A07 00 01                 1078 	.dw	1+Sstm8s_adc2$ADC2_Cmd$43-Sstm8s_adc2$ADC2_Cmd$42
      002A09 00                    1079 	.db	0
      002A0A 01                    1080 	.uleb128	1
      002A0B 01                    1081 	.db	1
      002A0C 00                    1082 	.db	0
      002A0D 05                    1083 	.uleb128	5
      002A0E 02                    1084 	.db	2
      002A0F 00 00 9C E2           1085 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$45)
      002A13 03                    1086 	.db	3
      002A14 8C 01                 1087 	.sleb128	140
      002A16 01                    1088 	.db	1
      002A17 09                    1089 	.db	9
      002A18 00 00                 1090 	.dw	Sstm8s_adc2$ADC2_ITConfig$47-Sstm8s_adc2$ADC2_ITConfig$45
      002A1A 03                    1091 	.db	3
      002A1B 08                    1092 	.sleb128	8
      002A1C 01                    1093 	.db	1
      002A1D 09                    1094 	.db	9
      002A1E 00 03                 1095 	.dw	Sstm8s_adc2$ADC2_ITConfig$48-Sstm8s_adc2$ADC2_ITConfig$47
      002A20 03                    1096 	.db	3
      002A21 7D                    1097 	.sleb128	-3
      002A22 01                    1098 	.db	1
      002A23 09                    1099 	.db	9
      002A24 00 07                 1100 	.dw	Sstm8s_adc2$ADC2_ITConfig$50-Sstm8s_adc2$ADC2_ITConfig$48
      002A26 03                    1101 	.db	3
      002A27 03                    1102 	.sleb128	3
      002A28 01                    1103 	.db	1
      002A29 09                    1104 	.db	9
      002A2A 00 08                 1105 	.dw	Sstm8s_adc2$ADC2_ITConfig$53-Sstm8s_adc2$ADC2_ITConfig$50
      002A2C 03                    1106 	.db	3
      002A2D 05                    1107 	.sleb128	5
      002A2E 01                    1108 	.db	1
      002A2F 09                    1109 	.db	9
      002A30 00 05                 1110 	.dw	Sstm8s_adc2$ADC2_ITConfig$55-Sstm8s_adc2$ADC2_ITConfig$53
      002A32 03                    1111 	.db	3
      002A33 02                    1112 	.sleb128	2
      002A34 01                    1113 	.db	1
      002A35 09                    1114 	.db	9
      002A36 00 01                 1115 	.dw	1+Sstm8s_adc2$ADC2_ITConfig$56-Sstm8s_adc2$ADC2_ITConfig$55
      002A38 00                    1116 	.db	0
      002A39 01                    1117 	.uleb128	1
      002A3A 01                    1118 	.db	1
      002A3B 00                    1119 	.db	0
      002A3C 05                    1120 	.uleb128	5
      002A3D 02                    1121 	.db	2
      002A3E 00 00 9C FA           1122 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$58)
      002A42 03                    1123 	.db	3
      002A43 A3 01                 1124 	.sleb128	163
      002A45 01                    1125 	.db	1
      002A46 09                    1126 	.db	9
      002A47 00 00                 1127 	.dw	Sstm8s_adc2$ADC2_PrescalerConfig$60-Sstm8s_adc2$ADC2_PrescalerConfig$58
      002A49 03                    1128 	.db	3
      002A4A 06                    1129 	.sleb128	6
      002A4B 01                    1130 	.db	1
      002A4C 09                    1131 	.db	9
      002A4D 00 08                 1132 	.dw	Sstm8s_adc2$ADC2_PrescalerConfig$61-Sstm8s_adc2$ADC2_PrescalerConfig$60
      002A4F 03                    1133 	.db	3
      002A50 02                    1134 	.sleb128	2
      002A51 01                    1135 	.db	1
      002A52 09                    1136 	.db	9
      002A53 00 08                 1137 	.dw	Sstm8s_adc2$ADC2_PrescalerConfig$62-Sstm8s_adc2$ADC2_PrescalerConfig$61
      002A55 03                    1138 	.db	3
      002A56 01                    1139 	.sleb128	1
      002A57 01                    1140 	.db	1
      002A58 09                    1141 	.db	9
      002A59 00 01                 1142 	.dw	1+Sstm8s_adc2$ADC2_PrescalerConfig$63-Sstm8s_adc2$ADC2_PrescalerConfig$62
      002A5B 00                    1143 	.db	0
      002A5C 01                    1144 	.uleb128	1
      002A5D 01                    1145 	.db	1
      002A5E 00                    1146 	.db	0
      002A5F 05                    1147 	.uleb128	5
      002A60 02                    1148 	.db	2
      002A61 00 00 9D 0B           1149 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$65)
      002A65 03                    1150 	.db	3
      002A66 B6 01                 1151 	.sleb128	182
      002A68 01                    1152 	.db	1
      002A69 09                    1153 	.db	9
      002A6A 00 01                 1154 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$68-Sstm8s_adc2$ADC2_SchmittTriggerConfig$65
      002A6C 03                    1155 	.db	3
      002A6D 06                    1156 	.sleb128	6
      002A6E 01                    1157 	.db	1
      002A6F 09                    1158 	.db	9
      002A70 00 0C                 1159 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$70-Sstm8s_adc2$ADC2_SchmittTriggerConfig$68
      002A72 03                    1160 	.db	3
      002A73 04                    1161 	.sleb128	4
      002A74 01                    1162 	.db	1
      002A75 09                    1163 	.db	9
      002A76 00 03                 1164 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$72-Sstm8s_adc2$ADC2_SchmittTriggerConfig$70
      002A78 03                    1165 	.db	3
      002A79 7E                    1166 	.sleb128	-2
      002A7A 01                    1167 	.db	1
      002A7B 09                    1168 	.db	9
      002A7C 00 07                 1169 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$74-Sstm8s_adc2$ADC2_SchmittTriggerConfig$72
      002A7E 03                    1170 	.db	3
      002A7F 02                    1171 	.sleb128	2
      002A80 01                    1172 	.db	1
      002A81 09                    1173 	.db	9
      002A82 00 04                 1174 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$75-Sstm8s_adc2$ADC2_SchmittTriggerConfig$74
      002A84 03                    1175 	.db	3
      002A85 01                    1176 	.sleb128	1
      002A86 01                    1177 	.db	1
      002A87 09                    1178 	.db	9
      002A88 00 0A                 1179 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$78-Sstm8s_adc2$ADC2_SchmittTriggerConfig$75
      002A8A 03                    1180 	.db	3
      002A8B 04                    1181 	.sleb128	4
      002A8C 01                    1182 	.db	1
      002A8D 09                    1183 	.db	9
      002A8E 00 04                 1184 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$79-Sstm8s_adc2$ADC2_SchmittTriggerConfig$78
      002A90 03                    1185 	.db	3
      002A91 01                    1186 	.sleb128	1
      002A92 01                    1187 	.db	1
      002A93 09                    1188 	.db	9
      002A94 00 0A                 1189 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$81-Sstm8s_adc2$ADC2_SchmittTriggerConfig$79
      002A96 03                    1190 	.db	3
      002A97 03                    1191 	.sleb128	3
      002A98 01                    1192 	.db	1
      002A99 09                    1193 	.db	9
      002A9A 00 09                 1194 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$82-Sstm8s_adc2$ADC2_SchmittTriggerConfig$81
      002A9C 03                    1195 	.db	3
      002A9D 77                    1196 	.sleb128	-9
      002A9E 01                    1197 	.db	1
      002A9F 09                    1198 	.db	9
      002AA0 00 05                 1199 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$83-Sstm8s_adc2$ADC2_SchmittTriggerConfig$82
      002AA2 03                    1200 	.db	3
      002AA3 0D                    1201 	.sleb128	13
      002AA4 01                    1202 	.db	1
      002AA5 09                    1203 	.db	9
      002AA6 00 0D                 1204 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$87-Sstm8s_adc2$ADC2_SchmittTriggerConfig$83
      002AA8 03                    1205 	.db	3
      002AA9 7E                    1206 	.sleb128	-2
      002AAA 01                    1207 	.db	1
      002AAB 09                    1208 	.db	9
      002AAC 00 07                 1209 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$89-Sstm8s_adc2$ADC2_SchmittTriggerConfig$87
      002AAE 03                    1210 	.db	3
      002AAF 02                    1211 	.sleb128	2
      002AB0 01                    1212 	.db	1
      002AB1 09                    1213 	.db	9
      002AB2 00 09                 1214 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$92-Sstm8s_adc2$ADC2_SchmittTriggerConfig$89
      002AB4 03                    1215 	.db	3
      002AB5 04                    1216 	.sleb128	4
      002AB6 01                    1217 	.db	1
      002AB7 09                    1218 	.db	9
      002AB8 00 08                 1219 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$94-Sstm8s_adc2$ADC2_SchmittTriggerConfig$92
      002ABA 03                    1220 	.db	3
      002ABB 70                    1221 	.sleb128	-16
      002ABC 01                    1222 	.db	1
      002ABD 09                    1223 	.db	9
      002ABE 00 05                 1224 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$95-Sstm8s_adc2$ADC2_SchmittTriggerConfig$94
      002AC0 03                    1225 	.db	3
      002AC1 17                    1226 	.sleb128	23
      002AC2 01                    1227 	.db	1
      002AC3 09                    1228 	.db	9
      002AC4 00 12                 1229 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$99-Sstm8s_adc2$ADC2_SchmittTriggerConfig$95
      002AC6 03                    1230 	.db	3
      002AC7 7E                    1231 	.sleb128	-2
      002AC8 01                    1232 	.db	1
      002AC9 09                    1233 	.db	9
      002ACA 00 07                 1234 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$101-Sstm8s_adc2$ADC2_SchmittTriggerConfig$99
      002ACC 03                    1235 	.db	3
      002ACD 02                    1236 	.sleb128	2
      002ACE 01                    1237 	.db	1
      002ACF 09                    1238 	.db	9
      002AD0 00 09                 1239 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$104-Sstm8s_adc2$ADC2_SchmittTriggerConfig$101
      002AD2 03                    1240 	.db	3
      002AD3 04                    1241 	.sleb128	4
      002AD4 01                    1242 	.db	1
      002AD5 09                    1243 	.db	9
      002AD6 00 05                 1244 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$106-Sstm8s_adc2$ADC2_SchmittTriggerConfig$104
      002AD8 03                    1245 	.db	3
      002AD9 03                    1246 	.sleb128	3
      002ADA 01                    1247 	.db	1
      002ADB 09                    1248 	.db	9
      002ADC 00 02                 1249 	.dw	1+Sstm8s_adc2$ADC2_SchmittTriggerConfig$108-Sstm8s_adc2$ADC2_SchmittTriggerConfig$106
      002ADE 00                    1250 	.db	0
      002ADF 01                    1251 	.uleb128	1
      002AE0 01                    1252 	.db	1
      002AE1 00                    1253 	.db	0
      002AE2 05                    1254 	.uleb128	5
      002AE3 02                    1255 	.db	2
      002AE4 00 00 9D 9F           1256 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$110)
      002AE8 03                    1257 	.db	3
      002AE9 EB 01                 1258 	.sleb128	235
      002AEB 01                    1259 	.db	1
      002AEC 09                    1260 	.db	9
      002AED 00 00                 1261 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$112-Sstm8s_adc2$ADC2_ConversionConfig$110
      002AEF 03                    1262 	.db	3
      002AF0 08                    1263 	.sleb128	8
      002AF1 01                    1264 	.db	1
      002AF2 09                    1265 	.db	9
      002AF3 00 08                 1266 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$113-Sstm8s_adc2$ADC2_ConversionConfig$112
      002AF5 03                    1267 	.db	3
      002AF6 02                    1268 	.sleb128	2
      002AF7 01                    1269 	.db	1
      002AF8 09                    1270 	.db	9
      002AF9 00 08                 1271 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$114-Sstm8s_adc2$ADC2_ConversionConfig$113
      002AFB 03                    1272 	.db	3
      002AFC 05                    1273 	.sleb128	5
      002AFD 01                    1274 	.db	1
      002AFE 09                    1275 	.db	9
      002AFF 00 03                 1276 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$115-Sstm8s_adc2$ADC2_ConversionConfig$114
      002B01 03                    1277 	.db	3
      002B02 7D                    1278 	.sleb128	-3
      002B03 01                    1279 	.db	1
      002B04 09                    1280 	.db	9
      002B05 00 0D                 1281 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$120-Sstm8s_adc2$ADC2_ConversionConfig$115
      002B07 03                    1282 	.db	3
      002B08 03                    1283 	.sleb128	3
      002B09 01                    1284 	.db	1
      002B0A 09                    1285 	.db	9
      002B0B 00 08                 1286 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$123-Sstm8s_adc2$ADC2_ConversionConfig$120
      002B0D 03                    1287 	.db	3
      002B0E 05                    1288 	.sleb128	5
      002B0F 01                    1289 	.db	1
      002B10 09                    1290 	.db	9
      002B11 00 05                 1291 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$125-Sstm8s_adc2$ADC2_ConversionConfig$123
      002B13 03                    1292 	.db	3
      002B14 04                    1293 	.sleb128	4
      002B15 01                    1294 	.db	1
      002B16 09                    1295 	.db	9
      002B17 00 08                 1296 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$126-Sstm8s_adc2$ADC2_ConversionConfig$125
      002B19 03                    1297 	.db	3
      002B1A 02                    1298 	.sleb128	2
      002B1B 01                    1299 	.db	1
      002B1C 09                    1300 	.db	9
      002B1D 00 08                 1301 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$127-Sstm8s_adc2$ADC2_ConversionConfig$126
      002B1F 03                    1302 	.db	3
      002B20 01                    1303 	.sleb128	1
      002B21 01                    1304 	.db	1
      002B22 09                    1305 	.db	9
      002B23 00 01                 1306 	.dw	1+Sstm8s_adc2$ADC2_ConversionConfig$128-Sstm8s_adc2$ADC2_ConversionConfig$127
      002B25 00                    1307 	.db	0
      002B26 01                    1308 	.uleb128	1
      002B27 01                    1309 	.db	1
      002B28 00                    1310 	.db	0
      002B29 05                    1311 	.uleb128	5
      002B2A 02                    1312 	.db	2
      002B2B 00 00 9D DD           1313 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$130)
      002B2F 03                    1314 	.db	3
      002B30 92 02                 1315 	.sleb128	274
      002B32 01                    1316 	.db	1
      002B33 09                    1317 	.db	9
      002B34 00 00                 1318 	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$132-Sstm8s_adc2$ADC2_ExternalTriggerConfig$130
      002B36 03                    1319 	.db	3
      002B37 07                    1320 	.sleb128	7
      002B38 01                    1321 	.db	1
      002B39 09                    1322 	.db	9
      002B3A 00 0B                 1323 	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$133-Sstm8s_adc2$ADC2_ExternalTriggerConfig$132
      002B3C 03                    1324 	.db	3
      002B3D 02                    1325 	.sleb128	2
      002B3E 01                    1326 	.db	1
      002B3F 09                    1327 	.db	9
      002B40 00 07                 1328 	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$135-Sstm8s_adc2$ADC2_ExternalTriggerConfig$133
      002B42 03                    1329 	.db	3
      002B43 03                    1330 	.sleb128	3
      002B44 01                    1331 	.db	1
      002B45 09                    1332 	.db	9
      002B46 00 08                 1333 	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$138-Sstm8s_adc2$ADC2_ExternalTriggerConfig$135
      002B48 03                    1334 	.db	3
      002B49 05                    1335 	.sleb128	5
      002B4A 01                    1336 	.db	1
      002B4B 09                    1337 	.db	9
      002B4C 00 05                 1338 	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$140-Sstm8s_adc2$ADC2_ExternalTriggerConfig$138
      002B4E 03                    1339 	.db	3
      002B4F 04                    1340 	.sleb128	4
      002B50 01                    1341 	.db	1
      002B51 09                    1342 	.db	9
      002B52 00 08                 1343 	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$141-Sstm8s_adc2$ADC2_ExternalTriggerConfig$140
      002B54 03                    1344 	.db	3
      002B55 01                    1345 	.sleb128	1
      002B56 01                    1346 	.db	1
      002B57 09                    1347 	.db	9
      002B58 00 01                 1348 	.dw	1+Sstm8s_adc2$ADC2_ExternalTriggerConfig$142-Sstm8s_adc2$ADC2_ExternalTriggerConfig$141
      002B5A 00                    1349 	.db	0
      002B5B 01                    1350 	.uleb128	1
      002B5C 01                    1351 	.db	1
      002B5D 00                    1352 	.db	0
      002B5E 05                    1353 	.uleb128	5
      002B5F 02                    1354 	.db	2
      002B60 00 00 9E 05           1355 	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$144)
      002B64 03                    1356 	.db	3
      002B65 B3 02                 1357 	.sleb128	307
      002B67 01                    1358 	.db	1
      002B68 09                    1359 	.db	9
      002B69 00 00                 1360 	.dw	Sstm8s_adc2$ADC2_StartConversion$146-Sstm8s_adc2$ADC2_StartConversion$144
      002B6B 03                    1361 	.db	3
      002B6C 02                    1362 	.sleb128	2
      002B6D 01                    1363 	.db	1
      002B6E 09                    1364 	.db	9
      002B6F 00 08                 1365 	.dw	Sstm8s_adc2$ADC2_StartConversion$147-Sstm8s_adc2$ADC2_StartConversion$146
      002B71 03                    1366 	.db	3
      002B72 01                    1367 	.sleb128	1
      002B73 01                    1368 	.db	1
      002B74 09                    1369 	.db	9
      002B75 00 01                 1370 	.dw	1+Sstm8s_adc2$ADC2_StartConversion$148-Sstm8s_adc2$ADC2_StartConversion$147
      002B77 00                    1371 	.db	0
      002B78 01                    1372 	.uleb128	1
      002B79 01                    1373 	.db	1
      002B7A 00                    1374 	.db	0
      002B7B 05                    1375 	.uleb128	5
      002B7C 02                    1376 	.db	2
      002B7D 00 00 9E 0E           1377 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$150)
      002B81 03                    1378 	.db	3
      002B82 BF 02                 1379 	.sleb128	319
      002B84 01                    1380 	.db	1
      002B85 09                    1381 	.db	9
      002B86 00 02                 1382 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$153-Sstm8s_adc2$ADC2_GetConversionValue$150
      002B88 03                    1383 	.db	3
      002B89 05                    1384 	.sleb128	5
      002B8A 01                    1385 	.db	1
      002B8B 09                    1386 	.db	9
      002B8C 00 0A                 1387 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$155-Sstm8s_adc2$ADC2_GetConversionValue$153
      002B8E 03                    1388 	.db	3
      002B8F 03                    1389 	.sleb128	3
      002B90 01                    1390 	.db	1
      002B91 09                    1391 	.db	9
      002B92 00 04                 1392 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$156-Sstm8s_adc2$ADC2_GetConversionValue$155
      002B94 03                    1393 	.db	3
      002B95 02                    1394 	.sleb128	2
      002B96 01                    1395 	.db	1
      002B97 09                    1396 	.db	9
      002B98 00 05                 1397 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$157-Sstm8s_adc2$ADC2_GetConversionValue$156
      002B9A 03                    1398 	.db	3
      002B9B 02                    1399 	.sleb128	2
      002B9C 01                    1400 	.db	1
      002B9D 09                    1401 	.db	9
      002B9E 00 10                 1402 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$160-Sstm8s_adc2$ADC2_GetConversionValue$157
      002BA0 03                    1403 	.db	3
      002BA1 05                    1404 	.sleb128	5
      002BA2 01                    1405 	.db	1
      002BA3 09                    1406 	.db	9
      002BA4 00 06                 1407 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$161-Sstm8s_adc2$ADC2_GetConversionValue$160
      002BA6 03                    1408 	.db	3
      002BA7 02                    1409 	.sleb128	2
      002BA8 01                    1410 	.db	1
      002BA9 09                    1411 	.db	9
      002BAA 00 03                 1412 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$162-Sstm8s_adc2$ADC2_GetConversionValue$161
      002BAC 03                    1413 	.db	3
      002BAD 02                    1414 	.sleb128	2
      002BAE 01                    1415 	.db	1
      002BAF 09                    1416 	.db	9
      002BB0 00 15                 1417 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$164-Sstm8s_adc2$ADC2_GetConversionValue$162
      002BB2 03                    1418 	.db	3
      002BB3 03                    1419 	.sleb128	3
      002BB4 01                    1420 	.db	1
      002BB5 09                    1421 	.db	9
      002BB6 00 02                 1422 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$165-Sstm8s_adc2$ADC2_GetConversionValue$164
      002BB8 03                    1423 	.db	3
      002BB9 01                    1424 	.sleb128	1
      002BBA 01                    1425 	.db	1
      002BBB 09                    1426 	.db	9
      002BBC 00 03                 1427 	.dw	1+Sstm8s_adc2$ADC2_GetConversionValue$167-Sstm8s_adc2$ADC2_GetConversionValue$165
      002BBE 00                    1428 	.db	0
      002BBF 01                    1429 	.uleb128	1
      002BC0 01                    1430 	.db	1
      002BC1 00                    1431 	.db	0
      002BC2 05                    1432 	.uleb128	5
      002BC3 02                    1433 	.db	2
      002BC4 00 00 9E 56           1434 	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$169)
      002BC8 03                    1435 	.db	3
      002BC9 DF 02                 1436 	.sleb128	351
      002BCB 01                    1437 	.db	1
      002BCC 09                    1438 	.db	9
      002BCD 00 00                 1439 	.dw	Sstm8s_adc2$ADC2_GetFlagStatus$171-Sstm8s_adc2$ADC2_GetFlagStatus$169
      002BCF 03                    1440 	.db	3
      002BD0 03                    1441 	.sleb128	3
      002BD1 01                    1442 	.db	1
      002BD2 09                    1443 	.db	9
      002BD3 00 05                 1444 	.dw	Sstm8s_adc2$ADC2_GetFlagStatus$172-Sstm8s_adc2$ADC2_GetFlagStatus$171
      002BD5 03                    1445 	.db	3
      002BD6 01                    1446 	.sleb128	1
      002BD7 01                    1447 	.db	1
      002BD8 09                    1448 	.db	9
      002BD9 00 01                 1449 	.dw	1+Sstm8s_adc2$ADC2_GetFlagStatus$173-Sstm8s_adc2$ADC2_GetFlagStatus$172
      002BDB 00                    1450 	.db	0
      002BDC 01                    1451 	.uleb128	1
      002BDD 01                    1452 	.db	1
      002BDE 00                    1453 	.db	0
      002BDF 05                    1454 	.uleb128	5
      002BE0 02                    1455 	.db	2
      002BE1 00 00 9E 5C           1456 	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$175)
      002BE5 03                    1457 	.db	3
      002BE6 EA 02                 1458 	.sleb128	362
      002BE8 01                    1459 	.db	1
      002BE9 09                    1460 	.db	9
      002BEA 00 00                 1461 	.dw	Sstm8s_adc2$ADC2_ClearFlag$177-Sstm8s_adc2$ADC2_ClearFlag$175
      002BEC 03                    1462 	.db	3
      002BED 02                    1463 	.sleb128	2
      002BEE 01                    1464 	.db	1
      002BEF 09                    1465 	.db	9
      002BF0 00 08                 1466 	.dw	Sstm8s_adc2$ADC2_ClearFlag$178-Sstm8s_adc2$ADC2_ClearFlag$177
      002BF2 03                    1467 	.db	3
      002BF3 01                    1468 	.sleb128	1
      002BF4 01                    1469 	.db	1
      002BF5 09                    1470 	.db	9
      002BF6 00 01                 1471 	.dw	1+Sstm8s_adc2$ADC2_ClearFlag$179-Sstm8s_adc2$ADC2_ClearFlag$178
      002BF8 00                    1472 	.db	0
      002BF9 01                    1473 	.uleb128	1
      002BFA 01                    1474 	.db	1
      002BFB 00                    1475 	.db	0
      002BFC 05                    1476 	.uleb128	5
      002BFD 02                    1477 	.db	2
      002BFE 00 00 9E 65           1478 	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$181)
      002C02 03                    1479 	.db	3
      002C03 F5 02                 1480 	.sleb128	373
      002C05 01                    1481 	.db	1
      002C06 09                    1482 	.db	9
      002C07 00 00                 1483 	.dw	Sstm8s_adc2$ADC2_GetITStatus$183-Sstm8s_adc2$ADC2_GetITStatus$181
      002C09 03                    1484 	.db	3
      002C0A 02                    1485 	.sleb128	2
      002C0B 01                    1486 	.db	1
      002C0C 09                    1487 	.db	9
      002C0D 00 05                 1488 	.dw	Sstm8s_adc2$ADC2_GetITStatus$184-Sstm8s_adc2$ADC2_GetITStatus$183
      002C0F 03                    1489 	.db	3
      002C10 01                    1490 	.sleb128	1
      002C11 01                    1491 	.db	1
      002C12 09                    1492 	.db	9
      002C13 00 01                 1493 	.dw	1+Sstm8s_adc2$ADC2_GetITStatus$185-Sstm8s_adc2$ADC2_GetITStatus$184
      002C15 00                    1494 	.db	0
      002C16 01                    1495 	.uleb128	1
      002C17 01                    1496 	.db	1
      002C18 00                    1497 	.db	0
      002C19 05                    1498 	.uleb128	5
      002C1A 02                    1499 	.db	2
      002C1B 00 00 9E 6B           1500 	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$187)
      002C1F 03                    1501 	.db	3
      002C20 FF 02                 1502 	.sleb128	383
      002C22 01                    1503 	.db	1
      002C23 09                    1504 	.db	9
      002C24 00 00                 1505 	.dw	Sstm8s_adc2$ADC2_ClearITPendingBit$189-Sstm8s_adc2$ADC2_ClearITPendingBit$187
      002C26 03                    1506 	.db	3
      002C27 02                    1507 	.sleb128	2
      002C28 01                    1508 	.db	1
      002C29 09                    1509 	.db	9
      002C2A 00 08                 1510 	.dw	Sstm8s_adc2$ADC2_ClearITPendingBit$190-Sstm8s_adc2$ADC2_ClearITPendingBit$189
      002C2C 03                    1511 	.db	3
      002C2D 01                    1512 	.sleb128	1
      002C2E 01                    1513 	.db	1
      002C2F 09                    1514 	.db	9
      002C30 00 01                 1515 	.dw	1+Sstm8s_adc2$ADC2_ClearITPendingBit$191-Sstm8s_adc2$ADC2_ClearITPendingBit$190
      002C32 00                    1516 	.db	0
      002C33 01                    1517 	.uleb128	1
      002C34 01                    1518 	.db	1
      002C35                       1519 Ldebug_line_end:
                                   1520 
                                   1521 	.area .debug_loc (NOLOAD)
      0030B4                       1522 Ldebug_loc_start:
      0030B4 00 00 9E 6B           1523 	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$188)
      0030B8 00 00 9E 74           1524 	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$192)
      0030BC 00 02                 1525 	.dw	2
      0030BE 78                    1526 	.db	120
      0030BF 01                    1527 	.sleb128	1
      0030C0 00 00 00 00           1528 	.dw	0,0
      0030C4 00 00 00 00           1529 	.dw	0,0
      0030C8 00 00 9E 65           1530 	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$182)
      0030CC 00 00 9E 6B           1531 	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$186)
      0030D0 00 02                 1532 	.dw	2
      0030D2 78                    1533 	.db	120
      0030D3 01                    1534 	.sleb128	1
      0030D4 00 00 00 00           1535 	.dw	0,0
      0030D8 00 00 00 00           1536 	.dw	0,0
      0030DC 00 00 9E 5C           1537 	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$176)
      0030E0 00 00 9E 65           1538 	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$180)
      0030E4 00 02                 1539 	.dw	2
      0030E6 78                    1540 	.db	120
      0030E7 01                    1541 	.sleb128	1
      0030E8 00 00 00 00           1542 	.dw	0,0
      0030EC 00 00 00 00           1543 	.dw	0,0
      0030F0 00 00 9E 56           1544 	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$170)
      0030F4 00 00 9E 5C           1545 	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$174)
      0030F8 00 02                 1546 	.dw	2
      0030FA 78                    1547 	.db	120
      0030FB 01                    1548 	.sleb128	1
      0030FC 00 00 00 00           1549 	.dw	0,0
      003100 00 00 00 00           1550 	.dw	0,0
      003104 00 00 9E 55           1551 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$166)
      003108 00 00 9E 56           1552 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$168)
      00310C 00 02                 1553 	.dw	2
      00310E 78                    1554 	.db	120
      00310F 01                    1555 	.sleb128	1
      003110 00 00 9E 10           1556 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$152)
      003114 00 00 9E 55           1557 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$166)
      003118 00 02                 1558 	.dw	2
      00311A 78                    1559 	.db	120
      00311B 05                    1560 	.sleb128	5
      00311C 00 00 9E 0E           1561 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$151)
      003120 00 00 9E 10           1562 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$152)
      003124 00 02                 1563 	.dw	2
      003126 78                    1564 	.db	120
      003127 01                    1565 	.sleb128	1
      003128 00 00 00 00           1566 	.dw	0,0
      00312C 00 00 00 00           1567 	.dw	0,0
      003130 00 00 9E 05           1568 	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$145)
      003134 00 00 9E 0E           1569 	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$149)
      003138 00 02                 1570 	.dw	2
      00313A 78                    1571 	.db	120
      00313B 01                    1572 	.sleb128	1
      00313C 00 00 00 00           1573 	.dw	0,0
      003140 00 00 00 00           1574 	.dw	0,0
      003144 00 00 9D DD           1575 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$131)
      003148 00 00 9E 05           1576 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$143)
      00314C 00 02                 1577 	.dw	2
      00314E 78                    1578 	.db	120
      00314F 01                    1579 	.sleb128	1
      003150 00 00 00 00           1580 	.dw	0,0
      003154 00 00 00 00           1581 	.dw	0,0
      003158 00 00 9D BF           1582 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$118)
      00315C 00 00 9D DD           1583 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$129)
      003160 00 02                 1584 	.dw	2
      003162 78                    1585 	.db	120
      003163 01                    1586 	.sleb128	1
      003164 00 00 9D B7           1587 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$117)
      003168 00 00 9D BF           1588 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$118)
      00316C 00 02                 1589 	.dw	2
      00316E 78                    1590 	.db	120
      00316F 01                    1591 	.sleb128	1
      003170 00 00 9D B3           1592 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$116)
      003174 00 00 9D B7           1593 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$117)
      003178 00 02                 1594 	.dw	2
      00317A 78                    1595 	.db	120
      00317B 02                    1596 	.sleb128	2
      00317C 00 00 9D 9F           1597 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$111)
      003180 00 00 9D B3           1598 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$116)
      003184 00 02                 1599 	.dw	2
      003186 78                    1600 	.db	120
      003187 01                    1601 	.sleb128	1
      003188 00 00 00 00           1602 	.dw	0,0
      00318C 00 00 00 00           1603 	.dw	0,0
      003190 00 00 9D 9E           1604 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$107)
      003194 00 00 9D 9F           1605 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$109)
      003198 00 02                 1606 	.dw	2
      00319A 78                    1607 	.db	120
      00319B 01                    1608 	.sleb128	1
      00319C 00 00 9D 88           1609 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$97)
      0031A0 00 00 9D 9E           1610 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$107)
      0031A4 00 02                 1611 	.dw	2
      0031A6 78                    1612 	.db	120
      0031A7 02                    1613 	.sleb128	2
      0031A8 00 00 9D 7E           1614 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$96)
      0031AC 00 00 9D 88           1615 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$97)
      0031B0 00 02                 1616 	.dw	2
      0031B2 78                    1617 	.db	120
      0031B3 03                    1618 	.sleb128	3
      0031B4 00 00 9D 59           1619 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$85)
      0031B8 00 00 9D 7E           1620 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$96)
      0031BC 00 02                 1621 	.dw	2
      0031BE 78                    1622 	.db	120
      0031BF 02                    1623 	.sleb128	2
      0031C0 00 00 9D 4F           1624 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$84)
      0031C4 00 00 9D 59           1625 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$85)
      0031C8 00 02                 1626 	.dw	2
      0031CA 78                    1627 	.db	120
      0031CB 03                    1628 	.sleb128	3
      0031CC 00 00 9D 18           1629 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$69)
      0031D0 00 00 9D 4F           1630 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$84)
      0031D4 00 02                 1631 	.dw	2
      0031D6 78                    1632 	.db	120
      0031D7 02                    1633 	.sleb128	2
      0031D8 00 00 9D 0C           1634 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$67)
      0031DC 00 00 9D 18           1635 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$69)
      0031E0 00 02                 1636 	.dw	2
      0031E2 78                    1637 	.db	120
      0031E3 02                    1638 	.sleb128	2
      0031E4 00 00 9D 0B           1639 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$66)
      0031E8 00 00 9D 0C           1640 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$67)
      0031EC 00 02                 1641 	.dw	2
      0031EE 78                    1642 	.db	120
      0031EF 01                    1643 	.sleb128	1
      0031F0 00 00 00 00           1644 	.dw	0,0
      0031F4 00 00 00 00           1645 	.dw	0,0
      0031F8 00 00 9C FA           1646 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$59)
      0031FC 00 00 9D 0B           1647 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$64)
      003200 00 02                 1648 	.dw	2
      003202 78                    1649 	.db	120
      003203 01                    1650 	.sleb128	1
      003204 00 00 00 00           1651 	.dw	0,0
      003208 00 00 00 00           1652 	.dw	0,0
      00320C 00 00 9C E2           1653 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$46)
      003210 00 00 9C FA           1654 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$57)
      003214 00 02                 1655 	.dw	2
      003216 78                    1656 	.db	120
      003217 01                    1657 	.sleb128	1
      003218 00 00 00 00           1658 	.dw	0,0
      00321C 00 00 00 00           1659 	.dw	0,0
      003220 00 00 9C CA           1660 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$33)
      003224 00 00 9C E2           1661 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$44)
      003228 00 02                 1662 	.dw	2
      00322A 78                    1663 	.db	120
      00322B 01                    1664 	.sleb128	1
      00322C 00 00 00 00           1665 	.dw	0,0
      003230 00 00 00 00           1666 	.dw	0,0
      003234 00 00 9C C1           1667 	.dw	0,(Sstm8s_adc2$ADC2_Init$27)
      003238 00 00 9C CA           1668 	.dw	0,(Sstm8s_adc2$ADC2_Init$31)
      00323C 00 02                 1669 	.dw	2
      00323E 78                    1670 	.db	120
      00323F 01                    1671 	.sleb128	1
      003240 00 00 9C BD           1672 	.dw	0,(Sstm8s_adc2$ADC2_Init$26)
      003244 00 00 9C C1           1673 	.dw	0,(Sstm8s_adc2$ADC2_Init$27)
      003248 00 02                 1674 	.dw	2
      00324A 78                    1675 	.db	120
      00324B 03                    1676 	.sleb128	3
      00324C 00 00 9C BA           1677 	.dw	0,(Sstm8s_adc2$ADC2_Init$25)
      003250 00 00 9C BD           1678 	.dw	0,(Sstm8s_adc2$ADC2_Init$26)
      003254 00 02                 1679 	.dw	2
      003256 78                    1680 	.db	120
      003257 02                    1681 	.sleb128	2
      003258 00 00 9C B7           1682 	.dw	0,(Sstm8s_adc2$ADC2_Init$23)
      00325C 00 00 9C BA           1683 	.dw	0,(Sstm8s_adc2$ADC2_Init$25)
      003260 00 02                 1684 	.dw	2
      003262 78                    1685 	.db	120
      003263 01                    1686 	.sleb128	1
      003264 00 00 9C B3           1687 	.dw	0,(Sstm8s_adc2$ADC2_Init$22)
      003268 00 00 9C B7           1688 	.dw	0,(Sstm8s_adc2$ADC2_Init$23)
      00326C 00 02                 1689 	.dw	2
      00326E 78                    1690 	.db	120
      00326F 03                    1691 	.sleb128	3
      003270 00 00 9C B0           1692 	.dw	0,(Sstm8s_adc2$ADC2_Init$21)
      003274 00 00 9C B3           1693 	.dw	0,(Sstm8s_adc2$ADC2_Init$22)
      003278 00 02                 1694 	.dw	2
      00327A 78                    1695 	.db	120
      00327B 02                    1696 	.sleb128	2
      00327C 00 00 9C AD           1697 	.dw	0,(Sstm8s_adc2$ADC2_Init$19)
      003280 00 00 9C B0           1698 	.dw	0,(Sstm8s_adc2$ADC2_Init$21)
      003284 00 02                 1699 	.dw	2
      003286 78                    1700 	.db	120
      003287 01                    1701 	.sleb128	1
      003288 00 00 9C A9           1702 	.dw	0,(Sstm8s_adc2$ADC2_Init$18)
      00328C 00 00 9C AD           1703 	.dw	0,(Sstm8s_adc2$ADC2_Init$19)
      003290 00 02                 1704 	.dw	2
      003292 78                    1705 	.db	120
      003293 02                    1706 	.sleb128	2
      003294 00 00 9C A6           1707 	.dw	0,(Sstm8s_adc2$ADC2_Init$16)
      003298 00 00 9C A9           1708 	.dw	0,(Sstm8s_adc2$ADC2_Init$18)
      00329C 00 02                 1709 	.dw	2
      00329E 78                    1710 	.db	120
      00329F 01                    1711 	.sleb128	1
      0032A0 00 00 9C A1           1712 	.dw	0,(Sstm8s_adc2$ADC2_Init$15)
      0032A4 00 00 9C A6           1713 	.dw	0,(Sstm8s_adc2$ADC2_Init$16)
      0032A8 00 02                 1714 	.dw	2
      0032AA 78                    1715 	.db	120
      0032AB 04                    1716 	.sleb128	4
      0032AC 00 00 9C 9E           1717 	.dw	0,(Sstm8s_adc2$ADC2_Init$14)
      0032B0 00 00 9C A1           1718 	.dw	0,(Sstm8s_adc2$ADC2_Init$15)
      0032B4 00 02                 1719 	.dw	2
      0032B6 78                    1720 	.db	120
      0032B7 03                    1721 	.sleb128	3
      0032B8 00 00 9C 9B           1722 	.dw	0,(Sstm8s_adc2$ADC2_Init$13)
      0032BC 00 00 9C 9E           1723 	.dw	0,(Sstm8s_adc2$ADC2_Init$14)
      0032C0 00 02                 1724 	.dw	2
      0032C2 78                    1725 	.db	120
      0032C3 02                    1726 	.sleb128	2
      0032C4 00 00 9C 98           1727 	.dw	0,(Sstm8s_adc2$ADC2_Init$11)
      0032C8 00 00 9C 9B           1728 	.dw	0,(Sstm8s_adc2$ADC2_Init$13)
      0032CC 00 02                 1729 	.dw	2
      0032CE 78                    1730 	.db	120
      0032CF 01                    1731 	.sleb128	1
      0032D0 00 00 00 00           1732 	.dw	0,0
      0032D4 00 00 00 00           1733 	.dw	0,0
      0032D8 00 00 9C 83           1734 	.dw	0,(Sstm8s_adc2$ADC2_DeInit$1)
      0032DC 00 00 9C 98           1735 	.dw	0,(Sstm8s_adc2$ADC2_DeInit$9)
      0032E0 00 02                 1736 	.dw	2
      0032E2 78                    1737 	.db	120
      0032E3 01                    1738 	.sleb128	1
      0032E4 00 00 00 00           1739 	.dw	0,0
      0032E8 00 00 00 00           1740 	.dw	0,0
                                   1741 
                                   1742 	.area .debug_abbrev (NOLOAD)
      0006B5                       1743 Ldebug_abbrev:
      0006B5 0B                    1744 	.uleb128	11
      0006B6 2E                    1745 	.uleb128	46
      0006B7 00                    1746 	.db	0
      0006B8 03                    1747 	.uleb128	3
      0006B9 08                    1748 	.uleb128	8
      0006BA 11                    1749 	.uleb128	17
      0006BB 01                    1750 	.uleb128	1
      0006BC 12                    1751 	.uleb128	18
      0006BD 01                    1752 	.uleb128	1
      0006BE 3F                    1753 	.uleb128	63
      0006BF 0C                    1754 	.uleb128	12
      0006C0 40                    1755 	.uleb128	64
      0006C1 06                    1756 	.uleb128	6
      0006C2 49                    1757 	.uleb128	73
      0006C3 13                    1758 	.uleb128	19
      0006C4 00                    1759 	.uleb128	0
      0006C5 00                    1760 	.uleb128	0
      0006C6 04                    1761 	.uleb128	4
      0006C7 05                    1762 	.uleb128	5
      0006C8 00                    1763 	.db	0
      0006C9 02                    1764 	.uleb128	2
      0006CA 0A                    1765 	.uleb128	10
      0006CB 03                    1766 	.uleb128	3
      0006CC 08                    1767 	.uleb128	8
      0006CD 49                    1768 	.uleb128	73
      0006CE 13                    1769 	.uleb128	19
      0006CF 00                    1770 	.uleb128	0
      0006D0 00                    1771 	.uleb128	0
      0006D1 03                    1772 	.uleb128	3
      0006D2 2E                    1773 	.uleb128	46
      0006D3 01                    1774 	.db	1
      0006D4 01                    1775 	.uleb128	1
      0006D5 13                    1776 	.uleb128	19
      0006D6 03                    1777 	.uleb128	3
      0006D7 08                    1778 	.uleb128	8
      0006D8 11                    1779 	.uleb128	17
      0006D9 01                    1780 	.uleb128	1
      0006DA 12                    1781 	.uleb128	18
      0006DB 01                    1782 	.uleb128	1
      0006DC 3F                    1783 	.uleb128	63
      0006DD 0C                    1784 	.uleb128	12
      0006DE 40                    1785 	.uleb128	64
      0006DF 06                    1786 	.uleb128	6
      0006E0 00                    1787 	.uleb128	0
      0006E1 00                    1788 	.uleb128	0
      0006E2 0A                    1789 	.uleb128	10
      0006E3 34                    1790 	.uleb128	52
      0006E4 00                    1791 	.db	0
      0006E5 02                    1792 	.uleb128	2
      0006E6 0A                    1793 	.uleb128	10
      0006E7 03                    1794 	.uleb128	3
      0006E8 08                    1795 	.uleb128	8
      0006E9 49                    1796 	.uleb128	73
      0006EA 13                    1797 	.uleb128	19
      0006EB 00                    1798 	.uleb128	0
      0006EC 00                    1799 	.uleb128	0
      0006ED 09                    1800 	.uleb128	9
      0006EE 2E                    1801 	.uleb128	46
      0006EF 01                    1802 	.db	1
      0006F0 01                    1803 	.uleb128	1
      0006F1 13                    1804 	.uleb128	19
      0006F2 03                    1805 	.uleb128	3
      0006F3 08                    1806 	.uleb128	8
      0006F4 11                    1807 	.uleb128	17
      0006F5 01                    1808 	.uleb128	1
      0006F6 12                    1809 	.uleb128	18
      0006F7 01                    1810 	.uleb128	1
      0006F8 3F                    1811 	.uleb128	63
      0006F9 0C                    1812 	.uleb128	12
      0006FA 40                    1813 	.uleb128	64
      0006FB 06                    1814 	.uleb128	6
      0006FC 49                    1815 	.uleb128	73
      0006FD 13                    1816 	.uleb128	19
      0006FE 00                    1817 	.uleb128	0
      0006FF 00                    1818 	.uleb128	0
      000700 08                    1819 	.uleb128	8
      000701 0B                    1820 	.uleb128	11
      000702 01                    1821 	.db	1
      000703 11                    1822 	.uleb128	17
      000704 01                    1823 	.uleb128	1
      000705 00                    1824 	.uleb128	0
      000706 00                    1825 	.uleb128	0
      000707 01                    1826 	.uleb128	1
      000708 11                    1827 	.uleb128	17
      000709 01                    1828 	.db	1
      00070A 03                    1829 	.uleb128	3
      00070B 08                    1830 	.uleb128	8
      00070C 10                    1831 	.uleb128	16
      00070D 06                    1832 	.uleb128	6
      00070E 13                    1833 	.uleb128	19
      00070F 0B                    1834 	.uleb128	11
      000710 25                    1835 	.uleb128	37
      000711 08                    1836 	.uleb128	8
      000712 00                    1837 	.uleb128	0
      000713 00                    1838 	.uleb128	0
      000714 06                    1839 	.uleb128	6
      000715 0B                    1840 	.uleb128	11
      000716 00                    1841 	.db	0
      000717 11                    1842 	.uleb128	17
      000718 01                    1843 	.uleb128	1
      000719 12                    1844 	.uleb128	18
      00071A 01                    1845 	.uleb128	1
      00071B 00                    1846 	.uleb128	0
      00071C 00                    1847 	.uleb128	0
      00071D 07                    1848 	.uleb128	7
      00071E 0B                    1849 	.uleb128	11
      00071F 01                    1850 	.db	1
      000720 01                    1851 	.uleb128	1
      000721 13                    1852 	.uleb128	19
      000722 11                    1853 	.uleb128	17
      000723 01                    1854 	.uleb128	1
      000724 00                    1855 	.uleb128	0
      000725 00                    1856 	.uleb128	0
      000726 02                    1857 	.uleb128	2
      000727 2E                    1858 	.uleb128	46
      000728 00                    1859 	.db	0
      000729 03                    1860 	.uleb128	3
      00072A 08                    1861 	.uleb128	8
      00072B 11                    1862 	.uleb128	17
      00072C 01                    1863 	.uleb128	1
      00072D 12                    1864 	.uleb128	18
      00072E 01                    1865 	.uleb128	1
      00072F 3F                    1866 	.uleb128	63
      000730 0C                    1867 	.uleb128	12
      000731 40                    1868 	.uleb128	64
      000732 06                    1869 	.uleb128	6
      000733 00                    1870 	.uleb128	0
      000734 00                    1871 	.uleb128	0
      000735 05                    1872 	.uleb128	5
      000736 24                    1873 	.uleb128	36
      000737 00                    1874 	.db	0
      000738 03                    1875 	.uleb128	3
      000739 08                    1876 	.uleb128	8
      00073A 0B                    1877 	.uleb128	11
      00073B 0B                    1878 	.uleb128	11
      00073C 3E                    1879 	.uleb128	62
      00073D 0B                    1880 	.uleb128	11
      00073E 00                    1881 	.uleb128	0
      00073F 00                    1882 	.uleb128	0
      000740 00                    1883 	.uleb128	0
                                   1884 
                                   1885 	.area .debug_info (NOLOAD)
      003FDB 00 00 04 DF           1886 	.dw	0,Ldebug_info_end-Ldebug_info_start
      003FDF                       1887 Ldebug_info_start:
      003FDF 00 02                 1888 	.dw	2
      003FE1 00 00 06 B5           1889 	.dw	0,(Ldebug_abbrev)
      003FE5 04                    1890 	.db	4
      003FE6 01                    1891 	.uleb128	1
      003FE7 2E 2E 2F 53 50 4C 2F  1892 	.ascii "../SPL/src/stm8s_adc2.c"
             73 72 63 2F 73 74 6D
             38 73 5F 61 64 63 32
             2E 63
      003FFE 00                    1893 	.db	0
      003FFF 00 00 28 F2           1894 	.dw	0,(Ldebug_line_start+-4)
      004003 01                    1895 	.db	1
      004004 53 44 43 43 20 76 65  1896 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      00401D 00                    1897 	.db	0
      00401E 02                    1898 	.uleb128	2
      00401F 41 44 43 32 5F 44 65  1899 	.ascii "ADC2_DeInit"
             49 6E 69 74
      00402A 00                    1900 	.db	0
      00402B 00 00 9C 83           1901 	.dw	0,(_ADC2_DeInit)
      00402F 00 00 9C 98           1902 	.dw	0,(XG$ADC2_DeInit$0$0+1)
      004033 01                    1903 	.db	1
      004034 00 00 32 D8           1904 	.dw	0,(Ldebug_loc_start+548)
      004038 03                    1905 	.uleb128	3
      004039 00 00 01 57           1906 	.dw	0,343
      00403D 41 44 43 32 5F 49 6E  1907 	.ascii "ADC2_Init"
             69 74
      004046 00                    1908 	.db	0
      004047 00 00 9C 98           1909 	.dw	0,(_ADC2_Init)
      00404B 00 00 9C CA           1910 	.dw	0,(XG$ADC2_Init$0$0+1)
      00404F 01                    1911 	.db	1
      004050 00 00 32 34           1912 	.dw	0,(Ldebug_loc_start+384)
      004054 04                    1913 	.uleb128	4
      004055 02                    1914 	.db	2
      004056 91                    1915 	.db	145
      004057 02                    1916 	.sleb128	2
      004058 41 44 43 32 5F 43 6F  1917 	.ascii "ADC2_ConversionMode"
             6E 76 65 72 73 69 6F
             6E 4D 6F 64 65
      00406B 00                    1918 	.db	0
      00406C 00 00 01 57           1919 	.dw	0,343
      004070 04                    1920 	.uleb128	4
      004071 02                    1921 	.db	2
      004072 91                    1922 	.db	145
      004073 03                    1923 	.sleb128	3
      004074 41 44 43 32 5F 43 68  1924 	.ascii "ADC2_Channel"
             61 6E 6E 65 6C
      004080 00                    1925 	.db	0
      004081 00 00 01 57           1926 	.dw	0,343
      004085 04                    1927 	.uleb128	4
      004086 02                    1928 	.db	2
      004087 91                    1929 	.db	145
      004088 04                    1930 	.sleb128	4
      004089 41 44 43 32 5F 50 72  1931 	.ascii "ADC2_PrescalerSelection"
             65 73 63 61 6C 65 72
             53 65 6C 65 63 74 69
             6F 6E
      0040A0 00                    1932 	.db	0
      0040A1 00 00 01 57           1933 	.dw	0,343
      0040A5 04                    1934 	.uleb128	4
      0040A6 02                    1935 	.db	2
      0040A7 91                    1936 	.db	145
      0040A8 05                    1937 	.sleb128	5
      0040A9 41 44 43 32 5F 45 78  1938 	.ascii "ADC2_ExtTrigger"
             74 54 72 69 67 67 65
             72
      0040B8 00                    1939 	.db	0
      0040B9 00 00 01 57           1940 	.dw	0,343
      0040BD 04                    1941 	.uleb128	4
      0040BE 02                    1942 	.db	2
      0040BF 91                    1943 	.db	145
      0040C0 06                    1944 	.sleb128	6
      0040C1 41 44 43 32 5F 45 78  1945 	.ascii "ADC2_ExtTriggerState"
             74 54 72 69 67 67 65
             72 53 74 61 74 65
      0040D5 00                    1946 	.db	0
      0040D6 00 00 01 57           1947 	.dw	0,343
      0040DA 04                    1948 	.uleb128	4
      0040DB 02                    1949 	.db	2
      0040DC 91                    1950 	.db	145
      0040DD 07                    1951 	.sleb128	7
      0040DE 41 44 43 32 5F 41 6C  1952 	.ascii "ADC2_Align"
             69 67 6E
      0040E8 00                    1953 	.db	0
      0040E9 00 00 01 57           1954 	.dw	0,343
      0040ED 04                    1955 	.uleb128	4
      0040EE 02                    1956 	.db	2
      0040EF 91                    1957 	.db	145
      0040F0 08                    1958 	.sleb128	8
      0040F1 41 44 43 32 5F 53 63  1959 	.ascii "ADC2_SchmittTriggerChannel"
             68 6D 69 74 74 54 72
             69 67 67 65 72 43 68
             61 6E 6E 65 6C
      00410B 00                    1960 	.db	0
      00410C 00 00 01 57           1961 	.dw	0,343
      004110 04                    1962 	.uleb128	4
      004111 02                    1963 	.db	2
      004112 91                    1964 	.db	145
      004113 09                    1965 	.sleb128	9
      004114 41 44 43 32 5F 53 63  1966 	.ascii "ADC2_SchmittTriggerState"
             68 6D 69 74 74 54 72
             69 67 67 65 72 53 74
             61 74 65
      00412C 00                    1967 	.db	0
      00412D 00 00 01 57           1968 	.dw	0,343
      004131 00                    1969 	.uleb128	0
      004132 05                    1970 	.uleb128	5
      004133 75 6E 73 69 67 6E 65  1971 	.ascii "unsigned char"
             64 20 63 68 61 72
      004140 00                    1972 	.db	0
      004141 01                    1973 	.db	1
      004142 08                    1974 	.db	8
      004143 03                    1975 	.uleb128	3
      004144 00 00 01 A7           1976 	.dw	0,423
      004148 41 44 43 32 5F 43 6D  1977 	.ascii "ADC2_Cmd"
             64
      004150 00                    1978 	.db	0
      004151 00 00 9C CA           1979 	.dw	0,(_ADC2_Cmd)
      004155 00 00 9C E2           1980 	.dw	0,(XG$ADC2_Cmd$0$0+1)
      004159 01                    1981 	.db	1
      00415A 00 00 32 20           1982 	.dw	0,(Ldebug_loc_start+364)
      00415E 04                    1983 	.uleb128	4
      00415F 02                    1984 	.db	2
      004160 91                    1985 	.db	145
      004161 02                    1986 	.sleb128	2
      004162 4E 65 77 53 74 61 74  1987 	.ascii "NewState"
             65
      00416A 00                    1988 	.db	0
      00416B 00 00 01 57           1989 	.dw	0,343
      00416F 06                    1990 	.uleb128	6
      004170 00 00 9C D4           1991 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$36)
      004174 00 00 9C D9           1992 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$38)
      004178 06                    1993 	.uleb128	6
      004179 00 00 9C DC           1994 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$39)
      00417D 00 00 9C E1           1995 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$41)
      004181 00                    1996 	.uleb128	0
      004182 03                    1997 	.uleb128	3
      004183 00 00 01 EB           1998 	.dw	0,491
      004187 41 44 43 32 5F 49 54  1999 	.ascii "ADC2_ITConfig"
             43 6F 6E 66 69 67
      004194 00                    2000 	.db	0
      004195 00 00 9C E2           2001 	.dw	0,(_ADC2_ITConfig)
      004199 00 00 9C FA           2002 	.dw	0,(XG$ADC2_ITConfig$0$0+1)
      00419D 01                    2003 	.db	1
      00419E 00 00 32 0C           2004 	.dw	0,(Ldebug_loc_start+344)
      0041A2 04                    2005 	.uleb128	4
      0041A3 02                    2006 	.db	2
      0041A4 91                    2007 	.db	145
      0041A5 02                    2008 	.sleb128	2
      0041A6 4E 65 77 53 74 61 74  2009 	.ascii "NewState"
             65
      0041AE 00                    2010 	.db	0
      0041AF 00 00 01 57           2011 	.dw	0,343
      0041B3 06                    2012 	.uleb128	6
      0041B4 00 00 9C EC           2013 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$49)
      0041B8 00 00 9C F1           2014 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$51)
      0041BC 06                    2015 	.uleb128	6
      0041BD 00 00 9C F4           2016 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$52)
      0041C1 00 00 9C F9           2017 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$54)
      0041C5 00                    2018 	.uleb128	0
      0041C6 03                    2019 	.uleb128	3
      0041C7 00 00 02 2A           2020 	.dw	0,554
      0041CB 41 44 43 32 5F 50 72  2021 	.ascii "ADC2_PrescalerConfig"
             65 73 63 61 6C 65 72
             43 6F 6E 66 69 67
      0041DF 00                    2022 	.db	0
      0041E0 00 00 9C FA           2023 	.dw	0,(_ADC2_PrescalerConfig)
      0041E4 00 00 9D 0B           2024 	.dw	0,(XG$ADC2_PrescalerConfig$0$0+1)
      0041E8 01                    2025 	.db	1
      0041E9 00 00 31 F8           2026 	.dw	0,(Ldebug_loc_start+324)
      0041ED 04                    2027 	.uleb128	4
      0041EE 02                    2028 	.db	2
      0041EF 91                    2029 	.db	145
      0041F0 02                    2030 	.sleb128	2
      0041F1 41 44 43 32 5F 50 72  2031 	.ascii "ADC2_Prescaler"
             65 73 63 61 6C 65 72
      0041FF 00                    2032 	.db	0
      004200 00 00 01 57           2033 	.dw	0,343
      004204 00                    2034 	.uleb128	0
      004205 03                    2035 	.uleb128	3
      004206 00 00 02 DB           2036 	.dw	0,731
      00420A 41 44 43 32 5F 53 63  2037 	.ascii "ADC2_SchmittTriggerConfig"
             68 6D 69 74 74 54 72
             69 67 67 65 72 43 6F
             6E 66 69 67
      004223 00                    2038 	.db	0
      004224 00 00 9D 0B           2039 	.dw	0,(_ADC2_SchmittTriggerConfig)
      004228 00 00 9D 9F           2040 	.dw	0,(XG$ADC2_SchmittTriggerConfig$0$0+1)
      00422C 01                    2041 	.db	1
      00422D 00 00 31 90           2042 	.dw	0,(Ldebug_loc_start+220)
      004231 04                    2043 	.uleb128	4
      004232 02                    2044 	.db	2
      004233 91                    2045 	.db	145
      004234 02                    2046 	.sleb128	2
      004235 41 44 43 32 5F 53 63  2047 	.ascii "ADC2_SchmittTriggerChannel"
             68 6D 69 74 74 54 72
             69 67 67 65 72 43 68
             61 6E 6E 65 6C
      00424F 00                    2048 	.db	0
      004250 00 00 01 57           2049 	.dw	0,343
      004254 04                    2050 	.uleb128	4
      004255 02                    2051 	.db	2
      004256 91                    2052 	.db	145
      004257 03                    2053 	.sleb128	3
      004258 4E 65 77 53 74 61 74  2054 	.ascii "NewState"
             65
      004260 00                    2055 	.db	0
      004261 00 00 01 57           2056 	.dw	0,343
      004265 07                    2057 	.uleb128	7
      004266 00 00 02 A6           2058 	.dw	0,678
      00426A 00 00 9D 1B           2059 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$71)
      00426E 06                    2060 	.uleb128	6
      00426F 00 00 9D 22           2061 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$73)
      004273 00 00 9D 2D           2062 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$76)
      004277 06                    2063 	.uleb128	6
      004278 00 00 9D 30           2064 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$77)
      00427C 00 00 9D 3B           2065 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$80)
      004280 00                    2066 	.uleb128	0
      004281 07                    2067 	.uleb128	7
      004282 00 00 02 C2           2068 	.dw	0,706
      004286 00 00 9D 59           2069 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$86)
      00428A 06                    2070 	.uleb128	6
      00428B 00 00 9D 60           2071 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$88)
      00428F 00 00 9D 66           2072 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$90)
      004293 06                    2073 	.uleb128	6
      004294 00 00 9D 69           2074 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$91)
      004298 00 00 9D 6E           2075 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$93)
      00429C 00                    2076 	.uleb128	0
      00429D 08                    2077 	.uleb128	8
      00429E 00 00 9D 88           2078 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$98)
      0042A2 06                    2079 	.uleb128	6
      0042A3 00 00 9D 8F           2080 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$100)
      0042A7 00 00 9D 95           2081 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$102)
      0042AB 06                    2082 	.uleb128	6
      0042AC 00 00 9D 98           2083 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$103)
      0042B0 00 00 9D 9D           2084 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$105)
      0042B4 00                    2085 	.uleb128	0
      0042B5 00                    2086 	.uleb128	0
      0042B6 03                    2087 	.uleb128	3
      0042B7 00 00 03 5A           2088 	.dw	0,858
      0042BB 41 44 43 32 5F 43 6F  2089 	.ascii "ADC2_ConversionConfig"
             6E 76 65 72 73 69 6F
             6E 43 6F 6E 66 69 67
      0042D0 00                    2090 	.db	0
      0042D1 00 00 9D 9F           2091 	.dw	0,(_ADC2_ConversionConfig)
      0042D5 00 00 9D DD           2092 	.dw	0,(XG$ADC2_ConversionConfig$0$0+1)
      0042D9 01                    2093 	.db	1
      0042DA 00 00 31 58           2094 	.dw	0,(Ldebug_loc_start+164)
      0042DE 04                    2095 	.uleb128	4
      0042DF 02                    2096 	.db	2
      0042E0 91                    2097 	.db	145
      0042E1 02                    2098 	.sleb128	2
      0042E2 41 44 43 32 5F 43 6F  2099 	.ascii "ADC2_ConversionMode"
             6E 76 65 72 73 69 6F
             6E 4D 6F 64 65
      0042F5 00                    2100 	.db	0
      0042F6 00 00 01 57           2101 	.dw	0,343
      0042FA 04                    2102 	.uleb128	4
      0042FB 02                    2103 	.db	2
      0042FC 91                    2104 	.db	145
      0042FD 03                    2105 	.sleb128	3
      0042FE 41 44 43 32 5F 43 68  2106 	.ascii "ADC2_Channel"
             61 6E 6E 65 6C
      00430A 00                    2107 	.db	0
      00430B 00 00 01 57           2108 	.dw	0,343
      00430F 04                    2109 	.uleb128	4
      004310 02                    2110 	.db	2
      004311 91                    2111 	.db	145
      004312 04                    2112 	.sleb128	4
      004313 41 44 43 32 5F 41 6C  2113 	.ascii "ADC2_Align"
             69 67 6E
      00431D 00                    2114 	.db	0
      00431E 00 00 01 57           2115 	.dw	0,343
      004322 06                    2116 	.uleb128	6
      004323 00 00 9D BF           2117 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$119)
      004327 00 00 9D C4           2118 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$121)
      00432B 06                    2119 	.uleb128	6
      00432C 00 00 9D C7           2120 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$122)
      004330 00 00 9D CC           2121 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$124)
      004334 00                    2122 	.uleb128	0
      004335 03                    2123 	.uleb128	3
      004336 00 00 03 C3           2124 	.dw	0,963
      00433A 41 44 43 32 5F 45 78  2125 	.ascii "ADC2_ExternalTriggerConfig"
             74 65 72 6E 61 6C 54
             72 69 67 67 65 72 43
             6F 6E 66 69 67
      004354 00                    2126 	.db	0
      004355 00 00 9D DD           2127 	.dw	0,(_ADC2_ExternalTriggerConfig)
      004359 00 00 9E 05           2128 	.dw	0,(XG$ADC2_ExternalTriggerConfig$0$0+1)
      00435D 01                    2129 	.db	1
      00435E 00 00 31 44           2130 	.dw	0,(Ldebug_loc_start+144)
      004362 04                    2131 	.uleb128	4
      004363 02                    2132 	.db	2
      004364 91                    2133 	.db	145
      004365 02                    2134 	.sleb128	2
      004366 41 44 43 32 5F 45 78  2135 	.ascii "ADC2_ExtTrigger"
             74 54 72 69 67 67 65
             72
      004375 00                    2136 	.db	0
      004376 00 00 01 57           2137 	.dw	0,343
      00437A 04                    2138 	.uleb128	4
      00437B 02                    2139 	.db	2
      00437C 91                    2140 	.db	145
      00437D 03                    2141 	.sleb128	3
      00437E 4E 65 77 53 74 61 74  2142 	.ascii "NewState"
             65
      004386 00                    2143 	.db	0
      004387 00 00 01 57           2144 	.dw	0,343
      00438B 06                    2145 	.uleb128	6
      00438C 00 00 9D EF           2146 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$134)
      004390 00 00 9D F4           2147 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$136)
      004394 06                    2148 	.uleb128	6
      004395 00 00 9D F7           2149 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$137)
      004399 00 00 9D FC           2150 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$139)
      00439D 00                    2151 	.uleb128	0
      00439E 02                    2152 	.uleb128	2
      00439F 41 44 43 32 5F 53 74  2153 	.ascii "ADC2_StartConversion"
             61 72 74 43 6F 6E 76
             65 72 73 69 6F 6E
      0043B3 00                    2154 	.db	0
      0043B4 00 00 9E 05           2155 	.dw	0,(_ADC2_StartConversion)
      0043B8 00 00 9E 0E           2156 	.dw	0,(XG$ADC2_StartConversion$0$0+1)
      0043BC 01                    2157 	.db	1
      0043BD 00 00 31 30           2158 	.dw	0,(Ldebug_loc_start+124)
      0043C1 05                    2159 	.uleb128	5
      0043C2 75 6E 73 69 67 6E 65  2160 	.ascii "unsigned int"
             64 20 69 6E 74
      0043CE 00                    2161 	.db	0
      0043CF 02                    2162 	.db	2
      0043D0 07                    2163 	.db	7
      0043D1 09                    2164 	.uleb128	9
      0043D2 00 00 04 56           2165 	.dw	0,1110
      0043D6 41 44 43 32 5F 47 65  2166 	.ascii "ADC2_GetConversionValue"
             74 43 6F 6E 76 65 72
             73 69 6F 6E 56 61 6C
             75 65
      0043ED 00                    2167 	.db	0
      0043EE 00 00 9E 0E           2168 	.dw	0,(_ADC2_GetConversionValue)
      0043F2 00 00 9E 56           2169 	.dw	0,(XG$ADC2_GetConversionValue$0$0+1)
      0043F6 01                    2170 	.db	1
      0043F7 00 00 31 04           2171 	.dw	0,(Ldebug_loc_start+80)
      0043FB 00 00 03 E6           2172 	.dw	0,998
      0043FF 06                    2173 	.uleb128	6
      004400 00 00 9E 1A           2174 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$154)
      004404 00 00 9E 30           2175 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$158)
      004408 06                    2176 	.uleb128	6
      004409 00 00 9E 33           2177 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$159)
      00440D 00 00 9E 51           2178 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$163)
      004411 0A                    2179 	.uleb128	10
      004412 06                    2180 	.db	6
      004413 54                    2181 	.db	84
      004414 93                    2182 	.db	147
      004415 01                    2183 	.uleb128	1
      004416 53                    2184 	.db	83
      004417 93                    2185 	.db	147
      004418 01                    2186 	.uleb128	1
      004419 74 65 6D 70 68        2187 	.ascii "temph"
      00441E 00                    2188 	.db	0
      00441F 00 00 03 E6           2189 	.dw	0,998
      004423 0A                    2190 	.uleb128	10
      004424 01                    2191 	.db	1
      004425 50                    2192 	.db	80
      004426 74 65 6D 70 6C        2193 	.ascii "templ"
      00442B 00                    2194 	.db	0
      00442C 00 00 01 57           2195 	.dw	0,343
      004430 00                    2196 	.uleb128	0
      004431 0B                    2197 	.uleb128	11
      004432 41 44 43 32 5F 47 65  2198 	.ascii "ADC2_GetFlagStatus"
             74 46 6C 61 67 53 74
             61 74 75 73
      004444 00                    2199 	.db	0
      004445 00 00 9E 56           2200 	.dw	0,(_ADC2_GetFlagStatus)
      004449 00 00 9E 5C           2201 	.dw	0,(XG$ADC2_GetFlagStatus$0$0+1)
      00444D 01                    2202 	.db	1
      00444E 00 00 30 F0           2203 	.dw	0,(Ldebug_loc_start+60)
      004452 00 00 01 57           2204 	.dw	0,343
      004456 02                    2205 	.uleb128	2
      004457 41 44 43 32 5F 43 6C  2206 	.ascii "ADC2_ClearFlag"
             65 61 72 46 6C 61 67
      004465 00                    2207 	.db	0
      004466 00 00 9E 5C           2208 	.dw	0,(_ADC2_ClearFlag)
      00446A 00 00 9E 65           2209 	.dw	0,(XG$ADC2_ClearFlag$0$0+1)
      00446E 01                    2210 	.db	1
      00446F 00 00 30 DC           2211 	.dw	0,(Ldebug_loc_start+40)
      004473 0B                    2212 	.uleb128	11
      004474 41 44 43 32 5F 47 65  2213 	.ascii "ADC2_GetITStatus"
             74 49 54 53 74 61 74
             75 73
      004484 00                    2214 	.db	0
      004485 00 00 9E 65           2215 	.dw	0,(_ADC2_GetITStatus)
      004489 00 00 9E 6B           2216 	.dw	0,(XG$ADC2_GetITStatus$0$0+1)
      00448D 01                    2217 	.db	1
      00448E 00 00 30 C8           2218 	.dw	0,(Ldebug_loc_start+20)
      004492 00 00 01 57           2219 	.dw	0,343
      004496 02                    2220 	.uleb128	2
      004497 41 44 43 32 5F 43 6C  2221 	.ascii "ADC2_ClearITPendingBit"
             65 61 72 49 54 50 65
             6E 64 69 6E 67 42 69
             74
      0044AD 00                    2222 	.db	0
      0044AE 00 00 9E 6B           2223 	.dw	0,(_ADC2_ClearITPendingBit)
      0044B2 00 00 9E 74           2224 	.dw	0,(XG$ADC2_ClearITPendingBit$0$0+1)
      0044B6 01                    2225 	.db	1
      0044B7 00 00 30 B4           2226 	.dw	0,(Ldebug_loc_start)
      0044BB 00                    2227 	.uleb128	0
      0044BC 00                    2228 	.uleb128	0
      0044BD 00                    2229 	.uleb128	0
      0044BE                       2230 Ldebug_info_end:
                                   2231 
                                   2232 	.area .debug_pubnames (NOLOAD)
      000D2A 00 00 01 4A           2233 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000D2E                       2234 Ldebug_pubnames_start:
      000D2E 00 02                 2235 	.dw	2
      000D30 00 00 3F DB           2236 	.dw	0,(Ldebug_info_start-4)
      000D34 00 00 04 E3           2237 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000D38 00 00 00 43           2238 	.dw	0,67
      000D3C 41 44 43 32 5F 44 65  2239 	.ascii "ADC2_DeInit"
             49 6E 69 74
      000D47 00                    2240 	.db	0
      000D48 00 00 00 5D           2241 	.dw	0,93
      000D4C 41 44 43 32 5F 49 6E  2242 	.ascii "ADC2_Init"
             69 74
      000D55 00                    2243 	.db	0
      000D56 00 00 01 68           2244 	.dw	0,360
      000D5A 41 44 43 32 5F 43 6D  2245 	.ascii "ADC2_Cmd"
             64
      000D62 00                    2246 	.db	0
      000D63 00 00 01 A7           2247 	.dw	0,423
      000D67 41 44 43 32 5F 49 54  2248 	.ascii "ADC2_ITConfig"
             43 6F 6E 66 69 67
      000D74 00                    2249 	.db	0
      000D75 00 00 01 EB           2250 	.dw	0,491
      000D79 41 44 43 32 5F 50 72  2251 	.ascii "ADC2_PrescalerConfig"
             65 73 63 61 6C 65 72
             43 6F 6E 66 69 67
      000D8D 00                    2252 	.db	0
      000D8E 00 00 02 2A           2253 	.dw	0,554
      000D92 41 44 43 32 5F 53 63  2254 	.ascii "ADC2_SchmittTriggerConfig"
             68 6D 69 74 74 54 72
             69 67 67 65 72 43 6F
             6E 66 69 67
      000DAB 00                    2255 	.db	0
      000DAC 00 00 02 DB           2256 	.dw	0,731
      000DB0 41 44 43 32 5F 43 6F  2257 	.ascii "ADC2_ConversionConfig"
             6E 76 65 72 73 69 6F
             6E 43 6F 6E 66 69 67
      000DC5 00                    2258 	.db	0
      000DC6 00 00 03 5A           2259 	.dw	0,858
      000DCA 41 44 43 32 5F 45 78  2260 	.ascii "ADC2_ExternalTriggerConfig"
             74 65 72 6E 61 6C 54
             72 69 67 67 65 72 43
             6F 6E 66 69 67
      000DE4 00                    2261 	.db	0
      000DE5 00 00 03 C3           2262 	.dw	0,963
      000DE9 41 44 43 32 5F 53 74  2263 	.ascii "ADC2_StartConversion"
             61 72 74 43 6F 6E 76
             65 72 73 69 6F 6E
      000DFD 00                    2264 	.db	0
      000DFE 00 00 03 F6           2265 	.dw	0,1014
      000E02 41 44 43 32 5F 47 65  2266 	.ascii "ADC2_GetConversionValue"
             74 43 6F 6E 76 65 72
             73 69 6F 6E 56 61 6C
             75 65
      000E19 00                    2267 	.db	0
      000E1A 00 00 04 56           2268 	.dw	0,1110
      000E1E 41 44 43 32 5F 47 65  2269 	.ascii "ADC2_GetFlagStatus"
             74 46 6C 61 67 53 74
             61 74 75 73
      000E30 00                    2270 	.db	0
      000E31 00 00 04 7B           2271 	.dw	0,1147
      000E35 41 44 43 32 5F 43 6C  2272 	.ascii "ADC2_ClearFlag"
             65 61 72 46 6C 61 67
      000E43 00                    2273 	.db	0
      000E44 00 00 04 98           2274 	.dw	0,1176
      000E48 41 44 43 32 5F 47 65  2275 	.ascii "ADC2_GetITStatus"
             74 49 54 53 74 61 74
             75 73
      000E58 00                    2276 	.db	0
      000E59 00 00 04 BB           2277 	.dw	0,1211
      000E5D 41 44 43 32 5F 43 6C  2278 	.ascii "ADC2_ClearITPendingBit"
             65 61 72 49 54 50 65
             6E 64 69 6E 67 42 69
             74
      000E73 00                    2279 	.db	0
      000E74 00 00 00 00           2280 	.dw	0,0
      000E78                       2281 Ldebug_pubnames_end:
                                   2282 
                                   2283 	.area .debug_frame (NOLOAD)
      002DF1 00 00                 2284 	.dw	0
      002DF3 00 0E                 2285 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      002DF5                       2286 Ldebug_CIE0_start:
      002DF5 FF FF                 2287 	.dw	0xffff
      002DF7 FF FF                 2288 	.dw	0xffff
      002DF9 01                    2289 	.db	1
      002DFA 00                    2290 	.db	0
      002DFB 01                    2291 	.uleb128	1
      002DFC 7F                    2292 	.sleb128	-1
      002DFD 09                    2293 	.db	9
      002DFE 0C                    2294 	.db	12
      002DFF 08                    2295 	.uleb128	8
      002E00 02                    2296 	.uleb128	2
      002E01 89                    2297 	.db	137
      002E02 01                    2298 	.uleb128	1
      002E03                       2299 Ldebug_CIE0_end:
      002E03 00 00 00 13           2300 	.dw	0,19
      002E07 00 00 2D F1           2301 	.dw	0,(Ldebug_CIE0_start-4)
      002E0B 00 00 9E 6B           2302 	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$188)	;initial loc
      002E0F 00 00 00 09           2303 	.dw	0,Sstm8s_adc2$ADC2_ClearITPendingBit$192-Sstm8s_adc2$ADC2_ClearITPendingBit$188
      002E13 01                    2304 	.db	1
      002E14 00 00 9E 6B           2305 	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$188)
      002E18 0E                    2306 	.db	14
      002E19 02                    2307 	.uleb128	2
                                   2308 
                                   2309 	.area .debug_frame (NOLOAD)
      002E1A 00 00                 2310 	.dw	0
      002E1C 00 0E                 2311 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      002E1E                       2312 Ldebug_CIE1_start:
      002E1E FF FF                 2313 	.dw	0xffff
      002E20 FF FF                 2314 	.dw	0xffff
      002E22 01                    2315 	.db	1
      002E23 00                    2316 	.db	0
      002E24 01                    2317 	.uleb128	1
      002E25 7F                    2318 	.sleb128	-1
      002E26 09                    2319 	.db	9
      002E27 0C                    2320 	.db	12
      002E28 08                    2321 	.uleb128	8
      002E29 02                    2322 	.uleb128	2
      002E2A 89                    2323 	.db	137
      002E2B 01                    2324 	.uleb128	1
      002E2C                       2325 Ldebug_CIE1_end:
      002E2C 00 00 00 13           2326 	.dw	0,19
      002E30 00 00 2E 1A           2327 	.dw	0,(Ldebug_CIE1_start-4)
      002E34 00 00 9E 65           2328 	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$182)	;initial loc
      002E38 00 00 00 06           2329 	.dw	0,Sstm8s_adc2$ADC2_GetITStatus$186-Sstm8s_adc2$ADC2_GetITStatus$182
      002E3C 01                    2330 	.db	1
      002E3D 00 00 9E 65           2331 	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$182)
      002E41 0E                    2332 	.db	14
      002E42 02                    2333 	.uleb128	2
                                   2334 
                                   2335 	.area .debug_frame (NOLOAD)
      002E43 00 00                 2336 	.dw	0
      002E45 00 0E                 2337 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      002E47                       2338 Ldebug_CIE2_start:
      002E47 FF FF                 2339 	.dw	0xffff
      002E49 FF FF                 2340 	.dw	0xffff
      002E4B 01                    2341 	.db	1
      002E4C 00                    2342 	.db	0
      002E4D 01                    2343 	.uleb128	1
      002E4E 7F                    2344 	.sleb128	-1
      002E4F 09                    2345 	.db	9
      002E50 0C                    2346 	.db	12
      002E51 08                    2347 	.uleb128	8
      002E52 02                    2348 	.uleb128	2
      002E53 89                    2349 	.db	137
      002E54 01                    2350 	.uleb128	1
      002E55                       2351 Ldebug_CIE2_end:
      002E55 00 00 00 13           2352 	.dw	0,19
      002E59 00 00 2E 43           2353 	.dw	0,(Ldebug_CIE2_start-4)
      002E5D 00 00 9E 5C           2354 	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$176)	;initial loc
      002E61 00 00 00 09           2355 	.dw	0,Sstm8s_adc2$ADC2_ClearFlag$180-Sstm8s_adc2$ADC2_ClearFlag$176
      002E65 01                    2356 	.db	1
      002E66 00 00 9E 5C           2357 	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$176)
      002E6A 0E                    2358 	.db	14
      002E6B 02                    2359 	.uleb128	2
                                   2360 
                                   2361 	.area .debug_frame (NOLOAD)
      002E6C 00 00                 2362 	.dw	0
      002E6E 00 0E                 2363 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      002E70                       2364 Ldebug_CIE3_start:
      002E70 FF FF                 2365 	.dw	0xffff
      002E72 FF FF                 2366 	.dw	0xffff
      002E74 01                    2367 	.db	1
      002E75 00                    2368 	.db	0
      002E76 01                    2369 	.uleb128	1
      002E77 7F                    2370 	.sleb128	-1
      002E78 09                    2371 	.db	9
      002E79 0C                    2372 	.db	12
      002E7A 08                    2373 	.uleb128	8
      002E7B 02                    2374 	.uleb128	2
      002E7C 89                    2375 	.db	137
      002E7D 01                    2376 	.uleb128	1
      002E7E                       2377 Ldebug_CIE3_end:
      002E7E 00 00 00 13           2378 	.dw	0,19
      002E82 00 00 2E 6C           2379 	.dw	0,(Ldebug_CIE3_start-4)
      002E86 00 00 9E 56           2380 	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$170)	;initial loc
      002E8A 00 00 00 06           2381 	.dw	0,Sstm8s_adc2$ADC2_GetFlagStatus$174-Sstm8s_adc2$ADC2_GetFlagStatus$170
      002E8E 01                    2382 	.db	1
      002E8F 00 00 9E 56           2383 	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$170)
      002E93 0E                    2384 	.db	14
      002E94 02                    2385 	.uleb128	2
                                   2386 
                                   2387 	.area .debug_frame (NOLOAD)
      002E95 00 00                 2388 	.dw	0
      002E97 00 0E                 2389 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      002E99                       2390 Ldebug_CIE4_start:
      002E99 FF FF                 2391 	.dw	0xffff
      002E9B FF FF                 2392 	.dw	0xffff
      002E9D 01                    2393 	.db	1
      002E9E 00                    2394 	.db	0
      002E9F 01                    2395 	.uleb128	1
      002EA0 7F                    2396 	.sleb128	-1
      002EA1 09                    2397 	.db	9
      002EA2 0C                    2398 	.db	12
      002EA3 08                    2399 	.uleb128	8
      002EA4 02                    2400 	.uleb128	2
      002EA5 89                    2401 	.db	137
      002EA6 01                    2402 	.uleb128	1
      002EA7                       2403 Ldebug_CIE4_end:
      002EA7 00 00 00 21           2404 	.dw	0,33
      002EAB 00 00 2E 95           2405 	.dw	0,(Ldebug_CIE4_start-4)
      002EAF 00 00 9E 0E           2406 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$151)	;initial loc
      002EB3 00 00 00 48           2407 	.dw	0,Sstm8s_adc2$ADC2_GetConversionValue$168-Sstm8s_adc2$ADC2_GetConversionValue$151
      002EB7 01                    2408 	.db	1
      002EB8 00 00 9E 0E           2409 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$151)
      002EBC 0E                    2410 	.db	14
      002EBD 02                    2411 	.uleb128	2
      002EBE 01                    2412 	.db	1
      002EBF 00 00 9E 10           2413 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$152)
      002EC3 0E                    2414 	.db	14
      002EC4 06                    2415 	.uleb128	6
      002EC5 01                    2416 	.db	1
      002EC6 00 00 9E 55           2417 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$166)
      002ECA 0E                    2418 	.db	14
      002ECB 02                    2419 	.uleb128	2
                                   2420 
                                   2421 	.area .debug_frame (NOLOAD)
      002ECC 00 00                 2422 	.dw	0
      002ECE 00 0E                 2423 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      002ED0                       2424 Ldebug_CIE5_start:
      002ED0 FF FF                 2425 	.dw	0xffff
      002ED2 FF FF                 2426 	.dw	0xffff
      002ED4 01                    2427 	.db	1
      002ED5 00                    2428 	.db	0
      002ED6 01                    2429 	.uleb128	1
      002ED7 7F                    2430 	.sleb128	-1
      002ED8 09                    2431 	.db	9
      002ED9 0C                    2432 	.db	12
      002EDA 08                    2433 	.uleb128	8
      002EDB 02                    2434 	.uleb128	2
      002EDC 89                    2435 	.db	137
      002EDD 01                    2436 	.uleb128	1
      002EDE                       2437 Ldebug_CIE5_end:
      002EDE 00 00 00 13           2438 	.dw	0,19
      002EE2 00 00 2E CC           2439 	.dw	0,(Ldebug_CIE5_start-4)
      002EE6 00 00 9E 05           2440 	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$145)	;initial loc
      002EEA 00 00 00 09           2441 	.dw	0,Sstm8s_adc2$ADC2_StartConversion$149-Sstm8s_adc2$ADC2_StartConversion$145
      002EEE 01                    2442 	.db	1
      002EEF 00 00 9E 05           2443 	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$145)
      002EF3 0E                    2444 	.db	14
      002EF4 02                    2445 	.uleb128	2
                                   2446 
                                   2447 	.area .debug_frame (NOLOAD)
      002EF5 00 00                 2448 	.dw	0
      002EF7 00 0E                 2449 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      002EF9                       2450 Ldebug_CIE6_start:
      002EF9 FF FF                 2451 	.dw	0xffff
      002EFB FF FF                 2452 	.dw	0xffff
      002EFD 01                    2453 	.db	1
      002EFE 00                    2454 	.db	0
      002EFF 01                    2455 	.uleb128	1
      002F00 7F                    2456 	.sleb128	-1
      002F01 09                    2457 	.db	9
      002F02 0C                    2458 	.db	12
      002F03 08                    2459 	.uleb128	8
      002F04 02                    2460 	.uleb128	2
      002F05 89                    2461 	.db	137
      002F06 01                    2462 	.uleb128	1
      002F07                       2463 Ldebug_CIE6_end:
      002F07 00 00 00 13           2464 	.dw	0,19
      002F0B 00 00 2E F5           2465 	.dw	0,(Ldebug_CIE6_start-4)
      002F0F 00 00 9D DD           2466 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$131)	;initial loc
      002F13 00 00 00 28           2467 	.dw	0,Sstm8s_adc2$ADC2_ExternalTriggerConfig$143-Sstm8s_adc2$ADC2_ExternalTriggerConfig$131
      002F17 01                    2468 	.db	1
      002F18 00 00 9D DD           2469 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$131)
      002F1C 0E                    2470 	.db	14
      002F1D 02                    2471 	.uleb128	2
                                   2472 
                                   2473 	.area .debug_frame (NOLOAD)
      002F1E 00 00                 2474 	.dw	0
      002F20 00 0E                 2475 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      002F22                       2476 Ldebug_CIE7_start:
      002F22 FF FF                 2477 	.dw	0xffff
      002F24 FF FF                 2478 	.dw	0xffff
      002F26 01                    2479 	.db	1
      002F27 00                    2480 	.db	0
      002F28 01                    2481 	.uleb128	1
      002F29 7F                    2482 	.sleb128	-1
      002F2A 09                    2483 	.db	9
      002F2B 0C                    2484 	.db	12
      002F2C 08                    2485 	.uleb128	8
      002F2D 02                    2486 	.uleb128	2
      002F2E 89                    2487 	.db	137
      002F2F 01                    2488 	.uleb128	1
      002F30                       2489 Ldebug_CIE7_end:
      002F30 00 00 00 28           2490 	.dw	0,40
      002F34 00 00 2F 1E           2491 	.dw	0,(Ldebug_CIE7_start-4)
      002F38 00 00 9D 9F           2492 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$111)	;initial loc
      002F3C 00 00 00 3E           2493 	.dw	0,Sstm8s_adc2$ADC2_ConversionConfig$129-Sstm8s_adc2$ADC2_ConversionConfig$111
      002F40 01                    2494 	.db	1
      002F41 00 00 9D 9F           2495 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$111)
      002F45 0E                    2496 	.db	14
      002F46 02                    2497 	.uleb128	2
      002F47 01                    2498 	.db	1
      002F48 00 00 9D B3           2499 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$116)
      002F4C 0E                    2500 	.db	14
      002F4D 03                    2501 	.uleb128	3
      002F4E 01                    2502 	.db	1
      002F4F 00 00 9D B7           2503 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$117)
      002F53 0E                    2504 	.db	14
      002F54 02                    2505 	.uleb128	2
      002F55 01                    2506 	.db	1
      002F56 00 00 9D BF           2507 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$118)
      002F5A 0E                    2508 	.db	14
      002F5B 02                    2509 	.uleb128	2
                                   2510 
                                   2511 	.area .debug_frame (NOLOAD)
      002F5C 00 00                 2512 	.dw	0
      002F5E 00 0E                 2513 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      002F60                       2514 Ldebug_CIE8_start:
      002F60 FF FF                 2515 	.dw	0xffff
      002F62 FF FF                 2516 	.dw	0xffff
      002F64 01                    2517 	.db	1
      002F65 00                    2518 	.db	0
      002F66 01                    2519 	.uleb128	1
      002F67 7F                    2520 	.sleb128	-1
      002F68 09                    2521 	.db	9
      002F69 0C                    2522 	.db	12
      002F6A 08                    2523 	.uleb128	8
      002F6B 02                    2524 	.uleb128	2
      002F6C 89                    2525 	.db	137
      002F6D 01                    2526 	.uleb128	1
      002F6E                       2527 Ldebug_CIE8_end:
      002F6E 00 00 00 44           2528 	.dw	0,68
      002F72 00 00 2F 5C           2529 	.dw	0,(Ldebug_CIE8_start-4)
      002F76 00 00 9D 0B           2530 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$66)	;initial loc
      002F7A 00 00 00 94           2531 	.dw	0,Sstm8s_adc2$ADC2_SchmittTriggerConfig$109-Sstm8s_adc2$ADC2_SchmittTriggerConfig$66
      002F7E 01                    2532 	.db	1
      002F7F 00 00 9D 0B           2533 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$66)
      002F83 0E                    2534 	.db	14
      002F84 02                    2535 	.uleb128	2
      002F85 01                    2536 	.db	1
      002F86 00 00 9D 0C           2537 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$67)
      002F8A 0E                    2538 	.db	14
      002F8B 03                    2539 	.uleb128	3
      002F8C 01                    2540 	.db	1
      002F8D 00 00 9D 18           2541 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$69)
      002F91 0E                    2542 	.db	14
      002F92 03                    2543 	.uleb128	3
      002F93 01                    2544 	.db	1
      002F94 00 00 9D 4F           2545 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$84)
      002F98 0E                    2546 	.db	14
      002F99 04                    2547 	.uleb128	4
      002F9A 01                    2548 	.db	1
      002F9B 00 00 9D 59           2549 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$85)
      002F9F 0E                    2550 	.db	14
      002FA0 03                    2551 	.uleb128	3
      002FA1 01                    2552 	.db	1
      002FA2 00 00 9D 7E           2553 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$96)
      002FA6 0E                    2554 	.db	14
      002FA7 04                    2555 	.uleb128	4
      002FA8 01                    2556 	.db	1
      002FA9 00 00 9D 88           2557 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$97)
      002FAD 0E                    2558 	.db	14
      002FAE 03                    2559 	.uleb128	3
      002FAF 01                    2560 	.db	1
      002FB0 00 00 9D 9E           2561 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$107)
      002FB4 0E                    2562 	.db	14
      002FB5 02                    2563 	.uleb128	2
                                   2564 
                                   2565 	.area .debug_frame (NOLOAD)
      002FB6 00 00                 2566 	.dw	0
      002FB8 00 0E                 2567 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      002FBA                       2568 Ldebug_CIE9_start:
      002FBA FF FF                 2569 	.dw	0xffff
      002FBC FF FF                 2570 	.dw	0xffff
      002FBE 01                    2571 	.db	1
      002FBF 00                    2572 	.db	0
      002FC0 01                    2573 	.uleb128	1
      002FC1 7F                    2574 	.sleb128	-1
      002FC2 09                    2575 	.db	9
      002FC3 0C                    2576 	.db	12
      002FC4 08                    2577 	.uleb128	8
      002FC5 02                    2578 	.uleb128	2
      002FC6 89                    2579 	.db	137
      002FC7 01                    2580 	.uleb128	1
      002FC8                       2581 Ldebug_CIE9_end:
      002FC8 00 00 00 13           2582 	.dw	0,19
      002FCC 00 00 2F B6           2583 	.dw	0,(Ldebug_CIE9_start-4)
      002FD0 00 00 9C FA           2584 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$59)	;initial loc
      002FD4 00 00 00 11           2585 	.dw	0,Sstm8s_adc2$ADC2_PrescalerConfig$64-Sstm8s_adc2$ADC2_PrescalerConfig$59
      002FD8 01                    2586 	.db	1
      002FD9 00 00 9C FA           2587 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$59)
      002FDD 0E                    2588 	.db	14
      002FDE 02                    2589 	.uleb128	2
                                   2590 
                                   2591 	.area .debug_frame (NOLOAD)
      002FDF 00 00                 2592 	.dw	0
      002FE1 00 0E                 2593 	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
      002FE3                       2594 Ldebug_CIE10_start:
      002FE3 FF FF                 2595 	.dw	0xffff
      002FE5 FF FF                 2596 	.dw	0xffff
      002FE7 01                    2597 	.db	1
      002FE8 00                    2598 	.db	0
      002FE9 01                    2599 	.uleb128	1
      002FEA 7F                    2600 	.sleb128	-1
      002FEB 09                    2601 	.db	9
      002FEC 0C                    2602 	.db	12
      002FED 08                    2603 	.uleb128	8
      002FEE 02                    2604 	.uleb128	2
      002FEF 89                    2605 	.db	137
      002FF0 01                    2606 	.uleb128	1
      002FF1                       2607 Ldebug_CIE10_end:
      002FF1 00 00 00 13           2608 	.dw	0,19
      002FF5 00 00 2F DF           2609 	.dw	0,(Ldebug_CIE10_start-4)
      002FF9 00 00 9C E2           2610 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$46)	;initial loc
      002FFD 00 00 00 18           2611 	.dw	0,Sstm8s_adc2$ADC2_ITConfig$57-Sstm8s_adc2$ADC2_ITConfig$46
      003001 01                    2612 	.db	1
      003002 00 00 9C E2           2613 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$46)
      003006 0E                    2614 	.db	14
      003007 02                    2615 	.uleb128	2
                                   2616 
                                   2617 	.area .debug_frame (NOLOAD)
      003008 00 00                 2618 	.dw	0
      00300A 00 0E                 2619 	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
      00300C                       2620 Ldebug_CIE11_start:
      00300C FF FF                 2621 	.dw	0xffff
      00300E FF FF                 2622 	.dw	0xffff
      003010 01                    2623 	.db	1
      003011 00                    2624 	.db	0
      003012 01                    2625 	.uleb128	1
      003013 7F                    2626 	.sleb128	-1
      003014 09                    2627 	.db	9
      003015 0C                    2628 	.db	12
      003016 08                    2629 	.uleb128	8
      003017 02                    2630 	.uleb128	2
      003018 89                    2631 	.db	137
      003019 01                    2632 	.uleb128	1
      00301A                       2633 Ldebug_CIE11_end:
      00301A 00 00 00 13           2634 	.dw	0,19
      00301E 00 00 30 08           2635 	.dw	0,(Ldebug_CIE11_start-4)
      003022 00 00 9C CA           2636 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$33)	;initial loc
      003026 00 00 00 18           2637 	.dw	0,Sstm8s_adc2$ADC2_Cmd$44-Sstm8s_adc2$ADC2_Cmd$33
      00302A 01                    2638 	.db	1
      00302B 00 00 9C CA           2639 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$33)
      00302F 0E                    2640 	.db	14
      003030 02                    2641 	.uleb128	2
                                   2642 
                                   2643 	.area .debug_frame (NOLOAD)
      003031 00 00                 2644 	.dw	0
      003033 00 0E                 2645 	.dw	Ldebug_CIE12_end-Ldebug_CIE12_start
      003035                       2646 Ldebug_CIE12_start:
      003035 FF FF                 2647 	.dw	0xffff
      003037 FF FF                 2648 	.dw	0xffff
      003039 01                    2649 	.db	1
      00303A 00                    2650 	.db	0
      00303B 01                    2651 	.uleb128	1
      00303C 7F                    2652 	.sleb128	-1
      00303D 09                    2653 	.db	9
      00303E 0C                    2654 	.db	12
      00303F 08                    2655 	.uleb128	8
      003040 02                    2656 	.uleb128	2
      003041 89                    2657 	.db	137
      003042 01                    2658 	.uleb128	1
      003043                       2659 Ldebug_CIE12_end:
      003043 00 00 00 67           2660 	.dw	0,103
      003047 00 00 30 31           2661 	.dw	0,(Ldebug_CIE12_start-4)
      00304B 00 00 9C 98           2662 	.dw	0,(Sstm8s_adc2$ADC2_Init$11)	;initial loc
      00304F 00 00 00 32           2663 	.dw	0,Sstm8s_adc2$ADC2_Init$31-Sstm8s_adc2$ADC2_Init$11
      003053 01                    2664 	.db	1
      003054 00 00 9C 98           2665 	.dw	0,(Sstm8s_adc2$ADC2_Init$11)
      003058 0E                    2666 	.db	14
      003059 02                    2667 	.uleb128	2
      00305A 01                    2668 	.db	1
      00305B 00 00 9C 9B           2669 	.dw	0,(Sstm8s_adc2$ADC2_Init$13)
      00305F 0E                    2670 	.db	14
      003060 03                    2671 	.uleb128	3
      003061 01                    2672 	.db	1
      003062 00 00 9C 9E           2673 	.dw	0,(Sstm8s_adc2$ADC2_Init$14)
      003066 0E                    2674 	.db	14
      003067 04                    2675 	.uleb128	4
      003068 01                    2676 	.db	1
      003069 00 00 9C A1           2677 	.dw	0,(Sstm8s_adc2$ADC2_Init$15)
      00306D 0E                    2678 	.db	14
      00306E 05                    2679 	.uleb128	5
      00306F 01                    2680 	.db	1
      003070 00 00 9C A6           2681 	.dw	0,(Sstm8s_adc2$ADC2_Init$16)
      003074 0E                    2682 	.db	14
      003075 02                    2683 	.uleb128	2
      003076 01                    2684 	.db	1
      003077 00 00 9C A9           2685 	.dw	0,(Sstm8s_adc2$ADC2_Init$18)
      00307B 0E                    2686 	.db	14
      00307C 03                    2687 	.uleb128	3
      00307D 01                    2688 	.db	1
      00307E 00 00 9C AD           2689 	.dw	0,(Sstm8s_adc2$ADC2_Init$19)
      003082 0E                    2690 	.db	14
      003083 02                    2691 	.uleb128	2
      003084 01                    2692 	.db	1
      003085 00 00 9C B0           2693 	.dw	0,(Sstm8s_adc2$ADC2_Init$21)
      003089 0E                    2694 	.db	14
      00308A 03                    2695 	.uleb128	3
      00308B 01                    2696 	.db	1
      00308C 00 00 9C B3           2697 	.dw	0,(Sstm8s_adc2$ADC2_Init$22)
      003090 0E                    2698 	.db	14
      003091 04                    2699 	.uleb128	4
      003092 01                    2700 	.db	1
      003093 00 00 9C B7           2701 	.dw	0,(Sstm8s_adc2$ADC2_Init$23)
      003097 0E                    2702 	.db	14
      003098 02                    2703 	.uleb128	2
      003099 01                    2704 	.db	1
      00309A 00 00 9C BA           2705 	.dw	0,(Sstm8s_adc2$ADC2_Init$25)
      00309E 0E                    2706 	.db	14
      00309F 03                    2707 	.uleb128	3
      0030A0 01                    2708 	.db	1
      0030A1 00 00 9C BD           2709 	.dw	0,(Sstm8s_adc2$ADC2_Init$26)
      0030A5 0E                    2710 	.db	14
      0030A6 04                    2711 	.uleb128	4
      0030A7 01                    2712 	.db	1
      0030A8 00 00 9C C1           2713 	.dw	0,(Sstm8s_adc2$ADC2_Init$27)
      0030AC 0E                    2714 	.db	14
      0030AD 02                    2715 	.uleb128	2
                                   2716 
                                   2717 	.area .debug_frame (NOLOAD)
      0030AE 00 00                 2718 	.dw	0
      0030B0 00 0E                 2719 	.dw	Ldebug_CIE13_end-Ldebug_CIE13_start
      0030B2                       2720 Ldebug_CIE13_start:
      0030B2 FF FF                 2721 	.dw	0xffff
      0030B4 FF FF                 2722 	.dw	0xffff
      0030B6 01                    2723 	.db	1
      0030B7 00                    2724 	.db	0
      0030B8 01                    2725 	.uleb128	1
      0030B9 7F                    2726 	.sleb128	-1
      0030BA 09                    2727 	.db	9
      0030BB 0C                    2728 	.db	12
      0030BC 08                    2729 	.uleb128	8
      0030BD 02                    2730 	.uleb128	2
      0030BE 89                    2731 	.db	137
      0030BF 01                    2732 	.uleb128	1
      0030C0                       2733 Ldebug_CIE13_end:
      0030C0 00 00 00 13           2734 	.dw	0,19
      0030C4 00 00 30 AE           2735 	.dw	0,(Ldebug_CIE13_start-4)
      0030C8 00 00 9C 83           2736 	.dw	0,(Sstm8s_adc2$ADC2_DeInit$1)	;initial loc
      0030CC 00 00 00 15           2737 	.dw	0,Sstm8s_adc2$ADC2_DeInit$9-Sstm8s_adc2$ADC2_DeInit$1
      0030D0 01                    2738 	.db	1
      0030D1 00 00 9C 83           2739 	.dw	0,(Sstm8s_adc2$ADC2_DeInit$1)
      0030D5 0E                    2740 	.db	14
      0030D6 02                    2741 	.uleb128	2

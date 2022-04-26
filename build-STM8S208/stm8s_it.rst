                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_it
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TRAP_IRQHandler
                                     12 	.globl _TLI_IRQHandler
                                     13 	.globl _AWU_IRQHandler
                                     14 	.globl _CLK_IRQHandler
                                     15 	.globl _EXTI_PORTA_IRQHandler
                                     16 	.globl _EXTI_PORTB_IRQHandler
                                     17 	.globl _EXTI_PORTC_IRQHandler
                                     18 	.globl _EXTI_PORTD_IRQHandler
                                     19 	.globl _EXTI_PORTE_IRQHandler
                                     20 	.globl _CAN_RX_IRQHandler
                                     21 	.globl _CAN_TX_IRQHandler
                                     22 	.globl _SPI_IRQHandler
                                     23 	.globl _TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                     24 	.globl _TIM1_CAP_COM_IRQHandler
                                     25 	.globl _TIM2_UPD_OVF_BRK_IRQHandler
                                     26 	.globl _TIM2_CAP_COM_IRQHandler
                                     27 	.globl _TIM3_UPD_OVF_BRK_IRQHandler
                                     28 	.globl _TIM3_CAP_COM_IRQHandler
                                     29 	.globl _UART1_TX_IRQHandler
                                     30 	.globl _UART1_RX_IRQHandler
                                     31 	.globl _I2C_IRQHandler
                                     32 	.globl _UART3_TX_IRQHandler
                                     33 	.globl _UART3_RX_IRQHandler
                                     34 	.globl _ADC2_IRQHandler
                                     35 	.globl _EEPROM_EEC_IRQHandler
                                     36 ;--------------------------------------------------------
                                     37 ; ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area DATA
                                     40 ;--------------------------------------------------------
                                     41 ; ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area INITIALIZED
                                     44 ;--------------------------------------------------------
                                     45 ; absolute external ram data
                                     46 ;--------------------------------------------------------
                                     47 	.area DABS (ABS)
                                     48 
                                     49 ; default segment ordering for linker
                                     50 	.area HOME
                                     51 	.area GSINIT
                                     52 	.area GSFINAL
                                     53 	.area CONST
                                     54 	.area INITIALIZER
                                     55 	.area CODE
                                     56 
                                     57 ;--------------------------------------------------------
                                     58 ; global & static initialisations
                                     59 ;--------------------------------------------------------
                                     60 	.area HOME
                                     61 	.area GSINIT
                                     62 	.area GSFINAL
                                     63 	.area GSINIT
                                     64 ;--------------------------------------------------------
                                     65 ; Home
                                     66 ;--------------------------------------------------------
                                     67 	.area HOME
                                     68 	.area HOME
                                     69 ;--------------------------------------------------------
                                     70 ; code
                                     71 ;--------------------------------------------------------
                                     72 	.area CODE
                           000000    73 	Sstm8s_it$TRAP_IRQHandler$0 ==.
                                     74 ;	./src/stm8s_it.c: 63: INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
                                     75 ; genLabel
                                     76 ;	-----------------------------------------
                                     77 ;	 function TRAP_IRQHandler
                                     78 ;	-----------------------------------------
                                     79 ;	Register assignment is optimal.
                                     80 ;	Stack space usage: 0 bytes.
      008757                         81 _TRAP_IRQHandler:
                           000000    82 	Sstm8s_it$TRAP_IRQHandler$1 ==.
                           000000    83 	Sstm8s_it$TRAP_IRQHandler$2 ==.
                                     84 ;	./src/stm8s_it.c: 68: }
                                     85 ; genLabel
      008757                         86 00101$:
                                     87 ; genEndFunction
                           000000    88 	Sstm8s_it$TRAP_IRQHandler$3 ==.
                           000000    89 	XG$TRAP_IRQHandler$0$0 ==.
      008757 80               [11]   90 	iret
                           000001    91 	Sstm8s_it$TRAP_IRQHandler$4 ==.
                           000001    92 	Sstm8s_it$TLI_IRQHandler$5 ==.
                                     93 ;	./src/stm8s_it.c: 74: INTERRUPT_HANDLER(TLI_IRQHandler, 0)
                                     94 ; genLabel
                                     95 ;	-----------------------------------------
                                     96 ;	 function TLI_IRQHandler
                                     97 ;	-----------------------------------------
                                     98 ;	Register assignment is optimal.
                                     99 ;	Stack space usage: 0 bytes.
      008758                        100 _TLI_IRQHandler:
                           000001   101 	Sstm8s_it$TLI_IRQHandler$6 ==.
                           000001   102 	Sstm8s_it$TLI_IRQHandler$7 ==.
                                    103 ;	./src/stm8s_it.c: 79: }
                                    104 ; genLabel
      008758                        105 00101$:
                                    106 ; genEndFunction
                           000001   107 	Sstm8s_it$TLI_IRQHandler$8 ==.
                           000001   108 	XG$TLI_IRQHandler$0$0 ==.
      008758 80               [11]  109 	iret
                           000002   110 	Sstm8s_it$TLI_IRQHandler$9 ==.
                           000002   111 	Sstm8s_it$AWU_IRQHandler$10 ==.
                                    112 ;	./src/stm8s_it.c: 86: INTERRUPT_HANDLER(AWU_IRQHandler, 1)
                                    113 ; genLabel
                                    114 ;	-----------------------------------------
                                    115 ;	 function AWU_IRQHandler
                                    116 ;	-----------------------------------------
                                    117 ;	Register assignment is optimal.
                                    118 ;	Stack space usage: 0 bytes.
      008759                        119 _AWU_IRQHandler:
                           000002   120 	Sstm8s_it$AWU_IRQHandler$11 ==.
                           000002   121 	Sstm8s_it$AWU_IRQHandler$12 ==.
                                    122 ;	./src/stm8s_it.c: 91: }
                                    123 ; genLabel
      008759                        124 00101$:
                                    125 ; genEndFunction
                           000002   126 	Sstm8s_it$AWU_IRQHandler$13 ==.
                           000002   127 	XG$AWU_IRQHandler$0$0 ==.
      008759 80               [11]  128 	iret
                           000003   129 	Sstm8s_it$AWU_IRQHandler$14 ==.
                           000003   130 	Sstm8s_it$CLK_IRQHandler$15 ==.
                                    131 ;	./src/stm8s_it.c: 98: INTERRUPT_HANDLER(CLK_IRQHandler, 2)
                                    132 ; genLabel
                                    133 ;	-----------------------------------------
                                    134 ;	 function CLK_IRQHandler
                                    135 ;	-----------------------------------------
                                    136 ;	Register assignment is optimal.
                                    137 ;	Stack space usage: 0 bytes.
      00875A                        138 _CLK_IRQHandler:
                           000003   139 	Sstm8s_it$CLK_IRQHandler$16 ==.
                           000003   140 	Sstm8s_it$CLK_IRQHandler$17 ==.
                                    141 ;	./src/stm8s_it.c: 103: }
                                    142 ; genLabel
      00875A                        143 00101$:
                                    144 ; genEndFunction
                           000003   145 	Sstm8s_it$CLK_IRQHandler$18 ==.
                           000003   146 	XG$CLK_IRQHandler$0$0 ==.
      00875A 80               [11]  147 	iret
                           000004   148 	Sstm8s_it$CLK_IRQHandler$19 ==.
                           000004   149 	Sstm8s_it$EXTI_PORTA_IRQHandler$20 ==.
                                    150 ;	./src/stm8s_it.c: 110: INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
                                    151 ; genLabel
                                    152 ;	-----------------------------------------
                                    153 ;	 function EXTI_PORTA_IRQHandler
                                    154 ;	-----------------------------------------
                                    155 ;	Register assignment is optimal.
                                    156 ;	Stack space usage: 0 bytes.
      00875B                        157 _EXTI_PORTA_IRQHandler:
                           000004   158 	Sstm8s_it$EXTI_PORTA_IRQHandler$21 ==.
                           000004   159 	Sstm8s_it$EXTI_PORTA_IRQHandler$22 ==.
                                    160 ;	./src/stm8s_it.c: 115: }
                                    161 ; genLabel
      00875B                        162 00101$:
                                    163 ; genEndFunction
                           000004   164 	Sstm8s_it$EXTI_PORTA_IRQHandler$23 ==.
                           000004   165 	XG$EXTI_PORTA_IRQHandler$0$0 ==.
      00875B 80               [11]  166 	iret
                           000005   167 	Sstm8s_it$EXTI_PORTA_IRQHandler$24 ==.
                           000005   168 	Sstm8s_it$EXTI_PORTB_IRQHandler$25 ==.
                                    169 ;	./src/stm8s_it.c: 122: INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
                                    170 ; genLabel
                                    171 ;	-----------------------------------------
                                    172 ;	 function EXTI_PORTB_IRQHandler
                                    173 ;	-----------------------------------------
                                    174 ;	Register assignment is optimal.
                                    175 ;	Stack space usage: 0 bytes.
      00875C                        176 _EXTI_PORTB_IRQHandler:
                           000005   177 	Sstm8s_it$EXTI_PORTB_IRQHandler$26 ==.
                           000005   178 	Sstm8s_it$EXTI_PORTB_IRQHandler$27 ==.
                                    179 ;	./src/stm8s_it.c: 127: }
                                    180 ; genLabel
      00875C                        181 00101$:
                                    182 ; genEndFunction
                           000005   183 	Sstm8s_it$EXTI_PORTB_IRQHandler$28 ==.
                           000005   184 	XG$EXTI_PORTB_IRQHandler$0$0 ==.
      00875C 80               [11]  185 	iret
                           000006   186 	Sstm8s_it$EXTI_PORTB_IRQHandler$29 ==.
                           000006   187 	Sstm8s_it$EXTI_PORTC_IRQHandler$30 ==.
                                    188 ;	./src/stm8s_it.c: 134: INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
                                    189 ; genLabel
                                    190 ;	-----------------------------------------
                                    191 ;	 function EXTI_PORTC_IRQHandler
                                    192 ;	-----------------------------------------
                                    193 ;	Register assignment is optimal.
                                    194 ;	Stack space usage: 0 bytes.
      00875D                        195 _EXTI_PORTC_IRQHandler:
                           000006   196 	Sstm8s_it$EXTI_PORTC_IRQHandler$31 ==.
                           000006   197 	Sstm8s_it$EXTI_PORTC_IRQHandler$32 ==.
                                    198 ;	./src/stm8s_it.c: 139: }
                                    199 ; genLabel
      00875D                        200 00101$:
                                    201 ; genEndFunction
                           000006   202 	Sstm8s_it$EXTI_PORTC_IRQHandler$33 ==.
                           000006   203 	XG$EXTI_PORTC_IRQHandler$0$0 ==.
      00875D 80               [11]  204 	iret
                           000007   205 	Sstm8s_it$EXTI_PORTC_IRQHandler$34 ==.
                           000007   206 	Sstm8s_it$EXTI_PORTD_IRQHandler$35 ==.
                                    207 ;	./src/stm8s_it.c: 146: INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
                                    208 ; genLabel
                                    209 ;	-----------------------------------------
                                    210 ;	 function EXTI_PORTD_IRQHandler
                                    211 ;	-----------------------------------------
                                    212 ;	Register assignment is optimal.
                                    213 ;	Stack space usage: 0 bytes.
      00875E                        214 _EXTI_PORTD_IRQHandler:
                           000007   215 	Sstm8s_it$EXTI_PORTD_IRQHandler$36 ==.
                           000007   216 	Sstm8s_it$EXTI_PORTD_IRQHandler$37 ==.
                                    217 ;	./src/stm8s_it.c: 151: }
                                    218 ; genLabel
      00875E                        219 00101$:
                                    220 ; genEndFunction
                           000007   221 	Sstm8s_it$EXTI_PORTD_IRQHandler$38 ==.
                           000007   222 	XG$EXTI_PORTD_IRQHandler$0$0 ==.
      00875E 80               [11]  223 	iret
                           000008   224 	Sstm8s_it$EXTI_PORTD_IRQHandler$39 ==.
                           000008   225 	Sstm8s_it$EXTI_PORTE_IRQHandler$40 ==.
                                    226 ;	./src/stm8s_it.c: 158: INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
                                    227 ; genLabel
                                    228 ;	-----------------------------------------
                                    229 ;	 function EXTI_PORTE_IRQHandler
                                    230 ;	-----------------------------------------
                                    231 ;	Register assignment is optimal.
                                    232 ;	Stack space usage: 0 bytes.
      00875F                        233 _EXTI_PORTE_IRQHandler:
                           000008   234 	Sstm8s_it$EXTI_PORTE_IRQHandler$41 ==.
                           000008   235 	Sstm8s_it$EXTI_PORTE_IRQHandler$42 ==.
                                    236 ;	./src/stm8s_it.c: 163: }
                                    237 ; genLabel
      00875F                        238 00101$:
                                    239 ; genEndFunction
                           000008   240 	Sstm8s_it$EXTI_PORTE_IRQHandler$43 ==.
                           000008   241 	XG$EXTI_PORTE_IRQHandler$0$0 ==.
      00875F 80               [11]  242 	iret
                           000009   243 	Sstm8s_it$EXTI_PORTE_IRQHandler$44 ==.
                           000009   244 	Sstm8s_it$CAN_RX_IRQHandler$45 ==.
                                    245 ;	./src/stm8s_it.c: 184: INTERRUPT_HANDLER(CAN_RX_IRQHandler, 8)
                                    246 ; genLabel
                                    247 ;	-----------------------------------------
                                    248 ;	 function CAN_RX_IRQHandler
                                    249 ;	-----------------------------------------
                                    250 ;	Register assignment is optimal.
                                    251 ;	Stack space usage: 0 bytes.
      008760                        252 _CAN_RX_IRQHandler:
                           000009   253 	Sstm8s_it$CAN_RX_IRQHandler$46 ==.
                           000009   254 	Sstm8s_it$CAN_RX_IRQHandler$47 ==.
                                    255 ;	./src/stm8s_it.c: 189: }
                                    256 ; genLabel
      008760                        257 00101$:
                                    258 ; genEndFunction
                           000009   259 	Sstm8s_it$CAN_RX_IRQHandler$48 ==.
                           000009   260 	XG$CAN_RX_IRQHandler$0$0 ==.
      008760 80               [11]  261 	iret
                           00000A   262 	Sstm8s_it$CAN_RX_IRQHandler$49 ==.
                           00000A   263 	Sstm8s_it$CAN_TX_IRQHandler$50 ==.
                                    264 ;	./src/stm8s_it.c: 196: INTERRUPT_HANDLER(CAN_TX_IRQHandler, 9)
                                    265 ; genLabel
                                    266 ;	-----------------------------------------
                                    267 ;	 function CAN_TX_IRQHandler
                                    268 ;	-----------------------------------------
                                    269 ;	Register assignment is optimal.
                                    270 ;	Stack space usage: 0 bytes.
      008761                        271 _CAN_TX_IRQHandler:
                           00000A   272 	Sstm8s_it$CAN_TX_IRQHandler$51 ==.
                           00000A   273 	Sstm8s_it$CAN_TX_IRQHandler$52 ==.
                                    274 ;	./src/stm8s_it.c: 201: }
                                    275 ; genLabel
      008761                        276 00101$:
                                    277 ; genEndFunction
                           00000A   278 	Sstm8s_it$CAN_TX_IRQHandler$53 ==.
                           00000A   279 	XG$CAN_TX_IRQHandler$0$0 ==.
      008761 80               [11]  280 	iret
                           00000B   281 	Sstm8s_it$CAN_TX_IRQHandler$54 ==.
                           00000B   282 	Sstm8s_it$SPI_IRQHandler$55 ==.
                                    283 ;	./src/stm8s_it.c: 209: INTERRUPT_HANDLER(SPI_IRQHandler, 10)
                                    284 ; genLabel
                                    285 ;	-----------------------------------------
                                    286 ;	 function SPI_IRQHandler
                                    287 ;	-----------------------------------------
                                    288 ;	Register assignment is optimal.
                                    289 ;	Stack space usage: 0 bytes.
      008762                        290 _SPI_IRQHandler:
                           00000B   291 	Sstm8s_it$SPI_IRQHandler$56 ==.
                           00000B   292 	Sstm8s_it$SPI_IRQHandler$57 ==.
                                    293 ;	./src/stm8s_it.c: 214: }
                                    294 ; genLabel
      008762                        295 00101$:
                                    296 ; genEndFunction
                           00000B   297 	Sstm8s_it$SPI_IRQHandler$58 ==.
                           00000B   298 	XG$SPI_IRQHandler$0$0 ==.
      008762 80               [11]  299 	iret
                           00000C   300 	Sstm8s_it$SPI_IRQHandler$59 ==.
                           00000C   301 	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$60 ==.
                                    302 ;	./src/stm8s_it.c: 221: INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
                                    303 ; genLabel
                                    304 ;	-----------------------------------------
                                    305 ;	 function TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                    306 ;	-----------------------------------------
                                    307 ;	Register assignment is optimal.
                                    308 ;	Stack space usage: 0 bytes.
      008763                        309 _TIM1_UPD_OVF_TRG_BRK_IRQHandler:
                           00000C   310 	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61 ==.
                           00000C   311 	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$62 ==.
                                    312 ;	./src/stm8s_it.c: 226: }
                                    313 ; genLabel
      008763                        314 00101$:
                                    315 ; genEndFunction
                           00000C   316 	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$63 ==.
                           00000C   317 	XG$TIM1_UPD_OVF_TRG_BRK_IRQHandler$0$0 ==.
      008763 80               [11]  318 	iret
                           00000D   319 	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$64 ==.
                           00000D   320 	Sstm8s_it$TIM1_CAP_COM_IRQHandler$65 ==.
                                    321 ;	./src/stm8s_it.c: 233: INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
                                    322 ; genLabel
                                    323 ;	-----------------------------------------
                                    324 ;	 function TIM1_CAP_COM_IRQHandler
                                    325 ;	-----------------------------------------
                                    326 ;	Register assignment is optimal.
                                    327 ;	Stack space usage: 0 bytes.
      008764                        328 _TIM1_CAP_COM_IRQHandler:
                           00000D   329 	Sstm8s_it$TIM1_CAP_COM_IRQHandler$66 ==.
                           00000D   330 	Sstm8s_it$TIM1_CAP_COM_IRQHandler$67 ==.
                                    331 ;	./src/stm8s_it.c: 238: }
                                    332 ; genLabel
      008764                        333 00101$:
                                    334 ; genEndFunction
                           00000D   335 	Sstm8s_it$TIM1_CAP_COM_IRQHandler$68 ==.
                           00000D   336 	XG$TIM1_CAP_COM_IRQHandler$0$0 ==.
      008764 80               [11]  337 	iret
                           00000E   338 	Sstm8s_it$TIM1_CAP_COM_IRQHandler$69 ==.
                           00000E   339 	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$70 ==.
                                    340 ;	./src/stm8s_it.c: 270: INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
                                    341 ; genLabel
                                    342 ;	-----------------------------------------
                                    343 ;	 function TIM2_UPD_OVF_BRK_IRQHandler
                                    344 ;	-----------------------------------------
                                    345 ;	Register assignment is optimal.
                                    346 ;	Stack space usage: 0 bytes.
      008765                        347 _TIM2_UPD_OVF_BRK_IRQHandler:
                           00000E   348 	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$71 ==.
                           00000E   349 	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$72 ==.
                                    350 ;	./src/stm8s_it.c: 275: }
                                    351 ; genLabel
      008765                        352 00101$:
                                    353 ; genEndFunction
                           00000E   354 	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$73 ==.
                           00000E   355 	XG$TIM2_UPD_OVF_BRK_IRQHandler$0$0 ==.
      008765 80               [11]  356 	iret
                           00000F   357 	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$74 ==.
                           00000F   358 	Sstm8s_it$TIM2_CAP_COM_IRQHandler$75 ==.
                                    359 ;	./src/stm8s_it.c: 282: INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
                                    360 ; genLabel
                                    361 ;	-----------------------------------------
                                    362 ;	 function TIM2_CAP_COM_IRQHandler
                                    363 ;	-----------------------------------------
                                    364 ;	Register assignment is optimal.
                                    365 ;	Stack space usage: 0 bytes.
      008766                        366 _TIM2_CAP_COM_IRQHandler:
                           00000F   367 	Sstm8s_it$TIM2_CAP_COM_IRQHandler$76 ==.
                           00000F   368 	Sstm8s_it$TIM2_CAP_COM_IRQHandler$77 ==.
                                    369 ;	./src/stm8s_it.c: 287: }
                                    370 ; genLabel
      008766                        371 00101$:
                                    372 ; genEndFunction
                           00000F   373 	Sstm8s_it$TIM2_CAP_COM_IRQHandler$78 ==.
                           00000F   374 	XG$TIM2_CAP_COM_IRQHandler$0$0 ==.
      008766 80               [11]  375 	iret
                           000010   376 	Sstm8s_it$TIM2_CAP_COM_IRQHandler$79 ==.
                           000010   377 	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$80 ==.
                                    378 ;	./src/stm8s_it.c: 297: INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
                                    379 ; genLabel
                                    380 ;	-----------------------------------------
                                    381 ;	 function TIM3_UPD_OVF_BRK_IRQHandler
                                    382 ;	-----------------------------------------
                                    383 ;	Register assignment is optimal.
                                    384 ;	Stack space usage: 0 bytes.
      008767                        385 _TIM3_UPD_OVF_BRK_IRQHandler:
                           000010   386 	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$81 ==.
                           000010   387 	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$82 ==.
                                    388 ;	./src/stm8s_it.c: 302: }
                                    389 ; genLabel
      008767                        390 00101$:
                                    391 ; genEndFunction
                           000010   392 	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$83 ==.
                           000010   393 	XG$TIM3_UPD_OVF_BRK_IRQHandler$0$0 ==.
      008767 80               [11]  394 	iret
                           000011   395 	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$84 ==.
                           000011   396 	Sstm8s_it$TIM3_CAP_COM_IRQHandler$85 ==.
                                    397 ;	./src/stm8s_it.c: 309: INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
                                    398 ; genLabel
                                    399 ;	-----------------------------------------
                                    400 ;	 function TIM3_CAP_COM_IRQHandler
                                    401 ;	-----------------------------------------
                                    402 ;	Register assignment is optimal.
                                    403 ;	Stack space usage: 0 bytes.
      008768                        404 _TIM3_CAP_COM_IRQHandler:
                           000011   405 	Sstm8s_it$TIM3_CAP_COM_IRQHandler$86 ==.
                           000011   406 	Sstm8s_it$TIM3_CAP_COM_IRQHandler$87 ==.
                                    407 ;	./src/stm8s_it.c: 314: }
                                    408 ; genLabel
      008768                        409 00101$:
                                    410 ; genEndFunction
                           000011   411 	Sstm8s_it$TIM3_CAP_COM_IRQHandler$88 ==.
                           000011   412 	XG$TIM3_CAP_COM_IRQHandler$0$0 ==.
      008768 80               [11]  413 	iret
                           000012   414 	Sstm8s_it$TIM3_CAP_COM_IRQHandler$89 ==.
                           000012   415 	Sstm8s_it$UART1_TX_IRQHandler$90 ==.
                                    416 ;	./src/stm8s_it.c: 324: INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
                                    417 ; genLabel
                                    418 ;	-----------------------------------------
                                    419 ;	 function UART1_TX_IRQHandler
                                    420 ;	-----------------------------------------
                                    421 ;	Register assignment is optimal.
                                    422 ;	Stack space usage: 0 bytes.
      008769                        423 _UART1_TX_IRQHandler:
                           000012   424 	Sstm8s_it$UART1_TX_IRQHandler$91 ==.
                           000012   425 	Sstm8s_it$UART1_TX_IRQHandler$92 ==.
                                    426 ;	./src/stm8s_it.c: 329: }
                                    427 ; genLabel
      008769                        428 00101$:
                                    429 ; genEndFunction
                           000012   430 	Sstm8s_it$UART1_TX_IRQHandler$93 ==.
                           000012   431 	XG$UART1_TX_IRQHandler$0$0 ==.
      008769 80               [11]  432 	iret
                           000013   433 	Sstm8s_it$UART1_TX_IRQHandler$94 ==.
                           000013   434 	Sstm8s_it$UART1_RX_IRQHandler$95 ==.
                                    435 ;	./src/stm8s_it.c: 336: INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
                                    436 ; genLabel
                                    437 ;	-----------------------------------------
                                    438 ;	 function UART1_RX_IRQHandler
                                    439 ;	-----------------------------------------
                                    440 ;	Register assignment is optimal.
                                    441 ;	Stack space usage: 0 bytes.
      00876A                        442 _UART1_RX_IRQHandler:
                           000013   443 	Sstm8s_it$UART1_RX_IRQHandler$96 ==.
                           000013   444 	Sstm8s_it$UART1_RX_IRQHandler$97 ==.
                                    445 ;	./src/stm8s_it.c: 341: }
                                    446 ; genLabel
      00876A                        447 00101$:
                                    448 ; genEndFunction
                           000013   449 	Sstm8s_it$UART1_RX_IRQHandler$98 ==.
                           000013   450 	XG$UART1_RX_IRQHandler$0$0 ==.
      00876A 80               [11]  451 	iret
                           000014   452 	Sstm8s_it$UART1_RX_IRQHandler$99 ==.
                           000014   453 	Sstm8s_it$I2C_IRQHandler$100 ==.
                                    454 ;	./src/stm8s_it.c: 349: INTERRUPT_HANDLER(I2C_IRQHandler, 19)
                                    455 ; genLabel
                                    456 ;	-----------------------------------------
                                    457 ;	 function I2C_IRQHandler
                                    458 ;	-----------------------------------------
                                    459 ;	Register assignment is optimal.
                                    460 ;	Stack space usage: 0 bytes.
      00876B                        461 _I2C_IRQHandler:
                           000014   462 	Sstm8s_it$I2C_IRQHandler$101 ==.
                           000014   463 	Sstm8s_it$I2C_IRQHandler$102 ==.
                                    464 ;	./src/stm8s_it.c: 354: }
                                    465 ; genLabel
      00876B                        466 00101$:
                                    467 ; genEndFunction
                           000014   468 	Sstm8s_it$I2C_IRQHandler$103 ==.
                           000014   469 	XG$I2C_IRQHandler$0$0 ==.
      00876B 80               [11]  470 	iret
                           000015   471 	Sstm8s_it$I2C_IRQHandler$104 ==.
                           000015   472 	Sstm8s_it$UART3_TX_IRQHandler$105 ==.
                                    473 ;	./src/stm8s_it.c: 388: INTERRUPT_HANDLER(UART3_TX_IRQHandler, 20)
                                    474 ; genLabel
                                    475 ;	-----------------------------------------
                                    476 ;	 function UART3_TX_IRQHandler
                                    477 ;	-----------------------------------------
                                    478 ;	Register assignment is optimal.
                                    479 ;	Stack space usage: 0 bytes.
      00876C                        480 _UART3_TX_IRQHandler:
                           000015   481 	Sstm8s_it$UART3_TX_IRQHandler$106 ==.
                           000015   482 	Sstm8s_it$UART3_TX_IRQHandler$107 ==.
                                    483 ;	./src/stm8s_it.c: 393: }
                                    484 ; genLabel
      00876C                        485 00101$:
                                    486 ; genEndFunction
                           000015   487 	Sstm8s_it$UART3_TX_IRQHandler$108 ==.
                           000015   488 	XG$UART3_TX_IRQHandler$0$0 ==.
      00876C 80               [11]  489 	iret
                           000016   490 	Sstm8s_it$UART3_TX_IRQHandler$109 ==.
                           000016   491 	Sstm8s_it$UART3_RX_IRQHandler$110 ==.
                                    492 ;	./src/stm8s_it.c: 400: INTERRUPT_HANDLER(UART3_RX_IRQHandler, 21)
                                    493 ; genLabel
                                    494 ;	-----------------------------------------
                                    495 ;	 function UART3_RX_IRQHandler
                                    496 ;	-----------------------------------------
                                    497 ;	Register assignment is optimal.
                                    498 ;	Stack space usage: 0 bytes.
      00876D                        499 _UART3_RX_IRQHandler:
                           000016   500 	Sstm8s_it$UART3_RX_IRQHandler$111 ==.
                           000016   501 	Sstm8s_it$UART3_RX_IRQHandler$112 ==.
                                    502 ;	./src/stm8s_it.c: 405: }
                                    503 ; genLabel
      00876D                        504 00101$:
                                    505 ; genEndFunction
                           000016   506 	Sstm8s_it$UART3_RX_IRQHandler$113 ==.
                           000016   507 	XG$UART3_RX_IRQHandler$0$0 ==.
      00876D 80               [11]  508 	iret
                           000017   509 	Sstm8s_it$UART3_RX_IRQHandler$114 ==.
                           000017   510 	Sstm8s_it$ADC2_IRQHandler$115 ==.
                                    511 ;	./src/stm8s_it.c: 414: INTERRUPT_HANDLER(ADC2_IRQHandler, 22)
                                    512 ; genLabel
                                    513 ;	-----------------------------------------
                                    514 ;	 function ADC2_IRQHandler
                                    515 ;	-----------------------------------------
                                    516 ;	Register assignment is optimal.
                                    517 ;	Stack space usage: 0 bytes.
      00876E                        518 _ADC2_IRQHandler:
                           000017   519 	Sstm8s_it$ADC2_IRQHandler$116 ==.
                           000017   520 	Sstm8s_it$ADC2_IRQHandler$117 ==.
                                    521 ;	./src/stm8s_it.c: 420: return;
                                    522 ; genReturn
                                    523 ; genLabel
      00876E                        524 00101$:
                           000017   525 	Sstm8s_it$ADC2_IRQHandler$118 ==.
                                    526 ;	./src/stm8s_it.c: 422: }
                                    527 ; genEndFunction
                           000017   528 	Sstm8s_it$ADC2_IRQHandler$119 ==.
                           000017   529 	XG$ADC2_IRQHandler$0$0 ==.
      00876E 80               [11]  530 	iret
                           000018   531 	Sstm8s_it$ADC2_IRQHandler$120 ==.
                           000018   532 	Sstm8s_it$EEPROM_EEC_IRQHandler$121 ==.
                                    533 ;	./src/stm8s_it.c: 471: INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
                                    534 ; genLabel
                                    535 ;	-----------------------------------------
                                    536 ;	 function EEPROM_EEC_IRQHandler
                                    537 ;	-----------------------------------------
                                    538 ;	Register assignment is optimal.
                                    539 ;	Stack space usage: 0 bytes.
      00876F                        540 _EEPROM_EEC_IRQHandler:
                           000018   541 	Sstm8s_it$EEPROM_EEC_IRQHandler$122 ==.
                           000018   542 	Sstm8s_it$EEPROM_EEC_IRQHandler$123 ==.
                                    543 ;	./src/stm8s_it.c: 476: }
                                    544 ; genLabel
      00876F                        545 00101$:
                                    546 ; genEndFunction
                           000018   547 	Sstm8s_it$EEPROM_EEC_IRQHandler$124 ==.
                           000018   548 	XG$EEPROM_EEC_IRQHandler$0$0 ==.
      00876F 80               [11]  549 	iret
                           000019   550 	Sstm8s_it$EEPROM_EEC_IRQHandler$125 ==.
                                    551 	.area CODE
                                    552 	.area CONST
                                    553 	.area INITIALIZER
                                    554 	.area CABS (ABS)
                                    555 
                                    556 	.area .debug_line (NOLOAD)
      000931 00 00 02 BB            557 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000935                        558 Ldebug_line_start:
      000935 00 02                  559 	.dw	2
      000937 00 00 00 71            560 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      00093B 01                     561 	.db	1
      00093C 01                     562 	.db	1
      00093D FB                     563 	.db	-5
      00093E 0F                     564 	.db	15
      00093F 0A                     565 	.db	10
      000940 00                     566 	.db	0
      000941 01                     567 	.db	1
      000942 01                     568 	.db	1
      000943 01                     569 	.db	1
      000944 01                     570 	.db	1
      000945 00                     571 	.db	0
      000946 00                     572 	.db	0
      000947 00                     573 	.db	0
      000948 01                     574 	.db	1
      000949 43 3A 5C 50 72 6F 67   575 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000971 00                     576 	.db	0
      000972 43 3A 5C 50 72 6F 67   577 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      000995 00                     578 	.db	0
      000996 00                     579 	.db	0
      000997 2E 2F 73 72 63 2F 73   580 	.ascii "./src/stm8s_it.c"
             74 6D 38 73 5F 69 74
             2E 63
      0009A7 00                     581 	.db	0
      0009A8 00                     582 	.uleb128	0
      0009A9 00                     583 	.uleb128	0
      0009AA 00                     584 	.uleb128	0
      0009AB 00                     585 	.db	0
      0009AC                        586 Ldebug_line_stmt:
      0009AC 00                     587 	.db	0
      0009AD 05                     588 	.uleb128	5
      0009AE 02                     589 	.db	2
      0009AF 00 00 87 57            590 	.dw	0,(Sstm8s_it$TRAP_IRQHandler$0)
      0009B3 03                     591 	.db	3
      0009B4 3E                     592 	.sleb128	62
      0009B5 01                     593 	.db	1
      0009B6 09                     594 	.db	9
      0009B7 00 00                  595 	.dw	Sstm8s_it$TRAP_IRQHandler$2-Sstm8s_it$TRAP_IRQHandler$0
      0009B9 03                     596 	.db	3
      0009BA 05                     597 	.sleb128	5
      0009BB 01                     598 	.db	1
      0009BC 09                     599 	.db	9
      0009BD 00 01                  600 	.dw	1+Sstm8s_it$TRAP_IRQHandler$3-Sstm8s_it$TRAP_IRQHandler$2
      0009BF 00                     601 	.db	0
      0009C0 01                     602 	.uleb128	1
      0009C1 01                     603 	.db	1
      0009C2 00                     604 	.db	0
      0009C3 05                     605 	.uleb128	5
      0009C4 02                     606 	.db	2
      0009C5 00 00 87 58            607 	.dw	0,(Sstm8s_it$TLI_IRQHandler$5)
      0009C9 03                     608 	.db	3
      0009CA C9 00                  609 	.sleb128	73
      0009CC 01                     610 	.db	1
      0009CD 09                     611 	.db	9
      0009CE 00 00                  612 	.dw	Sstm8s_it$TLI_IRQHandler$7-Sstm8s_it$TLI_IRQHandler$5
      0009D0 03                     613 	.db	3
      0009D1 05                     614 	.sleb128	5
      0009D2 01                     615 	.db	1
      0009D3 09                     616 	.db	9
      0009D4 00 01                  617 	.dw	1+Sstm8s_it$TLI_IRQHandler$8-Sstm8s_it$TLI_IRQHandler$7
      0009D6 00                     618 	.db	0
      0009D7 01                     619 	.uleb128	1
      0009D8 01                     620 	.db	1
      0009D9 00                     621 	.db	0
      0009DA 05                     622 	.uleb128	5
      0009DB 02                     623 	.db	2
      0009DC 00 00 87 59            624 	.dw	0,(Sstm8s_it$AWU_IRQHandler$10)
      0009E0 03                     625 	.db	3
      0009E1 D5 00                  626 	.sleb128	85
      0009E3 01                     627 	.db	1
      0009E4 09                     628 	.db	9
      0009E5 00 00                  629 	.dw	Sstm8s_it$AWU_IRQHandler$12-Sstm8s_it$AWU_IRQHandler$10
      0009E7 03                     630 	.db	3
      0009E8 05                     631 	.sleb128	5
      0009E9 01                     632 	.db	1
      0009EA 09                     633 	.db	9
      0009EB 00 01                  634 	.dw	1+Sstm8s_it$AWU_IRQHandler$13-Sstm8s_it$AWU_IRQHandler$12
      0009ED 00                     635 	.db	0
      0009EE 01                     636 	.uleb128	1
      0009EF 01                     637 	.db	1
      0009F0 00                     638 	.db	0
      0009F1 05                     639 	.uleb128	5
      0009F2 02                     640 	.db	2
      0009F3 00 00 87 5A            641 	.dw	0,(Sstm8s_it$CLK_IRQHandler$15)
      0009F7 03                     642 	.db	3
      0009F8 E1 00                  643 	.sleb128	97
      0009FA 01                     644 	.db	1
      0009FB 09                     645 	.db	9
      0009FC 00 00                  646 	.dw	Sstm8s_it$CLK_IRQHandler$17-Sstm8s_it$CLK_IRQHandler$15
      0009FE 03                     647 	.db	3
      0009FF 05                     648 	.sleb128	5
      000A00 01                     649 	.db	1
      000A01 09                     650 	.db	9
      000A02 00 01                  651 	.dw	1+Sstm8s_it$CLK_IRQHandler$18-Sstm8s_it$CLK_IRQHandler$17
      000A04 00                     652 	.db	0
      000A05 01                     653 	.uleb128	1
      000A06 01                     654 	.db	1
      000A07 00                     655 	.db	0
      000A08 05                     656 	.uleb128	5
      000A09 02                     657 	.db	2
      000A0A 00 00 87 5B            658 	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$20)
      000A0E 03                     659 	.db	3
      000A0F ED 00                  660 	.sleb128	109
      000A11 01                     661 	.db	1
      000A12 09                     662 	.db	9
      000A13 00 00                  663 	.dw	Sstm8s_it$EXTI_PORTA_IRQHandler$22-Sstm8s_it$EXTI_PORTA_IRQHandler$20
      000A15 03                     664 	.db	3
      000A16 05                     665 	.sleb128	5
      000A17 01                     666 	.db	1
      000A18 09                     667 	.db	9
      000A19 00 01                  668 	.dw	1+Sstm8s_it$EXTI_PORTA_IRQHandler$23-Sstm8s_it$EXTI_PORTA_IRQHandler$22
      000A1B 00                     669 	.db	0
      000A1C 01                     670 	.uleb128	1
      000A1D 01                     671 	.db	1
      000A1E 00                     672 	.db	0
      000A1F 05                     673 	.uleb128	5
      000A20 02                     674 	.db	2
      000A21 00 00 87 5C            675 	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$25)
      000A25 03                     676 	.db	3
      000A26 F9 00                  677 	.sleb128	121
      000A28 01                     678 	.db	1
      000A29 09                     679 	.db	9
      000A2A 00 00                  680 	.dw	Sstm8s_it$EXTI_PORTB_IRQHandler$27-Sstm8s_it$EXTI_PORTB_IRQHandler$25
      000A2C 03                     681 	.db	3
      000A2D 05                     682 	.sleb128	5
      000A2E 01                     683 	.db	1
      000A2F 09                     684 	.db	9
      000A30 00 01                  685 	.dw	1+Sstm8s_it$EXTI_PORTB_IRQHandler$28-Sstm8s_it$EXTI_PORTB_IRQHandler$27
      000A32 00                     686 	.db	0
      000A33 01                     687 	.uleb128	1
      000A34 01                     688 	.db	1
      000A35 00                     689 	.db	0
      000A36 05                     690 	.uleb128	5
      000A37 02                     691 	.db	2
      000A38 00 00 87 5D            692 	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$30)
      000A3C 03                     693 	.db	3
      000A3D 85 01                  694 	.sleb128	133
      000A3F 01                     695 	.db	1
      000A40 09                     696 	.db	9
      000A41 00 00                  697 	.dw	Sstm8s_it$EXTI_PORTC_IRQHandler$32-Sstm8s_it$EXTI_PORTC_IRQHandler$30
      000A43 03                     698 	.db	3
      000A44 05                     699 	.sleb128	5
      000A45 01                     700 	.db	1
      000A46 09                     701 	.db	9
      000A47 00 01                  702 	.dw	1+Sstm8s_it$EXTI_PORTC_IRQHandler$33-Sstm8s_it$EXTI_PORTC_IRQHandler$32
      000A49 00                     703 	.db	0
      000A4A 01                     704 	.uleb128	1
      000A4B 01                     705 	.db	1
      000A4C 00                     706 	.db	0
      000A4D 05                     707 	.uleb128	5
      000A4E 02                     708 	.db	2
      000A4F 00 00 87 5E            709 	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$35)
      000A53 03                     710 	.db	3
      000A54 91 01                  711 	.sleb128	145
      000A56 01                     712 	.db	1
      000A57 09                     713 	.db	9
      000A58 00 00                  714 	.dw	Sstm8s_it$EXTI_PORTD_IRQHandler$37-Sstm8s_it$EXTI_PORTD_IRQHandler$35
      000A5A 03                     715 	.db	3
      000A5B 05                     716 	.sleb128	5
      000A5C 01                     717 	.db	1
      000A5D 09                     718 	.db	9
      000A5E 00 01                  719 	.dw	1+Sstm8s_it$EXTI_PORTD_IRQHandler$38-Sstm8s_it$EXTI_PORTD_IRQHandler$37
      000A60 00                     720 	.db	0
      000A61 01                     721 	.uleb128	1
      000A62 01                     722 	.db	1
      000A63 00                     723 	.db	0
      000A64 05                     724 	.uleb128	5
      000A65 02                     725 	.db	2
      000A66 00 00 87 5F            726 	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$40)
      000A6A 03                     727 	.db	3
      000A6B 9D 01                  728 	.sleb128	157
      000A6D 01                     729 	.db	1
      000A6E 09                     730 	.db	9
      000A6F 00 00                  731 	.dw	Sstm8s_it$EXTI_PORTE_IRQHandler$42-Sstm8s_it$EXTI_PORTE_IRQHandler$40
      000A71 03                     732 	.db	3
      000A72 05                     733 	.sleb128	5
      000A73 01                     734 	.db	1
      000A74 09                     735 	.db	9
      000A75 00 01                  736 	.dw	1+Sstm8s_it$EXTI_PORTE_IRQHandler$43-Sstm8s_it$EXTI_PORTE_IRQHandler$42
      000A77 00                     737 	.db	0
      000A78 01                     738 	.uleb128	1
      000A79 01                     739 	.db	1
      000A7A 00                     740 	.db	0
      000A7B 05                     741 	.uleb128	5
      000A7C 02                     742 	.db	2
      000A7D 00 00 87 60            743 	.dw	0,(Sstm8s_it$CAN_RX_IRQHandler$45)
      000A81 03                     744 	.db	3
      000A82 B7 01                  745 	.sleb128	183
      000A84 01                     746 	.db	1
      000A85 09                     747 	.db	9
      000A86 00 00                  748 	.dw	Sstm8s_it$CAN_RX_IRQHandler$47-Sstm8s_it$CAN_RX_IRQHandler$45
      000A88 03                     749 	.db	3
      000A89 05                     750 	.sleb128	5
      000A8A 01                     751 	.db	1
      000A8B 09                     752 	.db	9
      000A8C 00 01                  753 	.dw	1+Sstm8s_it$CAN_RX_IRQHandler$48-Sstm8s_it$CAN_RX_IRQHandler$47
      000A8E 00                     754 	.db	0
      000A8F 01                     755 	.uleb128	1
      000A90 01                     756 	.db	1
      000A91 00                     757 	.db	0
      000A92 05                     758 	.uleb128	5
      000A93 02                     759 	.db	2
      000A94 00 00 87 61            760 	.dw	0,(Sstm8s_it$CAN_TX_IRQHandler$50)
      000A98 03                     761 	.db	3
      000A99 C3 01                  762 	.sleb128	195
      000A9B 01                     763 	.db	1
      000A9C 09                     764 	.db	9
      000A9D 00 00                  765 	.dw	Sstm8s_it$CAN_TX_IRQHandler$52-Sstm8s_it$CAN_TX_IRQHandler$50
      000A9F 03                     766 	.db	3
      000AA0 05                     767 	.sleb128	5
      000AA1 01                     768 	.db	1
      000AA2 09                     769 	.db	9
      000AA3 00 01                  770 	.dw	1+Sstm8s_it$CAN_TX_IRQHandler$53-Sstm8s_it$CAN_TX_IRQHandler$52
      000AA5 00                     771 	.db	0
      000AA6 01                     772 	.uleb128	1
      000AA7 01                     773 	.db	1
      000AA8 00                     774 	.db	0
      000AA9 05                     775 	.uleb128	5
      000AAA 02                     776 	.db	2
      000AAB 00 00 87 62            777 	.dw	0,(Sstm8s_it$SPI_IRQHandler$55)
      000AAF 03                     778 	.db	3
      000AB0 D0 01                  779 	.sleb128	208
      000AB2 01                     780 	.db	1
      000AB3 09                     781 	.db	9
      000AB4 00 00                  782 	.dw	Sstm8s_it$SPI_IRQHandler$57-Sstm8s_it$SPI_IRQHandler$55
      000AB6 03                     783 	.db	3
      000AB7 05                     784 	.sleb128	5
      000AB8 01                     785 	.db	1
      000AB9 09                     786 	.db	9
      000ABA 00 01                  787 	.dw	1+Sstm8s_it$SPI_IRQHandler$58-Sstm8s_it$SPI_IRQHandler$57
      000ABC 00                     788 	.db	0
      000ABD 01                     789 	.uleb128	1
      000ABE 01                     790 	.db	1
      000ABF 00                     791 	.db	0
      000AC0 05                     792 	.uleb128	5
      000AC1 02                     793 	.db	2
      000AC2 00 00 87 63            794 	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$60)
      000AC6 03                     795 	.db	3
      000AC7 DC 01                  796 	.sleb128	220
      000AC9 01                     797 	.db	1
      000ACA 09                     798 	.db	9
      000ACB 00 00                  799 	.dw	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$62-Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$60
      000ACD 03                     800 	.db	3
      000ACE 05                     801 	.sleb128	5
      000ACF 01                     802 	.db	1
      000AD0 09                     803 	.db	9
      000AD1 00 01                  804 	.dw	1+Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$63-Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$62
      000AD3 00                     805 	.db	0
      000AD4 01                     806 	.uleb128	1
      000AD5 01                     807 	.db	1
      000AD6 00                     808 	.db	0
      000AD7 05                     809 	.uleb128	5
      000AD8 02                     810 	.db	2
      000AD9 00 00 87 64            811 	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$65)
      000ADD 03                     812 	.db	3
      000ADE E8 01                  813 	.sleb128	232
      000AE0 01                     814 	.db	1
      000AE1 09                     815 	.db	9
      000AE2 00 00                  816 	.dw	Sstm8s_it$TIM1_CAP_COM_IRQHandler$67-Sstm8s_it$TIM1_CAP_COM_IRQHandler$65
      000AE4 03                     817 	.db	3
      000AE5 05                     818 	.sleb128	5
      000AE6 01                     819 	.db	1
      000AE7 09                     820 	.db	9
      000AE8 00 01                  821 	.dw	1+Sstm8s_it$TIM1_CAP_COM_IRQHandler$68-Sstm8s_it$TIM1_CAP_COM_IRQHandler$67
      000AEA 00                     822 	.db	0
      000AEB 01                     823 	.uleb128	1
      000AEC 01                     824 	.db	1
      000AED 00                     825 	.db	0
      000AEE 05                     826 	.uleb128	5
      000AEF 02                     827 	.db	2
      000AF0 00 00 87 65            828 	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$70)
      000AF4 03                     829 	.db	3
      000AF5 8D 02                  830 	.sleb128	269
      000AF7 01                     831 	.db	1
      000AF8 09                     832 	.db	9
      000AF9 00 00                  833 	.dw	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$72-Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$70
      000AFB 03                     834 	.db	3
      000AFC 05                     835 	.sleb128	5
      000AFD 01                     836 	.db	1
      000AFE 09                     837 	.db	9
      000AFF 00 01                  838 	.dw	1+Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$73-Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$72
      000B01 00                     839 	.db	0
      000B02 01                     840 	.uleb128	1
      000B03 01                     841 	.db	1
      000B04 00                     842 	.db	0
      000B05 05                     843 	.uleb128	5
      000B06 02                     844 	.db	2
      000B07 00 00 87 66            845 	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$75)
      000B0B 03                     846 	.db	3
      000B0C 99 02                  847 	.sleb128	281
      000B0E 01                     848 	.db	1
      000B0F 09                     849 	.db	9
      000B10 00 00                  850 	.dw	Sstm8s_it$TIM2_CAP_COM_IRQHandler$77-Sstm8s_it$TIM2_CAP_COM_IRQHandler$75
      000B12 03                     851 	.db	3
      000B13 05                     852 	.sleb128	5
      000B14 01                     853 	.db	1
      000B15 09                     854 	.db	9
      000B16 00 01                  855 	.dw	1+Sstm8s_it$TIM2_CAP_COM_IRQHandler$78-Sstm8s_it$TIM2_CAP_COM_IRQHandler$77
      000B18 00                     856 	.db	0
      000B19 01                     857 	.uleb128	1
      000B1A 01                     858 	.db	1
      000B1B 00                     859 	.db	0
      000B1C 05                     860 	.uleb128	5
      000B1D 02                     861 	.db	2
      000B1E 00 00 87 67            862 	.dw	0,(Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$80)
      000B22 03                     863 	.db	3
      000B23 A8 02                  864 	.sleb128	296
      000B25 01                     865 	.db	1
      000B26 09                     866 	.db	9
      000B27 00 00                  867 	.dw	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$82-Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$80
      000B29 03                     868 	.db	3
      000B2A 05                     869 	.sleb128	5
      000B2B 01                     870 	.db	1
      000B2C 09                     871 	.db	9
      000B2D 00 01                  872 	.dw	1+Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$83-Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$82
      000B2F 00                     873 	.db	0
      000B30 01                     874 	.uleb128	1
      000B31 01                     875 	.db	1
      000B32 00                     876 	.db	0
      000B33 05                     877 	.uleb128	5
      000B34 02                     878 	.db	2
      000B35 00 00 87 68            879 	.dw	0,(Sstm8s_it$TIM3_CAP_COM_IRQHandler$85)
      000B39 03                     880 	.db	3
      000B3A B4 02                  881 	.sleb128	308
      000B3C 01                     882 	.db	1
      000B3D 09                     883 	.db	9
      000B3E 00 00                  884 	.dw	Sstm8s_it$TIM3_CAP_COM_IRQHandler$87-Sstm8s_it$TIM3_CAP_COM_IRQHandler$85
      000B40 03                     885 	.db	3
      000B41 05                     886 	.sleb128	5
      000B42 01                     887 	.db	1
      000B43 09                     888 	.db	9
      000B44 00 01                  889 	.dw	1+Sstm8s_it$TIM3_CAP_COM_IRQHandler$88-Sstm8s_it$TIM3_CAP_COM_IRQHandler$87
      000B46 00                     890 	.db	0
      000B47 01                     891 	.uleb128	1
      000B48 01                     892 	.db	1
      000B49 00                     893 	.db	0
      000B4A 05                     894 	.uleb128	5
      000B4B 02                     895 	.db	2
      000B4C 00 00 87 69            896 	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$90)
      000B50 03                     897 	.db	3
      000B51 C3 02                  898 	.sleb128	323
      000B53 01                     899 	.db	1
      000B54 09                     900 	.db	9
      000B55 00 00                  901 	.dw	Sstm8s_it$UART1_TX_IRQHandler$92-Sstm8s_it$UART1_TX_IRQHandler$90
      000B57 03                     902 	.db	3
      000B58 05                     903 	.sleb128	5
      000B59 01                     904 	.db	1
      000B5A 09                     905 	.db	9
      000B5B 00 01                  906 	.dw	1+Sstm8s_it$UART1_TX_IRQHandler$93-Sstm8s_it$UART1_TX_IRQHandler$92
      000B5D 00                     907 	.db	0
      000B5E 01                     908 	.uleb128	1
      000B5F 01                     909 	.db	1
      000B60 00                     910 	.db	0
      000B61 05                     911 	.uleb128	5
      000B62 02                     912 	.db	2
      000B63 00 00 87 6A            913 	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$95)
      000B67 03                     914 	.db	3
      000B68 CF 02                  915 	.sleb128	335
      000B6A 01                     916 	.db	1
      000B6B 09                     917 	.db	9
      000B6C 00 00                  918 	.dw	Sstm8s_it$UART1_RX_IRQHandler$97-Sstm8s_it$UART1_RX_IRQHandler$95
      000B6E 03                     919 	.db	3
      000B6F 05                     920 	.sleb128	5
      000B70 01                     921 	.db	1
      000B71 09                     922 	.db	9
      000B72 00 01                  923 	.dw	1+Sstm8s_it$UART1_RX_IRQHandler$98-Sstm8s_it$UART1_RX_IRQHandler$97
      000B74 00                     924 	.db	0
      000B75 01                     925 	.uleb128	1
      000B76 01                     926 	.db	1
      000B77 00                     927 	.db	0
      000B78 05                     928 	.uleb128	5
      000B79 02                     929 	.db	2
      000B7A 00 00 87 6B            930 	.dw	0,(Sstm8s_it$I2C_IRQHandler$100)
      000B7E 03                     931 	.db	3
      000B7F DC 02                  932 	.sleb128	348
      000B81 01                     933 	.db	1
      000B82 09                     934 	.db	9
      000B83 00 00                  935 	.dw	Sstm8s_it$I2C_IRQHandler$102-Sstm8s_it$I2C_IRQHandler$100
      000B85 03                     936 	.db	3
      000B86 05                     937 	.sleb128	5
      000B87 01                     938 	.db	1
      000B88 09                     939 	.db	9
      000B89 00 01                  940 	.dw	1+Sstm8s_it$I2C_IRQHandler$103-Sstm8s_it$I2C_IRQHandler$102
      000B8B 00                     941 	.db	0
      000B8C 01                     942 	.uleb128	1
      000B8D 01                     943 	.db	1
      000B8E 00                     944 	.db	0
      000B8F 05                     945 	.uleb128	5
      000B90 02                     946 	.db	2
      000B91 00 00 87 6C            947 	.dw	0,(Sstm8s_it$UART3_TX_IRQHandler$105)
      000B95 03                     948 	.db	3
      000B96 83 03                  949 	.sleb128	387
      000B98 01                     950 	.db	1
      000B99 09                     951 	.db	9
      000B9A 00 00                  952 	.dw	Sstm8s_it$UART3_TX_IRQHandler$107-Sstm8s_it$UART3_TX_IRQHandler$105
      000B9C 03                     953 	.db	3
      000B9D 05                     954 	.sleb128	5
      000B9E 01                     955 	.db	1
      000B9F 09                     956 	.db	9
      000BA0 00 01                  957 	.dw	1+Sstm8s_it$UART3_TX_IRQHandler$108-Sstm8s_it$UART3_TX_IRQHandler$107
      000BA2 00                     958 	.db	0
      000BA3 01                     959 	.uleb128	1
      000BA4 01                     960 	.db	1
      000BA5 00                     961 	.db	0
      000BA6 05                     962 	.uleb128	5
      000BA7 02                     963 	.db	2
      000BA8 00 00 87 6D            964 	.dw	0,(Sstm8s_it$UART3_RX_IRQHandler$110)
      000BAC 03                     965 	.db	3
      000BAD 8F 03                  966 	.sleb128	399
      000BAF 01                     967 	.db	1
      000BB0 09                     968 	.db	9
      000BB1 00 00                  969 	.dw	Sstm8s_it$UART3_RX_IRQHandler$112-Sstm8s_it$UART3_RX_IRQHandler$110
      000BB3 03                     970 	.db	3
      000BB4 05                     971 	.sleb128	5
      000BB5 01                     972 	.db	1
      000BB6 09                     973 	.db	9
      000BB7 00 01                  974 	.dw	1+Sstm8s_it$UART3_RX_IRQHandler$113-Sstm8s_it$UART3_RX_IRQHandler$112
      000BB9 00                     975 	.db	0
      000BBA 01                     976 	.uleb128	1
      000BBB 01                     977 	.db	1
      000BBC 00                     978 	.db	0
      000BBD 05                     979 	.uleb128	5
      000BBE 02                     980 	.db	2
      000BBF 00 00 87 6E            981 	.dw	0,(Sstm8s_it$ADC2_IRQHandler$115)
      000BC3 03                     982 	.db	3
      000BC4 9D 03                  983 	.sleb128	413
      000BC6 01                     984 	.db	1
      000BC7 09                     985 	.db	9
      000BC8 00 00                  986 	.dw	Sstm8s_it$ADC2_IRQHandler$117-Sstm8s_it$ADC2_IRQHandler$115
      000BCA 03                     987 	.db	3
      000BCB 06                     988 	.sleb128	6
      000BCC 01                     989 	.db	1
      000BCD 09                     990 	.db	9
      000BCE 00 00                  991 	.dw	Sstm8s_it$ADC2_IRQHandler$118-Sstm8s_it$ADC2_IRQHandler$117
      000BD0 03                     992 	.db	3
      000BD1 02                     993 	.sleb128	2
      000BD2 01                     994 	.db	1
      000BD3 09                     995 	.db	9
      000BD4 00 01                  996 	.dw	1+Sstm8s_it$ADC2_IRQHandler$119-Sstm8s_it$ADC2_IRQHandler$118
      000BD6 00                     997 	.db	0
      000BD7 01                     998 	.uleb128	1
      000BD8 01                     999 	.db	1
      000BD9 00                    1000 	.db	0
      000BDA 05                    1001 	.uleb128	5
      000BDB 02                    1002 	.db	2
      000BDC 00 00 87 6F           1003 	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$121)
      000BE0 03                    1004 	.db	3
      000BE1 D6 03                 1005 	.sleb128	470
      000BE3 01                    1006 	.db	1
      000BE4 09                    1007 	.db	9
      000BE5 00 00                 1008 	.dw	Sstm8s_it$EEPROM_EEC_IRQHandler$123-Sstm8s_it$EEPROM_EEC_IRQHandler$121
      000BE7 03                    1009 	.db	3
      000BE8 05                    1010 	.sleb128	5
      000BE9 01                    1011 	.db	1
      000BEA 09                    1012 	.db	9
      000BEB 00 01                 1013 	.dw	1+Sstm8s_it$EEPROM_EEC_IRQHandler$124-Sstm8s_it$EEPROM_EEC_IRQHandler$123
      000BED 00                    1014 	.db	0
      000BEE 01                    1015 	.uleb128	1
      000BEF 01                    1016 	.db	1
      000BF0                       1017 Ldebug_line_end:
                                   1018 
                                   1019 	.area .debug_loc (NOLOAD)
      001308                       1020 Ldebug_loc_start:
      001308 00 00 87 6F           1021 	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$122)
      00130C 00 00 87 70           1022 	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$125)
      001310 00 02                 1023 	.dw	2
      001312 78                    1024 	.db	120
      001313 01                    1025 	.sleb128	1
      001314 00 00 00 00           1026 	.dw	0,0
      001318 00 00 00 00           1027 	.dw	0,0
      00131C 00 00 87 6E           1028 	.dw	0,(Sstm8s_it$ADC2_IRQHandler$116)
      001320 00 00 87 6F           1029 	.dw	0,(Sstm8s_it$ADC2_IRQHandler$120)
      001324 00 02                 1030 	.dw	2
      001326 78                    1031 	.db	120
      001327 01                    1032 	.sleb128	1
      001328 00 00 00 00           1033 	.dw	0,0
      00132C 00 00 00 00           1034 	.dw	0,0
      001330 00 00 87 6D           1035 	.dw	0,(Sstm8s_it$UART3_RX_IRQHandler$111)
      001334 00 00 87 6E           1036 	.dw	0,(Sstm8s_it$UART3_RX_IRQHandler$114)
      001338 00 02                 1037 	.dw	2
      00133A 78                    1038 	.db	120
      00133B 01                    1039 	.sleb128	1
      00133C 00 00 00 00           1040 	.dw	0,0
      001340 00 00 00 00           1041 	.dw	0,0
      001344 00 00 87 6C           1042 	.dw	0,(Sstm8s_it$UART3_TX_IRQHandler$106)
      001348 00 00 87 6D           1043 	.dw	0,(Sstm8s_it$UART3_TX_IRQHandler$109)
      00134C 00 02                 1044 	.dw	2
      00134E 78                    1045 	.db	120
      00134F 01                    1046 	.sleb128	1
      001350 00 00 00 00           1047 	.dw	0,0
      001354 00 00 00 00           1048 	.dw	0,0
      001358 00 00 87 6B           1049 	.dw	0,(Sstm8s_it$I2C_IRQHandler$101)
      00135C 00 00 87 6C           1050 	.dw	0,(Sstm8s_it$I2C_IRQHandler$104)
      001360 00 02                 1051 	.dw	2
      001362 78                    1052 	.db	120
      001363 01                    1053 	.sleb128	1
      001364 00 00 00 00           1054 	.dw	0,0
      001368 00 00 00 00           1055 	.dw	0,0
      00136C 00 00 87 6A           1056 	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$96)
      001370 00 00 87 6B           1057 	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$99)
      001374 00 02                 1058 	.dw	2
      001376 78                    1059 	.db	120
      001377 01                    1060 	.sleb128	1
      001378 00 00 00 00           1061 	.dw	0,0
      00137C 00 00 00 00           1062 	.dw	0,0
      001380 00 00 87 69           1063 	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$91)
      001384 00 00 87 6A           1064 	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$94)
      001388 00 02                 1065 	.dw	2
      00138A 78                    1066 	.db	120
      00138B 01                    1067 	.sleb128	1
      00138C 00 00 00 00           1068 	.dw	0,0
      001390 00 00 00 00           1069 	.dw	0,0
      001394 00 00 87 68           1070 	.dw	0,(Sstm8s_it$TIM3_CAP_COM_IRQHandler$86)
      001398 00 00 87 69           1071 	.dw	0,(Sstm8s_it$TIM3_CAP_COM_IRQHandler$89)
      00139C 00 02                 1072 	.dw	2
      00139E 78                    1073 	.db	120
      00139F 01                    1074 	.sleb128	1
      0013A0 00 00 00 00           1075 	.dw	0,0
      0013A4 00 00 00 00           1076 	.dw	0,0
      0013A8 00 00 87 67           1077 	.dw	0,(Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$81)
      0013AC 00 00 87 68           1078 	.dw	0,(Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$84)
      0013B0 00 02                 1079 	.dw	2
      0013B2 78                    1080 	.db	120
      0013B3 01                    1081 	.sleb128	1
      0013B4 00 00 00 00           1082 	.dw	0,0
      0013B8 00 00 00 00           1083 	.dw	0,0
      0013BC 00 00 87 66           1084 	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$76)
      0013C0 00 00 87 67           1085 	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$79)
      0013C4 00 02                 1086 	.dw	2
      0013C6 78                    1087 	.db	120
      0013C7 01                    1088 	.sleb128	1
      0013C8 00 00 00 00           1089 	.dw	0,0
      0013CC 00 00 00 00           1090 	.dw	0,0
      0013D0 00 00 87 65           1091 	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$71)
      0013D4 00 00 87 66           1092 	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$74)
      0013D8 00 02                 1093 	.dw	2
      0013DA 78                    1094 	.db	120
      0013DB 01                    1095 	.sleb128	1
      0013DC 00 00 00 00           1096 	.dw	0,0
      0013E0 00 00 00 00           1097 	.dw	0,0
      0013E4 00 00 87 64           1098 	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$66)
      0013E8 00 00 87 65           1099 	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$69)
      0013EC 00 02                 1100 	.dw	2
      0013EE 78                    1101 	.db	120
      0013EF 01                    1102 	.sleb128	1
      0013F0 00 00 00 00           1103 	.dw	0,0
      0013F4 00 00 00 00           1104 	.dw	0,0
      0013F8 00 00 87 63           1105 	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61)
      0013FC 00 00 87 64           1106 	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$64)
      001400 00 02                 1107 	.dw	2
      001402 78                    1108 	.db	120
      001403 01                    1109 	.sleb128	1
      001404 00 00 00 00           1110 	.dw	0,0
      001408 00 00 00 00           1111 	.dw	0,0
      00140C 00 00 87 62           1112 	.dw	0,(Sstm8s_it$SPI_IRQHandler$56)
      001410 00 00 87 63           1113 	.dw	0,(Sstm8s_it$SPI_IRQHandler$59)
      001414 00 02                 1114 	.dw	2
      001416 78                    1115 	.db	120
      001417 01                    1116 	.sleb128	1
      001418 00 00 00 00           1117 	.dw	0,0
      00141C 00 00 00 00           1118 	.dw	0,0
      001420 00 00 87 61           1119 	.dw	0,(Sstm8s_it$CAN_TX_IRQHandler$51)
      001424 00 00 87 62           1120 	.dw	0,(Sstm8s_it$CAN_TX_IRQHandler$54)
      001428 00 02                 1121 	.dw	2
      00142A 78                    1122 	.db	120
      00142B 01                    1123 	.sleb128	1
      00142C 00 00 00 00           1124 	.dw	0,0
      001430 00 00 00 00           1125 	.dw	0,0
      001434 00 00 87 60           1126 	.dw	0,(Sstm8s_it$CAN_RX_IRQHandler$46)
      001438 00 00 87 61           1127 	.dw	0,(Sstm8s_it$CAN_RX_IRQHandler$49)
      00143C 00 02                 1128 	.dw	2
      00143E 78                    1129 	.db	120
      00143F 01                    1130 	.sleb128	1
      001440 00 00 00 00           1131 	.dw	0,0
      001444 00 00 00 00           1132 	.dw	0,0
      001448 00 00 87 5F           1133 	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$41)
      00144C 00 00 87 60           1134 	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$44)
      001450 00 02                 1135 	.dw	2
      001452 78                    1136 	.db	120
      001453 01                    1137 	.sleb128	1
      001454 00 00 00 00           1138 	.dw	0,0
      001458 00 00 00 00           1139 	.dw	0,0
      00145C 00 00 87 5E           1140 	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$36)
      001460 00 00 87 5F           1141 	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$39)
      001464 00 02                 1142 	.dw	2
      001466 78                    1143 	.db	120
      001467 01                    1144 	.sleb128	1
      001468 00 00 00 00           1145 	.dw	0,0
      00146C 00 00 00 00           1146 	.dw	0,0
      001470 00 00 87 5D           1147 	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$31)
      001474 00 00 87 5E           1148 	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$34)
      001478 00 02                 1149 	.dw	2
      00147A 78                    1150 	.db	120
      00147B 01                    1151 	.sleb128	1
      00147C 00 00 00 00           1152 	.dw	0,0
      001480 00 00 00 00           1153 	.dw	0,0
      001484 00 00 87 5C           1154 	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$26)
      001488 00 00 87 5D           1155 	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$29)
      00148C 00 02                 1156 	.dw	2
      00148E 78                    1157 	.db	120
      00148F 01                    1158 	.sleb128	1
      001490 00 00 00 00           1159 	.dw	0,0
      001494 00 00 00 00           1160 	.dw	0,0
      001498 00 00 87 5B           1161 	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$21)
      00149C 00 00 87 5C           1162 	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$24)
      0014A0 00 02                 1163 	.dw	2
      0014A2 78                    1164 	.db	120
      0014A3 01                    1165 	.sleb128	1
      0014A4 00 00 00 00           1166 	.dw	0,0
      0014A8 00 00 00 00           1167 	.dw	0,0
      0014AC 00 00 87 5A           1168 	.dw	0,(Sstm8s_it$CLK_IRQHandler$16)
      0014B0 00 00 87 5B           1169 	.dw	0,(Sstm8s_it$CLK_IRQHandler$19)
      0014B4 00 02                 1170 	.dw	2
      0014B6 78                    1171 	.db	120
      0014B7 01                    1172 	.sleb128	1
      0014B8 00 00 00 00           1173 	.dw	0,0
      0014BC 00 00 00 00           1174 	.dw	0,0
      0014C0 00 00 87 59           1175 	.dw	0,(Sstm8s_it$AWU_IRQHandler$11)
      0014C4 00 00 87 5A           1176 	.dw	0,(Sstm8s_it$AWU_IRQHandler$14)
      0014C8 00 02                 1177 	.dw	2
      0014CA 78                    1178 	.db	120
      0014CB 01                    1179 	.sleb128	1
      0014CC 00 00 00 00           1180 	.dw	0,0
      0014D0 00 00 00 00           1181 	.dw	0,0
      0014D4 00 00 87 58           1182 	.dw	0,(Sstm8s_it$TLI_IRQHandler$6)
      0014D8 00 00 87 59           1183 	.dw	0,(Sstm8s_it$TLI_IRQHandler$9)
      0014DC 00 02                 1184 	.dw	2
      0014DE 78                    1185 	.db	120
      0014DF 01                    1186 	.sleb128	1
      0014E0 00 00 00 00           1187 	.dw	0,0
      0014E4 00 00 00 00           1188 	.dw	0,0
      0014E8 00 00 87 57           1189 	.dw	0,(Sstm8s_it$TRAP_IRQHandler$1)
      0014EC 00 00 87 58           1190 	.dw	0,(Sstm8s_it$TRAP_IRQHandler$4)
      0014F0 00 02                 1191 	.dw	2
      0014F2 78                    1192 	.db	120
      0014F3 01                    1193 	.sleb128	1
      0014F4 00 00 00 00           1194 	.dw	0,0
      0014F8 00 00 00 00           1195 	.dw	0,0
                                   1196 
                                   1197 	.area .debug_abbrev (NOLOAD)
      00022E                       1198 Ldebug_abbrev:
      00022E 01                    1199 	.uleb128	1
      00022F 11                    1200 	.uleb128	17
      000230 01                    1201 	.db	1
      000231 03                    1202 	.uleb128	3
      000232 08                    1203 	.uleb128	8
      000233 10                    1204 	.uleb128	16
      000234 06                    1205 	.uleb128	6
      000235 13                    1206 	.uleb128	19
      000236 0B                    1207 	.uleb128	11
      000237 25                    1208 	.uleb128	37
      000238 08                    1209 	.uleb128	8
      000239 00                    1210 	.uleb128	0
      00023A 00                    1211 	.uleb128	0
      00023B 02                    1212 	.uleb128	2
      00023C 2E                    1213 	.uleb128	46
      00023D 00                    1214 	.db	0
      00023E 03                    1215 	.uleb128	3
      00023F 08                    1216 	.uleb128	8
      000240 11                    1217 	.uleb128	17
      000241 01                    1218 	.uleb128	1
      000242 12                    1219 	.uleb128	18
      000243 01                    1220 	.uleb128	1
      000244 36                    1221 	.uleb128	54
      000245 0B                    1222 	.uleb128	11
      000246 3F                    1223 	.uleb128	63
      000247 0C                    1224 	.uleb128	12
      000248 40                    1225 	.uleb128	64
      000249 06                    1226 	.uleb128	6
      00024A 00                    1227 	.uleb128	0
      00024B 00                    1228 	.uleb128	0
      00024C 00                    1229 	.uleb128	0
                                   1230 
                                   1231 	.area .debug_info (NOLOAD)
      000F88 00 00 03 B5           1232 	.dw	0,Ldebug_info_end-Ldebug_info_start
      000F8C                       1233 Ldebug_info_start:
      000F8C 00 02                 1234 	.dw	2
      000F8E 00 00 02 2E           1235 	.dw	0,(Ldebug_abbrev)
      000F92 04                    1236 	.db	4
      000F93 01                    1237 	.uleb128	1
      000F94 2E 2F 73 72 63 2F 73  1238 	.ascii "./src/stm8s_it.c"
             74 6D 38 73 5F 69 74
             2E 63
      000FA4 00                    1239 	.db	0
      000FA5 00 00 09 31           1240 	.dw	0,(Ldebug_line_start+-4)
      000FA9 01                    1241 	.db	1
      000FAA 53 44 43 43 20 76 65  1242 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      000FC3 00                    1243 	.db	0
      000FC4 02                    1244 	.uleb128	2
      000FC5 54 52 41 50 5F 49 52  1245 	.ascii "TRAP_IRQHandler"
             51 48 61 6E 64 6C 65
             72
      000FD4 00                    1246 	.db	0
      000FD5 00 00 87 57           1247 	.dw	0,(_TRAP_IRQHandler)
      000FD9 00 00 87 58           1248 	.dw	0,(XG$TRAP_IRQHandler$0$0+1)
      000FDD 03                    1249 	.db	3
      000FDE 01                    1250 	.db	1
      000FDF 00 00 14 E8           1251 	.dw	0,(Ldebug_loc_start+480)
      000FE3 02                    1252 	.uleb128	2
      000FE4 54 4C 49 5F 49 52 51  1253 	.ascii "TLI_IRQHandler"
             48 61 6E 64 6C 65 72
      000FF2 00                    1254 	.db	0
      000FF3 00 00 87 58           1255 	.dw	0,(_TLI_IRQHandler)
      000FF7 00 00 87 59           1256 	.dw	0,(XG$TLI_IRQHandler$0$0+1)
      000FFB 03                    1257 	.db	3
      000FFC 01                    1258 	.db	1
      000FFD 00 00 14 D4           1259 	.dw	0,(Ldebug_loc_start+460)
      001001 02                    1260 	.uleb128	2
      001002 41 57 55 5F 49 52 51  1261 	.ascii "AWU_IRQHandler"
             48 61 6E 64 6C 65 72
      001010 00                    1262 	.db	0
      001011 00 00 87 59           1263 	.dw	0,(_AWU_IRQHandler)
      001015 00 00 87 5A           1264 	.dw	0,(XG$AWU_IRQHandler$0$0+1)
      001019 03                    1265 	.db	3
      00101A 01                    1266 	.db	1
      00101B 00 00 14 C0           1267 	.dw	0,(Ldebug_loc_start+440)
      00101F 02                    1268 	.uleb128	2
      001020 43 4C 4B 5F 49 52 51  1269 	.ascii "CLK_IRQHandler"
             48 61 6E 64 6C 65 72
      00102E 00                    1270 	.db	0
      00102F 00 00 87 5A           1271 	.dw	0,(_CLK_IRQHandler)
      001033 00 00 87 5B           1272 	.dw	0,(XG$CLK_IRQHandler$0$0+1)
      001037 03                    1273 	.db	3
      001038 01                    1274 	.db	1
      001039 00 00 14 AC           1275 	.dw	0,(Ldebug_loc_start+420)
      00103D 02                    1276 	.uleb128	2
      00103E 45 58 54 49 5F 50 4F  1277 	.ascii "EXTI_PORTA_IRQHandler"
             52 54 41 5F 49 52 51
             48 61 6E 64 6C 65 72
      001053 00                    1278 	.db	0
      001054 00 00 87 5B           1279 	.dw	0,(_EXTI_PORTA_IRQHandler)
      001058 00 00 87 5C           1280 	.dw	0,(XG$EXTI_PORTA_IRQHandler$0$0+1)
      00105C 03                    1281 	.db	3
      00105D 01                    1282 	.db	1
      00105E 00 00 14 98           1283 	.dw	0,(Ldebug_loc_start+400)
      001062 02                    1284 	.uleb128	2
      001063 45 58 54 49 5F 50 4F  1285 	.ascii "EXTI_PORTB_IRQHandler"
             52 54 42 5F 49 52 51
             48 61 6E 64 6C 65 72
      001078 00                    1286 	.db	0
      001079 00 00 87 5C           1287 	.dw	0,(_EXTI_PORTB_IRQHandler)
      00107D 00 00 87 5D           1288 	.dw	0,(XG$EXTI_PORTB_IRQHandler$0$0+1)
      001081 03                    1289 	.db	3
      001082 01                    1290 	.db	1
      001083 00 00 14 84           1291 	.dw	0,(Ldebug_loc_start+380)
      001087 02                    1292 	.uleb128	2
      001088 45 58 54 49 5F 50 4F  1293 	.ascii "EXTI_PORTC_IRQHandler"
             52 54 43 5F 49 52 51
             48 61 6E 64 6C 65 72
      00109D 00                    1294 	.db	0
      00109E 00 00 87 5D           1295 	.dw	0,(_EXTI_PORTC_IRQHandler)
      0010A2 00 00 87 5E           1296 	.dw	0,(XG$EXTI_PORTC_IRQHandler$0$0+1)
      0010A6 03                    1297 	.db	3
      0010A7 01                    1298 	.db	1
      0010A8 00 00 14 70           1299 	.dw	0,(Ldebug_loc_start+360)
      0010AC 02                    1300 	.uleb128	2
      0010AD 45 58 54 49 5F 50 4F  1301 	.ascii "EXTI_PORTD_IRQHandler"
             52 54 44 5F 49 52 51
             48 61 6E 64 6C 65 72
      0010C2 00                    1302 	.db	0
      0010C3 00 00 87 5E           1303 	.dw	0,(_EXTI_PORTD_IRQHandler)
      0010C7 00 00 87 5F           1304 	.dw	0,(XG$EXTI_PORTD_IRQHandler$0$0+1)
      0010CB 03                    1305 	.db	3
      0010CC 01                    1306 	.db	1
      0010CD 00 00 14 5C           1307 	.dw	0,(Ldebug_loc_start+340)
      0010D1 02                    1308 	.uleb128	2
      0010D2 45 58 54 49 5F 50 4F  1309 	.ascii "EXTI_PORTE_IRQHandler"
             52 54 45 5F 49 52 51
             48 61 6E 64 6C 65 72
      0010E7 00                    1310 	.db	0
      0010E8 00 00 87 5F           1311 	.dw	0,(_EXTI_PORTE_IRQHandler)
      0010EC 00 00 87 60           1312 	.dw	0,(XG$EXTI_PORTE_IRQHandler$0$0+1)
      0010F0 03                    1313 	.db	3
      0010F1 01                    1314 	.db	1
      0010F2 00 00 14 48           1315 	.dw	0,(Ldebug_loc_start+320)
      0010F6 02                    1316 	.uleb128	2
      0010F7 43 41 4E 5F 52 58 5F  1317 	.ascii "CAN_RX_IRQHandler"
             49 52 51 48 61 6E 64
             6C 65 72
      001108 00                    1318 	.db	0
      001109 00 00 87 60           1319 	.dw	0,(_CAN_RX_IRQHandler)
      00110D 00 00 87 61           1320 	.dw	0,(XG$CAN_RX_IRQHandler$0$0+1)
      001111 03                    1321 	.db	3
      001112 01                    1322 	.db	1
      001113 00 00 14 34           1323 	.dw	0,(Ldebug_loc_start+300)
      001117 02                    1324 	.uleb128	2
      001118 43 41 4E 5F 54 58 5F  1325 	.ascii "CAN_TX_IRQHandler"
             49 52 51 48 61 6E 64
             6C 65 72
      001129 00                    1326 	.db	0
      00112A 00 00 87 61           1327 	.dw	0,(_CAN_TX_IRQHandler)
      00112E 00 00 87 62           1328 	.dw	0,(XG$CAN_TX_IRQHandler$0$0+1)
      001132 03                    1329 	.db	3
      001133 01                    1330 	.db	1
      001134 00 00 14 20           1331 	.dw	0,(Ldebug_loc_start+280)
      001138 02                    1332 	.uleb128	2
      001139 53 50 49 5F 49 52 51  1333 	.ascii "SPI_IRQHandler"
             48 61 6E 64 6C 65 72
      001147 00                    1334 	.db	0
      001148 00 00 87 62           1335 	.dw	0,(_SPI_IRQHandler)
      00114C 00 00 87 63           1336 	.dw	0,(XG$SPI_IRQHandler$0$0+1)
      001150 03                    1337 	.db	3
      001151 01                    1338 	.db	1
      001152 00 00 14 0C           1339 	.dw	0,(Ldebug_loc_start+260)
      001156 02                    1340 	.uleb128	2
      001157 54 49 4D 31 5F 55 50  1341 	.ascii "TIM1_UPD_OVF_TRG_BRK_IRQHandler"
             44 5F 4F 56 46 5F 54
             52 47 5F 42 52 4B 5F
             49 52 51 48 61 6E 64
             6C 65 72
      001176 00                    1342 	.db	0
      001177 00 00 87 63           1343 	.dw	0,(_TIM1_UPD_OVF_TRG_BRK_IRQHandler)
      00117B 00 00 87 64           1344 	.dw	0,(XG$TIM1_UPD_OVF_TRG_BRK_IRQHandler$0$0+1)
      00117F 03                    1345 	.db	3
      001180 01                    1346 	.db	1
      001181 00 00 13 F8           1347 	.dw	0,(Ldebug_loc_start+240)
      001185 02                    1348 	.uleb128	2
      001186 54 49 4D 31 5F 43 41  1349 	.ascii "TIM1_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      00119D 00                    1350 	.db	0
      00119E 00 00 87 64           1351 	.dw	0,(_TIM1_CAP_COM_IRQHandler)
      0011A2 00 00 87 65           1352 	.dw	0,(XG$TIM1_CAP_COM_IRQHandler$0$0+1)
      0011A6 03                    1353 	.db	3
      0011A7 01                    1354 	.db	1
      0011A8 00 00 13 E4           1355 	.dw	0,(Ldebug_loc_start+220)
      0011AC 02                    1356 	.uleb128	2
      0011AD 54 49 4D 32 5F 55 50  1357 	.ascii "TIM2_UPD_OVF_BRK_IRQHandler"
             44 5F 4F 56 46 5F 42
             52 4B 5F 49 52 51 48
             61 6E 64 6C 65 72
      0011C8 00                    1358 	.db	0
      0011C9 00 00 87 65           1359 	.dw	0,(_TIM2_UPD_OVF_BRK_IRQHandler)
      0011CD 00 00 87 66           1360 	.dw	0,(XG$TIM2_UPD_OVF_BRK_IRQHandler$0$0+1)
      0011D1 03                    1361 	.db	3
      0011D2 01                    1362 	.db	1
      0011D3 00 00 13 D0           1363 	.dw	0,(Ldebug_loc_start+200)
      0011D7 02                    1364 	.uleb128	2
      0011D8 54 49 4D 32 5F 43 41  1365 	.ascii "TIM2_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      0011EF 00                    1366 	.db	0
      0011F0 00 00 87 66           1367 	.dw	0,(_TIM2_CAP_COM_IRQHandler)
      0011F4 00 00 87 67           1368 	.dw	0,(XG$TIM2_CAP_COM_IRQHandler$0$0+1)
      0011F8 03                    1369 	.db	3
      0011F9 01                    1370 	.db	1
      0011FA 00 00 13 BC           1371 	.dw	0,(Ldebug_loc_start+180)
      0011FE 02                    1372 	.uleb128	2
      0011FF 54 49 4D 33 5F 55 50  1373 	.ascii "TIM3_UPD_OVF_BRK_IRQHandler"
             44 5F 4F 56 46 5F 42
             52 4B 5F 49 52 51 48
             61 6E 64 6C 65 72
      00121A 00                    1374 	.db	0
      00121B 00 00 87 67           1375 	.dw	0,(_TIM3_UPD_OVF_BRK_IRQHandler)
      00121F 00 00 87 68           1376 	.dw	0,(XG$TIM3_UPD_OVF_BRK_IRQHandler$0$0+1)
      001223 03                    1377 	.db	3
      001224 01                    1378 	.db	1
      001225 00 00 13 A8           1379 	.dw	0,(Ldebug_loc_start+160)
      001229 02                    1380 	.uleb128	2
      00122A 54 49 4D 33 5F 43 41  1381 	.ascii "TIM3_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      001241 00                    1382 	.db	0
      001242 00 00 87 68           1383 	.dw	0,(_TIM3_CAP_COM_IRQHandler)
      001246 00 00 87 69           1384 	.dw	0,(XG$TIM3_CAP_COM_IRQHandler$0$0+1)
      00124A 03                    1385 	.db	3
      00124B 01                    1386 	.db	1
      00124C 00 00 13 94           1387 	.dw	0,(Ldebug_loc_start+140)
      001250 02                    1388 	.uleb128	2
      001251 55 41 52 54 31 5F 54  1389 	.ascii "UART1_TX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      001264 00                    1390 	.db	0
      001265 00 00 87 69           1391 	.dw	0,(_UART1_TX_IRQHandler)
      001269 00 00 87 6A           1392 	.dw	0,(XG$UART1_TX_IRQHandler$0$0+1)
      00126D 03                    1393 	.db	3
      00126E 01                    1394 	.db	1
      00126F 00 00 13 80           1395 	.dw	0,(Ldebug_loc_start+120)
      001273 02                    1396 	.uleb128	2
      001274 55 41 52 54 31 5F 52  1397 	.ascii "UART1_RX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      001287 00                    1398 	.db	0
      001288 00 00 87 6A           1399 	.dw	0,(_UART1_RX_IRQHandler)
      00128C 00 00 87 6B           1400 	.dw	0,(XG$UART1_RX_IRQHandler$0$0+1)
      001290 03                    1401 	.db	3
      001291 01                    1402 	.db	1
      001292 00 00 13 6C           1403 	.dw	0,(Ldebug_loc_start+100)
      001296 02                    1404 	.uleb128	2
      001297 49 32 43 5F 49 52 51  1405 	.ascii "I2C_IRQHandler"
             48 61 6E 64 6C 65 72
      0012A5 00                    1406 	.db	0
      0012A6 00 00 87 6B           1407 	.dw	0,(_I2C_IRQHandler)
      0012AA 00 00 87 6C           1408 	.dw	0,(XG$I2C_IRQHandler$0$0+1)
      0012AE 03                    1409 	.db	3
      0012AF 01                    1410 	.db	1
      0012B0 00 00 13 58           1411 	.dw	0,(Ldebug_loc_start+80)
      0012B4 02                    1412 	.uleb128	2
      0012B5 55 41 52 54 33 5F 54  1413 	.ascii "UART3_TX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      0012C8 00                    1414 	.db	0
      0012C9 00 00 87 6C           1415 	.dw	0,(_UART3_TX_IRQHandler)
      0012CD 00 00 87 6D           1416 	.dw	0,(XG$UART3_TX_IRQHandler$0$0+1)
      0012D1 03                    1417 	.db	3
      0012D2 01                    1418 	.db	1
      0012D3 00 00 13 44           1419 	.dw	0,(Ldebug_loc_start+60)
      0012D7 02                    1420 	.uleb128	2
      0012D8 55 41 52 54 33 5F 52  1421 	.ascii "UART3_RX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      0012EB 00                    1422 	.db	0
      0012EC 00 00 87 6D           1423 	.dw	0,(_UART3_RX_IRQHandler)
      0012F0 00 00 87 6E           1424 	.dw	0,(XG$UART3_RX_IRQHandler$0$0+1)
      0012F4 03                    1425 	.db	3
      0012F5 01                    1426 	.db	1
      0012F6 00 00 13 30           1427 	.dw	0,(Ldebug_loc_start+40)
      0012FA 02                    1428 	.uleb128	2
      0012FB 41 44 43 32 5F 49 52  1429 	.ascii "ADC2_IRQHandler"
             51 48 61 6E 64 6C 65
             72
      00130A 00                    1430 	.db	0
      00130B 00 00 87 6E           1431 	.dw	0,(_ADC2_IRQHandler)
      00130F 00 00 87 6F           1432 	.dw	0,(XG$ADC2_IRQHandler$0$0+1)
      001313 03                    1433 	.db	3
      001314 01                    1434 	.db	1
      001315 00 00 13 1C           1435 	.dw	0,(Ldebug_loc_start+20)
      001319 02                    1436 	.uleb128	2
      00131A 45 45 50 52 4F 4D 5F  1437 	.ascii "EEPROM_EEC_IRQHandler"
             45 45 43 5F 49 52 51
             48 61 6E 64 6C 65 72
      00132F 00                    1438 	.db	0
      001330 00 00 87 6F           1439 	.dw	0,(_EEPROM_EEC_IRQHandler)
      001334 00 00 87 70           1440 	.dw	0,(XG$EEPROM_EEC_IRQHandler$0$0+1)
      001338 03                    1441 	.db	3
      001339 01                    1442 	.db	1
      00133A 00 00 13 08           1443 	.dw	0,(Ldebug_loc_start)
      00133E 00                    1444 	.uleb128	0
      00133F 00                    1445 	.uleb128	0
      001340 00                    1446 	.uleb128	0
      001341                       1447 Ldebug_info_end:
                                   1448 
                                   1449 	.area .debug_pubnames (NOLOAD)
      000207 00 00 02 75           1450 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      00020B                       1451 Ldebug_pubnames_start:
      00020B 00 02                 1452 	.dw	2
      00020D 00 00 0F 88           1453 	.dw	0,(Ldebug_info_start-4)
      000211 00 00 03 B9           1454 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000215 00 00 00 3C           1455 	.dw	0,60
      000219 54 52 41 50 5F 49 52  1456 	.ascii "TRAP_IRQHandler"
             51 48 61 6E 64 6C 65
             72
      000228 00                    1457 	.db	0
      000229 00 00 00 5B           1458 	.dw	0,91
      00022D 54 4C 49 5F 49 52 51  1459 	.ascii "TLI_IRQHandler"
             48 61 6E 64 6C 65 72
      00023B 00                    1460 	.db	0
      00023C 00 00 00 79           1461 	.dw	0,121
      000240 41 57 55 5F 49 52 51  1462 	.ascii "AWU_IRQHandler"
             48 61 6E 64 6C 65 72
      00024E 00                    1463 	.db	0
      00024F 00 00 00 97           1464 	.dw	0,151
      000253 43 4C 4B 5F 49 52 51  1465 	.ascii "CLK_IRQHandler"
             48 61 6E 64 6C 65 72
      000261 00                    1466 	.db	0
      000262 00 00 00 B5           1467 	.dw	0,181
      000266 45 58 54 49 5F 50 4F  1468 	.ascii "EXTI_PORTA_IRQHandler"
             52 54 41 5F 49 52 51
             48 61 6E 64 6C 65 72
      00027B 00                    1469 	.db	0
      00027C 00 00 00 DA           1470 	.dw	0,218
      000280 45 58 54 49 5F 50 4F  1471 	.ascii "EXTI_PORTB_IRQHandler"
             52 54 42 5F 49 52 51
             48 61 6E 64 6C 65 72
      000295 00                    1472 	.db	0
      000296 00 00 00 FF           1473 	.dw	0,255
      00029A 45 58 54 49 5F 50 4F  1474 	.ascii "EXTI_PORTC_IRQHandler"
             52 54 43 5F 49 52 51
             48 61 6E 64 6C 65 72
      0002AF 00                    1475 	.db	0
      0002B0 00 00 01 24           1476 	.dw	0,292
      0002B4 45 58 54 49 5F 50 4F  1477 	.ascii "EXTI_PORTD_IRQHandler"
             52 54 44 5F 49 52 51
             48 61 6E 64 6C 65 72
      0002C9 00                    1478 	.db	0
      0002CA 00 00 01 49           1479 	.dw	0,329
      0002CE 45 58 54 49 5F 50 4F  1480 	.ascii "EXTI_PORTE_IRQHandler"
             52 54 45 5F 49 52 51
             48 61 6E 64 6C 65 72
      0002E3 00                    1481 	.db	0
      0002E4 00 00 01 6E           1482 	.dw	0,366
      0002E8 43 41 4E 5F 52 58 5F  1483 	.ascii "CAN_RX_IRQHandler"
             49 52 51 48 61 6E 64
             6C 65 72
      0002F9 00                    1484 	.db	0
      0002FA 00 00 01 8F           1485 	.dw	0,399
      0002FE 43 41 4E 5F 54 58 5F  1486 	.ascii "CAN_TX_IRQHandler"
             49 52 51 48 61 6E 64
             6C 65 72
      00030F 00                    1487 	.db	0
      000310 00 00 01 B0           1488 	.dw	0,432
      000314 53 50 49 5F 49 52 51  1489 	.ascii "SPI_IRQHandler"
             48 61 6E 64 6C 65 72
      000322 00                    1490 	.db	0
      000323 00 00 01 CE           1491 	.dw	0,462
      000327 54 49 4D 31 5F 55 50  1492 	.ascii "TIM1_UPD_OVF_TRG_BRK_IRQHandler"
             44 5F 4F 56 46 5F 54
             52 47 5F 42 52 4B 5F
             49 52 51 48 61 6E 64
             6C 65 72
      000346 00                    1493 	.db	0
      000347 00 00 01 FD           1494 	.dw	0,509
      00034B 54 49 4D 31 5F 43 41  1495 	.ascii "TIM1_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      000362 00                    1496 	.db	0
      000363 00 00 02 24           1497 	.dw	0,548
      000367 54 49 4D 32 5F 55 50  1498 	.ascii "TIM2_UPD_OVF_BRK_IRQHandler"
             44 5F 4F 56 46 5F 42
             52 4B 5F 49 52 51 48
             61 6E 64 6C 65 72
      000382 00                    1499 	.db	0
      000383 00 00 02 4F           1500 	.dw	0,591
      000387 54 49 4D 32 5F 43 41  1501 	.ascii "TIM2_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      00039E 00                    1502 	.db	0
      00039F 00 00 02 76           1503 	.dw	0,630
      0003A3 54 49 4D 33 5F 55 50  1504 	.ascii "TIM3_UPD_OVF_BRK_IRQHandler"
             44 5F 4F 56 46 5F 42
             52 4B 5F 49 52 51 48
             61 6E 64 6C 65 72
      0003BE 00                    1505 	.db	0
      0003BF 00 00 02 A1           1506 	.dw	0,673
      0003C3 54 49 4D 33 5F 43 41  1507 	.ascii "TIM3_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      0003DA 00                    1508 	.db	0
      0003DB 00 00 02 C8           1509 	.dw	0,712
      0003DF 55 41 52 54 31 5F 54  1510 	.ascii "UART1_TX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      0003F2 00                    1511 	.db	0
      0003F3 00 00 02 EB           1512 	.dw	0,747
      0003F7 55 41 52 54 31 5F 52  1513 	.ascii "UART1_RX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      00040A 00                    1514 	.db	0
      00040B 00 00 03 0E           1515 	.dw	0,782
      00040F 49 32 43 5F 49 52 51  1516 	.ascii "I2C_IRQHandler"
             48 61 6E 64 6C 65 72
      00041D 00                    1517 	.db	0
      00041E 00 00 03 2C           1518 	.dw	0,812
      000422 55 41 52 54 33 5F 54  1519 	.ascii "UART3_TX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      000435 00                    1520 	.db	0
      000436 00 00 03 4F           1521 	.dw	0,847
      00043A 55 41 52 54 33 5F 52  1522 	.ascii "UART3_RX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      00044D 00                    1523 	.db	0
      00044E 00 00 03 72           1524 	.dw	0,882
      000452 41 44 43 32 5F 49 52  1525 	.ascii "ADC2_IRQHandler"
             51 48 61 6E 64 6C 65
             72
      000461 00                    1526 	.db	0
      000462 00 00 03 91           1527 	.dw	0,913
      000466 45 45 50 52 4F 4D 5F  1528 	.ascii "EEPROM_EEC_IRQHandler"
             45 45 43 5F 49 52 51
             48 61 6E 64 6C 65 72
      00047B 00                    1529 	.db	0
      00047C 00 00 00 00           1530 	.dw	0,0
      000480                       1531 Ldebug_pubnames_end:
                                   1532 
                                   1533 	.area .debug_frame (NOLOAD)
      000E8A 00 00                 1534 	.dw	0
      000E8C 00 0E                 1535 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000E8E                       1536 Ldebug_CIE0_start:
      000E8E FF FF                 1537 	.dw	0xffff
      000E90 FF FF                 1538 	.dw	0xffff
      000E92 01                    1539 	.db	1
      000E93 00                    1540 	.db	0
      000E94 01                    1541 	.uleb128	1
      000E95 7F                    1542 	.sleb128	-1
      000E96 09                    1543 	.db	9
      000E97 0C                    1544 	.db	12
      000E98 08                    1545 	.uleb128	8
      000E99 09                    1546 	.uleb128	9
      000E9A 89                    1547 	.db	137
      000E9B 01                    1548 	.uleb128	1
      000E9C                       1549 Ldebug_CIE0_end:
      000E9C 00 00 00 13           1550 	.dw	0,19
      000EA0 00 00 0E 8A           1551 	.dw	0,(Ldebug_CIE0_start-4)
      000EA4 00 00 87 6F           1552 	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$122)	;initial loc
      000EA8 00 00 00 01           1553 	.dw	0,Sstm8s_it$EEPROM_EEC_IRQHandler$125-Sstm8s_it$EEPROM_EEC_IRQHandler$122
      000EAC 01                    1554 	.db	1
      000EAD 00 00 87 6F           1555 	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$122)
      000EB1 0E                    1556 	.db	14
      000EB2 09                    1557 	.uleb128	9
                                   1558 
                                   1559 	.area .debug_frame (NOLOAD)
      000EB3 00 00                 1560 	.dw	0
      000EB5 00 0E                 1561 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      000EB7                       1562 Ldebug_CIE1_start:
      000EB7 FF FF                 1563 	.dw	0xffff
      000EB9 FF FF                 1564 	.dw	0xffff
      000EBB 01                    1565 	.db	1
      000EBC 00                    1566 	.db	0
      000EBD 01                    1567 	.uleb128	1
      000EBE 7F                    1568 	.sleb128	-1
      000EBF 09                    1569 	.db	9
      000EC0 0C                    1570 	.db	12
      000EC1 08                    1571 	.uleb128	8
      000EC2 09                    1572 	.uleb128	9
      000EC3 89                    1573 	.db	137
      000EC4 01                    1574 	.uleb128	1
      000EC5                       1575 Ldebug_CIE1_end:
      000EC5 00 00 00 13           1576 	.dw	0,19
      000EC9 00 00 0E B3           1577 	.dw	0,(Ldebug_CIE1_start-4)
      000ECD 00 00 87 6E           1578 	.dw	0,(Sstm8s_it$ADC2_IRQHandler$116)	;initial loc
      000ED1 00 00 00 01           1579 	.dw	0,Sstm8s_it$ADC2_IRQHandler$120-Sstm8s_it$ADC2_IRQHandler$116
      000ED5 01                    1580 	.db	1
      000ED6 00 00 87 6E           1581 	.dw	0,(Sstm8s_it$ADC2_IRQHandler$116)
      000EDA 0E                    1582 	.db	14
      000EDB 09                    1583 	.uleb128	9
                                   1584 
                                   1585 	.area .debug_frame (NOLOAD)
      000EDC 00 00                 1586 	.dw	0
      000EDE 00 0E                 1587 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      000EE0                       1588 Ldebug_CIE2_start:
      000EE0 FF FF                 1589 	.dw	0xffff
      000EE2 FF FF                 1590 	.dw	0xffff
      000EE4 01                    1591 	.db	1
      000EE5 00                    1592 	.db	0
      000EE6 01                    1593 	.uleb128	1
      000EE7 7F                    1594 	.sleb128	-1
      000EE8 09                    1595 	.db	9
      000EE9 0C                    1596 	.db	12
      000EEA 08                    1597 	.uleb128	8
      000EEB 09                    1598 	.uleb128	9
      000EEC 89                    1599 	.db	137
      000EED 01                    1600 	.uleb128	1
      000EEE                       1601 Ldebug_CIE2_end:
      000EEE 00 00 00 13           1602 	.dw	0,19
      000EF2 00 00 0E DC           1603 	.dw	0,(Ldebug_CIE2_start-4)
      000EF6 00 00 87 6D           1604 	.dw	0,(Sstm8s_it$UART3_RX_IRQHandler$111)	;initial loc
      000EFA 00 00 00 01           1605 	.dw	0,Sstm8s_it$UART3_RX_IRQHandler$114-Sstm8s_it$UART3_RX_IRQHandler$111
      000EFE 01                    1606 	.db	1
      000EFF 00 00 87 6D           1607 	.dw	0,(Sstm8s_it$UART3_RX_IRQHandler$111)
      000F03 0E                    1608 	.db	14
      000F04 09                    1609 	.uleb128	9
                                   1610 
                                   1611 	.area .debug_frame (NOLOAD)
      000F05 00 00                 1612 	.dw	0
      000F07 00 0E                 1613 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      000F09                       1614 Ldebug_CIE3_start:
      000F09 FF FF                 1615 	.dw	0xffff
      000F0B FF FF                 1616 	.dw	0xffff
      000F0D 01                    1617 	.db	1
      000F0E 00                    1618 	.db	0
      000F0F 01                    1619 	.uleb128	1
      000F10 7F                    1620 	.sleb128	-1
      000F11 09                    1621 	.db	9
      000F12 0C                    1622 	.db	12
      000F13 08                    1623 	.uleb128	8
      000F14 09                    1624 	.uleb128	9
      000F15 89                    1625 	.db	137
      000F16 01                    1626 	.uleb128	1
      000F17                       1627 Ldebug_CIE3_end:
      000F17 00 00 00 13           1628 	.dw	0,19
      000F1B 00 00 0F 05           1629 	.dw	0,(Ldebug_CIE3_start-4)
      000F1F 00 00 87 6C           1630 	.dw	0,(Sstm8s_it$UART3_TX_IRQHandler$106)	;initial loc
      000F23 00 00 00 01           1631 	.dw	0,Sstm8s_it$UART3_TX_IRQHandler$109-Sstm8s_it$UART3_TX_IRQHandler$106
      000F27 01                    1632 	.db	1
      000F28 00 00 87 6C           1633 	.dw	0,(Sstm8s_it$UART3_TX_IRQHandler$106)
      000F2C 0E                    1634 	.db	14
      000F2D 09                    1635 	.uleb128	9
                                   1636 
                                   1637 	.area .debug_frame (NOLOAD)
      000F2E 00 00                 1638 	.dw	0
      000F30 00 0E                 1639 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      000F32                       1640 Ldebug_CIE4_start:
      000F32 FF FF                 1641 	.dw	0xffff
      000F34 FF FF                 1642 	.dw	0xffff
      000F36 01                    1643 	.db	1
      000F37 00                    1644 	.db	0
      000F38 01                    1645 	.uleb128	1
      000F39 7F                    1646 	.sleb128	-1
      000F3A 09                    1647 	.db	9
      000F3B 0C                    1648 	.db	12
      000F3C 08                    1649 	.uleb128	8
      000F3D 09                    1650 	.uleb128	9
      000F3E 89                    1651 	.db	137
      000F3F 01                    1652 	.uleb128	1
      000F40                       1653 Ldebug_CIE4_end:
      000F40 00 00 00 13           1654 	.dw	0,19
      000F44 00 00 0F 2E           1655 	.dw	0,(Ldebug_CIE4_start-4)
      000F48 00 00 87 6B           1656 	.dw	0,(Sstm8s_it$I2C_IRQHandler$101)	;initial loc
      000F4C 00 00 00 01           1657 	.dw	0,Sstm8s_it$I2C_IRQHandler$104-Sstm8s_it$I2C_IRQHandler$101
      000F50 01                    1658 	.db	1
      000F51 00 00 87 6B           1659 	.dw	0,(Sstm8s_it$I2C_IRQHandler$101)
      000F55 0E                    1660 	.db	14
      000F56 09                    1661 	.uleb128	9
                                   1662 
                                   1663 	.area .debug_frame (NOLOAD)
      000F57 00 00                 1664 	.dw	0
      000F59 00 0E                 1665 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      000F5B                       1666 Ldebug_CIE5_start:
      000F5B FF FF                 1667 	.dw	0xffff
      000F5D FF FF                 1668 	.dw	0xffff
      000F5F 01                    1669 	.db	1
      000F60 00                    1670 	.db	0
      000F61 01                    1671 	.uleb128	1
      000F62 7F                    1672 	.sleb128	-1
      000F63 09                    1673 	.db	9
      000F64 0C                    1674 	.db	12
      000F65 08                    1675 	.uleb128	8
      000F66 09                    1676 	.uleb128	9
      000F67 89                    1677 	.db	137
      000F68 01                    1678 	.uleb128	1
      000F69                       1679 Ldebug_CIE5_end:
      000F69 00 00 00 13           1680 	.dw	0,19
      000F6D 00 00 0F 57           1681 	.dw	0,(Ldebug_CIE5_start-4)
      000F71 00 00 87 6A           1682 	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$96)	;initial loc
      000F75 00 00 00 01           1683 	.dw	0,Sstm8s_it$UART1_RX_IRQHandler$99-Sstm8s_it$UART1_RX_IRQHandler$96
      000F79 01                    1684 	.db	1
      000F7A 00 00 87 6A           1685 	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$96)
      000F7E 0E                    1686 	.db	14
      000F7F 09                    1687 	.uleb128	9
                                   1688 
                                   1689 	.area .debug_frame (NOLOAD)
      000F80 00 00                 1690 	.dw	0
      000F82 00 0E                 1691 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      000F84                       1692 Ldebug_CIE6_start:
      000F84 FF FF                 1693 	.dw	0xffff
      000F86 FF FF                 1694 	.dw	0xffff
      000F88 01                    1695 	.db	1
      000F89 00                    1696 	.db	0
      000F8A 01                    1697 	.uleb128	1
      000F8B 7F                    1698 	.sleb128	-1
      000F8C 09                    1699 	.db	9
      000F8D 0C                    1700 	.db	12
      000F8E 08                    1701 	.uleb128	8
      000F8F 09                    1702 	.uleb128	9
      000F90 89                    1703 	.db	137
      000F91 01                    1704 	.uleb128	1
      000F92                       1705 Ldebug_CIE6_end:
      000F92 00 00 00 13           1706 	.dw	0,19
      000F96 00 00 0F 80           1707 	.dw	0,(Ldebug_CIE6_start-4)
      000F9A 00 00 87 69           1708 	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$91)	;initial loc
      000F9E 00 00 00 01           1709 	.dw	0,Sstm8s_it$UART1_TX_IRQHandler$94-Sstm8s_it$UART1_TX_IRQHandler$91
      000FA2 01                    1710 	.db	1
      000FA3 00 00 87 69           1711 	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$91)
      000FA7 0E                    1712 	.db	14
      000FA8 09                    1713 	.uleb128	9
                                   1714 
                                   1715 	.area .debug_frame (NOLOAD)
      000FA9 00 00                 1716 	.dw	0
      000FAB 00 0E                 1717 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      000FAD                       1718 Ldebug_CIE7_start:
      000FAD FF FF                 1719 	.dw	0xffff
      000FAF FF FF                 1720 	.dw	0xffff
      000FB1 01                    1721 	.db	1
      000FB2 00                    1722 	.db	0
      000FB3 01                    1723 	.uleb128	1
      000FB4 7F                    1724 	.sleb128	-1
      000FB5 09                    1725 	.db	9
      000FB6 0C                    1726 	.db	12
      000FB7 08                    1727 	.uleb128	8
      000FB8 09                    1728 	.uleb128	9
      000FB9 89                    1729 	.db	137
      000FBA 01                    1730 	.uleb128	1
      000FBB                       1731 Ldebug_CIE7_end:
      000FBB 00 00 00 13           1732 	.dw	0,19
      000FBF 00 00 0F A9           1733 	.dw	0,(Ldebug_CIE7_start-4)
      000FC3 00 00 87 68           1734 	.dw	0,(Sstm8s_it$TIM3_CAP_COM_IRQHandler$86)	;initial loc
      000FC7 00 00 00 01           1735 	.dw	0,Sstm8s_it$TIM3_CAP_COM_IRQHandler$89-Sstm8s_it$TIM3_CAP_COM_IRQHandler$86
      000FCB 01                    1736 	.db	1
      000FCC 00 00 87 68           1737 	.dw	0,(Sstm8s_it$TIM3_CAP_COM_IRQHandler$86)
      000FD0 0E                    1738 	.db	14
      000FD1 09                    1739 	.uleb128	9
                                   1740 
                                   1741 	.area .debug_frame (NOLOAD)
      000FD2 00 00                 1742 	.dw	0
      000FD4 00 0E                 1743 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      000FD6                       1744 Ldebug_CIE8_start:
      000FD6 FF FF                 1745 	.dw	0xffff
      000FD8 FF FF                 1746 	.dw	0xffff
      000FDA 01                    1747 	.db	1
      000FDB 00                    1748 	.db	0
      000FDC 01                    1749 	.uleb128	1
      000FDD 7F                    1750 	.sleb128	-1
      000FDE 09                    1751 	.db	9
      000FDF 0C                    1752 	.db	12
      000FE0 08                    1753 	.uleb128	8
      000FE1 09                    1754 	.uleb128	9
      000FE2 89                    1755 	.db	137
      000FE3 01                    1756 	.uleb128	1
      000FE4                       1757 Ldebug_CIE8_end:
      000FE4 00 00 00 13           1758 	.dw	0,19
      000FE8 00 00 0F D2           1759 	.dw	0,(Ldebug_CIE8_start-4)
      000FEC 00 00 87 67           1760 	.dw	0,(Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$81)	;initial loc
      000FF0 00 00 00 01           1761 	.dw	0,Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$84-Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$81
      000FF4 01                    1762 	.db	1
      000FF5 00 00 87 67           1763 	.dw	0,(Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$81)
      000FF9 0E                    1764 	.db	14
      000FFA 09                    1765 	.uleb128	9
                                   1766 
                                   1767 	.area .debug_frame (NOLOAD)
      000FFB 00 00                 1768 	.dw	0
      000FFD 00 0E                 1769 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      000FFF                       1770 Ldebug_CIE9_start:
      000FFF FF FF                 1771 	.dw	0xffff
      001001 FF FF                 1772 	.dw	0xffff
      001003 01                    1773 	.db	1
      001004 00                    1774 	.db	0
      001005 01                    1775 	.uleb128	1
      001006 7F                    1776 	.sleb128	-1
      001007 09                    1777 	.db	9
      001008 0C                    1778 	.db	12
      001009 08                    1779 	.uleb128	8
      00100A 09                    1780 	.uleb128	9
      00100B 89                    1781 	.db	137
      00100C 01                    1782 	.uleb128	1
      00100D                       1783 Ldebug_CIE9_end:
      00100D 00 00 00 13           1784 	.dw	0,19
      001011 00 00 0F FB           1785 	.dw	0,(Ldebug_CIE9_start-4)
      001015 00 00 87 66           1786 	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$76)	;initial loc
      001019 00 00 00 01           1787 	.dw	0,Sstm8s_it$TIM2_CAP_COM_IRQHandler$79-Sstm8s_it$TIM2_CAP_COM_IRQHandler$76
      00101D 01                    1788 	.db	1
      00101E 00 00 87 66           1789 	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$76)
      001022 0E                    1790 	.db	14
      001023 09                    1791 	.uleb128	9
                                   1792 
                                   1793 	.area .debug_frame (NOLOAD)
      001024 00 00                 1794 	.dw	0
      001026 00 0E                 1795 	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
      001028                       1796 Ldebug_CIE10_start:
      001028 FF FF                 1797 	.dw	0xffff
      00102A FF FF                 1798 	.dw	0xffff
      00102C 01                    1799 	.db	1
      00102D 00                    1800 	.db	0
      00102E 01                    1801 	.uleb128	1
      00102F 7F                    1802 	.sleb128	-1
      001030 09                    1803 	.db	9
      001031 0C                    1804 	.db	12
      001032 08                    1805 	.uleb128	8
      001033 09                    1806 	.uleb128	9
      001034 89                    1807 	.db	137
      001035 01                    1808 	.uleb128	1
      001036                       1809 Ldebug_CIE10_end:
      001036 00 00 00 13           1810 	.dw	0,19
      00103A 00 00 10 24           1811 	.dw	0,(Ldebug_CIE10_start-4)
      00103E 00 00 87 65           1812 	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$71)	;initial loc
      001042 00 00 00 01           1813 	.dw	0,Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$74-Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$71
      001046 01                    1814 	.db	1
      001047 00 00 87 65           1815 	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$71)
      00104B 0E                    1816 	.db	14
      00104C 09                    1817 	.uleb128	9
                                   1818 
                                   1819 	.area .debug_frame (NOLOAD)
      00104D 00 00                 1820 	.dw	0
      00104F 00 0E                 1821 	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
      001051                       1822 Ldebug_CIE11_start:
      001051 FF FF                 1823 	.dw	0xffff
      001053 FF FF                 1824 	.dw	0xffff
      001055 01                    1825 	.db	1
      001056 00                    1826 	.db	0
      001057 01                    1827 	.uleb128	1
      001058 7F                    1828 	.sleb128	-1
      001059 09                    1829 	.db	9
      00105A 0C                    1830 	.db	12
      00105B 08                    1831 	.uleb128	8
      00105C 09                    1832 	.uleb128	9
      00105D 89                    1833 	.db	137
      00105E 01                    1834 	.uleb128	1
      00105F                       1835 Ldebug_CIE11_end:
      00105F 00 00 00 13           1836 	.dw	0,19
      001063 00 00 10 4D           1837 	.dw	0,(Ldebug_CIE11_start-4)
      001067 00 00 87 64           1838 	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$66)	;initial loc
      00106B 00 00 00 01           1839 	.dw	0,Sstm8s_it$TIM1_CAP_COM_IRQHandler$69-Sstm8s_it$TIM1_CAP_COM_IRQHandler$66
      00106F 01                    1840 	.db	1
      001070 00 00 87 64           1841 	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$66)
      001074 0E                    1842 	.db	14
      001075 09                    1843 	.uleb128	9
                                   1844 
                                   1845 	.area .debug_frame (NOLOAD)
      001076 00 00                 1846 	.dw	0
      001078 00 0E                 1847 	.dw	Ldebug_CIE12_end-Ldebug_CIE12_start
      00107A                       1848 Ldebug_CIE12_start:
      00107A FF FF                 1849 	.dw	0xffff
      00107C FF FF                 1850 	.dw	0xffff
      00107E 01                    1851 	.db	1
      00107F 00                    1852 	.db	0
      001080 01                    1853 	.uleb128	1
      001081 7F                    1854 	.sleb128	-1
      001082 09                    1855 	.db	9
      001083 0C                    1856 	.db	12
      001084 08                    1857 	.uleb128	8
      001085 09                    1858 	.uleb128	9
      001086 89                    1859 	.db	137
      001087 01                    1860 	.uleb128	1
      001088                       1861 Ldebug_CIE12_end:
      001088 00 00 00 13           1862 	.dw	0,19
      00108C 00 00 10 76           1863 	.dw	0,(Ldebug_CIE12_start-4)
      001090 00 00 87 63           1864 	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61)	;initial loc
      001094 00 00 00 01           1865 	.dw	0,Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$64-Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61
      001098 01                    1866 	.db	1
      001099 00 00 87 63           1867 	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61)
      00109D 0E                    1868 	.db	14
      00109E 09                    1869 	.uleb128	9
                                   1870 
                                   1871 	.area .debug_frame (NOLOAD)
      00109F 00 00                 1872 	.dw	0
      0010A1 00 0E                 1873 	.dw	Ldebug_CIE13_end-Ldebug_CIE13_start
      0010A3                       1874 Ldebug_CIE13_start:
      0010A3 FF FF                 1875 	.dw	0xffff
      0010A5 FF FF                 1876 	.dw	0xffff
      0010A7 01                    1877 	.db	1
      0010A8 00                    1878 	.db	0
      0010A9 01                    1879 	.uleb128	1
      0010AA 7F                    1880 	.sleb128	-1
      0010AB 09                    1881 	.db	9
      0010AC 0C                    1882 	.db	12
      0010AD 08                    1883 	.uleb128	8
      0010AE 09                    1884 	.uleb128	9
      0010AF 89                    1885 	.db	137
      0010B0 01                    1886 	.uleb128	1
      0010B1                       1887 Ldebug_CIE13_end:
      0010B1 00 00 00 13           1888 	.dw	0,19
      0010B5 00 00 10 9F           1889 	.dw	0,(Ldebug_CIE13_start-4)
      0010B9 00 00 87 62           1890 	.dw	0,(Sstm8s_it$SPI_IRQHandler$56)	;initial loc
      0010BD 00 00 00 01           1891 	.dw	0,Sstm8s_it$SPI_IRQHandler$59-Sstm8s_it$SPI_IRQHandler$56
      0010C1 01                    1892 	.db	1
      0010C2 00 00 87 62           1893 	.dw	0,(Sstm8s_it$SPI_IRQHandler$56)
      0010C6 0E                    1894 	.db	14
      0010C7 09                    1895 	.uleb128	9
                                   1896 
                                   1897 	.area .debug_frame (NOLOAD)
      0010C8 00 00                 1898 	.dw	0
      0010CA 00 0E                 1899 	.dw	Ldebug_CIE14_end-Ldebug_CIE14_start
      0010CC                       1900 Ldebug_CIE14_start:
      0010CC FF FF                 1901 	.dw	0xffff
      0010CE FF FF                 1902 	.dw	0xffff
      0010D0 01                    1903 	.db	1
      0010D1 00                    1904 	.db	0
      0010D2 01                    1905 	.uleb128	1
      0010D3 7F                    1906 	.sleb128	-1
      0010D4 09                    1907 	.db	9
      0010D5 0C                    1908 	.db	12
      0010D6 08                    1909 	.uleb128	8
      0010D7 09                    1910 	.uleb128	9
      0010D8 89                    1911 	.db	137
      0010D9 01                    1912 	.uleb128	1
      0010DA                       1913 Ldebug_CIE14_end:
      0010DA 00 00 00 13           1914 	.dw	0,19
      0010DE 00 00 10 C8           1915 	.dw	0,(Ldebug_CIE14_start-4)
      0010E2 00 00 87 61           1916 	.dw	0,(Sstm8s_it$CAN_TX_IRQHandler$51)	;initial loc
      0010E6 00 00 00 01           1917 	.dw	0,Sstm8s_it$CAN_TX_IRQHandler$54-Sstm8s_it$CAN_TX_IRQHandler$51
      0010EA 01                    1918 	.db	1
      0010EB 00 00 87 61           1919 	.dw	0,(Sstm8s_it$CAN_TX_IRQHandler$51)
      0010EF 0E                    1920 	.db	14
      0010F0 09                    1921 	.uleb128	9
                                   1922 
                                   1923 	.area .debug_frame (NOLOAD)
      0010F1 00 00                 1924 	.dw	0
      0010F3 00 0E                 1925 	.dw	Ldebug_CIE15_end-Ldebug_CIE15_start
      0010F5                       1926 Ldebug_CIE15_start:
      0010F5 FF FF                 1927 	.dw	0xffff
      0010F7 FF FF                 1928 	.dw	0xffff
      0010F9 01                    1929 	.db	1
      0010FA 00                    1930 	.db	0
      0010FB 01                    1931 	.uleb128	1
      0010FC 7F                    1932 	.sleb128	-1
      0010FD 09                    1933 	.db	9
      0010FE 0C                    1934 	.db	12
      0010FF 08                    1935 	.uleb128	8
      001100 09                    1936 	.uleb128	9
      001101 89                    1937 	.db	137
      001102 01                    1938 	.uleb128	1
      001103                       1939 Ldebug_CIE15_end:
      001103 00 00 00 13           1940 	.dw	0,19
      001107 00 00 10 F1           1941 	.dw	0,(Ldebug_CIE15_start-4)
      00110B 00 00 87 60           1942 	.dw	0,(Sstm8s_it$CAN_RX_IRQHandler$46)	;initial loc
      00110F 00 00 00 01           1943 	.dw	0,Sstm8s_it$CAN_RX_IRQHandler$49-Sstm8s_it$CAN_RX_IRQHandler$46
      001113 01                    1944 	.db	1
      001114 00 00 87 60           1945 	.dw	0,(Sstm8s_it$CAN_RX_IRQHandler$46)
      001118 0E                    1946 	.db	14
      001119 09                    1947 	.uleb128	9
                                   1948 
                                   1949 	.area .debug_frame (NOLOAD)
      00111A 00 00                 1950 	.dw	0
      00111C 00 0E                 1951 	.dw	Ldebug_CIE16_end-Ldebug_CIE16_start
      00111E                       1952 Ldebug_CIE16_start:
      00111E FF FF                 1953 	.dw	0xffff
      001120 FF FF                 1954 	.dw	0xffff
      001122 01                    1955 	.db	1
      001123 00                    1956 	.db	0
      001124 01                    1957 	.uleb128	1
      001125 7F                    1958 	.sleb128	-1
      001126 09                    1959 	.db	9
      001127 0C                    1960 	.db	12
      001128 08                    1961 	.uleb128	8
      001129 09                    1962 	.uleb128	9
      00112A 89                    1963 	.db	137
      00112B 01                    1964 	.uleb128	1
      00112C                       1965 Ldebug_CIE16_end:
      00112C 00 00 00 13           1966 	.dw	0,19
      001130 00 00 11 1A           1967 	.dw	0,(Ldebug_CIE16_start-4)
      001134 00 00 87 5F           1968 	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$41)	;initial loc
      001138 00 00 00 01           1969 	.dw	0,Sstm8s_it$EXTI_PORTE_IRQHandler$44-Sstm8s_it$EXTI_PORTE_IRQHandler$41
      00113C 01                    1970 	.db	1
      00113D 00 00 87 5F           1971 	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$41)
      001141 0E                    1972 	.db	14
      001142 09                    1973 	.uleb128	9
                                   1974 
                                   1975 	.area .debug_frame (NOLOAD)
      001143 00 00                 1976 	.dw	0
      001145 00 0E                 1977 	.dw	Ldebug_CIE17_end-Ldebug_CIE17_start
      001147                       1978 Ldebug_CIE17_start:
      001147 FF FF                 1979 	.dw	0xffff
      001149 FF FF                 1980 	.dw	0xffff
      00114B 01                    1981 	.db	1
      00114C 00                    1982 	.db	0
      00114D 01                    1983 	.uleb128	1
      00114E 7F                    1984 	.sleb128	-1
      00114F 09                    1985 	.db	9
      001150 0C                    1986 	.db	12
      001151 08                    1987 	.uleb128	8
      001152 09                    1988 	.uleb128	9
      001153 89                    1989 	.db	137
      001154 01                    1990 	.uleb128	1
      001155                       1991 Ldebug_CIE17_end:
      001155 00 00 00 13           1992 	.dw	0,19
      001159 00 00 11 43           1993 	.dw	0,(Ldebug_CIE17_start-4)
      00115D 00 00 87 5E           1994 	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$36)	;initial loc
      001161 00 00 00 01           1995 	.dw	0,Sstm8s_it$EXTI_PORTD_IRQHandler$39-Sstm8s_it$EXTI_PORTD_IRQHandler$36
      001165 01                    1996 	.db	1
      001166 00 00 87 5E           1997 	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$36)
      00116A 0E                    1998 	.db	14
      00116B 09                    1999 	.uleb128	9
                                   2000 
                                   2001 	.area .debug_frame (NOLOAD)
      00116C 00 00                 2002 	.dw	0
      00116E 00 0E                 2003 	.dw	Ldebug_CIE18_end-Ldebug_CIE18_start
      001170                       2004 Ldebug_CIE18_start:
      001170 FF FF                 2005 	.dw	0xffff
      001172 FF FF                 2006 	.dw	0xffff
      001174 01                    2007 	.db	1
      001175 00                    2008 	.db	0
      001176 01                    2009 	.uleb128	1
      001177 7F                    2010 	.sleb128	-1
      001178 09                    2011 	.db	9
      001179 0C                    2012 	.db	12
      00117A 08                    2013 	.uleb128	8
      00117B 09                    2014 	.uleb128	9
      00117C 89                    2015 	.db	137
      00117D 01                    2016 	.uleb128	1
      00117E                       2017 Ldebug_CIE18_end:
      00117E 00 00 00 13           2018 	.dw	0,19
      001182 00 00 11 6C           2019 	.dw	0,(Ldebug_CIE18_start-4)
      001186 00 00 87 5D           2020 	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$31)	;initial loc
      00118A 00 00 00 01           2021 	.dw	0,Sstm8s_it$EXTI_PORTC_IRQHandler$34-Sstm8s_it$EXTI_PORTC_IRQHandler$31
      00118E 01                    2022 	.db	1
      00118F 00 00 87 5D           2023 	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$31)
      001193 0E                    2024 	.db	14
      001194 09                    2025 	.uleb128	9
                                   2026 
                                   2027 	.area .debug_frame (NOLOAD)
      001195 00 00                 2028 	.dw	0
      001197 00 0E                 2029 	.dw	Ldebug_CIE19_end-Ldebug_CIE19_start
      001199                       2030 Ldebug_CIE19_start:
      001199 FF FF                 2031 	.dw	0xffff
      00119B FF FF                 2032 	.dw	0xffff
      00119D 01                    2033 	.db	1
      00119E 00                    2034 	.db	0
      00119F 01                    2035 	.uleb128	1
      0011A0 7F                    2036 	.sleb128	-1
      0011A1 09                    2037 	.db	9
      0011A2 0C                    2038 	.db	12
      0011A3 08                    2039 	.uleb128	8
      0011A4 09                    2040 	.uleb128	9
      0011A5 89                    2041 	.db	137
      0011A6 01                    2042 	.uleb128	1
      0011A7                       2043 Ldebug_CIE19_end:
      0011A7 00 00 00 13           2044 	.dw	0,19
      0011AB 00 00 11 95           2045 	.dw	0,(Ldebug_CIE19_start-4)
      0011AF 00 00 87 5C           2046 	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$26)	;initial loc
      0011B3 00 00 00 01           2047 	.dw	0,Sstm8s_it$EXTI_PORTB_IRQHandler$29-Sstm8s_it$EXTI_PORTB_IRQHandler$26
      0011B7 01                    2048 	.db	1
      0011B8 00 00 87 5C           2049 	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$26)
      0011BC 0E                    2050 	.db	14
      0011BD 09                    2051 	.uleb128	9
                                   2052 
                                   2053 	.area .debug_frame (NOLOAD)
      0011BE 00 00                 2054 	.dw	0
      0011C0 00 0E                 2055 	.dw	Ldebug_CIE20_end-Ldebug_CIE20_start
      0011C2                       2056 Ldebug_CIE20_start:
      0011C2 FF FF                 2057 	.dw	0xffff
      0011C4 FF FF                 2058 	.dw	0xffff
      0011C6 01                    2059 	.db	1
      0011C7 00                    2060 	.db	0
      0011C8 01                    2061 	.uleb128	1
      0011C9 7F                    2062 	.sleb128	-1
      0011CA 09                    2063 	.db	9
      0011CB 0C                    2064 	.db	12
      0011CC 08                    2065 	.uleb128	8
      0011CD 09                    2066 	.uleb128	9
      0011CE 89                    2067 	.db	137
      0011CF 01                    2068 	.uleb128	1
      0011D0                       2069 Ldebug_CIE20_end:
      0011D0 00 00 00 13           2070 	.dw	0,19
      0011D4 00 00 11 BE           2071 	.dw	0,(Ldebug_CIE20_start-4)
      0011D8 00 00 87 5B           2072 	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$21)	;initial loc
      0011DC 00 00 00 01           2073 	.dw	0,Sstm8s_it$EXTI_PORTA_IRQHandler$24-Sstm8s_it$EXTI_PORTA_IRQHandler$21
      0011E0 01                    2074 	.db	1
      0011E1 00 00 87 5B           2075 	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$21)
      0011E5 0E                    2076 	.db	14
      0011E6 09                    2077 	.uleb128	9
                                   2078 
                                   2079 	.area .debug_frame (NOLOAD)
      0011E7 00 00                 2080 	.dw	0
      0011E9 00 0E                 2081 	.dw	Ldebug_CIE21_end-Ldebug_CIE21_start
      0011EB                       2082 Ldebug_CIE21_start:
      0011EB FF FF                 2083 	.dw	0xffff
      0011ED FF FF                 2084 	.dw	0xffff
      0011EF 01                    2085 	.db	1
      0011F0 00                    2086 	.db	0
      0011F1 01                    2087 	.uleb128	1
      0011F2 7F                    2088 	.sleb128	-1
      0011F3 09                    2089 	.db	9
      0011F4 0C                    2090 	.db	12
      0011F5 08                    2091 	.uleb128	8
      0011F6 09                    2092 	.uleb128	9
      0011F7 89                    2093 	.db	137
      0011F8 01                    2094 	.uleb128	1
      0011F9                       2095 Ldebug_CIE21_end:
      0011F9 00 00 00 13           2096 	.dw	0,19
      0011FD 00 00 11 E7           2097 	.dw	0,(Ldebug_CIE21_start-4)
      001201 00 00 87 5A           2098 	.dw	0,(Sstm8s_it$CLK_IRQHandler$16)	;initial loc
      001205 00 00 00 01           2099 	.dw	0,Sstm8s_it$CLK_IRQHandler$19-Sstm8s_it$CLK_IRQHandler$16
      001209 01                    2100 	.db	1
      00120A 00 00 87 5A           2101 	.dw	0,(Sstm8s_it$CLK_IRQHandler$16)
      00120E 0E                    2102 	.db	14
      00120F 09                    2103 	.uleb128	9
                                   2104 
                                   2105 	.area .debug_frame (NOLOAD)
      001210 00 00                 2106 	.dw	0
      001212 00 0E                 2107 	.dw	Ldebug_CIE22_end-Ldebug_CIE22_start
      001214                       2108 Ldebug_CIE22_start:
      001214 FF FF                 2109 	.dw	0xffff
      001216 FF FF                 2110 	.dw	0xffff
      001218 01                    2111 	.db	1
      001219 00                    2112 	.db	0
      00121A 01                    2113 	.uleb128	1
      00121B 7F                    2114 	.sleb128	-1
      00121C 09                    2115 	.db	9
      00121D 0C                    2116 	.db	12
      00121E 08                    2117 	.uleb128	8
      00121F 09                    2118 	.uleb128	9
      001220 89                    2119 	.db	137
      001221 01                    2120 	.uleb128	1
      001222                       2121 Ldebug_CIE22_end:
      001222 00 00 00 13           2122 	.dw	0,19
      001226 00 00 12 10           2123 	.dw	0,(Ldebug_CIE22_start-4)
      00122A 00 00 87 59           2124 	.dw	0,(Sstm8s_it$AWU_IRQHandler$11)	;initial loc
      00122E 00 00 00 01           2125 	.dw	0,Sstm8s_it$AWU_IRQHandler$14-Sstm8s_it$AWU_IRQHandler$11
      001232 01                    2126 	.db	1
      001233 00 00 87 59           2127 	.dw	0,(Sstm8s_it$AWU_IRQHandler$11)
      001237 0E                    2128 	.db	14
      001238 09                    2129 	.uleb128	9
                                   2130 
                                   2131 	.area .debug_frame (NOLOAD)
      001239 00 00                 2132 	.dw	0
      00123B 00 0E                 2133 	.dw	Ldebug_CIE23_end-Ldebug_CIE23_start
      00123D                       2134 Ldebug_CIE23_start:
      00123D FF FF                 2135 	.dw	0xffff
      00123F FF FF                 2136 	.dw	0xffff
      001241 01                    2137 	.db	1
      001242 00                    2138 	.db	0
      001243 01                    2139 	.uleb128	1
      001244 7F                    2140 	.sleb128	-1
      001245 09                    2141 	.db	9
      001246 0C                    2142 	.db	12
      001247 08                    2143 	.uleb128	8
      001248 09                    2144 	.uleb128	9
      001249 89                    2145 	.db	137
      00124A 01                    2146 	.uleb128	1
      00124B                       2147 Ldebug_CIE23_end:
      00124B 00 00 00 13           2148 	.dw	0,19
      00124F 00 00 12 39           2149 	.dw	0,(Ldebug_CIE23_start-4)
      001253 00 00 87 58           2150 	.dw	0,(Sstm8s_it$TLI_IRQHandler$6)	;initial loc
      001257 00 00 00 01           2151 	.dw	0,Sstm8s_it$TLI_IRQHandler$9-Sstm8s_it$TLI_IRQHandler$6
      00125B 01                    2152 	.db	1
      00125C 00 00 87 58           2153 	.dw	0,(Sstm8s_it$TLI_IRQHandler$6)
      001260 0E                    2154 	.db	14
      001261 09                    2155 	.uleb128	9
                                   2156 
                                   2157 	.area .debug_frame (NOLOAD)
      001262 00 00                 2158 	.dw	0
      001264 00 0E                 2159 	.dw	Ldebug_CIE24_end-Ldebug_CIE24_start
      001266                       2160 Ldebug_CIE24_start:
      001266 FF FF                 2161 	.dw	0xffff
      001268 FF FF                 2162 	.dw	0xffff
      00126A 01                    2163 	.db	1
      00126B 00                    2164 	.db	0
      00126C 01                    2165 	.uleb128	1
      00126D 7F                    2166 	.sleb128	-1
      00126E 09                    2167 	.db	9
      00126F 0C                    2168 	.db	12
      001270 08                    2169 	.uleb128	8
      001271 09                    2170 	.uleb128	9
      001272 89                    2171 	.db	137
      001273 01                    2172 	.uleb128	1
      001274                       2173 Ldebug_CIE24_end:
      001274 00 00 00 13           2174 	.dw	0,19
      001278 00 00 12 62           2175 	.dw	0,(Ldebug_CIE24_start-4)
      00127C 00 00 87 57           2176 	.dw	0,(Sstm8s_it$TRAP_IRQHandler$1)	;initial loc
      001280 00 00 00 01           2177 	.dw	0,Sstm8s_it$TRAP_IRQHandler$4-Sstm8s_it$TRAP_IRQHandler$1
      001284 01                    2178 	.db	1
      001285 00 00 87 57           2179 	.dw	0,(Sstm8s_it$TRAP_IRQHandler$1)
      001289 0E                    2180 	.db	14
      00128A 09                    2181 	.uleb128	9

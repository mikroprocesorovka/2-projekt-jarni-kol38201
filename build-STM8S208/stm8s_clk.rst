                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_clk
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CLKPrescTable
                                     12 	.globl _HSIDivFactor
                                     13 	.globl _CLK_DeInit
                                     14 	.globl _CLK_FastHaltWakeUpCmd
                                     15 	.globl _CLK_HSECmd
                                     16 	.globl _CLK_HSICmd
                                     17 	.globl _CLK_LSICmd
                                     18 	.globl _CLK_CCOCmd
                                     19 	.globl _CLK_ClockSwitchCmd
                                     20 	.globl _CLK_SlowActiveHaltWakeUpCmd
                                     21 	.globl _CLK_PeripheralClockConfig
                                     22 	.globl _CLK_ClockSwitchConfig
                                     23 	.globl _CLK_HSIPrescalerConfig
                                     24 	.globl _CLK_CCOConfig
                                     25 	.globl _CLK_ITConfig
                                     26 	.globl _CLK_SYSCLKConfig
                                     27 	.globl _CLK_SWIMConfig
                                     28 	.globl _CLK_ClockSecuritySystemEnable
                                     29 	.globl _CLK_GetSYSCLKSource
                                     30 	.globl _CLK_GetClockFreq
                                     31 	.globl _CLK_AdjustHSICalibrationValue
                                     32 	.globl _CLK_SYSCLKEmergencyClear
                                     33 	.globl _CLK_GetFlagStatus
                                     34 	.globl _CLK_GetITStatus
                                     35 	.globl _CLK_ClearITPendingBit
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
                           000000    73 	Sstm8s_clk$CLK_DeInit$0 ==.
                                     74 ;	../SPL/src/stm8s_clk.c: 72: void CLK_DeInit(void)
                                     75 ; genLabel
                                     76 ;	-----------------------------------------
                                     77 ;	 function CLK_DeInit
                                     78 ;	-----------------------------------------
                                     79 ;	Register assignment is optimal.
                                     80 ;	Stack space usage: 0 bytes.
      009051                         81 _CLK_DeInit:
                           000000    82 	Sstm8s_clk$CLK_DeInit$1 ==.
                           000000    83 	Sstm8s_clk$CLK_DeInit$2 ==.
                                     84 ;	../SPL/src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
                                     85 ; genPointerSet
      009051 35 01 50 C0      [ 1]   86 	mov	0x50c0+0, #0x01
                           000004    87 	Sstm8s_clk$CLK_DeInit$3 ==.
                                     88 ;	../SPL/src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
                                     89 ; genPointerSet
      009055 35 00 50 C1      [ 1]   90 	mov	0x50c1+0, #0x00
                           000008    91 	Sstm8s_clk$CLK_DeInit$4 ==.
                                     92 ;	../SPL/src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
                                     93 ; genPointerSet
      009059 35 E1 50 C4      [ 1]   94 	mov	0x50c4+0, #0xe1
                           00000C    95 	Sstm8s_clk$CLK_DeInit$5 ==.
                                     96 ;	../SPL/src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
                                     97 ; genPointerSet
      00905D 35 00 50 C5      [ 1]   98 	mov	0x50c5+0, #0x00
                           000010    99 	Sstm8s_clk$CLK_DeInit$6 ==.
                                    100 ;	../SPL/src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
                                    101 ; genPointerSet
      009061 35 18 50 C6      [ 1]  102 	mov	0x50c6+0, #0x18
                           000014   103 	Sstm8s_clk$CLK_DeInit$7 ==.
                                    104 ;	../SPL/src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
                                    105 ; genPointerSet
      009065 35 FF 50 C7      [ 1]  106 	mov	0x50c7+0, #0xff
                           000018   107 	Sstm8s_clk$CLK_DeInit$8 ==.
                                    108 ;	../SPL/src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
                                    109 ; genPointerSet
      009069 35 FF 50 CA      [ 1]  110 	mov	0x50ca+0, #0xff
                           00001C   111 	Sstm8s_clk$CLK_DeInit$9 ==.
                                    112 ;	../SPL/src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
                                    113 ; genPointerSet
      00906D 35 00 50 C8      [ 1]  114 	mov	0x50c8+0, #0x00
                           000020   115 	Sstm8s_clk$CLK_DeInit$10 ==.
                                    116 ;	../SPL/src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
                                    117 ; genPointerSet
      009071 35 00 50 C9      [ 1]  118 	mov	0x50c9+0, #0x00
                           000024   119 	Sstm8s_clk$CLK_DeInit$11 ==.
                                    120 ;	../SPL/src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
                                    121 ; genLabel
      009075                        122 00101$:
                                    123 ; genPointerGet
      009075 C6 50 C9         [ 1]  124 	ld	a, 0x50c9
                                    125 ; genAnd
      009078 44               [ 1]  126 	srl	a
      009079 24 03            [ 1]  127 	jrnc	00116$
      00907B CC 90 75         [ 2]  128 	jp	00101$
      00907E                        129 00116$:
                                    130 ; skipping generated iCode
                           00002D   131 	Sstm8s_clk$CLK_DeInit$12 ==.
                                    132 ;	../SPL/src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
                                    133 ; genPointerSet
      00907E 35 00 50 C9      [ 1]  134 	mov	0x50c9+0, #0x00
                           000031   135 	Sstm8s_clk$CLK_DeInit$13 ==.
                                    136 ;	../SPL/src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
                                    137 ; genPointerSet
      009082 35 00 50 CC      [ 1]  138 	mov	0x50cc+0, #0x00
                           000035   139 	Sstm8s_clk$CLK_DeInit$14 ==.
                                    140 ;	../SPL/src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
                                    141 ; genPointerSet
      009086 35 00 50 CD      [ 1]  142 	mov	0x50cd+0, #0x00
                                    143 ; genLabel
      00908A                        144 00104$:
                           000039   145 	Sstm8s_clk$CLK_DeInit$15 ==.
                                    146 ;	../SPL/src/stm8s_clk.c: 88: }
                                    147 ; genEndFunction
                           000039   148 	Sstm8s_clk$CLK_DeInit$16 ==.
                           000039   149 	XG$CLK_DeInit$0$0 ==.
      00908A 81               [ 4]  150 	ret
                           00003A   151 	Sstm8s_clk$CLK_DeInit$17 ==.
                           00003A   152 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$18 ==.
                                    153 ;	../SPL/src/stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
                                    154 ; genLabel
                                    155 ;	-----------------------------------------
                                    156 ;	 function CLK_FastHaltWakeUpCmd
                                    157 ;	-----------------------------------------
                                    158 ;	Register assignment is optimal.
                                    159 ;	Stack space usage: 0 bytes.
      00908B                        160 _CLK_FastHaltWakeUpCmd:
                           00003A   161 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$19 ==.
                           00003A   162 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$20 ==.
                                    163 ;	../SPL/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
                                    164 ; genPointerGet
      00908B C6 50 C0         [ 1]  165 	ld	a, 0x50c0
                           00003D   166 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$21 ==.
                                    167 ;	../SPL/src/stm8s_clk.c: 104: if (NewState != DISABLE)
                                    168 ; genIfx
      00908E 0D 03            [ 1]  169 	tnz	(0x03, sp)
      009090 26 03            [ 1]  170 	jrne	00111$
      009092 CC 90 9D         [ 2]  171 	jp	00102$
      009095                        172 00111$:
                           000044   173 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$22 ==.
                           000044   174 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$23 ==.
                                    175 ;	../SPL/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
                                    176 ; genOr
      009095 AA 04            [ 1]  177 	or	a, #0x04
                                    178 ; genPointerSet
      009097 C7 50 C0         [ 1]  179 	ld	0x50c0, a
                           000049   180 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$24 ==.
                                    181 ; genGoto
      00909A CC 90 A2         [ 2]  182 	jp	00104$
                                    183 ; genLabel
      00909D                        184 00102$:
                           00004C   185 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$25 ==.
                           00004C   186 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$26 ==.
                                    187 ;	../SPL/src/stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
                                    188 ; genAnd
      00909D A4 FB            [ 1]  189 	and	a, #0xfb
                                    190 ; genPointerSet
      00909F C7 50 C0         [ 1]  191 	ld	0x50c0, a
                           000051   192 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$27 ==.
                                    193 ; genLabel
      0090A2                        194 00104$:
                           000051   195 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$28 ==.
                                    196 ;	../SPL/src/stm8s_clk.c: 114: }
                                    197 ; genEndFunction
                           000051   198 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$29 ==.
                           000051   199 	XG$CLK_FastHaltWakeUpCmd$0$0 ==.
      0090A2 81               [ 4]  200 	ret
                           000052   201 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$30 ==.
                           000052   202 	Sstm8s_clk$CLK_HSECmd$31 ==.
                                    203 ;	../SPL/src/stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                    204 ; genLabel
                                    205 ;	-----------------------------------------
                                    206 ;	 function CLK_HSECmd
                                    207 ;	-----------------------------------------
                                    208 ;	Register assignment is optimal.
                                    209 ;	Stack space usage: 0 bytes.
      0090A3                        210 _CLK_HSECmd:
                           000052   211 	Sstm8s_clk$CLK_HSECmd$32 ==.
                           000052   212 	Sstm8s_clk$CLK_HSECmd$33 ==.
                                    213 ;	../SPL/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
                                    214 ; genPointerGet
      0090A3 C6 50 C1         [ 1]  215 	ld	a, 0x50c1
                           000055   216 	Sstm8s_clk$CLK_HSECmd$34 ==.
                                    217 ;	../SPL/src/stm8s_clk.c: 126: if (NewState != DISABLE)
                                    218 ; genIfx
      0090A6 0D 03            [ 1]  219 	tnz	(0x03, sp)
      0090A8 26 03            [ 1]  220 	jrne	00111$
      0090AA CC 90 B5         [ 2]  221 	jp	00102$
      0090AD                        222 00111$:
                           00005C   223 	Sstm8s_clk$CLK_HSECmd$35 ==.
                           00005C   224 	Sstm8s_clk$CLK_HSECmd$36 ==.
                                    225 ;	../SPL/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
                                    226 ; genOr
      0090AD AA 01            [ 1]  227 	or	a, #0x01
                                    228 ; genPointerSet
      0090AF C7 50 C1         [ 1]  229 	ld	0x50c1, a
                           000061   230 	Sstm8s_clk$CLK_HSECmd$37 ==.
                                    231 ; genGoto
      0090B2 CC 90 BA         [ 2]  232 	jp	00104$
                                    233 ; genLabel
      0090B5                        234 00102$:
                           000064   235 	Sstm8s_clk$CLK_HSECmd$38 ==.
                           000064   236 	Sstm8s_clk$CLK_HSECmd$39 ==.
                                    237 ;	../SPL/src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
                                    238 ; genAnd
      0090B5 A4 FE            [ 1]  239 	and	a, #0xfe
                                    240 ; genPointerSet
      0090B7 C7 50 C1         [ 1]  241 	ld	0x50c1, a
                           000069   242 	Sstm8s_clk$CLK_HSECmd$40 ==.
                                    243 ; genLabel
      0090BA                        244 00104$:
                           000069   245 	Sstm8s_clk$CLK_HSECmd$41 ==.
                                    246 ;	../SPL/src/stm8s_clk.c: 136: }
                                    247 ; genEndFunction
                           000069   248 	Sstm8s_clk$CLK_HSECmd$42 ==.
                           000069   249 	XG$CLK_HSECmd$0$0 ==.
      0090BA 81               [ 4]  250 	ret
                           00006A   251 	Sstm8s_clk$CLK_HSECmd$43 ==.
                           00006A   252 	Sstm8s_clk$CLK_HSICmd$44 ==.
                                    253 ;	../SPL/src/stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
                                    254 ; genLabel
                                    255 ;	-----------------------------------------
                                    256 ;	 function CLK_HSICmd
                                    257 ;	-----------------------------------------
                                    258 ;	Register assignment is optimal.
                                    259 ;	Stack space usage: 0 bytes.
      0090BB                        260 _CLK_HSICmd:
                           00006A   261 	Sstm8s_clk$CLK_HSICmd$45 ==.
                           00006A   262 	Sstm8s_clk$CLK_HSICmd$46 ==.
                                    263 ;	../SPL/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
                                    264 ; genPointerGet
      0090BB C6 50 C0         [ 1]  265 	ld	a, 0x50c0
                           00006D   266 	Sstm8s_clk$CLK_HSICmd$47 ==.
                                    267 ;	../SPL/src/stm8s_clk.c: 148: if (NewState != DISABLE)
                                    268 ; genIfx
      0090BE 0D 03            [ 1]  269 	tnz	(0x03, sp)
      0090C0 26 03            [ 1]  270 	jrne	00111$
      0090C2 CC 90 CD         [ 2]  271 	jp	00102$
      0090C5                        272 00111$:
                           000074   273 	Sstm8s_clk$CLK_HSICmd$48 ==.
                           000074   274 	Sstm8s_clk$CLK_HSICmd$49 ==.
                                    275 ;	../SPL/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
                                    276 ; genOr
      0090C5 AA 01            [ 1]  277 	or	a, #0x01
                                    278 ; genPointerSet
      0090C7 C7 50 C0         [ 1]  279 	ld	0x50c0, a
                           000079   280 	Sstm8s_clk$CLK_HSICmd$50 ==.
                                    281 ; genGoto
      0090CA CC 90 D2         [ 2]  282 	jp	00104$
                                    283 ; genLabel
      0090CD                        284 00102$:
                           00007C   285 	Sstm8s_clk$CLK_HSICmd$51 ==.
                           00007C   286 	Sstm8s_clk$CLK_HSICmd$52 ==.
                                    287 ;	../SPL/src/stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
                                    288 ; genAnd
      0090CD A4 FE            [ 1]  289 	and	a, #0xfe
                                    290 ; genPointerSet
      0090CF C7 50 C0         [ 1]  291 	ld	0x50c0, a
                           000081   292 	Sstm8s_clk$CLK_HSICmd$53 ==.
                                    293 ; genLabel
      0090D2                        294 00104$:
                           000081   295 	Sstm8s_clk$CLK_HSICmd$54 ==.
                                    296 ;	../SPL/src/stm8s_clk.c: 158: }
                                    297 ; genEndFunction
                           000081   298 	Sstm8s_clk$CLK_HSICmd$55 ==.
                           000081   299 	XG$CLK_HSICmd$0$0 ==.
      0090D2 81               [ 4]  300 	ret
                           000082   301 	Sstm8s_clk$CLK_HSICmd$56 ==.
                           000082   302 	Sstm8s_clk$CLK_LSICmd$57 ==.
                                    303 ;	../SPL/src/stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
                                    304 ; genLabel
                                    305 ;	-----------------------------------------
                                    306 ;	 function CLK_LSICmd
                                    307 ;	-----------------------------------------
                                    308 ;	Register assignment is optimal.
                                    309 ;	Stack space usage: 0 bytes.
      0090D3                        310 _CLK_LSICmd:
                           000082   311 	Sstm8s_clk$CLK_LSICmd$58 ==.
                           000082   312 	Sstm8s_clk$CLK_LSICmd$59 ==.
                                    313 ;	../SPL/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
                                    314 ; genPointerGet
      0090D3 C6 50 C0         [ 1]  315 	ld	a, 0x50c0
                           000085   316 	Sstm8s_clk$CLK_LSICmd$60 ==.
                                    317 ;	../SPL/src/stm8s_clk.c: 171: if (NewState != DISABLE)
                                    318 ; genIfx
      0090D6 0D 03            [ 1]  319 	tnz	(0x03, sp)
      0090D8 26 03            [ 1]  320 	jrne	00111$
      0090DA CC 90 E5         [ 2]  321 	jp	00102$
      0090DD                        322 00111$:
                           00008C   323 	Sstm8s_clk$CLK_LSICmd$61 ==.
                           00008C   324 	Sstm8s_clk$CLK_LSICmd$62 ==.
                                    325 ;	../SPL/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
                                    326 ; genOr
      0090DD AA 08            [ 1]  327 	or	a, #0x08
                                    328 ; genPointerSet
      0090DF C7 50 C0         [ 1]  329 	ld	0x50c0, a
                           000091   330 	Sstm8s_clk$CLK_LSICmd$63 ==.
                                    331 ; genGoto
      0090E2 CC 90 EA         [ 2]  332 	jp	00104$
                                    333 ; genLabel
      0090E5                        334 00102$:
                           000094   335 	Sstm8s_clk$CLK_LSICmd$64 ==.
                           000094   336 	Sstm8s_clk$CLK_LSICmd$65 ==.
                                    337 ;	../SPL/src/stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
                                    338 ; genAnd
      0090E5 A4 F7            [ 1]  339 	and	a, #0xf7
                                    340 ; genPointerSet
      0090E7 C7 50 C0         [ 1]  341 	ld	0x50c0, a
                           000099   342 	Sstm8s_clk$CLK_LSICmd$66 ==.
                                    343 ; genLabel
      0090EA                        344 00104$:
                           000099   345 	Sstm8s_clk$CLK_LSICmd$67 ==.
                                    346 ;	../SPL/src/stm8s_clk.c: 181: }
                                    347 ; genEndFunction
                           000099   348 	Sstm8s_clk$CLK_LSICmd$68 ==.
                           000099   349 	XG$CLK_LSICmd$0$0 ==.
      0090EA 81               [ 4]  350 	ret
                           00009A   351 	Sstm8s_clk$CLK_LSICmd$69 ==.
                           00009A   352 	Sstm8s_clk$CLK_CCOCmd$70 ==.
                                    353 ;	../SPL/src/stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
                                    354 ; genLabel
                                    355 ;	-----------------------------------------
                                    356 ;	 function CLK_CCOCmd
                                    357 ;	-----------------------------------------
                                    358 ;	Register assignment is optimal.
                                    359 ;	Stack space usage: 0 bytes.
      0090EB                        360 _CLK_CCOCmd:
                           00009A   361 	Sstm8s_clk$CLK_CCOCmd$71 ==.
                           00009A   362 	Sstm8s_clk$CLK_CCOCmd$72 ==.
                                    363 ;	../SPL/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
                                    364 ; genPointerGet
      0090EB C6 50 C9         [ 1]  365 	ld	a, 0x50c9
                           00009D   366 	Sstm8s_clk$CLK_CCOCmd$73 ==.
                                    367 ;	../SPL/src/stm8s_clk.c: 194: if (NewState != DISABLE)
                                    368 ; genIfx
      0090EE 0D 03            [ 1]  369 	tnz	(0x03, sp)
      0090F0 26 03            [ 1]  370 	jrne	00111$
      0090F2 CC 90 FD         [ 2]  371 	jp	00102$
      0090F5                        372 00111$:
                           0000A4   373 	Sstm8s_clk$CLK_CCOCmd$74 ==.
                           0000A4   374 	Sstm8s_clk$CLK_CCOCmd$75 ==.
                                    375 ;	../SPL/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
                                    376 ; genOr
      0090F5 AA 01            [ 1]  377 	or	a, #0x01
                                    378 ; genPointerSet
      0090F7 C7 50 C9         [ 1]  379 	ld	0x50c9, a
                           0000A9   380 	Sstm8s_clk$CLK_CCOCmd$76 ==.
                                    381 ; genGoto
      0090FA CC 91 02         [ 2]  382 	jp	00104$
                                    383 ; genLabel
      0090FD                        384 00102$:
                           0000AC   385 	Sstm8s_clk$CLK_CCOCmd$77 ==.
                           0000AC   386 	Sstm8s_clk$CLK_CCOCmd$78 ==.
                                    387 ;	../SPL/src/stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
                                    388 ; genAnd
      0090FD A4 FE            [ 1]  389 	and	a, #0xfe
                                    390 ; genPointerSet
      0090FF C7 50 C9         [ 1]  391 	ld	0x50c9, a
                           0000B1   392 	Sstm8s_clk$CLK_CCOCmd$79 ==.
                                    393 ; genLabel
      009102                        394 00104$:
                           0000B1   395 	Sstm8s_clk$CLK_CCOCmd$80 ==.
                                    396 ;	../SPL/src/stm8s_clk.c: 204: }
                                    397 ; genEndFunction
                           0000B1   398 	Sstm8s_clk$CLK_CCOCmd$81 ==.
                           0000B1   399 	XG$CLK_CCOCmd$0$0 ==.
      009102 81               [ 4]  400 	ret
                           0000B2   401 	Sstm8s_clk$CLK_CCOCmd$82 ==.
                           0000B2   402 	Sstm8s_clk$CLK_ClockSwitchCmd$83 ==.
                                    403 ;	../SPL/src/stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    404 ; genLabel
                                    405 ;	-----------------------------------------
                                    406 ;	 function CLK_ClockSwitchCmd
                                    407 ;	-----------------------------------------
                                    408 ;	Register assignment is optimal.
                                    409 ;	Stack space usage: 0 bytes.
      009103                        410 _CLK_ClockSwitchCmd:
                           0000B2   411 	Sstm8s_clk$CLK_ClockSwitchCmd$84 ==.
                           0000B2   412 	Sstm8s_clk$CLK_ClockSwitchCmd$85 ==.
                                    413 ;	../SPL/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
                                    414 ; genPointerGet
      009103 C6 50 C5         [ 1]  415 	ld	a, 0x50c5
                           0000B5   416 	Sstm8s_clk$CLK_ClockSwitchCmd$86 ==.
                                    417 ;	../SPL/src/stm8s_clk.c: 218: if (NewState != DISABLE )
                                    418 ; genIfx
      009106 0D 03            [ 1]  419 	tnz	(0x03, sp)
      009108 26 03            [ 1]  420 	jrne	00111$
      00910A CC 91 15         [ 2]  421 	jp	00102$
      00910D                        422 00111$:
                           0000BC   423 	Sstm8s_clk$CLK_ClockSwitchCmd$87 ==.
                           0000BC   424 	Sstm8s_clk$CLK_ClockSwitchCmd$88 ==.
                                    425 ;	../SPL/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
                                    426 ; genOr
      00910D AA 02            [ 1]  427 	or	a, #0x02
                                    428 ; genPointerSet
      00910F C7 50 C5         [ 1]  429 	ld	0x50c5, a
                           0000C1   430 	Sstm8s_clk$CLK_ClockSwitchCmd$89 ==.
                                    431 ; genGoto
      009112 CC 91 1A         [ 2]  432 	jp	00104$
                                    433 ; genLabel
      009115                        434 00102$:
                           0000C4   435 	Sstm8s_clk$CLK_ClockSwitchCmd$90 ==.
                           0000C4   436 	Sstm8s_clk$CLK_ClockSwitchCmd$91 ==.
                                    437 ;	../SPL/src/stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
                                    438 ; genAnd
      009115 A4 FD            [ 1]  439 	and	a, #0xfd
                                    440 ; genPointerSet
      009117 C7 50 C5         [ 1]  441 	ld	0x50c5, a
                           0000C9   442 	Sstm8s_clk$CLK_ClockSwitchCmd$92 ==.
                                    443 ; genLabel
      00911A                        444 00104$:
                           0000C9   445 	Sstm8s_clk$CLK_ClockSwitchCmd$93 ==.
                                    446 ;	../SPL/src/stm8s_clk.c: 228: }
                                    447 ; genEndFunction
                           0000C9   448 	Sstm8s_clk$CLK_ClockSwitchCmd$94 ==.
                           0000C9   449 	XG$CLK_ClockSwitchCmd$0$0 ==.
      00911A 81               [ 4]  450 	ret
                           0000CA   451 	Sstm8s_clk$CLK_ClockSwitchCmd$95 ==.
                           0000CA   452 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$96 ==.
                                    453 ;	../SPL/src/stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
                                    454 ; genLabel
                                    455 ;	-----------------------------------------
                                    456 ;	 function CLK_SlowActiveHaltWakeUpCmd
                                    457 ;	-----------------------------------------
                                    458 ;	Register assignment is optimal.
                                    459 ;	Stack space usage: 0 bytes.
      00911B                        460 _CLK_SlowActiveHaltWakeUpCmd:
                           0000CA   461 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$97 ==.
                           0000CA   462 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$98 ==.
                                    463 ;	../SPL/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
                                    464 ; genPointerGet
      00911B C6 50 C0         [ 1]  465 	ld	a, 0x50c0
                           0000CD   466 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$99 ==.
                                    467 ;	../SPL/src/stm8s_clk.c: 243: if (NewState != DISABLE)
                                    468 ; genIfx
      00911E 0D 03            [ 1]  469 	tnz	(0x03, sp)
      009120 26 03            [ 1]  470 	jrne	00111$
      009122 CC 91 2D         [ 2]  471 	jp	00102$
      009125                        472 00111$:
                           0000D4   473 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$100 ==.
                           0000D4   474 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$101 ==.
                                    475 ;	../SPL/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
                                    476 ; genOr
      009125 AA 20            [ 1]  477 	or	a, #0x20
                                    478 ; genPointerSet
      009127 C7 50 C0         [ 1]  479 	ld	0x50c0, a
                           0000D9   480 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$102 ==.
                                    481 ; genGoto
      00912A CC 91 32         [ 2]  482 	jp	00104$
                                    483 ; genLabel
      00912D                        484 00102$:
                           0000DC   485 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$103 ==.
                           0000DC   486 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$104 ==.
                                    487 ;	../SPL/src/stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
                                    488 ; genAnd
      00912D A4 DF            [ 1]  489 	and	a, #0xdf
                                    490 ; genPointerSet
      00912F C7 50 C0         [ 1]  491 	ld	0x50c0, a
                           0000E1   492 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$105 ==.
                                    493 ; genLabel
      009132                        494 00104$:
                           0000E1   495 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$106 ==.
                                    496 ;	../SPL/src/stm8s_clk.c: 253: }
                                    497 ; genEndFunction
                           0000E1   498 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$107 ==.
                           0000E1   499 	XG$CLK_SlowActiveHaltWakeUpCmd$0$0 ==.
      009132 81               [ 4]  500 	ret
                           0000E2   501 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$108 ==.
                           0000E2   502 	Sstm8s_clk$CLK_PeripheralClockConfig$109 ==.
                                    503 ;	../SPL/src/stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    504 ; genLabel
                                    505 ;	-----------------------------------------
                                    506 ;	 function CLK_PeripheralClockConfig
                                    507 ;	-----------------------------------------
                                    508 ;	Register assignment is optimal.
                                    509 ;	Stack space usage: 2 bytes.
      009133                        510 _CLK_PeripheralClockConfig:
                           0000E2   511 	Sstm8s_clk$CLK_PeripheralClockConfig$110 ==.
      009133 89               [ 2]  512 	pushw	x
                           0000E3   513 	Sstm8s_clk$CLK_PeripheralClockConfig$111 ==.
                           0000E3   514 	Sstm8s_clk$CLK_PeripheralClockConfig$112 ==.
                                    515 ;	../SPL/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    516 ; genAnd
      009134 7B 05            [ 1]  517 	ld	a, (0x05, sp)
      009136 A4 0F            [ 1]  518 	and	a, #0x0f
                                    519 ; genLeftShift
      009138 88               [ 1]  520 	push	a
                           0000E8   521 	Sstm8s_clk$CLK_PeripheralClockConfig$113 ==.
      009139 A6 01            [ 1]  522 	ld	a, #0x01
      00913B 6B 02            [ 1]  523 	ld	(0x02, sp), a
      00913D 84               [ 1]  524 	pop	a
                           0000ED   525 	Sstm8s_clk$CLK_PeripheralClockConfig$114 ==.
      00913E 4D               [ 1]  526 	tnz	a
      00913F 27 05            [ 1]  527 	jreq	00128$
      009141                        528 00127$:
      009141 08 01            [ 1]  529 	sll	(0x01, sp)
      009143 4A               [ 1]  530 	dec	a
      009144 26 FB            [ 1]  531 	jrne	00127$
      009146                        532 00128$:
                           0000F5   533 	Sstm8s_clk$CLK_PeripheralClockConfig$115 ==.
                                    534 ;	../SPL/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
                                    535 ; genCpl
      009146 7B 01            [ 1]  536 	ld	a, (0x01, sp)
      009148 43               [ 1]  537 	cpl	a
      009149 6B 02            [ 1]  538 	ld	(0x02, sp), a
                           0000FA   539 	Sstm8s_clk$CLK_PeripheralClockConfig$116 ==.
                                    540 ;	../SPL/src/stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
                                    541 ; genAnd
      00914B 7B 05            [ 1]  542 	ld	a, (0x05, sp)
      00914D A5 10            [ 1]  543 	bcp	a, #0x10
      00914F 27 03            [ 1]  544 	jreq	00129$
      009151 CC 91 6E         [ 2]  545 	jp	00108$
      009154                        546 00129$:
                                    547 ; skipping generated iCode
                           000103   548 	Sstm8s_clk$CLK_PeripheralClockConfig$117 ==.
                                    549 ;	../SPL/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    550 ; genPointerGet
      009154 C6 50 C7         [ 1]  551 	ld	a, 0x50c7
                           000106   552 	Sstm8s_clk$CLK_PeripheralClockConfig$118 ==.
                           000106   553 	Sstm8s_clk$CLK_PeripheralClockConfig$119 ==.
                                    554 ;	../SPL/src/stm8s_clk.c: 271: if (NewState != DISABLE)
                                    555 ; genIfx
      009157 0D 06            [ 1]  556 	tnz	(0x06, sp)
      009159 26 03            [ 1]  557 	jrne	00130$
      00915B CC 91 66         [ 2]  558 	jp	00102$
      00915E                        559 00130$:
                           00010D   560 	Sstm8s_clk$CLK_PeripheralClockConfig$120 ==.
                           00010D   561 	Sstm8s_clk$CLK_PeripheralClockConfig$121 ==.
                                    562 ;	../SPL/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    563 ; genOr
      00915E 1A 01            [ 1]  564 	or	a, (0x01, sp)
                                    565 ; genPointerSet
      009160 C7 50 C7         [ 1]  566 	ld	0x50c7, a
                           000112   567 	Sstm8s_clk$CLK_PeripheralClockConfig$122 ==.
                                    568 ; genGoto
      009163 CC 91 85         [ 2]  569 	jp	00110$
                                    570 ; genLabel
      009166                        571 00102$:
                           000115   572 	Sstm8s_clk$CLK_PeripheralClockConfig$123 ==.
                           000115   573 	Sstm8s_clk$CLK_PeripheralClockConfig$124 ==.
                                    574 ;	../SPL/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
                                    575 ; genAnd
      009166 14 02            [ 1]  576 	and	a, (0x02, sp)
                                    577 ; genPointerSet
      009168 C7 50 C7         [ 1]  578 	ld	0x50c7, a
                           00011A   579 	Sstm8s_clk$CLK_PeripheralClockConfig$125 ==.
                                    580 ; genGoto
      00916B CC 91 85         [ 2]  581 	jp	00110$
                                    582 ; genLabel
      00916E                        583 00108$:
                           00011D   584 	Sstm8s_clk$CLK_PeripheralClockConfig$126 ==.
                                    585 ;	../SPL/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    586 ; genPointerGet
      00916E C6 50 CA         [ 1]  587 	ld	a, 0x50ca
                           000120   588 	Sstm8s_clk$CLK_PeripheralClockConfig$127 ==.
                           000120   589 	Sstm8s_clk$CLK_PeripheralClockConfig$128 ==.
                                    590 ;	../SPL/src/stm8s_clk.c: 284: if (NewState != DISABLE)
                                    591 ; genIfx
      009171 0D 06            [ 1]  592 	tnz	(0x06, sp)
      009173 26 03            [ 1]  593 	jrne	00131$
      009175 CC 91 80         [ 2]  594 	jp	00105$
      009178                        595 00131$:
                           000127   596 	Sstm8s_clk$CLK_PeripheralClockConfig$129 ==.
                           000127   597 	Sstm8s_clk$CLK_PeripheralClockConfig$130 ==.
                                    598 ;	../SPL/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    599 ; genOr
      009178 1A 01            [ 1]  600 	or	a, (0x01, sp)
                                    601 ; genPointerSet
      00917A C7 50 CA         [ 1]  602 	ld	0x50ca, a
                           00012C   603 	Sstm8s_clk$CLK_PeripheralClockConfig$131 ==.
                                    604 ; genGoto
      00917D CC 91 85         [ 2]  605 	jp	00110$
                                    606 ; genLabel
      009180                        607 00105$:
                           00012F   608 	Sstm8s_clk$CLK_PeripheralClockConfig$132 ==.
                           00012F   609 	Sstm8s_clk$CLK_PeripheralClockConfig$133 ==.
                                    610 ;	../SPL/src/stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
                                    611 ; genAnd
      009180 14 02            [ 1]  612 	and	a, (0x02, sp)
                                    613 ; genPointerSet
      009182 C7 50 CA         [ 1]  614 	ld	0x50ca, a
                           000134   615 	Sstm8s_clk$CLK_PeripheralClockConfig$134 ==.
                                    616 ; genLabel
      009185                        617 00110$:
                           000134   618 	Sstm8s_clk$CLK_PeripheralClockConfig$135 ==.
                                    619 ;	../SPL/src/stm8s_clk.c: 295: }
                                    620 ; genEndFunction
      009185 85               [ 2]  621 	popw	x
                           000135   622 	Sstm8s_clk$CLK_PeripheralClockConfig$136 ==.
                           000135   623 	Sstm8s_clk$CLK_PeripheralClockConfig$137 ==.
                           000135   624 	XG$CLK_PeripheralClockConfig$0$0 ==.
      009186 81               [ 4]  625 	ret
                           000136   626 	Sstm8s_clk$CLK_PeripheralClockConfig$138 ==.
                           000136   627 	Sstm8s_clk$CLK_ClockSwitchConfig$139 ==.
                                    628 ;	../SPL/src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    629 ; genLabel
                                    630 ;	-----------------------------------------
                                    631 ;	 function CLK_ClockSwitchConfig
                                    632 ;	-----------------------------------------
                                    633 ;	Register assignment might be sub-optimal.
                                    634 ;	Stack space usage: 1 bytes.
      009187                        635 _CLK_ClockSwitchConfig:
                           000136   636 	Sstm8s_clk$CLK_ClockSwitchConfig$140 ==.
      009187 88               [ 1]  637 	push	a
                           000137   638 	Sstm8s_clk$CLK_ClockSwitchConfig$141 ==.
                           000137   639 	Sstm8s_clk$CLK_ClockSwitchConfig$142 ==.
                                    640 ;	../SPL/src/stm8s_clk.c: 312: uint16_t DownCounter = CLK_TIMEOUT;
                                    641 ; genAssign
      009188 5F               [ 1]  642 	clrw	x
      009189 5A               [ 2]  643 	decw	x
                           000139   644 	Sstm8s_clk$CLK_ClockSwitchConfig$143 ==.
                                    645 ;	../SPL/src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
                                    646 ; genPointerGet
      00918A C6 50 C3         [ 1]  647 	ld	a, 0x50c3
      00918D 6B 01            [ 1]  648 	ld	(0x01, sp), a
                           00013E   649 	Sstm8s_clk$CLK_ClockSwitchConfig$144 ==.
                                    650 ;	../SPL/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
                                    651 ; genPointerGet
      00918F C6 50 C5         [ 1]  652 	ld	a, 0x50c5
                           000141   653 	Sstm8s_clk$CLK_ClockSwitchConfig$145 ==.
                                    654 ;	../SPL/src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
                                    655 ; genCmpEQorNE
      009192 88               [ 1]  656 	push	a
                           000142   657 	Sstm8s_clk$CLK_ClockSwitchConfig$146 ==.
      009193 7B 05            [ 1]  658 	ld	a, (0x05, sp)
      009195 4A               [ 1]  659 	dec	a
      009196 84               [ 1]  660 	pop	a
                           000146   661 	Sstm8s_clk$CLK_ClockSwitchConfig$147 ==.
      009197 26 03            [ 1]  662 	jrne	00232$
      009199 CC 91 9F         [ 2]  663 	jp	00233$
      00919C                        664 00232$:
      00919C CC 91 E6         [ 2]  665 	jp	00122$
      00919F                        666 00233$:
                           00014E   667 	Sstm8s_clk$CLK_ClockSwitchConfig$148 ==.
                                    668 ; skipping generated iCode
                           00014E   669 	Sstm8s_clk$CLK_ClockSwitchConfig$149 ==.
                           00014E   670 	Sstm8s_clk$CLK_ClockSwitchConfig$150 ==.
                                    671 ;	../SPL/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
                                    672 ; genOr
      00919F AA 02            [ 1]  673 	or	a, #0x02
                                    674 ; genPointerSet
      0091A1 C7 50 C5         [ 1]  675 	ld	0x50c5, a
                           000153   676 	Sstm8s_clk$CLK_ClockSwitchConfig$151 ==.
                                    677 ; genPointerGet
      0091A4 C6 50 C5         [ 1]  678 	ld	a, 0x50c5
                           000156   679 	Sstm8s_clk$CLK_ClockSwitchConfig$152 ==.
                                    680 ;	../SPL/src/stm8s_clk.c: 331: if (ITState != DISABLE)
                                    681 ; genIfx
      0091A7 0D 06            [ 1]  682 	tnz	(0x06, sp)
      0091A9 26 03            [ 1]  683 	jrne	00234$
      0091AB CC 91 B6         [ 2]  684 	jp	00102$
      0091AE                        685 00234$:
                           00015D   686 	Sstm8s_clk$CLK_ClockSwitchConfig$153 ==.
                           00015D   687 	Sstm8s_clk$CLK_ClockSwitchConfig$154 ==.
                                    688 ;	../SPL/src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
                                    689 ; genOr
      0091AE AA 04            [ 1]  690 	or	a, #0x04
                                    691 ; genPointerSet
      0091B0 C7 50 C5         [ 1]  692 	ld	0x50c5, a
                           000162   693 	Sstm8s_clk$CLK_ClockSwitchConfig$155 ==.
                                    694 ; genGoto
      0091B3 CC 91 BB         [ 2]  695 	jp	00103$
                                    696 ; genLabel
      0091B6                        697 00102$:
                           000165   698 	Sstm8s_clk$CLK_ClockSwitchConfig$156 ==.
                           000165   699 	Sstm8s_clk$CLK_ClockSwitchConfig$157 ==.
                                    700 ;	../SPL/src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
                                    701 ; genAnd
      0091B6 A4 FB            [ 1]  702 	and	a, #0xfb
                                    703 ; genPointerSet
      0091B8 C7 50 C5         [ 1]  704 	ld	0x50c5, a
                           00016A   705 	Sstm8s_clk$CLK_ClockSwitchConfig$158 ==.
                                    706 ; genLabel
      0091BB                        707 00103$:
                           00016A   708 	Sstm8s_clk$CLK_ClockSwitchConfig$159 ==.
                                    709 ;	../SPL/src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
                                    710 ; genPointerSet
      0091BB 90 AE 50 C4      [ 2]  711 	ldw	y, #0x50c4
      0091BF 7B 05            [ 1]  712 	ld	a, (0x05, sp)
      0091C1 90 F7            [ 1]  713 	ld	(y), a
                           000172   714 	Sstm8s_clk$CLK_ClockSwitchConfig$160 ==.
                           000172   715 	Sstm8s_clk$CLK_ClockSwitchConfig$161 ==.
                                    716 ;	../SPL/src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
                                    717 ; genAssign
                                    718 ; genLabel
      0091C3                        719 00105$:
                                    720 ; genPointerGet
      0091C3 C6 50 C5         [ 1]  721 	ld	a, 0x50c5
                                    722 ; genAnd
      0091C6 44               [ 1]  723 	srl	a
      0091C7 25 03            [ 1]  724 	jrc	00235$
      0091C9 CC 91 D6         [ 2]  725 	jp	00157$
      0091CC                        726 00235$:
                                    727 ; skipping generated iCode
                                    728 ; genIfx
      0091CC 5D               [ 2]  729 	tnzw	x
      0091CD 26 03            [ 1]  730 	jrne	00236$
      0091CF CC 91 D6         [ 2]  731 	jp	00157$
      0091D2                        732 00236$:
                           000181   733 	Sstm8s_clk$CLK_ClockSwitchConfig$162 ==.
                           000181   734 	Sstm8s_clk$CLK_ClockSwitchConfig$163 ==.
                                    735 ;	../SPL/src/stm8s_clk.c: 346: DownCounter--;
                                    736 ; genMinus
      0091D2 5A               [ 2]  737 	decw	x
                           000182   738 	Sstm8s_clk$CLK_ClockSwitchConfig$164 ==.
                                    739 ; genGoto
      0091D3 CC 91 C3         [ 2]  740 	jp	00105$
                           000185   741 	Sstm8s_clk$CLK_ClockSwitchConfig$165 ==.
                                    742 ; genLabel
      0091D6                        743 00157$:
                                    744 ; genAssign
                           000185   745 	Sstm8s_clk$CLK_ClockSwitchConfig$166 ==.
                                    746 ;	../SPL/src/stm8s_clk.c: 349: if(DownCounter != 0)
                                    747 ; genIfx
      0091D6 5D               [ 2]  748 	tnzw	x
      0091D7 26 03            [ 1]  749 	jrne	00237$
      0091D9 CC 91 E2         [ 2]  750 	jp	00109$
      0091DC                        751 00237$:
                           00018B   752 	Sstm8s_clk$CLK_ClockSwitchConfig$167 ==.
                           00018B   753 	Sstm8s_clk$CLK_ClockSwitchConfig$168 ==.
                                    754 ;	../SPL/src/stm8s_clk.c: 351: Swif = SUCCESS;
                                    755 ; genAssign
      0091DC A6 01            [ 1]  756 	ld	a, #0x01
      0091DE 97               [ 1]  757 	ld	xl, a
                           00018E   758 	Sstm8s_clk$CLK_ClockSwitchConfig$169 ==.
                                    759 ; genGoto
      0091DF CC 92 2B         [ 2]  760 	jp	00123$
                                    761 ; genLabel
      0091E2                        762 00109$:
                           000191   763 	Sstm8s_clk$CLK_ClockSwitchConfig$170 ==.
                           000191   764 	Sstm8s_clk$CLK_ClockSwitchConfig$171 ==.
                                    765 ;	../SPL/src/stm8s_clk.c: 355: Swif = ERROR;
                                    766 ; genAssign
      0091E2 5F               [ 1]  767 	clrw	x
                           000192   768 	Sstm8s_clk$CLK_ClockSwitchConfig$172 ==.
                                    769 ; genGoto
      0091E3 CC 92 2B         [ 2]  770 	jp	00123$
                                    771 ; genLabel
      0091E6                        772 00122$:
                           000195   773 	Sstm8s_clk$CLK_ClockSwitchConfig$173 ==.
                           000195   774 	Sstm8s_clk$CLK_ClockSwitchConfig$174 ==.
                                    775 ;	../SPL/src/stm8s_clk.c: 361: if (ITState != DISABLE)
                                    776 ; genIfx
      0091E6 0D 06            [ 1]  777 	tnz	(0x06, sp)
      0091E8 26 03            [ 1]  778 	jrne	00238$
      0091EA CC 91 F5         [ 2]  779 	jp	00112$
      0091ED                        780 00238$:
                           00019C   781 	Sstm8s_clk$CLK_ClockSwitchConfig$175 ==.
                           00019C   782 	Sstm8s_clk$CLK_ClockSwitchConfig$176 ==.
                                    783 ;	../SPL/src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
                                    784 ; genOr
      0091ED AA 04            [ 1]  785 	or	a, #0x04
                                    786 ; genPointerSet
      0091EF C7 50 C5         [ 1]  787 	ld	0x50c5, a
                           0001A1   788 	Sstm8s_clk$CLK_ClockSwitchConfig$177 ==.
                                    789 ; genGoto
      0091F2 CC 91 FA         [ 2]  790 	jp	00113$
                                    791 ; genLabel
      0091F5                        792 00112$:
                           0001A4   793 	Sstm8s_clk$CLK_ClockSwitchConfig$178 ==.
                           0001A4   794 	Sstm8s_clk$CLK_ClockSwitchConfig$179 ==.
                                    795 ;	../SPL/src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
                                    796 ; genAnd
      0091F5 A4 FB            [ 1]  797 	and	a, #0xfb
                                    798 ; genPointerSet
      0091F7 C7 50 C5         [ 1]  799 	ld	0x50c5, a
                           0001A9   800 	Sstm8s_clk$CLK_ClockSwitchConfig$180 ==.
                                    801 ; genLabel
      0091FA                        802 00113$:
                           0001A9   803 	Sstm8s_clk$CLK_ClockSwitchConfig$181 ==.
                                    804 ;	../SPL/src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
                                    805 ; genPointerSet
      0091FA 90 AE 50 C4      [ 2]  806 	ldw	y, #0x50c4
      0091FE 7B 05            [ 1]  807 	ld	a, (0x05, sp)
      009200 90 F7            [ 1]  808 	ld	(y), a
                           0001B1   809 	Sstm8s_clk$CLK_ClockSwitchConfig$182 ==.
                           0001B1   810 	Sstm8s_clk$CLK_ClockSwitchConfig$183 ==.
                                    811 ;	../SPL/src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
                                    812 ; genAssign
                                    813 ; genLabel
      009202                        814 00115$:
                                    815 ; genPointerGet
      009202 C6 50 C5         [ 1]  816 	ld	a, 0x50c5
                                    817 ; genAnd
      009205 A5 08            [ 1]  818 	bcp	a, #0x08
      009207 26 03            [ 1]  819 	jrne	00239$
      009209 CC 92 16         [ 2]  820 	jp	00158$
      00920C                        821 00239$:
                                    822 ; skipping generated iCode
                                    823 ; genIfx
      00920C 5D               [ 2]  824 	tnzw	x
      00920D 26 03            [ 1]  825 	jrne	00240$
      00920F CC 92 16         [ 2]  826 	jp	00158$
      009212                        827 00240$:
                           0001C1   828 	Sstm8s_clk$CLK_ClockSwitchConfig$184 ==.
                           0001C1   829 	Sstm8s_clk$CLK_ClockSwitchConfig$185 ==.
                                    830 ;	../SPL/src/stm8s_clk.c: 376: DownCounter--;
                                    831 ; genMinus
      009212 5A               [ 2]  832 	decw	x
                           0001C2   833 	Sstm8s_clk$CLK_ClockSwitchConfig$186 ==.
                                    834 ; genGoto
      009213 CC 92 02         [ 2]  835 	jp	00115$
                           0001C5   836 	Sstm8s_clk$CLK_ClockSwitchConfig$187 ==.
                                    837 ; genLabel
      009216                        838 00158$:
                                    839 ; genAssign
                           0001C5   840 	Sstm8s_clk$CLK_ClockSwitchConfig$188 ==.
                                    841 ;	../SPL/src/stm8s_clk.c: 379: if(DownCounter != 0)
                                    842 ; genIfx
      009216 5D               [ 2]  843 	tnzw	x
      009217 26 03            [ 1]  844 	jrne	00241$
      009219 CC 92 2A         [ 2]  845 	jp	00119$
      00921C                        846 00241$:
                           0001CB   847 	Sstm8s_clk$CLK_ClockSwitchConfig$189 ==.
                           0001CB   848 	Sstm8s_clk$CLK_ClockSwitchConfig$190 ==.
                                    849 ;	../SPL/src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
                                    850 ; genPointerGet
      00921C C6 50 C5         [ 1]  851 	ld	a, 0x50c5
                                    852 ; genOr
      00921F AA 02            [ 1]  853 	or	a, #0x02
                                    854 ; genPointerSet
      009221 C7 50 C5         [ 1]  855 	ld	0x50c5, a
                           0001D3   856 	Sstm8s_clk$CLK_ClockSwitchConfig$191 ==.
                                    857 ;	../SPL/src/stm8s_clk.c: 383: Swif = SUCCESS;
                                    858 ; genAssign
      009224 A6 01            [ 1]  859 	ld	a, #0x01
      009226 97               [ 1]  860 	ld	xl, a
                           0001D6   861 	Sstm8s_clk$CLK_ClockSwitchConfig$192 ==.
                                    862 ; genGoto
      009227 CC 92 2B         [ 2]  863 	jp	00123$
                                    864 ; genLabel
      00922A                        865 00119$:
                           0001D9   866 	Sstm8s_clk$CLK_ClockSwitchConfig$193 ==.
                           0001D9   867 	Sstm8s_clk$CLK_ClockSwitchConfig$194 ==.
                                    868 ;	../SPL/src/stm8s_clk.c: 387: Swif = ERROR;
                                    869 ; genAssign
      00922A 5F               [ 1]  870 	clrw	x
                           0001DA   871 	Sstm8s_clk$CLK_ClockSwitchConfig$195 ==.
                                    872 ; genLabel
      00922B                        873 00123$:
                           0001DA   874 	Sstm8s_clk$CLK_ClockSwitchConfig$196 ==.
                                    875 ;	../SPL/src/stm8s_clk.c: 390: if(Swif != ERROR)
                                    876 ; genIfx
      00922B 9F               [ 1]  877 	ld	a, xl
      00922C 4D               [ 1]  878 	tnz	a
      00922D 26 03            [ 1]  879 	jrne	00242$
      00922F CC 92 89         [ 2]  880 	jp	00136$
      009232                        881 00242$:
                           0001E1   882 	Sstm8s_clk$CLK_ClockSwitchConfig$197 ==.
                           0001E1   883 	Sstm8s_clk$CLK_ClockSwitchConfig$198 ==.
                                    884 ;	../SPL/src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
                                    885 ; genIfx
      009232 0D 07            [ 1]  886 	tnz	(0x07, sp)
      009234 27 03            [ 1]  887 	jreq	00243$
      009236 CC 92 50         [ 2]  888 	jp	00132$
      009239                        889 00243$:
                                    890 ; genCmpEQorNE
      009239 7B 01            [ 1]  891 	ld	a, (0x01, sp)
      00923B A1 E1            [ 1]  892 	cp	a, #0xe1
      00923D 26 03            [ 1]  893 	jrne	00245$
      00923F CC 92 45         [ 2]  894 	jp	00246$
      009242                        895 00245$:
      009242 CC 92 50         [ 2]  896 	jp	00132$
      009245                        897 00246$:
                           0001F4   898 	Sstm8s_clk$CLK_ClockSwitchConfig$199 ==.
                                    899 ; skipping generated iCode
                           0001F4   900 	Sstm8s_clk$CLK_ClockSwitchConfig$200 ==.
                           0001F4   901 	Sstm8s_clk$CLK_ClockSwitchConfig$201 ==.
                                    902 ;	../SPL/src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
                                    903 ; genPointerGet
      009245 C6 50 C0         [ 1]  904 	ld	a, 0x50c0
                                    905 ; genAnd
      009248 A4 FE            [ 1]  906 	and	a, #0xfe
                                    907 ; genPointerSet
      00924A C7 50 C0         [ 1]  908 	ld	0x50c0, a
                           0001FC   909 	Sstm8s_clk$CLK_ClockSwitchConfig$202 ==.
                                    910 ; genGoto
      00924D CC 92 89         [ 2]  911 	jp	00136$
                                    912 ; genLabel
      009250                        913 00132$:
                           0001FF   914 	Sstm8s_clk$CLK_ClockSwitchConfig$203 ==.
                                    915 ;	../SPL/src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
                                    916 ; genIfx
      009250 0D 07            [ 1]  917 	tnz	(0x07, sp)
      009252 27 03            [ 1]  918 	jreq	00247$
      009254 CC 92 6E         [ 2]  919 	jp	00128$
      009257                        920 00247$:
                                    921 ; genCmpEQorNE
      009257 7B 01            [ 1]  922 	ld	a, (0x01, sp)
      009259 A1 D2            [ 1]  923 	cp	a, #0xd2
      00925B 26 03            [ 1]  924 	jrne	00249$
      00925D CC 92 63         [ 2]  925 	jp	00250$
      009260                        926 00249$:
      009260 CC 92 6E         [ 2]  927 	jp	00128$
      009263                        928 00250$:
                           000212   929 	Sstm8s_clk$CLK_ClockSwitchConfig$204 ==.
                                    930 ; skipping generated iCode
                           000212   931 	Sstm8s_clk$CLK_ClockSwitchConfig$205 ==.
                           000212   932 	Sstm8s_clk$CLK_ClockSwitchConfig$206 ==.
                                    933 ;	../SPL/src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
                                    934 ; genPointerGet
      009263 C6 50 C0         [ 1]  935 	ld	a, 0x50c0
                                    936 ; genAnd
      009266 A4 F7            [ 1]  937 	and	a, #0xf7
                                    938 ; genPointerSet
      009268 C7 50 C0         [ 1]  939 	ld	0x50c0, a
                           00021A   940 	Sstm8s_clk$CLK_ClockSwitchConfig$207 ==.
                                    941 ; genGoto
      00926B CC 92 89         [ 2]  942 	jp	00136$
                                    943 ; genLabel
      00926E                        944 00128$:
                           00021D   945 	Sstm8s_clk$CLK_ClockSwitchConfig$208 ==.
                                    946 ;	../SPL/src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
                                    947 ; genIfx
      00926E 0D 07            [ 1]  948 	tnz	(0x07, sp)
      009270 27 03            [ 1]  949 	jreq	00251$
      009272 CC 92 89         [ 2]  950 	jp	00136$
      009275                        951 00251$:
                                    952 ; genCmpEQorNE
      009275 7B 01            [ 1]  953 	ld	a, (0x01, sp)
      009277 A1 B4            [ 1]  954 	cp	a, #0xb4
      009279 26 03            [ 1]  955 	jrne	00253$
      00927B CC 92 81         [ 2]  956 	jp	00254$
      00927E                        957 00253$:
      00927E CC 92 89         [ 2]  958 	jp	00136$
      009281                        959 00254$:
                           000230   960 	Sstm8s_clk$CLK_ClockSwitchConfig$209 ==.
                                    961 ; skipping generated iCode
                           000230   962 	Sstm8s_clk$CLK_ClockSwitchConfig$210 ==.
                           000230   963 	Sstm8s_clk$CLK_ClockSwitchConfig$211 ==.
                                    964 ;	../SPL/src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
                                    965 ; genPointerGet
      009281 C6 50 C1         [ 1]  966 	ld	a, 0x50c1
                                    967 ; genAnd
      009284 A4 FE            [ 1]  968 	and	a, #0xfe
                                    969 ; genPointerSet
      009286 C7 50 C1         [ 1]  970 	ld	0x50c1, a
                           000238   971 	Sstm8s_clk$CLK_ClockSwitchConfig$212 ==.
                                    972 ; genLabel
      009289                        973 00136$:
                           000238   974 	Sstm8s_clk$CLK_ClockSwitchConfig$213 ==.
                                    975 ;	../SPL/src/stm8s_clk.c: 406: return(Swif);
                                    976 ; genReturn
      009289 9F               [ 1]  977 	ld	a, xl
                                    978 ; genLabel
      00928A                        979 00137$:
                           000239   980 	Sstm8s_clk$CLK_ClockSwitchConfig$214 ==.
                                    981 ;	../SPL/src/stm8s_clk.c: 407: }
                                    982 ; genEndFunction
      00928A 5B 01            [ 2]  983 	addw	sp, #1
                           00023B   984 	Sstm8s_clk$CLK_ClockSwitchConfig$215 ==.
                           00023B   985 	Sstm8s_clk$CLK_ClockSwitchConfig$216 ==.
                           00023B   986 	XG$CLK_ClockSwitchConfig$0$0 ==.
      00928C 81               [ 4]  987 	ret
                           00023C   988 	Sstm8s_clk$CLK_ClockSwitchConfig$217 ==.
                           00023C   989 	Sstm8s_clk$CLK_HSIPrescalerConfig$218 ==.
                                    990 ;	../SPL/src/stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    991 ; genLabel
                                    992 ;	-----------------------------------------
                                    993 ;	 function CLK_HSIPrescalerConfig
                                    994 ;	-----------------------------------------
                                    995 ;	Register assignment is optimal.
                                    996 ;	Stack space usage: 0 bytes.
      00928D                        997 _CLK_HSIPrescalerConfig:
                           00023C   998 	Sstm8s_clk$CLK_HSIPrescalerConfig$219 ==.
                           00023C   999 	Sstm8s_clk$CLK_HSIPrescalerConfig$220 ==.
                                   1000 ;	../SPL/src/stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
                                   1001 ; genPointerGet
      00928D C6 50 C6         [ 1] 1002 	ld	a, 0x50c6
                                   1003 ; genAnd
      009290 A4 E7            [ 1] 1004 	and	a, #0xe7
                                   1005 ; genPointerSet
      009292 C7 50 C6         [ 1] 1006 	ld	0x50c6, a
                           000244  1007 	Sstm8s_clk$CLK_HSIPrescalerConfig$221 ==.
                                   1008 ;	../SPL/src/stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
                                   1009 ; genPointerGet
      009295 C6 50 C6         [ 1] 1010 	ld	a, 0x50c6
                                   1011 ; genOr
      009298 1A 03            [ 1] 1012 	or	a, (0x03, sp)
                                   1013 ; genPointerSet
      00929A C7 50 C6         [ 1] 1014 	ld	0x50c6, a
                                   1015 ; genLabel
      00929D                       1016 00101$:
                           00024C  1017 	Sstm8s_clk$CLK_HSIPrescalerConfig$222 ==.
                                   1018 ;	../SPL/src/stm8s_clk.c: 425: }
                                   1019 ; genEndFunction
                           00024C  1020 	Sstm8s_clk$CLK_HSIPrescalerConfig$223 ==.
                           00024C  1021 	XG$CLK_HSIPrescalerConfig$0$0 ==.
      00929D 81               [ 4] 1022 	ret
                           00024D  1023 	Sstm8s_clk$CLK_HSIPrescalerConfig$224 ==.
                           00024D  1024 	Sstm8s_clk$CLK_CCOConfig$225 ==.
                                   1025 ;	../SPL/src/stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
                                   1026 ; genLabel
                                   1027 ;	-----------------------------------------
                                   1028 ;	 function CLK_CCOConfig
                                   1029 ;	-----------------------------------------
                                   1030 ;	Register assignment is optimal.
                                   1031 ;	Stack space usage: 0 bytes.
      00929E                       1032 _CLK_CCOConfig:
                           00024D  1033 	Sstm8s_clk$CLK_CCOConfig$226 ==.
                           00024D  1034 	Sstm8s_clk$CLK_CCOConfig$227 ==.
                                   1035 ;	../SPL/src/stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
                                   1036 ; genPointerGet
      00929E C6 50 C9         [ 1] 1037 	ld	a, 0x50c9
                                   1038 ; genAnd
      0092A1 A4 E1            [ 1] 1039 	and	a, #0xe1
                                   1040 ; genPointerSet
      0092A3 C7 50 C9         [ 1] 1041 	ld	0x50c9, a
                           000255  1042 	Sstm8s_clk$CLK_CCOConfig$228 ==.
                                   1043 ;	../SPL/src/stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
                                   1044 ; genPointerGet
      0092A6 C6 50 C9         [ 1] 1045 	ld	a, 0x50c9
                                   1046 ; genOr
      0092A9 1A 03            [ 1] 1047 	or	a, (0x03, sp)
                                   1048 ; genPointerSet
      0092AB C7 50 C9         [ 1] 1049 	ld	0x50c9, a
                           00025D  1050 	Sstm8s_clk$CLK_CCOConfig$229 ==.
                                   1051 ;	../SPL/src/stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
                                   1052 ; genPointerGet
      0092AE C6 50 C9         [ 1] 1053 	ld	a, 0x50c9
                                   1054 ; genOr
      0092B1 AA 01            [ 1] 1055 	or	a, #0x01
                                   1056 ; genPointerSet
      0092B3 C7 50 C9         [ 1] 1057 	ld	0x50c9, a
                                   1058 ; genLabel
      0092B6                       1059 00101$:
                           000265  1060 	Sstm8s_clk$CLK_CCOConfig$230 ==.
                                   1061 ;	../SPL/src/stm8s_clk.c: 449: }
                                   1062 ; genEndFunction
                           000265  1063 	Sstm8s_clk$CLK_CCOConfig$231 ==.
                           000265  1064 	XG$CLK_CCOConfig$0$0 ==.
      0092B6 81               [ 4] 1065 	ret
                           000266  1066 	Sstm8s_clk$CLK_CCOConfig$232 ==.
                           000266  1067 	Sstm8s_clk$CLK_ITConfig$233 ==.
                                   1068 ;	../SPL/src/stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                   1069 ; genLabel
                                   1070 ;	-----------------------------------------
                                   1071 ;	 function CLK_ITConfig
                                   1072 ;	-----------------------------------------
                                   1073 ;	Register assignment is optimal.
                                   1074 ;	Stack space usage: 1 bytes.
      0092B7                       1075 _CLK_ITConfig:
                           000266  1076 	Sstm8s_clk$CLK_ITConfig$234 ==.
      0092B7 88               [ 1] 1077 	push	a
                           000267  1078 	Sstm8s_clk$CLK_ITConfig$235 ==.
                           000267  1079 	Sstm8s_clk$CLK_ITConfig$236 ==.
                                   1080 ;	../SPL/src/stm8s_clk.c: 467: switch (CLK_IT)
                                   1081 ; genCmpEQorNE
      0092B8 7B 04            [ 1] 1082 	ld	a, (0x04, sp)
      0092BA A1 0C            [ 1] 1083 	cp	a, #0x0c
      0092BC 26 07            [ 1] 1084 	jrne	00140$
      0092BE A6 01            [ 1] 1085 	ld	a, #0x01
      0092C0 6B 01            [ 1] 1086 	ld	(0x01, sp), a
      0092C2 CC 92 C7         [ 2] 1087 	jp	00141$
      0092C5                       1088 00140$:
      0092C5 0F 01            [ 1] 1089 	clr	(0x01, sp)
      0092C7                       1090 00141$:
                           000276  1091 	Sstm8s_clk$CLK_ITConfig$237 ==.
                                   1092 ; genCmpEQorNE
      0092C7 7B 04            [ 1] 1093 	ld	a, (0x04, sp)
      0092C9 A1 1C            [ 1] 1094 	cp	a, #0x1c
      0092CB 26 05            [ 1] 1095 	jrne	00143$
      0092CD A6 01            [ 1] 1096 	ld	a, #0x01
      0092CF CC 92 D3         [ 2] 1097 	jp	00144$
      0092D2                       1098 00143$:
      0092D2 4F               [ 1] 1099 	clr	a
      0092D3                       1100 00144$:
                           000282  1101 	Sstm8s_clk$CLK_ITConfig$238 ==.
                           000282  1102 	Sstm8s_clk$CLK_ITConfig$239 ==.
                                   1103 ;	../SPL/src/stm8s_clk.c: 465: if (NewState != DISABLE)
                                   1104 ; genIfx
      0092D3 0D 05            [ 1] 1105 	tnz	(0x05, sp)
      0092D5 26 03            [ 1] 1106 	jrne	00145$
      0092D7 CC 92 FD         [ 2] 1107 	jp	00110$
      0092DA                       1108 00145$:
                           000289  1109 	Sstm8s_clk$CLK_ITConfig$240 ==.
                           000289  1110 	Sstm8s_clk$CLK_ITConfig$241 ==.
                                   1111 ;	../SPL/src/stm8s_clk.c: 467: switch (CLK_IT)
                                   1112 ; genIfx
      0092DA 0D 01            [ 1] 1113 	tnz	(0x01, sp)
      0092DC 27 03            [ 1] 1114 	jreq	00146$
      0092DE CC 92 F2         [ 2] 1115 	jp	00102$
      0092E1                       1116 00146$:
                                   1117 ; genIfx
      0092E1 4D               [ 1] 1118 	tnz	a
      0092E2 26 03            [ 1] 1119 	jrne	00147$
      0092E4 CC 93 1D         [ 2] 1120 	jp	00112$
      0092E7                       1121 00147$:
                           000296  1122 	Sstm8s_clk$CLK_ITConfig$242 ==.
                           000296  1123 	Sstm8s_clk$CLK_ITConfig$243 ==.
                                   1124 ;	../SPL/src/stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
                                   1125 ; genPointerGet
      0092E7 C6 50 C5         [ 1] 1126 	ld	a, 0x50c5
                                   1127 ; genOr
      0092EA AA 04            [ 1] 1128 	or	a, #0x04
                                   1129 ; genPointerSet
      0092EC C7 50 C5         [ 1] 1130 	ld	0x50c5, a
                           00029E  1131 	Sstm8s_clk$CLK_ITConfig$244 ==.
                                   1132 ;	../SPL/src/stm8s_clk.c: 471: break;
                                   1133 ; genGoto
      0092EF CC 93 1D         [ 2] 1134 	jp	00112$
                           0002A1  1135 	Sstm8s_clk$CLK_ITConfig$245 ==.
                                   1136 ;	../SPL/src/stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
                                   1137 ; genLabel
      0092F2                       1138 00102$:
                           0002A1  1139 	Sstm8s_clk$CLK_ITConfig$246 ==.
                                   1140 ;	../SPL/src/stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
                                   1141 ; genPointerGet
      0092F2 C6 50 C8         [ 1] 1142 	ld	a, 0x50c8
                                   1143 ; genOr
      0092F5 AA 04            [ 1] 1144 	or	a, #0x04
                                   1145 ; genPointerSet
      0092F7 C7 50 C8         [ 1] 1146 	ld	0x50c8, a
                           0002A9  1147 	Sstm8s_clk$CLK_ITConfig$247 ==.
                                   1148 ;	../SPL/src/stm8s_clk.c: 474: break;
                                   1149 ; genGoto
      0092FA CC 93 1D         [ 2] 1150 	jp	00112$
                           0002AC  1151 	Sstm8s_clk$CLK_ITConfig$248 ==.
                           0002AC  1152 	Sstm8s_clk$CLK_ITConfig$249 ==.
                                   1153 ;	../SPL/src/stm8s_clk.c: 477: }
                                   1154 ; genLabel
      0092FD                       1155 00110$:
                           0002AC  1156 	Sstm8s_clk$CLK_ITConfig$250 ==.
                           0002AC  1157 	Sstm8s_clk$CLK_ITConfig$251 ==.
                                   1158 ;	../SPL/src/stm8s_clk.c: 481: switch (CLK_IT)
                                   1159 ; genIfx
      0092FD 0D 01            [ 1] 1160 	tnz	(0x01, sp)
      0092FF 27 03            [ 1] 1161 	jreq	00148$
      009301 CC 93 15         [ 2] 1162 	jp	00106$
      009304                       1163 00148$:
                                   1164 ; genIfx
      009304 4D               [ 1] 1165 	tnz	a
      009305 26 03            [ 1] 1166 	jrne	00149$
      009307 CC 93 1D         [ 2] 1167 	jp	00112$
      00930A                       1168 00149$:
                           0002B9  1169 	Sstm8s_clk$CLK_ITConfig$252 ==.
                           0002B9  1170 	Sstm8s_clk$CLK_ITConfig$253 ==.
                                   1171 ;	../SPL/src/stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
                                   1172 ; genPointerGet
      00930A C6 50 C5         [ 1] 1173 	ld	a, 0x50c5
                                   1174 ; genAnd
      00930D A4 FB            [ 1] 1175 	and	a, #0xfb
                                   1176 ; genPointerSet
      00930F C7 50 C5         [ 1] 1177 	ld	0x50c5, a
                           0002C1  1178 	Sstm8s_clk$CLK_ITConfig$254 ==.
                                   1179 ;	../SPL/src/stm8s_clk.c: 485: break;
                                   1180 ; genGoto
      009312 CC 93 1D         [ 2] 1181 	jp	00112$
                           0002C4  1182 	Sstm8s_clk$CLK_ITConfig$255 ==.
                                   1183 ;	../SPL/src/stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
                                   1184 ; genLabel
      009315                       1185 00106$:
                           0002C4  1186 	Sstm8s_clk$CLK_ITConfig$256 ==.
                                   1187 ;	../SPL/src/stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
                                   1188 ; genPointerGet
      009315 C6 50 C8         [ 1] 1189 	ld	a, 0x50c8
                                   1190 ; genAnd
      009318 A4 FB            [ 1] 1191 	and	a, #0xfb
                                   1192 ; genPointerSet
      00931A C7 50 C8         [ 1] 1193 	ld	0x50c8, a
                           0002CC  1194 	Sstm8s_clk$CLK_ITConfig$257 ==.
                           0002CC  1195 	Sstm8s_clk$CLK_ITConfig$258 ==.
                                   1196 ;	../SPL/src/stm8s_clk.c: 491: }
                                   1197 ; genLabel
      00931D                       1198 00112$:
                           0002CC  1199 	Sstm8s_clk$CLK_ITConfig$259 ==.
                                   1200 ;	../SPL/src/stm8s_clk.c: 493: }
                                   1201 ; genEndFunction
      00931D 84               [ 1] 1202 	pop	a
                           0002CD  1203 	Sstm8s_clk$CLK_ITConfig$260 ==.
                           0002CD  1204 	Sstm8s_clk$CLK_ITConfig$261 ==.
                           0002CD  1205 	XG$CLK_ITConfig$0$0 ==.
      00931E 81               [ 4] 1206 	ret
                           0002CE  1207 	Sstm8s_clk$CLK_ITConfig$262 ==.
                           0002CE  1208 	Sstm8s_clk$CLK_SYSCLKConfig$263 ==.
                                   1209 ;	../SPL/src/stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                   1210 ; genLabel
                                   1211 ;	-----------------------------------------
                                   1212 ;	 function CLK_SYSCLKConfig
                                   1213 ;	-----------------------------------------
                                   1214 ;	Register assignment is optimal.
                                   1215 ;	Stack space usage: 1 bytes.
      00931F                       1216 _CLK_SYSCLKConfig:
                           0002CE  1217 	Sstm8s_clk$CLK_SYSCLKConfig$264 ==.
      00931F 88               [ 1] 1218 	push	a
                           0002CF  1219 	Sstm8s_clk$CLK_SYSCLKConfig$265 ==.
                           0002CF  1220 	Sstm8s_clk$CLK_SYSCLKConfig$266 ==.
                                   1221 ;	../SPL/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
                                   1222 ; genPointerGet
      009320 C6 50 C6         [ 1] 1223 	ld	a, 0x50c6
                           0002D2  1224 	Sstm8s_clk$CLK_SYSCLKConfig$267 ==.
                                   1225 ;	../SPL/src/stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
                                   1226 ; genAnd
      009323 0D 04            [ 1] 1227 	tnz	(0x04, sp)
      009325 2A 03            [ 1] 1228 	jrpl	00111$
      009327 CC 93 40         [ 2] 1229 	jp	00102$
      00932A                       1230 00111$:
                                   1231 ; skipping generated iCode
                           0002D9  1232 	Sstm8s_clk$CLK_SYSCLKConfig$268 ==.
                           0002D9  1233 	Sstm8s_clk$CLK_SYSCLKConfig$269 ==.
                                   1234 ;	../SPL/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
                                   1235 ; genAnd
      00932A A4 E7            [ 1] 1236 	and	a, #0xe7
                                   1237 ; genPointerSet
      00932C C7 50 C6         [ 1] 1238 	ld	0x50c6, a
                           0002DE  1239 	Sstm8s_clk$CLK_SYSCLKConfig$270 ==.
                                   1240 ;	../SPL/src/stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
                                   1241 ; genPointerGet
      00932F C6 50 C6         [ 1] 1242 	ld	a, 0x50c6
      009332 6B 01            [ 1] 1243 	ld	(0x01, sp), a
                                   1244 ; genAnd
      009334 7B 04            [ 1] 1245 	ld	a, (0x04, sp)
      009336 A4 18            [ 1] 1246 	and	a, #0x18
                                   1247 ; genOr
      009338 1A 01            [ 1] 1248 	or	a, (0x01, sp)
                                   1249 ; genPointerSet
      00933A C7 50 C6         [ 1] 1250 	ld	0x50c6, a
                           0002EC  1251 	Sstm8s_clk$CLK_SYSCLKConfig$271 ==.
                                   1252 ; genGoto
      00933D CC 93 53         [ 2] 1253 	jp	00104$
                                   1254 ; genLabel
      009340                       1255 00102$:
                           0002EF  1256 	Sstm8s_clk$CLK_SYSCLKConfig$272 ==.
                           0002EF  1257 	Sstm8s_clk$CLK_SYSCLKConfig$273 ==.
                                   1258 ;	../SPL/src/stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
                                   1259 ; genAnd
      009340 A4 F8            [ 1] 1260 	and	a, #0xf8
                                   1261 ; genPointerSet
      009342 C7 50 C6         [ 1] 1262 	ld	0x50c6, a
                           0002F4  1263 	Sstm8s_clk$CLK_SYSCLKConfig$274 ==.
                                   1264 ;	../SPL/src/stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
                                   1265 ; genPointerGet
      009345 C6 50 C6         [ 1] 1266 	ld	a, 0x50c6
      009348 6B 01            [ 1] 1267 	ld	(0x01, sp), a
                                   1268 ; genAnd
      00934A 7B 04            [ 1] 1269 	ld	a, (0x04, sp)
      00934C A4 07            [ 1] 1270 	and	a, #0x07
                                   1271 ; genOr
      00934E 1A 01            [ 1] 1272 	or	a, (0x01, sp)
                                   1273 ; genPointerSet
      009350 C7 50 C6         [ 1] 1274 	ld	0x50c6, a
                           000302  1275 	Sstm8s_clk$CLK_SYSCLKConfig$275 ==.
                                   1276 ; genLabel
      009353                       1277 00104$:
                           000302  1278 	Sstm8s_clk$CLK_SYSCLKConfig$276 ==.
                                   1279 ;	../SPL/src/stm8s_clk.c: 515: }
                                   1280 ; genEndFunction
      009353 84               [ 1] 1281 	pop	a
                           000303  1282 	Sstm8s_clk$CLK_SYSCLKConfig$277 ==.
                           000303  1283 	Sstm8s_clk$CLK_SYSCLKConfig$278 ==.
                           000303  1284 	XG$CLK_SYSCLKConfig$0$0 ==.
      009354 81               [ 4] 1285 	ret
                           000304  1286 	Sstm8s_clk$CLK_SYSCLKConfig$279 ==.
                           000304  1287 	Sstm8s_clk$CLK_SWIMConfig$280 ==.
                                   1288 ;	../SPL/src/stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
                                   1289 ; genLabel
                                   1290 ;	-----------------------------------------
                                   1291 ;	 function CLK_SWIMConfig
                                   1292 ;	-----------------------------------------
                                   1293 ;	Register assignment is optimal.
                                   1294 ;	Stack space usage: 0 bytes.
      009355                       1295 _CLK_SWIMConfig:
                           000304  1296 	Sstm8s_clk$CLK_SWIMConfig$281 ==.
                           000304  1297 	Sstm8s_clk$CLK_SWIMConfig$282 ==.
                                   1298 ;	../SPL/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
                                   1299 ; genPointerGet
      009355 C6 50 CD         [ 1] 1300 	ld	a, 0x50cd
                           000307  1301 	Sstm8s_clk$CLK_SWIMConfig$283 ==.
                                   1302 ;	../SPL/src/stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
                                   1303 ; genIfx
      009358 0D 03            [ 1] 1304 	tnz	(0x03, sp)
      00935A 26 03            [ 1] 1305 	jrne	00111$
      00935C CC 93 67         [ 2] 1306 	jp	00102$
      00935F                       1307 00111$:
                           00030E  1308 	Sstm8s_clk$CLK_SWIMConfig$284 ==.
                           00030E  1309 	Sstm8s_clk$CLK_SWIMConfig$285 ==.
                                   1310 ;	../SPL/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
                                   1311 ; genOr
      00935F AA 01            [ 1] 1312 	or	a, #0x01
                                   1313 ; genPointerSet
      009361 C7 50 CD         [ 1] 1314 	ld	0x50cd, a
                           000313  1315 	Sstm8s_clk$CLK_SWIMConfig$286 ==.
                                   1316 ; genGoto
      009364 CC 93 6C         [ 2] 1317 	jp	00104$
                                   1318 ; genLabel
      009367                       1319 00102$:
                           000316  1320 	Sstm8s_clk$CLK_SWIMConfig$287 ==.
                           000316  1321 	Sstm8s_clk$CLK_SWIMConfig$288 ==.
                                   1322 ;	../SPL/src/stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
                                   1323 ; genAnd
      009367 A4 FE            [ 1] 1324 	and	a, #0xfe
                                   1325 ; genPointerSet
      009369 C7 50 CD         [ 1] 1326 	ld	0x50cd, a
                           00031B  1327 	Sstm8s_clk$CLK_SWIMConfig$289 ==.
                                   1328 ; genLabel
      00936C                       1329 00104$:
                           00031B  1330 	Sstm8s_clk$CLK_SWIMConfig$290 ==.
                                   1331 ;	../SPL/src/stm8s_clk.c: 538: }
                                   1332 ; genEndFunction
                           00031B  1333 	Sstm8s_clk$CLK_SWIMConfig$291 ==.
                           00031B  1334 	XG$CLK_SWIMConfig$0$0 ==.
      00936C 81               [ 4] 1335 	ret
                           00031C  1336 	Sstm8s_clk$CLK_SWIMConfig$292 ==.
                           00031C  1337 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$293 ==.
                                   1338 ;	../SPL/src/stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
                                   1339 ; genLabel
                                   1340 ;	-----------------------------------------
                                   1341 ;	 function CLK_ClockSecuritySystemEnable
                                   1342 ;	-----------------------------------------
                                   1343 ;	Register assignment is optimal.
                                   1344 ;	Stack space usage: 0 bytes.
      00936D                       1345 _CLK_ClockSecuritySystemEnable:
                           00031C  1346 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$294 ==.
                           00031C  1347 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$295 ==.
                                   1348 ;	../SPL/src/stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
                                   1349 ; genPointerGet
      00936D C6 50 C8         [ 1] 1350 	ld	a, 0x50c8
                                   1351 ; genOr
      009370 AA 01            [ 1] 1352 	or	a, #0x01
                                   1353 ; genPointerSet
      009372 C7 50 C8         [ 1] 1354 	ld	0x50c8, a
                                   1355 ; genLabel
      009375                       1356 00101$:
                           000324  1357 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$296 ==.
                                   1358 ;	../SPL/src/stm8s_clk.c: 551: }
                                   1359 ; genEndFunction
                           000324  1360 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$297 ==.
                           000324  1361 	XG$CLK_ClockSecuritySystemEnable$0$0 ==.
      009375 81               [ 4] 1362 	ret
                           000325  1363 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$298 ==.
                           000325  1364 	Sstm8s_clk$CLK_GetSYSCLKSource$299 ==.
                                   1365 ;	../SPL/src/stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
                                   1366 ; genLabel
                                   1367 ;	-----------------------------------------
                                   1368 ;	 function CLK_GetSYSCLKSource
                                   1369 ;	-----------------------------------------
                                   1370 ;	Register assignment is optimal.
                                   1371 ;	Stack space usage: 0 bytes.
      009376                       1372 _CLK_GetSYSCLKSource:
                           000325  1373 	Sstm8s_clk$CLK_GetSYSCLKSource$300 ==.
                           000325  1374 	Sstm8s_clk$CLK_GetSYSCLKSource$301 ==.
                                   1375 ;	../SPL/src/stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
                                   1376 ; genPointerGet
      009376 C6 50 C3         [ 1] 1377 	ld	a, 0x50c3
                                   1378 ; genReturn
                                   1379 ; genLabel
      009379                       1380 00101$:
                           000328  1381 	Sstm8s_clk$CLK_GetSYSCLKSource$302 ==.
                                   1382 ;	../SPL/src/stm8s_clk.c: 562: }
                                   1383 ; genEndFunction
                           000328  1384 	Sstm8s_clk$CLK_GetSYSCLKSource$303 ==.
                           000328  1385 	XG$CLK_GetSYSCLKSource$0$0 ==.
      009379 81               [ 4] 1386 	ret
                           000329  1387 	Sstm8s_clk$CLK_GetSYSCLKSource$304 ==.
                           000329  1388 	Sstm8s_clk$CLK_GetClockFreq$305 ==.
                                   1389 ;	../SPL/src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                   1390 ; genLabel
                                   1391 ;	-----------------------------------------
                                   1392 ;	 function CLK_GetClockFreq
                                   1393 ;	-----------------------------------------
                                   1394 ;	Register assignment might be sub-optimal.
                                   1395 ;	Stack space usage: 4 bytes.
      00937A                       1396 _CLK_GetClockFreq:
                           000329  1397 	Sstm8s_clk$CLK_GetClockFreq$306 ==.
      00937A 52 04            [ 2] 1398 	sub	sp, #4
                           00032B  1399 	Sstm8s_clk$CLK_GetClockFreq$307 ==.
                           00032B  1400 	Sstm8s_clk$CLK_GetClockFreq$308 ==.
                                   1401 ;	../SPL/src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
                                   1402 ; genPointerGet
      00937C C6 50 C3         [ 1] 1403 	ld	a, 0x50c3
      00937F 6B 04            [ 1] 1404 	ld	(0x04, sp), a
                           000330  1405 	Sstm8s_clk$CLK_GetClockFreq$309 ==.
                                   1406 ;	../SPL/src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
                                   1407 ; genCmpEQorNE
      009381 7B 04            [ 1] 1408 	ld	a, (0x04, sp)
      009383 A1 E1            [ 1] 1409 	cp	a, #0xe1
      009385 26 03            [ 1] 1410 	jrne	00120$
      009387 CC 93 8D         [ 2] 1411 	jp	00121$
      00938A                       1412 00120$:
      00938A CC 93 B5         [ 2] 1413 	jp	00105$
      00938D                       1414 00121$:
                           00033C  1415 	Sstm8s_clk$CLK_GetClockFreq$310 ==.
                                   1416 ; skipping generated iCode
                           00033C  1417 	Sstm8s_clk$CLK_GetClockFreq$311 ==.
                           00033C  1418 	Sstm8s_clk$CLK_GetClockFreq$312 ==.
                                   1419 ;	../SPL/src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
                                   1420 ; genPointerGet
      00938D C6 50 C6         [ 1] 1421 	ld	a, 0x50c6
                                   1422 ; genAnd
      009390 A4 18            [ 1] 1423 	and	a, #0x18
                           000341  1424 	Sstm8s_clk$CLK_GetClockFreq$313 ==.
                                   1425 ;	../SPL/src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
                                   1426 ; genRightShiftLiteral
      009392 44               [ 1] 1427 	srl	a
      009393 44               [ 1] 1428 	srl	a
      009394 44               [ 1] 1429 	srl	a
                           000344  1430 	Sstm8s_clk$CLK_GetClockFreq$314 ==.
                                   1431 ;	../SPL/src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
                                   1432 ; skipping iCode since result will be rematerialized
                                   1433 ; genPlus
      009395 5F               [ 1] 1434 	clrw	x
      009396 97               [ 1] 1435 	ld	xl, a
      009397 1C 80 B4         [ 2] 1436 	addw	x, #(_HSIDivFactor+0)
                                   1437 ; genPointerGet
      00939A F6               [ 1] 1438 	ld	a, (x)
                           00034A  1439 	Sstm8s_clk$CLK_GetClockFreq$315 ==.
                                   1440 ;	../SPL/src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
                                   1441 ; genCast
                                   1442 ; genAssign
      00939B 5F               [ 1] 1443 	clrw	x
      00939C 97               [ 1] 1444 	ld	xl, a
      00939D 90 5F            [ 1] 1445 	clrw	y
                           00034E  1446 	Sstm8s_clk$CLK_GetClockFreq$316 ==.
                                   1447 ; genIPush
      00939F 89               [ 2] 1448 	pushw	x
                           00034F  1449 	Sstm8s_clk$CLK_GetClockFreq$317 ==.
      0093A0 90 89            [ 2] 1450 	pushw	y
                           000351  1451 	Sstm8s_clk$CLK_GetClockFreq$318 ==.
                                   1452 ; genIPush
      0093A2 4B 00            [ 1] 1453 	push	#0x00
                           000353  1454 	Sstm8s_clk$CLK_GetClockFreq$319 ==.
      0093A4 4B 24            [ 1] 1455 	push	#0x24
                           000355  1456 	Sstm8s_clk$CLK_GetClockFreq$320 ==.
      0093A6 4B F4            [ 1] 1457 	push	#0xf4
                           000357  1458 	Sstm8s_clk$CLK_GetClockFreq$321 ==.
      0093A8 4B 00            [ 1] 1459 	push	#0x00
                           000359  1460 	Sstm8s_clk$CLK_GetClockFreq$322 ==.
                                   1461 ; genCall
      0093AA CD A4 48         [ 4] 1462 	call	__divulong
      0093AD 5B 08            [ 2] 1463 	addw	sp, #8
                           00035E  1464 	Sstm8s_clk$CLK_GetClockFreq$323 ==.
      0093AF 51               [ 1] 1465 	exgw	x, y
                                   1466 ; genAssign
      0093B0 17 03            [ 2] 1467 	ldw	(0x03, sp), y
                                   1468 ; genGoto
      0093B2 CC 93 D3         [ 2] 1469 	jp	00106$
                                   1470 ; genLabel
      0093B5                       1471 00105$:
                           000364  1472 	Sstm8s_clk$CLK_GetClockFreq$324 ==.
                                   1473 ;	../SPL/src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
                                   1474 ; genCmpEQorNE
      0093B5 7B 04            [ 1] 1475 	ld	a, (0x04, sp)
      0093B7 A1 D2            [ 1] 1476 	cp	a, #0xd2
      0093B9 26 03            [ 1] 1477 	jrne	00123$
      0093BB CC 93 C1         [ 2] 1478 	jp	00124$
      0093BE                       1479 00123$:
      0093BE CC 93 CB         [ 2] 1480 	jp	00102$
      0093C1                       1481 00124$:
                           000370  1482 	Sstm8s_clk$CLK_GetClockFreq$325 ==.
                                   1483 ; skipping generated iCode
                           000370  1484 	Sstm8s_clk$CLK_GetClockFreq$326 ==.
                           000370  1485 	Sstm8s_clk$CLK_GetClockFreq$327 ==.
                                   1486 ;	../SPL/src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
                                   1487 ; genAssign
      0093C1 AE F4 00         [ 2] 1488 	ldw	x, #0xf400
      0093C4 1F 03            [ 2] 1489 	ldw	(0x03, sp), x
      0093C6 5F               [ 1] 1490 	clrw	x
      0093C7 5C               [ 1] 1491 	incw	x
                           000377  1492 	Sstm8s_clk$CLK_GetClockFreq$328 ==.
                                   1493 ; genGoto
      0093C8 CC 93 D3         [ 2] 1494 	jp	00106$
                                   1495 ; genLabel
      0093CB                       1496 00102$:
                           00037A  1497 	Sstm8s_clk$CLK_GetClockFreq$329 ==.
                           00037A  1498 	Sstm8s_clk$CLK_GetClockFreq$330 ==.
                                   1499 ;	../SPL/src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
                                   1500 ; genAssign
      0093CB AE 36 00         [ 2] 1501 	ldw	x, #0x3600
      0093CE 1F 03            [ 2] 1502 	ldw	(0x03, sp), x
      0093D0 AE 01 6E         [ 2] 1503 	ldw	x, #0x016e
                           000382  1504 	Sstm8s_clk$CLK_GetClockFreq$331 ==.
                                   1505 ; genLabel
      0093D3                       1506 00106$:
                           000382  1507 	Sstm8s_clk$CLK_GetClockFreq$332 ==.
                                   1508 ;	../SPL/src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
                                   1509 ; genReturn
      0093D3 51               [ 1] 1510 	exgw	x, y
      0093D4 1E 03            [ 2] 1511 	ldw	x, (0x03, sp)
                                   1512 ; genLabel
      0093D6                       1513 00107$:
                           000385  1514 	Sstm8s_clk$CLK_GetClockFreq$333 ==.
                                   1515 ;	../SPL/src/stm8s_clk.c: 595: }
                                   1516 ; genEndFunction
      0093D6 5B 04            [ 2] 1517 	addw	sp, #4
                           000387  1518 	Sstm8s_clk$CLK_GetClockFreq$334 ==.
                           000387  1519 	Sstm8s_clk$CLK_GetClockFreq$335 ==.
                           000387  1520 	XG$CLK_GetClockFreq$0$0 ==.
      0093D8 81               [ 4] 1521 	ret
                           000388  1522 	Sstm8s_clk$CLK_GetClockFreq$336 ==.
                           000388  1523 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$337 ==.
                                   1524 ;	../SPL/src/stm8s_clk.c: 604: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
                                   1525 ; genLabel
                                   1526 ;	-----------------------------------------
                                   1527 ;	 function CLK_AdjustHSICalibrationValue
                                   1528 ;	-----------------------------------------
                                   1529 ;	Register assignment is optimal.
                                   1530 ;	Stack space usage: 0 bytes.
      0093D9                       1531 _CLK_AdjustHSICalibrationValue:
                           000388  1532 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$338 ==.
                           000388  1533 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$339 ==.
                                   1534 ;	../SPL/src/stm8s_clk.c: 610: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
                                   1535 ; genPointerGet
      0093D9 C6 50 CC         [ 1] 1536 	ld	a, 0x50cc
                                   1537 ; genAnd
      0093DC A4 F8            [ 1] 1538 	and	a, #0xf8
                                   1539 ; genOr
      0093DE 1A 03            [ 1] 1540 	or	a, (0x03, sp)
                                   1541 ; genPointerSet
      0093E0 C7 50 CC         [ 1] 1542 	ld	0x50cc, a
                                   1543 ; genLabel
      0093E3                       1544 00101$:
                           000392  1545 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$340 ==.
                                   1546 ;	../SPL/src/stm8s_clk.c: 611: }
                                   1547 ; genEndFunction
                           000392  1548 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$341 ==.
                           000392  1549 	XG$CLK_AdjustHSICalibrationValue$0$0 ==.
      0093E3 81               [ 4] 1550 	ret
                           000393  1551 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$342 ==.
                           000393  1552 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$343 ==.
                                   1553 ;	../SPL/src/stm8s_clk.c: 622: void CLK_SYSCLKEmergencyClear(void)
                                   1554 ; genLabel
                                   1555 ;	-----------------------------------------
                                   1556 ;	 function CLK_SYSCLKEmergencyClear
                                   1557 ;	-----------------------------------------
                                   1558 ;	Register assignment is optimal.
                                   1559 ;	Stack space usage: 0 bytes.
      0093E4                       1560 _CLK_SYSCLKEmergencyClear:
                           000393  1561 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$344 ==.
                           000393  1562 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$345 ==.
                                   1563 ;	../SPL/src/stm8s_clk.c: 624: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
                                   1564 ; genPointerGet
      0093E4 C6 50 C5         [ 1] 1565 	ld	a, 0x50c5
                                   1566 ; genAnd
      0093E7 A4 FE            [ 1] 1567 	and	a, #0xfe
                                   1568 ; genPointerSet
      0093E9 C7 50 C5         [ 1] 1569 	ld	0x50c5, a
                                   1570 ; genLabel
      0093EC                       1571 00101$:
                           00039B  1572 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$346 ==.
                                   1573 ;	../SPL/src/stm8s_clk.c: 625: }
                                   1574 ; genEndFunction
                           00039B  1575 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$347 ==.
                           00039B  1576 	XG$CLK_SYSCLKEmergencyClear$0$0 ==.
      0093EC 81               [ 4] 1577 	ret
                           00039C  1578 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$348 ==.
                           00039C  1579 	Sstm8s_clk$CLK_GetFlagStatus$349 ==.
                                   1580 ;	../SPL/src/stm8s_clk.c: 634: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                   1581 ; genLabel
                                   1582 ;	-----------------------------------------
                                   1583 ;	 function CLK_GetFlagStatus
                                   1584 ;	-----------------------------------------
                                   1585 ;	Register assignment might be sub-optimal.
                                   1586 ;	Stack space usage: 1 bytes.
      0093ED                       1587 _CLK_GetFlagStatus:
                           00039C  1588 	Sstm8s_clk$CLK_GetFlagStatus$350 ==.
      0093ED 88               [ 1] 1589 	push	a
                           00039D  1590 	Sstm8s_clk$CLK_GetFlagStatus$351 ==.
                           00039D  1591 	Sstm8s_clk$CLK_GetFlagStatus$352 ==.
                                   1592 ;	../SPL/src/stm8s_clk.c: 644: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
                                   1593 ; genCast
                                   1594 ; genAssign
      0093EE 1E 04            [ 2] 1595 	ldw	x, (0x04, sp)
                                   1596 ; genAnd
      0093F0 4F               [ 1] 1597 	clr	a
                                   1598 ; genAssign
                           0003A0  1599 	Sstm8s_clk$CLK_GetFlagStatus$353 ==.
                                   1600 ;	../SPL/src/stm8s_clk.c: 647: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
                                   1601 ; genCast
                                   1602 ; genAssign
      0093F1 97               [ 1] 1603 	ld	xl, a
                                   1604 ; genCmpEQorNE
      0093F2 A3 01 00         [ 2] 1605 	cpw	x, #0x0100
      0093F5 26 03            [ 1] 1606 	jrne	00144$
      0093F7 CC 93 FD         [ 2] 1607 	jp	00145$
      0093FA                       1608 00144$:
      0093FA CC 94 03         [ 2] 1609 	jp	00111$
      0093FD                       1610 00145$:
                           0003AC  1611 	Sstm8s_clk$CLK_GetFlagStatus$354 ==.
                                   1612 ; skipping generated iCode
                           0003AC  1613 	Sstm8s_clk$CLK_GetFlagStatus$355 ==.
                           0003AC  1614 	Sstm8s_clk$CLK_GetFlagStatus$356 ==.
                                   1615 ;	../SPL/src/stm8s_clk.c: 649: tmpreg = CLK->ICKR;
                                   1616 ; genPointerGet
      0093FD C6 50 C0         [ 1] 1617 	ld	a, 0x50c0
                           0003AF  1618 	Sstm8s_clk$CLK_GetFlagStatus$357 ==.
                                   1619 ; genGoto
      009400 CC 94 39         [ 2] 1620 	jp	00112$
                                   1621 ; genLabel
      009403                       1622 00111$:
                           0003B2  1623 	Sstm8s_clk$CLK_GetFlagStatus$358 ==.
                                   1624 ;	../SPL/src/stm8s_clk.c: 651: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
                                   1625 ; genCmpEQorNE
      009403 A3 02 00         [ 2] 1626 	cpw	x, #0x0200
      009406 26 03            [ 1] 1627 	jrne	00147$
      009408 CC 94 0E         [ 2] 1628 	jp	00148$
      00940B                       1629 00147$:
      00940B CC 94 14         [ 2] 1630 	jp	00108$
      00940E                       1631 00148$:
                           0003BD  1632 	Sstm8s_clk$CLK_GetFlagStatus$359 ==.
                                   1633 ; skipping generated iCode
                           0003BD  1634 	Sstm8s_clk$CLK_GetFlagStatus$360 ==.
                           0003BD  1635 	Sstm8s_clk$CLK_GetFlagStatus$361 ==.
                                   1636 ;	../SPL/src/stm8s_clk.c: 653: tmpreg = CLK->ECKR;
                                   1637 ; genPointerGet
      00940E C6 50 C1         [ 1] 1638 	ld	a, 0x50c1
                           0003C0  1639 	Sstm8s_clk$CLK_GetFlagStatus$362 ==.
                                   1640 ; genGoto
      009411 CC 94 39         [ 2] 1641 	jp	00112$
                                   1642 ; genLabel
      009414                       1643 00108$:
                           0003C3  1644 	Sstm8s_clk$CLK_GetFlagStatus$363 ==.
                                   1645 ;	../SPL/src/stm8s_clk.c: 655: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
                                   1646 ; genCmpEQorNE
      009414 A3 03 00         [ 2] 1647 	cpw	x, #0x0300
      009417 26 03            [ 1] 1648 	jrne	00150$
      009419 CC 94 1F         [ 2] 1649 	jp	00151$
      00941C                       1650 00150$:
      00941C CC 94 25         [ 2] 1651 	jp	00105$
      00941F                       1652 00151$:
                           0003CE  1653 	Sstm8s_clk$CLK_GetFlagStatus$364 ==.
                                   1654 ; skipping generated iCode
                           0003CE  1655 	Sstm8s_clk$CLK_GetFlagStatus$365 ==.
                           0003CE  1656 	Sstm8s_clk$CLK_GetFlagStatus$366 ==.
                                   1657 ;	../SPL/src/stm8s_clk.c: 657: tmpreg = CLK->SWCR;
                                   1658 ; genPointerGet
      00941F C6 50 C5         [ 1] 1659 	ld	a, 0x50c5
                           0003D1  1660 	Sstm8s_clk$CLK_GetFlagStatus$367 ==.
                                   1661 ; genGoto
      009422 CC 94 39         [ 2] 1662 	jp	00112$
                                   1663 ; genLabel
      009425                       1664 00105$:
                           0003D4  1665 	Sstm8s_clk$CLK_GetFlagStatus$368 ==.
                                   1666 ;	../SPL/src/stm8s_clk.c: 659: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
                                   1667 ; genCmpEQorNE
      009425 A3 04 00         [ 2] 1668 	cpw	x, #0x0400
      009428 26 03            [ 1] 1669 	jrne	00153$
      00942A CC 94 30         [ 2] 1670 	jp	00154$
      00942D                       1671 00153$:
      00942D CC 94 36         [ 2] 1672 	jp	00102$
      009430                       1673 00154$:
                           0003DF  1674 	Sstm8s_clk$CLK_GetFlagStatus$369 ==.
                                   1675 ; skipping generated iCode
                           0003DF  1676 	Sstm8s_clk$CLK_GetFlagStatus$370 ==.
                           0003DF  1677 	Sstm8s_clk$CLK_GetFlagStatus$371 ==.
                                   1678 ;	../SPL/src/stm8s_clk.c: 661: tmpreg = CLK->CSSR;
                                   1679 ; genPointerGet
      009430 C6 50 C8         [ 1] 1680 	ld	a, 0x50c8
                           0003E2  1681 	Sstm8s_clk$CLK_GetFlagStatus$372 ==.
                                   1682 ; genGoto
      009433 CC 94 39         [ 2] 1683 	jp	00112$
                                   1684 ; genLabel
      009436                       1685 00102$:
                           0003E5  1686 	Sstm8s_clk$CLK_GetFlagStatus$373 ==.
                           0003E5  1687 	Sstm8s_clk$CLK_GetFlagStatus$374 ==.
                                   1688 ;	../SPL/src/stm8s_clk.c: 665: tmpreg = CLK->CCOR;
                                   1689 ; genPointerGet
      009436 C6 50 C9         [ 1] 1690 	ld	a, 0x50c9
                           0003E8  1691 	Sstm8s_clk$CLK_GetFlagStatus$375 ==.
                                   1692 ; genLabel
      009439                       1693 00112$:
                           0003E8  1694 	Sstm8s_clk$CLK_GetFlagStatus$376 ==.
                                   1695 ;	../SPL/src/stm8s_clk.c: 668: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
                                   1696 ; genCast
                                   1697 ; genAssign
      009439 88               [ 1] 1698 	push	a
                           0003E9  1699 	Sstm8s_clk$CLK_GetFlagStatus$377 ==.
      00943A 7B 06            [ 1] 1700 	ld	a, (0x06, sp)
      00943C 6B 02            [ 1] 1701 	ld	(0x02, sp), a
      00943E 84               [ 1] 1702 	pop	a
                           0003EE  1703 	Sstm8s_clk$CLK_GetFlagStatus$378 ==.
                                   1704 ; genAnd
      00943F 14 01            [ 1] 1705 	and	a, (0x01, sp)
                                   1706 ; genIfx
      009441 4D               [ 1] 1707 	tnz	a
      009442 26 03            [ 1] 1708 	jrne	00155$
      009444 CC 94 4C         [ 2] 1709 	jp	00114$
      009447                       1710 00155$:
                           0003F6  1711 	Sstm8s_clk$CLK_GetFlagStatus$379 ==.
                           0003F6  1712 	Sstm8s_clk$CLK_GetFlagStatus$380 ==.
                                   1713 ;	../SPL/src/stm8s_clk.c: 670: bitstatus = SET;
                                   1714 ; genAssign
      009447 A6 01            [ 1] 1715 	ld	a, #0x01
                           0003F8  1716 	Sstm8s_clk$CLK_GetFlagStatus$381 ==.
                                   1717 ; genGoto
      009449 CC 94 4D         [ 2] 1718 	jp	00115$
                                   1719 ; genLabel
      00944C                       1720 00114$:
                           0003FB  1721 	Sstm8s_clk$CLK_GetFlagStatus$382 ==.
                           0003FB  1722 	Sstm8s_clk$CLK_GetFlagStatus$383 ==.
                                   1723 ;	../SPL/src/stm8s_clk.c: 674: bitstatus = RESET;
                                   1724 ; genAssign
      00944C 4F               [ 1] 1725 	clr	a
                           0003FC  1726 	Sstm8s_clk$CLK_GetFlagStatus$384 ==.
                                   1727 ; genLabel
      00944D                       1728 00115$:
                           0003FC  1729 	Sstm8s_clk$CLK_GetFlagStatus$385 ==.
                                   1730 ;	../SPL/src/stm8s_clk.c: 678: return((FlagStatus)bitstatus);
                                   1731 ; genReturn
                                   1732 ; genLabel
      00944D                       1733 00116$:
                           0003FC  1734 	Sstm8s_clk$CLK_GetFlagStatus$386 ==.
                                   1735 ;	../SPL/src/stm8s_clk.c: 679: }
                                   1736 ; genEndFunction
      00944D 5B 01            [ 2] 1737 	addw	sp, #1
                           0003FE  1738 	Sstm8s_clk$CLK_GetFlagStatus$387 ==.
                           0003FE  1739 	Sstm8s_clk$CLK_GetFlagStatus$388 ==.
                           0003FE  1740 	XG$CLK_GetFlagStatus$0$0 ==.
      00944F 81               [ 4] 1741 	ret
                           0003FF  1742 	Sstm8s_clk$CLK_GetFlagStatus$389 ==.
                           0003FF  1743 	Sstm8s_clk$CLK_GetITStatus$390 ==.
                                   1744 ;	../SPL/src/stm8s_clk.c: 687: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                   1745 ; genLabel
                                   1746 ;	-----------------------------------------
                                   1747 ;	 function CLK_GetITStatus
                                   1748 ;	-----------------------------------------
                                   1749 ;	Register assignment is optimal.
                                   1750 ;	Stack space usage: 0 bytes.
      009450                       1751 _CLK_GetITStatus:
                           0003FF  1752 	Sstm8s_clk$CLK_GetITStatus$391 ==.
                           0003FF  1753 	Sstm8s_clk$CLK_GetITStatus$392 ==.
                                   1754 ;	../SPL/src/stm8s_clk.c: 694: if (CLK_IT == CLK_IT_SWIF)
                                   1755 ; genCmpEQorNE
      009450 7B 03            [ 1] 1756 	ld	a, (0x03, sp)
      009452 A1 1C            [ 1] 1757 	cp	a, #0x1c
      009454 26 03            [ 1] 1758 	jrne	00128$
      009456 CC 94 5C         [ 2] 1759 	jp	00129$
      009459                       1760 00128$:
      009459 CC 94 74         [ 2] 1761 	jp	00108$
      00945C                       1762 00129$:
                           00040B  1763 	Sstm8s_clk$CLK_GetITStatus$393 ==.
                                   1764 ; skipping generated iCode
                           00040B  1765 	Sstm8s_clk$CLK_GetITStatus$394 ==.
                           00040B  1766 	Sstm8s_clk$CLK_GetITStatus$395 ==.
                                   1767 ;	../SPL/src/stm8s_clk.c: 697: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
                                   1768 ; genPointerGet
      00945C C6 50 C5         [ 1] 1769 	ld	a, 0x50c5
                                   1770 ; genAnd
      00945F 14 03            [ 1] 1771 	and	a, (0x03, sp)
                                   1772 ; genCmpEQorNE
      009461 A1 0C            [ 1] 1773 	cp	a, #0x0c
      009463 26 03            [ 1] 1774 	jrne	00131$
      009465 CC 94 6B         [ 2] 1775 	jp	00132$
      009468                       1776 00131$:
      009468 CC 94 70         [ 2] 1777 	jp	00102$
      00946B                       1778 00132$:
                           00041A  1779 	Sstm8s_clk$CLK_GetITStatus$396 ==.
                                   1780 ; skipping generated iCode
                           00041A  1781 	Sstm8s_clk$CLK_GetITStatus$397 ==.
                           00041A  1782 	Sstm8s_clk$CLK_GetITStatus$398 ==.
                                   1783 ;	../SPL/src/stm8s_clk.c: 699: bitstatus = SET;
                                   1784 ; genAssign
      00946B A6 01            [ 1] 1785 	ld	a, #0x01
                           00041C  1786 	Sstm8s_clk$CLK_GetITStatus$399 ==.
                                   1787 ; genGoto
      00946D CC 94 89         [ 2] 1788 	jp	00109$
                                   1789 ; genLabel
      009470                       1790 00102$:
                           00041F  1791 	Sstm8s_clk$CLK_GetITStatus$400 ==.
                           00041F  1792 	Sstm8s_clk$CLK_GetITStatus$401 ==.
                                   1793 ;	../SPL/src/stm8s_clk.c: 703: bitstatus = RESET;
                                   1794 ; genAssign
      009470 4F               [ 1] 1795 	clr	a
                           000420  1796 	Sstm8s_clk$CLK_GetITStatus$402 ==.
                                   1797 ; genGoto
      009471 CC 94 89         [ 2] 1798 	jp	00109$
                                   1799 ; genLabel
      009474                       1800 00108$:
                           000423  1801 	Sstm8s_clk$CLK_GetITStatus$403 ==.
                           000423  1802 	Sstm8s_clk$CLK_GetITStatus$404 ==.
                                   1803 ;	../SPL/src/stm8s_clk.c: 709: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
                                   1804 ; genPointerGet
      009474 C6 50 C8         [ 1] 1805 	ld	a, 0x50c8
                                   1806 ; genAnd
      009477 14 03            [ 1] 1807 	and	a, (0x03, sp)
                                   1808 ; genCmpEQorNE
      009479 A1 0C            [ 1] 1809 	cp	a, #0x0c
      00947B 26 03            [ 1] 1810 	jrne	00134$
      00947D CC 94 83         [ 2] 1811 	jp	00135$
      009480                       1812 00134$:
      009480 CC 94 88         [ 2] 1813 	jp	00105$
      009483                       1814 00135$:
                           000432  1815 	Sstm8s_clk$CLK_GetITStatus$405 ==.
                                   1816 ; skipping generated iCode
                           000432  1817 	Sstm8s_clk$CLK_GetITStatus$406 ==.
                           000432  1818 	Sstm8s_clk$CLK_GetITStatus$407 ==.
                                   1819 ;	../SPL/src/stm8s_clk.c: 711: bitstatus = SET;
                                   1820 ; genAssign
      009483 A6 01            [ 1] 1821 	ld	a, #0x01
                           000434  1822 	Sstm8s_clk$CLK_GetITStatus$408 ==.
                                   1823 ; genGoto
      009485 CC 94 89         [ 2] 1824 	jp	00109$
                                   1825 ; genLabel
      009488                       1826 00105$:
                           000437  1827 	Sstm8s_clk$CLK_GetITStatus$409 ==.
                           000437  1828 	Sstm8s_clk$CLK_GetITStatus$410 ==.
                                   1829 ;	../SPL/src/stm8s_clk.c: 715: bitstatus = RESET;
                                   1830 ; genAssign
      009488 4F               [ 1] 1831 	clr	a
                           000438  1832 	Sstm8s_clk$CLK_GetITStatus$411 ==.
                                   1833 ; genLabel
      009489                       1834 00109$:
                           000438  1835 	Sstm8s_clk$CLK_GetITStatus$412 ==.
                                   1836 ;	../SPL/src/stm8s_clk.c: 720: return bitstatus;
                                   1837 ; genReturn
                                   1838 ; genLabel
      009489                       1839 00110$:
                           000438  1840 	Sstm8s_clk$CLK_GetITStatus$413 ==.
                                   1841 ;	../SPL/src/stm8s_clk.c: 721: }
                                   1842 ; genEndFunction
                           000438  1843 	Sstm8s_clk$CLK_GetITStatus$414 ==.
                           000438  1844 	XG$CLK_GetITStatus$0$0 ==.
      009489 81               [ 4] 1845 	ret
                           000439  1846 	Sstm8s_clk$CLK_GetITStatus$415 ==.
                           000439  1847 	Sstm8s_clk$CLK_ClearITPendingBit$416 ==.
                                   1848 ;	../SPL/src/stm8s_clk.c: 729: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                   1849 ; genLabel
                                   1850 ;	-----------------------------------------
                                   1851 ;	 function CLK_ClearITPendingBit
                                   1852 ;	-----------------------------------------
                                   1853 ;	Register assignment is optimal.
                                   1854 ;	Stack space usage: 0 bytes.
      00948A                       1855 _CLK_ClearITPendingBit:
                           000439  1856 	Sstm8s_clk$CLK_ClearITPendingBit$417 ==.
                           000439  1857 	Sstm8s_clk$CLK_ClearITPendingBit$418 ==.
                                   1858 ;	../SPL/src/stm8s_clk.c: 734: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
                                   1859 ; genCmpEQorNE
      00948A 7B 03            [ 1] 1860 	ld	a, (0x03, sp)
      00948C A1 0C            [ 1] 1861 	cp	a, #0x0c
      00948E 26 03            [ 1] 1862 	jrne	00112$
      009490 CC 94 96         [ 2] 1863 	jp	00113$
      009493                       1864 00112$:
      009493 CC 94 A1         [ 2] 1865 	jp	00102$
      009496                       1866 00113$:
                           000445  1867 	Sstm8s_clk$CLK_ClearITPendingBit$419 ==.
                                   1868 ; skipping generated iCode
                           000445  1869 	Sstm8s_clk$CLK_ClearITPendingBit$420 ==.
                           000445  1870 	Sstm8s_clk$CLK_ClearITPendingBit$421 ==.
                                   1871 ;	../SPL/src/stm8s_clk.c: 737: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
                                   1872 ; genPointerGet
      009496 C6 50 C8         [ 1] 1873 	ld	a, 0x50c8
                                   1874 ; genAnd
      009499 A4 F7            [ 1] 1875 	and	a, #0xf7
                                   1876 ; genPointerSet
      00949B C7 50 C8         [ 1] 1877 	ld	0x50c8, a
                           00044D  1878 	Sstm8s_clk$CLK_ClearITPendingBit$422 ==.
                                   1879 ; genGoto
      00949E CC 94 A9         [ 2] 1880 	jp	00104$
                                   1881 ; genLabel
      0094A1                       1882 00102$:
                           000450  1883 	Sstm8s_clk$CLK_ClearITPendingBit$423 ==.
                           000450  1884 	Sstm8s_clk$CLK_ClearITPendingBit$424 ==.
                                   1885 ;	../SPL/src/stm8s_clk.c: 742: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
                                   1886 ; genPointerGet
      0094A1 C6 50 C5         [ 1] 1887 	ld	a, 0x50c5
                                   1888 ; genAnd
      0094A4 A4 F7            [ 1] 1889 	and	a, #0xf7
                                   1890 ; genPointerSet
      0094A6 C7 50 C5         [ 1] 1891 	ld	0x50c5, a
                           000458  1892 	Sstm8s_clk$CLK_ClearITPendingBit$425 ==.
                                   1893 ; genLabel
      0094A9                       1894 00104$:
                           000458  1895 	Sstm8s_clk$CLK_ClearITPendingBit$426 ==.
                                   1896 ;	../SPL/src/stm8s_clk.c: 745: }
                                   1897 ; genEndFunction
                           000458  1898 	Sstm8s_clk$CLK_ClearITPendingBit$427 ==.
                           000458  1899 	XG$CLK_ClearITPendingBit$0$0 ==.
      0094A9 81               [ 4] 1900 	ret
                           000459  1901 	Sstm8s_clk$CLK_ClearITPendingBit$428 ==.
                                   1902 	.area CODE
                                   1903 	.area CONST
                           000000  1904 G$HSIDivFactor$0_0$0 == .
      0080B4                       1905 _HSIDivFactor:
      0080B4 01                    1906 	.db #0x01	; 1
      0080B5 02                    1907 	.db #0x02	; 2
      0080B6 04                    1908 	.db #0x04	; 4
      0080B7 08                    1909 	.db #0x08	; 8
                           000004  1910 G$CLKPrescTable$0_0$0 == .
      0080B8                       1911 _CLKPrescTable:
      0080B8 01                    1912 	.db #0x01	; 1
      0080B9 02                    1913 	.db #0x02	; 2
      0080BA 04                    1914 	.db #0x04	; 4
      0080BB 08                    1915 	.db #0x08	; 8
      0080BC 0A                    1916 	.db #0x0a	; 10
      0080BD 10                    1917 	.db #0x10	; 16
      0080BE 14                    1918 	.db #0x14	; 20
      0080BF 28                    1919 	.db #0x28	; 40
                                   1920 	.area INITIALIZER
                                   1921 	.area CABS (ABS)
                                   1922 
                                   1923 	.area .debug_line (NOLOAD)
      0016CD 00 00 06 24           1924 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0016D1                       1925 Ldebug_line_start:
      0016D1 00 02                 1926 	.dw	2
      0016D3 00 00 00 77           1927 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0016D7 01                    1928 	.db	1
      0016D8 01                    1929 	.db	1
      0016D9 FB                    1930 	.db	-5
      0016DA 0F                    1931 	.db	15
      0016DB 0A                    1932 	.db	10
      0016DC 00                    1933 	.db	0
      0016DD 01                    1934 	.db	1
      0016DE 01                    1935 	.db	1
      0016DF 01                    1936 	.db	1
      0016E0 01                    1937 	.db	1
      0016E1 00                    1938 	.db	0
      0016E2 00                    1939 	.db	0
      0016E3 00                    1940 	.db	0
      0016E4 01                    1941 	.db	1
      0016E5 43 3A 5C 50 72 6F 67  1942 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      00170D 00                    1943 	.db	0
      00170E 43 3A 5C 50 72 6F 67  1944 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      001731 00                    1945 	.db	0
      001732 00                    1946 	.db	0
      001733 2E 2E 2F 53 50 4C 2F  1947 	.ascii "../SPL/src/stm8s_clk.c"
             73 72 63 2F 73 74 6D
             38 73 5F 63 6C 6B 2E
             63
      001749 00                    1948 	.db	0
      00174A 00                    1949 	.uleb128	0
      00174B 00                    1950 	.uleb128	0
      00174C 00                    1951 	.uleb128	0
      00174D 00                    1952 	.db	0
      00174E                       1953 Ldebug_line_stmt:
      00174E 00                    1954 	.db	0
      00174F 05                    1955 	.uleb128	5
      001750 02                    1956 	.db	2
      001751 00 00 90 51           1957 	.dw	0,(Sstm8s_clk$CLK_DeInit$0)
      001755 03                    1958 	.db	3
      001756 C7 00                 1959 	.sleb128	71
      001758 01                    1960 	.db	1
      001759 09                    1961 	.db	9
      00175A 00 00                 1962 	.dw	Sstm8s_clk$CLK_DeInit$2-Sstm8s_clk$CLK_DeInit$0
      00175C 03                    1963 	.db	3
      00175D 02                    1964 	.sleb128	2
      00175E 01                    1965 	.db	1
      00175F 09                    1966 	.db	9
      001760 00 04                 1967 	.dw	Sstm8s_clk$CLK_DeInit$3-Sstm8s_clk$CLK_DeInit$2
      001762 03                    1968 	.db	3
      001763 01                    1969 	.sleb128	1
      001764 01                    1970 	.db	1
      001765 09                    1971 	.db	9
      001766 00 04                 1972 	.dw	Sstm8s_clk$CLK_DeInit$4-Sstm8s_clk$CLK_DeInit$3
      001768 03                    1973 	.db	3
      001769 01                    1974 	.sleb128	1
      00176A 01                    1975 	.db	1
      00176B 09                    1976 	.db	9
      00176C 00 04                 1977 	.dw	Sstm8s_clk$CLK_DeInit$5-Sstm8s_clk$CLK_DeInit$4
      00176E 03                    1978 	.db	3
      00176F 01                    1979 	.sleb128	1
      001770 01                    1980 	.db	1
      001771 09                    1981 	.db	9
      001772 00 04                 1982 	.dw	Sstm8s_clk$CLK_DeInit$6-Sstm8s_clk$CLK_DeInit$5
      001774 03                    1983 	.db	3
      001775 01                    1984 	.sleb128	1
      001776 01                    1985 	.db	1
      001777 09                    1986 	.db	9
      001778 00 04                 1987 	.dw	Sstm8s_clk$CLK_DeInit$7-Sstm8s_clk$CLK_DeInit$6
      00177A 03                    1988 	.db	3
      00177B 01                    1989 	.sleb128	1
      00177C 01                    1990 	.db	1
      00177D 09                    1991 	.db	9
      00177E 00 04                 1992 	.dw	Sstm8s_clk$CLK_DeInit$8-Sstm8s_clk$CLK_DeInit$7
      001780 03                    1993 	.db	3
      001781 01                    1994 	.sleb128	1
      001782 01                    1995 	.db	1
      001783 09                    1996 	.db	9
      001784 00 04                 1997 	.dw	Sstm8s_clk$CLK_DeInit$9-Sstm8s_clk$CLK_DeInit$8
      001786 03                    1998 	.db	3
      001787 01                    1999 	.sleb128	1
      001788 01                    2000 	.db	1
      001789 09                    2001 	.db	9
      00178A 00 04                 2002 	.dw	Sstm8s_clk$CLK_DeInit$10-Sstm8s_clk$CLK_DeInit$9
      00178C 03                    2003 	.db	3
      00178D 01                    2004 	.sleb128	1
      00178E 01                    2005 	.db	1
      00178F 09                    2006 	.db	9
      001790 00 04                 2007 	.dw	Sstm8s_clk$CLK_DeInit$11-Sstm8s_clk$CLK_DeInit$10
      001792 03                    2008 	.db	3
      001793 01                    2009 	.sleb128	1
      001794 01                    2010 	.db	1
      001795 09                    2011 	.db	9
      001796 00 09                 2012 	.dw	Sstm8s_clk$CLK_DeInit$12-Sstm8s_clk$CLK_DeInit$11
      001798 03                    2013 	.db	3
      001799 02                    2014 	.sleb128	2
      00179A 01                    2015 	.db	1
      00179B 09                    2016 	.db	9
      00179C 00 04                 2017 	.dw	Sstm8s_clk$CLK_DeInit$13-Sstm8s_clk$CLK_DeInit$12
      00179E 03                    2018 	.db	3
      00179F 01                    2019 	.sleb128	1
      0017A0 01                    2020 	.db	1
      0017A1 09                    2021 	.db	9
      0017A2 00 04                 2022 	.dw	Sstm8s_clk$CLK_DeInit$14-Sstm8s_clk$CLK_DeInit$13
      0017A4 03                    2023 	.db	3
      0017A5 01                    2024 	.sleb128	1
      0017A6 01                    2025 	.db	1
      0017A7 09                    2026 	.db	9
      0017A8 00 04                 2027 	.dw	Sstm8s_clk$CLK_DeInit$15-Sstm8s_clk$CLK_DeInit$14
      0017AA 03                    2028 	.db	3
      0017AB 01                    2029 	.sleb128	1
      0017AC 01                    2030 	.db	1
      0017AD 09                    2031 	.db	9
      0017AE 00 01                 2032 	.dw	1+Sstm8s_clk$CLK_DeInit$16-Sstm8s_clk$CLK_DeInit$15
      0017B0 00                    2033 	.db	0
      0017B1 01                    2034 	.uleb128	1
      0017B2 01                    2035 	.db	1
      0017B3 00                    2036 	.db	0
      0017B4 05                    2037 	.uleb128	5
      0017B5 02                    2038 	.db	2
      0017B6 00 00 90 8B           2039 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$18)
      0017BA 03                    2040 	.db	3
      0017BB E2 00                 2041 	.sleb128	98
      0017BD 01                    2042 	.db	1
      0017BE 09                    2043 	.db	9
      0017BF 00 00                 2044 	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$20-Sstm8s_clk$CLK_FastHaltWakeUpCmd$18
      0017C1 03                    2045 	.db	3
      0017C2 08                    2046 	.sleb128	8
      0017C3 01                    2047 	.db	1
      0017C4 09                    2048 	.db	9
      0017C5 00 03                 2049 	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$21-Sstm8s_clk$CLK_FastHaltWakeUpCmd$20
      0017C7 03                    2050 	.db	3
      0017C8 7D                    2051 	.sleb128	-3
      0017C9 01                    2052 	.db	1
      0017CA 09                    2053 	.db	9
      0017CB 00 07                 2054 	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$23-Sstm8s_clk$CLK_FastHaltWakeUpCmd$21
      0017CD 03                    2055 	.db	3
      0017CE 03                    2056 	.sleb128	3
      0017CF 01                    2057 	.db	1
      0017D0 09                    2058 	.db	9
      0017D1 00 08                 2059 	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$26-Sstm8s_clk$CLK_FastHaltWakeUpCmd$23
      0017D3 03                    2060 	.db	3
      0017D4 05                    2061 	.sleb128	5
      0017D5 01                    2062 	.db	1
      0017D6 09                    2063 	.db	9
      0017D7 00 05                 2064 	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$28-Sstm8s_clk$CLK_FastHaltWakeUpCmd$26
      0017D9 03                    2065 	.db	3
      0017DA 02                    2066 	.sleb128	2
      0017DB 01                    2067 	.db	1
      0017DC 09                    2068 	.db	9
      0017DD 00 01                 2069 	.dw	1+Sstm8s_clk$CLK_FastHaltWakeUpCmd$29-Sstm8s_clk$CLK_FastHaltWakeUpCmd$28
      0017DF 00                    2070 	.db	0
      0017E0 01                    2071 	.uleb128	1
      0017E1 01                    2072 	.db	1
      0017E2 00                    2073 	.db	0
      0017E3 05                    2074 	.uleb128	5
      0017E4 02                    2075 	.db	2
      0017E5 00 00 90 A3           2076 	.dw	0,(Sstm8s_clk$CLK_HSECmd$31)
      0017E9 03                    2077 	.db	3
      0017EA F8 00                 2078 	.sleb128	120
      0017EC 01                    2079 	.db	1
      0017ED 09                    2080 	.db	9
      0017EE 00 00                 2081 	.dw	Sstm8s_clk$CLK_HSECmd$33-Sstm8s_clk$CLK_HSECmd$31
      0017F0 03                    2082 	.db	3
      0017F1 08                    2083 	.sleb128	8
      0017F2 01                    2084 	.db	1
      0017F3 09                    2085 	.db	9
      0017F4 00 03                 2086 	.dw	Sstm8s_clk$CLK_HSECmd$34-Sstm8s_clk$CLK_HSECmd$33
      0017F6 03                    2087 	.db	3
      0017F7 7D                    2088 	.sleb128	-3
      0017F8 01                    2089 	.db	1
      0017F9 09                    2090 	.db	9
      0017FA 00 07                 2091 	.dw	Sstm8s_clk$CLK_HSECmd$36-Sstm8s_clk$CLK_HSECmd$34
      0017FC 03                    2092 	.db	3
      0017FD 03                    2093 	.sleb128	3
      0017FE 01                    2094 	.db	1
      0017FF 09                    2095 	.db	9
      001800 00 08                 2096 	.dw	Sstm8s_clk$CLK_HSECmd$39-Sstm8s_clk$CLK_HSECmd$36
      001802 03                    2097 	.db	3
      001803 05                    2098 	.sleb128	5
      001804 01                    2099 	.db	1
      001805 09                    2100 	.db	9
      001806 00 05                 2101 	.dw	Sstm8s_clk$CLK_HSECmd$41-Sstm8s_clk$CLK_HSECmd$39
      001808 03                    2102 	.db	3
      001809 02                    2103 	.sleb128	2
      00180A 01                    2104 	.db	1
      00180B 09                    2105 	.db	9
      00180C 00 01                 2106 	.dw	1+Sstm8s_clk$CLK_HSECmd$42-Sstm8s_clk$CLK_HSECmd$41
      00180E 00                    2107 	.db	0
      00180F 01                    2108 	.uleb128	1
      001810 01                    2109 	.db	1
      001811 00                    2110 	.db	0
      001812 05                    2111 	.uleb128	5
      001813 02                    2112 	.db	2
      001814 00 00 90 BB           2113 	.dw	0,(Sstm8s_clk$CLK_HSICmd$44)
      001818 03                    2114 	.db	3
      001819 8E 01                 2115 	.sleb128	142
      00181B 01                    2116 	.db	1
      00181C 09                    2117 	.db	9
      00181D 00 00                 2118 	.dw	Sstm8s_clk$CLK_HSICmd$46-Sstm8s_clk$CLK_HSICmd$44
      00181F 03                    2119 	.db	3
      001820 08                    2120 	.sleb128	8
      001821 01                    2121 	.db	1
      001822 09                    2122 	.db	9
      001823 00 03                 2123 	.dw	Sstm8s_clk$CLK_HSICmd$47-Sstm8s_clk$CLK_HSICmd$46
      001825 03                    2124 	.db	3
      001826 7D                    2125 	.sleb128	-3
      001827 01                    2126 	.db	1
      001828 09                    2127 	.db	9
      001829 00 07                 2128 	.dw	Sstm8s_clk$CLK_HSICmd$49-Sstm8s_clk$CLK_HSICmd$47
      00182B 03                    2129 	.db	3
      00182C 03                    2130 	.sleb128	3
      00182D 01                    2131 	.db	1
      00182E 09                    2132 	.db	9
      00182F 00 08                 2133 	.dw	Sstm8s_clk$CLK_HSICmd$52-Sstm8s_clk$CLK_HSICmd$49
      001831 03                    2134 	.db	3
      001832 05                    2135 	.sleb128	5
      001833 01                    2136 	.db	1
      001834 09                    2137 	.db	9
      001835 00 05                 2138 	.dw	Sstm8s_clk$CLK_HSICmd$54-Sstm8s_clk$CLK_HSICmd$52
      001837 03                    2139 	.db	3
      001838 02                    2140 	.sleb128	2
      001839 01                    2141 	.db	1
      00183A 09                    2142 	.db	9
      00183B 00 01                 2143 	.dw	1+Sstm8s_clk$CLK_HSICmd$55-Sstm8s_clk$CLK_HSICmd$54
      00183D 00                    2144 	.db	0
      00183E 01                    2145 	.uleb128	1
      00183F 01                    2146 	.db	1
      001840 00                    2147 	.db	0
      001841 05                    2148 	.uleb128	5
      001842 02                    2149 	.db	2
      001843 00 00 90 D3           2150 	.dw	0,(Sstm8s_clk$CLK_LSICmd$57)
      001847 03                    2151 	.db	3
      001848 A5 01                 2152 	.sleb128	165
      00184A 01                    2153 	.db	1
      00184B 09                    2154 	.db	9
      00184C 00 00                 2155 	.dw	Sstm8s_clk$CLK_LSICmd$59-Sstm8s_clk$CLK_LSICmd$57
      00184E 03                    2156 	.db	3
      00184F 08                    2157 	.sleb128	8
      001850 01                    2158 	.db	1
      001851 09                    2159 	.db	9
      001852 00 03                 2160 	.dw	Sstm8s_clk$CLK_LSICmd$60-Sstm8s_clk$CLK_LSICmd$59
      001854 03                    2161 	.db	3
      001855 7D                    2162 	.sleb128	-3
      001856 01                    2163 	.db	1
      001857 09                    2164 	.db	9
      001858 00 07                 2165 	.dw	Sstm8s_clk$CLK_LSICmd$62-Sstm8s_clk$CLK_LSICmd$60
      00185A 03                    2166 	.db	3
      00185B 03                    2167 	.sleb128	3
      00185C 01                    2168 	.db	1
      00185D 09                    2169 	.db	9
      00185E 00 08                 2170 	.dw	Sstm8s_clk$CLK_LSICmd$65-Sstm8s_clk$CLK_LSICmd$62
      001860 03                    2171 	.db	3
      001861 05                    2172 	.sleb128	5
      001862 01                    2173 	.db	1
      001863 09                    2174 	.db	9
      001864 00 05                 2175 	.dw	Sstm8s_clk$CLK_LSICmd$67-Sstm8s_clk$CLK_LSICmd$65
      001866 03                    2176 	.db	3
      001867 02                    2177 	.sleb128	2
      001868 01                    2178 	.db	1
      001869 09                    2179 	.db	9
      00186A 00 01                 2180 	.dw	1+Sstm8s_clk$CLK_LSICmd$68-Sstm8s_clk$CLK_LSICmd$67
      00186C 00                    2181 	.db	0
      00186D 01                    2182 	.uleb128	1
      00186E 01                    2183 	.db	1
      00186F 00                    2184 	.db	0
      001870 05                    2185 	.uleb128	5
      001871 02                    2186 	.db	2
      001872 00 00 90 EB           2187 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$70)
      001876 03                    2188 	.db	3
      001877 BC 01                 2189 	.sleb128	188
      001879 01                    2190 	.db	1
      00187A 09                    2191 	.db	9
      00187B 00 00                 2192 	.dw	Sstm8s_clk$CLK_CCOCmd$72-Sstm8s_clk$CLK_CCOCmd$70
      00187D 03                    2193 	.db	3
      00187E 08                    2194 	.sleb128	8
      00187F 01                    2195 	.db	1
      001880 09                    2196 	.db	9
      001881 00 03                 2197 	.dw	Sstm8s_clk$CLK_CCOCmd$73-Sstm8s_clk$CLK_CCOCmd$72
      001883 03                    2198 	.db	3
      001884 7D                    2199 	.sleb128	-3
      001885 01                    2200 	.db	1
      001886 09                    2201 	.db	9
      001887 00 07                 2202 	.dw	Sstm8s_clk$CLK_CCOCmd$75-Sstm8s_clk$CLK_CCOCmd$73
      001889 03                    2203 	.db	3
      00188A 03                    2204 	.sleb128	3
      00188B 01                    2205 	.db	1
      00188C 09                    2206 	.db	9
      00188D 00 08                 2207 	.dw	Sstm8s_clk$CLK_CCOCmd$78-Sstm8s_clk$CLK_CCOCmd$75
      00188F 03                    2208 	.db	3
      001890 05                    2209 	.sleb128	5
      001891 01                    2210 	.db	1
      001892 09                    2211 	.db	9
      001893 00 05                 2212 	.dw	Sstm8s_clk$CLK_CCOCmd$80-Sstm8s_clk$CLK_CCOCmd$78
      001895 03                    2213 	.db	3
      001896 02                    2214 	.sleb128	2
      001897 01                    2215 	.db	1
      001898 09                    2216 	.db	9
      001899 00 01                 2217 	.dw	1+Sstm8s_clk$CLK_CCOCmd$81-Sstm8s_clk$CLK_CCOCmd$80
      00189B 00                    2218 	.db	0
      00189C 01                    2219 	.uleb128	1
      00189D 01                    2220 	.db	1
      00189E 00                    2221 	.db	0
      00189F 05                    2222 	.uleb128	5
      0018A0 02                    2223 	.db	2
      0018A1 00 00 91 03           2224 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$83)
      0018A5 03                    2225 	.db	3
      0018A6 D4 01                 2226 	.sleb128	212
      0018A8 01                    2227 	.db	1
      0018A9 09                    2228 	.db	9
      0018AA 00 00                 2229 	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$85-Sstm8s_clk$CLK_ClockSwitchCmd$83
      0018AC 03                    2230 	.db	3
      0018AD 08                    2231 	.sleb128	8
      0018AE 01                    2232 	.db	1
      0018AF 09                    2233 	.db	9
      0018B0 00 03                 2234 	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$86-Sstm8s_clk$CLK_ClockSwitchCmd$85
      0018B2 03                    2235 	.db	3
      0018B3 7D                    2236 	.sleb128	-3
      0018B4 01                    2237 	.db	1
      0018B5 09                    2238 	.db	9
      0018B6 00 07                 2239 	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$88-Sstm8s_clk$CLK_ClockSwitchCmd$86
      0018B8 03                    2240 	.db	3
      0018B9 03                    2241 	.sleb128	3
      0018BA 01                    2242 	.db	1
      0018BB 09                    2243 	.db	9
      0018BC 00 08                 2244 	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$91-Sstm8s_clk$CLK_ClockSwitchCmd$88
      0018BE 03                    2245 	.db	3
      0018BF 05                    2246 	.sleb128	5
      0018C0 01                    2247 	.db	1
      0018C1 09                    2248 	.db	9
      0018C2 00 05                 2249 	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$93-Sstm8s_clk$CLK_ClockSwitchCmd$91
      0018C4 03                    2250 	.db	3
      0018C5 02                    2251 	.sleb128	2
      0018C6 01                    2252 	.db	1
      0018C7 09                    2253 	.db	9
      0018C8 00 01                 2254 	.dw	1+Sstm8s_clk$CLK_ClockSwitchCmd$94-Sstm8s_clk$CLK_ClockSwitchCmd$93
      0018CA 00                    2255 	.db	0
      0018CB 01                    2256 	.uleb128	1
      0018CC 01                    2257 	.db	1
      0018CD 00                    2258 	.db	0
      0018CE 05                    2259 	.uleb128	5
      0018CF 02                    2260 	.db	2
      0018D0 00 00 91 1B           2261 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$96)
      0018D4 03                    2262 	.db	3
      0018D5 ED 01                 2263 	.sleb128	237
      0018D7 01                    2264 	.db	1
      0018D8 09                    2265 	.db	9
      0018D9 00 00                 2266 	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$98-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$96
      0018DB 03                    2267 	.db	3
      0018DC 08                    2268 	.sleb128	8
      0018DD 01                    2269 	.db	1
      0018DE 09                    2270 	.db	9
      0018DF 00 03                 2271 	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$99-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$98
      0018E1 03                    2272 	.db	3
      0018E2 7D                    2273 	.sleb128	-3
      0018E3 01                    2274 	.db	1
      0018E4 09                    2275 	.db	9
      0018E5 00 07                 2276 	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$101-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$99
      0018E7 03                    2277 	.db	3
      0018E8 03                    2278 	.sleb128	3
      0018E9 01                    2279 	.db	1
      0018EA 09                    2280 	.db	9
      0018EB 00 08                 2281 	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$104-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$101
      0018ED 03                    2282 	.db	3
      0018EE 05                    2283 	.sleb128	5
      0018EF 01                    2284 	.db	1
      0018F0 09                    2285 	.db	9
      0018F1 00 05                 2286 	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$106-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$104
      0018F3 03                    2287 	.db	3
      0018F4 02                    2288 	.sleb128	2
      0018F5 01                    2289 	.db	1
      0018F6 09                    2290 	.db	9
      0018F7 00 01                 2291 	.dw	1+Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$107-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$106
      0018F9 00                    2292 	.db	0
      0018FA 01                    2293 	.uleb128	1
      0018FB 01                    2294 	.db	1
      0018FC 00                    2295 	.db	0
      0018FD 05                    2296 	.uleb128	5
      0018FE 02                    2297 	.db	2
      0018FF 00 00 91 33           2298 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$109)
      001903 03                    2299 	.db	3
      001904 86 02                 2300 	.sleb128	262
      001906 01                    2301 	.db	1
      001907 09                    2302 	.db	9
      001908 00 01                 2303 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$112-Sstm8s_clk$CLK_PeripheralClockConfig$109
      00190A 03                    2304 	.db	3
      00190B 0B                    2305 	.sleb128	11
      00190C 01                    2306 	.db	1
      00190D 09                    2307 	.db	9
      00190E 00 12                 2308 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$115-Sstm8s_clk$CLK_PeripheralClockConfig$112
      001910 03                    2309 	.db	3
      001911 05                    2310 	.sleb128	5
      001912 01                    2311 	.db	1
      001913 09                    2312 	.db	9
      001914 00 05                 2313 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$116-Sstm8s_clk$CLK_PeripheralClockConfig$115
      001916 03                    2314 	.db	3
      001917 76                    2315 	.sleb128	-10
      001918 01                    2316 	.db	1
      001919 09                    2317 	.db	9
      00191A 00 09                 2318 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$117-Sstm8s_clk$CLK_PeripheralClockConfig$116
      00191C 03                    2319 	.db	3
      00191D 05                    2320 	.sleb128	5
      00191E 01                    2321 	.db	1
      00191F 09                    2322 	.db	9
      001920 00 03                 2323 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$119-Sstm8s_clk$CLK_PeripheralClockConfig$117
      001922 03                    2324 	.db	3
      001923 7D                    2325 	.sleb128	-3
      001924 01                    2326 	.db	1
      001925 09                    2327 	.db	9
      001926 00 07                 2328 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$121-Sstm8s_clk$CLK_PeripheralClockConfig$119
      001928 03                    2329 	.db	3
      001929 03                    2330 	.sleb128	3
      00192A 01                    2331 	.db	1
      00192B 09                    2332 	.db	9
      00192C 00 08                 2333 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$124-Sstm8s_clk$CLK_PeripheralClockConfig$121
      00192E 03                    2334 	.db	3
      00192F 05                    2335 	.sleb128	5
      001930 01                    2336 	.db	1
      001931 09                    2337 	.db	9
      001932 00 08                 2338 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$126-Sstm8s_clk$CLK_PeripheralClockConfig$124
      001934 03                    2339 	.db	3
      001935 08                    2340 	.sleb128	8
      001936 01                    2341 	.db	1
      001937 09                    2342 	.db	9
      001938 00 03                 2343 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$128-Sstm8s_clk$CLK_PeripheralClockConfig$126
      00193A 03                    2344 	.db	3
      00193B 7D                    2345 	.sleb128	-3
      00193C 01                    2346 	.db	1
      00193D 09                    2347 	.db	9
      00193E 00 07                 2348 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$130-Sstm8s_clk$CLK_PeripheralClockConfig$128
      001940 03                    2349 	.db	3
      001941 03                    2350 	.sleb128	3
      001942 01                    2351 	.db	1
      001943 09                    2352 	.db	9
      001944 00 08                 2353 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$133-Sstm8s_clk$CLK_PeripheralClockConfig$130
      001946 03                    2354 	.db	3
      001947 05                    2355 	.sleb128	5
      001948 01                    2356 	.db	1
      001949 09                    2357 	.db	9
      00194A 00 05                 2358 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$135-Sstm8s_clk$CLK_PeripheralClockConfig$133
      00194C 03                    2359 	.db	3
      00194D 03                    2360 	.sleb128	3
      00194E 01                    2361 	.db	1
      00194F 09                    2362 	.db	9
      001950 00 02                 2363 	.dw	1+Sstm8s_clk$CLK_PeripheralClockConfig$137-Sstm8s_clk$CLK_PeripheralClockConfig$135
      001952 00                    2364 	.db	0
      001953 01                    2365 	.uleb128	1
      001954 01                    2366 	.db	1
      001955 00                    2367 	.db	0
      001956 05                    2368 	.uleb128	5
      001957 02                    2369 	.db	2
      001958 00 00 91 87           2370 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$139)
      00195C 03                    2371 	.db	3
      00195D B4 02                 2372 	.sleb128	308
      00195F 01                    2373 	.db	1
      001960 09                    2374 	.db	9
      001961 00 01                 2375 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$142-Sstm8s_clk$CLK_ClockSwitchConfig$139
      001963 03                    2376 	.db	3
      001964 03                    2377 	.sleb128	3
      001965 01                    2378 	.db	1
      001966 09                    2379 	.db	9
      001967 00 02                 2380 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$143-Sstm8s_clk$CLK_ClockSwitchConfig$142
      001969 03                    2381 	.db	3
      00196A 0A                    2382 	.sleb128	10
      00196B 01                    2383 	.db	1
      00196C 09                    2384 	.db	9
      00196D 00 05                 2385 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$144-Sstm8s_clk$CLK_ClockSwitchConfig$143
      00196F 03                    2386 	.db	3
      001970 06                    2387 	.sleb128	6
      001971 01                    2388 	.db	1
      001972 09                    2389 	.db	9
      001973 00 03                 2390 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$145-Sstm8s_clk$CLK_ClockSwitchConfig$144
      001975 03                    2391 	.db	3
      001976 7D                    2392 	.sleb128	-3
      001977 01                    2393 	.db	1
      001978 09                    2394 	.db	9
      001979 00 0D                 2395 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$150-Sstm8s_clk$CLK_ClockSwitchConfig$145
      00197B 03                    2396 	.db	3
      00197C 03                    2397 	.sleb128	3
      00197D 01                    2398 	.db	1
      00197E 09                    2399 	.db	9
      00197F 00 08                 2400 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$152-Sstm8s_clk$CLK_ClockSwitchConfig$150
      001981 03                    2401 	.db	3
      001982 03                    2402 	.sleb128	3
      001983 01                    2403 	.db	1
      001984 09                    2404 	.db	9
      001985 00 07                 2405 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$154-Sstm8s_clk$CLK_ClockSwitchConfig$152
      001987 03                    2406 	.db	3
      001988 02                    2407 	.sleb128	2
      001989 01                    2408 	.db	1
      00198A 09                    2409 	.db	9
      00198B 00 08                 2410 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$157-Sstm8s_clk$CLK_ClockSwitchConfig$154
      00198D 03                    2411 	.db	3
      00198E 04                    2412 	.sleb128	4
      00198F 01                    2413 	.db	1
      001990 09                    2414 	.db	9
      001991 00 05                 2415 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$159-Sstm8s_clk$CLK_ClockSwitchConfig$157
      001993 03                    2416 	.db	3
      001994 04                    2417 	.sleb128	4
      001995 01                    2418 	.db	1
      001996 09                    2419 	.db	9
      001997 00 08                 2420 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$161-Sstm8s_clk$CLK_ClockSwitchConfig$159
      001999 03                    2421 	.db	3
      00199A 03                    2422 	.sleb128	3
      00199B 01                    2423 	.db	1
      00199C 09                    2424 	.db	9
      00199D 00 0F                 2425 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$163-Sstm8s_clk$CLK_ClockSwitchConfig$161
      00199F 03                    2426 	.db	3
      0019A0 02                    2427 	.sleb128	2
      0019A1 01                    2428 	.db	1
      0019A2 09                    2429 	.db	9
      0019A3 00 04                 2430 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$166-Sstm8s_clk$CLK_ClockSwitchConfig$163
      0019A5 03                    2431 	.db	3
      0019A6 03                    2432 	.sleb128	3
      0019A7 01                    2433 	.db	1
      0019A8 09                    2434 	.db	9
      0019A9 00 06                 2435 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$168-Sstm8s_clk$CLK_ClockSwitchConfig$166
      0019AB 03                    2436 	.db	3
      0019AC 02                    2437 	.sleb128	2
      0019AD 01                    2438 	.db	1
      0019AE 09                    2439 	.db	9
      0019AF 00 06                 2440 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$171-Sstm8s_clk$CLK_ClockSwitchConfig$168
      0019B1 03                    2441 	.db	3
      0019B2 04                    2442 	.sleb128	4
      0019B3 01                    2443 	.db	1
      0019B4 09                    2444 	.db	9
      0019B5 00 04                 2445 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$174-Sstm8s_clk$CLK_ClockSwitchConfig$171
      0019B7 03                    2446 	.db	3
      0019B8 06                    2447 	.sleb128	6
      0019B9 01                    2448 	.db	1
      0019BA 09                    2449 	.db	9
      0019BB 00 07                 2450 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$176-Sstm8s_clk$CLK_ClockSwitchConfig$174
      0019BD 03                    2451 	.db	3
      0019BE 02                    2452 	.sleb128	2
      0019BF 01                    2453 	.db	1
      0019C0 09                    2454 	.db	9
      0019C1 00 08                 2455 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$179-Sstm8s_clk$CLK_ClockSwitchConfig$176
      0019C3 03                    2456 	.db	3
      0019C4 04                    2457 	.sleb128	4
      0019C5 01                    2458 	.db	1
      0019C6 09                    2459 	.db	9
      0019C7 00 05                 2460 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$181-Sstm8s_clk$CLK_ClockSwitchConfig$179
      0019C9 03                    2461 	.db	3
      0019CA 04                    2462 	.sleb128	4
      0019CB 01                    2463 	.db	1
      0019CC 09                    2464 	.db	9
      0019CD 00 08                 2465 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$183-Sstm8s_clk$CLK_ClockSwitchConfig$181
      0019CF 03                    2466 	.db	3
      0019D0 03                    2467 	.sleb128	3
      0019D1 01                    2468 	.db	1
      0019D2 09                    2469 	.db	9
      0019D3 00 10                 2470 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$185-Sstm8s_clk$CLK_ClockSwitchConfig$183
      0019D5 03                    2471 	.db	3
      0019D6 02                    2472 	.sleb128	2
      0019D7 01                    2473 	.db	1
      0019D8 09                    2474 	.db	9
      0019D9 00 04                 2475 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$188-Sstm8s_clk$CLK_ClockSwitchConfig$185
      0019DB 03                    2476 	.db	3
      0019DC 03                    2477 	.sleb128	3
      0019DD 01                    2478 	.db	1
      0019DE 09                    2479 	.db	9
      0019DF 00 06                 2480 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$190-Sstm8s_clk$CLK_ClockSwitchConfig$188
      0019E1 03                    2481 	.db	3
      0019E2 03                    2482 	.sleb128	3
      0019E3 01                    2483 	.db	1
      0019E4 09                    2484 	.db	9
      0019E5 00 08                 2485 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$191-Sstm8s_clk$CLK_ClockSwitchConfig$190
      0019E7 03                    2486 	.db	3
      0019E8 01                    2487 	.sleb128	1
      0019E9 01                    2488 	.db	1
      0019EA 09                    2489 	.db	9
      0019EB 00 06                 2490 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$194-Sstm8s_clk$CLK_ClockSwitchConfig$191
      0019ED 03                    2491 	.db	3
      0019EE 04                    2492 	.sleb128	4
      0019EF 01                    2493 	.db	1
      0019F0 09                    2494 	.db	9
      0019F1 00 01                 2495 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$196-Sstm8s_clk$CLK_ClockSwitchConfig$194
      0019F3 03                    2496 	.db	3
      0019F4 03                    2497 	.sleb128	3
      0019F5 01                    2498 	.db	1
      0019F6 09                    2499 	.db	9
      0019F7 00 07                 2500 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$198-Sstm8s_clk$CLK_ClockSwitchConfig$196
      0019F9 03                    2501 	.db	3
      0019FA 03                    2502 	.sleb128	3
      0019FB 01                    2503 	.db	1
      0019FC 09                    2504 	.db	9
      0019FD 00 13                 2505 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$201-Sstm8s_clk$CLK_ClockSwitchConfig$198
      0019FF 03                    2506 	.db	3
      001A00 02                    2507 	.sleb128	2
      001A01 01                    2508 	.db	1
      001A02 09                    2509 	.db	9
      001A03 00 0B                 2510 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$203-Sstm8s_clk$CLK_ClockSwitchConfig$201
      001A05 03                    2511 	.db	3
      001A06 02                    2512 	.sleb128	2
      001A07 01                    2513 	.db	1
      001A08 09                    2514 	.db	9
      001A09 00 13                 2515 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$206-Sstm8s_clk$CLK_ClockSwitchConfig$203
      001A0B 03                    2516 	.db	3
      001A0C 02                    2517 	.sleb128	2
      001A0D 01                    2518 	.db	1
      001A0E 09                    2519 	.db	9
      001A0F 00 0B                 2520 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$208-Sstm8s_clk$CLK_ClockSwitchConfig$206
      001A11 03                    2521 	.db	3
      001A12 02                    2522 	.sleb128	2
      001A13 01                    2523 	.db	1
      001A14 09                    2524 	.db	9
      001A15 00 13                 2525 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$211-Sstm8s_clk$CLK_ClockSwitchConfig$208
      001A17 03                    2526 	.db	3
      001A18 02                    2527 	.sleb128	2
      001A19 01                    2528 	.db	1
      001A1A 09                    2529 	.db	9
      001A1B 00 08                 2530 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$213-Sstm8s_clk$CLK_ClockSwitchConfig$211
      001A1D 03                    2531 	.db	3
      001A1E 03                    2532 	.sleb128	3
      001A1F 01                    2533 	.db	1
      001A20 09                    2534 	.db	9
      001A21 00 01                 2535 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$214-Sstm8s_clk$CLK_ClockSwitchConfig$213
      001A23 03                    2536 	.db	3
      001A24 01                    2537 	.sleb128	1
      001A25 01                    2538 	.db	1
      001A26 09                    2539 	.db	9
      001A27 00 03                 2540 	.dw	1+Sstm8s_clk$CLK_ClockSwitchConfig$216-Sstm8s_clk$CLK_ClockSwitchConfig$214
      001A29 00                    2541 	.db	0
      001A2A 01                    2542 	.uleb128	1
      001A2B 01                    2543 	.db	1
      001A2C 00                    2544 	.db	0
      001A2D 05                    2545 	.uleb128	5
      001A2E 02                    2546 	.db	2
      001A2F 00 00 92 8D           2547 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$218)
      001A33 03                    2548 	.db	3
      001A34 9E 03                 2549 	.sleb128	414
      001A36 01                    2550 	.db	1
      001A37 09                    2551 	.db	9
      001A38 00 00                 2552 	.dw	Sstm8s_clk$CLK_HSIPrescalerConfig$220-Sstm8s_clk$CLK_HSIPrescalerConfig$218
      001A3A 03                    2553 	.db	3
      001A3B 06                    2554 	.sleb128	6
      001A3C 01                    2555 	.db	1
      001A3D 09                    2556 	.db	9
      001A3E 00 08                 2557 	.dw	Sstm8s_clk$CLK_HSIPrescalerConfig$221-Sstm8s_clk$CLK_HSIPrescalerConfig$220
      001A40 03                    2558 	.db	3
      001A41 03                    2559 	.sleb128	3
      001A42 01                    2560 	.db	1
      001A43 09                    2561 	.db	9
      001A44 00 08                 2562 	.dw	Sstm8s_clk$CLK_HSIPrescalerConfig$222-Sstm8s_clk$CLK_HSIPrescalerConfig$221
      001A46 03                    2563 	.db	3
      001A47 01                    2564 	.sleb128	1
      001A48 01                    2565 	.db	1
      001A49 09                    2566 	.db	9
      001A4A 00 01                 2567 	.dw	1+Sstm8s_clk$CLK_HSIPrescalerConfig$223-Sstm8s_clk$CLK_HSIPrescalerConfig$222
      001A4C 00                    2568 	.db	0
      001A4D 01                    2569 	.uleb128	1
      001A4E 01                    2570 	.db	1
      001A4F 00                    2571 	.db	0
      001A50 05                    2572 	.uleb128	5
      001A51 02                    2573 	.db	2
      001A52 00 00 92 9E           2574 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$225)
      001A56 03                    2575 	.db	3
      001A57 B3 03                 2576 	.sleb128	435
      001A59 01                    2577 	.db	1
      001A5A 09                    2578 	.db	9
      001A5B 00 00                 2579 	.dw	Sstm8s_clk$CLK_CCOConfig$227-Sstm8s_clk$CLK_CCOConfig$225
      001A5D 03                    2580 	.db	3
      001A5E 06                    2581 	.sleb128	6
      001A5F 01                    2582 	.db	1
      001A60 09                    2583 	.db	9
      001A61 00 08                 2584 	.dw	Sstm8s_clk$CLK_CCOConfig$228-Sstm8s_clk$CLK_CCOConfig$227
      001A63 03                    2585 	.db	3
      001A64 03                    2586 	.sleb128	3
      001A65 01                    2587 	.db	1
      001A66 09                    2588 	.db	9
      001A67 00 08                 2589 	.dw	Sstm8s_clk$CLK_CCOConfig$229-Sstm8s_clk$CLK_CCOConfig$228
      001A69 03                    2590 	.db	3
      001A6A 03                    2591 	.sleb128	3
      001A6B 01                    2592 	.db	1
      001A6C 09                    2593 	.db	9
      001A6D 00 08                 2594 	.dw	Sstm8s_clk$CLK_CCOConfig$230-Sstm8s_clk$CLK_CCOConfig$229
      001A6F 03                    2595 	.db	3
      001A70 01                    2596 	.sleb128	1
      001A71 01                    2597 	.db	1
      001A72 09                    2598 	.db	9
      001A73 00 01                 2599 	.dw	1+Sstm8s_clk$CLK_CCOConfig$231-Sstm8s_clk$CLK_CCOConfig$230
      001A75 00                    2600 	.db	0
      001A76 01                    2601 	.uleb128	1
      001A77 01                    2602 	.db	1
      001A78 00                    2603 	.db	0
      001A79 05                    2604 	.uleb128	5
      001A7A 02                    2605 	.db	2
      001A7B 00 00 92 B7           2606 	.dw	0,(Sstm8s_clk$CLK_ITConfig$233)
      001A7F 03                    2607 	.db	3
      001A80 CA 03                 2608 	.sleb128	458
      001A82 01                    2609 	.db	1
      001A83 09                    2610 	.db	9
      001A84 00 01                 2611 	.dw	Sstm8s_clk$CLK_ITConfig$236-Sstm8s_clk$CLK_ITConfig$233
      001A86 03                    2612 	.db	3
      001A87 08                    2613 	.sleb128	8
      001A88 01                    2614 	.db	1
      001A89 09                    2615 	.db	9
      001A8A 00 1B                 2616 	.dw	Sstm8s_clk$CLK_ITConfig$239-Sstm8s_clk$CLK_ITConfig$236
      001A8C 03                    2617 	.db	3
      001A8D 7E                    2618 	.sleb128	-2
      001A8E 01                    2619 	.db	1
      001A8F 09                    2620 	.db	9
      001A90 00 07                 2621 	.dw	Sstm8s_clk$CLK_ITConfig$241-Sstm8s_clk$CLK_ITConfig$239
      001A92 03                    2622 	.db	3
      001A93 02                    2623 	.sleb128	2
      001A94 01                    2624 	.db	1
      001A95 09                    2625 	.db	9
      001A96 00 0D                 2626 	.dw	Sstm8s_clk$CLK_ITConfig$243-Sstm8s_clk$CLK_ITConfig$241
      001A98 03                    2627 	.db	3
      001A99 03                    2628 	.sleb128	3
      001A9A 01                    2629 	.db	1
      001A9B 09                    2630 	.db	9
      001A9C 00 08                 2631 	.dw	Sstm8s_clk$CLK_ITConfig$244-Sstm8s_clk$CLK_ITConfig$243
      001A9E 03                    2632 	.db	3
      001A9F 01                    2633 	.sleb128	1
      001AA0 01                    2634 	.db	1
      001AA1 09                    2635 	.db	9
      001AA2 00 03                 2636 	.dw	Sstm8s_clk$CLK_ITConfig$245-Sstm8s_clk$CLK_ITConfig$244
      001AA4 03                    2637 	.db	3
      001AA5 01                    2638 	.sleb128	1
      001AA6 01                    2639 	.db	1
      001AA7 09                    2640 	.db	9
      001AA8 00 00                 2641 	.dw	Sstm8s_clk$CLK_ITConfig$246-Sstm8s_clk$CLK_ITConfig$245
      001AAA 03                    2642 	.db	3
      001AAB 01                    2643 	.sleb128	1
      001AAC 01                    2644 	.db	1
      001AAD 09                    2645 	.db	9
      001AAE 00 08                 2646 	.dw	Sstm8s_clk$CLK_ITConfig$247-Sstm8s_clk$CLK_ITConfig$246
      001AB0 03                    2647 	.db	3
      001AB1 01                    2648 	.sleb128	1
      001AB2 01                    2649 	.db	1
      001AB3 09                    2650 	.db	9
      001AB4 00 03                 2651 	.dw	Sstm8s_clk$CLK_ITConfig$249-Sstm8s_clk$CLK_ITConfig$247
      001AB6 03                    2652 	.db	3
      001AB7 03                    2653 	.sleb128	3
      001AB8 01                    2654 	.db	1
      001AB9 09                    2655 	.db	9
      001ABA 00 00                 2656 	.dw	Sstm8s_clk$CLK_ITConfig$251-Sstm8s_clk$CLK_ITConfig$249
      001ABC 03                    2657 	.db	3
      001ABD 04                    2658 	.sleb128	4
      001ABE 01                    2659 	.db	1
      001ABF 09                    2660 	.db	9
      001AC0 00 0D                 2661 	.dw	Sstm8s_clk$CLK_ITConfig$253-Sstm8s_clk$CLK_ITConfig$251
      001AC2 03                    2662 	.db	3
      001AC3 03                    2663 	.sleb128	3
      001AC4 01                    2664 	.db	1
      001AC5 09                    2665 	.db	9
      001AC6 00 08                 2666 	.dw	Sstm8s_clk$CLK_ITConfig$254-Sstm8s_clk$CLK_ITConfig$253
      001AC8 03                    2667 	.db	3
      001AC9 01                    2668 	.sleb128	1
      001ACA 01                    2669 	.db	1
      001ACB 09                    2670 	.db	9
      001ACC 00 03                 2671 	.dw	Sstm8s_clk$CLK_ITConfig$255-Sstm8s_clk$CLK_ITConfig$254
      001ACE 03                    2672 	.db	3
      001ACF 01                    2673 	.sleb128	1
      001AD0 01                    2674 	.db	1
      001AD1 09                    2675 	.db	9
      001AD2 00 00                 2676 	.dw	Sstm8s_clk$CLK_ITConfig$256-Sstm8s_clk$CLK_ITConfig$255
      001AD4 03                    2677 	.db	3
      001AD5 01                    2678 	.sleb128	1
      001AD6 01                    2679 	.db	1
      001AD7 09                    2680 	.db	9
      001AD8 00 08                 2681 	.dw	Sstm8s_clk$CLK_ITConfig$258-Sstm8s_clk$CLK_ITConfig$256
      001ADA 03                    2682 	.db	3
      001ADB 04                    2683 	.sleb128	4
      001ADC 01                    2684 	.db	1
      001ADD 09                    2685 	.db	9
      001ADE 00 00                 2686 	.dw	Sstm8s_clk$CLK_ITConfig$259-Sstm8s_clk$CLK_ITConfig$258
      001AE0 03                    2687 	.db	3
      001AE1 02                    2688 	.sleb128	2
      001AE2 01                    2689 	.db	1
      001AE3 09                    2690 	.db	9
      001AE4 00 02                 2691 	.dw	1+Sstm8s_clk$CLK_ITConfig$261-Sstm8s_clk$CLK_ITConfig$259
      001AE6 00                    2692 	.db	0
      001AE7 01                    2693 	.uleb128	1
      001AE8 01                    2694 	.db	1
      001AE9 00                    2695 	.db	0
      001AEA 05                    2696 	.uleb128	5
      001AEB 02                    2697 	.db	2
      001AEC 00 00 93 1F           2698 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$263)
      001AF0 03                    2699 	.db	3
      001AF1 F3 03                 2700 	.sleb128	499
      001AF3 01                    2701 	.db	1
      001AF4 09                    2702 	.db	9
      001AF5 00 01                 2703 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$266-Sstm8s_clk$CLK_SYSCLKConfig$263
      001AF7 03                    2704 	.db	3
      001AF8 07                    2705 	.sleb128	7
      001AF9 01                    2706 	.db	1
      001AFA 09                    2707 	.db	9
      001AFB 00 03                 2708 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$267-Sstm8s_clk$CLK_SYSCLKConfig$266
      001AFD 03                    2709 	.db	3
      001AFE 7E                    2710 	.sleb128	-2
      001AFF 01                    2711 	.db	1
      001B00 09                    2712 	.db	9
      001B01 00 07                 2713 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$269-Sstm8s_clk$CLK_SYSCLKConfig$267
      001B03 03                    2714 	.db	3
      001B04 02                    2715 	.sleb128	2
      001B05 01                    2716 	.db	1
      001B06 09                    2717 	.db	9
      001B07 00 05                 2718 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$270-Sstm8s_clk$CLK_SYSCLKConfig$269
      001B09 03                    2719 	.db	3
      001B0A 01                    2720 	.sleb128	1
      001B0B 01                    2721 	.db	1
      001B0C 09                    2722 	.db	9
      001B0D 00 11                 2723 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$273-Sstm8s_clk$CLK_SYSCLKConfig$270
      001B0F 03                    2724 	.db	3
      001B10 04                    2725 	.sleb128	4
      001B11 01                    2726 	.db	1
      001B12 09                    2727 	.db	9
      001B13 00 05                 2728 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$274-Sstm8s_clk$CLK_SYSCLKConfig$273
      001B15 03                    2729 	.db	3
      001B16 01                    2730 	.sleb128	1
      001B17 01                    2731 	.db	1
      001B18 09                    2732 	.db	9
      001B19 00 0E                 2733 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$276-Sstm8s_clk$CLK_SYSCLKConfig$274
      001B1B 03                    2734 	.db	3
      001B1C 02                    2735 	.sleb128	2
      001B1D 01                    2736 	.db	1
      001B1E 09                    2737 	.db	9
      001B1F 00 02                 2738 	.dw	1+Sstm8s_clk$CLK_SYSCLKConfig$278-Sstm8s_clk$CLK_SYSCLKConfig$276
      001B21 00                    2739 	.db	0
      001B22 01                    2740 	.uleb128	1
      001B23 01                    2741 	.db	1
      001B24 00                    2742 	.db	0
      001B25 05                    2743 	.uleb128	5
      001B26 02                    2744 	.db	2
      001B27 00 00 93 55           2745 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$280)
      001B2B 03                    2746 	.db	3
      001B2C 8A 04                 2747 	.sleb128	522
      001B2E 01                    2748 	.db	1
      001B2F 09                    2749 	.db	9
      001B30 00 00                 2750 	.dw	Sstm8s_clk$CLK_SWIMConfig$282-Sstm8s_clk$CLK_SWIMConfig$280
      001B32 03                    2751 	.db	3
      001B33 08                    2752 	.sleb128	8
      001B34 01                    2753 	.db	1
      001B35 09                    2754 	.db	9
      001B36 00 03                 2755 	.dw	Sstm8s_clk$CLK_SWIMConfig$283-Sstm8s_clk$CLK_SWIMConfig$282
      001B38 03                    2756 	.db	3
      001B39 7D                    2757 	.sleb128	-3
      001B3A 01                    2758 	.db	1
      001B3B 09                    2759 	.db	9
      001B3C 00 07                 2760 	.dw	Sstm8s_clk$CLK_SWIMConfig$285-Sstm8s_clk$CLK_SWIMConfig$283
      001B3E 03                    2761 	.db	3
      001B3F 03                    2762 	.sleb128	3
      001B40 01                    2763 	.db	1
      001B41 09                    2764 	.db	9
      001B42 00 08                 2765 	.dw	Sstm8s_clk$CLK_SWIMConfig$288-Sstm8s_clk$CLK_SWIMConfig$285
      001B44 03                    2766 	.db	3
      001B45 05                    2767 	.sleb128	5
      001B46 01                    2768 	.db	1
      001B47 09                    2769 	.db	9
      001B48 00 05                 2770 	.dw	Sstm8s_clk$CLK_SWIMConfig$290-Sstm8s_clk$CLK_SWIMConfig$288
      001B4A 03                    2771 	.db	3
      001B4B 02                    2772 	.sleb128	2
      001B4C 01                    2773 	.db	1
      001B4D 09                    2774 	.db	9
      001B4E 00 01                 2775 	.dw	1+Sstm8s_clk$CLK_SWIMConfig$291-Sstm8s_clk$CLK_SWIMConfig$290
      001B50 00                    2776 	.db	0
      001B51 01                    2777 	.uleb128	1
      001B52 01                    2778 	.db	1
      001B53 00                    2779 	.db	0
      001B54 05                    2780 	.uleb128	5
      001B55 02                    2781 	.db	2
      001B56 00 00 93 6D           2782 	.dw	0,(Sstm8s_clk$CLK_ClockSecuritySystemEnable$293)
      001B5A 03                    2783 	.db	3
      001B5B A2 04                 2784 	.sleb128	546
      001B5D 01                    2785 	.db	1
      001B5E 09                    2786 	.db	9
      001B5F 00 00                 2787 	.dw	Sstm8s_clk$CLK_ClockSecuritySystemEnable$295-Sstm8s_clk$CLK_ClockSecuritySystemEnable$293
      001B61 03                    2788 	.db	3
      001B62 03                    2789 	.sleb128	3
      001B63 01                    2790 	.db	1
      001B64 09                    2791 	.db	9
      001B65 00 08                 2792 	.dw	Sstm8s_clk$CLK_ClockSecuritySystemEnable$296-Sstm8s_clk$CLK_ClockSecuritySystemEnable$295
      001B67 03                    2793 	.db	3
      001B68 01                    2794 	.sleb128	1
      001B69 01                    2795 	.db	1
      001B6A 09                    2796 	.db	9
      001B6B 00 01                 2797 	.dw	1+Sstm8s_clk$CLK_ClockSecuritySystemEnable$297-Sstm8s_clk$CLK_ClockSecuritySystemEnable$296
      001B6D 00                    2798 	.db	0
      001B6E 01                    2799 	.uleb128	1
      001B6F 01                    2800 	.db	1
      001B70 00                    2801 	.db	0
      001B71 05                    2802 	.uleb128	5
      001B72 02                    2803 	.db	2
      001B73 00 00 93 76           2804 	.dw	0,(Sstm8s_clk$CLK_GetSYSCLKSource$299)
      001B77 03                    2805 	.db	3
      001B78 AE 04                 2806 	.sleb128	558
      001B7A 01                    2807 	.db	1
      001B7B 09                    2808 	.db	9
      001B7C 00 00                 2809 	.dw	Sstm8s_clk$CLK_GetSYSCLKSource$301-Sstm8s_clk$CLK_GetSYSCLKSource$299
      001B7E 03                    2810 	.db	3
      001B7F 02                    2811 	.sleb128	2
      001B80 01                    2812 	.db	1
      001B81 09                    2813 	.db	9
      001B82 00 03                 2814 	.dw	Sstm8s_clk$CLK_GetSYSCLKSource$302-Sstm8s_clk$CLK_GetSYSCLKSource$301
      001B84 03                    2815 	.db	3
      001B85 01                    2816 	.sleb128	1
      001B86 01                    2817 	.db	1
      001B87 09                    2818 	.db	9
      001B88 00 01                 2819 	.dw	1+Sstm8s_clk$CLK_GetSYSCLKSource$303-Sstm8s_clk$CLK_GetSYSCLKSource$302
      001B8A 00                    2820 	.db	0
      001B8B 01                    2821 	.uleb128	1
      001B8C 01                    2822 	.db	1
      001B8D 00                    2823 	.db	0
      001B8E 05                    2824 	.uleb128	5
      001B8F 02                    2825 	.db	2
      001B90 00 00 93 7A           2826 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$305)
      001B94 03                    2827 	.db	3
      001B95 B8 04                 2828 	.sleb128	568
      001B97 01                    2829 	.db	1
      001B98 09                    2830 	.db	9
      001B99 00 02                 2831 	.dw	Sstm8s_clk$CLK_GetClockFreq$308-Sstm8s_clk$CLK_GetClockFreq$305
      001B9B 03                    2832 	.db	3
      001B9C 07                    2833 	.sleb128	7
      001B9D 01                    2834 	.db	1
      001B9E 09                    2835 	.db	9
      001B9F 00 05                 2836 	.dw	Sstm8s_clk$CLK_GetClockFreq$309-Sstm8s_clk$CLK_GetClockFreq$308
      001BA1 03                    2837 	.db	3
      001BA2 02                    2838 	.sleb128	2
      001BA3 01                    2839 	.db	1
      001BA4 09                    2840 	.db	9
      001BA5 00 0C                 2841 	.dw	Sstm8s_clk$CLK_GetClockFreq$312-Sstm8s_clk$CLK_GetClockFreq$309
      001BA7 03                    2842 	.db	3
      001BA8 02                    2843 	.sleb128	2
      001BA9 01                    2844 	.db	1
      001BAA 09                    2845 	.db	9
      001BAB 00 05                 2846 	.dw	Sstm8s_clk$CLK_GetClockFreq$313-Sstm8s_clk$CLK_GetClockFreq$312
      001BAD 03                    2847 	.db	3
      001BAE 01                    2848 	.sleb128	1
      001BAF 01                    2849 	.db	1
      001BB0 09                    2850 	.db	9
      001BB1 00 03                 2851 	.dw	Sstm8s_clk$CLK_GetClockFreq$314-Sstm8s_clk$CLK_GetClockFreq$313
      001BB3 03                    2852 	.db	3
      001BB4 01                    2853 	.sleb128	1
      001BB5 01                    2854 	.db	1
      001BB6 09                    2855 	.db	9
      001BB7 00 06                 2856 	.dw	Sstm8s_clk$CLK_GetClockFreq$315-Sstm8s_clk$CLK_GetClockFreq$314
      001BB9 03                    2857 	.db	3
      001BBA 01                    2858 	.sleb128	1
      001BBB 01                    2859 	.db	1
      001BBC 09                    2860 	.db	9
      001BBD 00 1A                 2861 	.dw	Sstm8s_clk$CLK_GetClockFreq$324-Sstm8s_clk$CLK_GetClockFreq$315
      001BBF 03                    2862 	.db	3
      001BC0 02                    2863 	.sleb128	2
      001BC1 01                    2864 	.db	1
      001BC2 09                    2865 	.db	9
      001BC3 00 0C                 2866 	.dw	Sstm8s_clk$CLK_GetClockFreq$327-Sstm8s_clk$CLK_GetClockFreq$324
      001BC5 03                    2867 	.db	3
      001BC6 02                    2868 	.sleb128	2
      001BC7 01                    2869 	.db	1
      001BC8 09                    2870 	.db	9
      001BC9 00 0A                 2871 	.dw	Sstm8s_clk$CLK_GetClockFreq$330-Sstm8s_clk$CLK_GetClockFreq$327
      001BCB 03                    2872 	.db	3
      001BCC 04                    2873 	.sleb128	4
      001BCD 01                    2874 	.db	1
      001BCE 09                    2875 	.db	9
      001BCF 00 08                 2876 	.dw	Sstm8s_clk$CLK_GetClockFreq$332-Sstm8s_clk$CLK_GetClockFreq$330
      001BD1 03                    2877 	.db	3
      001BD2 03                    2878 	.sleb128	3
      001BD3 01                    2879 	.db	1
      001BD4 09                    2880 	.db	9
      001BD5 00 03                 2881 	.dw	Sstm8s_clk$CLK_GetClockFreq$333-Sstm8s_clk$CLK_GetClockFreq$332
      001BD7 03                    2882 	.db	3
      001BD8 01                    2883 	.sleb128	1
      001BD9 01                    2884 	.db	1
      001BDA 09                    2885 	.db	9
      001BDB 00 03                 2886 	.dw	1+Sstm8s_clk$CLK_GetClockFreq$335-Sstm8s_clk$CLK_GetClockFreq$333
      001BDD 00                    2887 	.db	0
      001BDE 01                    2888 	.uleb128	1
      001BDF 01                    2889 	.db	1
      001BE0 00                    2890 	.db	0
      001BE1 05                    2891 	.uleb128	5
      001BE2 02                    2892 	.db	2
      001BE3 00 00 93 D9           2893 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$337)
      001BE7 03                    2894 	.db	3
      001BE8 DB 04                 2895 	.sleb128	603
      001BEA 01                    2896 	.db	1
      001BEB 09                    2897 	.db	9
      001BEC 00 00                 2898 	.dw	Sstm8s_clk$CLK_AdjustHSICalibrationValue$339-Sstm8s_clk$CLK_AdjustHSICalibrationValue$337
      001BEE 03                    2899 	.db	3
      001BEF 06                    2900 	.sleb128	6
      001BF0 01                    2901 	.db	1
      001BF1 09                    2902 	.db	9
      001BF2 00 0A                 2903 	.dw	Sstm8s_clk$CLK_AdjustHSICalibrationValue$340-Sstm8s_clk$CLK_AdjustHSICalibrationValue$339
      001BF4 03                    2904 	.db	3
      001BF5 01                    2905 	.sleb128	1
      001BF6 01                    2906 	.db	1
      001BF7 09                    2907 	.db	9
      001BF8 00 01                 2908 	.dw	1+Sstm8s_clk$CLK_AdjustHSICalibrationValue$341-Sstm8s_clk$CLK_AdjustHSICalibrationValue$340
      001BFA 00                    2909 	.db	0
      001BFB 01                    2910 	.uleb128	1
      001BFC 01                    2911 	.db	1
      001BFD 00                    2912 	.db	0
      001BFE 05                    2913 	.uleb128	5
      001BFF 02                    2914 	.db	2
      001C00 00 00 93 E4           2915 	.dw	0,(Sstm8s_clk$CLK_SYSCLKEmergencyClear$343)
      001C04 03                    2916 	.db	3
      001C05 ED 04                 2917 	.sleb128	621
      001C07 01                    2918 	.db	1
      001C08 09                    2919 	.db	9
      001C09 00 00                 2920 	.dw	Sstm8s_clk$CLK_SYSCLKEmergencyClear$345-Sstm8s_clk$CLK_SYSCLKEmergencyClear$343
      001C0B 03                    2921 	.db	3
      001C0C 02                    2922 	.sleb128	2
      001C0D 01                    2923 	.db	1
      001C0E 09                    2924 	.db	9
      001C0F 00 08                 2925 	.dw	Sstm8s_clk$CLK_SYSCLKEmergencyClear$346-Sstm8s_clk$CLK_SYSCLKEmergencyClear$345
      001C11 03                    2926 	.db	3
      001C12 01                    2927 	.sleb128	1
      001C13 01                    2928 	.db	1
      001C14 09                    2929 	.db	9
      001C15 00 01                 2930 	.dw	1+Sstm8s_clk$CLK_SYSCLKEmergencyClear$347-Sstm8s_clk$CLK_SYSCLKEmergencyClear$346
      001C17 00                    2931 	.db	0
      001C18 01                    2932 	.uleb128	1
      001C19 01                    2933 	.db	1
      001C1A 00                    2934 	.db	0
      001C1B 05                    2935 	.uleb128	5
      001C1C 02                    2936 	.db	2
      001C1D 00 00 93 ED           2937 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$349)
      001C21 03                    2938 	.db	3
      001C22 F9 04                 2939 	.sleb128	633
      001C24 01                    2940 	.db	1
      001C25 09                    2941 	.db	9
      001C26 00 01                 2942 	.dw	Sstm8s_clk$CLK_GetFlagStatus$352-Sstm8s_clk$CLK_GetFlagStatus$349
      001C28 03                    2943 	.db	3
      001C29 0A                    2944 	.sleb128	10
      001C2A 01                    2945 	.db	1
      001C2B 09                    2946 	.db	9
      001C2C 00 03                 2947 	.dw	Sstm8s_clk$CLK_GetFlagStatus$353-Sstm8s_clk$CLK_GetFlagStatus$352
      001C2E 03                    2948 	.db	3
      001C2F 03                    2949 	.sleb128	3
      001C30 01                    2950 	.db	1
      001C31 09                    2951 	.db	9
      001C32 00 0C                 2952 	.dw	Sstm8s_clk$CLK_GetFlagStatus$356-Sstm8s_clk$CLK_GetFlagStatus$353
      001C34 03                    2953 	.db	3
      001C35 02                    2954 	.sleb128	2
      001C36 01                    2955 	.db	1
      001C37 09                    2956 	.db	9
      001C38 00 06                 2957 	.dw	Sstm8s_clk$CLK_GetFlagStatus$358-Sstm8s_clk$CLK_GetFlagStatus$356
      001C3A 03                    2958 	.db	3
      001C3B 02                    2959 	.sleb128	2
      001C3C 01                    2960 	.db	1
      001C3D 09                    2961 	.db	9
      001C3E 00 0B                 2962 	.dw	Sstm8s_clk$CLK_GetFlagStatus$361-Sstm8s_clk$CLK_GetFlagStatus$358
      001C40 03                    2963 	.db	3
      001C41 02                    2964 	.sleb128	2
      001C42 01                    2965 	.db	1
      001C43 09                    2966 	.db	9
      001C44 00 06                 2967 	.dw	Sstm8s_clk$CLK_GetFlagStatus$363-Sstm8s_clk$CLK_GetFlagStatus$361
      001C46 03                    2968 	.db	3
      001C47 02                    2969 	.sleb128	2
      001C48 01                    2970 	.db	1
      001C49 09                    2971 	.db	9
      001C4A 00 0B                 2972 	.dw	Sstm8s_clk$CLK_GetFlagStatus$366-Sstm8s_clk$CLK_GetFlagStatus$363
      001C4C 03                    2973 	.db	3
      001C4D 02                    2974 	.sleb128	2
      001C4E 01                    2975 	.db	1
      001C4F 09                    2976 	.db	9
      001C50 00 06                 2977 	.dw	Sstm8s_clk$CLK_GetFlagStatus$368-Sstm8s_clk$CLK_GetFlagStatus$366
      001C52 03                    2978 	.db	3
      001C53 02                    2979 	.sleb128	2
      001C54 01                    2980 	.db	1
      001C55 09                    2981 	.db	9
      001C56 00 0B                 2982 	.dw	Sstm8s_clk$CLK_GetFlagStatus$371-Sstm8s_clk$CLK_GetFlagStatus$368
      001C58 03                    2983 	.db	3
      001C59 02                    2984 	.sleb128	2
      001C5A 01                    2985 	.db	1
      001C5B 09                    2986 	.db	9
      001C5C 00 06                 2987 	.dw	Sstm8s_clk$CLK_GetFlagStatus$374-Sstm8s_clk$CLK_GetFlagStatus$371
      001C5E 03                    2988 	.db	3
      001C5F 04                    2989 	.sleb128	4
      001C60 01                    2990 	.db	1
      001C61 09                    2991 	.db	9
      001C62 00 03                 2992 	.dw	Sstm8s_clk$CLK_GetFlagStatus$376-Sstm8s_clk$CLK_GetFlagStatus$374
      001C64 03                    2993 	.db	3
      001C65 03                    2994 	.sleb128	3
      001C66 01                    2995 	.db	1
      001C67 09                    2996 	.db	9
      001C68 00 0E                 2997 	.dw	Sstm8s_clk$CLK_GetFlagStatus$380-Sstm8s_clk$CLK_GetFlagStatus$376
      001C6A 03                    2998 	.db	3
      001C6B 02                    2999 	.sleb128	2
      001C6C 01                    3000 	.db	1
      001C6D 09                    3001 	.db	9
      001C6E 00 05                 3002 	.dw	Sstm8s_clk$CLK_GetFlagStatus$383-Sstm8s_clk$CLK_GetFlagStatus$380
      001C70 03                    3003 	.db	3
      001C71 04                    3004 	.sleb128	4
      001C72 01                    3005 	.db	1
      001C73 09                    3006 	.db	9
      001C74 00 01                 3007 	.dw	Sstm8s_clk$CLK_GetFlagStatus$385-Sstm8s_clk$CLK_GetFlagStatus$383
      001C76 03                    3008 	.db	3
      001C77 04                    3009 	.sleb128	4
      001C78 01                    3010 	.db	1
      001C79 09                    3011 	.db	9
      001C7A 00 00                 3012 	.dw	Sstm8s_clk$CLK_GetFlagStatus$386-Sstm8s_clk$CLK_GetFlagStatus$385
      001C7C 03                    3013 	.db	3
      001C7D 01                    3014 	.sleb128	1
      001C7E 01                    3015 	.db	1
      001C7F 09                    3016 	.db	9
      001C80 00 03                 3017 	.dw	1+Sstm8s_clk$CLK_GetFlagStatus$388-Sstm8s_clk$CLK_GetFlagStatus$386
      001C82 00                    3018 	.db	0
      001C83 01                    3019 	.uleb128	1
      001C84 01                    3020 	.db	1
      001C85 00                    3021 	.db	0
      001C86 05                    3022 	.uleb128	5
      001C87 02                    3023 	.db	2
      001C88 00 00 94 50           3024 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$390)
      001C8C 03                    3025 	.db	3
      001C8D AE 05                 3026 	.sleb128	686
      001C8F 01                    3027 	.db	1
      001C90 09                    3028 	.db	9
      001C91 00 00                 3029 	.dw	Sstm8s_clk$CLK_GetITStatus$392-Sstm8s_clk$CLK_GetITStatus$390
      001C93 03                    3030 	.db	3
      001C94 07                    3031 	.sleb128	7
      001C95 01                    3032 	.db	1
      001C96 09                    3033 	.db	9
      001C97 00 0C                 3034 	.dw	Sstm8s_clk$CLK_GetITStatus$395-Sstm8s_clk$CLK_GetITStatus$392
      001C99 03                    3035 	.db	3
      001C9A 03                    3036 	.sleb128	3
      001C9B 01                    3037 	.db	1
      001C9C 09                    3038 	.db	9
      001C9D 00 0F                 3039 	.dw	Sstm8s_clk$CLK_GetITStatus$398-Sstm8s_clk$CLK_GetITStatus$395
      001C9F 03                    3040 	.db	3
      001CA0 02                    3041 	.sleb128	2
      001CA1 01                    3042 	.db	1
      001CA2 09                    3043 	.db	9
      001CA3 00 05                 3044 	.dw	Sstm8s_clk$CLK_GetITStatus$401-Sstm8s_clk$CLK_GetITStatus$398
      001CA5 03                    3045 	.db	3
      001CA6 04                    3046 	.sleb128	4
      001CA7 01                    3047 	.db	1
      001CA8 09                    3048 	.db	9
      001CA9 00 04                 3049 	.dw	Sstm8s_clk$CLK_GetITStatus$404-Sstm8s_clk$CLK_GetITStatus$401
      001CAB 03                    3050 	.db	3
      001CAC 06                    3051 	.sleb128	6
      001CAD 01                    3052 	.db	1
      001CAE 09                    3053 	.db	9
      001CAF 00 0F                 3054 	.dw	Sstm8s_clk$CLK_GetITStatus$407-Sstm8s_clk$CLK_GetITStatus$404
      001CB1 03                    3055 	.db	3
      001CB2 02                    3056 	.sleb128	2
      001CB3 01                    3057 	.db	1
      001CB4 09                    3058 	.db	9
      001CB5 00 05                 3059 	.dw	Sstm8s_clk$CLK_GetITStatus$410-Sstm8s_clk$CLK_GetITStatus$407
      001CB7 03                    3060 	.db	3
      001CB8 04                    3061 	.sleb128	4
      001CB9 01                    3062 	.db	1
      001CBA 09                    3063 	.db	9
      001CBB 00 01                 3064 	.dw	Sstm8s_clk$CLK_GetITStatus$412-Sstm8s_clk$CLK_GetITStatus$410
      001CBD 03                    3065 	.db	3
      001CBE 05                    3066 	.sleb128	5
      001CBF 01                    3067 	.db	1
      001CC0 09                    3068 	.db	9
      001CC1 00 00                 3069 	.dw	Sstm8s_clk$CLK_GetITStatus$413-Sstm8s_clk$CLK_GetITStatus$412
      001CC3 03                    3070 	.db	3
      001CC4 01                    3071 	.sleb128	1
      001CC5 01                    3072 	.db	1
      001CC6 09                    3073 	.db	9
      001CC7 00 01                 3074 	.dw	1+Sstm8s_clk$CLK_GetITStatus$414-Sstm8s_clk$CLK_GetITStatus$413
      001CC9 00                    3075 	.db	0
      001CCA 01                    3076 	.uleb128	1
      001CCB 01                    3077 	.db	1
      001CCC 00                    3078 	.db	0
      001CCD 05                    3079 	.uleb128	5
      001CCE 02                    3080 	.db	2
      001CCF 00 00 94 8A           3081 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$416)
      001CD3 03                    3082 	.db	3
      001CD4 D8 05                 3083 	.sleb128	728
      001CD6 01                    3084 	.db	1
      001CD7 09                    3085 	.db	9
      001CD8 00 00                 3086 	.dw	Sstm8s_clk$CLK_ClearITPendingBit$418-Sstm8s_clk$CLK_ClearITPendingBit$416
      001CDA 03                    3087 	.db	3
      001CDB 05                    3088 	.sleb128	5
      001CDC 01                    3089 	.db	1
      001CDD 09                    3090 	.db	9
      001CDE 00 0C                 3091 	.dw	Sstm8s_clk$CLK_ClearITPendingBit$421-Sstm8s_clk$CLK_ClearITPendingBit$418
      001CE0 03                    3092 	.db	3
      001CE1 03                    3093 	.sleb128	3
      001CE2 01                    3094 	.db	1
      001CE3 09                    3095 	.db	9
      001CE4 00 0B                 3096 	.dw	Sstm8s_clk$CLK_ClearITPendingBit$424-Sstm8s_clk$CLK_ClearITPendingBit$421
      001CE6 03                    3097 	.db	3
      001CE7 05                    3098 	.sleb128	5
      001CE8 01                    3099 	.db	1
      001CE9 09                    3100 	.db	9
      001CEA 00 08                 3101 	.dw	Sstm8s_clk$CLK_ClearITPendingBit$426-Sstm8s_clk$CLK_ClearITPendingBit$424
      001CEC 03                    3102 	.db	3
      001CED 03                    3103 	.sleb128	3
      001CEE 01                    3104 	.db	1
      001CEF 09                    3105 	.db	9
      001CF0 00 01                 3106 	.dw	1+Sstm8s_clk$CLK_ClearITPendingBit$427-Sstm8s_clk$CLK_ClearITPendingBit$426
      001CF2 00                    3107 	.db	0
      001CF3 01                    3108 	.uleb128	1
      001CF4 01                    3109 	.db	1
      001CF5                       3110 Ldebug_line_end:
                                   3111 
                                   3112 	.area .debug_loc (NOLOAD)
      0025A0                       3113 Ldebug_loc_start:
      0025A0 00 00 94 96           3114 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$419)
      0025A4 00 00 94 AA           3115 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$428)
      0025A8 00 02                 3116 	.dw	2
      0025AA 78                    3117 	.db	120
      0025AB 01                    3118 	.sleb128	1
      0025AC 00 00 94 8A           3119 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$417)
      0025B0 00 00 94 96           3120 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$419)
      0025B4 00 02                 3121 	.dw	2
      0025B6 78                    3122 	.db	120
      0025B7 01                    3123 	.sleb128	1
      0025B8 00 00 00 00           3124 	.dw	0,0
      0025BC 00 00 00 00           3125 	.dw	0,0
      0025C0 00 00 94 83           3126 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$405)
      0025C4 00 00 94 8A           3127 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$415)
      0025C8 00 02                 3128 	.dw	2
      0025CA 78                    3129 	.db	120
      0025CB 01                    3130 	.sleb128	1
      0025CC 00 00 94 6B           3131 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$396)
      0025D0 00 00 94 83           3132 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$405)
      0025D4 00 02                 3133 	.dw	2
      0025D6 78                    3134 	.db	120
      0025D7 01                    3135 	.sleb128	1
      0025D8 00 00 94 5C           3136 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$393)
      0025DC 00 00 94 6B           3137 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$396)
      0025E0 00 02                 3138 	.dw	2
      0025E2 78                    3139 	.db	120
      0025E3 01                    3140 	.sleb128	1
      0025E4 00 00 94 50           3141 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$391)
      0025E8 00 00 94 5C           3142 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$393)
      0025EC 00 02                 3143 	.dw	2
      0025EE 78                    3144 	.db	120
      0025EF 01                    3145 	.sleb128	1
      0025F0 00 00 00 00           3146 	.dw	0,0
      0025F4 00 00 00 00           3147 	.dw	0,0
      0025F8 00 00 94 4F           3148 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$387)
      0025FC 00 00 94 50           3149 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$389)
      002600 00 02                 3150 	.dw	2
      002602 78                    3151 	.db	120
      002603 01                    3152 	.sleb128	1
      002604 00 00 94 3F           3153 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$378)
      002608 00 00 94 4F           3154 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$387)
      00260C 00 02                 3155 	.dw	2
      00260E 78                    3156 	.db	120
      00260F 02                    3157 	.sleb128	2
      002610 00 00 94 3A           3158 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$377)
      002614 00 00 94 3F           3159 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$378)
      002618 00 02                 3160 	.dw	2
      00261A 78                    3161 	.db	120
      00261B 03                    3162 	.sleb128	3
      00261C 00 00 94 30           3163 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$369)
      002620 00 00 94 3A           3164 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$377)
      002624 00 02                 3165 	.dw	2
      002626 78                    3166 	.db	120
      002627 02                    3167 	.sleb128	2
      002628 00 00 94 1F           3168 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$364)
      00262C 00 00 94 30           3169 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$369)
      002630 00 02                 3170 	.dw	2
      002632 78                    3171 	.db	120
      002633 02                    3172 	.sleb128	2
      002634 00 00 94 0E           3173 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$359)
      002638 00 00 94 1F           3174 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$364)
      00263C 00 02                 3175 	.dw	2
      00263E 78                    3176 	.db	120
      00263F 02                    3177 	.sleb128	2
      002640 00 00 93 FD           3178 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$354)
      002644 00 00 94 0E           3179 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$359)
      002648 00 02                 3180 	.dw	2
      00264A 78                    3181 	.db	120
      00264B 02                    3182 	.sleb128	2
      00264C 00 00 93 EE           3183 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$351)
      002650 00 00 93 FD           3184 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$354)
      002654 00 02                 3185 	.dw	2
      002656 78                    3186 	.db	120
      002657 02                    3187 	.sleb128	2
      002658 00 00 93 ED           3188 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$350)
      00265C 00 00 93 EE           3189 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$351)
      002660 00 02                 3190 	.dw	2
      002662 78                    3191 	.db	120
      002663 01                    3192 	.sleb128	1
      002664 00 00 00 00           3193 	.dw	0,0
      002668 00 00 00 00           3194 	.dw	0,0
      00266C 00 00 93 E4           3195 	.dw	0,(Sstm8s_clk$CLK_SYSCLKEmergencyClear$344)
      002670 00 00 93 ED           3196 	.dw	0,(Sstm8s_clk$CLK_SYSCLKEmergencyClear$348)
      002674 00 02                 3197 	.dw	2
      002676 78                    3198 	.db	120
      002677 01                    3199 	.sleb128	1
      002678 00 00 00 00           3200 	.dw	0,0
      00267C 00 00 00 00           3201 	.dw	0,0
      002680 00 00 93 D9           3202 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$338)
      002684 00 00 93 E4           3203 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$342)
      002688 00 02                 3204 	.dw	2
      00268A 78                    3205 	.db	120
      00268B 01                    3206 	.sleb128	1
      00268C 00 00 00 00           3207 	.dw	0,0
      002690 00 00 00 00           3208 	.dw	0,0
      002694 00 00 93 D8           3209 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$334)
      002698 00 00 93 D9           3210 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$336)
      00269C 00 02                 3211 	.dw	2
      00269E 78                    3212 	.db	120
      00269F 01                    3213 	.sleb128	1
      0026A0 00 00 93 C1           3214 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$325)
      0026A4 00 00 93 D8           3215 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$334)
      0026A8 00 02                 3216 	.dw	2
      0026AA 78                    3217 	.db	120
      0026AB 05                    3218 	.sleb128	5
      0026AC 00 00 93 AF           3219 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$323)
      0026B0 00 00 93 C1           3220 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$325)
      0026B4 00 02                 3221 	.dw	2
      0026B6 78                    3222 	.db	120
      0026B7 05                    3223 	.sleb128	5
      0026B8 00 00 93 AA           3224 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$322)
      0026BC 00 00 93 AF           3225 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$323)
      0026C0 00 02                 3226 	.dw	2
      0026C2 78                    3227 	.db	120
      0026C3 0D                    3228 	.sleb128	13
      0026C4 00 00 93 A8           3229 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$321)
      0026C8 00 00 93 AA           3230 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$322)
      0026CC 00 02                 3231 	.dw	2
      0026CE 78                    3232 	.db	120
      0026CF 0C                    3233 	.sleb128	12
      0026D0 00 00 93 A6           3234 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$320)
      0026D4 00 00 93 A8           3235 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$321)
      0026D8 00 02                 3236 	.dw	2
      0026DA 78                    3237 	.db	120
      0026DB 0B                    3238 	.sleb128	11
      0026DC 00 00 93 A4           3239 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$319)
      0026E0 00 00 93 A6           3240 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$320)
      0026E4 00 02                 3241 	.dw	2
      0026E6 78                    3242 	.db	120
      0026E7 0A                    3243 	.sleb128	10
      0026E8 00 00 93 A2           3244 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$318)
      0026EC 00 00 93 A4           3245 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$319)
      0026F0 00 02                 3246 	.dw	2
      0026F2 78                    3247 	.db	120
      0026F3 09                    3248 	.sleb128	9
      0026F4 00 00 93 A0           3249 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$317)
      0026F8 00 00 93 A2           3250 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$318)
      0026FC 00 02                 3251 	.dw	2
      0026FE 78                    3252 	.db	120
      0026FF 07                    3253 	.sleb128	7
      002700 00 00 93 8D           3254 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$310)
      002704 00 00 93 A0           3255 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$317)
      002708 00 02                 3256 	.dw	2
      00270A 78                    3257 	.db	120
      00270B 05                    3258 	.sleb128	5
      00270C 00 00 93 7C           3259 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$307)
      002710 00 00 93 8D           3260 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$310)
      002714 00 02                 3261 	.dw	2
      002716 78                    3262 	.db	120
      002717 05                    3263 	.sleb128	5
      002718 00 00 93 7A           3264 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$306)
      00271C 00 00 93 7C           3265 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$307)
      002720 00 02                 3266 	.dw	2
      002722 78                    3267 	.db	120
      002723 01                    3268 	.sleb128	1
      002724 00 00 00 00           3269 	.dw	0,0
      002728 00 00 00 00           3270 	.dw	0,0
      00272C 00 00 93 76           3271 	.dw	0,(Sstm8s_clk$CLK_GetSYSCLKSource$300)
      002730 00 00 93 7A           3272 	.dw	0,(Sstm8s_clk$CLK_GetSYSCLKSource$304)
      002734 00 02                 3273 	.dw	2
      002736 78                    3274 	.db	120
      002737 01                    3275 	.sleb128	1
      002738 00 00 00 00           3276 	.dw	0,0
      00273C 00 00 00 00           3277 	.dw	0,0
      002740 00 00 93 6D           3278 	.dw	0,(Sstm8s_clk$CLK_ClockSecuritySystemEnable$294)
      002744 00 00 93 76           3279 	.dw	0,(Sstm8s_clk$CLK_ClockSecuritySystemEnable$298)
      002748 00 02                 3280 	.dw	2
      00274A 78                    3281 	.db	120
      00274B 01                    3282 	.sleb128	1
      00274C 00 00 00 00           3283 	.dw	0,0
      002750 00 00 00 00           3284 	.dw	0,0
      002754 00 00 93 55           3285 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$281)
      002758 00 00 93 6D           3286 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$292)
      00275C 00 02                 3287 	.dw	2
      00275E 78                    3288 	.db	120
      00275F 01                    3289 	.sleb128	1
      002760 00 00 00 00           3290 	.dw	0,0
      002764 00 00 00 00           3291 	.dw	0,0
      002768 00 00 93 54           3292 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$277)
      00276C 00 00 93 55           3293 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$279)
      002770 00 02                 3294 	.dw	2
      002772 78                    3295 	.db	120
      002773 01                    3296 	.sleb128	1
      002774 00 00 93 20           3297 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$265)
      002778 00 00 93 54           3298 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$277)
      00277C 00 02                 3299 	.dw	2
      00277E 78                    3300 	.db	120
      00277F 02                    3301 	.sleb128	2
      002780 00 00 93 1F           3302 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$264)
      002784 00 00 93 20           3303 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$265)
      002788 00 02                 3304 	.dw	2
      00278A 78                    3305 	.db	120
      00278B 01                    3306 	.sleb128	1
      00278C 00 00 00 00           3307 	.dw	0,0
      002790 00 00 00 00           3308 	.dw	0,0
      002794 00 00 93 1E           3309 	.dw	0,(Sstm8s_clk$CLK_ITConfig$260)
      002798 00 00 93 1F           3310 	.dw	0,(Sstm8s_clk$CLK_ITConfig$262)
      00279C 00 02                 3311 	.dw	2
      00279E 78                    3312 	.db	120
      00279F 01                    3313 	.sleb128	1
      0027A0 00 00 92 D3           3314 	.dw	0,(Sstm8s_clk$CLK_ITConfig$238)
      0027A4 00 00 93 1E           3315 	.dw	0,(Sstm8s_clk$CLK_ITConfig$260)
      0027A8 00 02                 3316 	.dw	2
      0027AA 78                    3317 	.db	120
      0027AB 02                    3318 	.sleb128	2
      0027AC 00 00 92 C7           3319 	.dw	0,(Sstm8s_clk$CLK_ITConfig$237)
      0027B0 00 00 92 D3           3320 	.dw	0,(Sstm8s_clk$CLK_ITConfig$238)
      0027B4 00 02                 3321 	.dw	2
      0027B6 78                    3322 	.db	120
      0027B7 02                    3323 	.sleb128	2
      0027B8 00 00 92 B8           3324 	.dw	0,(Sstm8s_clk$CLK_ITConfig$235)
      0027BC 00 00 92 C7           3325 	.dw	0,(Sstm8s_clk$CLK_ITConfig$237)
      0027C0 00 02                 3326 	.dw	2
      0027C2 78                    3327 	.db	120
      0027C3 02                    3328 	.sleb128	2
      0027C4 00 00 92 B7           3329 	.dw	0,(Sstm8s_clk$CLK_ITConfig$234)
      0027C8 00 00 92 B8           3330 	.dw	0,(Sstm8s_clk$CLK_ITConfig$235)
      0027CC 00 02                 3331 	.dw	2
      0027CE 78                    3332 	.db	120
      0027CF 01                    3333 	.sleb128	1
      0027D0 00 00 00 00           3334 	.dw	0,0
      0027D4 00 00 00 00           3335 	.dw	0,0
      0027D8 00 00 92 9E           3336 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$226)
      0027DC 00 00 92 B7           3337 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$232)
      0027E0 00 02                 3338 	.dw	2
      0027E2 78                    3339 	.db	120
      0027E3 01                    3340 	.sleb128	1
      0027E4 00 00 00 00           3341 	.dw	0,0
      0027E8 00 00 00 00           3342 	.dw	0,0
      0027EC 00 00 92 8D           3343 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$219)
      0027F0 00 00 92 9E           3344 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$224)
      0027F4 00 02                 3345 	.dw	2
      0027F6 78                    3346 	.db	120
      0027F7 01                    3347 	.sleb128	1
      0027F8 00 00 00 00           3348 	.dw	0,0
      0027FC 00 00 00 00           3349 	.dw	0,0
      002800 00 00 92 8C           3350 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$215)
      002804 00 00 92 8D           3351 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$217)
      002808 00 02                 3352 	.dw	2
      00280A 78                    3353 	.db	120
      00280B 01                    3354 	.sleb128	1
      00280C 00 00 92 81           3355 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$209)
      002810 00 00 92 8C           3356 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$215)
      002814 00 02                 3357 	.dw	2
      002816 78                    3358 	.db	120
      002817 02                    3359 	.sleb128	2
      002818 00 00 92 63           3360 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$204)
      00281C 00 00 92 81           3361 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$209)
      002820 00 02                 3362 	.dw	2
      002822 78                    3363 	.db	120
      002823 02                    3364 	.sleb128	2
      002824 00 00 92 45           3365 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$199)
      002828 00 00 92 63           3366 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$204)
      00282C 00 02                 3367 	.dw	2
      00282E 78                    3368 	.db	120
      00282F 02                    3369 	.sleb128	2
      002830 00 00 91 9F           3370 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$148)
      002834 00 00 92 45           3371 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$199)
      002838 00 02                 3372 	.dw	2
      00283A 78                    3373 	.db	120
      00283B 02                    3374 	.sleb128	2
      00283C 00 00 91 97           3375 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$147)
      002840 00 00 91 9F           3376 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$148)
      002844 00 02                 3377 	.dw	2
      002846 78                    3378 	.db	120
      002847 02                    3379 	.sleb128	2
      002848 00 00 91 93           3380 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$146)
      00284C 00 00 91 97           3381 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$147)
      002850 00 02                 3382 	.dw	2
      002852 78                    3383 	.db	120
      002853 03                    3384 	.sleb128	3
      002854 00 00 91 88           3385 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$141)
      002858 00 00 91 93           3386 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$146)
      00285C 00 02                 3387 	.dw	2
      00285E 78                    3388 	.db	120
      00285F 02                    3389 	.sleb128	2
      002860 00 00 91 87           3390 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$140)
      002864 00 00 91 88           3391 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$141)
      002868 00 02                 3392 	.dw	2
      00286A 78                    3393 	.db	120
      00286B 01                    3394 	.sleb128	1
      00286C 00 00 00 00           3395 	.dw	0,0
      002870 00 00 00 00           3396 	.dw	0,0
      002874 00 00 91 86           3397 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$136)
      002878 00 00 91 87           3398 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$138)
      00287C 00 02                 3399 	.dw	2
      00287E 78                    3400 	.db	120
      00287F 01                    3401 	.sleb128	1
      002880 00 00 91 3E           3402 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$114)
      002884 00 00 91 86           3403 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$136)
      002888 00 02                 3404 	.dw	2
      00288A 78                    3405 	.db	120
      00288B 03                    3406 	.sleb128	3
      00288C 00 00 91 39           3407 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$113)
      002890 00 00 91 3E           3408 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$114)
      002894 00 02                 3409 	.dw	2
      002896 78                    3410 	.db	120
      002897 04                    3411 	.sleb128	4
      002898 00 00 91 34           3412 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$111)
      00289C 00 00 91 39           3413 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$113)
      0028A0 00 02                 3414 	.dw	2
      0028A2 78                    3415 	.db	120
      0028A3 03                    3416 	.sleb128	3
      0028A4 00 00 91 33           3417 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$110)
      0028A8 00 00 91 34           3418 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$111)
      0028AC 00 02                 3419 	.dw	2
      0028AE 78                    3420 	.db	120
      0028AF 01                    3421 	.sleb128	1
      0028B0 00 00 00 00           3422 	.dw	0,0
      0028B4 00 00 00 00           3423 	.dw	0,0
      0028B8 00 00 91 1B           3424 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$97)
      0028BC 00 00 91 33           3425 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$108)
      0028C0 00 02                 3426 	.dw	2
      0028C2 78                    3427 	.db	120
      0028C3 01                    3428 	.sleb128	1
      0028C4 00 00 00 00           3429 	.dw	0,0
      0028C8 00 00 00 00           3430 	.dw	0,0
      0028CC 00 00 91 03           3431 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$84)
      0028D0 00 00 91 1B           3432 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$95)
      0028D4 00 02                 3433 	.dw	2
      0028D6 78                    3434 	.db	120
      0028D7 01                    3435 	.sleb128	1
      0028D8 00 00 00 00           3436 	.dw	0,0
      0028DC 00 00 00 00           3437 	.dw	0,0
      0028E0 00 00 90 EB           3438 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$71)
      0028E4 00 00 91 03           3439 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$82)
      0028E8 00 02                 3440 	.dw	2
      0028EA 78                    3441 	.db	120
      0028EB 01                    3442 	.sleb128	1
      0028EC 00 00 00 00           3443 	.dw	0,0
      0028F0 00 00 00 00           3444 	.dw	0,0
      0028F4 00 00 90 D3           3445 	.dw	0,(Sstm8s_clk$CLK_LSICmd$58)
      0028F8 00 00 90 EB           3446 	.dw	0,(Sstm8s_clk$CLK_LSICmd$69)
      0028FC 00 02                 3447 	.dw	2
      0028FE 78                    3448 	.db	120
      0028FF 01                    3449 	.sleb128	1
      002900 00 00 00 00           3450 	.dw	0,0
      002904 00 00 00 00           3451 	.dw	0,0
      002908 00 00 90 BB           3452 	.dw	0,(Sstm8s_clk$CLK_HSICmd$45)
      00290C 00 00 90 D3           3453 	.dw	0,(Sstm8s_clk$CLK_HSICmd$56)
      002910 00 02                 3454 	.dw	2
      002912 78                    3455 	.db	120
      002913 01                    3456 	.sleb128	1
      002914 00 00 00 00           3457 	.dw	0,0
      002918 00 00 00 00           3458 	.dw	0,0
      00291C 00 00 90 A3           3459 	.dw	0,(Sstm8s_clk$CLK_HSECmd$32)
      002920 00 00 90 BB           3460 	.dw	0,(Sstm8s_clk$CLK_HSECmd$43)
      002924 00 02                 3461 	.dw	2
      002926 78                    3462 	.db	120
      002927 01                    3463 	.sleb128	1
      002928 00 00 00 00           3464 	.dw	0,0
      00292C 00 00 00 00           3465 	.dw	0,0
      002930 00 00 90 8B           3466 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$19)
      002934 00 00 90 A3           3467 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$30)
      002938 00 02                 3468 	.dw	2
      00293A 78                    3469 	.db	120
      00293B 01                    3470 	.sleb128	1
      00293C 00 00 00 00           3471 	.dw	0,0
      002940 00 00 00 00           3472 	.dw	0,0
      002944 00 00 90 51           3473 	.dw	0,(Sstm8s_clk$CLK_DeInit$1)
      002948 00 00 90 8B           3474 	.dw	0,(Sstm8s_clk$CLK_DeInit$17)
      00294C 00 02                 3475 	.dw	2
      00294E 78                    3476 	.db	120
      00294F 01                    3477 	.sleb128	1
      002950 00 00 00 00           3478 	.dw	0,0
      002954 00 00 00 00           3479 	.dw	0,0
                                   3480 
                                   3481 	.area .debug_abbrev (NOLOAD)
      00045F                       3482 Ldebug_abbrev:
      00045F 0C                    3483 	.uleb128	12
      000460 2E                    3484 	.uleb128	46
      000461 00                    3485 	.db	0
      000462 03                    3486 	.uleb128	3
      000463 08                    3487 	.uleb128	8
      000464 11                    3488 	.uleb128	17
      000465 01                    3489 	.uleb128	1
      000466 12                    3490 	.uleb128	18
      000467 01                    3491 	.uleb128	1
      000468 3F                    3492 	.uleb128	63
      000469 0C                    3493 	.uleb128	12
      00046A 40                    3494 	.uleb128	64
      00046B 06                    3495 	.uleb128	6
      00046C 49                    3496 	.uleb128	73
      00046D 13                    3497 	.uleb128	19
      00046E 00                    3498 	.uleb128	0
      00046F 00                    3499 	.uleb128	0
      000470 10                    3500 	.uleb128	16
      000471 34                    3501 	.uleb128	52
      000472 00                    3502 	.db	0
      000473 02                    3503 	.uleb128	2
      000474 0A                    3504 	.uleb128	10
      000475 03                    3505 	.uleb128	3
      000476 08                    3506 	.uleb128	8
      000477 3F                    3507 	.uleb128	63
      000478 0C                    3508 	.uleb128	12
      000479 49                    3509 	.uleb128	73
      00047A 13                    3510 	.uleb128	19
      00047B 00                    3511 	.uleb128	0
      00047C 00                    3512 	.uleb128	0
      00047D 04                    3513 	.uleb128	4
      00047E 05                    3514 	.uleb128	5
      00047F 00                    3515 	.db	0
      000480 02                    3516 	.uleb128	2
      000481 0A                    3517 	.uleb128	10
      000482 03                    3518 	.uleb128	3
      000483 08                    3519 	.uleb128	8
      000484 49                    3520 	.uleb128	73
      000485 13                    3521 	.uleb128	19
      000486 00                    3522 	.uleb128	0
      000487 00                    3523 	.uleb128	0
      000488 0E                    3524 	.uleb128	14
      000489 01                    3525 	.uleb128	1
      00048A 01                    3526 	.db	1
      00048B 01                    3527 	.uleb128	1
      00048C 13                    3528 	.uleb128	19
      00048D 0B                    3529 	.uleb128	11
      00048E 0B                    3530 	.uleb128	11
      00048F 49                    3531 	.uleb128	73
      000490 13                    3532 	.uleb128	19
      000491 00                    3533 	.uleb128	0
      000492 00                    3534 	.uleb128	0
      000493 03                    3535 	.uleb128	3
      000494 2E                    3536 	.uleb128	46
      000495 01                    3537 	.db	1
      000496 01                    3538 	.uleb128	1
      000497 13                    3539 	.uleb128	19
      000498 03                    3540 	.uleb128	3
      000499 08                    3541 	.uleb128	8
      00049A 11                    3542 	.uleb128	17
      00049B 01                    3543 	.uleb128	1
      00049C 12                    3544 	.uleb128	18
      00049D 01                    3545 	.uleb128	1
      00049E 3F                    3546 	.uleb128	63
      00049F 0C                    3547 	.uleb128	12
      0004A0 40                    3548 	.uleb128	64
      0004A1 06                    3549 	.uleb128	6
      0004A2 00                    3550 	.uleb128	0
      0004A3 00                    3551 	.uleb128	0
      0004A4 0B                    3552 	.uleb128	11
      0004A5 34                    3553 	.uleb128	52
      0004A6 00                    3554 	.db	0
      0004A7 02                    3555 	.uleb128	2
      0004A8 0A                    3556 	.uleb128	10
      0004A9 03                    3557 	.uleb128	3
      0004AA 08                    3558 	.uleb128	8
      0004AB 49                    3559 	.uleb128	73
      0004AC 13                    3560 	.uleb128	19
      0004AD 00                    3561 	.uleb128	0
      0004AE 00                    3562 	.uleb128	0
      0004AF 09                    3563 	.uleb128	9
      0004B0 2E                    3564 	.uleb128	46
      0004B1 01                    3565 	.db	1
      0004B2 01                    3566 	.uleb128	1
      0004B3 13                    3567 	.uleb128	19
      0004B4 03                    3568 	.uleb128	3
      0004B5 08                    3569 	.uleb128	8
      0004B6 11                    3570 	.uleb128	17
      0004B7 01                    3571 	.uleb128	1
      0004B8 12                    3572 	.uleb128	18
      0004B9 01                    3573 	.uleb128	1
      0004BA 3F                    3574 	.uleb128	63
      0004BB 0C                    3575 	.uleb128	12
      0004BC 40                    3576 	.uleb128	64
      0004BD 06                    3577 	.uleb128	6
      0004BE 49                    3578 	.uleb128	73
      0004BF 13                    3579 	.uleb128	19
      0004C0 00                    3580 	.uleb128	0
      0004C1 00                    3581 	.uleb128	0
      0004C2 0D                    3582 	.uleb128	13
      0004C3 26                    3583 	.uleb128	38
      0004C4 00                    3584 	.db	0
      0004C5 49                    3585 	.uleb128	73
      0004C6 13                    3586 	.uleb128	19
      0004C7 00                    3587 	.uleb128	0
      0004C8 00                    3588 	.uleb128	0
      0004C9 08                    3589 	.uleb128	8
      0004CA 0B                    3590 	.uleb128	11
      0004CB 01                    3591 	.db	1
      0004CC 11                    3592 	.uleb128	17
      0004CD 01                    3593 	.uleb128	1
      0004CE 00                    3594 	.uleb128	0
      0004CF 00                    3595 	.uleb128	0
      0004D0 01                    3596 	.uleb128	1
      0004D1 11                    3597 	.uleb128	17
      0004D2 01                    3598 	.db	1
      0004D3 03                    3599 	.uleb128	3
      0004D4 08                    3600 	.uleb128	8
      0004D5 10                    3601 	.uleb128	16
      0004D6 06                    3602 	.uleb128	6
      0004D7 13                    3603 	.uleb128	19
      0004D8 0B                    3604 	.uleb128	11
      0004D9 25                    3605 	.uleb128	37
      0004DA 08                    3606 	.uleb128	8
      0004DB 00                    3607 	.uleb128	0
      0004DC 00                    3608 	.uleb128	0
      0004DD 05                    3609 	.uleb128	5
      0004DE 0B                    3610 	.uleb128	11
      0004DF 00                    3611 	.db	0
      0004E0 11                    3612 	.uleb128	17
      0004E1 01                    3613 	.uleb128	1
      0004E2 12                    3614 	.uleb128	18
      0004E3 01                    3615 	.uleb128	1
      0004E4 00                    3616 	.uleb128	0
      0004E5 00                    3617 	.uleb128	0
      0004E6 07                    3618 	.uleb128	7
      0004E7 0B                    3619 	.uleb128	11
      0004E8 01                    3620 	.db	1
      0004E9 01                    3621 	.uleb128	1
      0004EA 13                    3622 	.uleb128	19
      0004EB 11                    3623 	.uleb128	17
      0004EC 01                    3624 	.uleb128	1
      0004ED 00                    3625 	.uleb128	0
      0004EE 00                    3626 	.uleb128	0
      0004EF 02                    3627 	.uleb128	2
      0004F0 2E                    3628 	.uleb128	46
      0004F1 00                    3629 	.db	0
      0004F2 03                    3630 	.uleb128	3
      0004F3 08                    3631 	.uleb128	8
      0004F4 11                    3632 	.uleb128	17
      0004F5 01                    3633 	.uleb128	1
      0004F6 12                    3634 	.uleb128	18
      0004F7 01                    3635 	.uleb128	1
      0004F8 3F                    3636 	.uleb128	63
      0004F9 0C                    3637 	.uleb128	12
      0004FA 40                    3638 	.uleb128	64
      0004FB 06                    3639 	.uleb128	6
      0004FC 00                    3640 	.uleb128	0
      0004FD 00                    3641 	.uleb128	0
      0004FE 0A                    3642 	.uleb128	10
      0004FF 0B                    3643 	.uleb128	11
      000500 01                    3644 	.db	1
      000501 01                    3645 	.uleb128	1
      000502 13                    3646 	.uleb128	19
      000503 11                    3647 	.uleb128	17
      000504 01                    3648 	.uleb128	1
      000505 12                    3649 	.uleb128	18
      000506 01                    3650 	.uleb128	1
      000507 00                    3651 	.uleb128	0
      000508 00                    3652 	.uleb128	0
      000509 0F                    3653 	.uleb128	15
      00050A 21                    3654 	.uleb128	33
      00050B 00                    3655 	.db	0
      00050C 2F                    3656 	.uleb128	47
      00050D 0B                    3657 	.uleb128	11
      00050E 00                    3658 	.uleb128	0
      00050F 00                    3659 	.uleb128	0
      000510 06                    3660 	.uleb128	6
      000511 24                    3661 	.uleb128	36
      000512 00                    3662 	.db	0
      000513 03                    3663 	.uleb128	3
      000514 08                    3664 	.uleb128	8
      000515 0B                    3665 	.uleb128	11
      000516 0B                    3666 	.uleb128	11
      000517 3E                    3667 	.uleb128	62
      000518 0B                    3668 	.uleb128	11
      000519 00                    3669 	.uleb128	0
      00051A 00                    3670 	.uleb128	0
      00051B 00                    3671 	.uleb128	0
                                   3672 
                                   3673 	.area .debug_info (NOLOAD)
      002763 00 00 08 FA           3674 	.dw	0,Ldebug_info_end-Ldebug_info_start
      002767                       3675 Ldebug_info_start:
      002767 00 02                 3676 	.dw	2
      002769 00 00 04 5F           3677 	.dw	0,(Ldebug_abbrev)
      00276D 04                    3678 	.db	4
      00276E 01                    3679 	.uleb128	1
      00276F 2E 2E 2F 53 50 4C 2F  3680 	.ascii "../SPL/src/stm8s_clk.c"
             73 72 63 2F 73 74 6D
             38 73 5F 63 6C 6B 2E
             63
      002785 00                    3681 	.db	0
      002786 00 00 16 CD           3682 	.dw	0,(Ldebug_line_start+-4)
      00278A 01                    3683 	.db	1
      00278B 53 44 43 43 20 76 65  3684 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      0027A4 00                    3685 	.db	0
      0027A5 02                    3686 	.uleb128	2
      0027A6 43 4C 4B 5F 44 65 49  3687 	.ascii "CLK_DeInit"
             6E 69 74
      0027B0 00                    3688 	.db	0
      0027B1 00 00 90 51           3689 	.dw	0,(_CLK_DeInit)
      0027B5 00 00 90 8B           3690 	.dw	0,(XG$CLK_DeInit$0$0+1)
      0027B9 01                    3691 	.db	1
      0027BA 00 00 29 44           3692 	.dw	0,(Ldebug_loc_start+932)
      0027BE 03                    3693 	.uleb128	3
      0027BF 00 00 00 A7           3694 	.dw	0,167
      0027C3 43 4C 4B 5F 46 61 73  3695 	.ascii "CLK_FastHaltWakeUpCmd"
             74 48 61 6C 74 57 61
             6B 65 55 70 43 6D 64
      0027D8 00                    3696 	.db	0
      0027D9 00 00 90 8B           3697 	.dw	0,(_CLK_FastHaltWakeUpCmd)
      0027DD 00 00 90 A3           3698 	.dw	0,(XG$CLK_FastHaltWakeUpCmd$0$0+1)
      0027E1 01                    3699 	.db	1
      0027E2 00 00 29 30           3700 	.dw	0,(Ldebug_loc_start+912)
      0027E6 04                    3701 	.uleb128	4
      0027E7 02                    3702 	.db	2
      0027E8 91                    3703 	.db	145
      0027E9 02                    3704 	.sleb128	2
      0027EA 4E 65 77 53 74 61 74  3705 	.ascii "NewState"
             65
      0027F2 00                    3706 	.db	0
      0027F3 00 00 00 A7           3707 	.dw	0,167
      0027F7 05                    3708 	.uleb128	5
      0027F8 00 00 90 95           3709 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$22)
      0027FC 00 00 90 9A           3710 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$24)
      002800 05                    3711 	.uleb128	5
      002801 00 00 90 9D           3712 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$25)
      002805 00 00 90 A2           3713 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$27)
      002809 00                    3714 	.uleb128	0
      00280A 06                    3715 	.uleb128	6
      00280B 75 6E 73 69 67 6E 65  3716 	.ascii "unsigned char"
             64 20 63 68 61 72
      002818 00                    3717 	.db	0
      002819 01                    3718 	.db	1
      00281A 08                    3719 	.db	8
      00281B 03                    3720 	.uleb128	3
      00281C 00 00 00 F9           3721 	.dw	0,249
      002820 43 4C 4B 5F 48 53 45  3722 	.ascii "CLK_HSECmd"
             43 6D 64
      00282A 00                    3723 	.db	0
      00282B 00 00 90 A3           3724 	.dw	0,(_CLK_HSECmd)
      00282F 00 00 90 BB           3725 	.dw	0,(XG$CLK_HSECmd$0$0+1)
      002833 01                    3726 	.db	1
      002834 00 00 29 1C           3727 	.dw	0,(Ldebug_loc_start+892)
      002838 04                    3728 	.uleb128	4
      002839 02                    3729 	.db	2
      00283A 91                    3730 	.db	145
      00283B 02                    3731 	.sleb128	2
      00283C 4E 65 77 53 74 61 74  3732 	.ascii "NewState"
             65
      002844 00                    3733 	.db	0
      002845 00 00 00 A7           3734 	.dw	0,167
      002849 05                    3735 	.uleb128	5
      00284A 00 00 90 AD           3736 	.dw	0,(Sstm8s_clk$CLK_HSECmd$35)
      00284E 00 00 90 B2           3737 	.dw	0,(Sstm8s_clk$CLK_HSECmd$37)
      002852 05                    3738 	.uleb128	5
      002853 00 00 90 B5           3739 	.dw	0,(Sstm8s_clk$CLK_HSECmd$38)
      002857 00 00 90 BA           3740 	.dw	0,(Sstm8s_clk$CLK_HSECmd$40)
      00285B 00                    3741 	.uleb128	0
      00285C 03                    3742 	.uleb128	3
      00285D 00 00 01 3A           3743 	.dw	0,314
      002861 43 4C 4B 5F 48 53 49  3744 	.ascii "CLK_HSICmd"
             43 6D 64
      00286B 00                    3745 	.db	0
      00286C 00 00 90 BB           3746 	.dw	0,(_CLK_HSICmd)
      002870 00 00 90 D3           3747 	.dw	0,(XG$CLK_HSICmd$0$0+1)
      002874 01                    3748 	.db	1
      002875 00 00 29 08           3749 	.dw	0,(Ldebug_loc_start+872)
      002879 04                    3750 	.uleb128	4
      00287A 02                    3751 	.db	2
      00287B 91                    3752 	.db	145
      00287C 02                    3753 	.sleb128	2
      00287D 4E 65 77 53 74 61 74  3754 	.ascii "NewState"
             65
      002885 00                    3755 	.db	0
      002886 00 00 00 A7           3756 	.dw	0,167
      00288A 05                    3757 	.uleb128	5
      00288B 00 00 90 C5           3758 	.dw	0,(Sstm8s_clk$CLK_HSICmd$48)
      00288F 00 00 90 CA           3759 	.dw	0,(Sstm8s_clk$CLK_HSICmd$50)
      002893 05                    3760 	.uleb128	5
      002894 00 00 90 CD           3761 	.dw	0,(Sstm8s_clk$CLK_HSICmd$51)
      002898 00 00 90 D2           3762 	.dw	0,(Sstm8s_clk$CLK_HSICmd$53)
      00289C 00                    3763 	.uleb128	0
      00289D 03                    3764 	.uleb128	3
      00289E 00 00 01 7B           3765 	.dw	0,379
      0028A2 43 4C 4B 5F 4C 53 49  3766 	.ascii "CLK_LSICmd"
             43 6D 64
      0028AC 00                    3767 	.db	0
      0028AD 00 00 90 D3           3768 	.dw	0,(_CLK_LSICmd)
      0028B1 00 00 90 EB           3769 	.dw	0,(XG$CLK_LSICmd$0$0+1)
      0028B5 01                    3770 	.db	1
      0028B6 00 00 28 F4           3771 	.dw	0,(Ldebug_loc_start+852)
      0028BA 04                    3772 	.uleb128	4
      0028BB 02                    3773 	.db	2
      0028BC 91                    3774 	.db	145
      0028BD 02                    3775 	.sleb128	2
      0028BE 4E 65 77 53 74 61 74  3776 	.ascii "NewState"
             65
      0028C6 00                    3777 	.db	0
      0028C7 00 00 00 A7           3778 	.dw	0,167
      0028CB 05                    3779 	.uleb128	5
      0028CC 00 00 90 DD           3780 	.dw	0,(Sstm8s_clk$CLK_LSICmd$61)
      0028D0 00 00 90 E2           3781 	.dw	0,(Sstm8s_clk$CLK_LSICmd$63)
      0028D4 05                    3782 	.uleb128	5
      0028D5 00 00 90 E5           3783 	.dw	0,(Sstm8s_clk$CLK_LSICmd$64)
      0028D9 00 00 90 EA           3784 	.dw	0,(Sstm8s_clk$CLK_LSICmd$66)
      0028DD 00                    3785 	.uleb128	0
      0028DE 03                    3786 	.uleb128	3
      0028DF 00 00 01 BC           3787 	.dw	0,444
      0028E3 43 4C 4B 5F 43 43 4F  3788 	.ascii "CLK_CCOCmd"
             43 6D 64
      0028ED 00                    3789 	.db	0
      0028EE 00 00 90 EB           3790 	.dw	0,(_CLK_CCOCmd)
      0028F2 00 00 91 03           3791 	.dw	0,(XG$CLK_CCOCmd$0$0+1)
      0028F6 01                    3792 	.db	1
      0028F7 00 00 28 E0           3793 	.dw	0,(Ldebug_loc_start+832)
      0028FB 04                    3794 	.uleb128	4
      0028FC 02                    3795 	.db	2
      0028FD 91                    3796 	.db	145
      0028FE 02                    3797 	.sleb128	2
      0028FF 4E 65 77 53 74 61 74  3798 	.ascii "NewState"
             65
      002907 00                    3799 	.db	0
      002908 00 00 00 A7           3800 	.dw	0,167
      00290C 05                    3801 	.uleb128	5
      00290D 00 00 90 F5           3802 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$74)
      002911 00 00 90 FA           3803 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$76)
      002915 05                    3804 	.uleb128	5
      002916 00 00 90 FD           3805 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$77)
      00291A 00 00 91 02           3806 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$79)
      00291E 00                    3807 	.uleb128	0
      00291F 03                    3808 	.uleb128	3
      002920 00 00 02 05           3809 	.dw	0,517
      002924 43 4C 4B 5F 43 6C 6F  3810 	.ascii "CLK_ClockSwitchCmd"
             63 6B 53 77 69 74 63
             68 43 6D 64
      002936 00                    3811 	.db	0
      002937 00 00 91 03           3812 	.dw	0,(_CLK_ClockSwitchCmd)
      00293B 00 00 91 1B           3813 	.dw	0,(XG$CLK_ClockSwitchCmd$0$0+1)
      00293F 01                    3814 	.db	1
      002940 00 00 28 CC           3815 	.dw	0,(Ldebug_loc_start+812)
      002944 04                    3816 	.uleb128	4
      002945 02                    3817 	.db	2
      002946 91                    3818 	.db	145
      002947 02                    3819 	.sleb128	2
      002948 4E 65 77 53 74 61 74  3820 	.ascii "NewState"
             65
      002950 00                    3821 	.db	0
      002951 00 00 00 A7           3822 	.dw	0,167
      002955 05                    3823 	.uleb128	5
      002956 00 00 91 0D           3824 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$87)
      00295A 00 00 91 12           3825 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$89)
      00295E 05                    3826 	.uleb128	5
      00295F 00 00 91 15           3827 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$90)
      002963 00 00 91 1A           3828 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$92)
      002967 00                    3829 	.uleb128	0
      002968 03                    3830 	.uleb128	3
      002969 00 00 02 57           3831 	.dw	0,599
      00296D 43 4C 4B 5F 53 6C 6F  3832 	.ascii "CLK_SlowActiveHaltWakeUpCmd"
             77 41 63 74 69 76 65
             48 61 6C 74 57 61 6B
             65 55 70 43 6D 64
      002988 00                    3833 	.db	0
      002989 00 00 91 1B           3834 	.dw	0,(_CLK_SlowActiveHaltWakeUpCmd)
      00298D 00 00 91 33           3835 	.dw	0,(XG$CLK_SlowActiveHaltWakeUpCmd$0$0+1)
      002991 01                    3836 	.db	1
      002992 00 00 28 B8           3837 	.dw	0,(Ldebug_loc_start+792)
      002996 04                    3838 	.uleb128	4
      002997 02                    3839 	.db	2
      002998 91                    3840 	.db	145
      002999 02                    3841 	.sleb128	2
      00299A 4E 65 77 53 74 61 74  3842 	.ascii "NewState"
             65
      0029A2 00                    3843 	.db	0
      0029A3 00 00 00 A7           3844 	.dw	0,167
      0029A7 05                    3845 	.uleb128	5
      0029A8 00 00 91 25           3846 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$100)
      0029AC 00 00 91 2A           3847 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$102)
      0029B0 05                    3848 	.uleb128	5
      0029B1 00 00 91 2D           3849 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$103)
      0029B5 00 00 91 32           3850 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$105)
      0029B9 00                    3851 	.uleb128	0
      0029BA 03                    3852 	.uleb128	3
      0029BB 00 00 02 E0           3853 	.dw	0,736
      0029BF 43 4C 4B 5F 50 65 72  3854 	.ascii "CLK_PeripheralClockConfig"
             69 70 68 65 72 61 6C
             43 6C 6F 63 6B 43 6F
             6E 66 69 67
      0029D8 00                    3855 	.db	0
      0029D9 00 00 91 33           3856 	.dw	0,(_CLK_PeripheralClockConfig)
      0029DD 00 00 91 87           3857 	.dw	0,(XG$CLK_PeripheralClockConfig$0$0+1)
      0029E1 01                    3858 	.db	1
      0029E2 00 00 28 74           3859 	.dw	0,(Ldebug_loc_start+724)
      0029E6 04                    3860 	.uleb128	4
      0029E7 02                    3861 	.db	2
      0029E8 91                    3862 	.db	145
      0029E9 02                    3863 	.sleb128	2
      0029EA 43 4C 4B 5F 50 65 72  3864 	.ascii "CLK_Peripheral"
             69 70 68 65 72 61 6C
      0029F8 00                    3865 	.db	0
      0029F9 00 00 00 A7           3866 	.dw	0,167
      0029FD 04                    3867 	.uleb128	4
      0029FE 02                    3868 	.db	2
      0029FF 91                    3869 	.db	145
      002A00 03                    3870 	.sleb128	3
      002A01 4E 65 77 53 74 61 74  3871 	.ascii "NewState"
             65
      002A09 00                    3872 	.db	0
      002A0A 00 00 00 A7           3873 	.dw	0,167
      002A0E 07                    3874 	.uleb128	7
      002A0F 00 00 02 C7           3875 	.dw	0,711
      002A13 00 00 91 57           3876 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$118)
      002A17 05                    3877 	.uleb128	5
      002A18 00 00 91 5E           3878 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$120)
      002A1C 00 00 91 63           3879 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$122)
      002A20 05                    3880 	.uleb128	5
      002A21 00 00 91 66           3881 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$123)
      002A25 00 00 91 6B           3882 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$125)
      002A29 00                    3883 	.uleb128	0
      002A2A 08                    3884 	.uleb128	8
      002A2B 00 00 91 71           3885 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$127)
      002A2F 05                    3886 	.uleb128	5
      002A30 00 00 91 78           3887 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$129)
      002A34 00 00 91 7D           3888 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$131)
      002A38 05                    3889 	.uleb128	5
      002A39 00 00 91 80           3890 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$132)
      002A3D 00 00 91 85           3891 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$134)
      002A41 00                    3892 	.uleb128	0
      002A42 00                    3893 	.uleb128	0
      002A43 09                    3894 	.uleb128	9
      002A44 00 00 04 3B           3895 	.dw	0,1083
      002A48 43 4C 4B 5F 43 6C 6F  3896 	.ascii "CLK_ClockSwitchConfig"
             63 6B 53 77 69 74 63
             68 43 6F 6E 66 69 67
      002A5D 00                    3897 	.db	0
      002A5E 00 00 91 87           3898 	.dw	0,(_CLK_ClockSwitchConfig)
      002A62 00 00 92 8D           3899 	.dw	0,(XG$CLK_ClockSwitchConfig$0$0+1)
      002A66 01                    3900 	.db	1
      002A67 00 00 28 00           3901 	.dw	0,(Ldebug_loc_start+608)
      002A6B 00 00 00 A7           3902 	.dw	0,167
      002A6F 04                    3903 	.uleb128	4
      002A70 02                    3904 	.db	2
      002A71 91                    3905 	.db	145
      002A72 02                    3906 	.sleb128	2
      002A73 43 4C 4B 5F 53 77 69  3907 	.ascii "CLK_SwitchMode"
             74 63 68 4D 6F 64 65
      002A81 00                    3908 	.db	0
      002A82 00 00 00 A7           3909 	.dw	0,167
      002A86 04                    3910 	.uleb128	4
      002A87 02                    3911 	.db	2
      002A88 91                    3912 	.db	145
      002A89 03                    3913 	.sleb128	3
      002A8A 43 4C 4B 5F 4E 65 77  3914 	.ascii "CLK_NewClock"
             43 6C 6F 63 6B
      002A96 00                    3915 	.db	0
      002A97 00 00 00 A7           3916 	.dw	0,167
      002A9B 04                    3917 	.uleb128	4
      002A9C 02                    3918 	.db	2
      002A9D 91                    3919 	.db	145
      002A9E 04                    3920 	.sleb128	4
      002A9F 49 54 53 74 61 74 65  3921 	.ascii "ITState"
      002AA6 00                    3922 	.db	0
      002AA7 00 00 00 A7           3923 	.dw	0,167
      002AAB 04                    3924 	.uleb128	4
      002AAC 02                    3925 	.db	2
      002AAD 91                    3926 	.db	145
      002AAE 05                    3927 	.sleb128	5
      002AAF 43 4C 4B 5F 43 75 72  3928 	.ascii "CLK_CurrentClockState"
             72 65 6E 74 43 6C 6F
             63 6B 53 74 61 74 65
      002AC4 00                    3929 	.db	0
      002AC5 00 00 00 A7           3930 	.dw	0,167
      002AC9 0A                    3931 	.uleb128	10
      002ACA 00 00 03 A1           3932 	.dw	0,929
      002ACE 00 00 91 9F           3933 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$149)
      002AD2 00 00 91 D6           3934 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$165)
      002AD6 05                    3935 	.uleb128	5
      002AD7 00 00 91 AE           3936 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$153)
      002ADB 00 00 91 B3           3937 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$155)
      002ADF 05                    3938 	.uleb128	5
      002AE0 00 00 91 B6           3939 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$156)
      002AE4 00 00 91 BB           3940 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$158)
      002AE8 05                    3941 	.uleb128	5
      002AE9 00 00 91 D2           3942 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$162)
      002AED 00 00 91 D3           3943 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$164)
      002AF1 05                    3944 	.uleb128	5
      002AF2 00 00 91 DC           3945 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$167)
      002AF6 00 00 91 DF           3946 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$169)
      002AFA 05                    3947 	.uleb128	5
      002AFB 00 00 91 E2           3948 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$170)
      002AFF 00 00 91 E3           3949 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$172)
      002B03 00                    3950 	.uleb128	0
      002B04 0A                    3951 	.uleb128	10
      002B05 00 00 03 DC           3952 	.dw	0,988
      002B09 00 00 91 E6           3953 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$173)
      002B0D 00 00 92 16           3954 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$187)
      002B11 05                    3955 	.uleb128	5
      002B12 00 00 91 ED           3956 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$175)
      002B16 00 00 91 F2           3957 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$177)
      002B1A 05                    3958 	.uleb128	5
      002B1B 00 00 91 F5           3959 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$178)
      002B1F 00 00 91 FA           3960 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$180)
      002B23 05                    3961 	.uleb128	5
      002B24 00 00 92 12           3962 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$184)
      002B28 00 00 92 13           3963 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$186)
      002B2C 05                    3964 	.uleb128	5
      002B2D 00 00 92 1C           3965 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$189)
      002B31 00 00 92 27           3966 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$192)
      002B35 05                    3967 	.uleb128	5
      002B36 00 00 92 2A           3968 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$193)
      002B3A 00 00 92 2B           3969 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$195)
      002B3E 00                    3970 	.uleb128	0
      002B3F 07                    3971 	.uleb128	7
      002B40 00 00 04 01           3972 	.dw	0,1025
      002B44 00 00 92 32           3973 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$197)
      002B48 05                    3974 	.uleb128	5
      002B49 00 00 92 45           3975 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$200)
      002B4D 00 00 92 4D           3976 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$202)
      002B51 05                    3977 	.uleb128	5
      002B52 00 00 92 63           3978 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$205)
      002B56 00 00 92 6B           3979 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$207)
      002B5A 05                    3980 	.uleb128	5
      002B5B 00 00 92 81           3981 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$210)
      002B5F 00 00 92 89           3982 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$212)
      002B63 00                    3983 	.uleb128	0
      002B64 0B                    3984 	.uleb128	11
      002B65 02                    3985 	.db	2
      002B66 91                    3986 	.db	145
      002B67 7F                    3987 	.sleb128	-1
      002B68 63 6C 6F 63 6B 5F 6D  3988 	.ascii "clock_master"
             61 73 74 65 72
      002B74 00                    3989 	.db	0
      002B75 00 00 00 A7           3990 	.dw	0,167
      002B79 0B                    3991 	.uleb128	11
      002B7A 06                    3992 	.db	6
      002B7B 52                    3993 	.db	82
      002B7C 93                    3994 	.db	147
      002B7D 01                    3995 	.uleb128	1
      002B7E 51                    3996 	.db	81
      002B7F 93                    3997 	.db	147
      002B80 01                    3998 	.uleb128	1
      002B81 44 6F 77 6E 43 6F 75  3999 	.ascii "DownCounter"
             6E 74 65 72
      002B8C 00                    4000 	.db	0
      002B8D 00 00 04 3B           4001 	.dw	0,1083
      002B91 0B                    4002 	.uleb128	11
      002B92 01                    4003 	.db	1
      002B93 51                    4004 	.db	81
      002B94 53 77 69 66           4005 	.ascii "Swif"
      002B98 00                    4006 	.db	0
      002B99 00 00 00 A7           4007 	.dw	0,167
      002B9D 00                    4008 	.uleb128	0
      002B9E 06                    4009 	.uleb128	6
      002B9F 75 6E 73 69 67 6E 65  4010 	.ascii "unsigned int"
             64 20 69 6E 74
      002BAB 00                    4011 	.db	0
      002BAC 02                    4012 	.db	2
      002BAD 07                    4013 	.db	7
      002BAE 03                    4014 	.uleb128	3
      002BAF 00 00 04 8A           4015 	.dw	0,1162
      002BB3 43 4C 4B 5F 48 53 49  4016 	.ascii "CLK_HSIPrescalerConfig"
             50 72 65 73 63 61 6C
             65 72 43 6F 6E 66 69
             67
      002BC9 00                    4017 	.db	0
      002BCA 00 00 92 8D           4018 	.dw	0,(_CLK_HSIPrescalerConfig)
      002BCE 00 00 92 9E           4019 	.dw	0,(XG$CLK_HSIPrescalerConfig$0$0+1)
      002BD2 01                    4020 	.db	1
      002BD3 00 00 27 EC           4021 	.dw	0,(Ldebug_loc_start+588)
      002BD7 04                    4022 	.uleb128	4
      002BD8 02                    4023 	.db	2
      002BD9 91                    4024 	.db	145
      002BDA 02                    4025 	.sleb128	2
      002BDB 48 53 49 50 72 65 73  4026 	.ascii "HSIPrescaler"
             63 61 6C 65 72
      002BE7 00                    4027 	.db	0
      002BE8 00 00 00 A7           4028 	.dw	0,167
      002BEC 00                    4029 	.uleb128	0
      002BED 03                    4030 	.uleb128	3
      002BEE 00 00 04 BB           4031 	.dw	0,1211
      002BF2 43 4C 4B 5F 43 43 4F  4032 	.ascii "CLK_CCOConfig"
             43 6F 6E 66 69 67
      002BFF 00                    4033 	.db	0
      002C00 00 00 92 9E           4034 	.dw	0,(_CLK_CCOConfig)
      002C04 00 00 92 B7           4035 	.dw	0,(XG$CLK_CCOConfig$0$0+1)
      002C08 01                    4036 	.db	1
      002C09 00 00 27 D8           4037 	.dw	0,(Ldebug_loc_start+568)
      002C0D 04                    4038 	.uleb128	4
      002C0E 02                    4039 	.db	2
      002C0F 91                    4040 	.db	145
      002C10 02                    4041 	.sleb128	2
      002C11 43 4C 4B 5F 43 43 4F  4042 	.ascii "CLK_CCO"
      002C18 00                    4043 	.db	0
      002C19 00 00 00 A7           4044 	.dw	0,167
      002C1D 00                    4045 	.uleb128	0
      002C1E 03                    4046 	.uleb128	3
      002C1F 00 00 05 1D           4047 	.dw	0,1309
      002C23 43 4C 4B 5F 49 54 43  4048 	.ascii "CLK_ITConfig"
             6F 6E 66 69 67
      002C2F 00                    4049 	.db	0
      002C30 00 00 92 B7           4050 	.dw	0,(_CLK_ITConfig)
      002C34 00 00 93 1F           4051 	.dw	0,(XG$CLK_ITConfig$0$0+1)
      002C38 01                    4052 	.db	1
      002C39 00 00 27 94           4053 	.dw	0,(Ldebug_loc_start+500)
      002C3D 04                    4054 	.uleb128	4
      002C3E 02                    4055 	.db	2
      002C3F 91                    4056 	.db	145
      002C40 02                    4057 	.sleb128	2
      002C41 43 4C 4B 5F 49 54     4058 	.ascii "CLK_IT"
      002C47 00                    4059 	.db	0
      002C48 00 00 00 A7           4060 	.dw	0,167
      002C4C 04                    4061 	.uleb128	4
      002C4D 02                    4062 	.db	2
      002C4E 91                    4063 	.db	145
      002C4F 03                    4064 	.sleb128	3
      002C50 4E 65 77 53 74 61 74  4065 	.ascii "NewState"
             65
      002C58 00                    4066 	.db	0
      002C59 00 00 00 A7           4067 	.dw	0,167
      002C5D 07                    4068 	.uleb128	7
      002C5E 00 00 05 0D           4069 	.dw	0,1293
      002C62 00 00 92 DA           4070 	.dw	0,(Sstm8s_clk$CLK_ITConfig$240)
      002C66 05                    4071 	.uleb128	5
      002C67 00 00 92 E7           4072 	.dw	0,(Sstm8s_clk$CLK_ITConfig$242)
      002C6B 00 00 92 FD           4073 	.dw	0,(Sstm8s_clk$CLK_ITConfig$248)
      002C6F 00                    4074 	.uleb128	0
      002C70 08                    4075 	.uleb128	8
      002C71 00 00 92 FD           4076 	.dw	0,(Sstm8s_clk$CLK_ITConfig$250)
      002C75 05                    4077 	.uleb128	5
      002C76 00 00 93 0A           4078 	.dw	0,(Sstm8s_clk$CLK_ITConfig$252)
      002C7A 00 00 93 1D           4079 	.dw	0,(Sstm8s_clk$CLK_ITConfig$257)
      002C7E 00                    4080 	.uleb128	0
      002C7F 00                    4081 	.uleb128	0
      002C80 03                    4082 	.uleb128	3
      002C81 00 00 05 69           4083 	.dw	0,1385
      002C85 43 4C 4B 5F 53 59 53  4084 	.ascii "CLK_SYSCLKConfig"
             43 4C 4B 43 6F 6E 66
             69 67
      002C95 00                    4085 	.db	0
      002C96 00 00 93 1F           4086 	.dw	0,(_CLK_SYSCLKConfig)
      002C9A 00 00 93 55           4087 	.dw	0,(XG$CLK_SYSCLKConfig$0$0+1)
      002C9E 01                    4088 	.db	1
      002C9F 00 00 27 68           4089 	.dw	0,(Ldebug_loc_start+456)
      002CA3 04                    4090 	.uleb128	4
      002CA4 02                    4091 	.db	2
      002CA5 91                    4092 	.db	145
      002CA6 02                    4093 	.sleb128	2
      002CA7 43 4C 4B 5F 50 72 65  4094 	.ascii "CLK_Prescaler"
             73 63 61 6C 65 72
      002CB4 00                    4095 	.db	0
      002CB5 00 00 00 A7           4096 	.dw	0,167
      002CB9 05                    4097 	.uleb128	5
      002CBA 00 00 93 2A           4098 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$268)
      002CBE 00 00 93 3D           4099 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$271)
      002CC2 05                    4100 	.uleb128	5
      002CC3 00 00 93 40           4101 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$272)
      002CC7 00 00 93 53           4102 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$275)
      002CCB 00                    4103 	.uleb128	0
      002CCC 03                    4104 	.uleb128	3
      002CCD 00 00 05 B5           4105 	.dw	0,1461
      002CD1 43 4C 4B 5F 53 57 49  4106 	.ascii "CLK_SWIMConfig"
             4D 43 6F 6E 66 69 67
      002CDF 00                    4107 	.db	0
      002CE0 00 00 93 55           4108 	.dw	0,(_CLK_SWIMConfig)
      002CE4 00 00 93 6D           4109 	.dw	0,(XG$CLK_SWIMConfig$0$0+1)
      002CE8 01                    4110 	.db	1
      002CE9 00 00 27 54           4111 	.dw	0,(Ldebug_loc_start+436)
      002CED 04                    4112 	.uleb128	4
      002CEE 02                    4113 	.db	2
      002CEF 91                    4114 	.db	145
      002CF0 02                    4115 	.sleb128	2
      002CF1 43 4C 4B 5F 53 57 49  4116 	.ascii "CLK_SWIMDivider"
             4D 44 69 76 69 64 65
             72
      002D00 00                    4117 	.db	0
      002D01 00 00 00 A7           4118 	.dw	0,167
      002D05 05                    4119 	.uleb128	5
      002D06 00 00 93 5F           4120 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$284)
      002D0A 00 00 93 64           4121 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$286)
      002D0E 05                    4122 	.uleb128	5
      002D0F 00 00 93 67           4123 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$287)
      002D13 00 00 93 6C           4124 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$289)
      002D17 00                    4125 	.uleb128	0
      002D18 02                    4126 	.uleb128	2
      002D19 43 4C 4B 5F 43 6C 6F  4127 	.ascii "CLK_ClockSecuritySystemEnable"
             63 6B 53 65 63 75 72
             69 74 79 53 79 73 74
             65 6D 45 6E 61 62 6C
             65
      002D36 00                    4128 	.db	0
      002D37 00 00 93 6D           4129 	.dw	0,(_CLK_ClockSecuritySystemEnable)
      002D3B 00 00 93 76           4130 	.dw	0,(XG$CLK_ClockSecuritySystemEnable$0$0+1)
      002D3F 01                    4131 	.db	1
      002D40 00 00 27 40           4132 	.dw	0,(Ldebug_loc_start+416)
      002D44 0C                    4133 	.uleb128	12
      002D45 43 4C 4B 5F 47 65 74  4134 	.ascii "CLK_GetSYSCLKSource"
             53 59 53 43 4C 4B 53
             6F 75 72 63 65
      002D58 00                    4135 	.db	0
      002D59 00 00 93 76           4136 	.dw	0,(_CLK_GetSYSCLKSource)
      002D5D 00 00 93 7A           4137 	.dw	0,(XG$CLK_GetSYSCLKSource$0$0+1)
      002D61 01                    4138 	.db	1
      002D62 00 00 27 2C           4139 	.dw	0,(Ldebug_loc_start+396)
      002D66 00 00 00 A7           4140 	.dw	0,167
      002D6A 06                    4141 	.uleb128	6
      002D6B 75 6E 73 69 67 6E 65  4142 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      002D78 00                    4143 	.db	0
      002D79 04                    4144 	.db	4
      002D7A 07                    4145 	.db	7
      002D7B 09                    4146 	.uleb128	9
      002D7C 00 00 06 AA           4147 	.dw	0,1706
      002D80 43 4C 4B 5F 47 65 74  4148 	.ascii "CLK_GetClockFreq"
             43 6C 6F 63 6B 46 72
             65 71
      002D90 00                    4149 	.db	0
      002D91 00 00 93 7A           4150 	.dw	0,(_CLK_GetClockFreq)
      002D95 00 00 93 D9           4151 	.dw	0,(XG$CLK_GetClockFreq$0$0+1)
      002D99 01                    4152 	.db	1
      002D9A 00 00 26 94           4153 	.dw	0,(Ldebug_loc_start+244)
      002D9E 00 00 06 07           4154 	.dw	0,1543
      002DA2 05                    4155 	.uleb128	5
      002DA3 00 00 93 8D           4156 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$311)
      002DA7 00 00 93 9F           4157 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$316)
      002DAB 05                    4158 	.uleb128	5
      002DAC 00 00 93 C1           4159 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$326)
      002DB0 00 00 93 C8           4160 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$328)
      002DB4 05                    4161 	.uleb128	5
      002DB5 00 00 93 CB           4162 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$329)
      002DB9 00 00 93 D3           4163 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$331)
      002DBD 0B                    4164 	.uleb128	11
      002DBE 0E                    4165 	.db	14
      002DBF 52                    4166 	.db	82
      002DC0 93                    4167 	.db	147
      002DC1 01                    4168 	.uleb128	1
      002DC2 51                    4169 	.db	81
      002DC3 93                    4170 	.db	147
      002DC4 01                    4171 	.uleb128	1
      002DC5 91                    4172 	.db	145
      002DC6 7E                    4173 	.sleb128	-2
      002DC7 93                    4174 	.db	147
      002DC8 01                    4175 	.uleb128	1
      002DC9 91                    4176 	.db	145
      002DCA 7F                    4177 	.sleb128	-1
      002DCB 93                    4178 	.db	147
      002DCC 01                    4179 	.uleb128	1
      002DCD 63 6C 6F 63 6B 66 72  4180 	.ascii "clockfrequency"
             65 71 75 65 6E 63 79
      002DDB 00                    4181 	.db	0
      002DDC 00 00 06 07           4182 	.dw	0,1543
      002DE0 0B                    4183 	.uleb128	11
      002DE1 02                    4184 	.db	2
      002DE2 91                    4185 	.db	145
      002DE3 7F                    4186 	.sleb128	-1
      002DE4 63 6C 6F 63 6B 73 6F  4187 	.ascii "clocksource"
             75 72 63 65
      002DEF 00                    4188 	.db	0
      002DF0 00 00 00 A7           4189 	.dw	0,167
      002DF4 0B                    4190 	.uleb128	11
      002DF5 01                    4191 	.db	1
      002DF6 50                    4192 	.db	80
      002DF7 74 6D 70              4193 	.ascii "tmp"
      002DFA 00                    4194 	.db	0
      002DFB 00 00 00 A7           4195 	.dw	0,167
      002DFF 0B                    4196 	.uleb128	11
      002E00 01                    4197 	.db	1
      002E01 50                    4198 	.db	80
      002E02 70 72 65 73 63        4199 	.ascii "presc"
      002E07 00                    4200 	.db	0
      002E08 00 00 00 A7           4201 	.dw	0,167
      002E0C 00                    4202 	.uleb128	0
      002E0D 03                    4203 	.uleb128	3
      002E0E 00 00 06 FB           4204 	.dw	0,1787
      002E12 43 4C 4B 5F 41 64 6A  4205 	.ascii "CLK_AdjustHSICalibrationValue"
             75 73 74 48 53 49 43
             61 6C 69 62 72 61 74
             69 6F 6E 56 61 6C 75
             65
      002E2F 00                    4206 	.db	0
      002E30 00 00 93 D9           4207 	.dw	0,(_CLK_AdjustHSICalibrationValue)
      002E34 00 00 93 E4           4208 	.dw	0,(XG$CLK_AdjustHSICalibrationValue$0$0+1)
      002E38 01                    4209 	.db	1
      002E39 00 00 26 80           4210 	.dw	0,(Ldebug_loc_start+224)
      002E3D 04                    4211 	.uleb128	4
      002E3E 02                    4212 	.db	2
      002E3F 91                    4213 	.db	145
      002E40 02                    4214 	.sleb128	2
      002E41 43 4C 4B 5F 48 53 49  4215 	.ascii "CLK_HSICalibrationValue"
             43 61 6C 69 62 72 61
             74 69 6F 6E 56 61 6C
             75 65
      002E58 00                    4216 	.db	0
      002E59 00 00 00 A7           4217 	.dw	0,167
      002E5D 00                    4218 	.uleb128	0
      002E5E 02                    4219 	.uleb128	2
      002E5F 43 4C 4B 5F 53 59 53  4220 	.ascii "CLK_SYSCLKEmergencyClear"
             43 4C 4B 45 6D 65 72
             67 65 6E 63 79 43 6C
             65 61 72
      002E77 00                    4221 	.db	0
      002E78 00 00 93 E4           4222 	.dw	0,(_CLK_SYSCLKEmergencyClear)
      002E7C 00 00 93 ED           4223 	.dw	0,(XG$CLK_SYSCLKEmergencyClear$0$0+1)
      002E80 01                    4224 	.db	1
      002E81 00 00 26 6C           4225 	.dw	0,(Ldebug_loc_start+204)
      002E85 09                    4226 	.uleb128	9
      002E86 00 00 07 D0           4227 	.dw	0,2000
      002E8A 43 4C 4B 5F 47 65 74  4228 	.ascii "CLK_GetFlagStatus"
             46 6C 61 67 53 74 61
             74 75 73
      002E9B 00                    4229 	.db	0
      002E9C 00 00 93 ED           4230 	.dw	0,(_CLK_GetFlagStatus)
      002EA0 00 00 94 50           4231 	.dw	0,(XG$CLK_GetFlagStatus$0$0+1)
      002EA4 01                    4232 	.db	1
      002EA5 00 00 25 F8           4233 	.dw	0,(Ldebug_loc_start+88)
      002EA9 00 00 00 A7           4234 	.dw	0,167
      002EAD 04                    4235 	.uleb128	4
      002EAE 02                    4236 	.db	2
      002EAF 91                    4237 	.db	145
      002EB0 02                    4238 	.sleb128	2
      002EB1 43 4C 4B 5F 46 4C 41  4239 	.ascii "CLK_FLAG"
             47
      002EB9 00                    4240 	.db	0
      002EBA 00 00 07 D0           4241 	.dw	0,2000
      002EBE 05                    4242 	.uleb128	5
      002EBF 00 00 93 FD           4243 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$355)
      002EC3 00 00 94 00           4244 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$357)
      002EC7 05                    4245 	.uleb128	5
      002EC8 00 00 94 0E           4246 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$360)
      002ECC 00 00 94 11           4247 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$362)
      002ED0 05                    4248 	.uleb128	5
      002ED1 00 00 94 1F           4249 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$365)
      002ED5 00 00 94 22           4250 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$367)
      002ED9 05                    4251 	.uleb128	5
      002EDA 00 00 94 30           4252 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$370)
      002EDE 00 00 94 33           4253 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$372)
      002EE2 05                    4254 	.uleb128	5
      002EE3 00 00 94 36           4255 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$373)
      002EE7 00 00 94 39           4256 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$375)
      002EEB 05                    4257 	.uleb128	5
      002EEC 00 00 94 47           4258 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$379)
      002EF0 00 00 94 49           4259 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$381)
      002EF4 05                    4260 	.uleb128	5
      002EF5 00 00 94 4C           4261 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$382)
      002EF9 00 00 94 4D           4262 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$384)
      002EFD 0B                    4263 	.uleb128	11
      002EFE 06                    4264 	.db	6
      002EFF 52                    4265 	.db	82
      002F00 93                    4266 	.db	147
      002F01 01                    4267 	.uleb128	1
      002F02 50                    4268 	.db	80
      002F03 93                    4269 	.db	147
      002F04 01                    4270 	.uleb128	1
      002F05 73 74 61 74 75 73 72  4271 	.ascii "statusreg"
             65 67
      002F0E 00                    4272 	.db	0
      002F0F 00 00 04 3B           4273 	.dw	0,1083
      002F13 0B                    4274 	.uleb128	11
      002F14 01                    4275 	.db	1
      002F15 50                    4276 	.db	80
      002F16 74 6D 70 72 65 67     4277 	.ascii "tmpreg"
      002F1C 00                    4278 	.db	0
      002F1D 00 00 00 A7           4279 	.dw	0,167
      002F21 0B                    4280 	.uleb128	11
      002F22 01                    4281 	.db	1
      002F23 50                    4282 	.db	80
      002F24 62 69 74 73 74 61 74  4283 	.ascii "bitstatus"
             75 73
      002F2D 00                    4284 	.db	0
      002F2E 00 00 00 A7           4285 	.dw	0,167
      002F32 00                    4286 	.uleb128	0
      002F33 06                    4287 	.uleb128	6
      002F34 75 6E 73 69 67 6E 65  4288 	.ascii "unsigned int"
             64 20 69 6E 74
      002F40 00                    4289 	.db	0
      002F41 02                    4290 	.db	2
      002F42 07                    4291 	.db	7
      002F43 09                    4292 	.uleb128	9
      002F44 00 00 08 5F           4293 	.dw	0,2143
      002F48 43 4C 4B 5F 47 65 74  4294 	.ascii "CLK_GetITStatus"
             49 54 53 74 61 74 75
             73
      002F57 00                    4295 	.db	0
      002F58 00 00 94 50           4296 	.dw	0,(_CLK_GetITStatus)
      002F5C 00 00 94 8A           4297 	.dw	0,(XG$CLK_GetITStatus$0$0+1)
      002F60 01                    4298 	.db	1
      002F61 00 00 25 C0           4299 	.dw	0,(Ldebug_loc_start+32)
      002F65 00 00 00 A7           4300 	.dw	0,167
      002F69 04                    4301 	.uleb128	4
      002F6A 02                    4302 	.db	2
      002F6B 91                    4303 	.db	145
      002F6C 02                    4304 	.sleb128	2
      002F6D 43 4C 4B 5F 49 54     4305 	.ascii "CLK_IT"
      002F73 00                    4306 	.db	0
      002F74 00 00 00 A7           4307 	.dw	0,167
      002F78 07                    4308 	.uleb128	7
      002F79 00 00 08 31           4309 	.dw	0,2097
      002F7D 00 00 94 5C           4310 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$394)
      002F81 05                    4311 	.uleb128	5
      002F82 00 00 94 6B           4312 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$397)
      002F86 00 00 94 6D           4313 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$399)
      002F8A 05                    4314 	.uleb128	5
      002F8B 00 00 94 70           4315 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$400)
      002F8F 00 00 94 71           4316 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$402)
      002F93 00                    4317 	.uleb128	0
      002F94 07                    4318 	.uleb128	7
      002F95 00 00 08 4D           4319 	.dw	0,2125
      002F99 00 00 94 74           4320 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$403)
      002F9D 05                    4321 	.uleb128	5
      002F9E 00 00 94 83           4322 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$406)
      002FA2 00 00 94 85           4323 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$408)
      002FA6 05                    4324 	.uleb128	5
      002FA7 00 00 94 88           4325 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$409)
      002FAB 00 00 94 89           4326 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$411)
      002FAF 00                    4327 	.uleb128	0
      002FB0 0B                    4328 	.uleb128	11
      002FB1 01                    4329 	.db	1
      002FB2 50                    4330 	.db	80
      002FB3 62 69 74 73 74 61 74  4331 	.ascii "bitstatus"
             75 73
      002FBC 00                    4332 	.db	0
      002FBD 00 00 00 A7           4333 	.dw	0,167
      002FC1 00                    4334 	.uleb128	0
      002FC2 03                    4335 	.uleb128	3
      002FC3 00 00 08 A9           4336 	.dw	0,2217
      002FC7 43 4C 4B 5F 43 6C 65  4337 	.ascii "CLK_ClearITPendingBit"
             61 72 49 54 50 65 6E
             64 69 6E 67 42 69 74
      002FDC 00                    4338 	.db	0
      002FDD 00 00 94 8A           4339 	.dw	0,(_CLK_ClearITPendingBit)
      002FE1 00 00 94 AA           4340 	.dw	0,(XG$CLK_ClearITPendingBit$0$0+1)
      002FE5 01                    4341 	.db	1
      002FE6 00 00 25 A0           4342 	.dw	0,(Ldebug_loc_start)
      002FEA 04                    4343 	.uleb128	4
      002FEB 02                    4344 	.db	2
      002FEC 91                    4345 	.db	145
      002FED 02                    4346 	.sleb128	2
      002FEE 43 4C 4B 5F 49 54     4347 	.ascii "CLK_IT"
      002FF4 00                    4348 	.db	0
      002FF5 00 00 00 A7           4349 	.dw	0,167
      002FF9 05                    4350 	.uleb128	5
      002FFA 00 00 94 96           4351 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$420)
      002FFE 00 00 94 9E           4352 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$422)
      003002 05                    4353 	.uleb128	5
      003003 00 00 94 A1           4354 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$423)
      003007 00 00 94 A9           4355 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$425)
      00300B 00                    4356 	.uleb128	0
      00300C 0D                    4357 	.uleb128	13
      00300D 00 00 00 A7           4358 	.dw	0,167
      003011 0E                    4359 	.uleb128	14
      003012 00 00 08 BB           4360 	.dw	0,2235
      003016 04                    4361 	.db	4
      003017 00 00 08 A9           4362 	.dw	0,2217
      00301B 0F                    4363 	.uleb128	15
      00301C 03                    4364 	.db	3
      00301D 00                    4365 	.uleb128	0
      00301E 10                    4366 	.uleb128	16
      00301F 05                    4367 	.db	5
      003020 03                    4368 	.db	3
      003021 00 00 80 B4           4369 	.dw	0,(_HSIDivFactor)
      003025 48 53 49 44 69 76 46  4370 	.ascii "HSIDivFactor"
             61 63 74 6F 72
      003031 00                    4371 	.db	0
      003032 01                    4372 	.db	1
      003033 00 00 08 AE           4373 	.dw	0,2222
      003037 0E                    4374 	.uleb128	14
      003038 00 00 08 E1           4375 	.dw	0,2273
      00303C 08                    4376 	.db	8
      00303D 00 00 08 A9           4377 	.dw	0,2217
      003041 0F                    4378 	.uleb128	15
      003042 07                    4379 	.db	7
      003043 00                    4380 	.uleb128	0
      003044 10                    4381 	.uleb128	16
      003045 05                    4382 	.db	5
      003046 03                    4383 	.db	3
      003047 00 00 80 B8           4384 	.dw	0,(_CLKPrescTable)
      00304B 43 4C 4B 50 72 65 73  4385 	.ascii "CLKPrescTable"
             63 54 61 62 6C 65
      003058 00                    4386 	.db	0
      003059 01                    4387 	.db	1
      00305A 00 00 08 D4           4388 	.dw	0,2260
      00305E 00                    4389 	.uleb128	0
      00305F 00                    4390 	.uleb128	0
      003060 00                    4391 	.uleb128	0
      003061                       4392 Ldebug_info_end:
                                   4393 
                                   4394 	.area .debug_pubnames (NOLOAD)
      00068B 00 00 02 3D           4395 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      00068F                       4396 Ldebug_pubnames_start:
      00068F 00 02                 4397 	.dw	2
      000691 00 00 27 63           4398 	.dw	0,(Ldebug_info_start-4)
      000695 00 00 08 FE           4399 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000699 00 00 00 42           4400 	.dw	0,66
      00069D 43 4C 4B 5F 44 65 49  4401 	.ascii "CLK_DeInit"
             6E 69 74
      0006A7 00                    4402 	.db	0
      0006A8 00 00 00 5B           4403 	.dw	0,91
      0006AC 43 4C 4B 5F 46 61 73  4404 	.ascii "CLK_FastHaltWakeUpCmd"
             74 48 61 6C 74 57 61
             6B 65 55 70 43 6D 64
      0006C1 00                    4405 	.db	0
      0006C2 00 00 00 B8           4406 	.dw	0,184
      0006C6 43 4C 4B 5F 48 53 45  4407 	.ascii "CLK_HSECmd"
             43 6D 64
      0006D0 00                    4408 	.db	0
      0006D1 00 00 00 F9           4409 	.dw	0,249
      0006D5 43 4C 4B 5F 48 53 49  4410 	.ascii "CLK_HSICmd"
             43 6D 64
      0006DF 00                    4411 	.db	0
      0006E0 00 00 01 3A           4412 	.dw	0,314
      0006E4 43 4C 4B 5F 4C 53 49  4413 	.ascii "CLK_LSICmd"
             43 6D 64
      0006EE 00                    4414 	.db	0
      0006EF 00 00 01 7B           4415 	.dw	0,379
      0006F3 43 4C 4B 5F 43 43 4F  4416 	.ascii "CLK_CCOCmd"
             43 6D 64
      0006FD 00                    4417 	.db	0
      0006FE 00 00 01 BC           4418 	.dw	0,444
      000702 43 4C 4B 5F 43 6C 6F  4419 	.ascii "CLK_ClockSwitchCmd"
             63 6B 53 77 69 74 63
             68 43 6D 64
      000714 00                    4420 	.db	0
      000715 00 00 02 05           4421 	.dw	0,517
      000719 43 4C 4B 5F 53 6C 6F  4422 	.ascii "CLK_SlowActiveHaltWakeUpCmd"
             77 41 63 74 69 76 65
             48 61 6C 74 57 61 6B
             65 55 70 43 6D 64
      000734 00                    4423 	.db	0
      000735 00 00 02 57           4424 	.dw	0,599
      000739 43 4C 4B 5F 50 65 72  4425 	.ascii "CLK_PeripheralClockConfig"
             69 70 68 65 72 61 6C
             43 6C 6F 63 6B 43 6F
             6E 66 69 67
      000752 00                    4426 	.db	0
      000753 00 00 02 E0           4427 	.dw	0,736
      000757 43 4C 4B 5F 43 6C 6F  4428 	.ascii "CLK_ClockSwitchConfig"
             63 6B 53 77 69 74 63
             68 43 6F 6E 66 69 67
      00076C 00                    4429 	.db	0
      00076D 00 00 04 4B           4430 	.dw	0,1099
      000771 43 4C 4B 5F 48 53 49  4431 	.ascii "CLK_HSIPrescalerConfig"
             50 72 65 73 63 61 6C
             65 72 43 6F 6E 66 69
             67
      000787 00                    4432 	.db	0
      000788 00 00 04 8A           4433 	.dw	0,1162
      00078C 43 4C 4B 5F 43 43 4F  4434 	.ascii "CLK_CCOConfig"
             43 6F 6E 66 69 67
      000799 00                    4435 	.db	0
      00079A 00 00 04 BB           4436 	.dw	0,1211
      00079E 43 4C 4B 5F 49 54 43  4437 	.ascii "CLK_ITConfig"
             6F 6E 66 69 67
      0007AA 00                    4438 	.db	0
      0007AB 00 00 05 1D           4439 	.dw	0,1309
      0007AF 43 4C 4B 5F 53 59 53  4440 	.ascii "CLK_SYSCLKConfig"
             43 4C 4B 43 6F 6E 66
             69 67
      0007BF 00                    4441 	.db	0
      0007C0 00 00 05 69           4442 	.dw	0,1385
      0007C4 43 4C 4B 5F 53 57 49  4443 	.ascii "CLK_SWIMConfig"
             4D 43 6F 6E 66 69 67
      0007D2 00                    4444 	.db	0
      0007D3 00 00 05 B5           4445 	.dw	0,1461
      0007D7 43 4C 4B 5F 43 6C 6F  4446 	.ascii "CLK_ClockSecuritySystemEnable"
             63 6B 53 65 63 75 72
             69 74 79 53 79 73 74
             65 6D 45 6E 61 62 6C
             65
      0007F4 00                    4447 	.db	0
      0007F5 00 00 05 E1           4448 	.dw	0,1505
      0007F9 43 4C 4B 5F 47 65 74  4449 	.ascii "CLK_GetSYSCLKSource"
             53 59 53 43 4C 4B 53
             6F 75 72 63 65
      00080C 00                    4450 	.db	0
      00080D 00 00 06 18           4451 	.dw	0,1560
      000811 43 4C 4B 5F 47 65 74  4452 	.ascii "CLK_GetClockFreq"
             43 6C 6F 63 6B 46 72
             65 71
      000821 00                    4453 	.db	0
      000822 00 00 06 AA           4454 	.dw	0,1706
      000826 43 4C 4B 5F 41 64 6A  4455 	.ascii "CLK_AdjustHSICalibrationValue"
             75 73 74 48 53 49 43
             61 6C 69 62 72 61 74
             69 6F 6E 56 61 6C 75
             65
      000843 00                    4456 	.db	0
      000844 00 00 06 FB           4457 	.dw	0,1787
      000848 43 4C 4B 5F 53 59 53  4458 	.ascii "CLK_SYSCLKEmergencyClear"
             43 4C 4B 45 6D 65 72
             67 65 6E 63 79 43 6C
             65 61 72
      000860 00                    4459 	.db	0
      000861 00 00 07 22           4460 	.dw	0,1826
      000865 43 4C 4B 5F 47 65 74  4461 	.ascii "CLK_GetFlagStatus"
             46 6C 61 67 53 74 61
             74 75 73
      000876 00                    4462 	.db	0
      000877 00 00 07 E0           4463 	.dw	0,2016
      00087B 43 4C 4B 5F 47 65 74  4464 	.ascii "CLK_GetITStatus"
             49 54 53 74 61 74 75
             73
      00088A 00                    4465 	.db	0
      00088B 00 00 08 5F           4466 	.dw	0,2143
      00088F 43 4C 4B 5F 43 6C 65  4467 	.ascii "CLK_ClearITPendingBit"
             61 72 49 54 50 65 6E
             64 69 6E 67 42 69 74
      0008A4 00                    4468 	.db	0
      0008A5 00 00 08 BB           4469 	.dw	0,2235
      0008A9 48 53 49 44 69 76 46  4470 	.ascii "HSIDivFactor"
             61 63 74 6F 72
      0008B5 00                    4471 	.db	0
      0008B6 00 00 08 E1           4472 	.dw	0,2273
      0008BA 43 4C 4B 50 72 65 73  4473 	.ascii "CLKPrescTable"
             63 54 61 62 6C 65
      0008C7 00                    4474 	.db	0
      0008C8 00 00 00 00           4475 	.dw	0,0
      0008CC                       4476 Ldebug_pubnames_end:
                                   4477 
                                   4478 	.area .debug_frame (NOLOAD)
      001F58 00 00                 4479 	.dw	0
      001F5A 00 0E                 4480 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      001F5C                       4481 Ldebug_CIE0_start:
      001F5C FF FF                 4482 	.dw	0xffff
      001F5E FF FF                 4483 	.dw	0xffff
      001F60 01                    4484 	.db	1
      001F61 00                    4485 	.db	0
      001F62 01                    4486 	.uleb128	1
      001F63 7F                    4487 	.sleb128	-1
      001F64 09                    4488 	.db	9
      001F65 0C                    4489 	.db	12
      001F66 08                    4490 	.uleb128	8
      001F67 02                    4491 	.uleb128	2
      001F68 89                    4492 	.db	137
      001F69 01                    4493 	.uleb128	1
      001F6A                       4494 Ldebug_CIE0_end:
      001F6A 00 00 00 1A           4495 	.dw	0,26
      001F6E 00 00 1F 58           4496 	.dw	0,(Ldebug_CIE0_start-4)
      001F72 00 00 94 8A           4497 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$417)	;initial loc
      001F76 00 00 00 20           4498 	.dw	0,Sstm8s_clk$CLK_ClearITPendingBit$428-Sstm8s_clk$CLK_ClearITPendingBit$417
      001F7A 01                    4499 	.db	1
      001F7B 00 00 94 8A           4500 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$417)
      001F7F 0E                    4501 	.db	14
      001F80 02                    4502 	.uleb128	2
      001F81 01                    4503 	.db	1
      001F82 00 00 94 96           4504 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$419)
      001F86 0E                    4505 	.db	14
      001F87 02                    4506 	.uleb128	2
                                   4507 
                                   4508 	.area .debug_frame (NOLOAD)
      001F88 00 00                 4509 	.dw	0
      001F8A 00 0E                 4510 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      001F8C                       4511 Ldebug_CIE1_start:
      001F8C FF FF                 4512 	.dw	0xffff
      001F8E FF FF                 4513 	.dw	0xffff
      001F90 01                    4514 	.db	1
      001F91 00                    4515 	.db	0
      001F92 01                    4516 	.uleb128	1
      001F93 7F                    4517 	.sleb128	-1
      001F94 09                    4518 	.db	9
      001F95 0C                    4519 	.db	12
      001F96 08                    4520 	.uleb128	8
      001F97 02                    4521 	.uleb128	2
      001F98 89                    4522 	.db	137
      001F99 01                    4523 	.uleb128	1
      001F9A                       4524 Ldebug_CIE1_end:
      001F9A 00 00 00 28           4525 	.dw	0,40
      001F9E 00 00 1F 88           4526 	.dw	0,(Ldebug_CIE1_start-4)
      001FA2 00 00 94 50           4527 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$391)	;initial loc
      001FA6 00 00 00 3A           4528 	.dw	0,Sstm8s_clk$CLK_GetITStatus$415-Sstm8s_clk$CLK_GetITStatus$391
      001FAA 01                    4529 	.db	1
      001FAB 00 00 94 50           4530 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$391)
      001FAF 0E                    4531 	.db	14
      001FB0 02                    4532 	.uleb128	2
      001FB1 01                    4533 	.db	1
      001FB2 00 00 94 5C           4534 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$393)
      001FB6 0E                    4535 	.db	14
      001FB7 02                    4536 	.uleb128	2
      001FB8 01                    4537 	.db	1
      001FB9 00 00 94 6B           4538 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$396)
      001FBD 0E                    4539 	.db	14
      001FBE 02                    4540 	.uleb128	2
      001FBF 01                    4541 	.db	1
      001FC0 00 00 94 83           4542 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$405)
      001FC4 0E                    4543 	.db	14
      001FC5 02                    4544 	.uleb128	2
                                   4545 
                                   4546 	.area .debug_frame (NOLOAD)
      001FC6 00 00                 4547 	.dw	0
      001FC8 00 0E                 4548 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      001FCA                       4549 Ldebug_CIE2_start:
      001FCA FF FF                 4550 	.dw	0xffff
      001FCC FF FF                 4551 	.dw	0xffff
      001FCE 01                    4552 	.db	1
      001FCF 00                    4553 	.db	0
      001FD0 01                    4554 	.uleb128	1
      001FD1 7F                    4555 	.sleb128	-1
      001FD2 09                    4556 	.db	9
      001FD3 0C                    4557 	.db	12
      001FD4 08                    4558 	.uleb128	8
      001FD5 02                    4559 	.uleb128	2
      001FD6 89                    4560 	.db	137
      001FD7 01                    4561 	.uleb128	1
      001FD8                       4562 Ldebug_CIE2_end:
      001FD8 00 00 00 4B           4563 	.dw	0,75
      001FDC 00 00 1F C6           4564 	.dw	0,(Ldebug_CIE2_start-4)
      001FE0 00 00 93 ED           4565 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$350)	;initial loc
      001FE4 00 00 00 63           4566 	.dw	0,Sstm8s_clk$CLK_GetFlagStatus$389-Sstm8s_clk$CLK_GetFlagStatus$350
      001FE8 01                    4567 	.db	1
      001FE9 00 00 93 ED           4568 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$350)
      001FED 0E                    4569 	.db	14
      001FEE 02                    4570 	.uleb128	2
      001FEF 01                    4571 	.db	1
      001FF0 00 00 93 EE           4572 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$351)
      001FF4 0E                    4573 	.db	14
      001FF5 03                    4574 	.uleb128	3
      001FF6 01                    4575 	.db	1
      001FF7 00 00 93 FD           4576 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$354)
      001FFB 0E                    4577 	.db	14
      001FFC 03                    4578 	.uleb128	3
      001FFD 01                    4579 	.db	1
      001FFE 00 00 94 0E           4580 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$359)
      002002 0E                    4581 	.db	14
      002003 03                    4582 	.uleb128	3
      002004 01                    4583 	.db	1
      002005 00 00 94 1F           4584 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$364)
      002009 0E                    4585 	.db	14
      00200A 03                    4586 	.uleb128	3
      00200B 01                    4587 	.db	1
      00200C 00 00 94 30           4588 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$369)
      002010 0E                    4589 	.db	14
      002011 03                    4590 	.uleb128	3
      002012 01                    4591 	.db	1
      002013 00 00 94 3A           4592 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$377)
      002017 0E                    4593 	.db	14
      002018 04                    4594 	.uleb128	4
      002019 01                    4595 	.db	1
      00201A 00 00 94 3F           4596 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$378)
      00201E 0E                    4597 	.db	14
      00201F 03                    4598 	.uleb128	3
      002020 01                    4599 	.db	1
      002021 00 00 94 4F           4600 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$387)
      002025 0E                    4601 	.db	14
      002026 02                    4602 	.uleb128	2
                                   4603 
                                   4604 	.area .debug_frame (NOLOAD)
      002027 00 00                 4605 	.dw	0
      002029 00 0E                 4606 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      00202B                       4607 Ldebug_CIE3_start:
      00202B FF FF                 4608 	.dw	0xffff
      00202D FF FF                 4609 	.dw	0xffff
      00202F 01                    4610 	.db	1
      002030 00                    4611 	.db	0
      002031 01                    4612 	.uleb128	1
      002032 7F                    4613 	.sleb128	-1
      002033 09                    4614 	.db	9
      002034 0C                    4615 	.db	12
      002035 08                    4616 	.uleb128	8
      002036 02                    4617 	.uleb128	2
      002037 89                    4618 	.db	137
      002038 01                    4619 	.uleb128	1
      002039                       4620 Ldebug_CIE3_end:
      002039 00 00 00 13           4621 	.dw	0,19
      00203D 00 00 20 27           4622 	.dw	0,(Ldebug_CIE3_start-4)
      002041 00 00 93 E4           4623 	.dw	0,(Sstm8s_clk$CLK_SYSCLKEmergencyClear$344)	;initial loc
      002045 00 00 00 09           4624 	.dw	0,Sstm8s_clk$CLK_SYSCLKEmergencyClear$348-Sstm8s_clk$CLK_SYSCLKEmergencyClear$344
      002049 01                    4625 	.db	1
      00204A 00 00 93 E4           4626 	.dw	0,(Sstm8s_clk$CLK_SYSCLKEmergencyClear$344)
      00204E 0E                    4627 	.db	14
      00204F 02                    4628 	.uleb128	2
                                   4629 
                                   4630 	.area .debug_frame (NOLOAD)
      002050 00 00                 4631 	.dw	0
      002052 00 0E                 4632 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      002054                       4633 Ldebug_CIE4_start:
      002054 FF FF                 4634 	.dw	0xffff
      002056 FF FF                 4635 	.dw	0xffff
      002058 01                    4636 	.db	1
      002059 00                    4637 	.db	0
      00205A 01                    4638 	.uleb128	1
      00205B 7F                    4639 	.sleb128	-1
      00205C 09                    4640 	.db	9
      00205D 0C                    4641 	.db	12
      00205E 08                    4642 	.uleb128	8
      00205F 02                    4643 	.uleb128	2
      002060 89                    4644 	.db	137
      002061 01                    4645 	.uleb128	1
      002062                       4646 Ldebug_CIE4_end:
      002062 00 00 00 13           4647 	.dw	0,19
      002066 00 00 20 50           4648 	.dw	0,(Ldebug_CIE4_start-4)
      00206A 00 00 93 D9           4649 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$338)	;initial loc
      00206E 00 00 00 0B           4650 	.dw	0,Sstm8s_clk$CLK_AdjustHSICalibrationValue$342-Sstm8s_clk$CLK_AdjustHSICalibrationValue$338
      002072 01                    4651 	.db	1
      002073 00 00 93 D9           4652 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$338)
      002077 0E                    4653 	.db	14
      002078 02                    4654 	.uleb128	2
                                   4655 
                                   4656 	.area .debug_frame (NOLOAD)
      002079 00 00                 4657 	.dw	0
      00207B 00 0E                 4658 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      00207D                       4659 Ldebug_CIE5_start:
      00207D FF FF                 4660 	.dw	0xffff
      00207F FF FF                 4661 	.dw	0xffff
      002081 01                    4662 	.db	1
      002082 00                    4663 	.db	0
      002083 01                    4664 	.uleb128	1
      002084 7F                    4665 	.sleb128	-1
      002085 09                    4666 	.db	9
      002086 0C                    4667 	.db	12
      002087 08                    4668 	.uleb128	8
      002088 02                    4669 	.uleb128	2
      002089 89                    4670 	.db	137
      00208A 01                    4671 	.uleb128	1
      00208B                       4672 Ldebug_CIE5_end:
      00208B 00 00 00 60           4673 	.dw	0,96
      00208F 00 00 20 79           4674 	.dw	0,(Ldebug_CIE5_start-4)
      002093 00 00 93 7A           4675 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$306)	;initial loc
      002097 00 00 00 5F           4676 	.dw	0,Sstm8s_clk$CLK_GetClockFreq$336-Sstm8s_clk$CLK_GetClockFreq$306
      00209B 01                    4677 	.db	1
      00209C 00 00 93 7A           4678 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$306)
      0020A0 0E                    4679 	.db	14
      0020A1 02                    4680 	.uleb128	2
      0020A2 01                    4681 	.db	1
      0020A3 00 00 93 7C           4682 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$307)
      0020A7 0E                    4683 	.db	14
      0020A8 06                    4684 	.uleb128	6
      0020A9 01                    4685 	.db	1
      0020AA 00 00 93 8D           4686 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$310)
      0020AE 0E                    4687 	.db	14
      0020AF 06                    4688 	.uleb128	6
      0020B0 01                    4689 	.db	1
      0020B1 00 00 93 A0           4690 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$317)
      0020B5 0E                    4691 	.db	14
      0020B6 08                    4692 	.uleb128	8
      0020B7 01                    4693 	.db	1
      0020B8 00 00 93 A2           4694 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$318)
      0020BC 0E                    4695 	.db	14
      0020BD 0A                    4696 	.uleb128	10
      0020BE 01                    4697 	.db	1
      0020BF 00 00 93 A4           4698 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$319)
      0020C3 0E                    4699 	.db	14
      0020C4 0B                    4700 	.uleb128	11
      0020C5 01                    4701 	.db	1
      0020C6 00 00 93 A6           4702 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$320)
      0020CA 0E                    4703 	.db	14
      0020CB 0C                    4704 	.uleb128	12
      0020CC 01                    4705 	.db	1
      0020CD 00 00 93 A8           4706 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$321)
      0020D1 0E                    4707 	.db	14
      0020D2 0D                    4708 	.uleb128	13
      0020D3 01                    4709 	.db	1
      0020D4 00 00 93 AA           4710 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$322)
      0020D8 0E                    4711 	.db	14
      0020D9 0E                    4712 	.uleb128	14
      0020DA 01                    4713 	.db	1
      0020DB 00 00 93 AF           4714 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$323)
      0020DF 0E                    4715 	.db	14
      0020E0 06                    4716 	.uleb128	6
      0020E1 01                    4717 	.db	1
      0020E2 00 00 93 C1           4718 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$325)
      0020E6 0E                    4719 	.db	14
      0020E7 06                    4720 	.uleb128	6
      0020E8 01                    4721 	.db	1
      0020E9 00 00 93 D8           4722 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$334)
      0020ED 0E                    4723 	.db	14
      0020EE 02                    4724 	.uleb128	2
                                   4725 
                                   4726 	.area .debug_frame (NOLOAD)
      0020EF 00 00                 4727 	.dw	0
      0020F1 00 0E                 4728 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      0020F3                       4729 Ldebug_CIE6_start:
      0020F3 FF FF                 4730 	.dw	0xffff
      0020F5 FF FF                 4731 	.dw	0xffff
      0020F7 01                    4732 	.db	1
      0020F8 00                    4733 	.db	0
      0020F9 01                    4734 	.uleb128	1
      0020FA 7F                    4735 	.sleb128	-1
      0020FB 09                    4736 	.db	9
      0020FC 0C                    4737 	.db	12
      0020FD 08                    4738 	.uleb128	8
      0020FE 02                    4739 	.uleb128	2
      0020FF 89                    4740 	.db	137
      002100 01                    4741 	.uleb128	1
      002101                       4742 Ldebug_CIE6_end:
      002101 00 00 00 13           4743 	.dw	0,19
      002105 00 00 20 EF           4744 	.dw	0,(Ldebug_CIE6_start-4)
      002109 00 00 93 76           4745 	.dw	0,(Sstm8s_clk$CLK_GetSYSCLKSource$300)	;initial loc
      00210D 00 00 00 04           4746 	.dw	0,Sstm8s_clk$CLK_GetSYSCLKSource$304-Sstm8s_clk$CLK_GetSYSCLKSource$300
      002111 01                    4747 	.db	1
      002112 00 00 93 76           4748 	.dw	0,(Sstm8s_clk$CLK_GetSYSCLKSource$300)
      002116 0E                    4749 	.db	14
      002117 02                    4750 	.uleb128	2
                                   4751 
                                   4752 	.area .debug_frame (NOLOAD)
      002118 00 00                 4753 	.dw	0
      00211A 00 0E                 4754 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      00211C                       4755 Ldebug_CIE7_start:
      00211C FF FF                 4756 	.dw	0xffff
      00211E FF FF                 4757 	.dw	0xffff
      002120 01                    4758 	.db	1
      002121 00                    4759 	.db	0
      002122 01                    4760 	.uleb128	1
      002123 7F                    4761 	.sleb128	-1
      002124 09                    4762 	.db	9
      002125 0C                    4763 	.db	12
      002126 08                    4764 	.uleb128	8
      002127 02                    4765 	.uleb128	2
      002128 89                    4766 	.db	137
      002129 01                    4767 	.uleb128	1
      00212A                       4768 Ldebug_CIE7_end:
      00212A 00 00 00 13           4769 	.dw	0,19
      00212E 00 00 21 18           4770 	.dw	0,(Ldebug_CIE7_start-4)
      002132 00 00 93 6D           4771 	.dw	0,(Sstm8s_clk$CLK_ClockSecuritySystemEnable$294)	;initial loc
      002136 00 00 00 09           4772 	.dw	0,Sstm8s_clk$CLK_ClockSecuritySystemEnable$298-Sstm8s_clk$CLK_ClockSecuritySystemEnable$294
      00213A 01                    4773 	.db	1
      00213B 00 00 93 6D           4774 	.dw	0,(Sstm8s_clk$CLK_ClockSecuritySystemEnable$294)
      00213F 0E                    4775 	.db	14
      002140 02                    4776 	.uleb128	2
                                   4777 
                                   4778 	.area .debug_frame (NOLOAD)
      002141 00 00                 4779 	.dw	0
      002143 00 0E                 4780 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      002145                       4781 Ldebug_CIE8_start:
      002145 FF FF                 4782 	.dw	0xffff
      002147 FF FF                 4783 	.dw	0xffff
      002149 01                    4784 	.db	1
      00214A 00                    4785 	.db	0
      00214B 01                    4786 	.uleb128	1
      00214C 7F                    4787 	.sleb128	-1
      00214D 09                    4788 	.db	9
      00214E 0C                    4789 	.db	12
      00214F 08                    4790 	.uleb128	8
      002150 02                    4791 	.uleb128	2
      002151 89                    4792 	.db	137
      002152 01                    4793 	.uleb128	1
      002153                       4794 Ldebug_CIE8_end:
      002153 00 00 00 13           4795 	.dw	0,19
      002157 00 00 21 41           4796 	.dw	0,(Ldebug_CIE8_start-4)
      00215B 00 00 93 55           4797 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$281)	;initial loc
      00215F 00 00 00 18           4798 	.dw	0,Sstm8s_clk$CLK_SWIMConfig$292-Sstm8s_clk$CLK_SWIMConfig$281
      002163 01                    4799 	.db	1
      002164 00 00 93 55           4800 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$281)
      002168 0E                    4801 	.db	14
      002169 02                    4802 	.uleb128	2
                                   4803 
                                   4804 	.area .debug_frame (NOLOAD)
      00216A 00 00                 4805 	.dw	0
      00216C 00 0E                 4806 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      00216E                       4807 Ldebug_CIE9_start:
      00216E FF FF                 4808 	.dw	0xffff
      002170 FF FF                 4809 	.dw	0xffff
      002172 01                    4810 	.db	1
      002173 00                    4811 	.db	0
      002174 01                    4812 	.uleb128	1
      002175 7F                    4813 	.sleb128	-1
      002176 09                    4814 	.db	9
      002177 0C                    4815 	.db	12
      002178 08                    4816 	.uleb128	8
      002179 02                    4817 	.uleb128	2
      00217A 89                    4818 	.db	137
      00217B 01                    4819 	.uleb128	1
      00217C                       4820 Ldebug_CIE9_end:
      00217C 00 00 00 21           4821 	.dw	0,33
      002180 00 00 21 6A           4822 	.dw	0,(Ldebug_CIE9_start-4)
      002184 00 00 93 1F           4823 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$264)	;initial loc
      002188 00 00 00 36           4824 	.dw	0,Sstm8s_clk$CLK_SYSCLKConfig$279-Sstm8s_clk$CLK_SYSCLKConfig$264
      00218C 01                    4825 	.db	1
      00218D 00 00 93 1F           4826 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$264)
      002191 0E                    4827 	.db	14
      002192 02                    4828 	.uleb128	2
      002193 01                    4829 	.db	1
      002194 00 00 93 20           4830 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$265)
      002198 0E                    4831 	.db	14
      002199 03                    4832 	.uleb128	3
      00219A 01                    4833 	.db	1
      00219B 00 00 93 54           4834 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$277)
      00219F 0E                    4835 	.db	14
      0021A0 02                    4836 	.uleb128	2
                                   4837 
                                   4838 	.area .debug_frame (NOLOAD)
      0021A1 00 00                 4839 	.dw	0
      0021A3 00 0E                 4840 	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
      0021A5                       4841 Ldebug_CIE10_start:
      0021A5 FF FF                 4842 	.dw	0xffff
      0021A7 FF FF                 4843 	.dw	0xffff
      0021A9 01                    4844 	.db	1
      0021AA 00                    4845 	.db	0
      0021AB 01                    4846 	.uleb128	1
      0021AC 7F                    4847 	.sleb128	-1
      0021AD 09                    4848 	.db	9
      0021AE 0C                    4849 	.db	12
      0021AF 08                    4850 	.uleb128	8
      0021B0 02                    4851 	.uleb128	2
      0021B1 89                    4852 	.db	137
      0021B2 01                    4853 	.uleb128	1
      0021B3                       4854 Ldebug_CIE10_end:
      0021B3 00 00 00 2F           4855 	.dw	0,47
      0021B7 00 00 21 A1           4856 	.dw	0,(Ldebug_CIE10_start-4)
      0021BB 00 00 92 B7           4857 	.dw	0,(Sstm8s_clk$CLK_ITConfig$234)	;initial loc
      0021BF 00 00 00 68           4858 	.dw	0,Sstm8s_clk$CLK_ITConfig$262-Sstm8s_clk$CLK_ITConfig$234
      0021C3 01                    4859 	.db	1
      0021C4 00 00 92 B7           4860 	.dw	0,(Sstm8s_clk$CLK_ITConfig$234)
      0021C8 0E                    4861 	.db	14
      0021C9 02                    4862 	.uleb128	2
      0021CA 01                    4863 	.db	1
      0021CB 00 00 92 B8           4864 	.dw	0,(Sstm8s_clk$CLK_ITConfig$235)
      0021CF 0E                    4865 	.db	14
      0021D0 03                    4866 	.uleb128	3
      0021D1 01                    4867 	.db	1
      0021D2 00 00 92 C7           4868 	.dw	0,(Sstm8s_clk$CLK_ITConfig$237)
      0021D6 0E                    4869 	.db	14
      0021D7 03                    4870 	.uleb128	3
      0021D8 01                    4871 	.db	1
      0021D9 00 00 92 D3           4872 	.dw	0,(Sstm8s_clk$CLK_ITConfig$238)
      0021DD 0E                    4873 	.db	14
      0021DE 03                    4874 	.uleb128	3
      0021DF 01                    4875 	.db	1
      0021E0 00 00 93 1E           4876 	.dw	0,(Sstm8s_clk$CLK_ITConfig$260)
      0021E4 0E                    4877 	.db	14
      0021E5 02                    4878 	.uleb128	2
                                   4879 
                                   4880 	.area .debug_frame (NOLOAD)
      0021E6 00 00                 4881 	.dw	0
      0021E8 00 0E                 4882 	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
      0021EA                       4883 Ldebug_CIE11_start:
      0021EA FF FF                 4884 	.dw	0xffff
      0021EC FF FF                 4885 	.dw	0xffff
      0021EE 01                    4886 	.db	1
      0021EF 00                    4887 	.db	0
      0021F0 01                    4888 	.uleb128	1
      0021F1 7F                    4889 	.sleb128	-1
      0021F2 09                    4890 	.db	9
      0021F3 0C                    4891 	.db	12
      0021F4 08                    4892 	.uleb128	8
      0021F5 02                    4893 	.uleb128	2
      0021F6 89                    4894 	.db	137
      0021F7 01                    4895 	.uleb128	1
      0021F8                       4896 Ldebug_CIE11_end:
      0021F8 00 00 00 13           4897 	.dw	0,19
      0021FC 00 00 21 E6           4898 	.dw	0,(Ldebug_CIE11_start-4)
      002200 00 00 92 9E           4899 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$226)	;initial loc
      002204 00 00 00 19           4900 	.dw	0,Sstm8s_clk$CLK_CCOConfig$232-Sstm8s_clk$CLK_CCOConfig$226
      002208 01                    4901 	.db	1
      002209 00 00 92 9E           4902 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$226)
      00220D 0E                    4903 	.db	14
      00220E 02                    4904 	.uleb128	2
                                   4905 
                                   4906 	.area .debug_frame (NOLOAD)
      00220F 00 00                 4907 	.dw	0
      002211 00 0E                 4908 	.dw	Ldebug_CIE12_end-Ldebug_CIE12_start
      002213                       4909 Ldebug_CIE12_start:
      002213 FF FF                 4910 	.dw	0xffff
      002215 FF FF                 4911 	.dw	0xffff
      002217 01                    4912 	.db	1
      002218 00                    4913 	.db	0
      002219 01                    4914 	.uleb128	1
      00221A 7F                    4915 	.sleb128	-1
      00221B 09                    4916 	.db	9
      00221C 0C                    4917 	.db	12
      00221D 08                    4918 	.uleb128	8
      00221E 02                    4919 	.uleb128	2
      00221F 89                    4920 	.db	137
      002220 01                    4921 	.uleb128	1
      002221                       4922 Ldebug_CIE12_end:
      002221 00 00 00 13           4923 	.dw	0,19
      002225 00 00 22 0F           4924 	.dw	0,(Ldebug_CIE12_start-4)
      002229 00 00 92 8D           4925 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$219)	;initial loc
      00222D 00 00 00 11           4926 	.dw	0,Sstm8s_clk$CLK_HSIPrescalerConfig$224-Sstm8s_clk$CLK_HSIPrescalerConfig$219
      002231 01                    4927 	.db	1
      002232 00 00 92 8D           4928 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$219)
      002236 0E                    4929 	.db	14
      002237 02                    4930 	.uleb128	2
                                   4931 
                                   4932 	.area .debug_frame (NOLOAD)
      002238 00 00                 4933 	.dw	0
      00223A 00 0E                 4934 	.dw	Ldebug_CIE13_end-Ldebug_CIE13_start
      00223C                       4935 Ldebug_CIE13_start:
      00223C FF FF                 4936 	.dw	0xffff
      00223E FF FF                 4937 	.dw	0xffff
      002240 01                    4938 	.db	1
      002241 00                    4939 	.db	0
      002242 01                    4940 	.uleb128	1
      002243 7F                    4941 	.sleb128	-1
      002244 09                    4942 	.db	9
      002245 0C                    4943 	.db	12
      002246 08                    4944 	.uleb128	8
      002247 02                    4945 	.uleb128	2
      002248 89                    4946 	.db	137
      002249 01                    4947 	.uleb128	1
      00224A                       4948 Ldebug_CIE13_end:
      00224A 00 00 00 4B           4949 	.dw	0,75
      00224E 00 00 22 38           4950 	.dw	0,(Ldebug_CIE13_start-4)
      002252 00 00 91 87           4951 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$140)	;initial loc
      002256 00 00 01 06           4952 	.dw	0,Sstm8s_clk$CLK_ClockSwitchConfig$217-Sstm8s_clk$CLK_ClockSwitchConfig$140
      00225A 01                    4953 	.db	1
      00225B 00 00 91 87           4954 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$140)
      00225F 0E                    4955 	.db	14
      002260 02                    4956 	.uleb128	2
      002261 01                    4957 	.db	1
      002262 00 00 91 88           4958 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$141)
      002266 0E                    4959 	.db	14
      002267 03                    4960 	.uleb128	3
      002268 01                    4961 	.db	1
      002269 00 00 91 93           4962 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$146)
      00226D 0E                    4963 	.db	14
      00226E 04                    4964 	.uleb128	4
      00226F 01                    4965 	.db	1
      002270 00 00 91 97           4966 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$147)
      002274 0E                    4967 	.db	14
      002275 03                    4968 	.uleb128	3
      002276 01                    4969 	.db	1
      002277 00 00 91 9F           4970 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$148)
      00227B 0E                    4971 	.db	14
      00227C 03                    4972 	.uleb128	3
      00227D 01                    4973 	.db	1
      00227E 00 00 92 45           4974 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$199)
      002282 0E                    4975 	.db	14
      002283 03                    4976 	.uleb128	3
      002284 01                    4977 	.db	1
      002285 00 00 92 63           4978 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$204)
      002289 0E                    4979 	.db	14
      00228A 03                    4980 	.uleb128	3
      00228B 01                    4981 	.db	1
      00228C 00 00 92 81           4982 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$209)
      002290 0E                    4983 	.db	14
      002291 03                    4984 	.uleb128	3
      002292 01                    4985 	.db	1
      002293 00 00 92 8C           4986 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$215)
      002297 0E                    4987 	.db	14
      002298 02                    4988 	.uleb128	2
                                   4989 
                                   4990 	.area .debug_frame (NOLOAD)
      002299 00 00                 4991 	.dw	0
      00229B 00 0E                 4992 	.dw	Ldebug_CIE14_end-Ldebug_CIE14_start
      00229D                       4993 Ldebug_CIE14_start:
      00229D FF FF                 4994 	.dw	0xffff
      00229F FF FF                 4995 	.dw	0xffff
      0022A1 01                    4996 	.db	1
      0022A2 00                    4997 	.db	0
      0022A3 01                    4998 	.uleb128	1
      0022A4 7F                    4999 	.sleb128	-1
      0022A5 09                    5000 	.db	9
      0022A6 0C                    5001 	.db	12
      0022A7 08                    5002 	.uleb128	8
      0022A8 02                    5003 	.uleb128	2
      0022A9 89                    5004 	.db	137
      0022AA 01                    5005 	.uleb128	1
      0022AB                       5006 Ldebug_CIE14_end:
      0022AB 00 00 00 2F           5007 	.dw	0,47
      0022AF 00 00 22 99           5008 	.dw	0,(Ldebug_CIE14_start-4)
      0022B3 00 00 91 33           5009 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$110)	;initial loc
      0022B7 00 00 00 54           5010 	.dw	0,Sstm8s_clk$CLK_PeripheralClockConfig$138-Sstm8s_clk$CLK_PeripheralClockConfig$110
      0022BB 01                    5011 	.db	1
      0022BC 00 00 91 33           5012 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$110)
      0022C0 0E                    5013 	.db	14
      0022C1 02                    5014 	.uleb128	2
      0022C2 01                    5015 	.db	1
      0022C3 00 00 91 34           5016 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$111)
      0022C7 0E                    5017 	.db	14
      0022C8 04                    5018 	.uleb128	4
      0022C9 01                    5019 	.db	1
      0022CA 00 00 91 39           5020 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$113)
      0022CE 0E                    5021 	.db	14
      0022CF 05                    5022 	.uleb128	5
      0022D0 01                    5023 	.db	1
      0022D1 00 00 91 3E           5024 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$114)
      0022D5 0E                    5025 	.db	14
      0022D6 04                    5026 	.uleb128	4
      0022D7 01                    5027 	.db	1
      0022D8 00 00 91 86           5028 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$136)
      0022DC 0E                    5029 	.db	14
      0022DD 02                    5030 	.uleb128	2
                                   5031 
                                   5032 	.area .debug_frame (NOLOAD)
      0022DE 00 00                 5033 	.dw	0
      0022E0 00 0E                 5034 	.dw	Ldebug_CIE15_end-Ldebug_CIE15_start
      0022E2                       5035 Ldebug_CIE15_start:
      0022E2 FF FF                 5036 	.dw	0xffff
      0022E4 FF FF                 5037 	.dw	0xffff
      0022E6 01                    5038 	.db	1
      0022E7 00                    5039 	.db	0
      0022E8 01                    5040 	.uleb128	1
      0022E9 7F                    5041 	.sleb128	-1
      0022EA 09                    5042 	.db	9
      0022EB 0C                    5043 	.db	12
      0022EC 08                    5044 	.uleb128	8
      0022ED 02                    5045 	.uleb128	2
      0022EE 89                    5046 	.db	137
      0022EF 01                    5047 	.uleb128	1
      0022F0                       5048 Ldebug_CIE15_end:
      0022F0 00 00 00 13           5049 	.dw	0,19
      0022F4 00 00 22 DE           5050 	.dw	0,(Ldebug_CIE15_start-4)
      0022F8 00 00 91 1B           5051 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$97)	;initial loc
      0022FC 00 00 00 18           5052 	.dw	0,Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$108-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$97
      002300 01                    5053 	.db	1
      002301 00 00 91 1B           5054 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$97)
      002305 0E                    5055 	.db	14
      002306 02                    5056 	.uleb128	2
                                   5057 
                                   5058 	.area .debug_frame (NOLOAD)
      002307 00 00                 5059 	.dw	0
      002309 00 0E                 5060 	.dw	Ldebug_CIE16_end-Ldebug_CIE16_start
      00230B                       5061 Ldebug_CIE16_start:
      00230B FF FF                 5062 	.dw	0xffff
      00230D FF FF                 5063 	.dw	0xffff
      00230F 01                    5064 	.db	1
      002310 00                    5065 	.db	0
      002311 01                    5066 	.uleb128	1
      002312 7F                    5067 	.sleb128	-1
      002313 09                    5068 	.db	9
      002314 0C                    5069 	.db	12
      002315 08                    5070 	.uleb128	8
      002316 02                    5071 	.uleb128	2
      002317 89                    5072 	.db	137
      002318 01                    5073 	.uleb128	1
      002319                       5074 Ldebug_CIE16_end:
      002319 00 00 00 13           5075 	.dw	0,19
      00231D 00 00 23 07           5076 	.dw	0,(Ldebug_CIE16_start-4)
      002321 00 00 91 03           5077 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$84)	;initial loc
      002325 00 00 00 18           5078 	.dw	0,Sstm8s_clk$CLK_ClockSwitchCmd$95-Sstm8s_clk$CLK_ClockSwitchCmd$84
      002329 01                    5079 	.db	1
      00232A 00 00 91 03           5080 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$84)
      00232E 0E                    5081 	.db	14
      00232F 02                    5082 	.uleb128	2
                                   5083 
                                   5084 	.area .debug_frame (NOLOAD)
      002330 00 00                 5085 	.dw	0
      002332 00 0E                 5086 	.dw	Ldebug_CIE17_end-Ldebug_CIE17_start
      002334                       5087 Ldebug_CIE17_start:
      002334 FF FF                 5088 	.dw	0xffff
      002336 FF FF                 5089 	.dw	0xffff
      002338 01                    5090 	.db	1
      002339 00                    5091 	.db	0
      00233A 01                    5092 	.uleb128	1
      00233B 7F                    5093 	.sleb128	-1
      00233C 09                    5094 	.db	9
      00233D 0C                    5095 	.db	12
      00233E 08                    5096 	.uleb128	8
      00233F 02                    5097 	.uleb128	2
      002340 89                    5098 	.db	137
      002341 01                    5099 	.uleb128	1
      002342                       5100 Ldebug_CIE17_end:
      002342 00 00 00 13           5101 	.dw	0,19
      002346 00 00 23 30           5102 	.dw	0,(Ldebug_CIE17_start-4)
      00234A 00 00 90 EB           5103 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$71)	;initial loc
      00234E 00 00 00 18           5104 	.dw	0,Sstm8s_clk$CLK_CCOCmd$82-Sstm8s_clk$CLK_CCOCmd$71
      002352 01                    5105 	.db	1
      002353 00 00 90 EB           5106 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$71)
      002357 0E                    5107 	.db	14
      002358 02                    5108 	.uleb128	2
                                   5109 
                                   5110 	.area .debug_frame (NOLOAD)
      002359 00 00                 5111 	.dw	0
      00235B 00 0E                 5112 	.dw	Ldebug_CIE18_end-Ldebug_CIE18_start
      00235D                       5113 Ldebug_CIE18_start:
      00235D FF FF                 5114 	.dw	0xffff
      00235F FF FF                 5115 	.dw	0xffff
      002361 01                    5116 	.db	1
      002362 00                    5117 	.db	0
      002363 01                    5118 	.uleb128	1
      002364 7F                    5119 	.sleb128	-1
      002365 09                    5120 	.db	9
      002366 0C                    5121 	.db	12
      002367 08                    5122 	.uleb128	8
      002368 02                    5123 	.uleb128	2
      002369 89                    5124 	.db	137
      00236A 01                    5125 	.uleb128	1
      00236B                       5126 Ldebug_CIE18_end:
      00236B 00 00 00 13           5127 	.dw	0,19
      00236F 00 00 23 59           5128 	.dw	0,(Ldebug_CIE18_start-4)
      002373 00 00 90 D3           5129 	.dw	0,(Sstm8s_clk$CLK_LSICmd$58)	;initial loc
      002377 00 00 00 18           5130 	.dw	0,Sstm8s_clk$CLK_LSICmd$69-Sstm8s_clk$CLK_LSICmd$58
      00237B 01                    5131 	.db	1
      00237C 00 00 90 D3           5132 	.dw	0,(Sstm8s_clk$CLK_LSICmd$58)
      002380 0E                    5133 	.db	14
      002381 02                    5134 	.uleb128	2
                                   5135 
                                   5136 	.area .debug_frame (NOLOAD)
      002382 00 00                 5137 	.dw	0
      002384 00 0E                 5138 	.dw	Ldebug_CIE19_end-Ldebug_CIE19_start
      002386                       5139 Ldebug_CIE19_start:
      002386 FF FF                 5140 	.dw	0xffff
      002388 FF FF                 5141 	.dw	0xffff
      00238A 01                    5142 	.db	1
      00238B 00                    5143 	.db	0
      00238C 01                    5144 	.uleb128	1
      00238D 7F                    5145 	.sleb128	-1
      00238E 09                    5146 	.db	9
      00238F 0C                    5147 	.db	12
      002390 08                    5148 	.uleb128	8
      002391 02                    5149 	.uleb128	2
      002392 89                    5150 	.db	137
      002393 01                    5151 	.uleb128	1
      002394                       5152 Ldebug_CIE19_end:
      002394 00 00 00 13           5153 	.dw	0,19
      002398 00 00 23 82           5154 	.dw	0,(Ldebug_CIE19_start-4)
      00239C 00 00 90 BB           5155 	.dw	0,(Sstm8s_clk$CLK_HSICmd$45)	;initial loc
      0023A0 00 00 00 18           5156 	.dw	0,Sstm8s_clk$CLK_HSICmd$56-Sstm8s_clk$CLK_HSICmd$45
      0023A4 01                    5157 	.db	1
      0023A5 00 00 90 BB           5158 	.dw	0,(Sstm8s_clk$CLK_HSICmd$45)
      0023A9 0E                    5159 	.db	14
      0023AA 02                    5160 	.uleb128	2
                                   5161 
                                   5162 	.area .debug_frame (NOLOAD)
      0023AB 00 00                 5163 	.dw	0
      0023AD 00 0E                 5164 	.dw	Ldebug_CIE20_end-Ldebug_CIE20_start
      0023AF                       5165 Ldebug_CIE20_start:
      0023AF FF FF                 5166 	.dw	0xffff
      0023B1 FF FF                 5167 	.dw	0xffff
      0023B3 01                    5168 	.db	1
      0023B4 00                    5169 	.db	0
      0023B5 01                    5170 	.uleb128	1
      0023B6 7F                    5171 	.sleb128	-1
      0023B7 09                    5172 	.db	9
      0023B8 0C                    5173 	.db	12
      0023B9 08                    5174 	.uleb128	8
      0023BA 02                    5175 	.uleb128	2
      0023BB 89                    5176 	.db	137
      0023BC 01                    5177 	.uleb128	1
      0023BD                       5178 Ldebug_CIE20_end:
      0023BD 00 00 00 13           5179 	.dw	0,19
      0023C1 00 00 23 AB           5180 	.dw	0,(Ldebug_CIE20_start-4)
      0023C5 00 00 90 A3           5181 	.dw	0,(Sstm8s_clk$CLK_HSECmd$32)	;initial loc
      0023C9 00 00 00 18           5182 	.dw	0,Sstm8s_clk$CLK_HSECmd$43-Sstm8s_clk$CLK_HSECmd$32
      0023CD 01                    5183 	.db	1
      0023CE 00 00 90 A3           5184 	.dw	0,(Sstm8s_clk$CLK_HSECmd$32)
      0023D2 0E                    5185 	.db	14
      0023D3 02                    5186 	.uleb128	2
                                   5187 
                                   5188 	.area .debug_frame (NOLOAD)
      0023D4 00 00                 5189 	.dw	0
      0023D6 00 0E                 5190 	.dw	Ldebug_CIE21_end-Ldebug_CIE21_start
      0023D8                       5191 Ldebug_CIE21_start:
      0023D8 FF FF                 5192 	.dw	0xffff
      0023DA FF FF                 5193 	.dw	0xffff
      0023DC 01                    5194 	.db	1
      0023DD 00                    5195 	.db	0
      0023DE 01                    5196 	.uleb128	1
      0023DF 7F                    5197 	.sleb128	-1
      0023E0 09                    5198 	.db	9
      0023E1 0C                    5199 	.db	12
      0023E2 08                    5200 	.uleb128	8
      0023E3 02                    5201 	.uleb128	2
      0023E4 89                    5202 	.db	137
      0023E5 01                    5203 	.uleb128	1
      0023E6                       5204 Ldebug_CIE21_end:
      0023E6 00 00 00 13           5205 	.dw	0,19
      0023EA 00 00 23 D4           5206 	.dw	0,(Ldebug_CIE21_start-4)
      0023EE 00 00 90 8B           5207 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$19)	;initial loc
      0023F2 00 00 00 18           5208 	.dw	0,Sstm8s_clk$CLK_FastHaltWakeUpCmd$30-Sstm8s_clk$CLK_FastHaltWakeUpCmd$19
      0023F6 01                    5209 	.db	1
      0023F7 00 00 90 8B           5210 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$19)
      0023FB 0E                    5211 	.db	14
      0023FC 02                    5212 	.uleb128	2
                                   5213 
                                   5214 	.area .debug_frame (NOLOAD)
      0023FD 00 00                 5215 	.dw	0
      0023FF 00 0E                 5216 	.dw	Ldebug_CIE22_end-Ldebug_CIE22_start
      002401                       5217 Ldebug_CIE22_start:
      002401 FF FF                 5218 	.dw	0xffff
      002403 FF FF                 5219 	.dw	0xffff
      002405 01                    5220 	.db	1
      002406 00                    5221 	.db	0
      002407 01                    5222 	.uleb128	1
      002408 7F                    5223 	.sleb128	-1
      002409 09                    5224 	.db	9
      00240A 0C                    5225 	.db	12
      00240B 08                    5226 	.uleb128	8
      00240C 02                    5227 	.uleb128	2
      00240D 89                    5228 	.db	137
      00240E 01                    5229 	.uleb128	1
      00240F                       5230 Ldebug_CIE22_end:
      00240F 00 00 00 13           5231 	.dw	0,19
      002413 00 00 23 FD           5232 	.dw	0,(Ldebug_CIE22_start-4)
      002417 00 00 90 51           5233 	.dw	0,(Sstm8s_clk$CLK_DeInit$1)	;initial loc
      00241B 00 00 00 3A           5234 	.dw	0,Sstm8s_clk$CLK_DeInit$17-Sstm8s_clk$CLK_DeInit$1
      00241F 01                    5235 	.db	1
      002420 00 00 90 51           5236 	.dw	0,(Sstm8s_clk$CLK_DeInit$1)
      002424 0E                    5237 	.db	14
      002425 02                    5238 	.uleb128	2

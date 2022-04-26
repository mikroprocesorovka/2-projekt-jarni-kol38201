                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module milis
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TIM4_ClearFlag
                                     12 	.globl _TIM4_ITConfig
                                     13 	.globl _TIM4_Cmd
                                     14 	.globl _TIM4_TimeBaseInit
                                     15 	.globl _ITC_SetSoftwarePriority
                                     16 	.globl _miliseconds
                                     17 	.globl _milis
                                     18 	.globl _init_milis
                                     19 	.globl _TIM4_UPD_OVF_IRQHandler
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area DATA
                                     24 ;--------------------------------------------------------
                                     25 ; ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area INITIALIZED
                           000000    28 G$miliseconds$0_0$0==.
      000001                         29 _miliseconds::
      000001                         30 	.ds 4
                                     31 ;--------------------------------------------------------
                                     32 ; absolute external ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DABS (ABS)
                                     35 
                                     36 ; default segment ordering for linker
                                     37 	.area HOME
                                     38 	.area GSINIT
                                     39 	.area GSFINAL
                                     40 	.area CONST
                                     41 	.area INITIALIZER
                                     42 	.area CODE
                                     43 
                                     44 ;--------------------------------------------------------
                                     45 ; global & static initialisations
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
                                     48 	.area GSINIT
                                     49 	.area GSFINAL
                                     50 	.area GSINIT
                                     51 ;--------------------------------------------------------
                                     52 ; Home
                                     53 ;--------------------------------------------------------
                                     54 	.area HOME
                                     55 	.area HOME
                                     56 ;--------------------------------------------------------
                                     57 ; code
                                     58 ;--------------------------------------------------------
                                     59 	.area CODE
                           000000    60 	Smilis$milis$0 ==.
                                     61 ;	./src/milis.c: 13: MILIS_PROTOTYPE
                                     62 ; genLabel
                                     63 ;	-----------------------------------------
                                     64 ;	 function milis
                                     65 ;	-----------------------------------------
                                     66 ;	Register assignment is optimal.
                                     67 ;	Stack space usage: 4 bytes.
      00816D                         68 _milis:
                           000000    69 	Smilis$milis$1 ==.
      00816D 52 04            [ 2]   70 	sub	sp, #4
                           000002    71 	Smilis$milis$2 ==.
                           000002    72 	Smilis$milis$3 ==.
                                     73 ;	./src/milis.c: 20: TIM4_ITConfig(TIM4_IT_UPDATE, DISABLE);
                                     74 ; genIPush
      00816F 4B 00            [ 1]   75 	push	#0x00
                           000004    76 	Smilis$milis$4 ==.
                                     77 ; genIPush
      008171 4B 01            [ 1]   78 	push	#0x01
                           000006    79 	Smilis$milis$5 ==.
                                     80 ; genCall
      008173 CD 94 E8         [ 4]   81 	call	_TIM4_ITConfig
      008176 85               [ 2]   82 	popw	x
                           00000A    83 	Smilis$milis$6 ==.
                           00000A    84 	Smilis$milis$7 ==.
                                     85 ;	./src/milis.c: 21: tmp = miliseconds;
                                     86 ; genAssign
      008177 CE 00 03         [ 2]   87 	ldw	x, _miliseconds+2
      00817A 90 CE 00 01      [ 2]   88 	ldw	y, _miliseconds+0
      00817E 17 01            [ 2]   89 	ldw	(0x01, sp), y
                           000013    90 	Smilis$milis$8 ==.
                                     91 ;	./src/milis.c: 22: TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
                                     92 ; genIPush
      008180 89               [ 2]   93 	pushw	x
                           000014    94 	Smilis$milis$9 ==.
      008181 4B 01            [ 1]   95 	push	#0x01
                           000016    96 	Smilis$milis$10 ==.
                                     97 ; genIPush
      008183 4B 01            [ 1]   98 	push	#0x01
                           000018    99 	Smilis$milis$11 ==.
                                    100 ; genCall
      008185 CD 94 E8         [ 4]  101 	call	_TIM4_ITConfig
      008188 85               [ 2]  102 	popw	x
                           00001C   103 	Smilis$milis$12 ==.
      008189 85               [ 2]  104 	popw	x
                           00001D   105 	Smilis$milis$13 ==.
                           00001D   106 	Smilis$milis$14 ==.
                                    107 ;	./src/milis.c: 23: return tmp;
                                    108 ; genReturn
      00818A 16 01            [ 2]  109 	ldw	y, (0x01, sp)
                                    110 ; genLabel
      00818C                        111 00101$:
                           00001F   112 	Smilis$milis$15 ==.
                                    113 ;	./src/milis.c: 24: }
                                    114 ; genEndFunction
      00818C 5B 04            [ 2]  115 	addw	sp, #4
                           000021   116 	Smilis$milis$16 ==.
                           000021   117 	Smilis$milis$17 ==.
                           000021   118 	XG$milis$0$0 ==.
      00818E 81               [ 4]  119 	ret
                           000022   120 	Smilis$milis$18 ==.
                           000022   121 	Smilis$init_milis$19 ==.
                                    122 ;	./src/milis.c: 27: void init_milis(void)
                                    123 ; genLabel
                                    124 ;	-----------------------------------------
                                    125 ;	 function init_milis
                                    126 ;	-----------------------------------------
                                    127 ;	Register assignment is optimal.
                                    128 ;	Stack space usage: 0 bytes.
      00818F                        129 _init_milis:
                           000022   130 	Smilis$init_milis$20 ==.
                           000022   131 	Smilis$init_milis$21 ==.
                                    132 ;	./src/milis.c: 29: TIM4_TimeBaseInit(PRESCALER, PERIOD);       // (16MHz / 128) / 125 = 1000Hz
                                    133 ; genIPush
      00818F 4B 7C            [ 1]  134 	push	#0x7c
                           000024   135 	Smilis$init_milis$22 ==.
                                    136 ; genIPush
      008191 4B 07            [ 1]  137 	push	#0x07
                           000026   138 	Smilis$init_milis$23 ==.
                                    139 ; genCall
      008193 CD 94 C3         [ 4]  140 	call	_TIM4_TimeBaseInit
      008196 85               [ 2]  141 	popw	x
                           00002A   142 	Smilis$init_milis$24 ==.
                           00002A   143 	Smilis$init_milis$25 ==.
                                    144 ;	./src/milis.c: 30: TIM4_ClearFlag(TIM4_FLAG_UPDATE);
                                    145 ; genIPush
      008197 4B 01            [ 1]  146 	push	#0x01
                           00002C   147 	Smilis$init_milis$26 ==.
                                    148 ; genCall
      008199 CD 95 A5         [ 4]  149 	call	_TIM4_ClearFlag
      00819C 84               [ 1]  150 	pop	a
                           000030   151 	Smilis$init_milis$27 ==.
                           000030   152 	Smilis$init_milis$28 ==.
                                    153 ;	./src/milis.c: 31: TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
                                    154 ; genIPush
      00819D 4B 01            [ 1]  155 	push	#0x01
                           000032   156 	Smilis$init_milis$29 ==.
                                    157 ; genIPush
      00819F 4B 01            [ 1]  158 	push	#0x01
                           000034   159 	Smilis$init_milis$30 ==.
                                    160 ; genCall
      0081A1 CD 94 E8         [ 4]  161 	call	_TIM4_ITConfig
      0081A4 85               [ 2]  162 	popw	x
                           000038   163 	Smilis$init_milis$31 ==.
                           000038   164 	Smilis$init_milis$32 ==.
                                    165 ;	./src/milis.c: 32: ITC_SetSoftwarePriority(ITC_IRQ_TIM4_OVF, ITC_PRIORITYLEVEL_1);     // nízká priorita pøerušení
                                    166 ; genIPush
      0081A5 4B 01            [ 1]  167 	push	#0x01
                           00003A   168 	Smilis$init_milis$33 ==.
                                    169 ; genIPush
      0081A7 4B 17            [ 1]  170 	push	#0x17
                           00003C   171 	Smilis$init_milis$34 ==.
                                    172 ; genCall
      0081A9 CD 96 A8         [ 4]  173 	call	_ITC_SetSoftwarePriority
      0081AC 85               [ 2]  174 	popw	x
                           000040   175 	Smilis$init_milis$35 ==.
                           000040   176 	Smilis$init_milis$36 ==.
                                    177 ;	./src/milis.c: 33: enableInterrupts();
                                    178 ;	genInline
      0081AD 9A               [ 1]  179 	rim
                           000041   180 	Smilis$init_milis$37 ==.
                                    181 ;	./src/milis.c: 34: TIM4_Cmd(ENABLE);
                                    182 ; genIPush
      0081AE 4B 01            [ 1]  183 	push	#0x01
                           000043   184 	Smilis$init_milis$38 ==.
                                    185 ; genCall
      0081B0 CD 94 D0         [ 4]  186 	call	_TIM4_Cmd
      0081B3 84               [ 1]  187 	pop	a
                           000047   188 	Smilis$init_milis$39 ==.
                                    189 ; genLabel
      0081B4                        190 00101$:
                           000047   191 	Smilis$init_milis$40 ==.
                                    192 ;	./src/milis.c: 35: }
                                    193 ; genEndFunction
                           000047   194 	Smilis$init_milis$41 ==.
                           000047   195 	XG$init_milis$0$0 ==.
      0081B4 81               [ 4]  196 	ret
                           000048   197 	Smilis$init_milis$42 ==.
                           000048   198 	Smilis$TIM4_UPD_OVF_IRQHandler$43 ==.
                                    199 ;	./src/milis.c: 38: INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
                                    200 ; genLabel
                                    201 ;	-----------------------------------------
                                    202 ;	 function TIM4_UPD_OVF_IRQHandler
                                    203 ;	-----------------------------------------
                                    204 ;	Register assignment might be sub-optimal.
                                    205 ;	Stack space usage: 0 bytes.
      0081B5                        206 _TIM4_UPD_OVF_IRQHandler:
                                    207 ;	Reset bit 6 of reg CC. Hardware bug workaround.
      0081B5 62               [ 2]  208 	div	x, a
                           000049   209 	Smilis$TIM4_UPD_OVF_IRQHandler$44 ==.
                           000049   210 	Smilis$TIM4_UPD_OVF_IRQHandler$45 ==.
                                    211 ;	./src/milis.c: 40: TIM4_ClearFlag(TIM4_FLAG_UPDATE);
                                    212 ; genIPush
      0081B6 4B 01            [ 1]  213 	push	#0x01
                           00004B   214 	Smilis$TIM4_UPD_OVF_IRQHandler$46 ==.
                                    215 ; genCall
      0081B8 CD 95 A5         [ 4]  216 	call	_TIM4_ClearFlag
      0081BB 84               [ 1]  217 	pop	a
                           00004F   218 	Smilis$TIM4_UPD_OVF_IRQHandler$47 ==.
                           00004F   219 	Smilis$TIM4_UPD_OVF_IRQHandler$48 ==.
                                    220 ;	./src/milis.c: 41: miliseconds++;
                                    221 ; genAssign
      0081BC CE 00 03         [ 2]  222 	ldw	x, _miliseconds+2
      0081BF 90 CE 00 01      [ 2]  223 	ldw	y, _miliseconds+0
                                    224 ; genPlus
      0081C3 5C               [ 1]  225 	incw	x
      0081C4 26 02            [ 1]  226 	jrne	00103$
      0081C6 90 5C            [ 1]  227 	incw	y
      0081C8                        228 00103$:
                                    229 ; genAssign
      0081C8 CF 00 03         [ 2]  230 	ldw	_miliseconds+2, x
      0081CB 90 CF 00 01      [ 2]  231 	ldw	_miliseconds+0, y
                                    232 ; genLabel
      0081CF                        233 00101$:
                           000062   234 	Smilis$TIM4_UPD_OVF_IRQHandler$49 ==.
                                    235 ;	./src/milis.c: 42: }
                                    236 ; genEndFunction
                           000062   237 	Smilis$TIM4_UPD_OVF_IRQHandler$50 ==.
                           000062   238 	XG$TIM4_UPD_OVF_IRQHandler$0$0 ==.
      0081CF 80               [11]  239 	iret
                           000063   240 	Smilis$TIM4_UPD_OVF_IRQHandler$51 ==.
                                    241 	.area CODE
                                    242 	.area CONST
                                    243 	.area INITIALIZER
                           000000   244 Fmilis$__xinit_miliseconds$0_0$0 == .
      0080C0                        245 __xinit__miliseconds:
      0080C0 00 00 00 00            246 	.byte #0x00, #0x00, #0x00, #0x00	; 0
                                    247 	.area CABS (ABS)
                                    248 
                                    249 	.area .debug_line (NOLOAD)
      00011B 00 00 00 FE            250 	.dw	0,Ldebug_line_end-Ldebug_line_start
      00011F                        251 Ldebug_line_start:
      00011F 00 02                  252 	.dw	2
      000121 00 00 00 6E            253 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000125 01                     254 	.db	1
      000126 01                     255 	.db	1
      000127 FB                     256 	.db	-5
      000128 0F                     257 	.db	15
      000129 0A                     258 	.db	10
      00012A 00                     259 	.db	0
      00012B 01                     260 	.db	1
      00012C 01                     261 	.db	1
      00012D 01                     262 	.db	1
      00012E 01                     263 	.db	1
      00012F 00                     264 	.db	0
      000130 00                     265 	.db	0
      000131 00                     266 	.db	0
      000132 01                     267 	.db	1
      000133 43 3A 5C 50 72 6F 67   268 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      00015B 00                     269 	.db	0
      00015C 43 3A 5C 50 72 6F 67   270 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      00017F 00                     271 	.db	0
      000180 00                     272 	.db	0
      000181 2E 2F 73 72 63 2F 6D   273 	.ascii "./src/milis.c"
             69 6C 69 73 2E 63
      00018E 00                     274 	.db	0
      00018F 00                     275 	.uleb128	0
      000190 00                     276 	.uleb128	0
      000191 00                     277 	.uleb128	0
      000192 00                     278 	.db	0
      000193                        279 Ldebug_line_stmt:
      000193 00                     280 	.db	0
      000194 05                     281 	.uleb128	5
      000195 02                     282 	.db	2
      000196 00 00 81 6D            283 	.dw	0,(Smilis$milis$0)
      00019A 03                     284 	.db	3
      00019B 0C                     285 	.sleb128	12
      00019C 01                     286 	.db	1
      00019D 09                     287 	.db	9
      00019E 00 02                  288 	.dw	Smilis$milis$3-Smilis$milis$0
      0001A0 03                     289 	.db	3
      0001A1 07                     290 	.sleb128	7
      0001A2 01                     291 	.db	1
      0001A3 09                     292 	.db	9
      0001A4 00 08                  293 	.dw	Smilis$milis$7-Smilis$milis$3
      0001A6 03                     294 	.db	3
      0001A7 01                     295 	.sleb128	1
      0001A8 01                     296 	.db	1
      0001A9 09                     297 	.db	9
      0001AA 00 09                  298 	.dw	Smilis$milis$8-Smilis$milis$7
      0001AC 03                     299 	.db	3
      0001AD 01                     300 	.sleb128	1
      0001AE 01                     301 	.db	1
      0001AF 09                     302 	.db	9
      0001B0 00 0A                  303 	.dw	Smilis$milis$14-Smilis$milis$8
      0001B2 03                     304 	.db	3
      0001B3 01                     305 	.sleb128	1
      0001B4 01                     306 	.db	1
      0001B5 09                     307 	.db	9
      0001B6 00 02                  308 	.dw	Smilis$milis$15-Smilis$milis$14
      0001B8 03                     309 	.db	3
      0001B9 01                     310 	.sleb128	1
      0001BA 01                     311 	.db	1
      0001BB 09                     312 	.db	9
      0001BC 00 03                  313 	.dw	1+Smilis$milis$17-Smilis$milis$15
      0001BE 00                     314 	.db	0
      0001BF 01                     315 	.uleb128	1
      0001C0 01                     316 	.db	1
      0001C1 00                     317 	.db	0
      0001C2 05                     318 	.uleb128	5
      0001C3 02                     319 	.db	2
      0001C4 00 00 81 8F            320 	.dw	0,(Smilis$init_milis$19)
      0001C8 03                     321 	.db	3
      0001C9 1A                     322 	.sleb128	26
      0001CA 01                     323 	.db	1
      0001CB 09                     324 	.db	9
      0001CC 00 00                  325 	.dw	Smilis$init_milis$21-Smilis$init_milis$19
      0001CE 03                     326 	.db	3
      0001CF 02                     327 	.sleb128	2
      0001D0 01                     328 	.db	1
      0001D1 09                     329 	.db	9
      0001D2 00 08                  330 	.dw	Smilis$init_milis$25-Smilis$init_milis$21
      0001D4 03                     331 	.db	3
      0001D5 01                     332 	.sleb128	1
      0001D6 01                     333 	.db	1
      0001D7 09                     334 	.db	9
      0001D8 00 06                  335 	.dw	Smilis$init_milis$28-Smilis$init_milis$25
      0001DA 03                     336 	.db	3
      0001DB 01                     337 	.sleb128	1
      0001DC 01                     338 	.db	1
      0001DD 09                     339 	.db	9
      0001DE 00 08                  340 	.dw	Smilis$init_milis$32-Smilis$init_milis$28
      0001E0 03                     341 	.db	3
      0001E1 01                     342 	.sleb128	1
      0001E2 01                     343 	.db	1
      0001E3 09                     344 	.db	9
      0001E4 00 08                  345 	.dw	Smilis$init_milis$36-Smilis$init_milis$32
      0001E6 03                     346 	.db	3
      0001E7 01                     347 	.sleb128	1
      0001E8 01                     348 	.db	1
      0001E9 09                     349 	.db	9
      0001EA 00 01                  350 	.dw	Smilis$init_milis$37-Smilis$init_milis$36
      0001EC 03                     351 	.db	3
      0001ED 01                     352 	.sleb128	1
      0001EE 01                     353 	.db	1
      0001EF 09                     354 	.db	9
      0001F0 00 06                  355 	.dw	Smilis$init_milis$40-Smilis$init_milis$37
      0001F2 03                     356 	.db	3
      0001F3 01                     357 	.sleb128	1
      0001F4 01                     358 	.db	1
      0001F5 09                     359 	.db	9
      0001F6 00 01                  360 	.dw	1+Smilis$init_milis$41-Smilis$init_milis$40
      0001F8 00                     361 	.db	0
      0001F9 01                     362 	.uleb128	1
      0001FA 01                     363 	.db	1
      0001FB 00                     364 	.db	0
      0001FC 05                     365 	.uleb128	5
      0001FD 02                     366 	.db	2
      0001FE 00 00 81 B5            367 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$43)
      000202 03                     368 	.db	3
      000203 25                     369 	.sleb128	37
      000204 01                     370 	.db	1
      000205 09                     371 	.db	9
      000206 00 01                  372 	.dw	Smilis$TIM4_UPD_OVF_IRQHandler$45-Smilis$TIM4_UPD_OVF_IRQHandler$43
      000208 03                     373 	.db	3
      000209 02                     374 	.sleb128	2
      00020A 01                     375 	.db	1
      00020B 09                     376 	.db	9
      00020C 00 06                  377 	.dw	Smilis$TIM4_UPD_OVF_IRQHandler$48-Smilis$TIM4_UPD_OVF_IRQHandler$45
      00020E 03                     378 	.db	3
      00020F 01                     379 	.sleb128	1
      000210 01                     380 	.db	1
      000211 09                     381 	.db	9
      000212 00 13                  382 	.dw	Smilis$TIM4_UPD_OVF_IRQHandler$49-Smilis$TIM4_UPD_OVF_IRQHandler$48
      000214 03                     383 	.db	3
      000215 01                     384 	.sleb128	1
      000216 01                     385 	.db	1
      000217 09                     386 	.db	9
      000218 00 01                  387 	.dw	1+Smilis$TIM4_UPD_OVF_IRQHandler$50-Smilis$TIM4_UPD_OVF_IRQHandler$49
      00021A 00                     388 	.db	0
      00021B 01                     389 	.uleb128	1
      00021C 01                     390 	.db	1
      00021D                        391 Ldebug_line_end:
                                    392 
                                    393 	.area .debug_loc (NOLOAD)
      000208                        394 Ldebug_loc_start:
      000208 00 00 81 BC            395 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$47)
      00020C 00 00 81 D0            396 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$51)
      000210 00 02                  397 	.dw	2
      000212 78                     398 	.db	120
      000213 01                     399 	.sleb128	1
      000214 00 00 81 B8            400 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$46)
      000218 00 00 81 BC            401 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$47)
      00021C 00 02                  402 	.dw	2
      00021E 78                     403 	.db	120
      00021F 02                     404 	.sleb128	2
      000220 00 00 81 B6            405 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$44)
      000224 00 00 81 B8            406 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$46)
      000228 00 02                  407 	.dw	2
      00022A 78                     408 	.db	120
      00022B 01                     409 	.sleb128	1
      00022C 00 00 00 00            410 	.dw	0,0
      000230 00 00 00 00            411 	.dw	0,0
      000234 00 00 81 B4            412 	.dw	0,(Smilis$init_milis$39)
      000238 00 00 81 B5            413 	.dw	0,(Smilis$init_milis$42)
      00023C 00 02                  414 	.dw	2
      00023E 78                     415 	.db	120
      00023F 01                     416 	.sleb128	1
      000240 00 00 81 B0            417 	.dw	0,(Smilis$init_milis$38)
      000244 00 00 81 B4            418 	.dw	0,(Smilis$init_milis$39)
      000248 00 02                  419 	.dw	2
      00024A 78                     420 	.db	120
      00024B 02                     421 	.sleb128	2
      00024C 00 00 81 AD            422 	.dw	0,(Smilis$init_milis$35)
      000250 00 00 81 B0            423 	.dw	0,(Smilis$init_milis$38)
      000254 00 02                  424 	.dw	2
      000256 78                     425 	.db	120
      000257 01                     426 	.sleb128	1
      000258 00 00 81 A9            427 	.dw	0,(Smilis$init_milis$34)
      00025C 00 00 81 AD            428 	.dw	0,(Smilis$init_milis$35)
      000260 00 02                  429 	.dw	2
      000262 78                     430 	.db	120
      000263 03                     431 	.sleb128	3
      000264 00 00 81 A7            432 	.dw	0,(Smilis$init_milis$33)
      000268 00 00 81 A9            433 	.dw	0,(Smilis$init_milis$34)
      00026C 00 02                  434 	.dw	2
      00026E 78                     435 	.db	120
      00026F 02                     436 	.sleb128	2
      000270 00 00 81 A5            437 	.dw	0,(Smilis$init_milis$31)
      000274 00 00 81 A7            438 	.dw	0,(Smilis$init_milis$33)
      000278 00 02                  439 	.dw	2
      00027A 78                     440 	.db	120
      00027B 01                     441 	.sleb128	1
      00027C 00 00 81 A1            442 	.dw	0,(Smilis$init_milis$30)
      000280 00 00 81 A5            443 	.dw	0,(Smilis$init_milis$31)
      000284 00 02                  444 	.dw	2
      000286 78                     445 	.db	120
      000287 03                     446 	.sleb128	3
      000288 00 00 81 9F            447 	.dw	0,(Smilis$init_milis$29)
      00028C 00 00 81 A1            448 	.dw	0,(Smilis$init_milis$30)
      000290 00 02                  449 	.dw	2
      000292 78                     450 	.db	120
      000293 02                     451 	.sleb128	2
      000294 00 00 81 9D            452 	.dw	0,(Smilis$init_milis$27)
      000298 00 00 81 9F            453 	.dw	0,(Smilis$init_milis$29)
      00029C 00 02                  454 	.dw	2
      00029E 78                     455 	.db	120
      00029F 01                     456 	.sleb128	1
      0002A0 00 00 81 99            457 	.dw	0,(Smilis$init_milis$26)
      0002A4 00 00 81 9D            458 	.dw	0,(Smilis$init_milis$27)
      0002A8 00 02                  459 	.dw	2
      0002AA 78                     460 	.db	120
      0002AB 02                     461 	.sleb128	2
      0002AC 00 00 81 97            462 	.dw	0,(Smilis$init_milis$24)
      0002B0 00 00 81 99            463 	.dw	0,(Smilis$init_milis$26)
      0002B4 00 02                  464 	.dw	2
      0002B6 78                     465 	.db	120
      0002B7 01                     466 	.sleb128	1
      0002B8 00 00 81 93            467 	.dw	0,(Smilis$init_milis$23)
      0002BC 00 00 81 97            468 	.dw	0,(Smilis$init_milis$24)
      0002C0 00 02                  469 	.dw	2
      0002C2 78                     470 	.db	120
      0002C3 03                     471 	.sleb128	3
      0002C4 00 00 81 91            472 	.dw	0,(Smilis$init_milis$22)
      0002C8 00 00 81 93            473 	.dw	0,(Smilis$init_milis$23)
      0002CC 00 02                  474 	.dw	2
      0002CE 78                     475 	.db	120
      0002CF 02                     476 	.sleb128	2
      0002D0 00 00 81 8F            477 	.dw	0,(Smilis$init_milis$20)
      0002D4 00 00 81 91            478 	.dw	0,(Smilis$init_milis$22)
      0002D8 00 02                  479 	.dw	2
      0002DA 78                     480 	.db	120
      0002DB 01                     481 	.sleb128	1
      0002DC 00 00 00 00            482 	.dw	0,0
      0002E0 00 00 00 00            483 	.dw	0,0
      0002E4 00 00 81 8E            484 	.dw	0,(Smilis$milis$16)
      0002E8 00 00 81 8F            485 	.dw	0,(Smilis$milis$18)
      0002EC 00 02                  486 	.dw	2
      0002EE 78                     487 	.db	120
      0002EF 01                     488 	.sleb128	1
      0002F0 00 00 81 8A            489 	.dw	0,(Smilis$milis$13)
      0002F4 00 00 81 8E            490 	.dw	0,(Smilis$milis$16)
      0002F8 00 02                  491 	.dw	2
      0002FA 78                     492 	.db	120
      0002FB 05                     493 	.sleb128	5
      0002FC 00 00 81 89            494 	.dw	0,(Smilis$milis$12)
      000300 00 00 81 8A            495 	.dw	0,(Smilis$milis$13)
      000304 00 02                  496 	.dw	2
      000306 78                     497 	.db	120
      000307 07                     498 	.sleb128	7
      000308 00 00 81 85            499 	.dw	0,(Smilis$milis$11)
      00030C 00 00 81 89            500 	.dw	0,(Smilis$milis$12)
      000310 00 02                  501 	.dw	2
      000312 78                     502 	.db	120
      000313 09                     503 	.sleb128	9
      000314 00 00 81 83            504 	.dw	0,(Smilis$milis$10)
      000318 00 00 81 85            505 	.dw	0,(Smilis$milis$11)
      00031C 00 02                  506 	.dw	2
      00031E 78                     507 	.db	120
      00031F 08                     508 	.sleb128	8
      000320 00 00 81 81            509 	.dw	0,(Smilis$milis$9)
      000324 00 00 81 83            510 	.dw	0,(Smilis$milis$10)
      000328 00 02                  511 	.dw	2
      00032A 78                     512 	.db	120
      00032B 07                     513 	.sleb128	7
      00032C 00 00 81 77            514 	.dw	0,(Smilis$milis$6)
      000330 00 00 81 81            515 	.dw	0,(Smilis$milis$9)
      000334 00 02                  516 	.dw	2
      000336 78                     517 	.db	120
      000337 05                     518 	.sleb128	5
      000338 00 00 81 73            519 	.dw	0,(Smilis$milis$5)
      00033C 00 00 81 77            520 	.dw	0,(Smilis$milis$6)
      000340 00 02                  521 	.dw	2
      000342 78                     522 	.db	120
      000343 07                     523 	.sleb128	7
      000344 00 00 81 71            524 	.dw	0,(Smilis$milis$4)
      000348 00 00 81 73            525 	.dw	0,(Smilis$milis$5)
      00034C 00 02                  526 	.dw	2
      00034E 78                     527 	.db	120
      00034F 06                     528 	.sleb128	6
      000350 00 00 81 6F            529 	.dw	0,(Smilis$milis$2)
      000354 00 00 81 71            530 	.dw	0,(Smilis$milis$4)
      000358 00 02                  531 	.dw	2
      00035A 78                     532 	.db	120
      00035B 05                     533 	.sleb128	5
      00035C 00 00 81 6D            534 	.dw	0,(Smilis$milis$1)
      000360 00 00 81 6F            535 	.dw	0,(Smilis$milis$2)
      000364 00 02                  536 	.dw	2
      000366 78                     537 	.db	120
      000367 01                     538 	.sleb128	1
      000368 00 00 00 00            539 	.dw	0,0
      00036C 00 00 00 00            540 	.dw	0,0
                                    541 
                                    542 	.area .debug_abbrev (NOLOAD)
      000073                        543 Ldebug_abbrev:
      000073 07                     544 	.uleb128	7
      000074 35                     545 	.uleb128	53
      000075 00                     546 	.db	0
      000076 49                     547 	.uleb128	73
      000077 13                     548 	.uleb128	19
      000078 00                     549 	.uleb128	0
      000079 00                     550 	.uleb128	0
      00007A 08                     551 	.uleb128	8
      00007B 34                     552 	.uleb128	52
      00007C 00                     553 	.db	0
      00007D 02                     554 	.uleb128	2
      00007E 0A                     555 	.uleb128	10
      00007F 03                     556 	.uleb128	3
      000080 08                     557 	.uleb128	8
      000081 3F                     558 	.uleb128	63
      000082 0C                     559 	.uleb128	12
      000083 49                     560 	.uleb128	73
      000084 13                     561 	.uleb128	19
      000085 00                     562 	.uleb128	0
      000086 00                     563 	.uleb128	0
      000087 04                     564 	.uleb128	4
      000088 34                     565 	.uleb128	52
      000089 00                     566 	.db	0
      00008A 02                     567 	.uleb128	2
      00008B 0A                     568 	.uleb128	10
      00008C 03                     569 	.uleb128	3
      00008D 08                     570 	.uleb128	8
      00008E 49                     571 	.uleb128	73
      00008F 13                     572 	.uleb128	19
      000090 00                     573 	.uleb128	0
      000091 00                     574 	.uleb128	0
      000092 03                     575 	.uleb128	3
      000093 2E                     576 	.uleb128	46
      000094 01                     577 	.db	1
      000095 01                     578 	.uleb128	1
      000096 13                     579 	.uleb128	19
      000097 03                     580 	.uleb128	3
      000098 08                     581 	.uleb128	8
      000099 11                     582 	.uleb128	17
      00009A 01                     583 	.uleb128	1
      00009B 12                     584 	.uleb128	18
      00009C 01                     585 	.uleb128	1
      00009D 3F                     586 	.uleb128	63
      00009E 0C                     587 	.uleb128	12
      00009F 40                     588 	.uleb128	64
      0000A0 06                     589 	.uleb128	6
      0000A1 49                     590 	.uleb128	73
      0000A2 13                     591 	.uleb128	19
      0000A3 00                     592 	.uleb128	0
      0000A4 00                     593 	.uleb128	0
      0000A5 01                     594 	.uleb128	1
      0000A6 11                     595 	.uleb128	17
      0000A7 01                     596 	.db	1
      0000A8 03                     597 	.uleb128	3
      0000A9 08                     598 	.uleb128	8
      0000AA 10                     599 	.uleb128	16
      0000AB 06                     600 	.uleb128	6
      0000AC 13                     601 	.uleb128	19
      0000AD 0B                     602 	.uleb128	11
      0000AE 25                     603 	.uleb128	37
      0000AF 08                     604 	.uleb128	8
      0000B0 00                     605 	.uleb128	0
      0000B1 00                     606 	.uleb128	0
      0000B2 05                     607 	.uleb128	5
      0000B3 2E                     608 	.uleb128	46
      0000B4 00                     609 	.db	0
      0000B5 03                     610 	.uleb128	3
      0000B6 08                     611 	.uleb128	8
      0000B7 11                     612 	.uleb128	17
      0000B8 01                     613 	.uleb128	1
      0000B9 12                     614 	.uleb128	18
      0000BA 01                     615 	.uleb128	1
      0000BB 3F                     616 	.uleb128	63
      0000BC 0C                     617 	.uleb128	12
      0000BD 40                     618 	.uleb128	64
      0000BE 06                     619 	.uleb128	6
      0000BF 00                     620 	.uleb128	0
      0000C0 00                     621 	.uleb128	0
      0000C1 02                     622 	.uleb128	2
      0000C2 24                     623 	.uleb128	36
      0000C3 00                     624 	.db	0
      0000C4 03                     625 	.uleb128	3
      0000C5 08                     626 	.uleb128	8
      0000C6 0B                     627 	.uleb128	11
      0000C7 0B                     628 	.uleb128	11
      0000C8 3E                     629 	.uleb128	62
      0000C9 0B                     630 	.uleb128	11
      0000CA 00                     631 	.uleb128	0
      0000CB 00                     632 	.uleb128	0
      0000CC 06                     633 	.uleb128	6
      0000CD 2E                     634 	.uleb128	46
      0000CE 00                     635 	.db	0
      0000CF 03                     636 	.uleb128	3
      0000D0 08                     637 	.uleb128	8
      0000D1 11                     638 	.uleb128	17
      0000D2 01                     639 	.uleb128	1
      0000D3 12                     640 	.uleb128	18
      0000D4 01                     641 	.uleb128	1
      0000D5 36                     642 	.uleb128	54
      0000D6 0B                     643 	.uleb128	11
      0000D7 3F                     644 	.uleb128	63
      0000D8 0C                     645 	.uleb128	12
      0000D9 40                     646 	.uleb128	64
      0000DA 06                     647 	.uleb128	6
      0000DB 00                     648 	.uleb128	0
      0000DC 00                     649 	.uleb128	0
      0000DD 00                     650 	.uleb128	0
                                    651 
                                    652 	.area .debug_info (NOLOAD)
      00012A 00 00 00 DB            653 	.dw	0,Ldebug_info_end-Ldebug_info_start
      00012E                        654 Ldebug_info_start:
      00012E 00 02                  655 	.dw	2
      000130 00 00 00 73            656 	.dw	0,(Ldebug_abbrev)
      000134 04                     657 	.db	4
      000135 01                     658 	.uleb128	1
      000136 2E 2F 73 72 63 2F 6D   659 	.ascii "./src/milis.c"
             69 6C 69 73 2E 63
      000143 00                     660 	.db	0
      000144 00 00 01 1B            661 	.dw	0,(Ldebug_line_start+-4)
      000148 01                     662 	.db	1
      000149 53 44 43 43 20 76 65   663 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      000162 00                     664 	.db	0
      000163 02                     665 	.uleb128	2
      000164 75 6E 73 69 67 6E 65   666 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      000171 00                     667 	.db	0
      000172 04                     668 	.db	4
      000173 07                     669 	.db	7
      000174 03                     670 	.uleb128	3
      000175 00 00 00 7F            671 	.dw	0,127
      000179 6D 69 6C 69 73         672 	.ascii "milis"
      00017E 00                     673 	.db	0
      00017F 00 00 81 6D            674 	.dw	0,(_milis)
      000183 00 00 81 8F            675 	.dw	0,(XG$milis$0$0+1)
      000187 01                     676 	.db	1
      000188 00 00 02 E4            677 	.dw	0,(Ldebug_loc_start+220)
      00018C 00 00 00 39            678 	.dw	0,57
      000190 04                     679 	.uleb128	4
      000191 0E                     680 	.db	14
      000192 91                     681 	.db	145
      000193 7C                     682 	.sleb128	-4
      000194 93                     683 	.db	147
      000195 01                     684 	.uleb128	1
      000196 91                     685 	.db	145
      000197 7D                     686 	.sleb128	-3
      000198 93                     687 	.db	147
      000199 01                     688 	.uleb128	1
      00019A 52                     689 	.db	82
      00019B 93                     690 	.db	147
      00019C 01                     691 	.uleb128	1
      00019D 51                     692 	.db	81
      00019E 93                     693 	.db	147
      00019F 01                     694 	.uleb128	1
      0001A0 74 6D 70               695 	.ascii "tmp"
      0001A3 00                     696 	.db	0
      0001A4 00 00 00 39            697 	.dw	0,57
      0001A8 00                     698 	.uleb128	0
      0001A9 05                     699 	.uleb128	5
      0001AA 69 6E 69 74 5F 6D 69   700 	.ascii "init_milis"
             6C 69 73
      0001B4 00                     701 	.db	0
      0001B5 00 00 81 8F            702 	.dw	0,(_init_milis)
      0001B9 00 00 81 B5            703 	.dw	0,(XG$init_milis$0$0+1)
      0001BD 01                     704 	.db	1
      0001BE 00 00 02 34            705 	.dw	0,(Ldebug_loc_start+44)
      0001C2 06                     706 	.uleb128	6
      0001C3 54 49 4D 34 5F 55 50   707 	.ascii "TIM4_UPD_OVF_IRQHandler"
             44 5F 4F 56 46 5F 49
             52 51 48 61 6E 64 6C
             65 72
      0001DA 00                     708 	.db	0
      0001DB 00 00 81 B5            709 	.dw	0,(_TIM4_UPD_OVF_IRQHandler)
      0001DF 00 00 81 D0            710 	.dw	0,(XG$TIM4_UPD_OVF_IRQHandler$0$0+1)
      0001E3 03                     711 	.db	3
      0001E4 01                     712 	.db	1
      0001E5 00 00 02 08            713 	.dw	0,(Ldebug_loc_start)
      0001E9 07                     714 	.uleb128	7
      0001EA 00 00 00 39            715 	.dw	0,57
      0001EE 08                     716 	.uleb128	8
      0001EF 05                     717 	.db	5
      0001F0 03                     718 	.db	3
      0001F1 00 00 00 01            719 	.dw	0,(_miliseconds)
      0001F5 6D 69 6C 69 73 65 63   720 	.ascii "miliseconds"
             6F 6E 64 73
      000200 00                     721 	.db	0
      000201 01                     722 	.db	1
      000202 00 00 00 BF            723 	.dw	0,191
      000206 00                     724 	.uleb128	0
      000207 00                     725 	.uleb128	0
      000208 00                     726 	.uleb128	0
      000209                        727 Ldebug_info_end:
                                    728 
                                    729 	.area .debug_pubnames (NOLOAD)
      000025 00 00 00 53            730 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000029                        731 Ldebug_pubnames_start:
      000029 00 02                  732 	.dw	2
      00002B 00 00 01 2A            733 	.dw	0,(Ldebug_info_start-4)
      00002F 00 00 00 DF            734 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000033 00 00 00 4A            735 	.dw	0,74
      000037 6D 69 6C 69 73         736 	.ascii "milis"
      00003C 00                     737 	.db	0
      00003D 00 00 00 7F            738 	.dw	0,127
      000041 69 6E 69 74 5F 6D 69   739 	.ascii "init_milis"
             6C 69 73
      00004B 00                     740 	.db	0
      00004C 00 00 00 98            741 	.dw	0,152
      000050 54 49 4D 34 5F 55 50   742 	.ascii "TIM4_UPD_OVF_IRQHandler"
             44 5F 4F 56 46 5F 49
             52 51 48 61 6E 64 6C
             65 72
      000067 00                     743 	.db	0
      000068 00 00 00 C4            744 	.dw	0,196
      00006C 6D 69 6C 69 73 65 63   745 	.ascii "miliseconds"
             6F 6E 64 73
      000077 00                     746 	.db	0
      000078 00 00 00 00            747 	.dw	0,0
      00007C                        748 Ldebug_pubnames_end:
                                    749 
                                    750 	.area .debug_frame (NOLOAD)
      00016A 00 00                  751 	.dw	0
      00016C 00 0E                  752 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      00016E                        753 Ldebug_CIE0_start:
      00016E FF FF                  754 	.dw	0xffff
      000170 FF FF                  755 	.dw	0xffff
      000172 01                     756 	.db	1
      000173 00                     757 	.db	0
      000174 01                     758 	.uleb128	1
      000175 7F                     759 	.sleb128	-1
      000176 09                     760 	.db	9
      000177 0C                     761 	.db	12
      000178 08                     762 	.uleb128	8
      000179 09                     763 	.uleb128	9
      00017A 89                     764 	.db	137
      00017B 01                     765 	.uleb128	1
      00017C                        766 Ldebug_CIE0_end:
      00017C 00 00 00 21            767 	.dw	0,33
      000180 00 00 01 6A            768 	.dw	0,(Ldebug_CIE0_start-4)
      000184 00 00 81 B6            769 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$44)	;initial loc
      000188 00 00 00 1A            770 	.dw	0,Smilis$TIM4_UPD_OVF_IRQHandler$51-Smilis$TIM4_UPD_OVF_IRQHandler$44
      00018C 01                     771 	.db	1
      00018D 00 00 81 B6            772 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$44)
      000191 0E                     773 	.db	14
      000192 09                     774 	.uleb128	9
      000193 01                     775 	.db	1
      000194 00 00 81 B8            776 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$46)
      000198 0E                     777 	.db	14
      000199 0A                     778 	.uleb128	10
      00019A 01                     779 	.db	1
      00019B 00 00 81 BC            780 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$47)
      00019F 0E                     781 	.db	14
      0001A0 09                     782 	.uleb128	9
                                    783 
                                    784 	.area .debug_frame (NOLOAD)
      0001A1 00 00                  785 	.dw	0
      0001A3 00 0E                  786 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0001A5                        787 Ldebug_CIE1_start:
      0001A5 FF FF                  788 	.dw	0xffff
      0001A7 FF FF                  789 	.dw	0xffff
      0001A9 01                     790 	.db	1
      0001AA 00                     791 	.db	0
      0001AB 01                     792 	.uleb128	1
      0001AC 7F                     793 	.sleb128	-1
      0001AD 09                     794 	.db	9
      0001AE 0C                     795 	.db	12
      0001AF 08                     796 	.uleb128	8
      0001B0 02                     797 	.uleb128	2
      0001B1 89                     798 	.db	137
      0001B2 01                     799 	.uleb128	1
      0001B3                        800 Ldebug_CIE1_end:
      0001B3 00 00 00 6E            801 	.dw	0,110
      0001B7 00 00 01 A1            802 	.dw	0,(Ldebug_CIE1_start-4)
      0001BB 00 00 81 8F            803 	.dw	0,(Smilis$init_milis$20)	;initial loc
      0001BF 00 00 00 26            804 	.dw	0,Smilis$init_milis$42-Smilis$init_milis$20
      0001C3 01                     805 	.db	1
      0001C4 00 00 81 8F            806 	.dw	0,(Smilis$init_milis$20)
      0001C8 0E                     807 	.db	14
      0001C9 02                     808 	.uleb128	2
      0001CA 01                     809 	.db	1
      0001CB 00 00 81 91            810 	.dw	0,(Smilis$init_milis$22)
      0001CF 0E                     811 	.db	14
      0001D0 03                     812 	.uleb128	3
      0001D1 01                     813 	.db	1
      0001D2 00 00 81 93            814 	.dw	0,(Smilis$init_milis$23)
      0001D6 0E                     815 	.db	14
      0001D7 04                     816 	.uleb128	4
      0001D8 01                     817 	.db	1
      0001D9 00 00 81 97            818 	.dw	0,(Smilis$init_milis$24)
      0001DD 0E                     819 	.db	14
      0001DE 02                     820 	.uleb128	2
      0001DF 01                     821 	.db	1
      0001E0 00 00 81 99            822 	.dw	0,(Smilis$init_milis$26)
      0001E4 0E                     823 	.db	14
      0001E5 03                     824 	.uleb128	3
      0001E6 01                     825 	.db	1
      0001E7 00 00 81 9D            826 	.dw	0,(Smilis$init_milis$27)
      0001EB 0E                     827 	.db	14
      0001EC 02                     828 	.uleb128	2
      0001ED 01                     829 	.db	1
      0001EE 00 00 81 9F            830 	.dw	0,(Smilis$init_milis$29)
      0001F2 0E                     831 	.db	14
      0001F3 03                     832 	.uleb128	3
      0001F4 01                     833 	.db	1
      0001F5 00 00 81 A1            834 	.dw	0,(Smilis$init_milis$30)
      0001F9 0E                     835 	.db	14
      0001FA 04                     836 	.uleb128	4
      0001FB 01                     837 	.db	1
      0001FC 00 00 81 A5            838 	.dw	0,(Smilis$init_milis$31)
      000200 0E                     839 	.db	14
      000201 02                     840 	.uleb128	2
      000202 01                     841 	.db	1
      000203 00 00 81 A7            842 	.dw	0,(Smilis$init_milis$33)
      000207 0E                     843 	.db	14
      000208 03                     844 	.uleb128	3
      000209 01                     845 	.db	1
      00020A 00 00 81 A9            846 	.dw	0,(Smilis$init_milis$34)
      00020E 0E                     847 	.db	14
      00020F 04                     848 	.uleb128	4
      000210 01                     849 	.db	1
      000211 00 00 81 AD            850 	.dw	0,(Smilis$init_milis$35)
      000215 0E                     851 	.db	14
      000216 02                     852 	.uleb128	2
      000217 01                     853 	.db	1
      000218 00 00 81 B0            854 	.dw	0,(Smilis$init_milis$38)
      00021C 0E                     855 	.db	14
      00021D 03                     856 	.uleb128	3
      00021E 01                     857 	.db	1
      00021F 00 00 81 B4            858 	.dw	0,(Smilis$init_milis$39)
      000223 0E                     859 	.db	14
      000224 02                     860 	.uleb128	2
                                    861 
                                    862 	.area .debug_frame (NOLOAD)
      000225 00 00                  863 	.dw	0
      000227 00 0E                  864 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      000229                        865 Ldebug_CIE2_start:
      000229 FF FF                  866 	.dw	0xffff
      00022B FF FF                  867 	.dw	0xffff
      00022D 01                     868 	.db	1
      00022E 00                     869 	.db	0
      00022F 01                     870 	.uleb128	1
      000230 7F                     871 	.sleb128	-1
      000231 09                     872 	.db	9
      000232 0C                     873 	.db	12
      000233 08                     874 	.uleb128	8
      000234 02                     875 	.uleb128	2
      000235 89                     876 	.db	137
      000236 01                     877 	.uleb128	1
      000237                        878 Ldebug_CIE2_end:
      000237 00 00 00 59            879 	.dw	0,89
      00023B 00 00 02 25            880 	.dw	0,(Ldebug_CIE2_start-4)
      00023F 00 00 81 6D            881 	.dw	0,(Smilis$milis$1)	;initial loc
      000243 00 00 00 22            882 	.dw	0,Smilis$milis$18-Smilis$milis$1
      000247 01                     883 	.db	1
      000248 00 00 81 6D            884 	.dw	0,(Smilis$milis$1)
      00024C 0E                     885 	.db	14
      00024D 02                     886 	.uleb128	2
      00024E 01                     887 	.db	1
      00024F 00 00 81 6F            888 	.dw	0,(Smilis$milis$2)
      000253 0E                     889 	.db	14
      000254 06                     890 	.uleb128	6
      000255 01                     891 	.db	1
      000256 00 00 81 71            892 	.dw	0,(Smilis$milis$4)
      00025A 0E                     893 	.db	14
      00025B 07                     894 	.uleb128	7
      00025C 01                     895 	.db	1
      00025D 00 00 81 73            896 	.dw	0,(Smilis$milis$5)
      000261 0E                     897 	.db	14
      000262 08                     898 	.uleb128	8
      000263 01                     899 	.db	1
      000264 00 00 81 77            900 	.dw	0,(Smilis$milis$6)
      000268 0E                     901 	.db	14
      000269 06                     902 	.uleb128	6
      00026A 01                     903 	.db	1
      00026B 00 00 81 81            904 	.dw	0,(Smilis$milis$9)
      00026F 0E                     905 	.db	14
      000270 08                     906 	.uleb128	8
      000271 01                     907 	.db	1
      000272 00 00 81 83            908 	.dw	0,(Smilis$milis$10)
      000276 0E                     909 	.db	14
      000277 09                     910 	.uleb128	9
      000278 01                     911 	.db	1
      000279 00 00 81 85            912 	.dw	0,(Smilis$milis$11)
      00027D 0E                     913 	.db	14
      00027E 0A                     914 	.uleb128	10
      00027F 01                     915 	.db	1
      000280 00 00 81 89            916 	.dw	0,(Smilis$milis$12)
      000284 0E                     917 	.db	14
      000285 08                     918 	.uleb128	8
      000286 01                     919 	.db	1
      000287 00 00 81 8A            920 	.dw	0,(Smilis$milis$13)
      00028B 0E                     921 	.db	14
      00028C 06                     922 	.uleb128	6
      00028D 01                     923 	.db	1
      00028E 00 00 81 8E            924 	.dw	0,(Smilis$milis$16)
      000292 0E                     925 	.db	14
      000293 02                     926 	.uleb128	2

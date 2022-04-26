                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart1
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _getchar
                                     12 	.globl _putchar
                                     13 	.globl _UART1_GetFlagStatus
                                     14 	.globl _UART1_SendData8
                                     15 	.globl _UART1_ReceiveData8
                                     16 	.globl _UART1_Cmd
                                     17 	.globl _UART1_Init
                                     18 	.globl _UART1_DeInit
                                     19 	.globl _init_uart1
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area DATA
                                     24 ;--------------------------------------------------------
                                     25 ; ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area INITIALIZED
                                     28 ;--------------------------------------------------------
                                     29 ; absolute external ram data
                                     30 ;--------------------------------------------------------
                                     31 	.area DABS (ABS)
                                     32 
                                     33 ; default segment ordering for linker
                                     34 	.area HOME
                                     35 	.area GSINIT
                                     36 	.area GSFINAL
                                     37 	.area CONST
                                     38 	.area INITIALIZER
                                     39 	.area CODE
                                     40 
                                     41 ;--------------------------------------------------------
                                     42 ; global & static initialisations
                                     43 ;--------------------------------------------------------
                                     44 	.area HOME
                                     45 	.area GSINIT
                                     46 	.area GSFINAL
                                     47 	.area GSINIT
                                     48 ;--------------------------------------------------------
                                     49 ; Home
                                     50 ;--------------------------------------------------------
                                     51 	.area HOME
                                     52 	.area HOME
                                     53 ;--------------------------------------------------------
                                     54 ; code
                                     55 ;--------------------------------------------------------
                                     56 	.area CODE
                           000000    57 	Suart1$init_uart1$0 ==.
                                     58 ;	./src/uart1.c: 13: void init_uart1(void)
                                     59 ; genLabel
                                     60 ;	-----------------------------------------
                                     61 ;	 function init_uart1
                                     62 ;	-----------------------------------------
                                     63 ;	Register assignment is optimal.
                                     64 ;	Stack space usage: 0 bytes.
      008F18                         65 _init_uart1:
                           000000    66 	Suart1$init_uart1$1 ==.
                           000000    67 	Suart1$init_uart1$2 ==.
                                     68 ;	./src/uart1.c: 15: UART1_DeInit();
                                     69 ; genCall
      008F18 CD 97 98         [ 4]   70 	call	_UART1_DeInit
                           000003    71 	Suart1$init_uart1$3 ==.
                                     72 ;	./src/uart1.c: 17: UART1_Init((uint32_t) 115200,       // - BaudRate = 115200 baud  
                                     73 ; genIPush
      008F1B 4B 0C            [ 1]   74 	push	#0x0c
                           000005    75 	Suart1$init_uart1$4 ==.
                                     76 ; genIPush
      008F1D 4B 80            [ 1]   77 	push	#0x80
                           000007    78 	Suart1$init_uart1$5 ==.
                                     79 ; genIPush
      008F1F 4B 00            [ 1]   80 	push	#0x00
                           000009    81 	Suart1$init_uart1$6 ==.
                                     82 ; genIPush
      008F21 4B 00            [ 1]   83 	push	#0x00
                           00000B    84 	Suart1$init_uart1$7 ==.
                                     85 ; genIPush
      008F23 4B 00            [ 1]   86 	push	#0x00
                           00000D    87 	Suart1$init_uart1$8 ==.
                                     88 ; genIPush
      008F25 4B 00            [ 1]   89 	push	#0x00
                           00000F    90 	Suart1$init_uart1$9 ==.
      008F27 4B C2            [ 1]   91 	push	#0xc2
                           000011    92 	Suart1$init_uart1$10 ==.
      008F29 4B 01            [ 1]   93 	push	#0x01
                           000013    94 	Suart1$init_uart1$11 ==.
      008F2B 4B 00            [ 1]   95 	push	#0x00
                           000015    96 	Suart1$init_uart1$12 ==.
                                     97 ; genCall
      008F2D CD 97 C3         [ 4]   98 	call	_UART1_Init
      008F30 5B 09            [ 2]   99 	addw	sp, #9
                           00001A   100 	Suart1$init_uart1$13 ==.
                           00001A   101 	Suart1$init_uart1$14 ==.
                                    102 ;	./src/uart1.c: 24: UART1_Cmd(ENABLE);
                                    103 ; genIPush
      008F32 4B 01            [ 1]  104 	push	#0x01
                           00001C   105 	Suart1$init_uart1$15 ==.
                                    106 ; genCall
      008F34 CD 99 52         [ 4]  107 	call	_UART1_Cmd
      008F37 84               [ 1]  108 	pop	a
                           000020   109 	Suart1$init_uart1$16 ==.
                                    110 ; genLabel
      008F38                        111 00101$:
                           000020   112 	Suart1$init_uart1$17 ==.
                                    113 ;	./src/uart1.c: 25: }
                                    114 ; genEndFunction
                           000020   115 	Suart1$init_uart1$18 ==.
                           000020   116 	XG$init_uart1$0$0 ==.
      008F38 81               [ 4]  117 	ret
                           000021   118 	Suart1$init_uart1$19 ==.
                           000021   119 	Suart1$putchar$20 ==.
                                    120 ;	./src/uart1.c: 28: PUTCHAR_PROTOTYPE {
                                    121 ; genLabel
                                    122 ;	-----------------------------------------
                                    123 ;	 function putchar
                                    124 ;	-----------------------------------------
                                    125 ;	Register assignment is optimal.
                                    126 ;	Stack space usage: 0 bytes.
      008F39                        127 _putchar:
                           000021   128 	Suart1$putchar$21 ==.
                           000021   129 	Suart1$putchar$22 ==.
                                    130 ;	./src/uart1.c: 30: UART1_SendData8(c);
                                    131 ; genCast
                                    132 ; genAssign
      008F39 7B 04            [ 1]  133 	ld	a, (0x04, sp)
                                    134 ; genIPush
      008F3B 88               [ 1]  135 	push	a
                           000024   136 	Suart1$putchar$23 ==.
                                    137 ; genCall
      008F3C CD 9A F0         [ 4]  138 	call	_UART1_SendData8
      008F3F 84               [ 1]  139 	pop	a
                           000028   140 	Suart1$putchar$24 ==.
                           000028   141 	Suart1$putchar$25 ==.
                                    142 ;	./src/uart1.c: 32: while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET){
                                    143 ; genLabel
      008F40                        144 00101$:
                                    145 ; genIPush
      008F40 4B 80            [ 1]  146 	push	#0x80
                           00002A   147 	Suart1$putchar$26 ==.
      008F42 4B 00            [ 1]  148 	push	#0x00
                           00002C   149 	Suart1$putchar$27 ==.
                                    150 ; genCall
      008F44 CD 9B 40         [ 4]  151 	call	_UART1_GetFlagStatus
      008F47 85               [ 2]  152 	popw	x
                           000030   153 	Suart1$putchar$28 ==.
                                    154 ; genIfx
      008F48 4D               [ 1]  155 	tnz	a
      008F49 26 03            [ 1]  156 	jrne	00116$
      008F4B CC 8F 40         [ 2]  157 	jp	00101$
      008F4E                        158 00116$:
                           000036   159 	Suart1$putchar$29 ==.
                                    160 ;	./src/uart1.c: 35: return (c);
                                    161 ; genReturn
      008F4E 1E 03            [ 2]  162 	ldw	x, (0x03, sp)
                                    163 ; genLabel
      008F50                        164 00104$:
                           000038   165 	Suart1$putchar$30 ==.
                                    166 ;	./src/uart1.c: 36: }
                                    167 ; genEndFunction
                           000038   168 	Suart1$putchar$31 ==.
                           000038   169 	XG$putchar$0$0 ==.
      008F50 81               [ 4]  170 	ret
                           000039   171 	Suart1$putchar$32 ==.
                           000039   172 	Suart1$getchar$33 ==.
                                    173 ;	./src/uart1.c: 43: GETCHAR_PROTOTYPE {
                                    174 ; genLabel
                                    175 ;	-----------------------------------------
                                    176 ;	 function getchar
                                    177 ;	-----------------------------------------
                                    178 ;	Register assignment might be sub-optimal.
                                    179 ;	Stack space usage: 0 bytes.
      008F51                        180 _getchar:
                           000039   181 	Suart1$getchar$34 ==.
                           000039   182 	Suart1$getchar$35 ==.
                                    183 ;	./src/uart1.c: 50: while (UART1_GetFlagStatus(UART1_FLAG_RXNE) == RESET) {
                                    184 ; genLabel
      008F51                        185 00101$:
                                    186 ; genIPush
      008F51 4B 20            [ 1]  187 	push	#0x20
                           00003B   188 	Suart1$getchar$36 ==.
      008F53 4B 00            [ 1]  189 	push	#0x00
                           00003D   190 	Suart1$getchar$37 ==.
                                    191 ; genCall
      008F55 CD 9B 40         [ 4]  192 	call	_UART1_GetFlagStatus
      008F58 85               [ 2]  193 	popw	x
                           000041   194 	Suart1$getchar$38 ==.
                                    195 ; genIfx
      008F59 4D               [ 1]  196 	tnz	a
      008F5A 26 03            [ 1]  197 	jrne	00116$
      008F5C CC 8F 51         [ 2]  198 	jp	00101$
      008F5F                        199 00116$:
                           000047   200 	Suart1$getchar$39 ==.
                                    201 ;	./src/uart1.c: 53: c = UART1_ReceiveData8();
                                    202 ; genCall
      008F5F CD 9A CF         [ 4]  203 	call	_UART1_ReceiveData8
                                    204 ; genCast
                                    205 ; genAssign
      008F62 5F               [ 1]  206 	clrw	x
      008F63 97               [ 1]  207 	ld	xl, a
                                    208 ; genAssign
                           00004C   209 	Suart1$getchar$40 ==.
                                    210 ;	./src/uart1.c: 54: return (c);
                                    211 ; genReturn
                                    212 ; genLabel
      008F64                        213 00104$:
                           00004C   214 	Suart1$getchar$41 ==.
                                    215 ;	./src/uart1.c: 55: }
                                    216 ; genEndFunction
                           00004C   217 	Suart1$getchar$42 ==.
                           00004C   218 	XG$getchar$0$0 ==.
      008F64 81               [ 4]  219 	ret
                           00004D   220 	Suart1$getchar$43 ==.
                                    221 	.area CODE
                                    222 	.area CONST
                                    223 	.area INITIALIZER
                                    224 	.area CABS (ABS)
                                    225 
                                    226 	.area .debug_line (NOLOAD)
      0013B6 00 00 00 EC            227 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0013BA                        228 Ldebug_line_start:
      0013BA 00 02                  229 	.dw	2
      0013BC 00 00 00 6E            230 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0013C0 01                     231 	.db	1
      0013C1 01                     232 	.db	1
      0013C2 FB                     233 	.db	-5
      0013C3 0F                     234 	.db	15
      0013C4 0A                     235 	.db	10
      0013C5 00                     236 	.db	0
      0013C6 01                     237 	.db	1
      0013C7 01                     238 	.db	1
      0013C8 01                     239 	.db	1
      0013C9 01                     240 	.db	1
      0013CA 00                     241 	.db	0
      0013CB 00                     242 	.db	0
      0013CC 00                     243 	.db	0
      0013CD 01                     244 	.db	1
      0013CE 43 3A 5C 50 72 6F 67   245 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      0013F6 00                     246 	.db	0
      0013F7 43 3A 5C 50 72 6F 67   247 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      00141A 00                     248 	.db	0
      00141B 00                     249 	.db	0
      00141C 2E 2F 73 72 63 2F 75   250 	.ascii "./src/uart1.c"
             61 72 74 31 2E 63
      001429 00                     251 	.db	0
      00142A 00                     252 	.uleb128	0
      00142B 00                     253 	.uleb128	0
      00142C 00                     254 	.uleb128	0
      00142D 00                     255 	.db	0
      00142E                        256 Ldebug_line_stmt:
      00142E 00                     257 	.db	0
      00142F 05                     258 	.uleb128	5
      001430 02                     259 	.db	2
      001431 00 00 8F 18            260 	.dw	0,(Suart1$init_uart1$0)
      001435 03                     261 	.db	3
      001436 0C                     262 	.sleb128	12
      001437 01                     263 	.db	1
      001438 09                     264 	.db	9
      001439 00 00                  265 	.dw	Suart1$init_uart1$2-Suart1$init_uart1$0
      00143B 03                     266 	.db	3
      00143C 02                     267 	.sleb128	2
      00143D 01                     268 	.db	1
      00143E 09                     269 	.db	9
      00143F 00 03                  270 	.dw	Suart1$init_uart1$3-Suart1$init_uart1$2
      001441 03                     271 	.db	3
      001442 02                     272 	.sleb128	2
      001443 01                     273 	.db	1
      001444 09                     274 	.db	9
      001445 00 17                  275 	.dw	Suart1$init_uart1$14-Suart1$init_uart1$3
      001447 03                     276 	.db	3
      001448 07                     277 	.sleb128	7
      001449 01                     278 	.db	1
      00144A 09                     279 	.db	9
      00144B 00 06                  280 	.dw	Suart1$init_uart1$17-Suart1$init_uart1$14
      00144D 03                     281 	.db	3
      00144E 01                     282 	.sleb128	1
      00144F 01                     283 	.db	1
      001450 09                     284 	.db	9
      001451 00 01                  285 	.dw	1+Suart1$init_uart1$18-Suart1$init_uart1$17
      001453 00                     286 	.db	0
      001454 01                     287 	.uleb128	1
      001455 01                     288 	.db	1
      001456 00                     289 	.db	0
      001457 05                     290 	.uleb128	5
      001458 02                     291 	.db	2
      001459 00 00 8F 39            292 	.dw	0,(Suart1$putchar$20)
      00145D 03                     293 	.db	3
      00145E 1B                     294 	.sleb128	27
      00145F 01                     295 	.db	1
      001460 09                     296 	.db	9
      001461 00 00                  297 	.dw	Suart1$putchar$22-Suart1$putchar$20
      001463 03                     298 	.db	3
      001464 02                     299 	.sleb128	2
      001465 01                     300 	.db	1
      001466 09                     301 	.db	9
      001467 00 07                  302 	.dw	Suart1$putchar$25-Suart1$putchar$22
      001469 03                     303 	.db	3
      00146A 02                     304 	.sleb128	2
      00146B 01                     305 	.db	1
      00146C 09                     306 	.db	9
      00146D 00 0E                  307 	.dw	Suart1$putchar$29-Suart1$putchar$25
      00146F 03                     308 	.db	3
      001470 03                     309 	.sleb128	3
      001471 01                     310 	.db	1
      001472 09                     311 	.db	9
      001473 00 02                  312 	.dw	Suart1$putchar$30-Suart1$putchar$29
      001475 03                     313 	.db	3
      001476 01                     314 	.sleb128	1
      001477 01                     315 	.db	1
      001478 09                     316 	.db	9
      001479 00 01                  317 	.dw	1+Suart1$putchar$31-Suart1$putchar$30
      00147B 00                     318 	.db	0
      00147C 01                     319 	.uleb128	1
      00147D 01                     320 	.db	1
      00147E 00                     321 	.db	0
      00147F 05                     322 	.uleb128	5
      001480 02                     323 	.db	2
      001481 00 00 8F 51            324 	.dw	0,(Suart1$getchar$33)
      001485 03                     325 	.db	3
      001486 2A                     326 	.sleb128	42
      001487 01                     327 	.db	1
      001488 09                     328 	.db	9
      001489 00 00                  329 	.dw	Suart1$getchar$35-Suart1$getchar$33
      00148B 03                     330 	.db	3
      00148C 07                     331 	.sleb128	7
      00148D 01                     332 	.db	1
      00148E 09                     333 	.db	9
      00148F 00 0E                  334 	.dw	Suart1$getchar$39-Suart1$getchar$35
      001491 03                     335 	.db	3
      001492 03                     336 	.sleb128	3
      001493 01                     337 	.db	1
      001494 09                     338 	.db	9
      001495 00 05                  339 	.dw	Suart1$getchar$40-Suart1$getchar$39
      001497 03                     340 	.db	3
      001498 01                     341 	.sleb128	1
      001499 01                     342 	.db	1
      00149A 09                     343 	.db	9
      00149B 00 00                  344 	.dw	Suart1$getchar$41-Suart1$getchar$40
      00149D 03                     345 	.db	3
      00149E 01                     346 	.sleb128	1
      00149F 01                     347 	.db	1
      0014A0 09                     348 	.db	9
      0014A1 00 01                  349 	.dw	1+Suart1$getchar$42-Suart1$getchar$41
      0014A3 00                     350 	.db	0
      0014A4 01                     351 	.uleb128	1
      0014A5 01                     352 	.db	1
      0014A6                        353 Ldebug_line_end:
                                    354 
                                    355 	.area .debug_loc (NOLOAD)
      0022EC                        356 Ldebug_loc_start:
      0022EC 00 00 8F 59            357 	.dw	0,(Suart1$getchar$38)
      0022F0 00 00 8F 65            358 	.dw	0,(Suart1$getchar$43)
      0022F4 00 02                  359 	.dw	2
      0022F6 78                     360 	.db	120
      0022F7 01                     361 	.sleb128	1
      0022F8 00 00 8F 55            362 	.dw	0,(Suart1$getchar$37)
      0022FC 00 00 8F 59            363 	.dw	0,(Suart1$getchar$38)
      002300 00 02                  364 	.dw	2
      002302 78                     365 	.db	120
      002303 03                     366 	.sleb128	3
      002304 00 00 8F 53            367 	.dw	0,(Suart1$getchar$36)
      002308 00 00 8F 55            368 	.dw	0,(Suart1$getchar$37)
      00230C 00 02                  369 	.dw	2
      00230E 78                     370 	.db	120
      00230F 02                     371 	.sleb128	2
      002310 00 00 8F 51            372 	.dw	0,(Suart1$getchar$34)
      002314 00 00 8F 53            373 	.dw	0,(Suart1$getchar$36)
      002318 00 02                  374 	.dw	2
      00231A 78                     375 	.db	120
      00231B 01                     376 	.sleb128	1
      00231C 00 00 00 00            377 	.dw	0,0
      002320 00 00 00 00            378 	.dw	0,0
      002324 00 00 8F 48            379 	.dw	0,(Suart1$putchar$28)
      002328 00 00 8F 51            380 	.dw	0,(Suart1$putchar$32)
      00232C 00 02                  381 	.dw	2
      00232E 78                     382 	.db	120
      00232F 01                     383 	.sleb128	1
      002330 00 00 8F 44            384 	.dw	0,(Suart1$putchar$27)
      002334 00 00 8F 48            385 	.dw	0,(Suart1$putchar$28)
      002338 00 02                  386 	.dw	2
      00233A 78                     387 	.db	120
      00233B 03                     388 	.sleb128	3
      00233C 00 00 8F 42            389 	.dw	0,(Suart1$putchar$26)
      002340 00 00 8F 44            390 	.dw	0,(Suart1$putchar$27)
      002344 00 02                  391 	.dw	2
      002346 78                     392 	.db	120
      002347 02                     393 	.sleb128	2
      002348 00 00 8F 40            394 	.dw	0,(Suart1$putchar$24)
      00234C 00 00 8F 42            395 	.dw	0,(Suart1$putchar$26)
      002350 00 02                  396 	.dw	2
      002352 78                     397 	.db	120
      002353 01                     398 	.sleb128	1
      002354 00 00 8F 3C            399 	.dw	0,(Suart1$putchar$23)
      002358 00 00 8F 40            400 	.dw	0,(Suart1$putchar$24)
      00235C 00 02                  401 	.dw	2
      00235E 78                     402 	.db	120
      00235F 02                     403 	.sleb128	2
      002360 00 00 8F 39            404 	.dw	0,(Suart1$putchar$21)
      002364 00 00 8F 3C            405 	.dw	0,(Suart1$putchar$23)
      002368 00 02                  406 	.dw	2
      00236A 78                     407 	.db	120
      00236B 01                     408 	.sleb128	1
      00236C 00 00 00 00            409 	.dw	0,0
      002370 00 00 00 00            410 	.dw	0,0
      002374 00 00 8F 38            411 	.dw	0,(Suart1$init_uart1$16)
      002378 00 00 8F 39            412 	.dw	0,(Suart1$init_uart1$19)
      00237C 00 02                  413 	.dw	2
      00237E 78                     414 	.db	120
      00237F 01                     415 	.sleb128	1
      002380 00 00 8F 34            416 	.dw	0,(Suart1$init_uart1$15)
      002384 00 00 8F 38            417 	.dw	0,(Suart1$init_uart1$16)
      002388 00 02                  418 	.dw	2
      00238A 78                     419 	.db	120
      00238B 02                     420 	.sleb128	2
      00238C 00 00 8F 32            421 	.dw	0,(Suart1$init_uart1$13)
      002390 00 00 8F 34            422 	.dw	0,(Suart1$init_uart1$15)
      002394 00 02                  423 	.dw	2
      002396 78                     424 	.db	120
      002397 01                     425 	.sleb128	1
      002398 00 00 8F 2D            426 	.dw	0,(Suart1$init_uart1$12)
      00239C 00 00 8F 32            427 	.dw	0,(Suart1$init_uart1$13)
      0023A0 00 02                  428 	.dw	2
      0023A2 78                     429 	.db	120
      0023A3 0A                     430 	.sleb128	10
      0023A4 00 00 8F 2B            431 	.dw	0,(Suart1$init_uart1$11)
      0023A8 00 00 8F 2D            432 	.dw	0,(Suart1$init_uart1$12)
      0023AC 00 02                  433 	.dw	2
      0023AE 78                     434 	.db	120
      0023AF 09                     435 	.sleb128	9
      0023B0 00 00 8F 29            436 	.dw	0,(Suart1$init_uart1$10)
      0023B4 00 00 8F 2B            437 	.dw	0,(Suart1$init_uart1$11)
      0023B8 00 02                  438 	.dw	2
      0023BA 78                     439 	.db	120
      0023BB 08                     440 	.sleb128	8
      0023BC 00 00 8F 27            441 	.dw	0,(Suart1$init_uart1$9)
      0023C0 00 00 8F 29            442 	.dw	0,(Suart1$init_uart1$10)
      0023C4 00 02                  443 	.dw	2
      0023C6 78                     444 	.db	120
      0023C7 07                     445 	.sleb128	7
      0023C8 00 00 8F 25            446 	.dw	0,(Suart1$init_uart1$8)
      0023CC 00 00 8F 27            447 	.dw	0,(Suart1$init_uart1$9)
      0023D0 00 02                  448 	.dw	2
      0023D2 78                     449 	.db	120
      0023D3 06                     450 	.sleb128	6
      0023D4 00 00 8F 23            451 	.dw	0,(Suart1$init_uart1$7)
      0023D8 00 00 8F 25            452 	.dw	0,(Suart1$init_uart1$8)
      0023DC 00 02                  453 	.dw	2
      0023DE 78                     454 	.db	120
      0023DF 05                     455 	.sleb128	5
      0023E0 00 00 8F 21            456 	.dw	0,(Suart1$init_uart1$6)
      0023E4 00 00 8F 23            457 	.dw	0,(Suart1$init_uart1$7)
      0023E8 00 02                  458 	.dw	2
      0023EA 78                     459 	.db	120
      0023EB 04                     460 	.sleb128	4
      0023EC 00 00 8F 1F            461 	.dw	0,(Suart1$init_uart1$5)
      0023F0 00 00 8F 21            462 	.dw	0,(Suart1$init_uart1$6)
      0023F4 00 02                  463 	.dw	2
      0023F6 78                     464 	.db	120
      0023F7 03                     465 	.sleb128	3
      0023F8 00 00 8F 1D            466 	.dw	0,(Suart1$init_uart1$4)
      0023FC 00 00 8F 1F            467 	.dw	0,(Suart1$init_uart1$5)
      002400 00 02                  468 	.dw	2
      002402 78                     469 	.db	120
      002403 02                     470 	.sleb128	2
      002404 00 00 8F 18            471 	.dw	0,(Suart1$init_uart1$1)
      002408 00 00 8F 1D            472 	.dw	0,(Suart1$init_uart1$4)
      00240C 00 02                  473 	.dw	2
      00240E 78                     474 	.db	120
      00240F 01                     475 	.sleb128	1
      002410 00 00 00 00            476 	.dw	0,0
      002414 00 00 00 00            477 	.dw	0,0
                                    478 
                                    479 	.area .debug_abbrev (NOLOAD)
      00036C                        480 Ldebug_abbrev:
      00036C 06                     481 	.uleb128	6
      00036D 2E                     482 	.uleb128	46
      00036E 01                     483 	.db	1
      00036F 03                     484 	.uleb128	3
      000370 08                     485 	.uleb128	8
      000371 11                     486 	.uleb128	17
      000372 01                     487 	.uleb128	1
      000373 12                     488 	.uleb128	18
      000374 01                     489 	.uleb128	1
      000375 3F                     490 	.uleb128	63
      000376 0C                     491 	.uleb128	12
      000377 40                     492 	.uleb128	64
      000378 06                     493 	.uleb128	6
      000379 49                     494 	.uleb128	73
      00037A 13                     495 	.uleb128	19
      00037B 00                     496 	.uleb128	0
      00037C 00                     497 	.uleb128	0
      00037D 05                     498 	.uleb128	5
      00037E 05                     499 	.uleb128	5
      00037F 00                     500 	.db	0
      000380 02                     501 	.uleb128	2
      000381 0A                     502 	.uleb128	10
      000382 03                     503 	.uleb128	3
      000383 08                     504 	.uleb128	8
      000384 49                     505 	.uleb128	73
      000385 13                     506 	.uleb128	19
      000386 00                     507 	.uleb128	0
      000387 00                     508 	.uleb128	0
      000388 07                     509 	.uleb128	7
      000389 34                     510 	.uleb128	52
      00038A 00                     511 	.db	0
      00038B 02                     512 	.uleb128	2
      00038C 0A                     513 	.uleb128	10
      00038D 03                     514 	.uleb128	3
      00038E 08                     515 	.uleb128	8
      00038F 49                     516 	.uleb128	73
      000390 13                     517 	.uleb128	19
      000391 00                     518 	.uleb128	0
      000392 00                     519 	.uleb128	0
      000393 04                     520 	.uleb128	4
      000394 2E                     521 	.uleb128	46
      000395 01                     522 	.db	1
      000396 01                     523 	.uleb128	1
      000397 13                     524 	.uleb128	19
      000398 03                     525 	.uleb128	3
      000399 08                     526 	.uleb128	8
      00039A 11                     527 	.uleb128	17
      00039B 01                     528 	.uleb128	1
      00039C 12                     529 	.uleb128	18
      00039D 01                     530 	.uleb128	1
      00039E 3F                     531 	.uleb128	63
      00039F 0C                     532 	.uleb128	12
      0003A0 40                     533 	.uleb128	64
      0003A1 06                     534 	.uleb128	6
      0003A2 49                     535 	.uleb128	73
      0003A3 13                     536 	.uleb128	19
      0003A4 00                     537 	.uleb128	0
      0003A5 00                     538 	.uleb128	0
      0003A6 01                     539 	.uleb128	1
      0003A7 11                     540 	.uleb128	17
      0003A8 01                     541 	.db	1
      0003A9 03                     542 	.uleb128	3
      0003AA 08                     543 	.uleb128	8
      0003AB 10                     544 	.uleb128	16
      0003AC 06                     545 	.uleb128	6
      0003AD 13                     546 	.uleb128	19
      0003AE 0B                     547 	.uleb128	11
      0003AF 25                     548 	.uleb128	37
      0003B0 08                     549 	.uleb128	8
      0003B1 00                     550 	.uleb128	0
      0003B2 00                     551 	.uleb128	0
      0003B3 02                     552 	.uleb128	2
      0003B4 2E                     553 	.uleb128	46
      0003B5 00                     554 	.db	0
      0003B6 03                     555 	.uleb128	3
      0003B7 08                     556 	.uleb128	8
      0003B8 11                     557 	.uleb128	17
      0003B9 01                     558 	.uleb128	1
      0003BA 12                     559 	.uleb128	18
      0003BB 01                     560 	.uleb128	1
      0003BC 3F                     561 	.uleb128	63
      0003BD 0C                     562 	.uleb128	12
      0003BE 40                     563 	.uleb128	64
      0003BF 06                     564 	.uleb128	6
      0003C0 00                     565 	.uleb128	0
      0003C1 00                     566 	.uleb128	0
      0003C2 03                     567 	.uleb128	3
      0003C3 24                     568 	.uleb128	36
      0003C4 00                     569 	.db	0
      0003C5 03                     570 	.uleb128	3
      0003C6 08                     571 	.uleb128	8
      0003C7 0B                     572 	.uleb128	11
      0003C8 0B                     573 	.uleb128	11
      0003C9 3E                     574 	.uleb128	62
      0003CA 0B                     575 	.uleb128	11
      0003CB 00                     576 	.uleb128	0
      0003CC 00                     577 	.uleb128	0
      0003CD 00                     578 	.uleb128	0
                                    579 
                                    580 	.area .debug_info (NOLOAD)
      002306 00 00 00 AA            581 	.dw	0,Ldebug_info_end-Ldebug_info_start
      00230A                        582 Ldebug_info_start:
      00230A 00 02                  583 	.dw	2
      00230C 00 00 03 6C            584 	.dw	0,(Ldebug_abbrev)
      002310 04                     585 	.db	4
      002311 01                     586 	.uleb128	1
      002312 2E 2F 73 72 63 2F 75   587 	.ascii "./src/uart1.c"
             61 72 74 31 2E 63
      00231F 00                     588 	.db	0
      002320 00 00 13 B6            589 	.dw	0,(Ldebug_line_start+-4)
      002324 01                     590 	.db	1
      002325 53 44 43 43 20 76 65   591 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      00233E 00                     592 	.db	0
      00233F 02                     593 	.uleb128	2
      002340 69 6E 69 74 5F 75 61   594 	.ascii "init_uart1"
             72 74 31
      00234A 00                     595 	.db	0
      00234B 00 00 8F 18            596 	.dw	0,(_init_uart1)
      00234F 00 00 8F 39            597 	.dw	0,(XG$init_uart1$0$0+1)
      002353 01                     598 	.db	1
      002354 00 00 23 74            599 	.dw	0,(Ldebug_loc_start+136)
      002358 03                     600 	.uleb128	3
      002359 69 6E 74               601 	.ascii "int"
      00235C 00                     602 	.db	0
      00235D 02                     603 	.db	2
      00235E 05                     604 	.db	5
      00235F 04                     605 	.uleb128	4
      002360 00 00 00 82            606 	.dw	0,130
      002364 70 75 74 63 68 61 72   607 	.ascii "putchar"
      00236B 00                     608 	.db	0
      00236C 00 00 8F 39            609 	.dw	0,(_putchar)
      002370 00 00 8F 51            610 	.dw	0,(XG$putchar$0$0+1)
      002374 01                     611 	.db	1
      002375 00 00 23 24            612 	.dw	0,(Ldebug_loc_start+56)
      002379 00 00 00 52            613 	.dw	0,82
      00237D 05                     614 	.uleb128	5
      00237E 02                     615 	.db	2
      00237F 91                     616 	.db	145
      002380 02                     617 	.sleb128	2
      002381 63                     618 	.ascii "c"
      002382 00                     619 	.db	0
      002383 00 00 00 52            620 	.dw	0,82
      002387 00                     621 	.uleb128	0
      002388 06                     622 	.uleb128	6
      002389 67 65 74 63 68 61 72   623 	.ascii "getchar"
      002390 00                     624 	.db	0
      002391 00 00 8F 51            625 	.dw	0,(_getchar)
      002395 00 00 8F 65            626 	.dw	0,(XG$getchar$0$0+1)
      002399 01                     627 	.db	1
      00239A 00 00 22 EC            628 	.dw	0,(Ldebug_loc_start)
      00239E 00 00 00 52            629 	.dw	0,82
      0023A2 07                     630 	.uleb128	7
      0023A3 06                     631 	.db	6
      0023A4 52                     632 	.db	82
      0023A5 93                     633 	.db	147
      0023A6 01                     634 	.uleb128	1
      0023A7 51                     635 	.db	81
      0023A8 93                     636 	.db	147
      0023A9 01                     637 	.uleb128	1
      0023AA 63                     638 	.ascii "c"
      0023AB 00                     639 	.db	0
      0023AC 00 00 00 52            640 	.dw	0,82
      0023B0 00                     641 	.uleb128	0
      0023B1 00                     642 	.uleb128	0
      0023B2 00                     643 	.uleb128	0
      0023B3 00                     644 	.uleb128	0
      0023B4                        645 Ldebug_info_end:
                                    646 
                                    647 	.area .debug_pubnames (NOLOAD)
      000575 00 00 00 35            648 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000579                        649 Ldebug_pubnames_start:
      000579 00 02                  650 	.dw	2
      00057B 00 00 23 06            651 	.dw	0,(Ldebug_info_start-4)
      00057F 00 00 00 AE            652 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000583 00 00 00 39            653 	.dw	0,57
      000587 69 6E 69 74 5F 75 61   654 	.ascii "init_uart1"
             72 74 31
      000591 00                     655 	.db	0
      000592 00 00 00 59            656 	.dw	0,89
      000596 70 75 74 63 68 61 72   657 	.ascii "putchar"
      00059D 00                     658 	.db	0
      00059E 00 00 00 82            659 	.dw	0,130
      0005A2 67 65 74 63 68 61 72   660 	.ascii "getchar"
      0005A9 00                     661 	.db	0
      0005AA 00 00 00 00            662 	.dw	0,0
      0005AE                        663 Ldebug_pubnames_end:
                                    664 
                                    665 	.area .debug_frame (NOLOAD)
      001C47 00 00                  666 	.dw	0
      001C49 00 0E                  667 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      001C4B                        668 Ldebug_CIE0_start:
      001C4B FF FF                  669 	.dw	0xffff
      001C4D FF FF                  670 	.dw	0xffff
      001C4F 01                     671 	.db	1
      001C50 00                     672 	.db	0
      001C51 01                     673 	.uleb128	1
      001C52 7F                     674 	.sleb128	-1
      001C53 09                     675 	.db	9
      001C54 0C                     676 	.db	12
      001C55 08                     677 	.uleb128	8
      001C56 02                     678 	.uleb128	2
      001C57 89                     679 	.db	137
      001C58 01                     680 	.uleb128	1
      001C59                        681 Ldebug_CIE0_end:
      001C59 00 00 00 28            682 	.dw	0,40
      001C5D 00 00 1C 47            683 	.dw	0,(Ldebug_CIE0_start-4)
      001C61 00 00 8F 51            684 	.dw	0,(Suart1$getchar$34)	;initial loc
      001C65 00 00 00 14            685 	.dw	0,Suart1$getchar$43-Suart1$getchar$34
      001C69 01                     686 	.db	1
      001C6A 00 00 8F 51            687 	.dw	0,(Suart1$getchar$34)
      001C6E 0E                     688 	.db	14
      001C6F 02                     689 	.uleb128	2
      001C70 01                     690 	.db	1
      001C71 00 00 8F 53            691 	.dw	0,(Suart1$getchar$36)
      001C75 0E                     692 	.db	14
      001C76 03                     693 	.uleb128	3
      001C77 01                     694 	.db	1
      001C78 00 00 8F 55            695 	.dw	0,(Suart1$getchar$37)
      001C7C 0E                     696 	.db	14
      001C7D 04                     697 	.uleb128	4
      001C7E 01                     698 	.db	1
      001C7F 00 00 8F 59            699 	.dw	0,(Suart1$getchar$38)
      001C83 0E                     700 	.db	14
      001C84 02                     701 	.uleb128	2
                                    702 
                                    703 	.area .debug_frame (NOLOAD)
      001C85 00 00                  704 	.dw	0
      001C87 00 0E                  705 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      001C89                        706 Ldebug_CIE1_start:
      001C89 FF FF                  707 	.dw	0xffff
      001C8B FF FF                  708 	.dw	0xffff
      001C8D 01                     709 	.db	1
      001C8E 00                     710 	.db	0
      001C8F 01                     711 	.uleb128	1
      001C90 7F                     712 	.sleb128	-1
      001C91 09                     713 	.db	9
      001C92 0C                     714 	.db	12
      001C93 08                     715 	.uleb128	8
      001C94 02                     716 	.uleb128	2
      001C95 89                     717 	.db	137
      001C96 01                     718 	.uleb128	1
      001C97                        719 Ldebug_CIE1_end:
      001C97 00 00 00 36            720 	.dw	0,54
      001C9B 00 00 1C 85            721 	.dw	0,(Ldebug_CIE1_start-4)
      001C9F 00 00 8F 39            722 	.dw	0,(Suart1$putchar$21)	;initial loc
      001CA3 00 00 00 18            723 	.dw	0,Suart1$putchar$32-Suart1$putchar$21
      001CA7 01                     724 	.db	1
      001CA8 00 00 8F 39            725 	.dw	0,(Suart1$putchar$21)
      001CAC 0E                     726 	.db	14
      001CAD 02                     727 	.uleb128	2
      001CAE 01                     728 	.db	1
      001CAF 00 00 8F 3C            729 	.dw	0,(Suart1$putchar$23)
      001CB3 0E                     730 	.db	14
      001CB4 03                     731 	.uleb128	3
      001CB5 01                     732 	.db	1
      001CB6 00 00 8F 40            733 	.dw	0,(Suart1$putchar$24)
      001CBA 0E                     734 	.db	14
      001CBB 02                     735 	.uleb128	2
      001CBC 01                     736 	.db	1
      001CBD 00 00 8F 42            737 	.dw	0,(Suart1$putchar$26)
      001CC1 0E                     738 	.db	14
      001CC2 03                     739 	.uleb128	3
      001CC3 01                     740 	.db	1
      001CC4 00 00 8F 44            741 	.dw	0,(Suart1$putchar$27)
      001CC8 0E                     742 	.db	14
      001CC9 04                     743 	.uleb128	4
      001CCA 01                     744 	.db	1
      001CCB 00 00 8F 48            745 	.dw	0,(Suart1$putchar$28)
      001CCF 0E                     746 	.db	14
      001CD0 02                     747 	.uleb128	2
                                    748 
                                    749 	.area .debug_frame (NOLOAD)
      001CD1 00 00                  750 	.dw	0
      001CD3 00 0E                  751 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      001CD5                        752 Ldebug_CIE2_start:
      001CD5 FF FF                  753 	.dw	0xffff
      001CD7 FF FF                  754 	.dw	0xffff
      001CD9 01                     755 	.db	1
      001CDA 00                     756 	.db	0
      001CDB 01                     757 	.uleb128	1
      001CDC 7F                     758 	.sleb128	-1
      001CDD 09                     759 	.db	9
      001CDE 0C                     760 	.db	12
      001CDF 08                     761 	.uleb128	8
      001CE0 02                     762 	.uleb128	2
      001CE1 89                     763 	.db	137
      001CE2 01                     764 	.uleb128	1
      001CE3                        765 Ldebug_CIE2_end:
      001CE3 00 00 00 67            766 	.dw	0,103
      001CE7 00 00 1C D1            767 	.dw	0,(Ldebug_CIE2_start-4)
      001CEB 00 00 8F 18            768 	.dw	0,(Suart1$init_uart1$1)	;initial loc
      001CEF 00 00 00 21            769 	.dw	0,Suart1$init_uart1$19-Suart1$init_uart1$1
      001CF3 01                     770 	.db	1
      001CF4 00 00 8F 18            771 	.dw	0,(Suart1$init_uart1$1)
      001CF8 0E                     772 	.db	14
      001CF9 02                     773 	.uleb128	2
      001CFA 01                     774 	.db	1
      001CFB 00 00 8F 1D            775 	.dw	0,(Suart1$init_uart1$4)
      001CFF 0E                     776 	.db	14
      001D00 03                     777 	.uleb128	3
      001D01 01                     778 	.db	1
      001D02 00 00 8F 1F            779 	.dw	0,(Suart1$init_uart1$5)
      001D06 0E                     780 	.db	14
      001D07 04                     781 	.uleb128	4
      001D08 01                     782 	.db	1
      001D09 00 00 8F 21            783 	.dw	0,(Suart1$init_uart1$6)
      001D0D 0E                     784 	.db	14
      001D0E 05                     785 	.uleb128	5
      001D0F 01                     786 	.db	1
      001D10 00 00 8F 23            787 	.dw	0,(Suart1$init_uart1$7)
      001D14 0E                     788 	.db	14
      001D15 06                     789 	.uleb128	6
      001D16 01                     790 	.db	1
      001D17 00 00 8F 25            791 	.dw	0,(Suart1$init_uart1$8)
      001D1B 0E                     792 	.db	14
      001D1C 07                     793 	.uleb128	7
      001D1D 01                     794 	.db	1
      001D1E 00 00 8F 27            795 	.dw	0,(Suart1$init_uart1$9)
      001D22 0E                     796 	.db	14
      001D23 08                     797 	.uleb128	8
      001D24 01                     798 	.db	1
      001D25 00 00 8F 29            799 	.dw	0,(Suart1$init_uart1$10)
      001D29 0E                     800 	.db	14
      001D2A 09                     801 	.uleb128	9
      001D2B 01                     802 	.db	1
      001D2C 00 00 8F 2B            803 	.dw	0,(Suart1$init_uart1$11)
      001D30 0E                     804 	.db	14
      001D31 0A                     805 	.uleb128	10
      001D32 01                     806 	.db	1
      001D33 00 00 8F 2D            807 	.dw	0,(Suart1$init_uart1$12)
      001D37 0E                     808 	.db	14
      001D38 0B                     809 	.uleb128	11
      001D39 01                     810 	.db	1
      001D3A 00 00 8F 32            811 	.dw	0,(Suart1$init_uart1$13)
      001D3E 0E                     812 	.db	14
      001D3F 02                     813 	.uleb128	2
      001D40 01                     814 	.db	1
      001D41 00 00 8F 34            815 	.dw	0,(Suart1$init_uart1$15)
      001D45 0E                     816 	.db	14
      001D46 03                     817 	.uleb128	3
      001D47 01                     818 	.db	1
      001D48 00 00 8F 38            819 	.dw	0,(Suart1$init_uart1$16)
      001D4C 0E                     820 	.db	14
      001D4D 02                     821 	.uleb128	2

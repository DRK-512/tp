lbl_8019D56C:
/* 8019D56C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8019D570  7C 63 07 34 */	extsh r3, r3
/* 8019D574  7C 80 07 34 */	extsh r0, r4
/* 8019D578  7C 03 00 50 */	subf r0, r3, r0
/* 8019D57C  C8 42 A2 30 */	lfd f2, lit_4444(r2)
/* 8019D580  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8019D584  90 01 00 0C */	stw r0, 0xc(r1)
/* 8019D588  3C 00 43 30 */	lis r0, 0x4330
/* 8019D58C  90 01 00 08 */	stw r0, 8(r1)
/* 8019D590  C8 01 00 08 */	lfd f0, 8(r1)
/* 8019D594  EC 00 10 28 */	fsubs f0, f0, f2
/* 8019D598  EC 01 00 32 */	fmuls f0, f1, f0
/* 8019D59C  FC 00 00 1E */	fctiwz f0, f0
/* 8019D5A0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8019D5A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019D5A8  7C 00 07 34 */	extsh r0, r0
/* 8019D5AC  7C 03 02 14 */	add r0, r3, r0
/* 8019D5B0  7C 03 07 34 */	extsh r3, r0
/* 8019D5B4  38 21 00 20 */	addi r1, r1, 0x20
/* 8019D5B8  4E 80 00 20 */	blr 

lbl_80013360:
/* 80013360  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80013364  7C 08 02 A6 */	mflr r0
/* 80013368  90 01 00 44 */	stw r0, 0x44(r1)
/* 8001336C  39 61 00 40 */	addi r11, r1, 0x40
/* 80013370  48 34 EE 5D */	bl _savegpr_25
/* 80013374  7C 7E 1B 78 */	mr r30, r3
/* 80013378  7C 9C 23 78 */	mr r28, r4
/* 8001337C  7C B9 2B 78 */	mr r25, r5
/* 80013380  7C DF 33 78 */	mr r31, r6
/* 80013384  7C FA 3B 78 */	mr r26, r7
/* 80013388  B3 83 00 30 */	sth r28, 0x30(r3)
/* 8001338C  B3 23 00 32 */	sth r25, 0x32(r3)
/* 80013390  54 9D 04 3E */	clrlwi r29, r4, 0x10
/* 80013394  54 83 2A F4 */	rlwinm r3, r4, 5, 0xb, 0x1a
/* 80013398  38 63 00 10 */	addi r3, r3, 0x10
/* 8001339C  48 2B B9 29 */	bl __nwa__FUl
/* 800133A0  3C 80 80 01 */	lis r4, __ct__15mDoExt_3Dline_cFv@ha /* 0x800126BC@ha */
/* 800133A4  38 84 26 BC */	addi r4, r4, __ct__15mDoExt_3Dline_cFv@l /* 0x800126BC@l */
/* 800133A8  38 A0 00 00 */	li r5, 0
/* 800133AC  38 C0 00 20 */	li r6, 0x20
/* 800133B0  7F A7 EB 78 */	mr r7, r29
/* 800133B4  48 34 EB 61 */	bl __construct_new_array
/* 800133B8  90 7E 00 38 */	stw r3, 0x38(r30)
/* 800133BC  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 800133C0  28 00 00 00 */	cmplwi r0, 0
/* 800133C4  40 82 00 0C */	bne lbl_800133D0
/* 800133C8  38 60 00 00 */	li r3, 0
/* 800133CC  48 00 01 14 */	b lbl_800134E0
lbl_800133D0:
/* 800133D0  3B 60 00 00 */	li r27, 0
/* 800133D4  3B A0 00 00 */	li r29, 0
/* 800133D8  57 9C 04 3E */	clrlwi r28, r28, 0x10
/* 800133DC  48 00 00 34 */	b lbl_80013410
lbl_800133E0:
/* 800133E0  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 800133E4  7C 60 EA 14 */	add r3, r0, r29
/* 800133E8  7F 24 CB 78 */	mr r4, r25
/* 800133EC  7F 45 D3 78 */	mr r5, r26
/* 800133F0  38 C0 00 01 */	li r6, 1
/* 800133F4  4B FF EF DD */	bl init__15mDoExt_3Dline_cFUsii
/* 800133F8  2C 03 00 00 */	cmpwi r3, 0
/* 800133FC  40 82 00 0C */	bne lbl_80013408
/* 80013400  38 60 00 00 */	li r3, 0
/* 80013404  48 00 00 DC */	b lbl_800134E0
lbl_80013408:
/* 80013408  3B 7B 00 01 */	addi r27, r27, 1
/* 8001340C  3B BD 00 20 */	addi r29, r29, 0x20
lbl_80013410:
/* 80013410  7C 1B E0 00 */	cmpw r27, r28
/* 80013414  41 80 FF CC */	blt lbl_800133E0
/* 80013418  38 00 00 00 */	li r0, 0
/* 8001341C  90 1E 00 04 */	stw r0, 4(r30)
/* 80013420  98 1E 00 36 */	stb r0, 0x36(r30)
/* 80013424  38 7E 00 08 */	addi r3, r30, 8
/* 80013428  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8001342C  7C 9F 02 14 */	add r4, r31, r0
/* 80013430  A0 BF 00 02 */	lhz r5, 2(r31)
/* 80013434  A0 DF 00 04 */	lhz r6, 4(r31)
/* 80013438  88 FF 00 00 */	lbz r7, 0(r31)
/* 8001343C  89 1F 00 06 */	lbz r8, 6(r31)
/* 80013440  89 3F 00 07 */	lbz r9, 7(r31)
/* 80013444  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 80013448  20 00 00 01 */	subfic r0, r0, 1
/* 8001344C  54 0A 0F FE */	srwi r10, r0, 0x1f
/* 80013450  48 34 A9 F1 */	bl GXInitTexObj
/* 80013454  38 7E 00 08 */	addi r3, r30, 8
/* 80013458  88 9F 00 14 */	lbz r4, 0x14(r31)
/* 8001345C  88 BF 00 15 */	lbz r5, 0x15(r31)
/* 80013460  C0 42 81 40 */	lfs f2, lit_7624(r2)
/* 80013464  88 1F 00 16 */	lbz r0, 0x16(r31)
/* 80013468  7C 00 07 74 */	extsb r0, r0
/* 8001346C  C8 82 81 20 */	lfd f4, lit_3878(r2)
/* 80013470  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80013474  90 01 00 0C */	stw r0, 0xc(r1)
/* 80013478  3C C0 43 30 */	lis r6, 0x4330
/* 8001347C  90 C1 00 08 */	stw r6, 8(r1)
/* 80013480  C8 01 00 08 */	lfd f0, 8(r1)
/* 80013484  EC 00 20 28 */	fsubs f0, f0, f4
/* 80013488  EC 22 00 32 */	fmuls f1, f2, f0
/* 8001348C  88 1F 00 17 */	lbz r0, 0x17(r31)
/* 80013490  7C 00 07 74 */	extsb r0, r0
/* 80013494  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80013498  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001349C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 800134A0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800134A4  EC 00 20 28 */	fsubs f0, f0, f4
/* 800134A8  EC 42 00 32 */	fmuls f2, f2, f0
/* 800134AC  C0 62 81 44 */	lfs f3, lit_7625(r2)
/* 800134B0  A8 1F 00 1A */	lha r0, 0x1a(r31)
/* 800134B4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800134B8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800134BC  90 C1 00 18 */	stw r6, 0x18(r1)
/* 800134C0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800134C4  EC 00 20 28 */	fsubs f0, f0, f4
/* 800134C8  EC 63 00 32 */	fmuls f3, f3, f0
/* 800134CC  88 DF 00 12 */	lbz r6, 0x12(r31)
/* 800134D0  88 FF 00 11 */	lbz r7, 0x11(r31)
/* 800134D4  89 1F 00 13 */	lbz r8, 0x13(r31)
/* 800134D8  48 34 AB FD */	bl GXInitTexObjLOD
/* 800134DC  38 60 00 01 */	li r3, 1
lbl_800134E0:
/* 800134E0  39 61 00 40 */	addi r11, r1, 0x40
/* 800134E4  48 34 ED 35 */	bl _restgpr_25
/* 800134E8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800134EC  7C 08 03 A6 */	mtlr r0
/* 800134F0  38 21 00 40 */	addi r1, r1, 0x40
/* 800134F4  4E 80 00 20 */	blr 

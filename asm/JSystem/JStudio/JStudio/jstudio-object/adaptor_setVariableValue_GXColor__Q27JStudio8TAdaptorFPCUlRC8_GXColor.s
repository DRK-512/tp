lbl_802862AC:
/* 802862AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802862B0  88 05 00 00 */	lbz r0, 0(r5)
/* 802862B4  C8 22 BA A0 */	lfd f1, lit_803(r2)
/* 802862B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802862BC  3D 20 43 30 */	lis r9, 0x4330
/* 802862C0  91 21 00 08 */	stw r9, 8(r1)
/* 802862C4  C8 01 00 08 */	lfd f0, 8(r1)
/* 802862C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 802862CC  80 C3 00 08 */	lwz r6, 8(r3)
/* 802862D0  80 04 00 00 */	lwz r0, 0(r4)
/* 802862D4  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802862D8  7D 46 02 14 */	add r10, r6, r0
/* 802862DC  3C C0 80 28 */	lis r6, update_immediate___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@ha /* 0x80285EB8@ha */
/* 802862E0  39 06 5E B8 */	addi r8, r6, update_immediate___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@l /* 0x80285EB8@l */
/* 802862E4  91 0A 00 08 */	stw r8, 8(r10)
/* 802862E8  38 E0 00 00 */	li r7, 0
/* 802862EC  90 EA 00 04 */	stw r7, 4(r10)
/* 802862F0  D0 0A 00 0C */	stfs f0, 0xc(r10)
/* 802862F4  88 05 00 01 */	lbz r0, 1(r5)
/* 802862F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802862FC  91 21 00 10 */	stw r9, 0x10(r1)
/* 80286300  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80286304  EC 00 08 28 */	fsubs f0, f0, f1
/* 80286308  80 C3 00 08 */	lwz r6, 8(r3)
/* 8028630C  80 04 00 04 */	lwz r0, 4(r4)
/* 80286310  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80286314  7C C6 02 14 */	add r6, r6, r0
/* 80286318  91 06 00 08 */	stw r8, 8(r6)
/* 8028631C  90 E6 00 04 */	stw r7, 4(r6)
/* 80286320  D0 06 00 0C */	stfs f0, 0xc(r6)
/* 80286324  88 05 00 02 */	lbz r0, 2(r5)
/* 80286328  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8028632C  91 21 00 18 */	stw r9, 0x18(r1)
/* 80286330  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80286334  EC 00 08 28 */	fsubs f0, f0, f1
/* 80286338  80 C3 00 08 */	lwz r6, 8(r3)
/* 8028633C  80 04 00 08 */	lwz r0, 8(r4)
/* 80286340  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80286344  7C C6 02 14 */	add r6, r6, r0
/* 80286348  91 06 00 08 */	stw r8, 8(r6)
/* 8028634C  90 E6 00 04 */	stw r7, 4(r6)
/* 80286350  D0 06 00 0C */	stfs f0, 0xc(r6)
/* 80286354  88 05 00 03 */	lbz r0, 3(r5)
/* 80286358  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028635C  91 21 00 20 */	stw r9, 0x20(r1)
/* 80286360  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80286364  EC 00 08 28 */	fsubs f0, f0, f1
/* 80286368  80 63 00 08 */	lwz r3, 8(r3)
/* 8028636C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80286370  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80286374  7C 63 02 14 */	add r3, r3, r0
/* 80286378  91 03 00 08 */	stw r8, 8(r3)
/* 8028637C  90 E3 00 04 */	stw r7, 4(r3)
/* 80286380  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80286384  38 21 00 30 */	addi r1, r1, 0x30
/* 80286388  4E 80 00 20 */	blr 

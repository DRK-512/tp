lbl_80228490:
/* 80228490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80228494  7C 08 02 A6 */	mflr r0
/* 80228498  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022849C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802284A0  7C 9F 23 78 */	mr r31, r4
/* 802284A4  7C A4 07 34 */	extsh r4, r5
/* 802284A8  38 60 00 14 */	li r3, 0x14
/* 802284AC  7C 04 1B D6 */	divw r0, r4, r3
/* 802284B0  7C 00 19 D6 */	mullw r0, r0, r3
/* 802284B4  7C 80 20 50 */	subf r4, r0, r4
/* 802284B8  2C 04 00 0A */	cmpwi r4, 0xa
/* 802284BC  40 80 00 34 */	bge lbl_802284F0
/* 802284C0  38 60 00 0A */	li r3, 0xa
/* 802284C4  38 A0 00 00 */	li r5, 0
/* 802284C8  4B DF 7C 99 */	bl fopMsgM_valueIncrease__FiiUc
/* 802284CC  FC 40 08 90 */	fmr f2, f1
/* 802284D0  7F E3 FB 78 */	mr r3, r31
/* 802284D4  C0 02 B0 14 */	lfs f0, lit_3749(r2)
/* 802284D8  EC 20 10 28 */	fsubs f1, f0, f2
/* 802284DC  81 9F 00 00 */	lwz r12, 0(r31)
/* 802284E0  81 8C 01 04 */	lwz r12, 0x104(r12)
/* 802284E4  7D 89 03 A6 */	mtctr r12
/* 802284E8  4E 80 04 21 */	bctrl 
/* 802284EC  48 00 00 30 */	b lbl_8022851C
lbl_802284F0:
/* 802284F0  38 60 00 0A */	li r3, 0xa
/* 802284F4  38 84 FF F6 */	addi r4, r4, -10
/* 802284F8  38 A0 00 00 */	li r5, 0
/* 802284FC  4B DF 7C 65 */	bl fopMsgM_valueIncrease__FiiUc
/* 80228500  7F E3 FB 78 */	mr r3, r31
/* 80228504  C0 02 B0 14 */	lfs f0, lit_3749(r2)
/* 80228508  EC 40 08 28 */	fsubs f2, f0, f1
/* 8022850C  81 9F 00 00 */	lwz r12, 0(r31)
/* 80228510  81 8C 01 04 */	lwz r12, 0x104(r12)
/* 80228514  7D 89 03 A6 */	mtctr r12
/* 80228518  4E 80 04 21 */	bctrl 
lbl_8022851C:
/* 8022851C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80228520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80228524  7C 08 03 A6 */	mtlr r0
/* 80228528  38 21 00 10 */	addi r1, r1, 0x10
/* 8022852C  4E 80 00 20 */	blr 

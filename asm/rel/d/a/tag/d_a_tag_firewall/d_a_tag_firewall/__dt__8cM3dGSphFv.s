lbl_80D59420:
/* 80D59420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D59424  7C 08 02 A6 */	mflr r0
/* 80D59428  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5942C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D59430  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D59434  41 82 00 1C */	beq lbl_80D59450
/* 80D59438  3C A0 80 D6 */	lis r5, __vt__8cM3dGSph@ha /* 0x80D595B0@ha */
/* 80D5943C  38 05 95 B0 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80D595B0@l */
/* 80D59440  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80D59444  7C 80 07 35 */	extsh. r0, r4
/* 80D59448  40 81 00 08 */	ble lbl_80D59450
/* 80D5944C  4B 57 58 F1 */	bl __dl__FPv
lbl_80D59450:
/* 80D59450  7F E3 FB 78 */	mr r3, r31
/* 80D59454  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D59458  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5945C  7C 08 03 A6 */	mtlr r0
/* 80D59460  38 21 00 10 */	addi r1, r1, 0x10
/* 80D59464  4E 80 00 20 */	blr 

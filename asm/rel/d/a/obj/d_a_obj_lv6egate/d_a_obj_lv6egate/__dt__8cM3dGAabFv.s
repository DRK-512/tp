lbl_80C82928:
/* 80C82928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8292C  7C 08 02 A6 */	mflr r0
/* 80C82930  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C82934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C82938  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C8293C  41 82 00 1C */	beq lbl_80C82958
/* 80C82940  3C A0 80 C8 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C82C60@ha */
/* 80C82944  38 05 2C 60 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C82C60@l */
/* 80C82948  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C8294C  7C 80 07 35 */	extsh. r0, r4
/* 80C82950  40 81 00 08 */	ble lbl_80C82958
/* 80C82954  4B 64 C3 E9 */	bl __dl__FPv
lbl_80C82958:
/* 80C82958  7F E3 FB 78 */	mr r3, r31
/* 80C8295C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C82960  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C82964  7C 08 03 A6 */	mtlr r0
/* 80C82968  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8296C  4E 80 00 20 */	blr 

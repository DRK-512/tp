lbl_800775F0:
/* 800775F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800775F4  7C 08 02 A6 */	mflr r0
/* 800775F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800775FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077600  93 C1 00 08 */	stw r30, 8(r1)
/* 80077604  7C 7E 1B 79 */	or. r30, r3, r3
/* 80077608  7C 9F 23 78 */	mr r31, r4
/* 8007760C  41 82 00 50 */	beq lbl_8007765C
/* 80077610  3C 60 80 3B */	lis r3, __vt__11dBgS_GndChk@ha /* 0x803AB778@ha */
/* 80077614  38 63 B7 78 */	addi r3, r3, __vt__11dBgS_GndChk@l /* 0x803AB778@l */
/* 80077618  90 7E 00 10 */	stw r3, 0x10(r30)
/* 8007761C  38 03 00 0C */	addi r0, r3, 0xc
/* 80077620  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80077624  38 03 00 18 */	addi r0, r3, 0x18
/* 80077628  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8007762C  38 03 00 24 */	addi r0, r3, 0x24
/* 80077630  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80077634  38 7E 00 3C */	addi r3, r30, 0x3c
/* 80077638  38 80 00 00 */	li r4, 0
/* 8007763C  4B FF FE AD */	bl __dt__8dBgS_ChkFv
/* 80077640  7F C3 F3 78 */	mr r3, r30
/* 80077644  38 80 00 00 */	li r4, 0
/* 80077648  48 1F 06 4D */	bl __dt__11cBgS_GndChkFv
/* 8007764C  7F E0 07 35 */	extsh. r0, r31
/* 80077650  40 81 00 0C */	ble lbl_8007765C
/* 80077654  7F C3 F3 78 */	mr r3, r30
/* 80077658  48 25 76 E5 */	bl __dl__FPv
lbl_8007765C:
/* 8007765C  7F C3 F3 78 */	mr r3, r30
/* 80077660  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077664  83 C1 00 08 */	lwz r30, 8(r1)
/* 80077668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007766C  7C 08 03 A6 */	mtlr r0
/* 80077670  38 21 00 10 */	addi r1, r1, 0x10
/* 80077674  4E 80 00 20 */	blr 

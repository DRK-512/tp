lbl_80BE5CC4:
/* 80BE5CC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE5CC8  7C 08 02 A6 */	mflr r0
/* 80BE5CCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE5CD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE5CD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE5CD8  41 82 00 1C */	beq lbl_80BE5CF4
/* 80BE5CDC  3C A0 80 BE */	lis r5, __vt__8cM3dGAab@ha /* 0x80BE5F34@ha */
/* 80BE5CE0  38 05 5F 34 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80BE5F34@l */
/* 80BE5CE4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BE5CE8  7C 80 07 35 */	extsh. r0, r4
/* 80BE5CEC  40 81 00 08 */	ble lbl_80BE5CF4
/* 80BE5CF0  4B 6E 90 4D */	bl __dl__FPv
lbl_80BE5CF4:
/* 80BE5CF4  7F E3 FB 78 */	mr r3, r31
/* 80BE5CF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE5CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE5D00  7C 08 03 A6 */	mtlr r0
/* 80BE5D04  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE5D08  4E 80 00 20 */	blr 

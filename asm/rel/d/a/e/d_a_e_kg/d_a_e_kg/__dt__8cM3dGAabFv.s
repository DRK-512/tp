lbl_806F9D1C:
/* 806F9D1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F9D20  7C 08 02 A6 */	mflr r0
/* 806F9D24  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F9D28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F9D2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 806F9D30  41 82 00 1C */	beq lbl_806F9D4C
/* 806F9D34  3C A0 80 70 */	lis r5, __vt__8cM3dGAab@ha /* 0x806FA598@ha */
/* 806F9D38  38 05 A5 98 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x806FA598@l */
/* 806F9D3C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 806F9D40  7C 80 07 35 */	extsh. r0, r4
/* 806F9D44  40 81 00 08 */	ble lbl_806F9D4C
/* 806F9D48  4B BD 4F F5 */	bl __dl__FPv
lbl_806F9D4C:
/* 806F9D4C  7F E3 FB 78 */	mr r3, r31
/* 806F9D50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F9D54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F9D58  7C 08 03 A6 */	mtlr r0
/* 806F9D5C  38 21 00 10 */	addi r1, r1, 0x10
/* 806F9D60  4E 80 00 20 */	blr 

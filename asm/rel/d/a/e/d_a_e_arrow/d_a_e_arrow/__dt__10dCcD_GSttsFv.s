lbl_8067E7B4:
/* 8067E7B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067E7B8  7C 08 02 A6 */	mflr r0
/* 8067E7BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067E7C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067E7C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8067E7C8  41 82 00 30 */	beq lbl_8067E7F8
/* 8067E7CC  3C 60 80 68 */	lis r3, __vt__10dCcD_GStts@ha /* 0x8067EABC@ha */
/* 8067E7D0  38 03 EA BC */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x8067EABC@l */
/* 8067E7D4  90 1F 00 00 */	stw r0, 0(r31)
/* 8067E7D8  41 82 00 10 */	beq lbl_8067E7E8
/* 8067E7DC  3C 60 80 68 */	lis r3, __vt__10cCcD_GStts@ha /* 0x8067EAB0@ha */
/* 8067E7E0  38 03 EA B0 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x8067EAB0@l */
/* 8067E7E4  90 1F 00 00 */	stw r0, 0(r31)
lbl_8067E7E8:
/* 8067E7E8  7C 80 07 35 */	extsh. r0, r4
/* 8067E7EC  40 81 00 0C */	ble lbl_8067E7F8
/* 8067E7F0  7F E3 FB 78 */	mr r3, r31
/* 8067E7F4  4B C5 05 49 */	bl __dl__FPv
lbl_8067E7F8:
/* 8067E7F8  7F E3 FB 78 */	mr r3, r31
/* 8067E7FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067E800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067E804  7C 08 03 A6 */	mtlr r0
/* 8067E808  38 21 00 10 */	addi r1, r1, 0x10
/* 8067E80C  4E 80 00 20 */	blr 

lbl_80CE66AC:
/* 80CE66AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE66B0  7C 08 02 A6 */	mflr r0
/* 80CE66B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE66B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE66BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE66C0  41 82 00 1C */	beq lbl_80CE66DC
/* 80CE66C4  3C A0 80 CE */	lis r5, __vt__10cCcD_GStts@ha /* 0x80CE6B34@ha */
/* 80CE66C8  38 05 6B 34 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80CE6B34@l */
/* 80CE66CC  90 1F 00 00 */	stw r0, 0(r31)
/* 80CE66D0  7C 80 07 35 */	extsh. r0, r4
/* 80CE66D4  40 81 00 08 */	ble lbl_80CE66DC
/* 80CE66D8  4B 5E 86 65 */	bl __dl__FPv
lbl_80CE66DC:
/* 80CE66DC  7F E3 FB 78 */	mr r3, r31
/* 80CE66E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE66E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE66E8  7C 08 03 A6 */	mtlr r0
/* 80CE66EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE66F0  4E 80 00 20 */	blr 

lbl_805639D0:
/* 805639D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805639D4  7C 08 02 A6 */	mflr r0
/* 805639D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805639DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805639E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 805639E4  41 82 00 10 */	beq lbl_805639F4
/* 805639E8  7C 80 07 35 */	extsh. r0, r4
/* 805639EC  40 81 00 08 */	ble lbl_805639F4
/* 805639F0  4B D6 B3 4D */	bl __dl__FPv
lbl_805639F4:
/* 805639F4  7F E3 FB 78 */	mr r3, r31
/* 805639F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805639FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563A00  7C 08 03 A6 */	mtlr r0
/* 80563A04  38 21 00 10 */	addi r1, r1, 0x10
/* 80563A08  4E 80 00 20 */	blr 

lbl_805818DC:
/* 805818DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805818E0  7C 08 02 A6 */	mflr r0
/* 805818E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805818E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805818EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 805818F0  41 82 00 10 */	beq lbl_80581900
/* 805818F4  7C 80 07 35 */	extsh. r0, r4
/* 805818F8  40 81 00 08 */	ble lbl_80581900
/* 805818FC  4B D4 D4 41 */	bl __dl__FPv
lbl_80581900:
/* 80581900  7F E3 FB 78 */	mr r3, r31
/* 80581904  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80581908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058190C  7C 08 03 A6 */	mtlr r0
/* 80581910  38 21 00 10 */	addi r1, r1, 0x10
/* 80581914  4E 80 00 20 */	blr 

lbl_80C443E0:
/* 80C443E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C443E4  7C 08 02 A6 */	mflr r0
/* 80C443E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C443EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C443F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C443F4  41 82 00 10 */	beq lbl_80C44404
/* 80C443F8  7C 80 07 35 */	extsh. r0, r4
/* 80C443FC  40 81 00 08 */	ble lbl_80C44404
/* 80C44400  4B 68 A9 3D */	bl __dl__FPv
lbl_80C44404:
/* 80C44404  7F E3 FB 78 */	mr r3, r31
/* 80C44408  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4440C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C44410  7C 08 03 A6 */	mtlr r0
/* 80C44414  38 21 00 10 */	addi r1, r1, 0x10
/* 80C44418  4E 80 00 20 */	blr 

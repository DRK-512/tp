lbl_80B930BC:
/* 80B930BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B930C0  7C 08 02 A6 */	mflr r0
/* 80B930C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B930C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B930CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B930D0  41 82 00 1C */	beq lbl_80B930EC
/* 80B930D4  3C A0 80 B9 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80B93BA8@ha */
/* 80B930D8  38 05 3B A8 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80B93BA8@l */
/* 80B930DC  90 1F 00 00 */	stw r0, 0(r31)
/* 80B930E0  7C 80 07 35 */	extsh. r0, r4
/* 80B930E4  40 81 00 08 */	ble lbl_80B930EC
/* 80B930E8  4B 73 BC 55 */	bl __dl__FPv
lbl_80B930EC:
/* 80B930EC  7F E3 FB 78 */	mr r3, r31
/* 80B930F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B930F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B930F8  7C 08 03 A6 */	mtlr r0
/* 80B930FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B93100  4E 80 00 20 */	blr 

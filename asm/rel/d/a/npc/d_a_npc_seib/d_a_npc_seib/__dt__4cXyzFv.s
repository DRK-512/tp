lbl_80AC6664:
/* 80AC6664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC6668  7C 08 02 A6 */	mflr r0
/* 80AC666C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC6670  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC6674  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC6678  41 82 00 10 */	beq lbl_80AC6688
/* 80AC667C  7C 80 07 35 */	extsh. r0, r4
/* 80AC6680  40 81 00 08 */	ble lbl_80AC6688
/* 80AC6684  4B 80 86 B9 */	bl __dl__FPv
lbl_80AC6688:
/* 80AC6688  7F E3 FB 78 */	mr r3, r31
/* 80AC668C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC6690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC6694  7C 08 03 A6 */	mtlr r0
/* 80AC6698  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC669C  4E 80 00 20 */	blr 

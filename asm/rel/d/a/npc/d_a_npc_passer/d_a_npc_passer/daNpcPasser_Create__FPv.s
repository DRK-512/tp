lbl_80AA58D8:
/* 80AA58D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA58DC  7C 08 02 A6 */	mflr r0
/* 80AA58E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA58E4  4B FF D4 5D */	bl create__13daNpcPasser_cFv
/* 80AA58E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA58EC  7C 08 03 A6 */	mtlr r0
/* 80AA58F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA58F4  4E 80 00 20 */	blr 

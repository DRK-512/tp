lbl_80BDD624:
/* 80BDD624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDD628  7C 08 02 A6 */	mflr r0
/* 80BDD62C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDD630  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80BDD634  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BDD638  7D 89 03 A6 */	mtctr r12
/* 80BDD63C  4E 80 04 21 */	bctrl 
/* 80BDD640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDD644  7C 08 03 A6 */	mtlr r0
/* 80BDD648  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDD64C  4E 80 00 20 */	blr 

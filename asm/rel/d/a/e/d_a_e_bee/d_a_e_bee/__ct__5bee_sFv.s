lbl_80685368:
/* 80685368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068536C  7C 08 02 A6 */	mflr r0
/* 80685370  90 01 00 14 */	stw r0, 0x14(r1)
/* 80685374  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80685378  7C 7F 1B 78 */	mr r31, r3
/* 8068537C  38 7F 00 54 */	addi r3, r31, 0x54
/* 80685380  4B C3 94 C5 */	bl __ct__16Z2SoundObjSimpleFv
/* 80685384  7F E3 FB 78 */	mr r3, r31
/* 80685388  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8068538C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80685390  7C 08 03 A6 */	mtlr r0
/* 80685394  38 21 00 10 */	addi r1, r1, 0x10
/* 80685398  4E 80 00 20 */	blr 

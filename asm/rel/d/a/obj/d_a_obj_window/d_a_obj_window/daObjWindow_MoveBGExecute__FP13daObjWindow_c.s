lbl_80D391D8:
/* 80D391D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D391DC  7C 08 02 A6 */	mflr r0
/* 80D391E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D391E4  4B 33 F7 6D */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D391E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D391EC  7C 08 03 A6 */	mtlr r0
/* 80D391F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D391F4  4E 80 00 20 */	blr 

lbl_8046EDD4:
/* 8046EDD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046EDD8  7C 08 02 A6 */	mflr r0
/* 8046EDDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046EDE0  4B C0 9A FD */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 8046EDE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046EDE8  7C 08 03 A6 */	mtlr r0
/* 8046EDEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8046EDF0  4E 80 00 20 */	blr 

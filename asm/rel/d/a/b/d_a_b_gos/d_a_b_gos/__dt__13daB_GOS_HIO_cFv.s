lbl_80605320:
/* 80605320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80605324  7C 08 02 A6 */	mflr r0
/* 80605328  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060532C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80605330  7C 7F 1B 79 */	or. r31, r3, r3
/* 80605334  41 82 00 1C */	beq lbl_80605350
/* 80605338  3C A0 80 60 */	lis r5, __vt__13daB_GOS_HIO_c@ha /* 0x806055F0@ha */
/* 8060533C  38 05 55 F0 */	addi r0, r5, __vt__13daB_GOS_HIO_c@l /* 0x806055F0@l */
/* 80605340  90 1F 00 00 */	stw r0, 0(r31)
/* 80605344  7C 80 07 35 */	extsh. r0, r4
/* 80605348  40 81 00 08 */	ble lbl_80605350
/* 8060534C  4B CC 99 F1 */	bl __dl__FPv
lbl_80605350:
/* 80605350  7F E3 FB 78 */	mr r3, r31
/* 80605354  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80605358  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060535C  7C 08 03 A6 */	mtlr r0
/* 80605360  38 21 00 10 */	addi r1, r1, 0x10
/* 80605364  4E 80 00 20 */	blr 

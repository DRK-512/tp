lbl_80570228:
/* 80570228  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057022C  7C 08 02 A6 */	mflr r0
/* 80570230  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80570238  7C 7F 1B 79 */	or. r31, r3, r3
/* 8057023C  41 82 00 1C */	beq lbl_80570258
/* 80570240  3C A0 80 57 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80573434@ha */
/* 80570244  38 05 34 34 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80573434@l */
/* 80570248  90 1F 00 00 */	stw r0, 0(r31)
/* 8057024C  7C 80 07 35 */	extsh. r0, r4
/* 80570250  40 81 00 08 */	ble lbl_80570258
/* 80570254  4B D5 EA E9 */	bl __dl__FPv
lbl_80570258:
/* 80570258  7F E3 FB 78 */	mr r3, r31
/* 8057025C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80570260  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80570264  7C 08 03 A6 */	mtlr r0
/* 80570268  38 21 00 10 */	addi r1, r1, 0x10
/* 8057026C  4E 80 00 20 */	blr 

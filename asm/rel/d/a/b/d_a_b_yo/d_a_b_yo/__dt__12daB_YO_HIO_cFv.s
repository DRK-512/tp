lbl_806395E4:
/* 806395E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806395E8  7C 08 02 A6 */	mflr r0
/* 806395EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806395F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806395F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 806395F8  41 82 00 1C */	beq lbl_80639614
/* 806395FC  3C A0 80 64 */	lis r5, __vt__12daB_YO_HIO_c@ha /* 0x80639F20@ha */
/* 80639600  38 05 9F 20 */	addi r0, r5, __vt__12daB_YO_HIO_c@l /* 0x80639F20@l */
/* 80639604  90 1F 00 00 */	stw r0, 0(r31)
/* 80639608  7C 80 07 35 */	extsh. r0, r4
/* 8063960C  40 81 00 08 */	ble lbl_80639614
/* 80639610  4B C9 57 2D */	bl __dl__FPv
lbl_80639614:
/* 80639614  7F E3 FB 78 */	mr r3, r31
/* 80639618  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063961C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80639620  7C 08 03 A6 */	mtlr r0
/* 80639624  38 21 00 10 */	addi r1, r1, 0x10
/* 80639628  4E 80 00 20 */	blr 

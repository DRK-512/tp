lbl_8050457C:
/* 8050457C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80504580  7C 08 02 A6 */	mflr r0
/* 80504584  90 01 00 14 */	stw r0, 0x14(r1)
/* 80504588  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050458C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80504590  41 82 00 1C */	beq lbl_805045AC
/* 80504594  3C A0 80 50 */	lis r5, __vt__8cM3dGAab@ha /* 0x8050490C@ha */
/* 80504598  38 05 49 0C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x8050490C@l */
/* 8050459C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 805045A0  7C 80 07 35 */	extsh. r0, r4
/* 805045A4  40 81 00 08 */	ble lbl_805045AC
/* 805045A8  4B DC A7 95 */	bl __dl__FPv
lbl_805045AC:
/* 805045AC  7F E3 FB 78 */	mr r3, r31
/* 805045B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805045B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805045B8  7C 08 03 A6 */	mtlr r0
/* 805045BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805045C0  4E 80 00 20 */	blr 

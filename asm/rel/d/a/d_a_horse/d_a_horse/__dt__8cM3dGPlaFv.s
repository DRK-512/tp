lbl_80838750:
/* 80838750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80838754  7C 08 02 A6 */	mflr r0
/* 80838758  90 01 00 14 */	stw r0, 0x14(r1)
/* 8083875C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80838760  7C 7F 1B 79 */	or. r31, r3, r3
/* 80838764  41 82 00 1C */	beq lbl_80838780
/* 80838768  3C A0 80 84 */	lis r5, __vt__8cM3dGPla@ha /* 0x80845BA0@ha */
/* 8083876C  38 05 5B A0 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x80845BA0@l */
/* 80838770  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80838774  7C 80 07 35 */	extsh. r0, r4
/* 80838778  40 81 00 08 */	ble lbl_80838780
/* 8083877C  4B A9 65 C1 */	bl __dl__FPv
lbl_80838780:
/* 80838780  7F E3 FB 78 */	mr r3, r31
/* 80838784  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80838788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8083878C  7C 08 03 A6 */	mtlr r0
/* 80838790  38 21 00 10 */	addi r1, r1, 0x10
/* 80838794  4E 80 00 20 */	blr 

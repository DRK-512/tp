lbl_80285708:
/* 80285708  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8028570C  7C 08 02 A6 */	mflr r0
/* 80285710  90 01 00 34 */	stw r0, 0x34(r1)
/* 80285714  39 61 00 30 */	addi r11, r1, 0x30
/* 80285718  48 0D CA C5 */	bl _savegpr_29
/* 8028571C  7C 7D 1B 78 */	mr r29, r3
/* 80285720  7C BE 2B 78 */	mr r30, r5
/* 80285724  80 64 00 00 */	lwz r3, 0(r4)
/* 80285728  3B E3 00 10 */	addi r31, r3, 0x10
/* 8028572C  7F E3 FB 78 */	mr r3, r31
/* 80285730  38 82 BA 60 */	la r4, ga8cSignature__Q27JStudio4data(r2) /* 80455460-_SDA2_BASE_ */
/* 80285734  38 A0 00 08 */	li r5, 8
/* 80285738  48 0E 09 55 */	bl memcmp
/* 8028573C  2C 03 00 00 */	cmpwi r3, 0
/* 80285740  41 82 00 0C */	beq lbl_8028574C
/* 80285744  38 60 00 00 */	li r3, 0
/* 80285748  48 00 00 84 */	b lbl_802857CC
lbl_8028574C:
/* 8028574C  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 80285750  28 00 00 02 */	cmplwi r0, 2
/* 80285754  40 80 00 0C */	bge lbl_80285760
/* 80285758  38 60 00 00 */	li r3, 0
/* 8028575C  48 00 00 70 */	b lbl_802857CC
lbl_80285760:
/* 80285760  28 00 00 06 */	cmplwi r0, 6
/* 80285764  40 81 00 0C */	ble lbl_80285770
/* 80285768  38 60 00 00 */	li r3, 0
/* 8028576C  48 00 00 60 */	b lbl_802857CC
lbl_80285770:
/* 80285770  83 FD 00 04 */	lwz r31, 4(r29)
/* 80285774  57 C0 05 EF */	rlwinm. r0, r30, 0, 0x17, 0x17
/* 80285778  40 82 00 50 */	bne lbl_802857C8
/* 8028577C  3C 60 80 3A */	lis r3, lit_1138@ha /* 0x8039AA58@ha */
/* 80285780  38 83 AA 58 */	addi r4, r3, lit_1138@l /* 0x8039AA58@l */
/* 80285784  80 64 00 00 */	lwz r3, 0(r4)
/* 80285788  80 04 00 04 */	lwz r0, 4(r4)
/* 8028578C  90 61 00 08 */	stw r3, 8(r1)
/* 80285790  90 01 00 0C */	stw r0, 0xc(r1)
/* 80285794  80 04 00 08 */	lwz r0, 8(r4)
/* 80285798  90 01 00 10 */	stw r0, 0x10(r1)
/* 8028579C  7F E3 FB 78 */	mr r3, r31
/* 802857A0  38 81 00 08 */	addi r4, r1, 8
/* 802857A4  C0 22 BA 58 */	lfs f1, lit_748(r2)
/* 802857A8  4B FF FA A9 */	bl transformOnSet_setOrigin_TxyzRy__Q27JStudio8TControlFRC3Vecf
/* 802857AC  7F E3 FB 78 */	mr r3, r31
/* 802857B0  38 81 00 08 */	addi r4, r1, 8
/* 802857B4  C0 22 BA 58 */	lfs f1, lit_748(r2)
/* 802857B8  4B FF FB 19 */	bl transformOnGet_setOrigin_TxyzRy__Q27JStudio8TControlFRC3Vecf
/* 802857BC  38 00 00 00 */	li r0, 0
/* 802857C0  98 1F 00 88 */	stb r0, 0x88(r31)
/* 802857C4  98 1F 00 89 */	stb r0, 0x89(r31)
lbl_802857C8:
/* 802857C8  38 60 00 01 */	li r3, 1
lbl_802857CC:
/* 802857CC  39 61 00 30 */	addi r11, r1, 0x30
/* 802857D0  48 0D CA 59 */	bl _restgpr_29
/* 802857D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802857D8  7C 08 03 A6 */	mtlr r0
/* 802857DC  38 21 00 30 */	addi r1, r1, 0x30
/* 802857E0  4E 80 00 20 */	blr 

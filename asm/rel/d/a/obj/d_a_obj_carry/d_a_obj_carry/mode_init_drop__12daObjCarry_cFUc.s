lbl_80474448:
/* 80474448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047444C  7C 08 02 A6 */	mflr r0
/* 80474450  90 01 00 14 */	stw r0, 0x14(r1)
/* 80474454  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80474458  7C 7F 1B 78 */	mr r31, r3
/* 8047445C  38 7F 05 74 */	addi r3, r31, 0x574
/* 80474460  4B C0 2F 45 */	bl ClrMoveBGOnly__9dBgS_AcchFv
/* 80474464  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 80474468  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8047446C  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80474470  80 1F 07 C8 */	lwz r0, 0x7c8(r31)
/* 80474474  60 00 00 01 */	ori r0, r0, 1
/* 80474478  90 1F 07 C8 */	stw r0, 0x7c8(r31)
/* 8047447C  80 1F 07 E0 */	lwz r0, 0x7e0(r31)
/* 80474480  60 00 00 01 */	ori r0, r0, 1
/* 80474484  90 1F 07 E0 */	stw r0, 0x7e0(r31)
/* 80474488  80 1F 07 F4 */	lwz r0, 0x7f4(r31)
/* 8047448C  60 00 00 10 */	ori r0, r0, 0x10
/* 80474490  90 1F 07 F4 */	stw r0, 0x7f4(r31)
/* 80474494  80 1F 07 C8 */	lwz r0, 0x7c8(r31)
/* 80474498  54 00 07 B6 */	rlwinm r0, r0, 0, 0x1e, 0x1b
/* 8047449C  90 1F 07 C8 */	stw r0, 0x7c8(r31)
/* 804744A0  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 804744A4  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 804744A8  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 804744AC  7F E3 FB 78 */	mr r3, r31
/* 804744B0  4B FF B1 F5 */	bl data__12daObjCarry_cFv
/* 804744B4  88 03 00 36 */	lbz r0, 0x36(r3)
/* 804744B8  98 1F 07 A0 */	stb r0, 0x7a0(r31)
/* 804744BC  38 00 00 00 */	li r0, 0
/* 804744C0  98 1F 0D A8 */	stb r0, 0xda8(r31)
/* 804744C4  98 1F 0D B5 */	stb r0, 0xdb5(r31)
/* 804744C8  3C 60 80 48 */	lis r3, lit_6043@ha /* 0x8047A434@ha */
/* 804744CC  C0 03 A4 34 */	lfs f0, lit_6043@l(r3)  /* 0x8047A434@l */
/* 804744D0  D0 1F 05 34 */	stfs f0, 0x534(r31)
/* 804744D4  7F E3 FB 78 */	mr r3, r31
/* 804744D8  4B FF E9 85 */	bl calc_gravity__12daObjCarry_cFv
/* 804744DC  D0 3F 05 30 */	stfs f1, 0x530(r31)
/* 804744E0  88 1F 0C F0 */	lbz r0, 0xcf0(r31)
/* 804744E4  28 00 00 06 */	cmplwi r0, 6
/* 804744E8  40 82 00 1C */	bne lbl_80474504
/* 804744EC  88 1F 0C F1 */	lbz r0, 0xcf1(r31)
/* 804744F0  28 00 00 02 */	cmplwi r0, 2
/* 804744F4  40 82 00 10 */	bne lbl_80474504
/* 804744F8  3C 60 80 48 */	lis r3, lit_6496@ha /* 0x8047A44C@ha */
/* 804744FC  C0 03 A4 4C */	lfs f0, lit_6496@l(r3)  /* 0x8047A44C@l */
/* 80474500  D0 1F 05 30 */	stfs f0, 0x530(r31)
lbl_80474504:
/* 80474504  88 1F 0C F0 */	lbz r0, 0xcf0(r31)
/* 80474508  2C 00 00 03 */	cmpwi r0, 3
/* 8047450C  40 82 00 0C */	bne lbl_80474518
/* 80474510  38 00 00 01 */	li r0, 1
/* 80474514  98 1F 07 DC */	stb r0, 0x7dc(r31)
lbl_80474518:
/* 80474518  38 60 00 00 */	li r3, 0
/* 8047451C  98 7F 0D EB */	stb r3, 0xdeb(r31)
/* 80474520  38 00 00 03 */	li r0, 3
/* 80474524  98 1F 0C F1 */	stb r0, 0xcf1(r31)
/* 80474528  98 7F 0D B4 */	stb r3, 0xdb4(r31)
/* 8047452C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80474530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80474534  7C 08 03 A6 */	mtlr r0
/* 80474538  38 21 00 10 */	addi r1, r1, 0x10
/* 8047453C  4E 80 00 20 */	blr 

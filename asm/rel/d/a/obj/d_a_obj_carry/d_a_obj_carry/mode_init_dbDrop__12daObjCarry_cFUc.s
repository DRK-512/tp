lbl_80475164:
/* 80475164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80475168  7C 08 02 A6 */	mflr r0
/* 8047516C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80475170  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80475174  7C 7F 1B 78 */	mr r31, r3
/* 80475178  38 7F 05 74 */	addi r3, r31, 0x574
/* 8047517C  4B C0 22 29 */	bl ClrMoveBGOnly__9dBgS_AcchFv
/* 80475180  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 80475184  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80475188  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 8047518C  80 1F 07 C8 */	lwz r0, 0x7c8(r31)
/* 80475190  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80475194  90 1F 07 C8 */	stw r0, 0x7c8(r31)
/* 80475198  80 1F 07 F4 */	lwz r0, 0x7f4(r31)
/* 8047519C  60 00 00 10 */	ori r0, r0, 0x10
/* 804751A0  90 1F 07 F4 */	stw r0, 0x7f4(r31)
/* 804751A4  80 1F 07 E0 */	lwz r0, 0x7e0(r31)
/* 804751A8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804751AC  90 1F 07 E0 */	stw r0, 0x7e0(r31)
/* 804751B0  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 804751B4  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 804751B8  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 804751BC  3C 60 80 48 */	lis r3, lit_6043@ha /* 0x8047A434@ha */
/* 804751C0  C0 03 A4 34 */	lfs f0, lit_6043@l(r3)  /* 0x8047A434@l */
/* 804751C4  D0 1F 05 34 */	stfs f0, 0x534(r31)
/* 804751C8  7F E3 FB 78 */	mr r3, r31
/* 804751CC  4B FF A4 D9 */	bl data__12daObjCarry_cFv
/* 804751D0  88 03 00 36 */	lbz r0, 0x36(r3)
/* 804751D4  98 1F 07 A0 */	stb r0, 0x7a0(r31)
/* 804751D8  7F E3 FB 78 */	mr r3, r31
/* 804751DC  4B FF DC 81 */	bl calc_gravity__12daObjCarry_cFv
/* 804751E0  D0 3F 05 30 */	stfs f1, 0x530(r31)
/* 804751E4  38 00 00 01 */	li r0, 1
/* 804751E8  98 1F 0D 75 */	stb r0, 0xd75(r31)
/* 804751EC  38 00 00 00 */	li r0, 0
/* 804751F0  98 1F 0D 79 */	stb r0, 0xd79(r31)
/* 804751F4  38 00 00 0B */	li r0, 0xb
/* 804751F8  98 1F 0C F1 */	stb r0, 0xcf1(r31)
/* 804751FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80475200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80475204  7C 08 03 A6 */	mtlr r0
/* 80475208  38 21 00 10 */	addi r1, r1, 0x10
/* 8047520C  4E 80 00 20 */	blr 

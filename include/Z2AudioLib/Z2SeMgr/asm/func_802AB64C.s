/* 802AB64C 002A858C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AB650 002A8590  7C 08 02 A6 */	mflr r0
/* 802AB654 002A8594  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AB658 002A8598  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AB65C 002A859C  7C 7F 1B 78 */	mr r31, r3
/* 802AB660 002A85A0  93 ED 86 08 */	stw r31, lbl_80450B88-_SDA_BASE_(r13)
/* 802AB664 002A85A4  3C 80 80 2A */	lis r4, __ct__14JAISoundHandleFv@ha
/* 802AB668 002A85A8  38 84 4A C4 */	addi r4, r4, __ct__14JAISoundHandleFv@l
/* 802AB66C 002A85AC  3C A0 80 00 */	lis r5, __dt__14JAISoundHandleFv@ha
/* 802AB670 002A85B0  38 A5 78 38 */	addi r5, r5, __dt__14JAISoundHandleFv@l
/* 802AB674 002A85B4  38 C0 00 04 */	li r6, 4
/* 802AB678 002A85B8  38 E0 00 18 */	li r7, 0x18
/* 802AB67C 002A85BC  48 0B 66 E5 */	bl func_80361D60
/* 802AB680 002A85C0  93 FF 00 60 */	stw r31, 0x60(r31)
/* 802AB684 002A85C4  38 00 00 18 */	li r0, 0x18
/* 802AB688 002A85C8  90 1F 00 64 */	stw r0, 0x64(r31)
/* 802AB68C 002A85CC  38 7F 00 68 */	addi r3, r31, 0x68
/* 802AB690 002A85D0  3C 80 80 2B */	lis r4, __ct__12Z2MultiSeObjFv@ha
/* 802AB694 002A85D4  38 84 B7 10 */	addi r4, r4, __ct__12Z2MultiSeObjFv@l
/* 802AB698 002A85D8  3C A0 80 00 */	lis r5, __dt__12Z2MultiSeObjFv@ha
/* 802AB69C 002A85DC  38 A5 78 88 */	addi r5, r5, __dt__12Z2MultiSeObjFv@l
/* 802AB6A0 002A85E0  38 C0 00 24 */	li r6, 0x24
/* 802AB6A4 002A85E4  38 E0 00 0A */	li r7, 0xa
/* 802AB6A8 002A85E8  48 0B 66 B9 */	bl func_80361D60
/* 802AB6AC 002A85EC  38 7F 01 D4 */	addi r3, r31, 0x1d4
/* 802AB6B0 002A85F0  3C 80 80 2B */	lis r4, __ct__12Z2MultiSeObjFv@ha
/* 802AB6B4 002A85F4  38 84 B7 10 */	addi r4, r4, __ct__12Z2MultiSeObjFv@l
/* 802AB6B8 002A85F8  3C A0 80 00 */	lis r5, __dt__12Z2MultiSeObjFv@ha
/* 802AB6BC 002A85FC  38 A5 78 88 */	addi r5, r5, __dt__12Z2MultiSeObjFv@l
/* 802AB6C0 002A8600  38 C0 00 24 */	li r6, 0x24
/* 802AB6C4 002A8604  38 E0 00 0A */	li r7, 0xa
/* 802AB6C8 002A8608  48 0B 66 99 */	bl func_80361D60
/* 802AB6CC 002A860C  38 00 00 00 */	li r0, 0
/* 802AB6D0 002A8610  98 1F 03 C0 */	stb r0, 0x3c0(r31)
/* 802AB6D4 002A8614  98 1F 03 C1 */	stb r0, 0x3c1(r31)
/* 802AB6D8 002A8618  98 1F 03 C2 */	stb r0, 0x3c2(r31)
/* 802AB6DC 002A861C  98 1F 03 C3 */	stb r0, 0x3c3(r31)
/* 802AB6E0 002A8620  98 1F 03 C4 */	stb r0, 0x3c4(r31)
/* 802AB6E4 002A8624  98 1F 03 C5 */	stb r0, 0x3c5(r31)
/* 802AB6E8 002A8628  98 1F 03 C9 */	stb r0, 0x3c9(r31)
/* 802AB6EC 002A862C  98 1F 03 CA */	stb r0, 0x3ca(r31)
/* 802AB6F0 002A8630  98 1F 03 CB */	stb r0, 0x3cb(r31)
/* 802AB6F4 002A8634  98 1F 03 CC */	stb r0, 0x3cc(r31)
/* 802AB6F8 002A8638  7F E3 FB 78 */	mr r3, r31
/* 802AB6FC 002A863C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AB700 002A8640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AB704 002A8644  7C 08 03 A6 */	mtlr r0
/* 802AB708 002A8648  38 21 00 10 */	addi r1, r1, 0x10
/* 802AB70C 002A864C  4E 80 00 20 */	blr 
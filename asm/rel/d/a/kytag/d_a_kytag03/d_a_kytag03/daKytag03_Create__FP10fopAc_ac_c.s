lbl_80857470:
/* 80857470  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80857474  7C 08 02 A6 */	mflr r0
/* 80857478  90 01 00 34 */	stw r0, 0x34(r1)
/* 8085747C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80857480  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80857484  7C 7E 1B 78 */	mr r30, r3
/* 80857488  3C 80 80 85 */	lis r4, lit_3770@ha /* 0x80857650@ha */
/* 8085748C  3B E4 76 50 */	addi r31, r4, lit_3770@l /* 0x80857650@l */
/* 80857490  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80857494  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80857498  40 82 00 1C */	bne lbl_808574B4
/* 8085749C  28 1E 00 00 */	cmplwi r30, 0
/* 808574A0  41 82 00 08 */	beq lbl_808574A8
/* 808574A4  4B 7C 16 C1 */	bl __ct__10fopAc_ac_cFv
lbl_808574A8:
/* 808574A8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 808574AC  60 00 00 08 */	ori r0, r0, 8
/* 808574B0  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_808574B4:
/* 808574B4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 808574B8  54 00 47 BE */	rlwinm r0, r0, 8, 0x1e, 0x1f
/* 808574BC  98 1E 05 84 */	stb r0, 0x584(r30)
/* 808574C0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 808574C4  98 1E 05 85 */	stb r0, 0x585(r30)
/* 808574C8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 808574CC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 808574D0  98 1E 05 86 */	stb r0, 0x586(r30)
/* 808574D4  38 00 00 00 */	li r0, 0
/* 808574D8  90 1E 05 6C */	stw r0, 0x56c(r30)
/* 808574DC  98 1E 05 88 */	stb r0, 0x588(r30)
/* 808574E0  B0 1E 05 8A */	sth r0, 0x58a(r30)
/* 808574E4  98 1E 05 87 */	stb r0, 0x587(r30)
/* 808574E8  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 808574EC  D0 5E 05 78 */	stfs f2, 0x578(r30)
/* 808574F0  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 808574F4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 808574F8  C8 3F 00 B0 */	lfd f1, 0xb0(r31)
/* 808574FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80857500  3C 00 43 30 */	lis r0, 0x4330
/* 80857504  90 01 00 20 */	stw r0, 0x20(r1)
/* 80857508  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8085750C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80857510  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80857514  EC 01 00 24 */	fdivs f0, f1, f0
/* 80857518  D0 1E 05 7C */	stfs f0, 0x57c(r30)
/* 8085751C  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 80857520  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80857524  40 81 00 14 */	ble lbl_80857538
/* 80857528  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8085752C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80857530  D0 1E 05 74 */	stfs f0, 0x574(r30)
/* 80857534  48 00 00 0C */	b lbl_80857540
lbl_80857538:
/* 80857538  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 8085753C  D0 1E 05 74 */	stfs f0, 0x574(r30)
lbl_80857540:
/* 80857540  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80857544  98 1E 05 8E */	stb r0, 0x58e(r30)
/* 80857548  88 1E 05 84 */	lbz r0, 0x584(r30)
/* 8085754C  28 00 00 00 */	cmplwi r0, 0
/* 80857550  40 82 00 34 */	bne lbl_80857584
/* 80857554  7F C3 F3 78 */	mr r3, r30
/* 80857558  4B FF EC E1 */	bl set_path_info__FP10fopAc_ac_c
/* 8085755C  90 7E 05 68 */	stw r3, 0x568(r30)
/* 80857560  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80857564  D0 1E 05 70 */	stfs f0, 0x570(r30)
/* 80857568  38 00 00 00 */	li r0, 0
/* 8085756C  90 1E 05 80 */	stw r0, 0x580(r30)
/* 80857570  38 00 00 01 */	li r0, 1
/* 80857574  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80857578  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8085757C  98 03 0F 21 */	stb r0, 0xf21(r3)
/* 80857580  48 00 00 AC */	b lbl_8085762C
lbl_80857584:
/* 80857584  88 1E 05 85 */	lbz r0, 0x585(r30)
/* 80857588  28 00 00 FF */	cmplwi r0, 0xff
/* 8085758C  40 82 00 0C */	bne lbl_80857598
/* 80857590  38 60 00 03 */	li r3, 3
/* 80857594  48 00 00 9C */	b lbl_80857630
lbl_80857598:
/* 80857598  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8085759C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808575A0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 808575A4  38 80 00 00 */	li r4, 0
/* 808575A8  90 81 00 08 */	stw r4, 8(r1)
/* 808575AC  38 00 FF FF */	li r0, -1
/* 808575B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 808575B4  90 81 00 10 */	stw r4, 0x10(r1)
/* 808575B8  90 81 00 14 */	stw r4, 0x14(r1)
/* 808575BC  90 81 00 18 */	stw r4, 0x18(r1)
/* 808575C0  38 80 00 00 */	li r4, 0
/* 808575C4  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084ED@ha */
/* 808575C8  38 A5 84 ED */	addi r5, r5, 0x84ED /* 0x000084ED@l */
/* 808575CC  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 808575D0  38 E0 00 00 */	li r7, 0
/* 808575D4  39 00 00 00 */	li r8, 0
/* 808575D8  39 20 00 00 */	li r9, 0
/* 808575DC  39 40 00 FF */	li r10, 0xff
/* 808575E0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 808575E4  4B 7F 54 AD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 808575E8  90 7E 05 6C */	stw r3, 0x56c(r30)
/* 808575EC  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 808575F0  28 03 00 00 */	cmplwi r3, 0
/* 808575F4  41 82 00 38 */	beq lbl_8085762C
/* 808575F8  38 00 00 64 */	li r0, 0x64
/* 808575FC  98 03 00 BC */	stb r0, 0xbc(r3)
/* 80857600  38 00 00 BD */	li r0, 0xbd
/* 80857604  98 03 00 BD */	stb r0, 0xbd(r3)
/* 80857608  38 00 00 73 */	li r0, 0x73
/* 8085760C  98 03 00 BE */	stb r0, 0xbe(r3)
/* 80857610  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 80857614  38 00 00 83 */	li r0, 0x83
/* 80857618  98 03 00 B8 */	stb r0, 0xb8(r3)
/* 8085761C  38 00 00 F3 */	li r0, 0xf3
/* 80857620  98 03 00 B9 */	stb r0, 0xb9(r3)
/* 80857624  38 00 00 68 */	li r0, 0x68
/* 80857628  98 03 00 BA */	stb r0, 0xba(r3)
lbl_8085762C:
/* 8085762C  38 60 00 04 */	li r3, 4
lbl_80857630:
/* 80857630  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80857634  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80857638  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8085763C  7C 08 03 A6 */	mtlr r0
/* 80857640  38 21 00 30 */	addi r1, r1, 0x30
/* 80857644  4E 80 00 20 */	blr 

lbl_802AE184:
/* 802AE184  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802AE188  7C 08 02 A6 */	mflr r0
/* 802AE18C  90 01 00 64 */	stw r0, 0x64(r1)
/* 802AE190  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 802AE194  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 802AE198  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 802AE19C  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 802AE1A0  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 802AE1A4  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 802AE1A8  39 61 00 30 */	addi r11, r1, 0x30
/* 802AE1AC  48 0B 40 29 */	bl _savegpr_27
/* 802AE1B0  7C 7F 1B 78 */	mr r31, r3
/* 802AE1B4  80 8D 86 00 */	lwz r4, __OSReport_disable-0x18(r13)
/* 802AE1B8  88 04 00 1D */	lbz r0, 0x1d(r4)
/* 802AE1BC  28 00 00 00 */	cmplwi r0, 0
/* 802AE1C0  41 82 00 44 */	beq lbl_802AE204
/* 802AE1C4  88 1F 03 CC */	lbz r0, 0x3cc(r31)
/* 802AE1C8  28 00 00 00 */	cmplwi r0, 0
/* 802AE1CC  41 82 00 38 */	beq lbl_802AE204
/* 802AE1D0  3C 80 00 09 */	lis r4, 0x0009 /* 0x0009003E@ha */
/* 802AE1D4  38 04 00 3E */	addi r0, r4, 0x003E /* 0x0009003E@l */
/* 802AE1D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802AE1DC  38 81 00 10 */	addi r4, r1, 0x10
/* 802AE1E0  38 A0 00 00 */	li r5, 0
/* 802AE1E4  38 C0 00 00 */	li r6, 0
/* 802AE1E8  38 E0 00 00 */	li r7, 0
/* 802AE1EC  C0 22 BE 80 */	lfs f1, lit_4042(r2)
/* 802AE1F0  FC 40 08 90 */	fmr f2, f1
/* 802AE1F4  C0 62 BE B8 */	lfs f3, lit_4056(r2)
/* 802AE1F8  FC 80 18 90 */	fmr f4, f3
/* 802AE1FC  39 00 00 00 */	li r8, 0
/* 802AE200  4B FF E3 0D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_802AE204:
/* 802AE204  3B 80 00 00 */	li r28, 0
/* 802AE208  C3 E2 BE 80 */	lfs f31, lit_4042(r2)
/* 802AE20C  48 00 00 88 */	b lbl_802AE294
lbl_802AE210:
/* 802AE210  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 802AE214  1C 00 00 24 */	mulli r0, r0, 0x24
/* 802AE218  7F BF 02 14 */	add r29, r31, r0
/* 802AE21C  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 802AE220  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 802AE224  40 81 00 0C */	ble lbl_802AE230
/* 802AE228  FF A0 F8 90 */	fmr f29, f31
/* 802AE22C  48 00 00 18 */	b lbl_802AE244
lbl_802AE230:
/* 802AE230  C3 A2 BE 78 */	lfs f29, lit_4040(r2)
/* 802AE234  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 802AE238  40 80 00 08 */	bge lbl_802AE240
/* 802AE23C  48 00 00 08 */	b lbl_802AE244
lbl_802AE240:
/* 802AE240  FF A0 00 90 */	fmr f29, f0
lbl_802AE244:
/* 802AE244  80 1D 00 84 */	lwz r0, 0x84(r29)
/* 802AE248  90 01 00 0C */	stw r0, 0xc(r1)
/* 802AE24C  3B DD 00 68 */	addi r30, r29, 0x68
/* 802AE250  7F C3 F3 78 */	mr r3, r30
/* 802AE254  48 00 0B 6D */	bl getDolbyPower__12Z2MultiSeMgrFv
/* 802AE258  FF C0 08 90 */	fmr f30, f1
/* 802AE25C  7F C3 F3 78 */	mr r3, r30
/* 802AE260  48 00 0A 81 */	bl getPanPower__12Z2MultiSeMgrFv
/* 802AE264  FC 60 08 90 */	fmr f3, f1
/* 802AE268  7F E3 FB 78 */	mr r3, r31
/* 802AE26C  38 81 00 0C */	addi r4, r1, 0xc
/* 802AE270  38 A0 00 00 */	li r5, 0
/* 802AE274  38 C0 00 00 */	li r6, 0
/* 802AE278  88 FD 00 88 */	lbz r7, 0x88(r29)
/* 802AE27C  C0 22 BE 80 */	lfs f1, lit_4042(r2)
/* 802AE280  FC 40 E8 90 */	fmr f2, f29
/* 802AE284  FC 80 F0 90 */	fmr f4, f30
/* 802AE288  39 00 00 01 */	li r8, 1
/* 802AE28C  4B FF E2 81 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 802AE290  3B 9C 00 01 */	addi r28, r28, 1
lbl_802AE294:
/* 802AE294  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 802AE298  88 1F 01 D0 */	lbz r0, 0x1d0(r31)
/* 802AE29C  7C 03 00 40 */	cmplw r3, r0
/* 802AE2A0  41 80 FF 70 */	blt lbl_802AE210
/* 802AE2A4  3B 60 00 00 */	li r27, 0
/* 802AE2A8  3B C0 FF FF */	li r30, -1
/* 802AE2AC  3B A0 00 00 */	li r29, 0
/* 802AE2B0  48 00 00 24 */	b lbl_802AE2D4
lbl_802AE2B4:
/* 802AE2B4  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 802AE2B8  1C 00 00 24 */	mulli r0, r0, 0x24
/* 802AE2BC  7F 9F 02 14 */	add r28, r31, r0
/* 802AE2C0  38 7C 00 68 */	addi r3, r28, 0x68
/* 802AE2C4  48 00 09 F9 */	bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802AE2C8  93 DC 00 84 */	stw r30, 0x84(r28)
/* 802AE2CC  9B BC 00 88 */	stb r29, 0x88(r28)
/* 802AE2D0  3B 7B 00 01 */	addi r27, r27, 1
lbl_802AE2D4:
/* 802AE2D4  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 802AE2D8  28 00 00 0A */	cmplwi r0, 0xa
/* 802AE2DC  41 80 FF D8 */	blt lbl_802AE2B4
/* 802AE2E0  38 00 00 00 */	li r0, 0
/* 802AE2E4  98 1F 01 D0 */	stb r0, 0x1d0(r31)
/* 802AE2E8  3B 60 00 00 */	li r27, 0
/* 802AE2EC  C3 C2 BE 80 */	lfs f30, lit_4042(r2)
/* 802AE2F0  48 00 00 88 */	b lbl_802AE378
lbl_802AE2F4:
/* 802AE2F4  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 802AE2F8  1C 00 00 24 */	mulli r0, r0, 0x24
/* 802AE2FC  7F 9F 02 14 */	add r28, r31, r0
/* 802AE300  C0 1C 01 D8 */	lfs f0, 0x1d8(r28)
/* 802AE304  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 802AE308  40 81 00 0C */	ble lbl_802AE314
/* 802AE30C  FF A0 F0 90 */	fmr f29, f30
/* 802AE310  48 00 00 18 */	b lbl_802AE328
lbl_802AE314:
/* 802AE314  C3 A2 BE 78 */	lfs f29, lit_4040(r2)
/* 802AE318  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 802AE31C  40 80 00 08 */	bge lbl_802AE324
/* 802AE320  48 00 00 08 */	b lbl_802AE328
lbl_802AE324:
/* 802AE324  FF A0 00 90 */	fmr f29, f0
lbl_802AE328:
/* 802AE328  80 1C 01 F0 */	lwz r0, 0x1f0(r28)
/* 802AE32C  90 01 00 08 */	stw r0, 8(r1)
/* 802AE330  3B BC 01 D4 */	addi r29, r28, 0x1d4
/* 802AE334  7F A3 EB 78 */	mr r3, r29
/* 802AE338  48 00 0A 89 */	bl getDolbyPower__12Z2MultiSeMgrFv
/* 802AE33C  FF E0 08 90 */	fmr f31, f1
/* 802AE340  7F A3 EB 78 */	mr r3, r29
/* 802AE344  48 00 09 9D */	bl getPanPower__12Z2MultiSeMgrFv
/* 802AE348  FC 60 08 90 */	fmr f3, f1
/* 802AE34C  7F E3 FB 78 */	mr r3, r31
/* 802AE350  38 81 00 08 */	addi r4, r1, 8
/* 802AE354  38 A0 00 00 */	li r5, 0
/* 802AE358  38 C0 00 00 */	li r6, 0
/* 802AE35C  88 FC 01 F4 */	lbz r7, 0x1f4(r28)
/* 802AE360  C0 22 BE 80 */	lfs f1, lit_4042(r2)
/* 802AE364  FC 40 E8 90 */	fmr f2, f29
/* 802AE368  FC 80 F8 90 */	fmr f4, f31
/* 802AE36C  39 00 00 01 */	li r8, 1
/* 802AE370  4B FF D6 15 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 802AE374  3B 7B 00 01 */	addi r27, r27, 1
lbl_802AE378:
/* 802AE378  57 63 06 3E */	clrlwi r3, r27, 0x18
/* 802AE37C  88 1F 03 3C */	lbz r0, 0x33c(r31)
/* 802AE380  7C 03 00 40 */	cmplw r3, r0
/* 802AE384  41 80 FF 70 */	blt lbl_802AE2F4
/* 802AE388  3B 60 00 00 */	li r27, 0
/* 802AE38C  3B A0 FF FF */	li r29, -1
/* 802AE390  3B C0 00 00 */	li r30, 0
/* 802AE394  48 00 00 24 */	b lbl_802AE3B8
lbl_802AE398:
/* 802AE398  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 802AE39C  1C 00 00 24 */	mulli r0, r0, 0x24
/* 802AE3A0  7F 9F 02 14 */	add r28, r31, r0
/* 802AE3A4  38 7C 01 D4 */	addi r3, r28, 0x1d4
/* 802AE3A8  48 00 09 15 */	bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802AE3AC  93 BC 01 F0 */	stw r29, 0x1f0(r28)
/* 802AE3B0  9B DC 01 F4 */	stb r30, 0x1f4(r28)
/* 802AE3B4  3B 7B 00 01 */	addi r27, r27, 1
lbl_802AE3B8:
/* 802AE3B8  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 802AE3BC  28 00 00 0A */	cmplwi r0, 0xa
/* 802AE3C0  41 80 FF D8 */	blt lbl_802AE398
/* 802AE3C4  38 00 00 00 */	li r0, 0
/* 802AE3C8  98 1F 03 3C */	stb r0, 0x33c(r31)
/* 802AE3CC  98 1F 03 C9 */	stb r0, 0x3c9(r31)
/* 802AE3D0  98 1F 03 CA */	stb r0, 0x3ca(r31)
/* 802AE3D4  98 1F 03 CB */	stb r0, 0x3cb(r31)
/* 802AE3D8  88 7F 03 C2 */	lbz r3, 0x3c2(r31)
/* 802AE3DC  28 03 00 00 */	cmplwi r3, 0
/* 802AE3E0  41 82 00 10 */	beq lbl_802AE3F0
/* 802AE3E4  38 03 FF FF */	addi r0, r3, -1
/* 802AE3E8  98 1F 03 C2 */	stb r0, 0x3c2(r31)
/* 802AE3EC  48 00 00 08 */	b lbl_802AE3F4
lbl_802AE3F0:
/* 802AE3F0  98 1F 03 C2 */	stb r0, 0x3c2(r31)
lbl_802AE3F4:
/* 802AE3F4  88 7F 03 C3 */	lbz r3, 0x3c3(r31)
/* 802AE3F8  28 03 00 00 */	cmplwi r3, 0
/* 802AE3FC  41 82 00 10 */	beq lbl_802AE40C
/* 802AE400  38 03 FF FF */	addi r0, r3, -1
/* 802AE404  98 1F 03 C3 */	stb r0, 0x3c3(r31)
/* 802AE408  48 00 00 0C */	b lbl_802AE414
lbl_802AE40C:
/* 802AE40C  38 00 00 00 */	li r0, 0
/* 802AE410  98 1F 03 C3 */	stb r0, 0x3c3(r31)
lbl_802AE414:
/* 802AE414  88 7F 03 C4 */	lbz r3, 0x3c4(r31)
/* 802AE418  28 03 00 00 */	cmplwi r3, 0
/* 802AE41C  41 82 00 10 */	beq lbl_802AE42C
/* 802AE420  38 03 FF FF */	addi r0, r3, -1
/* 802AE424  98 1F 03 C4 */	stb r0, 0x3c4(r31)
/* 802AE428  48 00 00 0C */	b lbl_802AE434
lbl_802AE42C:
/* 802AE42C  38 00 00 00 */	li r0, 0
/* 802AE430  98 1F 03 C4 */	stb r0, 0x3c4(r31)
lbl_802AE434:
/* 802AE434  88 7F 03 C5 */	lbz r3, 0x3c5(r31)
/* 802AE438  28 03 00 00 */	cmplwi r3, 0
/* 802AE43C  41 82 00 10 */	beq lbl_802AE44C
/* 802AE440  38 03 FF FF */	addi r0, r3, -1
/* 802AE444  98 1F 03 C5 */	stb r0, 0x3c5(r31)
/* 802AE448  48 00 00 0C */	b lbl_802AE454
lbl_802AE44C:
/* 802AE44C  38 00 00 00 */	li r0, 0
/* 802AE450  98 1F 03 C5 */	stb r0, 0x3c5(r31)
lbl_802AE454:
/* 802AE454  88 7F 03 C0 */	lbz r3, 0x3c0(r31)
/* 802AE458  28 03 00 00 */	cmplwi r3, 0
/* 802AE45C  41 82 00 10 */	beq lbl_802AE46C
/* 802AE460  38 03 FF FF */	addi r0, r3, -1
/* 802AE464  98 1F 03 C0 */	stb r0, 0x3c0(r31)
/* 802AE468  48 00 00 0C */	b lbl_802AE474
lbl_802AE46C:
/* 802AE46C  38 00 00 00 */	li r0, 0
/* 802AE470  98 1F 03 C0 */	stb r0, 0x3c0(r31)
lbl_802AE474:
/* 802AE474  88 7F 03 C1 */	lbz r3, 0x3c1(r31)
/* 802AE478  28 03 00 00 */	cmplwi r3, 0
/* 802AE47C  41 82 00 10 */	beq lbl_802AE48C
/* 802AE480  38 03 FF FF */	addi r0, r3, -1
/* 802AE484  98 1F 03 C1 */	stb r0, 0x3c1(r31)
/* 802AE488  48 00 00 0C */	b lbl_802AE494
lbl_802AE48C:
/* 802AE48C  38 00 00 00 */	li r0, 0
/* 802AE490  98 1F 03 C1 */	stb r0, 0x3c1(r31)
lbl_802AE494:
/* 802AE494  88 7F 03 C6 */	lbz r3, 0x3c6(r31)
/* 802AE498  28 03 00 00 */	cmplwi r3, 0
/* 802AE49C  41 82 00 10 */	beq lbl_802AE4AC
/* 802AE4A0  38 03 FF FF */	addi r0, r3, -1
/* 802AE4A4  98 1F 03 C6 */	stb r0, 0x3c6(r31)
/* 802AE4A8  48 00 00 0C */	b lbl_802AE4B4
lbl_802AE4AC:
/* 802AE4AC  38 00 00 00 */	li r0, 0
/* 802AE4B0  98 1F 03 C6 */	stb r0, 0x3c6(r31)
lbl_802AE4B4:
/* 802AE4B4  88 7F 03 C7 */	lbz r3, 0x3c7(r31)
/* 802AE4B8  28 03 00 00 */	cmplwi r3, 0
/* 802AE4BC  41 82 00 10 */	beq lbl_802AE4CC
/* 802AE4C0  38 03 FF FF */	addi r0, r3, -1
/* 802AE4C4  98 1F 03 C7 */	stb r0, 0x3c7(r31)
/* 802AE4C8  48 00 00 0C */	b lbl_802AE4D4
lbl_802AE4CC:
/* 802AE4CC  38 00 00 00 */	li r0, 0
/* 802AE4D0  98 1F 03 C7 */	stb r0, 0x3c7(r31)
lbl_802AE4D4:
/* 802AE4D4  88 7F 03 C8 */	lbz r3, 0x3c8(r31)
/* 802AE4D8  28 03 00 00 */	cmplwi r3, 0
/* 802AE4DC  41 82 00 10 */	beq lbl_802AE4EC
/* 802AE4E0  38 03 FF FF */	addi r0, r3, -1
/* 802AE4E4  98 1F 03 C8 */	stb r0, 0x3c8(r31)
/* 802AE4E8  48 00 00 0C */	b lbl_802AE4F4
lbl_802AE4EC:
/* 802AE4EC  38 00 00 00 */	li r0, 0
/* 802AE4F0  98 1F 03 C8 */	stb r0, 0x3c8(r31)
lbl_802AE4F4:
/* 802AE4F4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 802AE4F8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 802AE4FC  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 802AE500  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 802AE504  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 802AE508  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 802AE50C  39 61 00 30 */	addi r11, r1, 0x30
/* 802AE510  48 0B 3D 11 */	bl _restgpr_27
/* 802AE514  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802AE518  7C 08 03 A6 */	mtlr r0
/* 802AE51C  38 21 00 60 */	addi r1, r1, 0x60
/* 802AE520  4E 80 00 20 */	blr 

lbl_802460DC:
/* 802460DC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802460E0  7C 08 02 A6 */	mflr r0
/* 802460E4  90 01 00 74 */	stw r0, 0x74(r1)
/* 802460E8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 802460EC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 802460F0  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 802460F4  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 802460F8  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 802460FC  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80246100  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 80246104  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 80246108  DB 61 00 20 */	stfd f27, 0x20(r1)
/* 8024610C  F3 61 00 28 */	psq_st f27, 40(r1), 0, 0 /* qr0 */
/* 80246110  DB 41 00 10 */	stfd f26, 0x10(r1)
/* 80246114  F3 41 00 18 */	psq_st f26, 24(r1), 0, 0 /* qr0 */
/* 80246118  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024611C  93 C1 00 08 */	stw r30, 8(r1)
/* 80246120  7C 7E 1B 78 */	mr r30, r3
/* 80246124  FF 40 08 90 */	fmr f26, f1
/* 80246128  FF 60 10 90 */	fmr f27, f2
/* 8024612C  FF 80 18 90 */	fmr f28, f3
/* 80246130  FF A0 20 90 */	fmr f29, f4
/* 80246134  FF C0 28 90 */	fmr f30, f5
/* 80246138  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024613C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80246140  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 80246144  7F E3 FB 78 */	mr r3, r31
/* 80246148  81 9F 00 00 */	lwz r12, 0(r31)
/* 8024614C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80246150  7D 89 03 A6 */	mtctr r12
/* 80246154  4E 80 04 21 */	bctrl 
/* 80246158  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8024615C  48 00 F6 CD */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80246160  FF E0 08 90 */	fmr f31, f1
/* 80246164  88 1E 00 21 */	lbz r0, 0x21(r30)
/* 80246168  28 00 00 03 */	cmplwi r0, 3
/* 8024616C  41 82 00 0C */	beq lbl_80246178
/* 80246170  28 00 00 05 */	cmplwi r0, 5
/* 80246174  40 82 00 10 */	bne lbl_80246184
lbl_80246178:
/* 80246178  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8024617C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80246180  41 80 00 20 */	blt lbl_802461A0
lbl_80246184:
/* 80246184  28 00 00 03 */	cmplwi r0, 3
/* 80246188  41 82 00 74 */	beq lbl_802461FC
/* 8024618C  28 00 00 05 */	cmplwi r0, 5
/* 80246190  41 82 00 6C */	beq lbl_802461FC
/* 80246194  C0 02 B2 DC */	lfs f0, lit_3869(r2)
/* 80246198  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 8024619C  41 82 00 60 */	beq lbl_802461FC
lbl_802461A0:
/* 802461A0  88 1E 00 22 */	lbz r0, 0x22(r30)
/* 802461A4  28 00 00 00 */	cmplwi r0, 0
/* 802461A8  41 82 00 44 */	beq lbl_802461EC
/* 802461AC  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802461B0  80 63 00 04 */	lwz r3, 4(r3)
/* 802461B4  38 80 00 00 */	li r4, 0
/* 802461B8  81 83 00 00 */	lwz r12, 0(r3)
/* 802461BC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 802461C0  7D 89 03 A6 */	mtctr r12
/* 802461C4  4E 80 04 21 */	bctrl 
/* 802461C8  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802461CC  80 63 00 04 */	lwz r3, 4(r3)
/* 802461D0  38 80 00 00 */	li r4, 0
/* 802461D4  81 83 00 00 */	lwz r12, 0(r3)
/* 802461D8  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 802461DC  7D 89 03 A6 */	mtctr r12
/* 802461E0  4E 80 04 21 */	bctrl 
/* 802461E4  38 00 00 00 */	li r0, 0
/* 802461E8  98 1E 00 22 */	stb r0, 0x22(r30)
lbl_802461EC:
/* 802461EC  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802461F0  EC 3F 07 B2 */	fmuls f1, f31, f30
/* 802461F4  48 00 F5 DD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802461F8  48 00 00 50 */	b lbl_80246248
lbl_802461FC:
/* 802461FC  88 1E 00 22 */	lbz r0, 0x22(r30)
/* 80246200  28 00 00 00 */	cmplwi r0, 0
/* 80246204  40 82 00 44 */	bne lbl_80246248
/* 80246208  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8024620C  80 63 00 04 */	lwz r3, 4(r3)
/* 80246210  80 9E 00 08 */	lwz r4, 8(r30)
/* 80246214  81 83 00 00 */	lwz r12, 0(r3)
/* 80246218  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8024621C  7D 89 03 A6 */	mtctr r12
/* 80246220  4E 80 04 21 */	bctrl 
/* 80246224  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80246228  80 63 00 04 */	lwz r3, 4(r3)
/* 8024622C  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 80246230  81 83 00 00 */	lwz r12, 0(r3)
/* 80246234  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 80246238  7D 89 03 A6 */	mtctr r12
/* 8024623C  4E 80 04 21 */	bctrl 
/* 80246240  38 00 00 01 */	li r0, 1
/* 80246244  98 1E 00 22 */	stb r0, 0x22(r30)
lbl_80246248:
/* 80246248  88 1E 00 22 */	lbz r0, 0x22(r30)
/* 8024624C  28 00 00 00 */	cmplwi r0, 0
/* 80246250  41 82 00 30 */	beq lbl_80246280
/* 80246254  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80246258  80 7E 00 08 */	lwz r3, 8(r30)
/* 8024625C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80246260  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80246264  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80246268  D0 03 00 08 */	stfs f0, 8(r3)
/* 8024626C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80246270  80 63 00 04 */	lwz r3, 4(r3)
/* 80246274  48 0B 1D 59 */	bl animationTransform__7J2DPaneFv
/* 80246278  80 7E 00 04 */	lwz r3, 4(r30)
/* 8024627C  48 0B 34 15 */	bl animation__9J2DScreenFv
lbl_80246280:
/* 80246280  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80246284  80 63 00 04 */	lwz r3, 4(r3)
/* 80246288  D3 43 00 D4 */	stfs f26, 0xd4(r3)
/* 8024628C  D3 63 00 D8 */	stfs f27, 0xd8(r3)
/* 80246290  81 83 00 00 */	lwz r12, 0(r3)
/* 80246294  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80246298  7D 89 03 A6 */	mtctr r12
/* 8024629C  4E 80 04 21 */	bctrl 
/* 802462A0  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802462A4  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 802462A8  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 802462AC  80 63 00 04 */	lwz r3, 4(r3)
/* 802462B0  EC 00 07 32 */	fmuls f0, f0, f28
/* 802462B4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 802462B8  EC 01 07 72 */	fmuls f0, f1, f29
/* 802462BC  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 802462C0  81 83 00 00 */	lwz r12, 0(r3)
/* 802462C4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802462C8  7D 89 03 A6 */	mtctr r12
/* 802462CC  4E 80 04 21 */	bctrl 
/* 802462D0  80 7E 00 04 */	lwz r3, 4(r30)
/* 802462D4  C0 22 B2 D8 */	lfs f1, lit_3808(r2)
/* 802462D8  FC 40 08 90 */	fmr f2, f1
/* 802462DC  7F E4 FB 78 */	mr r4, r31
/* 802462E0  48 0B 2B F5 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 802462E4  C0 02 B2 DC */	lfs f0, lit_3869(r2)
/* 802462E8  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 802462EC  41 82 00 10 */	beq lbl_802462FC
/* 802462F0  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802462F4  FC 20 F8 90 */	fmr f1, f31
/* 802462F8  48 00 F4 D9 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_802462FC:
/* 802462FC  D3 DE 00 1C */	stfs f30, 0x1c(r30)
/* 80246300  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80246304  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80246308  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8024630C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80246310  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 80246314  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80246318  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 8024631C  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 80246320  E3 61 00 28 */	psq_l f27, 40(r1), 0, 0 /* qr0 */
/* 80246324  CB 61 00 20 */	lfd f27, 0x20(r1)
/* 80246328  E3 41 00 18 */	psq_l f26, 24(r1), 0, 0 /* qr0 */
/* 8024632C  CB 41 00 10 */	lfd f26, 0x10(r1)
/* 80246330  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80246334  83 C1 00 08 */	lwz r30, 8(r1)
/* 80246338  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8024633C  7C 08 03 A6 */	mtlr r0
/* 80246340  38 21 00 70 */	addi r1, r1, 0x70
/* 80246344  4E 80 00 20 */	blr 

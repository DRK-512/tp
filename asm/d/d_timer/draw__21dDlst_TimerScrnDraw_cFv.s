lbl_80260690:
/* 80260690  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80260694  7C 08 02 A6 */	mflr r0
/* 80260698  90 01 00 84 */	stw r0, 0x84(r1)
/* 8026069C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 802606A0  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 802606A4  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 802606A8  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 802606AC  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 802606B0  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 802606B4  39 61 00 50 */	addi r11, r1, 0x50
/* 802606B8  48 10 1B 19 */	bl _savegpr_26
/* 802606BC  7C 7B 1B 78 */	mr r27, r3
/* 802606C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802606C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802606C8  83 C3 5F 50 */	lwz r30, 0x5f50(r3)
/* 802606CC  7F C3 F3 78 */	mr r3, r30
/* 802606D0  81 9E 00 00 */	lwz r12, 0(r30)
/* 802606D4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802606D8  7D 89 03 A6 */	mtctr r12
/* 802606DC  4E 80 04 21 */	bctrl 
/* 802606E0  80 7B 00 04 */	lwz r3, 4(r27)
/* 802606E4  C0 22 B5 40 */	lfs f1, lit_3919(r2)
/* 802606E8  FC 40 08 90 */	fmr f2, f1
/* 802606EC  7F C4 F3 78 */	mr r4, r30
/* 802606F0  48 09 87 E5 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 802606F4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802606F8  3B E3 EB C8 */	addi r31, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802606FC  A8 1F 0B AE */	lha r0, 0xbae(r31)
/* 80260700  C8 62 B5 58 */	lfd f3, lit_4627(r2)
/* 80260704  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80260708  90 01 00 0C */	stw r0, 0xc(r1)
/* 8026070C  3C 60 43 30 */	lis r3, 0x4330
/* 80260710  90 61 00 08 */	stw r3, 8(r1)
/* 80260714  C8 01 00 08 */	lfd f0, 8(r1)
/* 80260718  EC 40 18 28 */	fsubs f2, f0, f3
/* 8026071C  C0 22 B5 74 */	lfs f1, lit_5228(r2)
/* 80260720  A8 1F 0B AC */	lha r0, 0xbac(r31)
/* 80260724  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80260728  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026072C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80260730  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80260734  EC 00 18 28 */	fsubs f0, f0, f3
/* 80260738  EC 01 00 2A */	fadds f0, f1, f0
/* 8026073C  EF C2 00 2A */	fadds f30, f2, f0
/* 80260740  3B 80 00 00 */	li r28, 0
/* 80260744  3B 40 00 00 */	li r26, 0
/* 80260748  C3 E2 B5 40 */	lfs f31, lit_3919(r2)
lbl_8026074C:
/* 8026074C  7F BB D2 14 */	add r29, r27, r26
/* 80260750  C0 7D 00 80 */	lfs f3, 0x80(r29)
/* 80260754  FC 03 F8 40 */	fcmpo cr0, f3, f31
/* 80260758  40 81 03 10 */	ble lbl_80260A68
/* 8026075C  FC 03 F0 40 */	fcmpo cr0, f3, f30
/* 80260760  40 80 03 08 */	bge lbl_80260A68
/* 80260764  C3 A2 B5 4C */	lfs f29, lit_4124(r2)
/* 80260768  C0 22 B5 74 */	lfs f1, lit_5228(r2)
/* 8026076C  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80260770  40 80 00 30 */	bge lbl_802607A0
/* 80260774  C0 1F 0B A8 */	lfs f0, 0xba8(r31)
/* 80260778  EC 03 00 2A */	fadds f0, f3, f0
/* 8026077C  D0 1D 00 80 */	stfs f0, 0x80(r29)
/* 80260780  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 80260784  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80260788  40 81 00 08 */	ble lbl_80260790
/* 8026078C  D0 3D 00 80 */	stfs f1, 0x80(r29)
lbl_80260790:
/* 80260790  7F 63 DB 78 */	mr r3, r27
/* 80260794  C0 3D 00 80 */	lfs f1, 0x80(r29)
/* 80260798  48 00 03 3D */	bl playBckAnimation__21dDlst_TimerScrnDraw_cFf
/* 8026079C  48 00 00 D8 */	b lbl_80260874
lbl_802607A0:
/* 802607A0  A8 1F 0B AC */	lha r0, 0xbac(r31)
/* 802607A4  C8 42 B5 58 */	lfd f2, lit_4627(r2)
/* 802607A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802607AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802607B0  3C 00 43 30 */	lis r0, 0x4330
/* 802607B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 802607B8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802607BC  EC 00 10 28 */	fsubs f0, f0, f2
/* 802607C0  EC 01 00 2A */	fadds f0, f1, f0
/* 802607C4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 802607C8  40 80 00 18 */	bge lbl_802607E0
/* 802607CC  EC 03 E8 2A */	fadds f0, f3, f29
/* 802607D0  D0 1D 00 80 */	stfs f0, 0x80(r29)
/* 802607D4  7F 63 DB 78 */	mr r3, r27
/* 802607D8  48 00 02 FD */	bl playBckAnimation__21dDlst_TimerScrnDraw_cFf
/* 802607DC  48 00 00 98 */	b lbl_80260874
lbl_802607E0:
/* 802607E0  FC 03 F0 40 */	fcmpo cr0, f3, f30
/* 802607E4  40 80 00 90 */	bge lbl_80260874
/* 802607E8  EC 03 E8 2A */	fadds f0, f3, f29
/* 802607EC  D0 1D 00 80 */	stfs f0, 0x80(r29)
/* 802607F0  7F 63 DB 78 */	mr r3, r27
/* 802607F4  48 00 02 E1 */	bl playBckAnimation__21dDlst_TimerScrnDraw_cFf
/* 802607F8  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 802607FC  EC 1E 00 28 */	fsubs f0, f30, f0
/* 80260800  FC 00 00 1E */	fctiwz f0, f0
/* 80260804  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80260808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026080C  A8 9F 0B AE */	lha r4, 0xbae(r31)
/* 80260810  7C 00 07 34 */	extsh r0, r0
/* 80260814  C8 62 B5 58 */	lfd f3, lit_4627(r2)
/* 80260818  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8026081C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80260820  3C 60 43 30 */	lis r3, 0x4330
/* 80260824  90 61 00 08 */	stw r3, 8(r1)
/* 80260828  C8 01 00 08 */	lfd f0, 8(r1)
/* 8026082C  EC 20 18 28 */	fsubs f1, f0, f3
/* 80260830  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80260834  90 61 00 18 */	stw r3, 0x18(r1)
/* 80260838  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8026083C  EC 00 18 28 */	fsubs f0, f0, f3
/* 80260840  EC 41 00 32 */	fmuls f2, f1, f0
/* 80260844  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80260848  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026084C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80260850  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80260854  EC 20 18 28 */	fsubs f1, f0, f3
/* 80260858  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8026085C  90 61 00 28 */	stw r3, 0x28(r1)
/* 80260860  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80260864  EC 00 18 28 */	fsubs f0, f0, f3
/* 80260868  EC 01 00 32 */	fmuls f0, f1, f0
/* 8026086C  EC 02 00 24 */	fdivs f0, f2, f0
/* 80260870  FF A0 00 90 */	fmr f29, f0
lbl_80260874:
/* 80260874  80 7B 00 20 */	lwz r3, 0x20(r27)
/* 80260878  FC 20 E8 90 */	fmr f1, f29
/* 8026087C  4B FF 4F 55 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80260880  88 1F 0B CA */	lbz r0, 0xbca(r31)
/* 80260884  28 00 00 01 */	cmplwi r0, 1
/* 80260888  40 82 00 70 */	bne lbl_802608F8
/* 8026088C  A8 1D 00 8A */	lha r0, 0x8a(r29)
/* 80260890  C8 42 B5 58 */	lfd f2, lit_4627(r2)
/* 80260894  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80260898  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8026089C  3C 80 43 30 */	lis r4, 0x4330
/* 802608A0  90 81 00 28 */	stw r4, 0x28(r1)
/* 802608A4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802608A8  EC 20 10 28 */	fsubs f1, f0, f2
/* 802608AC  C0 1F 0B A4 */	lfs f0, 0xba4(r31)
/* 802608B0  EC 61 00 2A */	fadds f3, f1, f0
/* 802608B4  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 802608B8  80 63 00 04 */	lwz r3, 4(r3)
/* 802608BC  A8 1D 00 88 */	lha r0, 0x88(r29)
/* 802608C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802608C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802608C8  90 81 00 20 */	stw r4, 0x20(r1)
/* 802608CC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802608D0  EC 20 10 28 */	fsubs f1, f0, f2
/* 802608D4  C0 1F 0B A0 */	lfs f0, 0xba0(r31)
/* 802608D8  EC 01 00 2A */	fadds f0, f1, f0
/* 802608DC  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 802608E0  D0 63 00 D8 */	stfs f3, 0xd8(r3)
/* 802608E4  81 83 00 00 */	lwz r12, 0(r3)
/* 802608E8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802608EC  7D 89 03 A6 */	mtctr r12
/* 802608F0  4E 80 04 21 */	bctrl 
/* 802608F4  48 00 00 84 */	b lbl_80260978
lbl_802608F8:
/* 802608F8  C0 3D 00 80 */	lfs f1, 0x80(r29)
/* 802608FC  C0 02 B5 70 */	lfs f0, lit_5227(r2)
/* 80260900  EC 41 00 28 */	fsubs f2, f1, f0
/* 80260904  C0 22 B5 94 */	lfs f1, lit_5325(r2)
/* 80260908  C0 02 B5 98 */	lfs f0, lit_5326(r2)
/* 8026090C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80260910  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80260914  EC 61 00 32 */	fmuls f3, f1, f0
/* 80260918  2C 1C 00 00 */	cmpwi r28, 0
/* 8026091C  40 82 00 08 */	bne lbl_80260924
/* 80260920  C0 62 B5 40 */	lfs f3, lit_3919(r2)
lbl_80260924:
/* 80260924  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 80260928  A8 1D 00 88 */	lha r0, 0x88(r29)
/* 8026092C  C8 42 B5 58 */	lfd f2, lit_4627(r2)
/* 80260930  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80260934  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80260938  3C 80 43 30 */	lis r4, 0x4330
/* 8026093C  90 81 00 28 */	stw r4, 0x28(r1)
/* 80260940  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80260944  EC 20 10 28 */	fsubs f1, f0, f2
/* 80260948  C0 1F 0B A0 */	lfs f0, 0xba0(r31)
/* 8026094C  EC 21 00 2A */	fadds f1, f1, f0
/* 80260950  A8 1D 00 8A */	lha r0, 0x8a(r29)
/* 80260954  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80260958  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026095C  90 81 00 20 */	stw r4, 0x20(r1)
/* 80260960  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80260964  EC 40 10 28 */	fsubs f2, f0, f2
/* 80260968  C0 1F 0B A4 */	lfs f0, 0xba4(r31)
/* 8026096C  EC 02 00 2A */	fadds f0, f2, f0
/* 80260970  EC 40 18 28 */	fsubs f2, f0, f3
/* 80260974  4B FF 3C 3D */	bl paneTrans__8CPaneMgrFff
lbl_80260978:
/* 80260978  C0 3F 0B 9C */	lfs f1, 0xb9c(r31)
/* 8026097C  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 80260980  80 63 00 04 */	lwz r3, 4(r3)
/* 80260984  C0 1F 0B 98 */	lfs f0, 0xb98(r31)
/* 80260988  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8026098C  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 80260990  81 83 00 00 */	lwz r12, 0(r3)
/* 80260994  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80260998  7D 89 03 A6 */	mtctr r12
/* 8026099C  4E 80 04 21 */	bctrl 
/* 802609A0  80 7B 00 08 */	lwz r3, 8(r27)
/* 802609A4  C0 22 B5 40 */	lfs f1, lit_3919(r2)
/* 802609A8  FC 40 08 90 */	fmr f2, f1
/* 802609AC  7F C4 F3 78 */	mr r4, r30
/* 802609B0  48 09 85 25 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 802609B4  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 802609B8  C0 02 B5 40 */	lfs f0, lit_3919(r2)
/* 802609BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802609C0  40 81 00 14 */	ble lbl_802609D4
/* 802609C4  7F 63 DB 78 */	mr r3, r27
/* 802609C8  7F 84 E3 78 */	mr r4, r28
/* 802609CC  48 00 01 89 */	bl drawPikari__21dDlst_TimerScrnDraw_cFi
/* 802609D0  48 00 00 98 */	b lbl_80260A68
lbl_802609D4:
/* 802609D4  C0 02 B5 50 */	lfs f0, lit_4125(r2)
/* 802609D8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802609DC  40 82 00 8C */	bne lbl_80260A68
/* 802609E0  88 1D 00 8C */	lbz r0, 0x8c(r29)
/* 802609E4  28 00 00 00 */	cmplwi r0, 0
/* 802609E8  40 82 00 44 */	bne lbl_80260A2C
/* 802609EC  C0 5D 00 80 */	lfs f2, 0x80(r29)
/* 802609F0  A8 1F 0B C8 */	lha r0, 0xbc8(r31)
/* 802609F4  C8 22 B5 58 */	lfd f1, lit_4627(r2)
/* 802609F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802609FC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80260A00  3C 00 43 30 */	lis r0, 0x4330
/* 80260A04  90 01 00 28 */	stw r0, 0x28(r1)
/* 80260A08  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80260A0C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80260A10  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80260A14  40 81 00 54 */	ble lbl_80260A68
/* 80260A18  C0 22 B5 9C */	lfs f1, lit_5327(r2)
/* 80260A1C  C0 1F 0B C4 */	lfs f0, 0xbc4(r31)
/* 80260A20  EC 01 00 28 */	fsubs f0, f1, f0
/* 80260A24  D0 1D 00 84 */	stfs f0, 0x84(r29)
/* 80260A28  48 00 00 40 */	b lbl_80260A68
lbl_80260A2C:
/* 80260A2C  C0 5D 00 80 */	lfs f2, 0x80(r29)
/* 80260A30  A8 1F 0B E4 */	lha r0, 0xbe4(r31)
/* 80260A34  C8 22 B5 58 */	lfd f1, lit_4627(r2)
/* 80260A38  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80260A3C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80260A40  3C 00 43 30 */	lis r0, 0x4330
/* 80260A44  90 01 00 28 */	stw r0, 0x28(r1)
/* 80260A48  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80260A4C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80260A50  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80260A54  40 81 00 14 */	ble lbl_80260A68
/* 80260A58  C0 22 B5 9C */	lfs f1, lit_5327(r2)
/* 80260A5C  C0 1F 0B E0 */	lfs f0, 0xbe0(r31)
/* 80260A60  EC 01 00 28 */	fsubs f0, f1, f0
/* 80260A64  D0 1D 00 84 */	stfs f0, 0x84(r29)
lbl_80260A68:
/* 80260A68  3B 9C 00 01 */	addi r28, r28, 1
/* 80260A6C  2C 1C 00 33 */	cmpwi r28, 0x33
/* 80260A70  3B 5A 00 10 */	addi r26, r26, 0x10
/* 80260A74  41 80 FC D8 */	blt lbl_8026074C
/* 80260A78  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80260A7C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80260A80  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80260A84  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80260A88  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 80260A8C  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80260A90  39 61 00 50 */	addi r11, r1, 0x50
/* 80260A94  48 10 17 89 */	bl _restgpr_26
/* 80260A98  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80260A9C  7C 08 03 A6 */	mtlr r0
/* 80260AA0  38 21 00 80 */	addi r1, r1, 0x80
/* 80260AA4  4E 80 00 20 */	blr 

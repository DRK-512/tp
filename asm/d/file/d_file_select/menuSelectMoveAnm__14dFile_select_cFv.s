lbl_80186F98:
/* 80186F98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80186F9C  7C 08 02 A6 */	mflr r0
/* 80186FA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80186FA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80186FA8  48 1D B2 35 */	bl _savegpr_29
/* 80186FAC  7C 7E 1B 78 */	mr r30, r3
/* 80186FB0  3B E0 00 01 */	li r31, 1
/* 80186FB4  88 03 02 67 */	lbz r0, 0x267(r3)
/* 80186FB8  28 00 00 FF */	cmplwi r0, 0xff
/* 80186FBC  41 82 00 CC */	beq lbl_80187088
/* 80186FC0  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80186FC4  7C BE 02 14 */	add r5, r30, r0
/* 80186FC8  80 85 03 4C */	lwz r4, 0x34c(r5)
/* 80186FCC  3C 60 80 3C */	lis r3, MenuSelStartFrameTbl@ha /* 0x803BA884@ha */
/* 80186FD0  38 63 A8 84 */	addi r3, r3, MenuSelStartFrameTbl@l /* 0x803BA884@l */
/* 80186FD4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80186FD8  7C 04 00 00 */	cmpw r4, r0
/* 80186FDC  41 82 00 AC */	beq lbl_80187088
/* 80186FE0  40 81 00 30 */	ble lbl_80187010
/* 80186FE4  38 04 FF FE */	addi r0, r4, -2
/* 80186FE8  90 05 03 4C */	stw r0, 0x34c(r5)
/* 80186FEC  88 1E 02 67 */	lbz r0, 0x267(r30)
/* 80186FF0  54 04 10 3A */	slwi r4, r0, 2
/* 80186FF4  7C BE 22 14 */	add r5, r30, r4
/* 80186FF8  80 05 03 4C */	lwz r0, 0x34c(r5)
/* 80186FFC  7C 63 20 2E */	lwzx r3, r3, r4
/* 80187000  7C 00 18 00 */	cmpw r0, r3
/* 80187004  40 80 00 34 */	bge lbl_80187038
/* 80187008  90 65 03 4C */	stw r3, 0x34c(r5)
/* 8018700C  48 00 00 2C */	b lbl_80187038
lbl_80187010:
/* 80187010  38 04 00 02 */	addi r0, r4, 2
/* 80187014  90 05 03 4C */	stw r0, 0x34c(r5)
/* 80187018  88 1E 02 67 */	lbz r0, 0x267(r30)
/* 8018701C  54 04 10 3A */	slwi r4, r0, 2
/* 80187020  7C BE 22 14 */	add r5, r30, r4
/* 80187024  80 05 03 4C */	lwz r0, 0x34c(r5)
/* 80187028  7C 63 20 2E */	lwzx r3, r3, r4
/* 8018702C  7C 00 18 00 */	cmpw r0, r3
/* 80187030  40 81 00 08 */	ble lbl_80187038
/* 80187034  90 65 03 4C */	stw r3, 0x34c(r5)
lbl_80187038:
/* 80187038  88 1E 02 67 */	lbz r0, 0x267(r30)
/* 8018703C  54 00 10 3A */	slwi r0, r0, 2
/* 80187040  7C 7E 02 14 */	add r3, r30, r0
/* 80187044  80 03 03 4C */	lwz r0, 0x34c(r3)
/* 80187048  C8 22 9F 38 */	lfd f1, lit_4342(r2)
/* 8018704C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80187050  90 01 00 0C */	stw r0, 0xc(r1)
/* 80187054  3C 00 43 30 */	lis r0, 0x4330
/* 80187058  90 01 00 08 */	stw r0, 8(r1)
/* 8018705C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80187060  EC 00 08 28 */	fsubs f0, f0, f1
/* 80187064  80 7E 03 28 */	lwz r3, 0x328(r30)
/* 80187068  D0 03 00 08 */	stfs f0, 8(r3)
/* 8018706C  88 1E 02 67 */	lbz r0, 0x267(r30)
/* 80187070  54 00 10 3A */	slwi r0, r0, 2
/* 80187074  7C 7E 02 14 */	add r3, r30, r0
/* 80187078  80 63 03 40 */	lwz r3, 0x340(r3)
/* 8018707C  80 63 00 04 */	lwz r3, 4(r3)
/* 80187080  48 17 0F 4D */	bl animationTransform__7J2DPaneFv
/* 80187084  3B E0 00 00 */	li r31, 0
lbl_80187088:
/* 80187088  3B A0 00 01 */	li r29, 1
/* 8018708C  38 60 00 01 */	li r3, 1
/* 80187090  88 1E 02 66 */	lbz r0, 0x266(r30)
/* 80187094  28 00 00 FF */	cmplwi r0, 0xff
/* 80187098  41 82 00 D8 */	beq lbl_80187170
/* 8018709C  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801870A0  7C BE 02 14 */	add r5, r30, r0
/* 801870A4  80 85 03 4C */	lwz r4, 0x34c(r5)
/* 801870A8  3C 60 80 3C */	lis r3, MenuSelEndFrameTbl@ha /* 0x803BA890@ha */
/* 801870AC  38 63 A8 90 */	addi r3, r3, MenuSelEndFrameTbl@l /* 0x803BA890@l */
/* 801870B0  7C 03 00 2E */	lwzx r0, r3, r0
/* 801870B4  7C 04 00 00 */	cmpw r4, r0
/* 801870B8  41 82 00 AC */	beq lbl_80187164
/* 801870BC  40 80 00 30 */	bge lbl_801870EC
/* 801870C0  38 04 00 02 */	addi r0, r4, 2
/* 801870C4  90 05 03 4C */	stw r0, 0x34c(r5)
/* 801870C8  88 1E 02 66 */	lbz r0, 0x266(r30)
/* 801870CC  54 04 10 3A */	slwi r4, r0, 2
/* 801870D0  7C BE 22 14 */	add r5, r30, r4
/* 801870D4  80 05 03 4C */	lwz r0, 0x34c(r5)
/* 801870D8  7C 63 20 2E */	lwzx r3, r3, r4
/* 801870DC  7C 00 18 00 */	cmpw r0, r3
/* 801870E0  40 81 00 34 */	ble lbl_80187114
/* 801870E4  90 65 03 4C */	stw r3, 0x34c(r5)
/* 801870E8  48 00 00 2C */	b lbl_80187114
lbl_801870EC:
/* 801870EC  38 04 FF FE */	addi r0, r4, -2
/* 801870F0  90 05 03 4C */	stw r0, 0x34c(r5)
/* 801870F4  88 1E 02 66 */	lbz r0, 0x266(r30)
/* 801870F8  54 04 10 3A */	slwi r4, r0, 2
/* 801870FC  7C BE 22 14 */	add r5, r30, r4
/* 80187100  80 05 03 4C */	lwz r0, 0x34c(r5)
/* 80187104  7C 63 20 2E */	lwzx r3, r3, r4
/* 80187108  7C 00 18 00 */	cmpw r0, r3
/* 8018710C  40 80 00 08 */	bge lbl_80187114
/* 80187110  90 65 03 4C */	stw r3, 0x34c(r5)
lbl_80187114:
/* 80187114  88 1E 02 66 */	lbz r0, 0x266(r30)
/* 80187118  54 00 10 3A */	slwi r0, r0, 2
/* 8018711C  7C 7E 02 14 */	add r3, r30, r0
/* 80187120  80 03 03 4C */	lwz r0, 0x34c(r3)
/* 80187124  C8 22 9F 38 */	lfd f1, lit_4342(r2)
/* 80187128  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8018712C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80187130  3C 00 43 30 */	lis r0, 0x4330
/* 80187134  90 01 00 08 */	stw r0, 8(r1)
/* 80187138  C8 01 00 08 */	lfd f0, 8(r1)
/* 8018713C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80187140  80 7E 03 2C */	lwz r3, 0x32c(r30)
/* 80187144  D0 03 00 08 */	stfs f0, 8(r3)
/* 80187148  88 1E 02 66 */	lbz r0, 0x266(r30)
/* 8018714C  54 00 10 3A */	slwi r0, r0, 2
/* 80187150  7C 7E 02 14 */	add r3, r30, r0
/* 80187154  80 63 03 40 */	lwz r3, 0x340(r3)
/* 80187158  80 63 00 04 */	lwz r3, 4(r3)
/* 8018715C  48 17 0E 71 */	bl animationTransform__7J2DPaneFv
/* 80187160  3B A0 00 00 */	li r29, 0
lbl_80187164:
/* 80187164  7F C3 F3 78 */	mr r3, r30
/* 80187168  88 9E 02 66 */	lbz r4, 0x266(r30)
/* 8018716C  48 00 67 5D */	bl menuWakuAlpahAnm__14dFile_select_cFUc
lbl_80187170:
/* 80187170  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80187174  28 00 00 01 */	cmplwi r0, 1
/* 80187178  40 82 00 8C */	bne lbl_80187204
/* 8018717C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80187180  28 00 00 01 */	cmplwi r0, 1
/* 80187184  40 82 00 80 */	bne lbl_80187204
/* 80187188  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018718C  28 00 00 01 */	cmplwi r0, 1
/* 80187190  40 82 00 74 */	bne lbl_80187204
/* 80187194  88 1E 02 67 */	lbz r0, 0x267(r30)
/* 80187198  28 00 00 FF */	cmplwi r0, 0xff
/* 8018719C  41 82 00 30 */	beq lbl_801871CC
/* 801871A0  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801871A4  7C 7E 02 14 */	add r3, r30, r0
/* 801871A8  80 63 03 40 */	lwz r3, 0x340(r3)
/* 801871AC  80 63 00 04 */	lwz r3, 4(r3)
/* 801871B0  38 80 00 00 */	li r4, 0
/* 801871B4  81 83 00 00 */	lwz r12, 0(r3)
/* 801871B8  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801871BC  7D 89 03 A6 */	mtctr r12
/* 801871C0  4E 80 04 21 */	bctrl 
/* 801871C4  7F C3 F3 78 */	mr r3, r30
/* 801871C8  48 00 68 49 */	bl menuCursorShow__14dFile_select_cFv
lbl_801871CC:
/* 801871CC  88 1E 02 66 */	lbz r0, 0x266(r30)
/* 801871D0  28 00 00 FF */	cmplwi r0, 0xff
/* 801871D4  41 82 00 28 */	beq lbl_801871FC
/* 801871D8  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801871DC  7C 7E 02 14 */	add r3, r30, r0
/* 801871E0  80 63 03 40 */	lwz r3, 0x340(r3)
/* 801871E4  80 63 00 04 */	lwz r3, 4(r3)
/* 801871E8  38 80 00 00 */	li r4, 0
/* 801871EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801871F0  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801871F4  7D 89 03 A6 */	mtctr r12
/* 801871F8  4E 80 04 21 */	bctrl 
lbl_801871FC:
/* 801871FC  38 00 00 08 */	li r0, 8
/* 80187200  98 1E 02 6F */	stb r0, 0x26f(r30)
lbl_80187204:
/* 80187204  39 61 00 20 */	addi r11, r1, 0x20
/* 80187208  48 1D B0 21 */	bl _restgpr_29
/* 8018720C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80187210  7C 08 03 A6 */	mtlr r0
/* 80187214  38 21 00 20 */	addi r1, r1, 0x20
/* 80187218  4E 80 00 20 */	blr 

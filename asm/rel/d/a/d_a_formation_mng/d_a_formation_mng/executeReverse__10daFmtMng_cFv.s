lbl_808368A4:
/* 808368A4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 808368A8  7C 08 02 A6 */	mflr r0
/* 808368AC  90 01 00 54 */	stw r0, 0x54(r1)
/* 808368B0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 808368B4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 808368B8  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 808368BC  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 808368C0  39 61 00 30 */	addi r11, r1, 0x30
/* 808368C4  4B B2 B9 0D */	bl _savegpr_26
/* 808368C8  7C 7B 1B 78 */	mr r27, r3
/* 808368CC  3C 60 80 83 */	lis r3, M_attr__10daFmtMng_c@ha /* 0x808378A8@ha */
/* 808368D0  3B E3 78 A8 */	addi r31, r3, M_attr__10daFmtMng_c@l /* 0x808378A8@l */
/* 808368D4  83 BB 05 6C */	lwz r29, 0x56c(r27)
/* 808368D8  3B C0 00 01 */	li r30, 1
/* 808368DC  38 00 00 00 */	li r0, 0
/* 808368E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 808368E4  3B 40 00 00 */	li r26, 0
/* 808368E8  48 00 00 5C */	b lbl_80836944
lbl_808368EC:
/* 808368EC  80 7D 00 00 */	lwz r3, 0(r29)
/* 808368F0  38 81 00 0C */	addi r4, r1, 0xc
/* 808368F4  4B 7E 30 C9 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 808368F8  83 81 00 0C */	lwz r28, 0xc(r1)
/* 808368FC  28 1C 00 00 */	cmplwi r28, 0
/* 80836900  41 82 00 38 */	beq lbl_80836938
/* 80836904  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 80836908  A8 9D 00 1C */	lha r4, 0x1c(r29)
/* 8083690C  4B A3 A5 19 */	bl cLib_distanceAngleS__Fss
/* 80836910  2C 03 08 00 */	cmpwi r3, 0x800
/* 80836914  41 81 00 10 */	bgt lbl_80836924
/* 80836918  A8 1D 00 1C */	lha r0, 0x1c(r29)
/* 8083691C  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80836920  48 00 00 1C */	b lbl_8083693C
lbl_80836924:
/* 80836924  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 80836928  38 03 F8 00 */	addi r0, r3, -2048
/* 8083692C  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80836930  3B C0 00 00 */	li r30, 0
/* 80836934  48 00 00 08 */	b lbl_8083693C
lbl_80836938:
/* 80836938  3B C0 00 00 */	li r30, 0
lbl_8083693C:
/* 8083693C  3B 5A 00 01 */	addi r26, r26, 1
/* 80836940  3B BD 00 20 */	addi r29, r29, 0x20
lbl_80836944:
/* 80836944  83 9B 05 88 */	lwz r28, 0x588(r27)
/* 80836948  80 1B 05 84 */	lwz r0, 0x584(r27)
/* 8083694C  7C 1C 01 D6 */	mullw r0, r28, r0
/* 80836950  7C 1A 00 00 */	cmpw r26, r0
/* 80836954  41 80 FF 98 */	blt lbl_808368EC
/* 80836958  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8083695C  41 82 02 A0 */	beq lbl_80836BFC
/* 80836960  83 5B 05 68 */	lwz r26, 0x568(r27)
/* 80836964  57 83 28 34 */	slwi r3, r28, 5
/* 80836968  38 63 00 10 */	addi r3, r3, 0x10
/* 8083696C  4B A9 83 59 */	bl __nwa__FUl
/* 80836970  3C 80 80 83 */	lis r4, __ct__8FmtPos_cFv@ha /* 0x80836C60@ha */
/* 80836974  38 84 6C 60 */	addi r4, r4, __ct__8FmtPos_cFv@l /* 0x80836C60@l */
/* 80836978  3C A0 80 83 */	lis r5, __dt__8FmtPos_cFv@ha /* 0x80836C24@ha */
/* 8083697C  38 A5 6C 24 */	addi r5, r5, __dt__8FmtPos_cFv@l /* 0x80836C24@l */
/* 80836980  38 C0 00 20 */	li r6, 0x20
/* 80836984  7F 87 E3 78 */	mr r7, r28
/* 80836988  4B B2 B5 8D */	bl __construct_new_array
/* 8083698C  7C 7C 1B 78 */	mr r28, r3
/* 80836990  38 60 00 00 */	li r3, 0
/* 80836994  48 00 00 30 */	b lbl_808369C4
lbl_80836998:
/* 80836998  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 8083699C  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 808369A0  C0 1A 00 14 */	lfs f0, 0x14(r26)
/* 808369A4  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 808369A8  C0 1A 00 18 */	lfs f0, 0x18(r26)
/* 808369AC  D0 1C 00 18 */	stfs f0, 0x18(r28)
/* 808369B0  A8 1A 00 1C */	lha r0, 0x1c(r26)
/* 808369B4  B0 1C 00 1C */	sth r0, 0x1c(r28)
/* 808369B8  38 63 00 01 */	addi r3, r3, 1
/* 808369BC  3B 5A 00 20 */	addi r26, r26, 0x20
/* 808369C0  3B 9C 00 20 */	addi r28, r28, 0x20
lbl_808369C4:
/* 808369C4  80 1B 05 88 */	lwz r0, 0x588(r27)
/* 808369C8  7C 03 00 00 */	cmpw r3, r0
/* 808369CC  41 80 FF CC */	blt lbl_80836998
/* 808369D0  83 DB 05 68 */	lwz r30, 0x568(r27)
/* 808369D4  3B A0 00 00 */	li r29, 0
/* 808369D8  C3 DF 00 50 */	lfs f30, 0x50(r31)
/* 808369DC  C3 FF 00 24 */	lfs f31, 0x24(r31)
/* 808369E0  3B 9C FF E0 */	addi r28, r28, -32
/* 808369E4  48 00 01 C4 */	b lbl_80836BA8
lbl_808369E8:
/* 808369E8  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 808369EC  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 808369F0  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 808369F4  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 808369F8  C0 1C 00 18 */	lfs f0, 0x18(r28)
/* 808369FC  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 80836A00  A8 7C 00 1C */	lha r3, 0x1c(r28)
/* 80836A04  3C 63 00 01 */	addis r3, r3, 1
/* 80836A08  38 03 80 00 */	addi r0, r3, -32768
/* 80836A0C  B0 1E 00 1C */	sth r0, 0x1c(r30)
/* 80836A10  88 1E 00 0C */	lbz r0, 0xc(r30)
/* 80836A14  7C 00 07 75 */	extsb. r0, r0
/* 80836A18  38 00 00 01 */	li r0, 1
/* 80836A1C  40 81 00 08 */	ble lbl_80836A24
/* 80836A20  38 00 FF FF */	li r0, -1
lbl_80836A24:
/* 80836A24  98 1E 00 0C */	stb r0, 0xc(r30)
/* 80836A28  88 1E 00 0C */	lbz r0, 0xc(r30)
/* 80836A2C  7C 00 07 75 */	extsb. r0, r0
/* 80836A30  40 81 00 3C */	ble lbl_80836A6C
/* 80836A34  80 7E 00 04 */	lwz r3, 4(r30)
/* 80836A38  80 9E 00 00 */	lwz r4, 0(r30)
/* 80836A3C  A0 04 00 00 */	lhz r0, 0(r4)
/* 80836A40  38 63 00 01 */	addi r3, r3, 1
/* 80836A44  7C 03 00 00 */	cmpw r3, r0
/* 80836A48  41 80 00 1C */	blt lbl_80836A64
/* 80836A4C  88 04 00 05 */	lbz r0, 5(r4)
/* 80836A50  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80836A54  41 82 00 0C */	beq lbl_80836A60
/* 80836A58  38 60 00 00 */	li r3, 0
/* 80836A5C  48 00 00 08 */	b lbl_80836A64
lbl_80836A60:
/* 80836A60  38 63 FF FF */	addi r3, r3, -1
lbl_80836A64:
/* 80836A64  90 7E 00 04 */	stw r3, 4(r30)
/* 80836A68  48 00 00 34 */	b lbl_80836A9C
lbl_80836A6C:
/* 80836A6C  80 7E 00 04 */	lwz r3, 4(r30)
/* 80836A70  34 63 FF FF */	addic. r3, r3, -1
/* 80836A74  40 80 00 24 */	bge lbl_80836A98
/* 80836A78  80 7E 00 00 */	lwz r3, 0(r30)
/* 80836A7C  88 03 00 05 */	lbz r0, 5(r3)
/* 80836A80  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80836A84  41 82 00 10 */	beq lbl_80836A94
/* 80836A88  A0 63 00 00 */	lhz r3, 0(r3)
/* 80836A8C  38 63 FF FF */	addi r3, r3, -1
/* 80836A90  48 00 00 08 */	b lbl_80836A98
lbl_80836A94:
/* 80836A94  38 60 00 00 */	li r3, 0
lbl_80836A98:
/* 80836A98  90 7E 00 04 */	stw r3, 4(r30)
lbl_80836A9C:
/* 80836A9C  D3 DE 00 08 */	stfs f30, 8(r30)
/* 80836AA0  80 7E 00 00 */	lwz r3, 0(r30)
/* 80836AA4  80 9E 00 04 */	lwz r4, 4(r30)
/* 80836AA8  4B 81 AD 09 */	bl dPath_GetPnt__FPC5dPathi
/* 80836AAC  38 83 00 04 */	addi r4, r3, 4
/* 80836AB0  38 7E 00 10 */	addi r3, r30, 0x10
/* 80836AB4  4B B1 08 E9 */	bl PSVECSquareDistance
/* 80836AB8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80836ABC  40 81 00 58 */	ble lbl_80836B14
/* 80836AC0  FC 00 08 34 */	frsqrte f0, f1
/* 80836AC4  C8 9F 00 28 */	lfd f4, 0x28(r31)
/* 80836AC8  FC 44 00 32 */	fmul f2, f4, f0
/* 80836ACC  C8 7F 00 30 */	lfd f3, 0x30(r31)
/* 80836AD0  FC 00 00 32 */	fmul f0, f0, f0
/* 80836AD4  FC 01 00 32 */	fmul f0, f1, f0
/* 80836AD8  FC 03 00 28 */	fsub f0, f3, f0
/* 80836ADC  FC 02 00 32 */	fmul f0, f2, f0
/* 80836AE0  FC 44 00 32 */	fmul f2, f4, f0
/* 80836AE4  FC 00 00 32 */	fmul f0, f0, f0
/* 80836AE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80836AEC  FC 03 00 28 */	fsub f0, f3, f0
/* 80836AF0  FC 02 00 32 */	fmul f0, f2, f0
/* 80836AF4  FC 44 00 32 */	fmul f2, f4, f0
/* 80836AF8  FC 00 00 32 */	fmul f0, f0, f0
/* 80836AFC  FC 01 00 32 */	fmul f0, f1, f0
/* 80836B00  FC 03 00 28 */	fsub f0, f3, f0
/* 80836B04  FC 02 00 32 */	fmul f0, f2, f0
/* 80836B08  FC 21 00 32 */	fmul f1, f1, f0
/* 80836B0C  FC 20 08 18 */	frsp f1, f1
/* 80836B10  48 00 00 88 */	b lbl_80836B98
lbl_80836B14:
/* 80836B14  C8 1F 00 38 */	lfd f0, 0x38(r31)
/* 80836B18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80836B1C  40 80 00 10 */	bge lbl_80836B2C
/* 80836B20  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80836B24  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80836B28  48 00 00 70 */	b lbl_80836B98
lbl_80836B2C:
/* 80836B2C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80836B30  80 81 00 08 */	lwz r4, 8(r1)
/* 80836B34  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80836B38  3C 00 7F 80 */	lis r0, 0x7f80
/* 80836B3C  7C 03 00 00 */	cmpw r3, r0
/* 80836B40  41 82 00 14 */	beq lbl_80836B54
/* 80836B44  40 80 00 40 */	bge lbl_80836B84
/* 80836B48  2C 03 00 00 */	cmpwi r3, 0
/* 80836B4C  41 82 00 20 */	beq lbl_80836B6C
/* 80836B50  48 00 00 34 */	b lbl_80836B84
lbl_80836B54:
/* 80836B54  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80836B58  41 82 00 0C */	beq lbl_80836B64
/* 80836B5C  38 00 00 01 */	li r0, 1
/* 80836B60  48 00 00 28 */	b lbl_80836B88
lbl_80836B64:
/* 80836B64  38 00 00 02 */	li r0, 2
/* 80836B68  48 00 00 20 */	b lbl_80836B88
lbl_80836B6C:
/* 80836B6C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80836B70  41 82 00 0C */	beq lbl_80836B7C
/* 80836B74  38 00 00 05 */	li r0, 5
/* 80836B78  48 00 00 10 */	b lbl_80836B88
lbl_80836B7C:
/* 80836B7C  38 00 00 03 */	li r0, 3
/* 80836B80  48 00 00 08 */	b lbl_80836B88
lbl_80836B84:
/* 80836B84  38 00 00 04 */	li r0, 4
lbl_80836B88:
/* 80836B88  2C 00 00 01 */	cmpwi r0, 1
/* 80836B8C  40 82 00 0C */	bne lbl_80836B98
/* 80836B90  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80836B94  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80836B98:
/* 80836B98  D0 3E 00 08 */	stfs f1, 8(r30)
/* 80836B9C  3B BD 00 01 */	addi r29, r29, 1
/* 80836BA0  3B DE 00 20 */	addi r30, r30, 0x20
/* 80836BA4  3B 9C FF E0 */	addi r28, r28, -32
lbl_80836BA8:
/* 80836BA8  80 1B 05 88 */	lwz r0, 0x588(r27)
/* 80836BAC  7C 1D 00 00 */	cmpw r29, r0
/* 80836BB0  41 80 FE 38 */	blt lbl_808369E8
/* 80836BB4  38 7C 00 20 */	addi r3, r28, 0x20
/* 80836BB8  3C 80 80 83 */	lis r4, __dt__8FmtPos_cFv@ha /* 0x80836C24@ha */
/* 80836BBC  38 84 6C 24 */	addi r4, r4, __dt__8FmtPos_cFv@l /* 0x80836C24@l */
/* 80836BC0  4B B2 B0 AD */	bl __destroy_new_array
/* 80836BC4  80 1B 05 78 */	lwz r0, 0x578(r27)
/* 80836BC8  90 1B 05 7C */	stw r0, 0x57c(r27)
/* 80836BCC  38 00 00 01 */	li r0, 1
/* 80836BD0  90 1B 05 78 */	stw r0, 0x578(r27)
/* 80836BD4  80 1B 05 78 */	lwz r0, 0x578(r27)
/* 80836BD8  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80836BDC  3C 60 80 83 */	lis r3, ActionTable__10daFmtMng_c@ha /* 0x808379C4@ha */
/* 80836BE0  38 03 79 C4 */	addi r0, r3, ActionTable__10daFmtMng_c@l /* 0x808379C4@l */
/* 80836BE4  7C 00 22 14 */	add r0, r0, r4
/* 80836BE8  90 1B 05 74 */	stw r0, 0x574(r27)
/* 80836BEC  7F 63 DB 78 */	mr r3, r27
/* 80836BF0  81 9B 05 74 */	lwz r12, 0x574(r27)
/* 80836BF4  4B B2 B4 91 */	bl __ptmf_scall
/* 80836BF8  60 00 00 00 */	nop 
lbl_80836BFC:
/* 80836BFC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80836C00  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80836C04  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80836C08  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80836C0C  39 61 00 30 */	addi r11, r1, 0x30
/* 80836C10  4B B2 B6 0D */	bl _restgpr_26
/* 80836C14  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80836C18  7C 08 03 A6 */	mtlr r0
/* 80836C1C  38 21 00 50 */	addi r1, r1, 0x50
/* 80836C20  4E 80 00 20 */	blr 

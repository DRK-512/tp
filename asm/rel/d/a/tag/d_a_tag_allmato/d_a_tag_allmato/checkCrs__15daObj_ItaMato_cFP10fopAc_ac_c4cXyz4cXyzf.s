lbl_804891BC:
/* 804891BC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804891C0  7C 08 02 A6 */	mflr r0
/* 804891C4  90 01 00 64 */	stw r0, 0x64(r1)
/* 804891C8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804891CC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804891D0  39 61 00 50 */	addi r11, r1, 0x50
/* 804891D4  4B ED 90 05 */	bl _savegpr_28
/* 804891D8  7C 7D 1B 78 */	mr r29, r3
/* 804891DC  7C BE 2B 78 */	mr r30, r5
/* 804891E0  7C DF 33 78 */	mr r31, r6
/* 804891E4  FF E0 08 90 */	fmr f31, f1
/* 804891E8  3C 60 80 49 */	lis r3, lit_4025@ha /* 0x804896E4@ha */
/* 804891EC  3B 83 96 E4 */	addi r28, r3, lit_4025@l /* 0x804896E4@l */
/* 804891F0  3C 60 80 49 */	lis r3, __vt__8cM3dGSph@ha /* 0x80489858@ha */
/* 804891F4  38 03 98 58 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80489858@l */
/* 804891F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804891FC  88 1D 0A 16 */	lbz r0, 0xa16(r29)
/* 80489200  28 00 00 00 */	cmplwi r0, 0
/* 80489204  40 82 00 10 */	bne lbl_80489214
/* 80489208  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 8048920C  2C 00 00 00 */	cmpwi r0, 0
/* 80489210  40 82 00 18 */	bne lbl_80489228
lbl_80489214:
/* 80489214  3C 60 80 49 */	lis r3, __vt__8cM3dGSph@ha /* 0x80489858@ha */
/* 80489218  38 03 98 58 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80489858@l */
/* 8048921C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80489220  38 60 00 00 */	li r3, 0
/* 80489224  48 00 01 80 */	b lbl_804893A4
lbl_80489228:
/* 80489228  34 7D 09 10 */	addic. r3, r29, 0x910
/* 8048922C  41 82 00 08 */	beq lbl_80489234
/* 80489230  38 63 00 20 */	addi r3, r3, 0x20
lbl_80489234:
/* 80489234  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80489238  34 9D 09 10 */	addic. r4, r29, 0x910
/* 8048923C  41 82 00 08 */	beq lbl_80489244
/* 80489240  38 84 00 20 */	addi r4, r4, 0x20
lbl_80489244:
/* 80489244  38 61 00 24 */	addi r3, r1, 0x24
/* 80489248  C0 1C 00 4C */	lfs f0, 0x4c(r28)
/* 8048924C  EC 21 00 2A */	fadds f1, f1, f0
/* 80489250  4B DE 64 15 */	bl Set__8cM3dGSphFRC4cXyzf
/* 80489254  38 61 00 18 */	addi r3, r1, 0x18
/* 80489258  7F C4 F3 78 */	mr r4, r30
/* 8048925C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80489260  4B DD D8 D5 */	bl __mi__4cXyzCFRC3Vec
/* 80489264  38 61 00 18 */	addi r3, r1, 0x18
/* 80489268  4B EB DE D1 */	bl PSVECSquareMag
/* 8048926C  C0 1C 00 20 */	lfs f0, 0x20(r28)
/* 80489270  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80489274  40 81 00 58 */	ble lbl_804892CC
/* 80489278  FC 00 08 34 */	frsqrte f0, f1
/* 8048927C  C8 9C 00 28 */	lfd f4, 0x28(r28)
/* 80489280  FC 44 00 32 */	fmul f2, f4, f0
/* 80489284  C8 7C 00 30 */	lfd f3, 0x30(r28)
/* 80489288  FC 00 00 32 */	fmul f0, f0, f0
/* 8048928C  FC 01 00 32 */	fmul f0, f1, f0
/* 80489290  FC 03 00 28 */	fsub f0, f3, f0
/* 80489294  FC 02 00 32 */	fmul f0, f2, f0
/* 80489298  FC 44 00 32 */	fmul f2, f4, f0
/* 8048929C  FC 00 00 32 */	fmul f0, f0, f0
/* 804892A0  FC 01 00 32 */	fmul f0, f1, f0
/* 804892A4  FC 03 00 28 */	fsub f0, f3, f0
/* 804892A8  FC 02 00 32 */	fmul f0, f2, f0
/* 804892AC  FC 44 00 32 */	fmul f2, f4, f0
/* 804892B0  FC 00 00 32 */	fmul f0, f0, f0
/* 804892B4  FC 01 00 32 */	fmul f0, f1, f0
/* 804892B8  FC 03 00 28 */	fsub f0, f3, f0
/* 804892BC  FC 02 00 32 */	fmul f0, f2, f0
/* 804892C0  FC 21 00 32 */	fmul f1, f1, f0
/* 804892C4  FC 20 08 18 */	frsp f1, f1
/* 804892C8  48 00 00 88 */	b lbl_80489350
lbl_804892CC:
/* 804892CC  C8 1C 00 38 */	lfd f0, 0x38(r28)
/* 804892D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804892D4  40 80 00 10 */	bge lbl_804892E4
/* 804892D8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804892DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804892E0  48 00 00 70 */	b lbl_80489350
lbl_804892E4:
/* 804892E4  D0 21 00 08 */	stfs f1, 8(r1)
/* 804892E8  80 81 00 08 */	lwz r4, 8(r1)
/* 804892EC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804892F0  3C 00 7F 80 */	lis r0, 0x7f80
/* 804892F4  7C 03 00 00 */	cmpw r3, r0
/* 804892F8  41 82 00 14 */	beq lbl_8048930C
/* 804892FC  40 80 00 40 */	bge lbl_8048933C
/* 80489300  2C 03 00 00 */	cmpwi r3, 0
/* 80489304  41 82 00 20 */	beq lbl_80489324
/* 80489308  48 00 00 34 */	b lbl_8048933C
lbl_8048930C:
/* 8048930C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80489310  41 82 00 0C */	beq lbl_8048931C
/* 80489314  38 00 00 01 */	li r0, 1
/* 80489318  48 00 00 28 */	b lbl_80489340
lbl_8048931C:
/* 8048931C  38 00 00 02 */	li r0, 2
/* 80489320  48 00 00 20 */	b lbl_80489340
lbl_80489324:
/* 80489324  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80489328  41 82 00 0C */	beq lbl_80489334
/* 8048932C  38 00 00 05 */	li r0, 5
/* 80489330  48 00 00 10 */	b lbl_80489340
lbl_80489334:
/* 80489334  38 00 00 03 */	li r0, 3
/* 80489338  48 00 00 08 */	b lbl_80489340
lbl_8048933C:
/* 8048933C  38 00 00 04 */	li r0, 4
lbl_80489340:
/* 80489340  2C 00 00 01 */	cmpwi r0, 1
/* 80489344  40 82 00 0C */	bne lbl_80489350
/* 80489348  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8048934C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80489350:
/* 80489350  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80489354  40 80 00 40 */	bge lbl_80489394
/* 80489358  38 7D 09 44 */	addi r3, r29, 0x944
/* 8048935C  7F C4 F3 78 */	mr r4, r30
/* 80489360  7F E5 FB 78 */	mr r5, r31
/* 80489364  4B DE 5F 85 */	bl SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 80489368  38 7D 09 44 */	addi r3, r29, 0x944
/* 8048936C  38 81 00 24 */	addi r4, r1, 0x24
/* 80489370  38 A1 00 0C */	addi r5, r1, 0xc
/* 80489374  4B DE 1F 0D */	bl cM3d_Cross_LinSph__FPC8cM3dGLinPC8cM3dGSphP3Vec
/* 80489378  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8048937C  41 82 00 18 */	beq lbl_80489394
/* 80489380  3C 60 80 49 */	lis r3, __vt__8cM3dGSph@ha /* 0x80489858@ha */
/* 80489384  38 03 98 58 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80489858@l */
/* 80489388  90 01 00 34 */	stw r0, 0x34(r1)
/* 8048938C  38 60 00 03 */	li r3, 3
/* 80489390  48 00 00 14 */	b lbl_804893A4
lbl_80489394:
/* 80489394  3C 60 80 49 */	lis r3, __vt__8cM3dGSph@ha /* 0x80489858@ha */
/* 80489398  38 03 98 58 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80489858@l */
/* 8048939C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804893A0  38 60 00 00 */	li r3, 0
lbl_804893A4:
/* 804893A4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804893A8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804893AC  39 61 00 50 */	addi r11, r1, 0x50
/* 804893B0  4B ED 8E 75 */	bl _restgpr_28
/* 804893B4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804893B8  7C 08 03 A6 */	mtlr r0
/* 804893BC  38 21 00 60 */	addi r1, r1, 0x60
/* 804893C0  4E 80 00 20 */	blr 

lbl_80805FF0:
/* 80805FF0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80805FF4  7C 08 02 A6 */	mflr r0
/* 80805FF8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80805FFC  39 61 00 40 */	addi r11, r1, 0x40
/* 80806000  4B B5 C1 DD */	bl _savegpr_29
/* 80806004  7C 7E 1B 78 */	mr r30, r3
/* 80806008  3C 80 80 80 */	lis r4, lit_3941@ha /* 0x80807C9C@ha */
/* 8080600C  3B E4 7C 9C */	addi r31, r4, lit_3941@l /* 0x80807C9C@l */
/* 80806010  A8 03 06 70 */	lha r0, 0x670(r3)
/* 80806014  2C 00 00 02 */	cmpwi r0, 2
/* 80806018  41 82 01 20 */	beq lbl_80806138
/* 8080601C  40 80 00 14 */	bge lbl_80806030
/* 80806020  2C 00 00 00 */	cmpwi r0, 0
/* 80806024  41 82 00 18 */	beq lbl_8080603C
/* 80806028  40 80 00 30 */	bge lbl_80806058
/* 8080602C  48 00 02 9C */	b lbl_808062C8
lbl_80806030:
/* 80806030  2C 00 00 04 */	cmpwi r0, 4
/* 80806034  40 80 02 94 */	bge lbl_808062C8
/* 80806038  48 00 01 68 */	b lbl_808061A0
lbl_8080603C:
/* 8080603C  38 80 00 05 */	li r4, 5
/* 80806040  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80806044  38 A0 00 02 */	li r5, 2
/* 80806048  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8080604C  4B FF E9 99 */	bl anm_init__FP10e_yk_classifUcf
/* 80806050  38 00 00 01 */	li r0, 1
/* 80806054  B0 1E 06 70 */	sth r0, 0x670(r30)
lbl_80806058:
/* 80806058  A8 1E 06 6C */	lha r0, 0x66c(r30)
/* 8080605C  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 80806060  40 82 00 40 */	bne lbl_808060A0
/* 80806064  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80806068  4B A6 18 ED */	bl cM_rndF__Ff
/* 8080606C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80806070  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80806074  40 80 00 2C */	bge lbl_808060A0
/* 80806078  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701C8@ha */
/* 8080607C  38 03 01 C8 */	addi r0, r3, 0x01C8 /* 0x000701C8@l */
/* 80806080  90 01 00 0C */	stw r0, 0xc(r1)
/* 80806084  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80806088  38 81 00 0C */	addi r4, r1, 0xc
/* 8080608C  38 A0 FF FF */	li r5, -1
/* 80806090  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80806094  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80806098  7D 89 03 A6 */	mtctr r12
/* 8080609C  4E 80 04 21 */	bctrl 
lbl_808060A0:
/* 808060A0  88 7E 05 B9 */	lbz r3, 0x5b9(r30)
/* 808060A4  88 1E 05 BA */	lbz r0, 0x5ba(r30)
/* 808060A8  7C 03 02 14 */	add r0, r3, r0
/* 808060AC  98 1E 05 B9 */	stb r0, 0x5b9(r30)
/* 808060B0  88 BE 05 B9 */	lbz r5, 0x5b9(r30)
/* 808060B4  7C A3 07 74 */	extsb r3, r5
/* 808060B8  80 9E 05 BC */	lwz r4, 0x5bc(r30)
/* 808060BC  A0 04 00 00 */	lhz r0, 0(r4)
/* 808060C0  7C 00 07 74 */	extsb r0, r0
/* 808060C4  7C 03 00 00 */	cmpw r3, r0
/* 808060C8  41 80 00 5C */	blt lbl_80806124
/* 808060CC  88 04 00 05 */	lbz r0, 5(r4)
/* 808060D0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 808060D4  41 82 00 10 */	beq lbl_808060E4
/* 808060D8  38 00 00 00 */	li r0, 0
/* 808060DC  98 1E 05 B9 */	stb r0, 0x5b9(r30)
/* 808060E0  48 00 00 1C */	b lbl_808060FC
lbl_808060E4:
/* 808060E4  38 00 FF FF */	li r0, -1
/* 808060E8  98 1E 05 BA */	stb r0, 0x5ba(r30)
/* 808060EC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 808060F0  A0 63 00 00 */	lhz r3, 0(r3)
/* 808060F4  38 03 FF FE */	addi r0, r3, -2
/* 808060F8  98 1E 05 B9 */	stb r0, 0x5b9(r30)
lbl_808060FC:
/* 808060FC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80806100  A0 63 00 02 */	lhz r3, 2(r3)
/* 80806104  3C 03 00 00 */	addis r0, r3, 0
/* 80806108  28 00 FF FF */	cmplwi r0, 0xffff
/* 8080610C  41 82 00 2C */	beq lbl_80806138
/* 80806110  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80806114  7C 04 07 74 */	extsb r4, r0
/* 80806118  4B 84 B6 D5 */	bl dPath_GetRoomPath__Fii
/* 8080611C  90 7E 05 BC */	stw r3, 0x5bc(r30)
/* 80806120  48 00 00 18 */	b lbl_80806138
lbl_80806124:
/* 80806124  7C A0 07 75 */	extsb. r0, r5
/* 80806128  40 80 00 10 */	bge lbl_80806138
/* 8080612C  38 00 00 01 */	li r0, 1
/* 80806130  98 1E 05 BA */	stb r0, 0x5ba(r30)
/* 80806134  98 1E 05 B9 */	stb r0, 0x5b9(r30)
lbl_80806138:
/* 80806138  38 00 00 03 */	li r0, 3
/* 8080613C  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 80806140  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80806144  83 A3 00 08 */	lwz r29, 8(r3)
/* 80806148  88 1E 05 B9 */	lbz r0, 0x5b9(r30)
/* 8080614C  7C 00 07 74 */	extsb r0, r0
/* 80806150  54 00 20 36 */	slwi r0, r0, 4
/* 80806154  7F BD 02 14 */	add r29, r29, r0
/* 80806158  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080615C  D0 1E 06 8C */	stfs f0, 0x68c(r30)
/* 80806160  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80806164  4B A6 18 29 */	bl cM_rndFX__Ff
/* 80806168  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8080616C  EC 00 08 2A */	fadds f0, f0, f1
/* 80806170  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 80806174  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80806178  4B A6 18 15 */	bl cM_rndFX__Ff
/* 8080617C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80806180  EC 00 08 2A */	fadds f0, f0, f1
/* 80806184  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 80806188  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8080618C  4B A6 18 01 */	bl cM_rndFX__Ff
/* 80806190  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80806194  EC 00 08 2A */	fadds f0, f0, f1
/* 80806198  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 8080619C  48 00 01 2C */	b lbl_808062C8
lbl_808061A0:
/* 808061A0  38 61 00 10 */	addi r3, r1, 0x10
/* 808061A4  38 9E 06 74 */	addi r4, r30, 0x674
/* 808061A8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 808061AC  4B A6 09 89 */	bl __mi__4cXyzCFRC3Vec
/* 808061B0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 808061B4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 808061B8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 808061BC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 808061C0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 808061C4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 808061C8  38 61 00 1C */	addi r3, r1, 0x1c
/* 808061CC  4B B4 0F 6D */	bl PSVECSquareMag
/* 808061D0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 808061D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808061D8  40 81 00 58 */	ble lbl_80806230
/* 808061DC  FC 00 08 34 */	frsqrte f0, f1
/* 808061E0  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 808061E4  FC 44 00 32 */	fmul f2, f4, f0
/* 808061E8  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 808061EC  FC 00 00 32 */	fmul f0, f0, f0
/* 808061F0  FC 01 00 32 */	fmul f0, f1, f0
/* 808061F4  FC 03 00 28 */	fsub f0, f3, f0
/* 808061F8  FC 02 00 32 */	fmul f0, f2, f0
/* 808061FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80806200  FC 00 00 32 */	fmul f0, f0, f0
/* 80806204  FC 01 00 32 */	fmul f0, f1, f0
/* 80806208  FC 03 00 28 */	fsub f0, f3, f0
/* 8080620C  FC 02 00 32 */	fmul f0, f2, f0
/* 80806210  FC 44 00 32 */	fmul f2, f4, f0
/* 80806214  FC 00 00 32 */	fmul f0, f0, f0
/* 80806218  FC 01 00 32 */	fmul f0, f1, f0
/* 8080621C  FC 03 00 28 */	fsub f0, f3, f0
/* 80806220  FC 02 00 32 */	fmul f0, f2, f0
/* 80806224  FC 21 00 32 */	fmul f1, f1, f0
/* 80806228  FC 20 08 18 */	frsp f1, f1
/* 8080622C  48 00 00 88 */	b lbl_808062B4
lbl_80806230:
/* 80806230  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80806234  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80806238  40 80 00 10 */	bge lbl_80806248
/* 8080623C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80806240  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80806244  48 00 00 70 */	b lbl_808062B4
lbl_80806248:
/* 80806248  D0 21 00 08 */	stfs f1, 8(r1)
/* 8080624C  80 81 00 08 */	lwz r4, 8(r1)
/* 80806250  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80806254  3C 00 7F 80 */	lis r0, 0x7f80
/* 80806258  7C 03 00 00 */	cmpw r3, r0
/* 8080625C  41 82 00 14 */	beq lbl_80806270
/* 80806260  40 80 00 40 */	bge lbl_808062A0
/* 80806264  2C 03 00 00 */	cmpwi r3, 0
/* 80806268  41 82 00 20 */	beq lbl_80806288
/* 8080626C  48 00 00 34 */	b lbl_808062A0
lbl_80806270:
/* 80806270  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80806274  41 82 00 0C */	beq lbl_80806280
/* 80806278  38 00 00 01 */	li r0, 1
/* 8080627C  48 00 00 28 */	b lbl_808062A4
lbl_80806280:
/* 80806280  38 00 00 02 */	li r0, 2
/* 80806284  48 00 00 20 */	b lbl_808062A4
lbl_80806288:
/* 80806288  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080628C  41 82 00 0C */	beq lbl_80806298
/* 80806290  38 00 00 05 */	li r0, 5
/* 80806294  48 00 00 10 */	b lbl_808062A4
lbl_80806298:
/* 80806298  38 00 00 03 */	li r0, 3
/* 8080629C  48 00 00 08 */	b lbl_808062A4
lbl_808062A0:
/* 808062A0  38 00 00 04 */	li r0, 4
lbl_808062A4:
/* 808062A4  2C 00 00 01 */	cmpwi r0, 1
/* 808062A8  40 82 00 0C */	bne lbl_808062B4
/* 808062AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 808062B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_808062B4:
/* 808062B4  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 808062B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808062BC  40 80 00 0C */	bge lbl_808062C8
/* 808062C0  38 00 00 01 */	li r0, 1
/* 808062C4  B0 1E 06 70 */	sth r0, 0x670(r30)
lbl_808062C8:
/* 808062C8  3C 60 80 80 */	lis r3, l_HIO@ha /* 0x80807F08@ha */
/* 808062CC  38 63 7F 08 */	addi r3, r3, l_HIO@l /* 0x80807F08@l */
/* 808062D0  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 808062D4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 808062D8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 808062DC  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 808062E0  EC 60 00 72 */	fmuls f3, f0, f1
/* 808062E4  4B A6 97 59 */	bl cLib_addCalc2__FPffff
/* 808062E8  7F C3 F3 78 */	mr r3, r30
/* 808062EC  4B FF EE E5 */	bl fly_move__FP10e_yk_class
/* 808062F0  39 61 00 40 */	addi r11, r1, 0x40
/* 808062F4  4B B5 BF 35 */	bl _restgpr_29
/* 808062F8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 808062FC  7C 08 03 A6 */	mtlr r0
/* 80806300  38 21 00 40 */	addi r1, r1, 0x40
/* 80806304  4E 80 00 20 */	blr 

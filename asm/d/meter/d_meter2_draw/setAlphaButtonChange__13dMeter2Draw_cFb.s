lbl_80218788:
/* 80218788  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8021878C  7C 08 02 A6 */	mflr r0
/* 80218790  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80218794  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80218798  48 14 9A 0D */	bl _savegpr_15
/* 8021879C  7C 72 1B 78 */	mr r18, r3
/* 802187A0  7C 93 23 78 */	mr r19, r4
/* 802187A4  3B A0 00 00 */	li r29, 0
/* 802187A8  3B 80 00 00 */	li r28, 0
/* 802187AC  3B 60 00 00 */	li r27, 0
/* 802187B0  3B 40 00 00 */	li r26, 0
/* 802187B4  3B 20 00 00 */	li r25, 0
/* 802187B8  3B 00 00 00 */	li r24, 0
/* 802187BC  3A E0 00 00 */	li r23, 0
/* 802187C0  3A C0 00 00 */	li r22, 0
/* 802187C4  3A A0 00 00 */	li r21, 0
/* 802187C8  3A 80 00 00 */	li r20, 0
/* 802187CC  C0 03 07 F0 */	lfs f0, 0x7f0(r3)
/* 802187D0  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802187D4  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802187D8  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 802187DC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802187E0  40 82 00 0C */	bne lbl_802187EC
/* 802187E4  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 802187E8  41 82 00 0C */	beq lbl_802187F4
lbl_802187EC:
/* 802187EC  D0 32 07 F0 */	stfs f1, 0x7f0(r18)
/* 802187F0  3B A0 00 01 */	li r29, 1
lbl_802187F4:
/* 802187F4  C0 12 07 F4 */	lfs f0, 0x7f4(r18)
/* 802187F8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802187FC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80218800  C0 23 00 84 */	lfs f1, 0x84(r3)
/* 80218804  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80218808  40 82 00 0C */	bne lbl_80218814
/* 8021880C  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218810  41 82 00 0C */	beq lbl_8021881C
lbl_80218814:
/* 80218814  D0 32 07 F0 */	stfs f1, 0x7f0(r18)
/* 80218818  3B A0 00 01 */	li r29, 1
lbl_8021881C:
/* 8021881C  C0 12 07 FC */	lfs f0, 0x7fc(r18)
/* 80218820  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80218824  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80218828  C0 23 00 A8 */	lfs f1, 0xa8(r3)
/* 8021882C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80218830  40 82 00 0C */	bne lbl_8021883C
/* 80218834  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218838  41 82 00 0C */	beq lbl_80218844
lbl_8021883C:
/* 8021883C  D0 32 07 FC */	stfs f1, 0x7fc(r18)
/* 80218840  3B 80 00 01 */	li r28, 1
lbl_80218844:
/* 80218844  C0 12 08 00 */	lfs f0, 0x800(r18)
/* 80218848  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8021884C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80218850  C0 23 00 F0 */	lfs f1, 0xf0(r3)
/* 80218854  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80218858  40 82 00 0C */	bne lbl_80218864
/* 8021885C  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218860  41 82 00 0C */	beq lbl_8021886C
lbl_80218864:
/* 80218864  D0 32 08 00 */	stfs f1, 0x800(r18)
/* 80218868  3B 60 00 01 */	li r27, 1
lbl_8021886C:
/* 8021886C  C0 12 08 04 */	lfs f0, 0x804(r18)
/* 80218870  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80218874  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80218878  C0 23 01 48 */	lfs f1, 0x148(r3)
/* 8021887C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80218880  40 82 00 0C */	bne lbl_8021888C
/* 80218884  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218888  41 82 00 0C */	beq lbl_80218894
lbl_8021888C:
/* 8021888C  D0 32 08 04 */	stfs f1, 0x804(r18)
/* 80218890  3B 40 00 01 */	li r26, 1
lbl_80218894:
/* 80218894  C0 12 08 08 */	lfs f0, 0x808(r18)
/* 80218898  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8021889C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802188A0  C0 23 01 58 */	lfs f1, 0x158(r3)
/* 802188A4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802188A8  40 82 00 0C */	bne lbl_802188B4
/* 802188AC  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 802188B0  41 82 00 0C */	beq lbl_802188BC
lbl_802188B4:
/* 802188B4  D0 32 08 08 */	stfs f1, 0x808(r18)
/* 802188B8  3B 20 00 01 */	li r25, 1
lbl_802188BC:
/* 802188BC  C0 12 08 0C */	lfs f0, 0x80c(r18)
/* 802188C0  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802188C4  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802188C8  C0 23 01 68 */	lfs f1, 0x168(r3)
/* 802188CC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802188D0  40 82 00 0C */	bne lbl_802188DC
/* 802188D4  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 802188D8  41 82 00 08 */	beq lbl_802188E0
lbl_802188DC:
/* 802188DC  D0 32 08 0C */	stfs f1, 0x80c(r18)
lbl_802188E0:
/* 802188E0  C0 12 08 10 */	lfs f0, 0x810(r18)
/* 802188E4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802188E8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802188EC  C0 23 01 78 */	lfs f1, 0x178(r3)
/* 802188F0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802188F4  40 82 00 0C */	bne lbl_80218900
/* 802188F8  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 802188FC  41 82 00 0C */	beq lbl_80218908
lbl_80218900:
/* 80218900  D0 32 08 10 */	stfs f1, 0x810(r18)
/* 80218904  3B 00 00 01 */	li r24, 1
lbl_80218908:
/* 80218908  3B C0 00 00 */	li r30, 0
/* 8021890C  3B E0 00 00 */	li r31, 0
/* 80218910  7F EF FB 78 */	mr r15, r31
/* 80218914  3A 01 00 44 */	addi r16, r1, 0x44
/* 80218918  3A 20 00 01 */	li r17, 1
lbl_8021891C:
/* 8021891C  38 1F 03 54 */	addi r0, r31, 0x354
/* 80218920  7C 72 00 2E */	lwzx r3, r18, r0
/* 80218924  48 03 CD 29 */	bl isVisible__13CPaneMgrAlphaFv
/* 80218928  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8021892C  41 82 00 0C */	beq lbl_80218938
/* 80218930  7D F0 F9 2E */	stwx r15, r16, r31
/* 80218934  48 00 00 08 */	b lbl_8021893C
lbl_80218938:
/* 80218938  7E 30 F9 2E */	stwx r17, r16, r31
lbl_8021893C:
/* 8021893C  3B DE 00 01 */	addi r30, r30, 1
/* 80218940  2C 1E 00 02 */	cmpwi r30, 2
/* 80218944  3B FF 00 04 */	addi r31, r31, 4
/* 80218948  41 80 FF D4 */	blt lbl_8021891C
/* 8021894C  38 00 00 00 */	li r0, 0
/* 80218950  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80218954  90 01 00 50 */	stw r0, 0x50(r1)
/* 80218958  54 04 10 3A */	slwi r4, r0, 2
/* 8021895C  7C B2 22 14 */	add r5, r18, r4
/* 80218960  C0 05 08 14 */	lfs f0, 0x814(r5)
/* 80218964  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80218968  38 03 EB C8 */	addi r0, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8021896C  7C 60 22 14 */	add r3, r0, r4
/* 80218970  C0 23 02 38 */	lfs f1, 0x238(r3)
/* 80218974  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80218978  40 82 00 0C */	bne lbl_80218984
/* 8021897C  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218980  41 82 00 08 */	beq lbl_80218988
lbl_80218984:
/* 80218984  D0 25 08 14 */	stfs f1, 0x814(r5)
lbl_80218988:
/* 80218988  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8021898C  54 04 10 3A */	slwi r4, r0, 2
/* 80218990  7F F2 22 14 */	add r31, r18, r4
/* 80218994  C0 1F 08 1C */	lfs f0, 0x81c(r31)
/* 80218998  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8021899C  38 03 EB C8 */	addi r0, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802189A0  7C 60 22 14 */	add r3, r0, r4
/* 802189A4  C0 23 02 58 */	lfs f1, 0x258(r3)
/* 802189A8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802189AC  40 82 00 0C */	bne lbl_802189B8
/* 802189B0  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 802189B4  41 82 00 0C */	beq lbl_802189C0
lbl_802189B8:
/* 802189B8  D0 3F 08 1C */	stfs f1, 0x81c(r31)
/* 802189BC  3A E0 00 01 */	li r23, 1
lbl_802189C0:
/* 802189C0  80 01 00 48 */	lwz r0, 0x48(r1)
/* 802189C4  54 04 10 3A */	slwi r4, r0, 2
/* 802189C8  7F D2 22 14 */	add r30, r18, r4
/* 802189CC  C0 1E 08 24 */	lfs f0, 0x824(r30)
/* 802189D0  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802189D4  38 03 EB C8 */	addi r0, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802189D8  7C 60 22 14 */	add r3, r0, r4
/* 802189DC  C0 23 02 78 */	lfs f1, 0x278(r3)
/* 802189E0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802189E4  40 82 00 0C */	bne lbl_802189F0
/* 802189E8  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 802189EC  41 82 00 0C */	beq lbl_802189F8
lbl_802189F0:
/* 802189F0  D0 3E 08 24 */	stfs f1, 0x824(r30)
/* 802189F4  3A C0 00 01 */	li r22, 1
lbl_802189F8:
/* 802189F8  C0 12 08 34 */	lfs f0, 0x834(r18)
/* 802189FC  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80218A00  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80218A04  C0 23 02 AC */	lfs f1, 0x2ac(r3)
/* 80218A08  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80218A0C  40 82 00 0C */	bne lbl_80218A18
/* 80218A10  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218A14  41 82 00 0C */	beq lbl_80218A20
lbl_80218A18:
/* 80218A18  D0 32 08 34 */	stfs f1, 0x834(r18)
/* 80218A1C  3A 80 00 01 */	li r20, 1
lbl_80218A20:
/* 80218A20  C0 12 08 38 */	lfs f0, 0x838(r18)
/* 80218A24  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80218A28  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80218A2C  C0 23 02 B0 */	lfs f1, 0x2b0(r3)
/* 80218A30  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80218A34  40 82 00 0C */	bne lbl_80218A40
/* 80218A38  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218A3C  41 82 00 0C */	beq lbl_80218A48
lbl_80218A40:
/* 80218A40  D0 32 08 38 */	stfs f1, 0x838(r18)
/* 80218A44  3A A0 00 01 */	li r21, 1
lbl_80218A48:
/* 80218A48  C0 12 07 F8 */	lfs f0, 0x7f8(r18)
/* 80218A4C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80218A50  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80218A54  C0 23 00 A0 */	lfs f1, 0xa0(r3)
/* 80218A58  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80218A5C  40 82 00 0C */	bne lbl_80218A68
/* 80218A60  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218A64  41 82 00 08 */	beq lbl_80218A6C
lbl_80218A68:
/* 80218A68  D0 32 07 F8 */	stfs f1, 0x7f8(r18)
lbl_80218A6C:
/* 80218A6C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80218A70  40 82 00 14 */	bne lbl_80218A84
/* 80218A74  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80218A78  40 82 00 0C */	bne lbl_80218A84
/* 80218A7C  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218A80  41 82 00 18 */	beq lbl_80218A98
lbl_80218A84:
/* 80218A84  80 72 03 00 */	lwz r3, 0x300(r18)
/* 80218A88  C0 32 07 FC */	lfs f1, 0x7fc(r18)
/* 80218A8C  C0 12 07 F0 */	lfs f0, 0x7f0(r18)
/* 80218A90  EC 21 00 32 */	fmuls f1, f1, f0
/* 80218A94  48 03 CD 3D */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80218A98:
/* 80218A98  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80218A9C  40 82 00 14 */	bne lbl_80218AB0
/* 80218AA0  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80218AA4  40 82 00 0C */	bne lbl_80218AB0
/* 80218AA8  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218AAC  41 82 00 18 */	beq lbl_80218AC4
lbl_80218AB0:
/* 80218AB0  80 72 03 04 */	lwz r3, 0x304(r18)
/* 80218AB4  C0 32 08 00 */	lfs f1, 0x800(r18)
/* 80218AB8  C0 12 07 F0 */	lfs f0, 0x7f0(r18)
/* 80218ABC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80218AC0  48 03 CD 11 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80218AC4:
/* 80218AC4  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80218AC8  40 82 00 14 */	bne lbl_80218ADC
/* 80218ACC  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80218AD0  40 82 00 0C */	bne lbl_80218ADC
/* 80218AD4  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218AD8  41 82 00 18 */	beq lbl_80218AF0
lbl_80218ADC:
/* 80218ADC  80 72 03 0C */	lwz r3, 0x30c(r18)
/* 80218AE0  C0 32 08 04 */	lfs f1, 0x804(r18)
/* 80218AE4  C0 12 07 F0 */	lfs f0, 0x7f0(r18)
/* 80218AE8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80218AEC  48 03 CC E5 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80218AF0:
/* 80218AF0  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80218AF4  40 82 00 14 */	bne lbl_80218B08
/* 80218AF8  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80218AFC  40 82 00 0C */	bne lbl_80218B08
/* 80218B00  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218B04  41 82 00 18 */	beq lbl_80218B1C
lbl_80218B08:
/* 80218B08  80 72 03 10 */	lwz r3, 0x310(r18)
/* 80218B0C  C0 32 08 08 */	lfs f1, 0x808(r18)
/* 80218B10  C0 12 07 F0 */	lfs f0, 0x7f0(r18)
/* 80218B14  EC 21 00 32 */	fmuls f1, f1, f0
/* 80218B18  48 03 CC B9 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80218B1C:
/* 80218B1C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80218B20  40 82 00 14 */	bne lbl_80218B34
/* 80218B24  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80218B28  40 82 00 0C */	bne lbl_80218B34
/* 80218B2C  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218B30  41 82 00 18 */	beq lbl_80218B48
lbl_80218B34:
/* 80218B34  80 72 03 14 */	lwz r3, 0x314(r18)
/* 80218B38  C0 32 08 10 */	lfs f1, 0x810(r18)
/* 80218B3C  C0 12 07 F0 */	lfs f0, 0x7f0(r18)
/* 80218B40  EC 21 00 32 */	fmuls f1, f1, f0
/* 80218B44  48 03 CC 8D */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80218B48:
/* 80218B48  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80218B4C  40 82 00 14 */	bne lbl_80218B60
/* 80218B50  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80218B54  40 82 00 0C */	bne lbl_80218B60
/* 80218B58  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218B5C  41 82 00 18 */	beq lbl_80218B74
lbl_80218B60:
/* 80218B60  80 72 03 1C */	lwz r3, 0x31c(r18)
/* 80218B64  C0 3F 08 1C */	lfs f1, 0x81c(r31)
/* 80218B68  C0 12 07 F0 */	lfs f0, 0x7f0(r18)
/* 80218B6C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80218B70  48 03 CC 61 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80218B74:
/* 80218B74  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80218B78  40 82 00 14 */	bne lbl_80218B8C
/* 80218B7C  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 80218B80  40 82 00 0C */	bne lbl_80218B8C
/* 80218B84  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218B88  41 82 00 18 */	beq lbl_80218BA0
lbl_80218B8C:
/* 80218B8C  80 72 03 20 */	lwz r3, 0x320(r18)
/* 80218B90  C0 3E 08 24 */	lfs f1, 0x824(r30)
/* 80218B94  C0 12 07 F0 */	lfs f0, 0x7f0(r18)
/* 80218B98  EC 21 00 32 */	fmuls f1, f1, f0
/* 80218B9C  48 03 CC 35 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80218BA0:
/* 80218BA0  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80218BA4  40 82 00 0C */	bne lbl_80218BB0
/* 80218BA8  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218BAC  41 82 00 24 */	beq lbl_80218BD0
lbl_80218BB0:
/* 80218BB0  80 72 03 24 */	lwz r3, 0x324(r18)
/* 80218BB4  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80218BB8  54 00 10 3A */	slwi r0, r0, 2
/* 80218BBC  7C 92 02 14 */	add r4, r18, r0
/* 80218BC0  C0 24 08 2C */	lfs f1, 0x82c(r4)
/* 80218BC4  C0 12 07 F0 */	lfs f0, 0x7f0(r18)
/* 80218BC8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80218BCC  48 03 CC 05 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80218BD0:
/* 80218BD0  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80218BD4  40 82 00 14 */	bne lbl_80218BE8
/* 80218BD8  56 80 06 3F */	clrlwi. r0, r20, 0x18
/* 80218BDC  40 82 00 0C */	bne lbl_80218BE8
/* 80218BE0  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218BE4  41 82 00 18 */	beq lbl_80218BFC
lbl_80218BE8:
/* 80218BE8  80 72 03 24 */	lwz r3, 0x324(r18)
/* 80218BEC  C0 32 08 34 */	lfs f1, 0x834(r18)
/* 80218BF0  C0 12 07 F0 */	lfs f0, 0x7f0(r18)
/* 80218BF4  EC 21 00 32 */	fmuls f1, f1, f0
/* 80218BF8  48 03 CB D9 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80218BFC:
/* 80218BFC  80 72 04 B8 */	lwz r3, 0x4b8(r18)
/* 80218C00  28 03 00 00 */	cmplwi r3, 0
/* 80218C04  41 82 00 2C */	beq lbl_80218C30
/* 80218C08  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80218C0C  40 82 00 14 */	bne lbl_80218C20
/* 80218C10  56 A0 06 3F */	clrlwi. r0, r21, 0x18
/* 80218C14  40 82 00 0C */	bne lbl_80218C20
/* 80218C18  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218C1C  41 82 00 14 */	beq lbl_80218C30
lbl_80218C20:
/* 80218C20  C0 32 08 38 */	lfs f1, 0x838(r18)
/* 80218C24  C0 12 07 F0 */	lfs f0, 0x7f0(r18)
/* 80218C28  EC 21 00 32 */	fmuls f1, f1, f0
/* 80218C2C  48 03 CB A5 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80218C30:
/* 80218C30  C0 12 08 3C */	lfs f0, 0x83c(r18)
/* 80218C34  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80218C38  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80218C3C  C0 23 02 C4 */	lfs f1, 0x2c4(r3)
/* 80218C40  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80218C44  40 82 00 0C */	bne lbl_80218C50
/* 80218C48  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218C4C  41 82 00 30 */	beq lbl_80218C7C
lbl_80218C50:
/* 80218C50  D0 32 08 3C */	stfs f1, 0x83c(r18)
/* 80218C54  38 60 00 00 */	li r3, 0
/* 80218C58  38 00 00 05 */	li r0, 5
/* 80218C5C  7C 09 03 A6 */	mtctr r0
lbl_80218C60:
/* 80218C60  38 03 00 C0 */	addi r0, r3, 0xc0
/* 80218C64  7C 92 00 2E */	lwzx r4, r18, r0
/* 80218C68  80 84 00 04 */	lwz r4, 4(r4)
/* 80218C6C  C0 12 08 3C */	lfs f0, 0x83c(r18)
/* 80218C70  D0 04 01 14 */	stfs f0, 0x114(r4)
/* 80218C74  38 63 00 04 */	addi r3, r3, 4
/* 80218C78  42 00 FF E8 */	bdnz lbl_80218C60
lbl_80218C7C:
/* 80218C7C  88 12 08 4C */	lbz r0, 0x84c(r18)
/* 80218C80  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80218C84  38 83 EB C8 */	addi r4, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80218C88  88 A4 02 C0 */	lbz r5, 0x2c0(r4)
/* 80218C8C  7C 00 28 40 */	cmplw r0, r5
/* 80218C90  40 82 00 3C */	bne lbl_80218CCC
/* 80218C94  88 72 08 4D */	lbz r3, 0x84d(r18)
/* 80218C98  88 04 02 C1 */	lbz r0, 0x2c1(r4)
/* 80218C9C  7C 03 00 40 */	cmplw r3, r0
/* 80218CA0  40 82 00 2C */	bne lbl_80218CCC
/* 80218CA4  88 72 08 4E */	lbz r3, 0x84e(r18)
/* 80218CA8  88 04 02 C2 */	lbz r0, 0x2c2(r4)
/* 80218CAC  7C 03 00 40 */	cmplw r3, r0
/* 80218CB0  40 82 00 1C */	bne lbl_80218CCC
/* 80218CB4  88 72 08 4F */	lbz r3, 0x84f(r18)
/* 80218CB8  88 04 02 C3 */	lbz r0, 0x2c3(r4)
/* 80218CBC  7C 03 00 40 */	cmplw r3, r0
/* 80218CC0  40 82 00 0C */	bne lbl_80218CCC
/* 80218CC4  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218CC8  41 82 00 80 */	beq lbl_80218D48
lbl_80218CCC:
/* 80218CCC  98 B2 08 4C */	stb r5, 0x84c(r18)
/* 80218CD0  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80218CD4  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80218CD8  88 03 02 C1 */	lbz r0, 0x2c1(r3)
/* 80218CDC  98 12 08 4D */	stb r0, 0x84d(r18)
/* 80218CE0  88 03 02 C2 */	lbz r0, 0x2c2(r3)
/* 80218CE4  98 12 08 4E */	stb r0, 0x84e(r18)
/* 80218CE8  88 03 02 C3 */	lbz r0, 0x2c3(r3)
/* 80218CEC  98 12 08 4F */	stb r0, 0x84f(r18)
/* 80218CF0  80 04 02 C0 */	lwz r0, 0x2c0(r4)
/* 80218CF4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80218CF8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80218CFC  90 01 00 40 */	stw r0, 0x40(r1)
/* 80218D00  80 72 00 D0 */	lwz r3, 0xd0(r18)
/* 80218D04  80 63 00 04 */	lwz r3, 4(r3)
/* 80218D08  88 01 00 40 */	lbz r0, 0x40(r1)
/* 80218D0C  98 03 01 04 */	stb r0, 0x104(r3)
/* 80218D10  88 01 00 41 */	lbz r0, 0x41(r1)
/* 80218D14  98 03 01 05 */	stb r0, 0x105(r3)
/* 80218D18  88 01 00 42 */	lbz r0, 0x42(r1)
/* 80218D1C  98 03 01 06 */	stb r0, 0x106(r3)
/* 80218D20  88 01 00 43 */	lbz r0, 0x43(r1)
/* 80218D24  98 03 01 07 */	stb r0, 0x107(r3)
/* 80218D28  88 01 00 3C */	lbz r0, 0x3c(r1)
/* 80218D2C  98 03 01 08 */	stb r0, 0x108(r3)
/* 80218D30  88 01 00 3D */	lbz r0, 0x3d(r1)
/* 80218D34  98 03 01 09 */	stb r0, 0x109(r3)
/* 80218D38  88 01 00 3E */	lbz r0, 0x3e(r1)
/* 80218D3C  98 03 01 0A */	stb r0, 0x10a(r3)
/* 80218D40  88 01 00 3F */	lbz r0, 0x3f(r1)
/* 80218D44  98 03 01 0B */	stb r0, 0x10b(r3)
lbl_80218D48:
/* 80218D48  88 12 08 50 */	lbz r0, 0x850(r18)
/* 80218D4C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80218D50  38 83 EB C8 */	addi r4, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80218D54  88 A4 02 E0 */	lbz r5, 0x2e0(r4)
/* 80218D58  7C 00 28 40 */	cmplw r0, r5
/* 80218D5C  40 82 00 3C */	bne lbl_80218D98
/* 80218D60  88 72 08 51 */	lbz r3, 0x851(r18)
/* 80218D64  88 04 02 E1 */	lbz r0, 0x2e1(r4)
/* 80218D68  7C 03 00 40 */	cmplw r3, r0
/* 80218D6C  40 82 00 2C */	bne lbl_80218D98
/* 80218D70  88 72 08 52 */	lbz r3, 0x852(r18)
/* 80218D74  88 04 02 E2 */	lbz r0, 0x2e2(r4)
/* 80218D78  7C 03 00 40 */	cmplw r3, r0
/* 80218D7C  40 82 00 1C */	bne lbl_80218D98
/* 80218D80  88 72 08 53 */	lbz r3, 0x853(r18)
/* 80218D84  88 04 02 E3 */	lbz r0, 0x2e3(r4)
/* 80218D88  7C 03 00 40 */	cmplw r3, r0
/* 80218D8C  40 82 00 0C */	bne lbl_80218D98
/* 80218D90  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218D94  41 82 00 80 */	beq lbl_80218E14
lbl_80218D98:
/* 80218D98  98 B2 08 50 */	stb r5, 0x850(r18)
/* 80218D9C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80218DA0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80218DA4  88 03 02 E1 */	lbz r0, 0x2e1(r3)
/* 80218DA8  98 12 08 51 */	stb r0, 0x851(r18)
/* 80218DAC  88 03 02 E2 */	lbz r0, 0x2e2(r3)
/* 80218DB0  98 12 08 52 */	stb r0, 0x852(r18)
/* 80218DB4  88 03 02 E3 */	lbz r0, 0x2e3(r3)
/* 80218DB8  98 12 08 53 */	stb r0, 0x853(r18)
/* 80218DBC  80 04 02 E0 */	lwz r0, 0x2e0(r4)
/* 80218DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80218DC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80218DC8  90 01 00 38 */	stw r0, 0x38(r1)
/* 80218DCC  80 72 00 E4 */	lwz r3, 0xe4(r18)
/* 80218DD0  80 63 00 04 */	lwz r3, 4(r3)
/* 80218DD4  88 01 00 38 */	lbz r0, 0x38(r1)
/* 80218DD8  98 03 01 04 */	stb r0, 0x104(r3)
/* 80218DDC  88 01 00 39 */	lbz r0, 0x39(r1)
/* 80218DE0  98 03 01 05 */	stb r0, 0x105(r3)
/* 80218DE4  88 01 00 3A */	lbz r0, 0x3a(r1)
/* 80218DE8  98 03 01 06 */	stb r0, 0x106(r3)
/* 80218DEC  88 01 00 3B */	lbz r0, 0x3b(r1)
/* 80218DF0  98 03 01 07 */	stb r0, 0x107(r3)
/* 80218DF4  88 01 00 34 */	lbz r0, 0x34(r1)
/* 80218DF8  98 03 01 08 */	stb r0, 0x108(r3)
/* 80218DFC  88 01 00 35 */	lbz r0, 0x35(r1)
/* 80218E00  98 03 01 09 */	stb r0, 0x109(r3)
/* 80218E04  88 01 00 36 */	lbz r0, 0x36(r1)
/* 80218E08  98 03 01 0A */	stb r0, 0x10a(r3)
/* 80218E0C  88 01 00 37 */	lbz r0, 0x37(r1)
/* 80218E10  98 03 01 0B */	stb r0, 0x10b(r3)
lbl_80218E14:
/* 80218E14  88 12 08 58 */	lbz r0, 0x858(r18)
/* 80218E18  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80218E1C  38 83 EB C8 */	addi r4, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80218E20  88 A4 03 38 */	lbz r5, 0x338(r4)
/* 80218E24  7C 00 28 40 */	cmplw r0, r5
/* 80218E28  40 82 00 3C */	bne lbl_80218E64
/* 80218E2C  88 72 08 59 */	lbz r3, 0x859(r18)
/* 80218E30  88 04 03 39 */	lbz r0, 0x339(r4)
/* 80218E34  7C 03 00 40 */	cmplw r3, r0
/* 80218E38  40 82 00 2C */	bne lbl_80218E64
/* 80218E3C  88 72 08 5A */	lbz r3, 0x85a(r18)
/* 80218E40  88 04 03 3A */	lbz r0, 0x33a(r4)
/* 80218E44  7C 03 00 40 */	cmplw r3, r0
/* 80218E48  40 82 00 1C */	bne lbl_80218E64
/* 80218E4C  88 72 08 5B */	lbz r3, 0x85b(r18)
/* 80218E50  88 04 03 3B */	lbz r0, 0x33b(r4)
/* 80218E54  7C 03 00 40 */	cmplw r3, r0
/* 80218E58  40 82 00 0C */	bne lbl_80218E64
/* 80218E5C  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218E60  41 82 00 80 */	beq lbl_80218EE0
lbl_80218E64:
/* 80218E64  98 B2 08 58 */	stb r5, 0x858(r18)
/* 80218E68  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80218E6C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80218E70  88 03 03 39 */	lbz r0, 0x339(r3)
/* 80218E74  98 12 08 59 */	stb r0, 0x859(r18)
/* 80218E78  88 03 03 3A */	lbz r0, 0x33a(r3)
/* 80218E7C  98 12 08 5A */	stb r0, 0x85a(r18)
/* 80218E80  88 03 03 3B */	lbz r0, 0x33b(r3)
/* 80218E84  98 12 08 5B */	stb r0, 0x85b(r18)
/* 80218E88  80 04 03 38 */	lwz r0, 0x338(r4)
/* 80218E8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80218E90  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80218E94  90 01 00 30 */	stw r0, 0x30(r1)
/* 80218E98  80 72 01 20 */	lwz r3, 0x120(r18)
/* 80218E9C  80 63 00 04 */	lwz r3, 4(r3)
/* 80218EA0  88 01 00 30 */	lbz r0, 0x30(r1)
/* 80218EA4  98 03 01 04 */	stb r0, 0x104(r3)
/* 80218EA8  88 01 00 31 */	lbz r0, 0x31(r1)
/* 80218EAC  98 03 01 05 */	stb r0, 0x105(r3)
/* 80218EB0  88 01 00 32 */	lbz r0, 0x32(r1)
/* 80218EB4  98 03 01 06 */	stb r0, 0x106(r3)
/* 80218EB8  88 01 00 33 */	lbz r0, 0x33(r1)
/* 80218EBC  98 03 01 07 */	stb r0, 0x107(r3)
/* 80218EC0  88 01 00 2C */	lbz r0, 0x2c(r1)
/* 80218EC4  98 03 01 08 */	stb r0, 0x108(r3)
/* 80218EC8  88 01 00 2D */	lbz r0, 0x2d(r1)
/* 80218ECC  98 03 01 09 */	stb r0, 0x109(r3)
/* 80218ED0  88 01 00 2E */	lbz r0, 0x2e(r1)
/* 80218ED4  98 03 01 0A */	stb r0, 0x10a(r3)
/* 80218ED8  88 01 00 2F */	lbz r0, 0x2f(r1)
/* 80218EDC  98 03 01 0B */	stb r0, 0x10b(r3)
lbl_80218EE0:
/* 80218EE0  88 12 08 5C */	lbz r0, 0x85c(r18)
/* 80218EE4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80218EE8  38 83 EB C8 */	addi r4, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80218EEC  88 A4 03 00 */	lbz r5, 0x300(r4)
/* 80218EF0  7C 00 28 40 */	cmplw r0, r5
/* 80218EF4  40 82 00 3C */	bne lbl_80218F30
/* 80218EF8  88 72 08 5D */	lbz r3, 0x85d(r18)
/* 80218EFC  88 04 03 01 */	lbz r0, 0x301(r4)
/* 80218F00  7C 03 00 40 */	cmplw r3, r0
/* 80218F04  40 82 00 2C */	bne lbl_80218F30
/* 80218F08  88 72 08 5E */	lbz r3, 0x85e(r18)
/* 80218F0C  88 04 03 02 */	lbz r0, 0x302(r4)
/* 80218F10  7C 03 00 40 */	cmplw r3, r0
/* 80218F14  40 82 00 1C */	bne lbl_80218F30
/* 80218F18  88 72 08 5F */	lbz r3, 0x85f(r18)
/* 80218F1C  88 04 03 03 */	lbz r0, 0x303(r4)
/* 80218F20  7C 03 00 40 */	cmplw r3, r0
/* 80218F24  40 82 00 0C */	bne lbl_80218F30
/* 80218F28  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80218F2C  41 82 00 D8 */	beq lbl_80219004
lbl_80218F30:
/* 80218F30  98 B2 08 5C */	stb r5, 0x85c(r18)
/* 80218F34  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80218F38  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80218F3C  88 03 03 01 */	lbz r0, 0x301(r3)
/* 80218F40  98 12 08 5D */	stb r0, 0x85d(r18)
/* 80218F44  88 03 03 02 */	lbz r0, 0x302(r3)
/* 80218F48  98 12 08 5E */	stb r0, 0x85e(r18)
/* 80218F4C  88 03 03 03 */	lbz r0, 0x303(r3)
/* 80218F50  98 12 08 5F */	stb r0, 0x85f(r18)
/* 80218F54  80 04 03 00 */	lwz r0, 0x300(r4)
/* 80218F58  90 01 00 0C */	stw r0, 0xc(r1)
/* 80218F5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80218F60  90 01 00 28 */	stw r0, 0x28(r1)
/* 80218F64  80 72 01 18 */	lwz r3, 0x118(r18)
/* 80218F68  80 63 00 04 */	lwz r3, 4(r3)
/* 80218F6C  88 01 00 28 */	lbz r0, 0x28(r1)
/* 80218F70  98 03 01 04 */	stb r0, 0x104(r3)
/* 80218F74  88 01 00 29 */	lbz r0, 0x29(r1)
/* 80218F78  98 03 01 05 */	stb r0, 0x105(r3)
/* 80218F7C  88 01 00 2A */	lbz r0, 0x2a(r1)
/* 80218F80  98 03 01 06 */	stb r0, 0x106(r3)
/* 80218F84  88 01 00 2B */	lbz r0, 0x2b(r1)
/* 80218F88  98 03 01 07 */	stb r0, 0x107(r3)
/* 80218F8C  88 01 00 24 */	lbz r0, 0x24(r1)
/* 80218F90  98 03 01 08 */	stb r0, 0x108(r3)
/* 80218F94  88 01 00 25 */	lbz r0, 0x25(r1)
/* 80218F98  98 03 01 09 */	stb r0, 0x109(r3)
/* 80218F9C  88 01 00 26 */	lbz r0, 0x26(r1)
/* 80218FA0  98 03 01 0A */	stb r0, 0x10a(r3)
/* 80218FA4  88 01 00 27 */	lbz r0, 0x27(r1)
/* 80218FA8  98 03 01 0B */	stb r0, 0x10b(r3)
/* 80218FAC  80 04 03 00 */	lwz r0, 0x300(r4)
/* 80218FB0  90 01 00 08 */	stw r0, 8(r1)
/* 80218FB4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80218FB8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80218FBC  80 72 01 1C */	lwz r3, 0x11c(r18)
/* 80218FC0  80 63 00 04 */	lwz r3, 4(r3)
/* 80218FC4  88 01 00 20 */	lbz r0, 0x20(r1)
/* 80218FC8  98 03 01 04 */	stb r0, 0x104(r3)
/* 80218FCC  88 01 00 21 */	lbz r0, 0x21(r1)
/* 80218FD0  98 03 01 05 */	stb r0, 0x105(r3)
/* 80218FD4  88 01 00 22 */	lbz r0, 0x22(r1)
/* 80218FD8  98 03 01 06 */	stb r0, 0x106(r3)
/* 80218FDC  88 01 00 23 */	lbz r0, 0x23(r1)
/* 80218FE0  98 03 01 07 */	stb r0, 0x107(r3)
/* 80218FE4  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 80218FE8  98 03 01 08 */	stb r0, 0x108(r3)
/* 80218FEC  88 01 00 1D */	lbz r0, 0x1d(r1)
/* 80218FF0  98 03 01 09 */	stb r0, 0x109(r3)
/* 80218FF4  88 01 00 1E */	lbz r0, 0x1e(r1)
/* 80218FF8  98 03 01 0A */	stb r0, 0x10a(r3)
/* 80218FFC  88 01 00 1F */	lbz r0, 0x1f(r1)
/* 80219000  98 03 01 0B */	stb r0, 0x10b(r3)
lbl_80219004:
/* 80219004  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80219008  48 14 91 E9 */	bl _restgpr_15
/* 8021900C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80219010  7C 08 03 A6 */	mtlr r0
/* 80219014  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80219018  4E 80 00 20 */	blr 

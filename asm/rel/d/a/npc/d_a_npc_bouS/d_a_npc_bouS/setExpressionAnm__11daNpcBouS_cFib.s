lbl_80974328:
/* 80974328  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8097432C  7C 08 02 A6 */	mflr r0
/* 80974330  90 01 00 24 */	stw r0, 0x24(r1)
/* 80974334  39 61 00 20 */	addi r11, r1, 0x20
/* 80974338  4B 9E DE 9D */	bl _savegpr_27
/* 8097433C  7C 7B 1B 78 */	mr r27, r3
/* 80974340  7C 9C 23 78 */	mr r28, r4
/* 80974344  7C BD 2B 78 */	mr r29, r5
/* 80974348  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 8097434C  54 00 06 A4 */	rlwinm r0, r0, 0, 0x1a, 0x12
/* 80974350  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80974354  1F DC 00 0C */	mulli r30, r28, 0xc
/* 80974358  3C 80 80 98 */	lis r4, l_bckGetParamList@ha /* 0x809787C4@ha */
/* 8097435C  38 84 87 C4 */	addi r4, r4, l_bckGetParamList@l /* 0x809787C4@l */
/* 80974360  7C A4 F0 2E */	lwzx r5, r4, r30
/* 80974364  2C 05 00 00 */	cmpwi r5, 0
/* 80974368  41 80 00 24 */	blt lbl_8097438C
/* 8097436C  7C 84 F2 14 */	add r4, r4, r30
/* 80974370  80 04 00 08 */	lwz r0, 8(r4)
/* 80974374  54 00 10 3A */	slwi r0, r0, 2
/* 80974378  3C 80 80 98 */	lis r4, l_arcNames@ha /* 0x80978920@ha */
/* 8097437C  38 84 89 20 */	addi r4, r4, l_arcNames@l /* 0x80978920@l */
/* 80974380  7C 84 00 2E */	lwzx r4, r4, r0
/* 80974384  4B 7D E7 A9 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80974388  48 00 00 08 */	b lbl_80974390
lbl_8097438C:
/* 8097438C  38 60 00 00 */	li r3, 0
lbl_80974390:
/* 80974390  7C 7F 1B 78 */	mr r31, r3
/* 80974394  3C 60 80 98 */	lis r3, l_bckGetParamList@ha /* 0x809787C4@ha */
/* 80974398  38 03 87 C4 */	addi r0, r3, l_bckGetParamList@l /* 0x809787C4@l */
/* 8097439C  7C 60 F2 14 */	add r3, r0, r30
/* 809743A0  83 C3 00 04 */	lwz r30, 4(r3)
/* 809743A4  38 60 00 00 */	li r3, 0
/* 809743A8  28 1C 00 06 */	cmplwi r28, 6
/* 809743AC  41 81 00 E0 */	bgt lbl_8097448C
/* 809743B0  3C 80 80 98 */	lis r4, lit_4655@ha /* 0x80978990@ha */
/* 809743B4  38 84 89 90 */	addi r4, r4, lit_4655@l /* 0x80978990@l */
/* 809743B8  57 80 10 3A */	slwi r0, r28, 2
/* 809743BC  7C 04 00 2E */	lwzx r0, r4, r0
/* 809743C0  7C 09 03 A6 */	mtctr r0
/* 809743C4  4E 80 04 20 */	bctr 
lbl_809743C8:
/* 809743C8  7F 63 DB 78 */	mr r3, r27
/* 809743CC  38 80 00 00 */	li r4, 0
/* 809743D0  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809743D4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809743D8  7D 89 03 A6 */	mtctr r12
/* 809743DC  4E 80 04 21 */	bctrl 
/* 809743E0  48 00 00 B0 */	b lbl_80974490
lbl_809743E4:
/* 809743E4  7F 63 DB 78 */	mr r3, r27
/* 809743E8  38 80 00 00 */	li r4, 0
/* 809743EC  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809743F0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809743F4  7D 89 03 A6 */	mtctr r12
/* 809743F8  4E 80 04 21 */	bctrl 
/* 809743FC  48 00 00 94 */	b lbl_80974490
lbl_80974400:
/* 80974400  7F 63 DB 78 */	mr r3, r27
/* 80974404  38 80 00 00 */	li r4, 0
/* 80974408  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 8097440C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80974410  7D 89 03 A6 */	mtctr r12
/* 80974414  4E 80 04 21 */	bctrl 
/* 80974418  48 00 00 78 */	b lbl_80974490
lbl_8097441C:
/* 8097441C  7F 63 DB 78 */	mr r3, r27
/* 80974420  38 80 00 01 */	li r4, 1
/* 80974424  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80974428  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8097442C  7D 89 03 A6 */	mtctr r12
/* 80974430  4E 80 04 21 */	bctrl 
/* 80974434  48 00 00 5C */	b lbl_80974490
lbl_80974438:
/* 80974438  7F 63 DB 78 */	mr r3, r27
/* 8097443C  38 80 00 02 */	li r4, 2
/* 80974440  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80974444  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80974448  7D 89 03 A6 */	mtctr r12
/* 8097444C  4E 80 04 21 */	bctrl 
/* 80974450  48 00 00 40 */	b lbl_80974490
lbl_80974454:
/* 80974454  7F 63 DB 78 */	mr r3, r27
/* 80974458  38 80 00 03 */	li r4, 3
/* 8097445C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80974460  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80974464  7D 89 03 A6 */	mtctr r12
/* 80974468  4E 80 04 21 */	bctrl 
/* 8097446C  48 00 00 24 */	b lbl_80974490
lbl_80974470:
/* 80974470  7F 63 DB 78 */	mr r3, r27
/* 80974474  38 80 00 04 */	li r4, 4
/* 80974478  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 8097447C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80974480  7D 89 03 A6 */	mtctr r12
/* 80974484  4E 80 04 21 */	bctrl 
/* 80974488  48 00 00 08 */	b lbl_80974490
lbl_8097448C:
/* 8097448C  3B E0 00 00 */	li r31, 0
lbl_80974490:
/* 80974490  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80974494  40 82 00 0C */	bne lbl_809744A0
/* 80974498  38 60 00 00 */	li r3, 0
/* 8097449C  48 00 00 60 */	b lbl_809744FC
lbl_809744A0:
/* 809744A0  28 1F 00 00 */	cmplwi r31, 0
/* 809744A4  40 82 00 0C */	bne lbl_809744B0
/* 809744A8  38 60 00 01 */	li r3, 1
/* 809744AC  48 00 00 50 */	b lbl_809744FC
lbl_809744B0:
/* 809744B0  7F 63 DB 78 */	mr r3, r27
/* 809744B4  7F E4 FB 78 */	mr r4, r31
/* 809744B8  3C A0 80 98 */	lis r5, lit_4446@ha /* 0x809784AC@ha */
/* 809744BC  C0 25 84 AC */	lfs f1, lit_4446@l(r5)  /* 0x809784AC@l */
/* 809744C0  7F C5 F3 78 */	mr r5, r30
/* 809744C4  38 C0 00 00 */	li r6, 0
/* 809744C8  38 E0 FF FF */	li r7, -1
/* 809744CC  7F A8 EB 78 */	mr r8, r29
/* 809744D0  4B 7D E7 B1 */	bl setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib
/* 809744D4  2C 03 00 00 */	cmpwi r3, 0
/* 809744D8  41 82 00 20 */	beq lbl_809744F8
/* 809744DC  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 809744E0  60 00 01 40 */	ori r0, r0, 0x140
/* 809744E4  90 1B 09 9C */	stw r0, 0x99c(r27)
/* 809744E8  38 00 00 00 */	li r0, 0
/* 809744EC  B0 1B 09 E4 */	sth r0, 0x9e4(r27)
/* 809744F0  38 60 00 01 */	li r3, 1
/* 809744F4  48 00 00 08 */	b lbl_809744FC
lbl_809744F8:
/* 809744F8  38 60 00 00 */	li r3, 0
lbl_809744FC:
/* 809744FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80974500  4B 9E DD 21 */	bl _restgpr_27
/* 80974504  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80974508  7C 08 03 A6 */	mtlr r0
/* 8097450C  38 21 00 20 */	addi r1, r1, 0x20
/* 80974510  4E 80 00 20 */	blr 

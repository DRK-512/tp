lbl_8033E7A8:
/* 8033E7A8  7C 08 02 A6 */	mflr r0
/* 8033E7AC  90 01 00 04 */	stw r0, 4(r1)
/* 8033E7B0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8033E7B4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8033E7B8  7C 7F 1B 78 */	mr r31, r3
/* 8033E7BC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8033E7C0  80 83 00 04 */	lwz r4, 4(r3)
/* 8033E7C4  80 A3 00 08 */	lwz r5, 8(r3)
/* 8033E7C8  28 04 00 00 */	cmplwi r4, 0
/* 8033E7CC  40 82 00 10 */	bne lbl_8033E7DC
/* 8033E7D0  3C 60 80 00 */	lis r3, 0x8000 /* 0x800030CC@ha */
/* 8033E7D4  90 A3 30 CC */	stw r5, 0x30CC(r3)  /* 0x800030CC@l */
/* 8033E7D8  48 00 00 08 */	b lbl_8033E7E0
lbl_8033E7DC:
/* 8033E7DC  90 A4 00 08 */	stw r5, 8(r4)
lbl_8033E7E0:
/* 8033E7E0  28 05 00 00 */	cmplwi r5, 0
/* 8033E7E4  40 82 00 10 */	bne lbl_8033E7F4
/* 8033E7E8  3C 60 80 00 */	lis r3, 0x8000 /* 0x800030C8@ha */
/* 8033E7EC  90 83 30 C8 */	stw r4, 0x30C8(r3)  /* 0x800030C8@l */
/* 8033E7F0  48 00 00 08 */	b lbl_8033E7F8
lbl_8033E7F4:
/* 8033E7F4  90 85 00 04 */	stw r4, 4(r5)
lbl_8033E7F8:
/* 8033E7F8  3C 60 80 00 */	lis r3, 0x8000 /* 0x800030C8@ha */
/* 8033E7FC  83 C3 30 C8 */	lwz r30, 0x30C8(r3)  /* 0x800030C8@l */
/* 8033E800  48 00 00 14 */	b lbl_8033E814
lbl_8033E804:
/* 8033E804  38 7F 00 00 */	addi r3, r31, 0
/* 8033E808  38 9E 00 00 */	addi r4, r30, 0
/* 8033E80C  4B FF FD 65 */	bl Undo
/* 8033E810  83 DE 00 04 */	lwz r30, 4(r30)
lbl_8033E814:
/* 8033E814  28 1E 00 00 */	cmplwi r30, 0
/* 8033E818  40 82 FF EC */	bne lbl_8033E804
/* 8033E81C  7F E3 FB 78 */	mr r3, r31
/* 8033E820  4B FF F7 45 */	bl OSNotifyUnlink
/* 8033E824  3C 60 80 00 */	lis r3, 0x8000 /* 0x800030D0@ha */
/* 8033E828  80 63 30 D0 */	lwz r3, 0x30D0(r3)  /* 0x800030D0@l */
/* 8033E82C  28 03 00 00 */	cmplwi r3, 0
/* 8033E830  41 82 00 10 */	beq lbl_8033E840
/* 8033E834  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8033E838  7C 03 00 50 */	subf r0, r3, r0
/* 8033E83C  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_8033E840:
/* 8033E840  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 8033E844  28 00 00 00 */	cmplwi r0, 0
/* 8033E848  41 82 00 20 */	beq lbl_8033E868
/* 8033E84C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8033E850  54 03 18 38 */	slwi r3, r0, 3
/* 8033E854  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 8033E858  7C 64 18 2E */	lwzx r3, r4, r3
/* 8033E85C  54 63 00 3C */	rlwinm r3, r3, 0, 0, 0x1e
/* 8033E860  7C 03 00 50 */	subf r0, r3, r0
/* 8033E864  90 1F 00 34 */	stw r0, 0x34(r31)
lbl_8033E868:
/* 8033E868  88 1F 00 31 */	lbz r0, 0x31(r31)
/* 8033E86C  28 00 00 00 */	cmplwi r0, 0
/* 8033E870  41 82 00 20 */	beq lbl_8033E890
/* 8033E874  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8033E878  54 03 18 38 */	slwi r3, r0, 3
/* 8033E87C  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 8033E880  7C 64 18 2E */	lwzx r3, r4, r3
/* 8033E884  54 63 00 3C */	rlwinm r3, r3, 0, 0, 0x1e
/* 8033E888  7C 03 00 50 */	subf r0, r3, r0
/* 8033E88C  90 1F 00 38 */	stw r0, 0x38(r31)
lbl_8033E890:
/* 8033E890  88 1F 00 32 */	lbz r0, 0x32(r31)
/* 8033E894  28 00 00 00 */	cmplwi r0, 0
/* 8033E898  41 82 00 20 */	beq lbl_8033E8B8
/* 8033E89C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8033E8A0  54 03 18 38 */	slwi r3, r0, 3
/* 8033E8A4  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 8033E8A8  7C 64 18 2E */	lwzx r3, r4, r3
/* 8033E8AC  54 63 00 3C */	rlwinm r3, r3, 0, 0, 0x1e
/* 8033E8B0  7C 03 00 50 */	subf r0, r3, r0
/* 8033E8B4  90 1F 00 3C */	stw r0, 0x3c(r31)
lbl_8033E8B8:
/* 8033E8B8  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8033E8BC  48 00 00 14 */	b lbl_8033E8D0
lbl_8033E8C0:
/* 8033E8C0  80 04 00 04 */	lwz r0, 4(r4)
/* 8033E8C4  7C 1F 00 50 */	subf r0, r31, r0
/* 8033E8C8  90 04 00 04 */	stw r0, 4(r4)
/* 8033E8CC  38 84 00 08 */	addi r4, r4, 8
lbl_8033E8D0:
/* 8033E8D0  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8033E8D4  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8033E8D8  7C 03 02 14 */	add r0, r3, r0
/* 8033E8DC  7C 04 00 40 */	cmplw r4, r0
/* 8033E8E0  41 80 FF E0 */	blt lbl_8033E8C0
/* 8033E8E4  38 C0 00 01 */	li r6, 1
/* 8033E8E8  38 A0 00 08 */	li r5, 8
/* 8033E8EC  38 60 00 00 */	li r3, 0
/* 8033E8F0  48 00 00 40 */	b lbl_8033E930
lbl_8033E8F4:
/* 8033E8F4  88 1F 00 33 */	lbz r0, 0x33(r31)
/* 8033E8F8  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8033E8FC  7C 06 00 40 */	cmplw r6, r0
/* 8033E900  7C 84 2A 14 */	add r4, r4, r5
/* 8033E904  40 82 00 10 */	bne lbl_8033E914
/* 8033E908  98 7F 00 33 */	stb r3, 0x33(r31)
/* 8033E90C  90 64 00 00 */	stw r3, 0(r4)
/* 8033E910  48 00 00 18 */	b lbl_8033E928
lbl_8033E914:
/* 8033E914  80 04 00 00 */	lwz r0, 0(r4)
/* 8033E918  28 00 00 00 */	cmplwi r0, 0
/* 8033E91C  41 82 00 0C */	beq lbl_8033E928
/* 8033E920  7C 1F 00 50 */	subf r0, r31, r0
/* 8033E924  90 04 00 00 */	stw r0, 0(r4)
lbl_8033E928:
/* 8033E928  38 A5 00 08 */	addi r5, r5, 8
/* 8033E92C  38 C6 00 01 */	addi r6, r6, 1
lbl_8033E930:
/* 8033E930  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8033E934  7C 06 00 40 */	cmplw r6, r0
/* 8033E938  41 80 FF BC */	blt lbl_8033E8F4
/* 8033E93C  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8033E940  38 60 00 01 */	li r3, 1
/* 8033E944  7C 1F 00 50 */	subf r0, r31, r0
/* 8033E948  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8033E94C  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8033E950  7C 1F 00 50 */	subf r0, r31, r0
/* 8033E954  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8033E958  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8033E95C  7C 1F 00 50 */	subf r0, r31, r0
/* 8033E960  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8033E964  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8033E968  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8033E96C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8033E970  38 21 00 18 */	addi r1, r1, 0x18
/* 8033E974  7C 08 03 A6 */	mtlr r0
/* 8033E978  4E 80 00 20 */	blr 

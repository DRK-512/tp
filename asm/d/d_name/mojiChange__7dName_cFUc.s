lbl_8024F1EC:
/* 8024F1EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024F1F0  7C 08 02 A6 */	mflr r0
/* 8024F1F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024F1F8  54 80 1D 78 */	rlwinm r0, r4, 3, 0x15, 0x1c
/* 8024F1FC  7C 83 02 14 */	add r4, r3, r0
/* 8024F200  88 04 02 CF */	lbz r0, 0x2cf(r4)
/* 8024F204  28 00 00 00 */	cmplwi r0, 0
/* 8024F208  41 82 00 1C */	beq lbl_8024F224
/* 8024F20C  89 04 02 CE */	lbz r8, 0x2ce(r4)
/* 8024F210  28 08 00 02 */	cmplwi r8, 2
/* 8024F214  41 82 00 10 */	beq lbl_8024F224
/* 8024F218  80 04 02 D0 */	lwz r0, 0x2d0(r4)
/* 8024F21C  28 00 81 40 */	cmplwi r0, 0x8140
/* 8024F220  40 82 00 0C */	bne lbl_8024F22C
lbl_8024F224:
/* 8024F224  38 60 00 00 */	li r3, 0
/* 8024F228  48 00 03 24 */	b lbl_8024F54C
lbl_8024F22C:
/* 8024F22C  88 E4 02 CC */	lbz r7, 0x2cc(r4)
/* 8024F230  28 07 00 04 */	cmplwi r7, 4
/* 8024F234  41 82 00 1C */	beq lbl_8024F250
/* 8024F238  28 07 00 06 */	cmplwi r7, 6
/* 8024F23C  41 82 00 14 */	beq lbl_8024F250
/* 8024F240  28 07 00 08 */	cmplwi r7, 8
/* 8024F244  41 82 00 0C */	beq lbl_8024F250
/* 8024F248  28 07 00 09 */	cmplwi r7, 9
/* 8024F24C  40 82 00 0C */	bne lbl_8024F258
lbl_8024F250:
/* 8024F250  38 60 00 00 */	li r3, 0
/* 8024F254  48 00 02 F8 */	b lbl_8024F54C
lbl_8024F258:
/* 8024F258  28 07 00 0C */	cmplwi r7, 0xc
/* 8024F25C  41 81 02 E8 */	bgt lbl_8024F544
/* 8024F260  3C A0 80 3C */	lis r5, lit_4121@ha /* 0x803C2750@ha */
/* 8024F264  38 C5 27 50 */	addi r6, r5, lit_4121@l /* 0x803C2750@l */
/* 8024F268  54 E5 10 3A */	slwi r5, r7, 2
/* 8024F26C  7C A6 28 2E */	lwzx r5, r6, r5
/* 8024F270  7C A9 03 A6 */	mtctr r5
/* 8024F274  4E 80 04 20 */	bctr 
/* 8024F278  28 00 83 45 */	cmplwi r0, 0x8345
/* 8024F27C  41 82 00 14 */	beq lbl_8024F290
/* 8024F280  28 00 83 44 */	cmplwi r0, 0x8344
/* 8024F284  41 82 00 0C */	beq lbl_8024F290
/* 8024F288  28 00 83 94 */	cmplwi r0, 0x8394
/* 8024F28C  40 82 00 44 */	bne lbl_8024F2D0
lbl_8024F290:
/* 8024F290  80 A4 02 D0 */	lwz r5, 0x2d0(r4)
/* 8024F294  38 05 00 01 */	addi r0, r5, 1
/* 8024F298  90 04 02 D0 */	stw r0, 0x2d0(r4)
/* 8024F29C  80 04 02 D0 */	lwz r0, 0x2d0(r4)
/* 8024F2A0  28 00 83 46 */	cmplwi r0, 0x8346
/* 8024F2A4  40 82 00 10 */	bne lbl_8024F2B4
/* 8024F2A8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008394@ha */
/* 8024F2AC  38 05 83 94 */	addi r0, r5, 0x8394 /* 0x00008394@l */
/* 8024F2B0  90 04 02 D0 */	stw r0, 0x2d0(r4)
lbl_8024F2B4:
/* 8024F2B4  80 04 02 D0 */	lwz r0, 0x2d0(r4)
/* 8024F2B8  28 00 83 95 */	cmplwi r0, 0x8395
/* 8024F2BC  40 82 02 88 */	bne lbl_8024F544
/* 8024F2C0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008344@ha */
/* 8024F2C4  38 05 83 44 */	addi r0, r5, 0x8344 /* 0x00008344@l */
/* 8024F2C8  90 04 02 D0 */	stw r0, 0x2d0(r4)
/* 8024F2CC  48 00 02 78 */	b lbl_8024F544
lbl_8024F2D0:
/* 8024F2D0  28 08 00 00 */	cmplwi r8, 0
/* 8024F2D4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000829F@ha */
/* 8024F2D8  38 C5 82 9F */	addi r6, r5, 0x829F /* 0x0000829F@l */
/* 8024F2DC  41 82 00 08 */	beq lbl_8024F2E4
/* 8024F2E0  38 C5 83 40 */	addi r6, r5, -31936
lbl_8024F2E4:
/* 8024F2E4  7C 06 00 50 */	subf r0, r6, r0
/* 8024F2E8  54 05 0F FE */	srwi r5, r0, 0x1f
/* 8024F2EC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8024F2F0  7C 00 2A 78 */	xor r0, r0, r5
/* 8024F2F4  7C 05 00 51 */	subf. r0, r5, r0
/* 8024F2F8  41 82 00 14 */	beq lbl_8024F30C
/* 8024F2FC  80 A4 02 D0 */	lwz r5, 0x2d0(r4)
/* 8024F300  38 05 FF FF */	addi r0, r5, -1
/* 8024F304  90 04 02 D0 */	stw r0, 0x2d0(r4)
/* 8024F308  48 00 02 3C */	b lbl_8024F544
lbl_8024F30C:
/* 8024F30C  80 A4 02 D0 */	lwz r5, 0x2d0(r4)
/* 8024F310  38 05 00 01 */	addi r0, r5, 1
/* 8024F314  90 04 02 D0 */	stw r0, 0x2d0(r4)
/* 8024F318  48 00 02 2C */	b lbl_8024F544
/* 8024F31C  28 08 00 00 */	cmplwi r8, 0
/* 8024F320  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082A9@ha */
/* 8024F324  38 C5 82 A9 */	addi r6, r5, 0x82A9 /* 0x000082A9@l */
/* 8024F328  41 82 00 08 */	beq lbl_8024F330
/* 8024F32C  38 C5 83 4A */	addi r6, r5, -31926
lbl_8024F330:
/* 8024F330  7C A6 00 50 */	subf r5, r6, r0
/* 8024F334  54 A6 0F FE */	srwi r6, r5, 0x1f
/* 8024F338  54 A5 07 FE */	clrlwi r5, r5, 0x1f
/* 8024F33C  7C A5 32 78 */	xor r5, r5, r6
/* 8024F340  7C C6 28 50 */	subf r6, r6, r5
/* 8024F344  38 A6 00 01 */	addi r5, r6, 1
/* 8024F348  54 A5 07 FE */	clrlwi r5, r5, 0x1f
/* 8024F34C  7C 06 00 50 */	subf r0, r6, r0
/* 8024F350  7C 05 02 14 */	add r0, r5, r0
/* 8024F354  90 04 02 D0 */	stw r0, 0x2d0(r4)
/* 8024F358  48 00 01 EC */	b lbl_8024F544
/* 8024F35C  28 08 00 00 */	cmplwi r8, 0
/* 8024F360  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082B3@ha */
/* 8024F364  38 C5 82 B3 */	addi r6, r5, 0x82B3 /* 0x000082B3@l */
/* 8024F368  41 82 00 08 */	beq lbl_8024F370
/* 8024F36C  38 C5 83 54 */	addi r6, r5, -31916
lbl_8024F370:
/* 8024F370  7C A6 00 50 */	subf r5, r6, r0
/* 8024F374  54 A6 0F FE */	srwi r6, r5, 0x1f
/* 8024F378  54 A5 07 FE */	clrlwi r5, r5, 0x1f
/* 8024F37C  7C A5 32 78 */	xor r5, r5, r6
/* 8024F380  7C C6 28 50 */	subf r6, r6, r5
/* 8024F384  38 A6 00 01 */	addi r5, r6, 1
/* 8024F388  54 A5 07 FE */	clrlwi r5, r5, 0x1f
/* 8024F38C  7C 06 00 50 */	subf r0, r6, r0
/* 8024F390  7C 05 02 14 */	add r0, r5, r0
/* 8024F394  90 04 02 D0 */	stw r0, 0x2d0(r4)
/* 8024F398  48 00 01 AC */	b lbl_8024F544
/* 8024F39C  28 00 81 5B */	cmplwi r0, 0x815b
/* 8024F3A0  41 82 01 A4 */	beq lbl_8024F544
/* 8024F3A4  28 08 00 00 */	cmplwi r8, 0
/* 8024F3A8  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082C0@ha */
/* 8024F3AC  38 C5 82 C0 */	addi r6, r5, 0x82C0 /* 0x000082C0@l */
/* 8024F3B0  41 82 00 08 */	beq lbl_8024F3B8
/* 8024F3B4  38 C5 83 61 */	addi r6, r5, -31903
lbl_8024F3B8:
/* 8024F3B8  7C 00 30 40 */	cmplw r0, r6
/* 8024F3BC  41 81 00 44 */	bgt lbl_8024F400
/* 8024F3C0  28 08 00 00 */	cmplwi r8, 0
/* 8024F3C4  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082BD@ha */
/* 8024F3C8  38 C5 82 BD */	addi r6, r5, 0x82BD /* 0x000082BD@l */
/* 8024F3CC  41 82 00 08 */	beq lbl_8024F3D4
/* 8024F3D0  38 C5 83 5E */	addi r6, r5, -31906
lbl_8024F3D4:
/* 8024F3D4  7C A6 00 50 */	subf r5, r6, r0
/* 8024F3D8  54 A6 0F FE */	srwi r6, r5, 0x1f
/* 8024F3DC  54 A5 07 FE */	clrlwi r5, r5, 0x1f
/* 8024F3E0  7C A5 32 78 */	xor r5, r5, r6
/* 8024F3E4  7C C6 28 50 */	subf r6, r6, r5
/* 8024F3E8  38 A6 00 01 */	addi r5, r6, 1
/* 8024F3EC  54 A5 07 FE */	clrlwi r5, r5, 0x1f
/* 8024F3F0  7C 06 00 50 */	subf r0, r6, r0
/* 8024F3F4  7C 05 02 14 */	add r0, r5, r0
/* 8024F3F8  90 04 02 D0 */	stw r0, 0x2d0(r4)
/* 8024F3FC  48 00 01 48 */	b lbl_8024F544
lbl_8024F400:
/* 8024F400  28 08 00 00 */	cmplwi r8, 0
/* 8024F404  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082C7@ha */
/* 8024F408  38 C5 82 C7 */	addi r6, r5, 0x82C7 /* 0x000082C7@l */
/* 8024F40C  41 82 00 08 */	beq lbl_8024F414
/* 8024F410  38 C5 83 68 */	addi r6, r5, -31896
lbl_8024F414:
/* 8024F414  7C 00 30 40 */	cmplw r0, r6
/* 8024F418  41 81 00 60 */	bgt lbl_8024F478
/* 8024F41C  28 08 00 00 */	cmplwi r8, 0
/* 8024F420  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082C4@ha */
/* 8024F424  38 C5 82 C4 */	addi r6, r5, 0x82C4 /* 0x000082C4@l */
/* 8024F428  41 82 00 08 */	beq lbl_8024F430
/* 8024F42C  38 C5 83 65 */	addi r6, r5, -31899
lbl_8024F430:
/* 8024F430  7C 00 30 40 */	cmplw r0, r6
/* 8024F434  41 80 00 44 */	blt lbl_8024F478
/* 8024F438  28 08 00 00 */	cmplwi r8, 0
/* 8024F43C  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082C4@ha */
/* 8024F440  38 C5 82 C4 */	addi r6, r5, 0x82C4 /* 0x000082C4@l */
/* 8024F444  41 82 00 08 */	beq lbl_8024F44C
/* 8024F448  38 C5 83 65 */	addi r6, r5, -31899
lbl_8024F44C:
/* 8024F44C  7C A6 00 50 */	subf r5, r6, r0
/* 8024F450  54 A6 0F FE */	srwi r6, r5, 0x1f
/* 8024F454  54 A5 07 FE */	clrlwi r5, r5, 0x1f
/* 8024F458  7C A5 32 78 */	xor r5, r5, r6
/* 8024F45C  7C C6 28 50 */	subf r6, r6, r5
/* 8024F460  38 A6 00 01 */	addi r5, r6, 1
/* 8024F464  54 A5 07 FE */	clrlwi r5, r5, 0x1f
/* 8024F468  7C 06 00 50 */	subf r0, r6, r0
/* 8024F46C  7C 05 02 14 */	add r0, r5, r0
/* 8024F470  90 04 02 D0 */	stw r0, 0x2d0(r4)
/* 8024F474  48 00 00 D0 */	b lbl_8024F544
lbl_8024F478:
/* 8024F478  28 08 00 00 */	cmplwi r8, 0
/* 8024F47C  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082C1@ha */
/* 8024F480  38 C5 82 C1 */	addi r6, r5, 0x82C1 /* 0x000082C1@l */
/* 8024F484  41 82 00 08 */	beq lbl_8024F48C
/* 8024F488  38 C5 83 62 */	addi r6, r5, -31902
lbl_8024F48C:
/* 8024F48C  7C E6 00 50 */	subf r7, r6, r0
/* 8024F490  38 C0 00 03 */	li r6, 3
/* 8024F494  7C A7 33 D6 */	divw r5, r7, r6
/* 8024F498  7C A5 31 D6 */	mullw r5, r5, r6
/* 8024F49C  7C A5 38 50 */	subf r5, r5, r7
/* 8024F4A0  38 C5 00 01 */	addi r6, r5, 1
/* 8024F4A4  2C 06 00 02 */	cmpwi r6, 2
/* 8024F4A8  40 81 00 08 */	ble lbl_8024F4B0
/* 8024F4AC  38 C0 00 00 */	li r6, 0
lbl_8024F4B0:
/* 8024F4B0  7C 05 00 50 */	subf r0, r5, r0
/* 8024F4B4  7C 06 02 14 */	add r0, r6, r0
/* 8024F4B8  90 04 02 D0 */	stw r0, 0x2d0(r4)
/* 8024F4BC  48 00 00 88 */	b lbl_8024F544
/* 8024F4C0  28 08 00 00 */	cmplwi r8, 0
/* 8024F4C4  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082CD@ha */
/* 8024F4C8  38 C5 82 CD */	addi r6, r5, 0x82CD /* 0x000082CD@l */
/* 8024F4CC  41 82 00 08 */	beq lbl_8024F4D4
/* 8024F4D0  38 C5 83 6E */	addi r6, r5, -31890
lbl_8024F4D4:
/* 8024F4D4  7C E6 00 50 */	subf r7, r6, r0
/* 8024F4D8  38 C0 00 03 */	li r6, 3
/* 8024F4DC  7C A7 33 D6 */	divw r5, r7, r6
/* 8024F4E0  7C A5 31 D6 */	mullw r5, r5, r6
/* 8024F4E4  7C A5 38 50 */	subf r5, r5, r7
/* 8024F4E8  38 C5 00 01 */	addi r6, r5, 1
/* 8024F4EC  2C 06 00 02 */	cmpwi r6, 2
/* 8024F4F0  40 81 00 08 */	ble lbl_8024F4F8
/* 8024F4F4  38 C0 00 00 */	li r6, 0
lbl_8024F4F8:
/* 8024F4F8  7C 05 00 50 */	subf r0, r5, r0
/* 8024F4FC  7C 06 02 14 */	add r0, r6, r0
/* 8024F500  90 04 02 D0 */	stw r0, 0x2d0(r4)
/* 8024F504  48 00 00 40 */	b lbl_8024F544
/* 8024F508  28 08 00 00 */	cmplwi r8, 0
/* 8024F50C  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082E1@ha */
/* 8024F510  38 C5 82 E1 */	addi r6, r5, 0x82E1 /* 0x000082E1@l */
/* 8024F514  41 82 00 08 */	beq lbl_8024F51C
/* 8024F518  38 C5 83 83 */	addi r6, r5, -31869
lbl_8024F51C:
/* 8024F51C  7C A6 00 50 */	subf r5, r6, r0
/* 8024F520  54 A6 0F FE */	srwi r6, r5, 0x1f
/* 8024F524  54 A5 07 FE */	clrlwi r5, r5, 0x1f
/* 8024F528  7C A5 32 78 */	xor r5, r5, r6
/* 8024F52C  7C C6 28 50 */	subf r6, r6, r5
/* 8024F530  38 A6 00 01 */	addi r5, r6, 1
/* 8024F534  54 A5 07 FE */	clrlwi r5, r5, 0x1f
/* 8024F538  7C 06 00 50 */	subf r0, r6, r0
/* 8024F53C  7C 05 02 14 */	add r0, r5, r0
/* 8024F540  90 04 02 D0 */	stw r0, 0x2d0(r4)
lbl_8024F544:
/* 8024F544  48 00 03 49 */	bl setNameText__7dName_cFv
/* 8024F548  38 60 00 01 */	li r3, 1
lbl_8024F54C:
/* 8024F54C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024F550  7C 08 03 A6 */	mtlr r0
/* 8024F554  38 21 00 10 */	addi r1, r1, 0x10
/* 8024F558  4E 80 00 20 */	blr 

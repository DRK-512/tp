lbl_800F2628:
/* 800F2628  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F262C  7C 08 02 A6 */	mflr r0
/* 800F2630  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F2634  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F2638  7C 7F 1B 78 */	mr r31, r3
/* 800F263C  4B FC 4C A9 */	bl checkItemActorPointer__9daAlink_cFv
/* 800F2640  2C 03 00 00 */	cmpwi r3, 0
/* 800F2644  40 82 00 0C */	bne lbl_800F2650
/* 800F2648  38 60 00 01 */	li r3, 1
/* 800F264C  48 00 00 94 */	b lbl_800F26E0
lbl_800F2650:
/* 800F2650  38 60 00 00 */	li r3, 0
/* 800F2654  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800F2658  28 00 00 40 */	cmplwi r0, 0x40
/* 800F265C  41 82 00 0C */	beq lbl_800F2668
/* 800F2660  28 00 01 02 */	cmplwi r0, 0x102
/* 800F2664  40 82 00 14 */	bne lbl_800F2678
lbl_800F2668:
/* 800F2668  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800F266C  28 00 00 54 */	cmplwi r0, 0x54
/* 800F2670  40 82 00 08 */	bne lbl_800F2678
/* 800F2674  38 60 00 01 */	li r3, 1
lbl_800F2678:
/* 800F2678  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F267C  41 82 00 10 */	beq lbl_800F268C
/* 800F2680  7F E3 FB 78 */	mr r3, r31
/* 800F2684  38 80 00 12 */	li r4, 0x12
/* 800F2688  4B FC 0B C9 */	bl setDoStatus__9daAlink_cFUc
lbl_800F268C:
/* 800F268C  7F E3 FB 78 */	mr r3, r31
/* 800F2690  4B FF B3 95 */	bl setSyncRidePos__9daAlink_cFv
/* 800F2694  2C 03 00 00 */	cmpwi r3, 0
/* 800F2698  40 82 00 0C */	bne lbl_800F26A4
/* 800F269C  38 60 00 01 */	li r3, 1
/* 800F26A0  48 00 00 40 */	b lbl_800F26E0
lbl_800F26A4:
/* 800F26A4  7F E3 FB 78 */	mr r3, r31
/* 800F26A8  4B FF B6 C5 */	bl checkHorseSpecialProc__9daAlink_cFv
/* 800F26AC  2C 03 00 00 */	cmpwi r3, 0
/* 800F26B0  41 82 00 0C */	beq lbl_800F26BC
/* 800F26B4  38 60 00 01 */	li r3, 1
/* 800F26B8  48 00 00 28 */	b lbl_800F26E0
lbl_800F26BC:
/* 800F26BC  7F E3 FB 78 */	mr r3, r31
/* 800F26C0  4B FF C6 D9 */	bl setBaseRideAnime__9daAlink_cFv
/* 800F26C4  7F E3 FB 78 */	mr r3, r31
/* 800F26C8  4B FF CD 89 */	bl checkNextActionHorse__9daAlink_cFv
/* 800F26CC  2C 03 00 00 */	cmpwi r3, 0
/* 800F26D0  40 82 00 0C */	bne lbl_800F26DC
/* 800F26D4  7F E3 FB 78 */	mr r3, r31
/* 800F26D8  4B FF C9 79 */	bl setBodyAngleRideReadyAnime__9daAlink_cFv
lbl_800F26DC:
/* 800F26DC  38 60 00 01 */	li r3, 1
lbl_800F26E0:
/* 800F26E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F26E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F26E8  7C 08 03 A6 */	mtlr r0
/* 800F26EC  38 21 00 10 */	addi r1, r1, 0x10
/* 800F26F0  4E 80 00 20 */	blr 

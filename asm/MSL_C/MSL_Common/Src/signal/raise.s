lbl_8036881C:
/* 8036881C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80368820  7C 08 02 A6 */	mflr r0
/* 80368824  90 01 00 14 */	stw r0, 0x14(r1)
/* 80368828  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036882C  93 C1 00 08 */	stw r30, 8(r1)
/* 80368830  7C 7E 1B 78 */	mr r30, r3
/* 80368834  2C 1E 00 01 */	cmpwi r30, 1
/* 80368838  41 80 00 0C */	blt lbl_80368844
/* 8036883C  2C 1E 00 06 */	cmpwi r30, 6
/* 80368840  40 81 00 0C */	ble lbl_8036884C
lbl_80368844:
/* 80368844  38 60 FF FF */	li r3, -1
/* 80368848  48 00 00 7C */	b lbl_803688C4
lbl_8036884C:
/* 8036884C  38 60 00 04 */	li r3, 4
/* 80368850  4B FF CC 19 */	bl __begin_critical_region
/* 80368854  3C 60 80 45 */	lis r3, signal_funcs@ha /* 0x8044D878@ha */
/* 80368858  57 C0 10 3A */	slwi r0, r30, 2
/* 8036885C  38 63 D8 78 */	addi r3, r3, signal_funcs@l /* 0x8044D878@l */
/* 80368860  7C 63 02 14 */	add r3, r3, r0
/* 80368864  87 E3 FF FC */	lwzu r31, -4(r3)
/* 80368868  28 1F 00 01 */	cmplwi r31, 1
/* 8036886C  41 82 00 0C */	beq lbl_80368878
/* 80368870  38 00 00 00 */	li r0, 0
/* 80368874  90 03 00 00 */	stw r0, 0(r3)
lbl_80368878:
/* 80368878  38 60 00 04 */	li r3, 4
/* 8036887C  4B FF CB E9 */	bl __end_critical_region
/* 80368880  28 1F 00 01 */	cmplwi r31, 1
/* 80368884  41 82 00 14 */	beq lbl_80368898
/* 80368888  28 1F 00 00 */	cmplwi r31, 0
/* 8036888C  40 82 00 14 */	bne lbl_803688A0
/* 80368890  2C 1E 00 01 */	cmpwi r30, 1
/* 80368894  40 82 00 0C */	bne lbl_803688A0
lbl_80368898:
/* 80368898  38 60 00 00 */	li r3, 0
/* 8036889C  48 00 00 28 */	b lbl_803688C4
lbl_803688A0:
/* 803688A0  28 1F 00 00 */	cmplwi r31, 0
/* 803688A4  40 82 00 0C */	bne lbl_803688B0
/* 803688A8  38 60 00 00 */	li r3, 0
/* 803688AC  4B FF A1 21 */	bl exit
lbl_803688B0:
/* 803688B0  7F EC FB 78 */	mr r12, r31
/* 803688B4  7F C3 F3 78 */	mr r3, r30
/* 803688B8  7D 89 03 A6 */	mtctr r12
/* 803688BC  4E 80 04 21 */	bctrl 
/* 803688C0  38 60 00 00 */	li r3, 0
lbl_803688C4:
/* 803688C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803688C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803688CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803688D0  7C 08 03 A6 */	mtlr r0
/* 803688D4  38 21 00 10 */	addi r1, r1, 0x10
/* 803688D8  4E 80 00 20 */	blr 

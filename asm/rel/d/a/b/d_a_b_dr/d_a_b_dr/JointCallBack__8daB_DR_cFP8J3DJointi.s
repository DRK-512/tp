lbl_805BB120:
/* 805BB120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BB124  7C 08 02 A6 */	mflr r0
/* 805BB128  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BB12C  7C 60 1B 78 */	mr r0, r3
/* 805BB130  2C 04 00 00 */	cmpwi r4, 0
/* 805BB134  40 82 00 24 */	bne lbl_805BB158
/* 805BB138  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 805BB13C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 805BB140  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 805BB144  80 65 00 14 */	lwz r3, 0x14(r5)
/* 805BB148  28 03 00 00 */	cmplwi r3, 0
/* 805BB14C  41 82 00 0C */	beq lbl_805BB158
/* 805BB150  7C 04 03 78 */	mr r4, r0
/* 805BB154  4B FF FE 2D */	bl ctrlJoint__8daB_DR_cFP8J3DJointP8J3DModel
lbl_805BB158:
/* 805BB158  38 60 00 01 */	li r3, 1
/* 805BB15C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BB160  7C 08 03 A6 */	mtlr r0
/* 805BB164  38 21 00 10 */	addi r1, r1, 0x10
/* 805BB168  4E 80 00 20 */	blr 

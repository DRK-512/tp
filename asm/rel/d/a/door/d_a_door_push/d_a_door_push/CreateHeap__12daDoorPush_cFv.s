lbl_806781FC:
/* 806781FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80678200  7C 08 02 A6 */	mflr r0
/* 80678204  90 01 00 24 */	stw r0, 0x24(r1)
/* 80678208  39 61 00 20 */	addi r11, r1, 0x20
/* 8067820C  4B CE 9F C5 */	bl _savegpr_26
/* 80678210  7C 7F 1B 78 */	mr r31, r3
/* 80678214  3C 60 80 68 */	lis r3, l_arcName@ha /* 0x80678F70@ha */
/* 80678218  38 63 8F 70 */	addi r3, r3, l_arcName@l /* 0x80678F70@l */
/* 8067821C  80 63 00 00 */	lwz r3, 0(r3)
/* 80678220  38 80 00 05 */	li r4, 5
/* 80678224  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80678228  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8067822C  3F 85 00 02 */	addis r28, r5, 2
/* 80678230  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80678234  7F 85 E3 78 */	mr r5, r28
/* 80678238  38 C0 00 80 */	li r6, 0x80
/* 8067823C  4B 9C 40 B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80678240  7C 7B 1B 78 */	mr r27, r3
/* 80678244  3B 40 00 00 */	li r26, 0
/* 80678248  3B C0 00 00 */	li r30, 0
/* 8067824C  3F A0 11 00 */	lis r29, 0x1100 /* 0x11000084@ha */
lbl_80678250:
/* 80678250  7F 63 DB 78 */	mr r3, r27
/* 80678254  3C 80 00 08 */	lis r4, 8
/* 80678258  38 BD 00 84 */	addi r5, r29, 0x0084 /* 0x11000084@l */
/* 8067825C  4B 99 C9 F9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80678260  38 1E 05 A8 */	addi r0, r30, 0x5a8
/* 80678264  7C 7F 01 2E */	stwx r3, r31, r0
/* 80678268  7C 1F 00 2E */	lwzx r0, r31, r0
/* 8067826C  28 00 00 00 */	cmplwi r0, 0
/* 80678270  40 82 00 0C */	bne lbl_8067827C
/* 80678274  38 60 00 00 */	li r3, 0
/* 80678278  48 00 00 88 */	b lbl_80678300
lbl_8067827C:
/* 8067827C  3B 5A 00 01 */	addi r26, r26, 1
/* 80678280  2C 1A 00 02 */	cmpwi r26, 2
/* 80678284  3B DE 00 04 */	addi r30, r30, 4
/* 80678288  41 80 FF C8 */	blt lbl_80678250
/* 8067828C  38 60 00 C0 */	li r3, 0xc0
/* 80678290  4B C5 69 BD */	bl __nw__FUl
/* 80678294  7C 60 1B 79 */	or. r0, r3, r3
/* 80678298  41 82 00 0C */	beq lbl_806782A4
/* 8067829C  4B A0 36 D5 */	bl __ct__4dBgWFv
/* 806782A0  7C 60 1B 78 */	mr r0, r3
lbl_806782A4:
/* 806782A4  90 1F 05 B0 */	stw r0, 0x5b0(r31)
/* 806782A8  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 806782AC  28 00 00 00 */	cmplwi r0, 0
/* 806782B0  41 82 00 3C */	beq lbl_806782EC
/* 806782B4  3C 60 80 68 */	lis r3, l_arcName@ha /* 0x80678F70@ha */
/* 806782B8  38 63 8F 70 */	addi r3, r3, l_arcName@l /* 0x80678F70@l */
/* 806782BC  80 63 00 00 */	lwz r3, 0(r3)
/* 806782C0  38 80 00 08 */	li r4, 8
/* 806782C4  7F 85 E3 78 */	mr r5, r28
/* 806782C8  38 C0 00 80 */	li r6, 0x80
/* 806782CC  4B 9C 40 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806782D0  7C 64 1B 78 */	mr r4, r3
/* 806782D4  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 806782D8  38 A0 00 01 */	li r5, 1
/* 806782DC  38 DF 05 B4 */	addi r6, r31, 0x5b4
/* 806782E0  4B A0 1C 59 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 806782E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806782E8  41 82 00 14 */	beq lbl_806782FC
lbl_806782EC:
/* 806782EC  38 00 00 00 */	li r0, 0
/* 806782F0  90 1F 05 B0 */	stw r0, 0x5b0(r31)
/* 806782F4  38 60 00 00 */	li r3, 0
/* 806782F8  48 00 00 08 */	b lbl_80678300
lbl_806782FC:
/* 806782FC  38 60 00 01 */	li r3, 1
lbl_80678300:
/* 80678300  39 61 00 20 */	addi r11, r1, 0x20
/* 80678304  4B CE 9F 19 */	bl _restgpr_26
/* 80678308  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8067830C  7C 08 03 A6 */	mtlr r0
/* 80678310  38 21 00 20 */	addi r1, r1, 0x20
/* 80678314  4E 80 00 20 */	blr 

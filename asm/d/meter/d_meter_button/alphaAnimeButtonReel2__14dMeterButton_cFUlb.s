lbl_80204278:
/* 80204278  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020427C  7C 08 02 A6 */	mflr r0
/* 80204280  90 01 00 24 */	stw r0, 0x24(r1)
/* 80204284  39 61 00 20 */	addi r11, r1, 0x20
/* 80204288  48 15 DF 55 */	bl _savegpr_29
/* 8020428C  7C 7E 1B 78 */	mr r30, r3
/* 80204290  7C 9F 23 78 */	mr r31, r4
/* 80204294  7C BD 2B 78 */	mr r29, r5
/* 80204298  54 80 04 63 */	rlwinm. r0, r4, 0, 0x11, 0x11
/* 8020429C  40 82 00 94 */	bne lbl_80204330
/* 802042A0  48 03 3F 8D */	bl getStatus__12dMsgObject_cFv
/* 802042A4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 802042A8  20 60 00 01 */	subfic r3, r0, 1
/* 802042AC  30 03 FF FF */	addic r0, r3, -1
/* 802042B0  7C 00 19 10 */	subfe r0, r0, r3
/* 802042B4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802042B8  40 82 00 78 */	bne lbl_80204330
/* 802042BC  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 802042C0  41 82 00 70 */	beq lbl_80204330
/* 802042C4  57 E0 06 31 */	rlwinm. r0, r31, 0, 0x18, 0x18
/* 802042C8  40 82 00 68 */	bne lbl_80204330
/* 802042CC  57 E0 00 43 */	rlwinm. r0, r31, 0, 1, 1
/* 802042D0  40 82 00 60 */	bne lbl_80204330
/* 802042D4  57 E0 04 E7 */	rlwinm. r0, r31, 0, 0x13, 0x13
/* 802042D8  40 82 00 58 */	bne lbl_80204330
/* 802042DC  57 E0 06 73 */	rlwinm. r0, r31, 0, 0x19, 0x19
/* 802042E0  41 82 00 30 */	beq lbl_80204310
/* 802042E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802042E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802042EC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 802042F0  28 00 00 00 */	cmplwi r0, 0
/* 802042F4  41 82 00 10 */	beq lbl_80204304
/* 802042F8  A0 03 4F A4 */	lhz r0, 0x4fa4(r3)
/* 802042FC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80204300  48 00 00 08 */	b lbl_80204308
lbl_80204304:
/* 80204304  38 00 00 00 */	li r0, 0
lbl_80204308:
/* 80204308  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 8020430C  40 82 00 24 */	bne lbl_80204330
lbl_80204310:
/* 80204310  57 E0 05 EF */	rlwinm. r0, r31, 0, 0x17, 0x17
/* 80204314  40 82 00 1C */	bne lbl_80204330
/* 80204318  57 E0 07 39 */	rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 8020431C  40 82 00 14 */	bne lbl_80204330
/* 80204320  57 E0 06 F7 */	rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 80204324  40 82 00 0C */	bne lbl_80204330
/* 80204328  57 E0 06 B5 */	rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 8020432C  41 82 00 10 */	beq lbl_8020433C
lbl_80204330:
/* 80204330  7F C3 F3 78 */	mr r3, r30
/* 80204334  48 00 46 6D */	bl setAlphaButtonReel2AnimeMin__14dMeterButton_cFv
/* 80204338  48 00 00 14 */	b lbl_8020434C
lbl_8020433C:
/* 8020433C  7F C3 F3 78 */	mr r3, r30
/* 80204340  48 00 46 F9 */	bl setAlphaButtonReel2AnimeMax__14dMeterButton_cFv
/* 80204344  38 60 00 01 */	li r3, 1
/* 80204348  48 00 00 08 */	b lbl_80204350
lbl_8020434C:
/* 8020434C  38 60 00 00 */	li r3, 0
lbl_80204350:
/* 80204350  39 61 00 20 */	addi r11, r1, 0x20
/* 80204354  48 15 DE D5 */	bl _restgpr_29
/* 80204358  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020435C  7C 08 03 A6 */	mtlr r0
/* 80204360  38 21 00 20 */	addi r1, r1, 0x20
/* 80204364  4E 80 00 20 */	blr 

lbl_80202A9C:
/* 80202A9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80202AA0  7C 08 02 A6 */	mflr r0
/* 80202AA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80202AA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80202AAC  48 15 F7 29 */	bl _savegpr_27
/* 80202AB0  7C 7F 1B 78 */	mr r31, r3
/* 80202AB4  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80202AB8  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80202ABC  48 01 97 5D */	bl resetFloatingMessage__13dMeter2Info_cFv
/* 80202AC0  48 03 57 99 */	bl getScrnDrawPtr__12dMsgObject_cFv
/* 80202AC4  30 03 FF FF */	addic r0, r3, -1
/* 80202AC8  7C 00 19 10 */	subfe r0, r0, r3
/* 80202ACC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80202AD0  40 82 00 1C */	bne lbl_80202AEC
/* 80202AD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80202AD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80202ADC  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 80202AE0  48 03 46 D1 */	bl isMidonaTalkWait__12dMsgObject_cFv
/* 80202AE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80202AE8  41 82 00 7C */	beq lbl_80202B64
lbl_80202AEC:
/* 80202AEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80202AF0  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80202AF4  80 7D 5D BC */	lwz r3, 0x5dbc(r29)
/* 80202AF8  48 03 46 ED */	bl isPlaceMessage__12dMsgObject_cFv
/* 80202AFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80202B00  40 82 00 64 */	bne lbl_80202B64
/* 80202B04  80 7D 5D BC */	lwz r3, 0x5dbc(r29)
/* 80202B08  48 03 45 E1 */	bl isHowlMessage__12dMsgObject_cFv
/* 80202B0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80202B10  40 82 00 54 */	bne lbl_80202B64
/* 80202B14  80 7D 5D BC */	lwz r3, 0x5dbc(r29)
/* 80202B18  48 03 46 E1 */	bl isBossMessage__12dMsgObject_cFv
/* 80202B1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80202B20  40 82 00 44 */	bne lbl_80202B64
/* 80202B24  80 7D 5D BC */	lwz r3, 0x5dbc(r29)
/* 80202B28  48 03 46 E5 */	bl isBookMessage__12dMsgObject_cFv
/* 80202B2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80202B30  40 82 00 34 */	bne lbl_80202B64
/* 80202B34  80 7D 5D BC */	lwz r3, 0x5dbc(r29)
/* 80202B38  48 03 46 DD */	bl isStaffMessage__12dMsgObject_cFv
/* 80202B3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80202B40  40 82 00 24 */	bne lbl_80202B64
/* 80202B44  80 7D 5D BC */	lwz r3, 0x5dbc(r29)
/* 80202B48  48 03 45 75 */	bl isKanbanMessage__12dMsgObject_cFv
/* 80202B4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80202B50  40 82 00 14 */	bne lbl_80202B64
/* 80202B54  80 7D 5D BC */	lwz r3, 0x5dbc(r29)
/* 80202B58  88 03 01 9A */	lbz r0, 0x19a(r3)
/* 80202B5C  28 00 00 11 */	cmplwi r0, 0x11
/* 80202B60  40 82 00 40 */	bne lbl_80202BA0
lbl_80202B64:
/* 80202B64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80202B68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80202B6C  80 63 5C 70 */	lwz r3, 0x5c70(r3)
/* 80202B70  81 83 00 00 */	lwz r12, 0(r3)
/* 80202B74  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80202B78  7D 89 03 A6 */	mtctr r12
/* 80202B7C  4E 80 04 21 */	bctrl 
/* 80202B80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80202B84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80202B88  80 63 5C E4 */	lwz r3, 0x5ce4(r3)
/* 80202B8C  81 83 00 00 */	lwz r12, 0(r3)
/* 80202B90  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80202B94  7D 89 03 A6 */	mtctr r12
/* 80202B98  4E 80 04 21 */	bctrl 
/* 80202B9C  48 00 00 2C */	b lbl_80202BC8
lbl_80202BA0:
/* 80202BA0  48 03 45 09 */	bl isGetItemMessage__12dMsgObject_cFv
/* 80202BA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80202BA8  41 82 00 20 */	beq lbl_80202BC8
/* 80202BAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80202BB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80202BB4  80 63 5C 70 */	lwz r3, 0x5c70(r3)
/* 80202BB8  81 83 00 00 */	lwz r12, 0(r3)
/* 80202BBC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80202BC0  7D 89 03 A6 */	mtctr r12
/* 80202BC4  4E 80 04 21 */	bctrl 
lbl_80202BC8:
/* 80202BC8  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 80202BCC  80 9F 01 10 */	lwz r4, 0x110(r31)
/* 80202BD0  48 0C B9 79 */	bl free__7JKRHeapFPv
/* 80202BD4  38 00 00 00 */	li r0, 0
/* 80202BD8  90 1F 01 10 */	stw r0, 0x110(r31)
/* 80202BDC  80 7F 00 08 */	lwz r3, 8(r31)
/* 80202BE0  28 03 00 00 */	cmplwi r3, 0
/* 80202BE4  41 82 00 18 */	beq lbl_80202BFC
/* 80202BE8  38 80 00 01 */	li r4, 1
/* 80202BEC  81 83 00 00 */	lwz r12, 0(r3)
/* 80202BF0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202BF4  7D 89 03 A6 */	mtctr r12
/* 80202BF8  4E 80 04 21 */	bctrl 
lbl_80202BFC:
/* 80202BFC  38 00 00 00 */	li r0, 0
/* 80202C00  90 1F 00 08 */	stw r0, 8(r31)
/* 80202C04  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80202C08  28 03 00 00 */	cmplwi r3, 0
/* 80202C0C  41 82 00 24 */	beq lbl_80202C30
/* 80202C10  41 82 00 18 */	beq lbl_80202C28
/* 80202C14  38 80 00 01 */	li r4, 1
/* 80202C18  81 83 00 00 */	lwz r12, 0(r3)
/* 80202C1C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202C20  7D 89 03 A6 */	mtctr r12
/* 80202C24  4E 80 04 21 */	bctrl 
lbl_80202C28:
/* 80202C28  38 00 00 00 */	li r0, 0
/* 80202C2C  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80202C30:
/* 80202C30  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80202C34  28 03 00 00 */	cmplwi r3, 0
/* 80202C38  41 82 00 18 */	beq lbl_80202C50
/* 80202C3C  38 80 00 01 */	li r4, 1
/* 80202C40  81 83 00 00 */	lwz r12, 0(r3)
/* 80202C44  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202C48  7D 89 03 A6 */	mtctr r12
/* 80202C4C  4E 80 04 21 */	bctrl 
lbl_80202C50:
/* 80202C50  38 00 00 00 */	li r0, 0
/* 80202C54  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80202C58  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80202C5C  28 03 00 00 */	cmplwi r3, 0
/* 80202C60  41 82 00 18 */	beq lbl_80202C78
/* 80202C64  38 80 00 01 */	li r4, 1
/* 80202C68  81 83 00 00 */	lwz r12, 0(r3)
/* 80202C6C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202C70  7D 89 03 A6 */	mtctr r12
/* 80202C74  4E 80 04 21 */	bctrl 
lbl_80202C78:
/* 80202C78  38 00 00 00 */	li r0, 0
/* 80202C7C  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 80202C80  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 80202C84  28 03 00 00 */	cmplwi r3, 0
/* 80202C88  41 82 00 18 */	beq lbl_80202CA0
/* 80202C8C  38 80 00 01 */	li r4, 1
/* 80202C90  81 83 00 00 */	lwz r12, 0(r3)
/* 80202C94  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202C98  7D 89 03 A6 */	mtctr r12
/* 80202C9C  4E 80 04 21 */	bctrl 
lbl_80202CA0:
/* 80202CA0  38 00 00 00 */	li r0, 0
/* 80202CA4  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80202CA8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80202CAC  28 03 00 00 */	cmplwi r3, 0
/* 80202CB0  41 82 00 24 */	beq lbl_80202CD4
/* 80202CB4  41 82 00 18 */	beq lbl_80202CCC
/* 80202CB8  38 80 00 01 */	li r4, 1
/* 80202CBC  81 83 00 00 */	lwz r12, 0(r3)
/* 80202CC0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202CC4  7D 89 03 A6 */	mtctr r12
/* 80202CC8  4E 80 04 21 */	bctrl 
lbl_80202CCC:
/* 80202CCC  38 00 00 00 */	li r0, 0
/* 80202CD0  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_80202CD4:
/* 80202CD4  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80202CD8  28 03 00 00 */	cmplwi r3, 0
/* 80202CDC  41 82 00 24 */	beq lbl_80202D00
/* 80202CE0  41 82 00 18 */	beq lbl_80202CF8
/* 80202CE4  38 80 00 01 */	li r4, 1
/* 80202CE8  81 83 00 00 */	lwz r12, 0(r3)
/* 80202CEC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202CF0  7D 89 03 A6 */	mtctr r12
/* 80202CF4  4E 80 04 21 */	bctrl 
lbl_80202CF8:
/* 80202CF8  38 00 00 00 */	li r0, 0
/* 80202CFC  90 1F 00 28 */	stw r0, 0x28(r31)
lbl_80202D00:
/* 80202D00  80 7F 00 F8 */	lwz r3, 0xf8(r31)
/* 80202D04  28 03 00 00 */	cmplwi r3, 0
/* 80202D08  41 82 00 24 */	beq lbl_80202D2C
/* 80202D0C  41 82 00 18 */	beq lbl_80202D24
/* 80202D10  38 80 00 01 */	li r4, 1
/* 80202D14  81 83 00 00 */	lwz r12, 0(r3)
/* 80202D18  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202D1C  7D 89 03 A6 */	mtctr r12
/* 80202D20  4E 80 04 21 */	bctrl 
lbl_80202D24:
/* 80202D24  38 00 00 00 */	li r0, 0
/* 80202D28  90 1F 00 F8 */	stw r0, 0xf8(r31)
lbl_80202D2C:
/* 80202D2C  3B 60 00 00 */	li r27, 0
/* 80202D30  3B C0 00 00 */	li r30, 0
/* 80202D34  7F DD F3 78 */	mr r29, r30
lbl_80202D38:
/* 80202D38  3B 9E 00 FC */	addi r28, r30, 0xfc
/* 80202D3C  7C 7F E0 2E */	lwzx r3, r31, r28
/* 80202D40  28 03 00 00 */	cmplwi r3, 0
/* 80202D44  41 82 00 20 */	beq lbl_80202D64
/* 80202D48  41 82 00 18 */	beq lbl_80202D60
/* 80202D4C  38 80 00 01 */	li r4, 1
/* 80202D50  81 83 00 00 */	lwz r12, 0(r3)
/* 80202D54  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202D58  7D 89 03 A6 */	mtctr r12
/* 80202D5C  4E 80 04 21 */	bctrl 
lbl_80202D60:
/* 80202D60  7F BF E1 2E */	stwx r29, r31, r28
lbl_80202D64:
/* 80202D64  3B 7B 00 01 */	addi r27, r27, 1
/* 80202D68  2C 1B 00 04 */	cmpwi r27, 4
/* 80202D6C  3B DE 00 04 */	addi r30, r30, 4
/* 80202D70  41 80 FF C8 */	blt lbl_80202D38
/* 80202D74  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80202D78  28 03 00 00 */	cmplwi r3, 0
/* 80202D7C  41 82 00 18 */	beq lbl_80202D94
/* 80202D80  38 80 00 01 */	li r4, 1
/* 80202D84  81 83 00 00 */	lwz r12, 0(r3)
/* 80202D88  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202D8C  7D 89 03 A6 */	mtctr r12
/* 80202D90  4E 80 04 21 */	bctrl 
lbl_80202D94:
/* 80202D94  38 00 00 00 */	li r0, 0
/* 80202D98  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 80202D9C  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80202DA0  28 03 00 00 */	cmplwi r3, 0
/* 80202DA4  41 82 00 18 */	beq lbl_80202DBC
/* 80202DA8  38 80 00 01 */	li r4, 1
/* 80202DAC  81 83 00 00 */	lwz r12, 0(r3)
/* 80202DB0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202DB4  7D 89 03 A6 */	mtctr r12
/* 80202DB8  4E 80 04 21 */	bctrl 
lbl_80202DBC:
/* 80202DBC  38 00 00 00 */	li r0, 0
/* 80202DC0  90 1F 00 30 */	stw r0, 0x30(r31)
/* 80202DC4  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80202DC8  28 03 00 00 */	cmplwi r3, 0
/* 80202DCC  41 82 00 18 */	beq lbl_80202DE4
/* 80202DD0  38 80 00 01 */	li r4, 1
/* 80202DD4  81 83 00 00 */	lwz r12, 0(r3)
/* 80202DD8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202DDC  7D 89 03 A6 */	mtctr r12
/* 80202DE0  4E 80 04 21 */	bctrl 
lbl_80202DE4:
/* 80202DE4  38 00 00 00 */	li r0, 0
/* 80202DE8  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80202DEC  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80202DF0  28 03 00 00 */	cmplwi r3, 0
/* 80202DF4  41 82 00 24 */	beq lbl_80202E18
/* 80202DF8  41 82 00 18 */	beq lbl_80202E10
/* 80202DFC  38 80 00 01 */	li r4, 1
/* 80202E00  81 83 00 00 */	lwz r12, 0(r3)
/* 80202E04  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202E08  7D 89 03 A6 */	mtctr r12
/* 80202E0C  4E 80 04 21 */	bctrl 
lbl_80202E10:
/* 80202E10  38 00 00 00 */	li r0, 0
/* 80202E14  90 1F 00 38 */	stw r0, 0x38(r31)
lbl_80202E18:
/* 80202E18  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80202E1C  28 03 00 00 */	cmplwi r3, 0
/* 80202E20  41 82 00 24 */	beq lbl_80202E44
/* 80202E24  41 82 00 18 */	beq lbl_80202E3C
/* 80202E28  38 80 00 01 */	li r4, 1
/* 80202E2C  81 83 00 00 */	lwz r12, 0(r3)
/* 80202E30  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202E34  7D 89 03 A6 */	mtctr r12
/* 80202E38  4E 80 04 21 */	bctrl 
lbl_80202E3C:
/* 80202E3C  38 00 00 00 */	li r0, 0
/* 80202E40  90 1F 00 3C */	stw r0, 0x3c(r31)
lbl_80202E44:
/* 80202E44  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80202E48  28 03 00 00 */	cmplwi r3, 0
/* 80202E4C  41 82 00 24 */	beq lbl_80202E70
/* 80202E50  41 82 00 18 */	beq lbl_80202E68
/* 80202E54  38 80 00 01 */	li r4, 1
/* 80202E58  81 83 00 00 */	lwz r12, 0(r3)
/* 80202E5C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202E60  7D 89 03 A6 */	mtctr r12
/* 80202E64  4E 80 04 21 */	bctrl 
lbl_80202E68:
/* 80202E68  38 00 00 00 */	li r0, 0
/* 80202E6C  90 1F 00 40 */	stw r0, 0x40(r31)
lbl_80202E70:
/* 80202E70  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80202E74  28 03 00 00 */	cmplwi r3, 0
/* 80202E78  41 82 00 24 */	beq lbl_80202E9C
/* 80202E7C  41 82 00 18 */	beq lbl_80202E94
/* 80202E80  38 80 00 01 */	li r4, 1
/* 80202E84  81 83 00 00 */	lwz r12, 0(r3)
/* 80202E88  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202E8C  7D 89 03 A6 */	mtctr r12
/* 80202E90  4E 80 04 21 */	bctrl 
lbl_80202E94:
/* 80202E94  38 00 00 00 */	li r0, 0
/* 80202E98  90 1F 00 44 */	stw r0, 0x44(r31)
lbl_80202E9C:
/* 80202E9C  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 80202EA0  28 03 00 00 */	cmplwi r3, 0
/* 80202EA4  41 82 00 24 */	beq lbl_80202EC8
/* 80202EA8  41 82 00 18 */	beq lbl_80202EC0
/* 80202EAC  38 80 00 01 */	li r4, 1
/* 80202EB0  81 83 00 00 */	lwz r12, 0(r3)
/* 80202EB4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202EB8  7D 89 03 A6 */	mtctr r12
/* 80202EBC  4E 80 04 21 */	bctrl 
lbl_80202EC0:
/* 80202EC0  38 00 00 00 */	li r0, 0
/* 80202EC4  90 1F 00 48 */	stw r0, 0x48(r31)
lbl_80202EC8:
/* 80202EC8  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 80202ECC  28 03 00 00 */	cmplwi r3, 0
/* 80202ED0  41 82 00 24 */	beq lbl_80202EF4
/* 80202ED4  41 82 00 18 */	beq lbl_80202EEC
/* 80202ED8  38 80 00 01 */	li r4, 1
/* 80202EDC  81 83 00 00 */	lwz r12, 0(r3)
/* 80202EE0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202EE4  7D 89 03 A6 */	mtctr r12
/* 80202EE8  4E 80 04 21 */	bctrl 
lbl_80202EEC:
/* 80202EEC  38 00 00 00 */	li r0, 0
/* 80202EF0  90 1F 00 4C */	stw r0, 0x4c(r31)
lbl_80202EF4:
/* 80202EF4  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 80202EF8  28 03 00 00 */	cmplwi r3, 0
/* 80202EFC  41 82 00 24 */	beq lbl_80202F20
/* 80202F00  41 82 00 18 */	beq lbl_80202F18
/* 80202F04  38 80 00 01 */	li r4, 1
/* 80202F08  81 83 00 00 */	lwz r12, 0(r3)
/* 80202F0C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202F10  7D 89 03 A6 */	mtctr r12
/* 80202F14  4E 80 04 21 */	bctrl 
lbl_80202F18:
/* 80202F18  38 00 00 00 */	li r0, 0
/* 80202F1C  90 1F 00 50 */	stw r0, 0x50(r31)
lbl_80202F20:
/* 80202F20  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 80202F24  28 03 00 00 */	cmplwi r3, 0
/* 80202F28  41 82 00 24 */	beq lbl_80202F4C
/* 80202F2C  41 82 00 18 */	beq lbl_80202F44
/* 80202F30  38 80 00 01 */	li r4, 1
/* 80202F34  81 83 00 00 */	lwz r12, 0(r3)
/* 80202F38  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202F3C  7D 89 03 A6 */	mtctr r12
/* 80202F40  4E 80 04 21 */	bctrl 
lbl_80202F44:
/* 80202F44  38 00 00 00 */	li r0, 0
/* 80202F48  90 1F 00 54 */	stw r0, 0x54(r31)
lbl_80202F4C:
/* 80202F4C  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 80202F50  28 03 00 00 */	cmplwi r3, 0
/* 80202F54  41 82 00 24 */	beq lbl_80202F78
/* 80202F58  41 82 00 18 */	beq lbl_80202F70
/* 80202F5C  38 80 00 01 */	li r4, 1
/* 80202F60  81 83 00 00 */	lwz r12, 0(r3)
/* 80202F64  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202F68  7D 89 03 A6 */	mtctr r12
/* 80202F6C  4E 80 04 21 */	bctrl 
lbl_80202F70:
/* 80202F70  38 00 00 00 */	li r0, 0
/* 80202F74  90 1F 00 58 */	stw r0, 0x58(r31)
lbl_80202F78:
/* 80202F78  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 80202F7C  28 03 00 00 */	cmplwi r3, 0
/* 80202F80  41 82 00 24 */	beq lbl_80202FA4
/* 80202F84  41 82 00 18 */	beq lbl_80202F9C
/* 80202F88  38 80 00 01 */	li r4, 1
/* 80202F8C  81 83 00 00 */	lwz r12, 0(r3)
/* 80202F90  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202F94  7D 89 03 A6 */	mtctr r12
/* 80202F98  4E 80 04 21 */	bctrl 
lbl_80202F9C:
/* 80202F9C  38 00 00 00 */	li r0, 0
/* 80202FA0  90 1F 00 5C */	stw r0, 0x5c(r31)
lbl_80202FA4:
/* 80202FA4  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80202FA8  28 03 00 00 */	cmplwi r3, 0
/* 80202FAC  41 82 00 24 */	beq lbl_80202FD0
/* 80202FB0  41 82 00 18 */	beq lbl_80202FC8
/* 80202FB4  38 80 00 01 */	li r4, 1
/* 80202FB8  81 83 00 00 */	lwz r12, 0(r3)
/* 80202FBC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202FC0  7D 89 03 A6 */	mtctr r12
/* 80202FC4  4E 80 04 21 */	bctrl 
lbl_80202FC8:
/* 80202FC8  38 00 00 00 */	li r0, 0
/* 80202FCC  90 1F 00 60 */	stw r0, 0x60(r31)
lbl_80202FD0:
/* 80202FD0  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80202FD4  28 03 00 00 */	cmplwi r3, 0
/* 80202FD8  41 82 00 24 */	beq lbl_80202FFC
/* 80202FDC  41 82 00 18 */	beq lbl_80202FF4
/* 80202FE0  38 80 00 01 */	li r4, 1
/* 80202FE4  81 83 00 00 */	lwz r12, 0(r3)
/* 80202FE8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80202FEC  7D 89 03 A6 */	mtctr r12
/* 80202FF0  4E 80 04 21 */	bctrl 
lbl_80202FF4:
/* 80202FF4  38 00 00 00 */	li r0, 0
/* 80202FF8  90 1F 00 64 */	stw r0, 0x64(r31)
lbl_80202FFC:
/* 80202FFC  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 80203000  28 03 00 00 */	cmplwi r3, 0
/* 80203004  41 82 00 24 */	beq lbl_80203028
/* 80203008  41 82 00 18 */	beq lbl_80203020
/* 8020300C  38 80 00 01 */	li r4, 1
/* 80203010  81 83 00 00 */	lwz r12, 0(r3)
/* 80203014  81 8C 00 08 */	lwz r12, 8(r12)
/* 80203018  7D 89 03 A6 */	mtctr r12
/* 8020301C  4E 80 04 21 */	bctrl 
lbl_80203020:
/* 80203020  38 00 00 00 */	li r0, 0
/* 80203024  90 1F 00 68 */	stw r0, 0x68(r31)
lbl_80203028:
/* 80203028  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 8020302C  28 03 00 00 */	cmplwi r3, 0
/* 80203030  41 82 00 24 */	beq lbl_80203054
/* 80203034  41 82 00 18 */	beq lbl_8020304C
/* 80203038  38 80 00 01 */	li r4, 1
/* 8020303C  81 83 00 00 */	lwz r12, 0(r3)
/* 80203040  81 8C 00 08 */	lwz r12, 8(r12)
/* 80203044  7D 89 03 A6 */	mtctr r12
/* 80203048  4E 80 04 21 */	bctrl 
lbl_8020304C:
/* 8020304C  38 00 00 00 */	li r0, 0
/* 80203050  90 1F 00 6C */	stw r0, 0x6c(r31)
lbl_80203054:
/* 80203054  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 80203058  28 03 00 00 */	cmplwi r3, 0
/* 8020305C  41 82 00 24 */	beq lbl_80203080
/* 80203060  41 82 00 18 */	beq lbl_80203078
/* 80203064  38 80 00 01 */	li r4, 1
/* 80203068  81 83 00 00 */	lwz r12, 0(r3)
/* 8020306C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80203070  7D 89 03 A6 */	mtctr r12
/* 80203074  4E 80 04 21 */	bctrl 
lbl_80203078:
/* 80203078  38 00 00 00 */	li r0, 0
/* 8020307C  90 1F 00 70 */	stw r0, 0x70(r31)
lbl_80203080:
/* 80203080  3B 60 00 00 */	li r27, 0
/* 80203084  3B C0 00 00 */	li r30, 0
/* 80203088  3B A0 00 00 */	li r29, 0
lbl_8020308C:
/* 8020308C  3B 9E 00 78 */	addi r28, r30, 0x78
/* 80203090  7C 7F E0 2E */	lwzx r3, r31, r28
/* 80203094  28 03 00 00 */	cmplwi r3, 0
/* 80203098  41 82 00 18 */	beq lbl_802030B0
/* 8020309C  38 80 00 01 */	li r4, 1
/* 802030A0  81 83 00 00 */	lwz r12, 0(r3)
/* 802030A4  81 8C 00 08 */	lwz r12, 8(r12)
/* 802030A8  7D 89 03 A6 */	mtctr r12
/* 802030AC  4E 80 04 21 */	bctrl 
lbl_802030B0:
/* 802030B0  7F BF E1 2E */	stwx r29, r31, r28
/* 802030B4  3B 7B 00 01 */	addi r27, r27, 1
/* 802030B8  2C 1B 00 02 */	cmpwi r27, 2
/* 802030BC  3B DE 00 04 */	addi r30, r30, 4
/* 802030C0  41 80 FF CC */	blt lbl_8020308C
/* 802030C4  80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 802030C8  28 03 00 00 */	cmplwi r3, 0
/* 802030CC  41 82 00 18 */	beq lbl_802030E4
/* 802030D0  38 80 00 01 */	li r4, 1
/* 802030D4  81 83 00 00 */	lwz r12, 0(r3)
/* 802030D8  81 8C 00 08 */	lwz r12, 8(r12)
/* 802030DC  7D 89 03 A6 */	mtctr r12
/* 802030E0  4E 80 04 21 */	bctrl 
lbl_802030E4:
/* 802030E4  38 00 00 00 */	li r0, 0
/* 802030E8  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 802030EC  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 802030F0  28 03 00 00 */	cmplwi r3, 0
/* 802030F4  41 82 00 24 */	beq lbl_80203118
/* 802030F8  41 82 00 18 */	beq lbl_80203110
/* 802030FC  38 80 00 01 */	li r4, 1
/* 80203100  81 83 00 00 */	lwz r12, 0(r3)
/* 80203104  81 8C 00 08 */	lwz r12, 8(r12)
/* 80203108  7D 89 03 A6 */	mtctr r12
/* 8020310C  4E 80 04 21 */	bctrl 
lbl_80203110:
/* 80203110  38 00 00 00 */	li r0, 0
/* 80203114  90 1F 00 80 */	stw r0, 0x80(r31)
lbl_80203118:
/* 80203118  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8020311C  28 03 00 00 */	cmplwi r3, 0
/* 80203120  41 82 00 18 */	beq lbl_80203138
/* 80203124  38 80 00 01 */	li r4, 1
/* 80203128  81 83 00 00 */	lwz r12, 0(r3)
/* 8020312C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80203130  7D 89 03 A6 */	mtctr r12
/* 80203134  4E 80 04 21 */	bctrl 
lbl_80203138:
/* 80203138  38 00 00 00 */	li r0, 0
/* 8020313C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80203140  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 80203144  28 03 00 00 */	cmplwi r3, 0
/* 80203148  41 82 00 18 */	beq lbl_80203160
/* 8020314C  38 80 00 01 */	li r4, 1
/* 80203150  81 83 00 00 */	lwz r12, 0(r3)
/* 80203154  81 8C 00 08 */	lwz r12, 8(r12)
/* 80203158  7D 89 03 A6 */	mtctr r12
/* 8020315C  4E 80 04 21 */	bctrl 
lbl_80203160:
/* 80203160  38 00 00 00 */	li r0, 0
/* 80203164  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 80203168  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 8020316C  28 03 00 00 */	cmplwi r3, 0
/* 80203170  41 82 00 18 */	beq lbl_80203188
/* 80203174  38 80 00 01 */	li r4, 1
/* 80203178  81 83 00 00 */	lwz r12, 0(r3)
/* 8020317C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80203180  7D 89 03 A6 */	mtctr r12
/* 80203184  4E 80 04 21 */	bctrl 
lbl_80203188:
/* 80203188  38 00 00 00 */	li r0, 0
/* 8020318C  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 80203190  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80203194  28 03 00 00 */	cmplwi r3, 0
/* 80203198  41 82 00 18 */	beq lbl_802031B0
/* 8020319C  38 80 00 01 */	li r4, 1
/* 802031A0  81 83 00 00 */	lwz r12, 0(r3)
/* 802031A4  81 8C 00 08 */	lwz r12, 8(r12)
/* 802031A8  7D 89 03 A6 */	mtctr r12
/* 802031AC  4E 80 04 21 */	bctrl 
lbl_802031B0:
/* 802031B0  38 00 00 00 */	li r0, 0
/* 802031B4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 802031B8  80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 802031BC  28 03 00 00 */	cmplwi r3, 0
/* 802031C0  41 82 00 18 */	beq lbl_802031D8
/* 802031C4  38 80 00 01 */	li r4, 1
/* 802031C8  81 83 00 00 */	lwz r12, 0(r3)
/* 802031CC  81 8C 00 08 */	lwz r12, 8(r12)
/* 802031D0  7D 89 03 A6 */	mtctr r12
/* 802031D4  4E 80 04 21 */	bctrl 
lbl_802031D8:
/* 802031D8  38 00 00 00 */	li r0, 0
/* 802031DC  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 802031E0  3B 60 00 00 */	li r27, 0
/* 802031E4  3B C0 00 00 */	li r30, 0
lbl_802031E8:
/* 802031E8  7F 9F F2 14 */	add r28, r31, r30
/* 802031EC  80 7C 00 E4 */	lwz r3, 0xe4(r28)
/* 802031F0  28 03 00 00 */	cmplwi r3, 0
/* 802031F4  41 82 00 18 */	beq lbl_8020320C
/* 802031F8  38 80 00 01 */	li r4, 1
/* 802031FC  81 83 00 00 */	lwz r12, 0(r3)
/* 80203200  81 8C 00 08 */	lwz r12, 8(r12)
/* 80203204  7D 89 03 A6 */	mtctr r12
/* 80203208  4E 80 04 21 */	bctrl 
lbl_8020320C:
/* 8020320C  38 00 00 00 */	li r0, 0
/* 80203210  90 1C 00 E4 */	stw r0, 0xe4(r28)
/* 80203214  80 7C 00 EC */	lwz r3, 0xec(r28)
/* 80203218  28 03 00 00 */	cmplwi r3, 0
/* 8020321C  41 82 00 24 */	beq lbl_80203240
/* 80203220  41 82 00 18 */	beq lbl_80203238
/* 80203224  38 80 00 01 */	li r4, 1
/* 80203228  81 83 00 00 */	lwz r12, 0(r3)
/* 8020322C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80203230  7D 89 03 A6 */	mtctr r12
/* 80203234  4E 80 04 21 */	bctrl 
lbl_80203238:
/* 80203238  38 00 00 00 */	li r0, 0
/* 8020323C  90 1C 00 EC */	stw r0, 0xec(r28)
lbl_80203240:
/* 80203240  3B 7B 00 01 */	addi r27, r27, 1
/* 80203244  2C 1B 00 02 */	cmpwi r27, 2
/* 80203248  3B DE 00 04 */	addi r30, r30, 4
/* 8020324C  41 80 FF 9C */	blt lbl_802031E8
/* 80203250  80 7F 00 04 */	lwz r3, 4(r31)
/* 80203254  38 80 00 01 */	li r4, 1
/* 80203258  48 04 6A D1 */	bl __dt__12dMsgString_cFv
/* 8020325C  38 00 00 00 */	li r0, 0
/* 80203260  90 1F 00 04 */	stw r0, 4(r31)
/* 80203264  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 80203268  28 03 00 00 */	cmplwi r3, 0
/* 8020326C  41 82 00 18 */	beq lbl_80203284
/* 80203270  38 80 00 01 */	li r4, 1
/* 80203274  81 83 00 00 */	lwz r12, 0(r3)
/* 80203278  81 8C 00 08 */	lwz r12, 8(r12)
/* 8020327C  7D 89 03 A6 */	mtctr r12
/* 80203280  4E 80 04 21 */	bctrl 
lbl_80203284:
/* 80203284  38 00 00 00 */	li r0, 0
/* 80203288  90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 8020328C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80203290  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80203294  80 63 5C 9C */	lwz r3, 0x5c9c(r3)
/* 80203298  81 83 00 00 */	lwz r12, 0(r3)
/* 8020329C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802032A0  7D 89 03 A6 */	mtctr r12
/* 802032A4  4E 80 04 21 */	bctrl 
/* 802032A8  38 60 00 01 */	li r3, 1
/* 802032AC  39 61 00 20 */	addi r11, r1, 0x20
/* 802032B0  48 15 EF 71 */	bl _restgpr_27
/* 802032B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802032B8  7C 08 03 A6 */	mtlr r0
/* 802032BC  38 21 00 20 */	addi r1, r1, 0x20
/* 802032C0  4E 80 00 20 */	blr 

lbl_8074B920:
/* 8074B920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8074B924  7C 08 02 A6 */	mflr r0
/* 8074B928  90 01 00 14 */	stw r0, 0x14(r1)
/* 8074B92C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8074B930  93 C1 00 08 */	stw r30, 8(r1)
/* 8074B934  7C 7E 1B 79 */	or. r30, r3, r3
/* 8074B938  7C 9F 23 78 */	mr r31, r4
/* 8074B93C  41 82 00 38 */	beq lbl_8074B974
/* 8074B940  3C 80 80 75 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x8074C2C8@ha */
/* 8074B944  38 84 C2 C8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x8074C2C8@l */
/* 8074B948  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8074B94C  38 04 00 0C */	addi r0, r4, 0xc
/* 8074B950  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8074B954  38 04 00 18 */	addi r0, r4, 0x18
/* 8074B958  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8074B95C  38 80 00 00 */	li r4, 0
/* 8074B960  4B 92 A6 35 */	bl __dt__9dBgS_AcchFv
/* 8074B964  7F E0 07 35 */	extsh. r0, r31
/* 8074B968  40 81 00 0C */	ble lbl_8074B974
/* 8074B96C  7F C3 F3 78 */	mr r3, r30
/* 8074B970  4B B8 33 CD */	bl __dl__FPv
lbl_8074B974:
/* 8074B974  7F C3 F3 78 */	mr r3, r30
/* 8074B978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8074B97C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8074B980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8074B984  7C 08 03 A6 */	mtlr r0
/* 8074B988  38 21 00 10 */	addi r1, r1, 0x10
/* 8074B98C  4E 80 00 20 */	blr 

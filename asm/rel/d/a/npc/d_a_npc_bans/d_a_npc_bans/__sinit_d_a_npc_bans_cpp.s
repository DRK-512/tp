lbl_80967A10:
/* 80967A10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80967A14  7C 08 02 A6 */	mflr r0
/* 80967A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80967A1C  3C 60 80 97 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80968000@ha */
/* 80967A20  38 A3 80 00 */	addi r5, r3, cNullVec__6Z2Calc@l /* 0x80968000@l */
/* 80967A24  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80967A28  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80967A2C  80 64 00 00 */	lwz r3, 0(r4)
/* 80967A30  80 04 00 04 */	lwz r0, 4(r4)
/* 80967A34  90 65 05 60 */	stw r3, 0x560(r5)
/* 80967A38  90 05 05 64 */	stw r0, 0x564(r5)
/* 80967A3C  80 04 00 08 */	lwz r0, 8(r4)
/* 80967A40  90 05 05 68 */	stw r0, 0x568(r5)
/* 80967A44  38 85 05 60 */	addi r4, r5, 0x560
/* 80967A48  80 65 05 3C */	lwz r3, 0x53c(r5)
/* 80967A4C  80 05 05 40 */	lwz r0, 0x540(r5)
/* 80967A50  90 64 00 0C */	stw r3, 0xc(r4)
/* 80967A54  90 04 00 10 */	stw r0, 0x10(r4)
/* 80967A58  80 05 05 44 */	lwz r0, 0x544(r5)
/* 80967A5C  90 04 00 14 */	stw r0, 0x14(r4)
/* 80967A60  80 65 05 48 */	lwz r3, 0x548(r5)
/* 80967A64  80 05 05 4C */	lwz r0, 0x54c(r5)
/* 80967A68  90 64 00 18 */	stw r3, 0x18(r4)
/* 80967A6C  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80967A70  80 05 05 50 */	lwz r0, 0x550(r5)
/* 80967A74  90 04 00 20 */	stw r0, 0x20(r4)
/* 80967A78  80 65 05 54 */	lwz r3, 0x554(r5)
/* 80967A7C  80 05 05 58 */	lwz r0, 0x558(r5)
/* 80967A80  90 64 00 24 */	stw r3, 0x24(r4)
/* 80967A84  90 04 00 28 */	stw r0, 0x28(r4)
/* 80967A88  80 05 05 5C */	lwz r0, 0x55c(r5)
/* 80967A8C  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80967A90  3C 60 80 97 */	lis r3, __vt__18daNpc_Bans_Param_c@ha /* 0x80968840@ha */
/* 80967A94  38 03 88 40 */	addi r0, r3, __vt__18daNpc_Bans_Param_c@l /* 0x80968840@l */
/* 80967A98  3C 60 80 97 */	lis r3, l_HIO@ha /* 0x80968864@ha */
/* 80967A9C  94 03 88 64 */	stwu r0, l_HIO@l(r3)  /* 0x80968864@l */
/* 80967AA0  3C 80 80 96 */	lis r4, __dt__18daNpc_Bans_Param_cFv@ha /* 0x80967C24@ha */
/* 80967AA4  38 84 7C 24 */	addi r4, r4, __dt__18daNpc_Bans_Param_cFv@l /* 0x80967C24@l */
/* 80967AA8  3C A0 80 97 */	lis r5, lit_3873@ha /* 0x80968858@ha */
/* 80967AAC  38 A5 88 58 */	addi r5, r5, lit_3873@l /* 0x80968858@l */
/* 80967AB0  4B FF AD A9 */	bl __register_global_object
/* 80967AB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80967AB8  7C 08 03 A6 */	mtlr r0
/* 80967ABC  38 21 00 10 */	addi r1, r1, 0x10
/* 80967AC0  4E 80 00 20 */	blr 

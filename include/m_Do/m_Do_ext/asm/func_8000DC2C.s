/* 8000DC2C 0000AB6C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8000DC30 0000AB70  7C 08 02 A6 */ mflr r0
/* 8000DC34 0000AB74  90 01 00 14 */ stw r0, 0x14(r1)
/* 8000DC38 0000AB78  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8000DC3C 0000AB7C  7C 7F 1B 78 */ mr r31, r3
/* 8000DC40 0000AB80  80 A3 00 04 */ lwz r5, 4(r3)
/* 8000DC44 0000AB84  80 85 00 60 */ lwz r4, 0x60(r5)
/* 8000DC48 0000AB88  80 84 00 00 */ lwz r4, 0(r4)
/* 8000DC4C 0000AB8C  80 04 00 48 */ lwz r0, 0x48(r4)
/* 8000DC50 0000AB90  28 00 00 00 */ cmplwi r0, 0
/* 8000DC54 0000AB94  41 82 00 2C */ beq lbl_8000DC80
/* 8000DC58 0000AB98  A0 05 00 74 */ lhz r0, 0x74(r5)
/* 8000DC5C 0000AB9C  28 00 00 01 */ cmplwi r0, 1
/* 8000DC60 0000ABA0  41 82 00 20 */ beq lbl_8000DC80
/* 8000DC64 0000ABA4  81 83 00 00 */ lwz r12, 0(r3)
/* 8000DC68 0000ABA8  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 8000DC6C 0000ABAC  7D 89 03 A6 */ mtctr r12
/* 8000DC70 0000ABB0  4E 80 04 21 */ bctrl
/* 8000DC74 0000ABB4  7F E3 FB 78 */ mr r3, r31
/* 8000DC78 0000ABB8  4B FF FF 61 */ bl mDoExt_modelDiff
/* 8000DC7C 0000ABBC  48 00 00 20 */ b lbl_8000DC9C
lbl_8000DC80:
/* 8000DC80 0000ABC0  7F E3 FB 78 */ mr r3, r31
/* 8000DC84 0000ABC4  81 9F 00 00 */ lwz r12, 0(r31)
/* 8000DC88 0000ABC8  81 8C 00 08 */ lwz r12, 8(r12)
/* 8000DC8C 0000ABCC  7D 89 03 A6 */ mtctr r12
/* 8000DC90 0000ABD0  4E 80 04 21 */ bctrl
/* 8000DC94 0000ABD4  7F E3 FB 78 */ mr r3, r31
/* 8000DC98 0000ABD8  48 31 99 E5 */ bl J3DModel_NS_lock
lbl_8000DC9C:
/* 8000DC9C 0000ABDC  7F E3 FB 78 */ mr r3, r31
/* 8000DCA0 0000ABE0  81 9F 00 00 */ lwz r12, 0(r31)
/* 8000DCA4 0000ABE4  81 8C 00 1C */ lwz r12, 0x1c(r12)
/* 8000DCA8 0000ABE8  7D 89 03 A6 */ mtctr r12
/* 8000DCAC 0000ABEC  4E 80 04 21 */ bctrl
/* 8000DCB0 0000ABF0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8000DCB4 0000ABF4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8000DCB8 0000ABF8  7C 08 03 A6 */ mtlr r0
/* 8000DCBC 0000ABFC  38 21 00 10 */ addi r1, r1, 0x10
/* 8000DCC0 0000AC00  4E 80 00 20 */ blr

/* 8000D518 0000A458  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8000D51C 0000A45C  7C 08 02 A6 */ mflr r0
/* 8000D520 0000A460  90 01 00 14 */ stw r0, 0x14(r1)
/* 8000D524 0000A464  7C 65 1B 78 */ mr r5, r3
/* 8000D528 0000A468  80 63 00 14 */ lwz r3, 0x14(r3)
/* 8000D52C 0000A46C  D0 23 00 08 */ stfs f1, 8(r3)
/* 8000D530 0000A470  7C 83 23 78 */ mr r3, r4
/* 8000D534 0000A474  80 85 00 14 */ lwz r4, 0x14(r5)
/* 8000D538 0000A478  48 32 25 BD */ bl J3DMaterialTable_NS_entryMatColorAnimator
/* 8000D53C 0000A47C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8000D540 0000A480  7C 08 03 A6 */ mtlr r0
/* 8000D544 0000A484  38 21 00 10 */ addi r1, r1, 0x10
/* 8000D548 0000A488  4E 80 00 20 */ blr

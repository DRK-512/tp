/* 8000EFBC 0000BEFC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8000EFC0 0000BF00  7C 08 02 A6 */ mflr r0
/* 8000EFC4 0000BF04  90 01 00 14 */ stw r0, 0x14(r1)
/* 8000EFC8 0000BF08  7C 67 1B 78 */ mr r7, r3
/* 8000EFCC 0000BF0C  7C 80 23 78 */ mr r0, r4
/* 8000EFD0 0000BF10  7C A6 2B 78 */ mr r6, r5
/* 8000EFD4 0000BF14  38 6D 86 C0 */ addi r3, r13, 0x80450C40 - 0x80458580 /*SDA HACK; original: lbl_80450C40-_SDA_BASE_*/
/* 8000EFD8 0000BF18  7C E4 3B 78 */ mr r4, r7
/* 8000EFDC 0000BF1C  7C 05 03 78 */ mr r5, r0
/* 8000EFE0 0000BF20  4B FF FF 89 */ bl mDoExt_createSolidHeapToCurrent
/* 8000EFE4 0000BF24  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8000EFE8 0000BF28  7C 08 03 A6 */ mtlr r0
/* 8000EFEC 0000BF2C  38 21 00 10 */ addi r1, r1, 0x10
/* 8000EFF0 0000BF30  4E 80 00 20 */ blr

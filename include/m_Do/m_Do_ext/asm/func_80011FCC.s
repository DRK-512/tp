/* 80011FCC 0000EF0C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80011FD0 0000EF10  7C 08 02 A6 */ mflr r0
/* 80011FD4 0000EF14  90 01 00 14 */ stw r0, 0x14(r1)
/* 80011FD8 0000EF18  7C 66 1B 78 */ mr r6, r3
/* 80011FDC 0000EF1C  38 80 00 00 */ li r4, 0
/* 80011FE0 0000EF20  D0 23 00 44 */ stfs f1, 0x44(r3)
/* 80011FE4 0000EF24  80 03 00 48 */ lwz r0, 0x48(r3)
/* 80011FE8 0000EF28  28 00 00 00 */ cmplwi r0, 0
/* 80011FEC 0000EF2C  41 82 00 A4 */ beq lbl_80012090
/* 80011FF0 0000EF30  C0 26 00 44 */ lfs f1, 0x44(r6)
/* 80011FF4 0000EF34  C0 02 81 2C */ lfs f0, lbl_80451B2C-_SDA2_BASE_(r2)
/* 80011FF8 0000EF38  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80011FFC 0000EF3C  40 80 00 18 */ bge lbl_80012014
/* 80012000 0000EF40  80 66 00 08 */ lwz r3, 8(r6)
/* 80012004 0000EF44  28 03 00 00 */ cmplwi r3, 0
/* 80012008 0000EF48  41 82 00 1C */ beq lbl_80012024
/* 8001200C 0000EF4C  80 83 00 28 */ lwz r4, 0x28(r3)
/* 80012010 0000EF50  48 00 00 14 */ b lbl_80012024
lbl_80012014:
/* 80012014 0000EF54  80 66 00 40 */ lwz r3, 0x40(r6)
/* 80012018 0000EF58  28 03 00 00 */ cmplwi r3, 0
/* 8001201C 0000EF5C  41 82 00 08 */ beq lbl_80012024
/* 80012020 0000EF60  80 83 00 28 */ lwz r4, 0x28(r3)
lbl_80012024:
/* 80012024 0000EF64  80 06 00 4C */ lwz r0, 0x4c(r6)
/* 80012028 0000EF68  7C 04 00 40 */ cmplw r4, r0
/* 8001202C 0000EF6C  41 82 00 64 */ beq lbl_80012090
/* 80012030 0000EF70  28 04 00 00 */ cmplwi r4, 0
/* 80012034 0000EF74  41 82 00 54 */ beq lbl_80012088
/* 80012038 0000EF78  90 86 00 4C */ stw r4, 0x4c(r6)
/* 8001203C 0000EF7C  80 66 00 48 */ lwz r3, 0x48(r6)
/* 80012040 0000EF80  80 86 00 4C */ lwz r4, 0x4c(r6)
/* 80012044 0000EF84  C0 26 00 18 */ lfs f1, 0x18(r6)
/* 80012048 0000EF88  C0 02 81 1C */ lfs f0, lbl_80451B1C-_SDA2_BASE_(r2)
/* 8001204C 0000EF8C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80012050 0000EF90  4C 41 13 82 */ cror 2, 1, 2
/* 80012054 0000EF94  7C 00 00 26 */ mfcr r0
/* 80012058 0000EF98  54 05 1F FE */ rlwinm r5, r0, 3, 0x1f, 0x1f
/* 8001205C 0000EF9C  A8 06 00 16 */ lha r0, 0x16(r6)
/* 80012060 0000EFA0  C8 22 81 20 */ lfd f1, lbl_80451B20-_SDA2_BASE_(r2)
/* 80012064 0000EFA4  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 80012068 0000EFA8  90 01 00 0C */ stw r0, 0xc(r1)
/* 8001206C 0000EFAC  3C 00 43 30 */ lis r0, 0x4330
/* 80012070 0000EFB0  90 01 00 08 */ stw r0, 8(r1)
/* 80012074 0000EFB4  C8 01 00 08 */ lfd f0, 8(r1)
/* 80012078 0000EFB8  EC 20 08 28 */ fsubs f1, f0, f1
/* 8001207C 0000EFBC  C0 46 00 1C */ lfs f2, 0x1c(r6)
/* 80012080 0000EFC0  48 2A E5 A9 */ bl Z2Creature_NS_initAnime
/* 80012084 0000EFC4  48 00 00 0C */ b lbl_80012090
lbl_80012088:
/* 80012088 0000EFC8  38 00 00 00 */ li r0, 0
/* 8001208C 0000EFCC  90 06 00 4C */ stw r0, 0x4c(r6)
lbl_80012090:
/* 80012090 0000EFD0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80012094 0000EFD4  7C 08 03 A6 */ mtlr r0
/* 80012098 0000EFD8  38 21 00 10 */ addi r1, r1, 0x10
/* 8001209C 0000EFDC  4E 80 00 20 */ blr
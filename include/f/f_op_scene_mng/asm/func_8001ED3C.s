/* 8001ED3C 0001BC7C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001ED40 0001BC80  7C 08 02 A6 */ mflr r0
/* 8001ED44 0001BC84  90 01 00 14 */ stw r0, 0x14(r1)
/* 8001ED48 0001BC88  7C 64 1B 78 */ mr r4, r3
/* 8001ED4C 0001BC8C  38 60 00 01 */ li r3, 1
/* 8001ED50 0001BC90  38 A0 7F FF */ li r5, 0x7fff
/* 8001ED54 0001BC94  38 C0 00 00 */ li r6, 0
/* 8001ED58 0001BC98  38 E0 7F FF */ li r7, 0x7fff
/* 8001ED5C 0001BC9C  39 00 00 00 */ li r8, 0
/* 8001ED60 0001BCA0  48 00 02 D5 */ bl fopScnRq_Request
/* 8001ED64 0001BCA4  20 63 FF FF */ subfic r3, r3, -1
/* 8001ED68 0001BCA8  30 03 FF FF */ addic r0, r3, -1
/* 8001ED6C 0001BCAC  7C 00 19 10 */ subfe r0, r0, r3
/* 8001ED70 0001BCB0  54 03 06 3E */ clrlwi r3, r0, 0x18
/* 8001ED74 0001BCB4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001ED78 0001BCB8  7C 08 03 A6 */ mtlr r0
/* 8001ED7C 0001BCBC  38 21 00 10 */ addi r1, r1, 0x10
/* 8001ED80 0001BCC0  4E 80 00 20 */ blr

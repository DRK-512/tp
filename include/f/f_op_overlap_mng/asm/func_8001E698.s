/* 8001E698 0001B5D8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001E69C 0001B5DC  7C 08 02 A6 */ mflr r0
/* 8001E6A0 0001B5E0  90 01 00 14 */ stw r0, 0x14(r1)
/* 8001E6A4 0001B5E4  80 6D 80 30 */ lwz r3, lbl_804505B0-_SDA_BASE_(r13)
/* 8001E6A8 0001B5E8  28 03 00 00 */ cmplwi r3, 0
/* 8001E6AC 0001B5EC  40 82 00 0C */ bne lbl_8001E6B8
/* 8001E6B0 0001B5F0  38 60 00 01 */ li r3, 1
/* 8001E6B4 0001B5F4  48 00 00 24 */ b lbl_8001E6D8
lbl_8001E6B8:
/* 8001E6B8 0001B5F8  48 00 03 D1 */ bl fopOvlpReq_Cancel
/* 8001E6BC 0001B5FC  2C 03 00 01 */ cmpwi r3, 1
/* 8001E6C0 0001B600  40 82 00 14 */ bne lbl_8001E6D4
/* 8001E6C4 0001B604  38 00 00 00 */ li r0, 0
/* 8001E6C8 0001B608  90 0D 80 30 */ stw r0, lbl_804505B0-_SDA_BASE_(r13)
/* 8001E6CC 0001B60C  38 60 00 01 */ li r3, 1
/* 8001E6D0 0001B610  48 00 00 08 */ b lbl_8001E6D8
lbl_8001E6D4:
/* 8001E6D4 0001B614  38 60 00 00 */ li r3, 0
lbl_8001E6D8:
/* 8001E6D8 0001B618  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001E6DC 0001B61C  7C 08 03 A6 */ mtlr r0
/* 8001E6E0 0001B620  38 21 00 10 */ addi r1, r1, 0x10
/* 8001E6E4 0001B624  4E 80 00 20 */ blr

/* 8001EFF0 0001BF30  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001EFF4 0001BF34  7C 08 02 A6 */ mflr r0
/* 8001EFF8 0001BF38  90 01 00 14 */ stw r0, 0x14(r1)
/* 8001EFFC 0001BF3C  38 A0 00 00 */ li r5, 0
/* 8001F000 0001BF40  80 0D 87 60 */ lwz r0, lbl_80450CE0-_SDA_BASE_(r13)
/* 8001F004 0001BF44  2C 00 00 00 */ cmpwi r0, 0
/* 8001F008 0001BF48  40 82 00 18 */ bne lbl_8001F020
/* 8001F00C 0001BF4C  4B FF F5 F9 */ bl fopOvlpM_Request__FsUs
/* 8001F010 0001BF50  7C 65 1B 79 */ or. r5, r3, r3
/* 8001F014 0001BF54  41 82 00 0C */ beq lbl_8001F020
/* 8001F018 0001BF58  38 00 00 01 */ li r0, 1
/* 8001F01C 0001BF5C  90 0D 87 60 */ stw r0, lbl_80450CE0-_SDA_BASE_(r13)
lbl_8001F020:
/* 8001F020 0001BF60  7C A3 2B 78 */ mr r3, r5
/* 8001F024 0001BF64  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001F028 0001BF68  7C 08 03 A6 */ mtlr r0
/* 8001F02C 0001BF6C  38 21 00 10 */ addi r1, r1, 0x10
/* 8001F030 0001BF70  4E 80 00 20 */ blr

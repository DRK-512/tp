/* 8001E5A8 0001B4E8  80 6D 80 30 */ lwz r3, lbl_804505B0-_SDA_BASE_(r13)
/* 8001E5AC 0001B4EC  28 03 00 00 */ cmplwi r3, 0
/* 8001E5B0 0001B4F0  41 82 00 18 */ beq lbl_8001E5C8
/* 8001E5B4 0001B4F4  A0 03 00 04 */ lhz r0, 4(r3)
/* 8001E5B8 0001B4F8  28 00 00 01 */ cmplwi r0, 1
/* 8001E5BC 0001B4FC  40 82 00 0C */ bne lbl_8001E5C8
/* 8001E5C0 0001B500  38 60 00 01 */ li r3, 1
/* 8001E5C4 0001B504  4E 80 00 20 */ blr
lbl_8001E5C8:
/* 8001E5C8 0001B508  38 60 00 00 */ li r3, 0
/* 8001E5CC 0001B50C  4E 80 00 20 */ blr

lbl_80292D88:
/* 80292D88  48 00 00 08 */	b lbl_80292D90
lbl_80292D8C:
/* 80292D8C  7C 03 03 78 */	mr r3, r0
lbl_80292D90:
/* 80292D90  80 03 01 2C */	lwz r0, 0x12c(r3)
/* 80292D94  28 00 00 00 */	cmplwi r0, 0
/* 80292D98  40 82 FF F4 */	bne lbl_80292D8C
/* 80292D9C  4E 80 00 20 */	blr 

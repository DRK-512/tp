lbl_80A4868C:
/* 80A4868C  88 03 0F B4 */	lbz r0, 0xfb4(r3)
/* 80A48690  28 00 00 02 */	cmplwi r0, 2
/* 80A48694  38 60 00 06 */	li r3, 6
/* 80A48698  4C 82 00 20 */	bnelr 
/* 80A4869C  38 60 00 05 */	li r3, 5
/* 80A486A0  4E 80 00 20 */	blr 

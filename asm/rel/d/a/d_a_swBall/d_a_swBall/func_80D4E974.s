lbl_80D4E974:
/* 80D4E974  88 83 00 00 */	lbz r4, 0(r3)
/* 80D4E978  28 04 00 00 */	cmplwi r4, 0
/* 80D4E97C  41 82 00 0C */	beq lbl_80D4E988
/* 80D4E980  38 04 FF FF */	addi r0, r4, -1
/* 80D4E984  98 03 00 00 */	stb r0, 0(r3)
lbl_80D4E988:
/* 80D4E988  88 63 00 00 */	lbz r3, 0(r3)
/* 80D4E98C  4E 80 00 20 */	blr 

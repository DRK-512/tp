lbl_8070A70C:
/* 8070A70C  3C 80 80 71 */	lis r4, lit_3828@ha /* 0x80713974@ha */
/* 8070A710  38 A4 39 74 */	addi r5, r4, lit_3828@l /* 0x80713974@l */
/* 8070A714  3C 80 80 71 */	lis r4, __vt__12daE_MF_HIO_c@ha /* 0x80713F14@ha */
/* 8070A718  38 04 3F 14 */	addi r0, r4, __vt__12daE_MF_HIO_c@l /* 0x80713F14@l */
/* 8070A71C  90 03 00 00 */	stw r0, 0(r3)
/* 8070A720  38 00 FF FF */	li r0, -1
/* 8070A724  98 03 00 04 */	stb r0, 4(r3)
/* 8070A728  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 8070A72C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8070A730  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 8070A734  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8070A738  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 8070A73C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8070A740  C0 05 00 38 */	lfs f0, 0x38(r5)
/* 8070A744  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8070A748  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 8070A74C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8070A750  38 00 00 03 */	li r0, 3
/* 8070A754  B0 03 00 1C */	sth r0, 0x1c(r3)
/* 8070A758  38 00 00 28 */	li r0, 0x28
/* 8070A75C  B0 03 00 1E */	sth r0, 0x1e(r3)
/* 8070A760  38 00 00 50 */	li r0, 0x50
/* 8070A764  B0 03 00 20 */	sth r0, 0x20(r3)
/* 8070A768  38 00 00 01 */	li r0, 1
/* 8070A76C  98 03 00 22 */	stb r0, 0x22(r3)
/* 8070A770  38 00 00 00 */	li r0, 0
/* 8070A774  98 03 00 23 */	stb r0, 0x23(r3)
/* 8070A778  4E 80 00 20 */	blr 

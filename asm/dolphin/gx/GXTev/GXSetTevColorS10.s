lbl_8035F3DC:
/* 8035F3DC  81 04 00 00 */	lwz r8, 0(r4)
/* 8035F3E0  54 66 08 3C */	slwi r6, r3, 1
/* 8035F3E4  81 24 00 04 */	lwz r9, 4(r4)
/* 8035F3E8  38 A0 00 61 */	li r5, 0x61
/* 8035F3EC  38 66 00 E0 */	addi r3, r6, 0xe0
/* 8035F3F0  54 67 C0 0E */	slwi r7, r3, 0x18
/* 8035F3F4  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035F3F8  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 8035F3FC  51 07 85 7E */	rlwimi r7, r8, 0x10, 0x15, 0x1f
/* 8035F400  98 A4 80 00 */	stb r5, 0x8000(r4)  /* 0xCC008000@l */
/* 8035F404  51 27 62 66 */	rlwimi r7, r9, 0xc, 9, 0x13
/* 8035F408  90 E4 80 00 */	stw r7, -0x8000(r4)
/* 8035F40C  38 C6 00 E1 */	addi r6, r6, 0xe1
/* 8035F410  54 C6 C0 0E */	slwi r6, r6, 0x18
/* 8035F414  51 26 85 7E */	rlwimi r6, r9, 0x10, 0x15, 0x1f
/* 8035F418  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8035F41C  51 06 62 66 */	rlwimi r6, r8, 0xc, 9, 0x13
/* 8035F420  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8035F424  38 00 00 00 */	li r0, 0
/* 8035F428  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8035F42C  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8035F430  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8035F434  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8035F438  B0 03 00 02 */	sth r0, 2(r3)
/* 8035F43C  4E 80 00 20 */	blr 

lbl_8045F94C:
/* 8045F94C  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 8045F950  38 03 7F FF */	addi r0, r3, 0x7fff
/* 8045F954  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045F958  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045F95C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8045F960  B0 03 06 06 */	sth r0, 0x606(r3)
/* 8045F964  4E 80 00 20 */	blr 

lbl_802157E0:
/* 802157E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802157E4  80 C3 01 D4 */	lwz r6, 0x1d4(r3)
/* 802157E8  C0 06 00 24 */	lfs f0, 0x24(r6)
/* 802157EC  80 C3 01 DC */	lwz r6, 0x1dc(r3)
/* 802157F0  C0 66 00 24 */	lfs f3, 0x24(r6)
/* 802157F4  EC A3 00 28 */	fsubs f5, f3, f0
/* 802157F8  C0 C2 AE 80 */	lfs f6, lit_4182(r2)
/* 802157FC  FC 80 30 90 */	fmr f4, f6
/* 80215800  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80215804  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80215808  80 E6 5D E8 */	lwz r7, 0x5de8(r6)
/* 8021580C  2C 07 00 00 */	cmpwi r7, 0
/* 80215810  40 81 00 60 */	ble lbl_80215870
/* 80215814  C8 82 AE A0 */	lfd f4, lit_4925(r2)
/* 80215818  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 8021581C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80215820  3C C0 43 30 */	lis r6, 0x4330
/* 80215824  90 C1 00 08 */	stw r6, 8(r1)
/* 80215828  C8 01 00 08 */	lfd f0, 8(r1)
/* 8021582C  EC 60 20 28 */	fsubs f3, f0, f4
/* 80215830  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 80215834  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80215838  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8021583C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80215840  EC 00 20 28 */	fsubs f0, f0, f4
/* 80215844  EC C3 00 24 */	fdivs f6, f3, f0
/* 80215848  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8021584C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80215850  90 C1 00 18 */	stw r6, 0x18(r1)
/* 80215854  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80215858  EC 60 20 28 */	fsubs f3, f0, f4
/* 8021585C  90 A1 00 24 */	stw r5, 0x24(r1)
/* 80215860  90 C1 00 20 */	stw r6, 0x20(r1)
/* 80215864  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80215868  EC 00 20 28 */	fsubs f0, f0, f4
/* 8021586C  EC 83 00 24 */	fdivs f4, f3, f0
lbl_80215870:
/* 80215870  80 83 01 D8 */	lwz r4, 0x1d8(r3)
/* 80215874  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 80215878  EC 06 00 32 */	fmuls f0, f6, f0
/* 8021587C  D0 03 05 8C */	stfs f0, 0x58c(r3)
/* 80215880  80 83 01 D8 */	lwz r4, 0x1d8(r3)
/* 80215884  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 80215888  D0 03 05 98 */	stfs f0, 0x598(r3)
/* 8021588C  80 83 01 D4 */	lwz r4, 0x1d4(r3)
/* 80215890  C0 64 00 24 */	lfs f3, 0x24(r4)
/* 80215894  EC 05 01 32 */	fmuls f0, f5, f4
/* 80215898  EC 00 18 2A */	fadds f0, f0, f3
/* 8021589C  D0 03 05 A4 */	stfs f0, 0x5a4(r3)
/* 802158A0  80 83 01 D4 */	lwz r4, 0x1d4(r3)
/* 802158A4  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 802158A8  D0 03 05 B0 */	stfs f0, 0x5b0(r3)
/* 802158AC  80 83 01 D0 */	lwz r4, 0x1d0(r3)
/* 802158B0  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 802158B4  EC 04 00 32 */	fmuls f0, f4, f0
/* 802158B8  D0 03 05 BC */	stfs f0, 0x5bc(r3)
/* 802158BC  80 83 01 D0 */	lwz r4, 0x1d0(r3)
/* 802158C0  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 802158C4  D0 03 05 C8 */	stfs f0, 0x5c8(r3)
/* 802158C8  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802158CC  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 802158D0  C0 04 00 68 */	lfs f0, 0x68(r4)
/* 802158D4  D0 03 05 D4 */	stfs f0, 0x5d4(r3)
/* 802158D8  C0 04 00 68 */	lfs f0, 0x68(r4)
/* 802158DC  D0 03 05 E0 */	stfs f0, 0x5e0(r3)
/* 802158E0  D0 23 05 EC */	stfs f1, 0x5ec(r3)
/* 802158E4  D0 43 05 F8 */	stfs f2, 0x5f8(r3)
/* 802158E8  38 21 00 30 */	addi r1, r1, 0x30
/* 802158EC  4E 80 00 20 */	blr 

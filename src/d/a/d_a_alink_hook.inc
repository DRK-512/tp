/* 80107900-801083C8 102240 0AC8+00 1/0 0/0 0/0 .text draw__Q29daAlink_c14hsChainShape_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void draw__Q29daAlink_c14hsChainShape_cFv() {
    // asm void daAlink_c::hsChainShape_c::draw() {
    nofralloc
#include "asm/d/a/d_a_alink/draw__Q29daAlink_c14hsChainShape_cFv.s"
}
#pragma pop

/* 801083C8-8010859C 102D08 01D4+00 1/1 0/0 0/0 .text
 * hookshotAtHitCallBack__9daAlink_cFP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::hookshotAtHitCallBack(dCcD_GObjInf* param_0, fopAc_ac_c* param_1,
                                          dCcD_GObjInf* param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/hookshotAtHitCallBack__9daAlink_cFP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf.s"
}
#pragma pop

/* 8010859C-801085BC 102EDC 0020+00 1/1 0/0 0/0 .text
 * daAlink_hookshotAtHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void daAlink_hookshotAtHitCallBack(fopAc_ac_c* player, dCcD_GObjInf* param_1,
                                          fopAc_ac_c* param_2, dCcD_GObjInf* param_3) {
    ((daAlink_c*)player)->hookshotAtHitCallBack(param_1, param_2, param_3);
}

/* 801085BC-80108600 102EFC 0044+00 1/0 0/0 0/0 .text            getHookshotTopPos__9daAlink_cFv */
cXyz* daAlink_c::getHookshotTopPos() {
    if (checkHookshotItem(mEquipItem)) {
        return &mHookshotTopPos;
    }

    return NULL;
}

/* 80108600-80108668 102F40 0068+00 1/0 0/0 0/0 .text checkHookshotReturnMode__9daAlink_cCFv */
bool daAlink_c::checkHookshotReturnMode() const {
    return checkHookshotItem(mEquipItem) &&
           (mItemMode == 4 || mItemMode == 5 || mItemMode == 6);
}

/* 80108668-801086DC 102FA8 0074+00 1/0 0/0 0/0 .text checkHookshotShootReturnMode__9daAlink_cCFv
 */
bool daAlink_c::checkHookshotShootReturnMode() const {
    return (checkHookshotItem(mEquipItem) && mItemMode == 3) || checkHookshotReturnMode();
}

/* 801086DC-8010871C 10301C 0040+00 6/6 0/0 0/0 .text            resetHookshotMode__9daAlink_cFv */
void daAlink_c::resetHookshotMode() {
    mItemMode = 0;
    initLockAt();
    mSearchBallScale = FLT_MAX;
}

/* 8010871C-80108784 10305C 0068+00 0/0 0/0 1/1 .text
 * setEnemyBombHookshot__9daAlink_cFP10fopAc_ac_c               */
bool daAlink_c::setEnemyBombHookshot(fopAc_ac_c* actor) {
    if (field_0x284c.getActor() != NULL) {
        cancelHookshotCarry();
        field_0x284c.setData(actor);
        fopAcM_setHookCarryNow(actor);
        return true;
    }
    return false;
}

/* 80108784-801087B0 1030C4 002C+00 3/3 0/0 0/0 .text            checkLv7BossRoom__9daAlink_cFv */
bool daAlink_c::checkLv7BossRoom() {
    return checkStageName("D_MN07A");
}

/* 801087B0-80108828 1030F0 0078+00 6/6 0/0 0/0 .text
 * checkHookshotStickBG__9daAlink_cFR13cBgS_PolyInfo            */
bool daAlink_c::checkHookshotStickBG(cBgS_PolyInfo& poly) {
    if (dComIfG_Bgsp().ChkPolyHSStick(poly)) {
        dBgW_Base* bgw = dComIfG_Bgsp().GetBgWBasePointer(poly);
        if (bgw != NULL && bgw->ChkPushPullOk()) {
            return true;
        }
    }

    return false;
}

/* 80108828-80108864 103168 003C+00 4/4 0/0 0/0 .text            cancelHookshotCarry__9daAlink_cFv
 */
void daAlink_c::cancelHookshotCarry() {
    if (field_0x284c.getActor() != NULL) {
        fopAcM_cancelHookCarryNow(field_0x284c.getActor());
        field_0x284c.clearData();
    }
}

/* 80108864-801088A0 1031A4 003C+00 2/2 0/0 0/0 .text changeHookshotDrawModel__9daAlink_cFv */
void daAlink_c::changeHookshotDrawModel() {
    if (mEquipItem == HOOKSHOT && field_0x3020 == 1) {
        J3DModel* old_item = mHeldItemModel;
        mHeldItemModel = field_0x0710;
        field_0x0710 = old_item;

        J3DModel* old_item2 = field_0x070c;
        field_0x070c = field_0x0714;
        field_0x0714 = old_item2;
    }
}

/* 801088A0-801088C8 1031E0 0028+00 6/6 0/0 0/0 .text checkHookshotRoofLv7Boss__9daAlink_cFv */
BOOL daAlink_c::checkHookshotRoofLv7Boss() {
    return mCargoCarryAcKeep.getActor() != NULL &&
           fopAcM_GetName(mCargoCarryAcKeep.getActor()) == PROC_B_DR;
}

/* 801088C8-80108980 103208 00B8+00 2/2 0/0 0/0 .text            checkChaseHookshot__9daAlink_cFv */
BOOL daAlink_c::checkChaseHookshot() {
    if (field_0x2804 == NULL) {
        if (mTargetedActor != NULL) {
            field_0x2804 = mTargetedActor;
        } else {
            field_0x2804 = this;
        }
    } else if (field_0x2804 != mTargetedActor) {
        field_0x2804 = this;
    }

    if (mTargetedActor != NULL) {
        s16 actorName = fopAcM_GetName(mTargetedActor);
        return field_0x2804 == mTargetedActor &&
               (checkBossOctaIealRoom() || actorName == PROC_Obj_FallObj ||
                actorName == PROC_B_DR || actorName == PROC_E_PH);
    }

    return false;
}

/* 80108980-801089E8 1032C0 0068+00 2/2 0/0 0/0 .text checkOctaIealSpecialCollect__9daAlink_cFv */
BOOL daAlink_c::checkOctaIealSpecialCollect() {
    return mProcID == PROC_HOOKSHOT_FLY && checkHookshotItem(mEquipItem) && checkBossOctaIealRoom();
}

/* 801089E8-80108A18 103328 0030+00 5/5 0/0 0/0 .text            checkBossOctaIealRoom__9daAlink_cFv
 */
BOOL daAlink_c::checkBossOctaIealRoom() {
    return checkStageName("D_MN01A");
}

/* 80108A18-80108A3C 103358 0024+00 19/19 0/0 0/0 .text            checkHookshotWait__9daAlink_cCFv
 */
BOOL daAlink_c::checkHookshotWait() const {
    return mItemMode == 0 || mItemMode == 1;
}

/* 80108A3C-80108A90 10337C 0054+00 1/1 0/0 0/0 .text            setHookshotCatchNow__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setHookshotCatchNow() {
    field_0x3026 = 5;
    dComIfGp_getVibration().StartShock(4, 1, cXyz(0.0f, 1.0f, 0.0f));
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHookshotCatchNow() {
    nofralloc
#include "asm/d/a/d_a_alink/setHookshotCatchNow__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80108A90-80108B34 1033D0 00A4+00 1/0 0/0 0/0 .text setHookshotCarryOffset__9daAlink_cFUiPC4cXyz
 */
bool daAlink_c::setHookshotCarryOffset(unsigned int actorID, cXyz const* offset) {
    if (i_dComIfGp_checkPlayerStatus1(0, 0x10000)) {
        fopAc_ac_c* carryActor = mCargoCarryAcKeep.getActor();

        if (carryActor != NULL && fopAcM_checkHookCarryNow(carryActor) &&
            actorID == mCargoCarryAcKeep.getID()) {
            field_0x37c8 = *offset;
            return true;
        }
    }

    fopAc_ac_c* actor = field_0x284c.getActor();
    if (actor != NULL && fopAcM_checkHookCarryNow(actor) && actorID == field_0x284c.getID()) {
        mIronBallCenterPos = *offset;
        return true;
    }

    return false;
}

/* 80108B34-80108DB4 103474 0280+00 1/1 0/0 0/0 .text            setHookshotModel__9daAlink_cFv */
void daAlink_c::setHookshotModel() {
    J3DAnmTransform* bck = (J3DAnmTransform*)mAnmHeap9.loadDataIdx(0x17E);

    JKRHeap* heap = setItemHeap();
    field_0x730.init(bck, 0, 2, lit_6040, 0, -1, false);

    J3DModelData* heldItem_modelData = loadAramBmd(0x316, 0x5C00);
    mHeldItemModel = initModel(heldItem_modelData, 0x80000, 0);

    J3DModelData* modelData = loadAramBmd(0x318, 0x3800);
    field_0x070c = initModel(modelData, 0x80000, 0);
    field_0x0710 = initModel(mHeldItemModel->getModelData(), 0x80000, 0);
    field_0x0714 = initModel(field_0x070c->getModelData(), 0x80000, 0);

    field_0x0768 = loadAramBmd(0x317, 0x1000);
    field_0x770 = new hsChainShape_c();
    field_0x076c = new Z2SoundObjSimple();

    mpHookshotLinChk = new dBgS_ObjLinChk();
    mpHookshotLinChk->OffFullGrp();
    mpHookshotLinChk->OnWaterGrp();

    J3DAnmTransform* bck2 = (J3DAnmTransform*)loadAram(0x17F, 0x800);
    field_0x74C.init(bck2, 0, 2, lit_6040, 0, -1, false);
    mDoExt_setCurrentHeap(heap);

    resetHookshotMode();
    field_0x770->setUserArea((u32)this);
    field_0x2f94 = 1;
    if (mEquipItem == W_HOOKSHOT) {
        field_0x2f95 = 6;
    }

    field_0x3020 = 0;
    field_0x3024 = 0;

    mAtCps[0].SetAtSpl(dCcG_At_Spl_UNK_0);
    mAtCps[0].OffAtNoHitMark();
    mAtCps[0].SetAtAtp(0);
    mAtCps[0].SetR(lit_7808);
    mAtCps[0].SetAtSe(8);
    mAtCps[0].SetAtType(AT_TYPE_HOOKSHOT);
    mAtCps[0].SetAtHitMark(1);
    mAtCps[0].OnAtSetBit();
    mAtCps[0].SetAtHitCallback(daAlink_hookshotAtHitCallBack);
    mAtCps[0].SetAtMtrl(0);
    field_0x076c->init(&mHookshotTopPos, 1);
}

/* 80108DB4-80108EEC 1036F4 0138+00 6/6 0/0 0/0 .text            setHookshotSight__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHookshotSight() {
    nofralloc
#include "asm/d/a/d_a_alink/setHookshotSight__9daAlink_cFv.s"
}
#pragma pop

/* 80108EEC-80108F64 10382C 0078+00 1/1 0/0 0/0 .text            cancelHookshotShot__9daAlink_cFv */
void daAlink_c::cancelHookshotShot() {
    if (checkHookshotItem(mEquipItem) &&
        (mItemMode == 3 || mItemMode == 5 || mItemMode == 4)) {
        if (mProcID != PROC_HOOKSHOT_MOVE && mProcID != PROC_HOOKSHOT_FLY && mProcID != PROC_HOOKSHOT_SUBJECT) {
            mItemMode = 6;
        }
    }
}

/* 80108F64-8010903C 1038A4 00D8+00 4/4 0/0 0/0 .text            cancelHookshotMove__9daAlink_cFv */
// checkAttentionLock has weird codegen
#ifdef NONMATCHING
bool daAlink_c::cancelHookshotMove() {
    if (mFastShotTime == 0 && mItemMode == 0) {
        if (checkHookshotAnime() &&
            (mTargetedActor == NULL && !i_checkAttentionLock() || !itemButton())) {
            resetUpperAnime(UPPER_2, -1.0f);
            return 1;
        }
    }

    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::cancelHookshotMove() {
    nofralloc
#include "asm/d/a/d_a_alink/cancelHookshotMove__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8010903C-80109070 10397C 0034+00 2/2 0/0 0/0 .text
 * checkHookshotReadyMaterialOffMode__9daAlink_cCFv             */
BOOL daAlink_c::checkHookshotReadyMaterialOffMode() const {
    return mProcID == PROC_HOOKSHOT_WALL_SHOOT || mProcID == PROC_HORSE_HOOKSHOT_SUBJECT ||
           mProcID == PROC_SWIM_HOOKSHOT_SUBJECT || mProcID == PROC_HOOKSHOT_SUBJECT;
}

/* 80109070-801090EC 1039B0 007C+00 5/5 0/0 0/0 .text setHookshotReadyMaterial__9daAlink_cFv */
void daAlink_c::setHookshotReadyMaterial() {
    if (i_checkNoResetFlg2(FLG2_UNK_80000) || checkCasualWearFlg()) {
        mFallVoiceInit = 0;
    } else if (checkZoraWearFlg()) {
        field_0x32cc = 0x37B;
        mFallVoiceInit = 14;
    } else if (checkMagicArmorWearFlg()) {
        field_0x32cc = 0xC80;
        mFallVoiceInit = 13;        
    } else {
        field_0x32cc = 0x11C47;
        mFallVoiceInit = 18;
    }
}

/* 801090EC-80109170 103A2C 0084+00 8/8 0/0 0/0 .text initHookshotUpperAnimeSpeed__9daAlink_cFi */
int daAlink_c::initHookshotUpperAnimeSpeed(int param_0) {
    if (checkHookshotWait()) {
        if (param_0) {
            f32 tmp_0 = FLOAT_LABEL(lit_6108);
            mUpperFrameCtrl[2].setRate(tmp_0);
            mUpperFrameCtrl[2].setFrame(tmp_0);
            getNowAnmPackUpper(UPPER_2)->setFrame(tmp_0);
        } else {
            setWaterInAnmRate(&mUpperFrameCtrl[2], daAlinkHIO_hookshot_c0::m.mWaitAnmSpeed);
        }

        return 1;
    }

    return 0;
}

/* 80109170-801091E4 103AB0 0074+00 4/4 0/0 0/0 .text            initHookshotReady__9daAlink_cFv */
void daAlink_c::initHookshotReady() {
    mItemMode = 1;

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    field_0x33e0 = tmp_0;
    
    dComIfGp_getVibration().StartShock(1, 1, cXyz(tmp_0, lit_6040, tmp_0));

    field_0x3018 = 3;
    field_0x3494 = lit_6041;
}

/* 801091E4-80109284 103B24 00A0+00 1/1 0/0 0/0 .text            setHookshotReadyAnime__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 2
void daAlink_c::setHookshotReadyAnime() {
    f32 speed;
    if (!i_checkAttentionLock() && mFastShotTime == 0) {
        speed = FLOAT_LABEL(lit_6108);
    } else {
        speed = daAlinkHIO_hookshot_c0::m.mWaitAnmSpeed;
    }

    setUpperAnimeBaseSpeed(0x18D, speed, lit_6109);
    field_0x3020 = 0;
    initHookshotReady();
}
#pragma pop

/* 80109284-801095C8 103BC4 0344+00 3/3 0/0 0/0 .text checkUpperItemActionHookshot__9daAlink_cFv
 */
// checkAttentionLock
#ifdef NONMATCHING
int daAlink_c::checkUpperItemActionHookshot() {
    if (checkHookshotWait()) {
        mSearchBallScale = FLT_MAX;
    }

    if (mItemMode == 1) {
        if (!itemButton() && field_0x3018 == 0 && checkReadyItem()) {
            mItemMode = 2;
            field_0x3026 = 0;
            field_0x3494 = lit_6041;
            field_0x284c.clearData();
            cancelLockAt();
            field_0x2804 = NULL;

            if (mProcID == PROC_HOOKSHOT_ROOF_SHOOT || mProcID == PROC_HOOKSHOT_WALL_SHOOT) {
                daAlink_ANM anmID;
                if (mProcID == PROC_HOOKSHOT_ROOF_SHOOT) {
                    if (field_0x3020 == 0) {
                        anmID = ANM_HOOKSHOT_HANG_SHOOT_RIGHT;
                    } else {
                        anmID = ANM_HOOKSHOT_HANG_SHOOT_LEFT;
                    }
                } else if (field_0x3020 == 0) {
                    anmID = ANM_HOOKSHOT_WALL_SHOOT_RIGHT;
                } else {
                    anmID = ANM_HOOKSHOT_WALL_SHOOT_LEFT;
                }

                setSingleAnimeBaseMorf(anmID, FLOAT_LABEL(lit_6108));
            } else if (i_checkModeFlg(0x40400)) {
                setUpperAnimeParam(0x18C, UPPER_2, &daAlinkHIO_hookshot_c0::m.mShootAnm);

                if (i_checkModeFlg(0x40000)) {
                    mNormalSpeed = FLOAT_LABEL(lit_6108);
                }
            } else {
                f32 tmp_0 = FLOAT_LABEL(lit_6108);
                mUpperFrameCtrl[2].setRate(tmp_0);
                mUpperFrameCtrl[2].setFrame(tmp_0);
                getNowAnmPackUpper(UPPER_2)->setFrame(tmp_0);

                mNormalSpeed = tmp_0;
                onModeFlg(1);
                mSpeedModifier = tmp_0;
                mNowAnmPackUpper[2].setRatio(tmp_0);
                
                setSingleAnimeParam(ANM_HOOKSHOT_SHOOT, &daAlinkHIO_hookshot_c0::m.mShootAnm);
            }

            if (!i_checkNoResetFlg3(FLG3_UNK_4)) {
                f32 tmp_0 = FLOAT_LABEL(lit_6108);
                dComIfGp_getVibration().StartQuake(1, 1, cXyz(tmp_0, lit_6040, tmp_0));
                i_onNoResetFlg3(FLG3_UNK_4);
            }

            return 1;
        }
    } else if (mItemMode == 0) {
        if (i_checkModeFlg(0x400) && i_checkAttentionLock() && mTargetedActor == NULL) {
            resetUpperAnime(UPPER_2, lit_6109);
            dComIfGp_clearPlayerStatus0(0, 0x4000);
            return 1;
        }

        if (checkReadyItem() && itemButton()) {
            initHookshotReady();
        }
    } else if (mItemMode == 3) {
        if (checkReadyItem() && itemTrigger()) {
            mItemMode = 6;
        }

        checkNextActionHookshot();
        return 1;
    } else if (mItemMode == 6) {
        checkNextActionHookshot();
        return 1;
    } else if (mItemMode == 5 || mItemMode == 4) {
        if (field_0x3026 != 0) {
            field_0x3026--;
            setHookshotTopPosFly();
            return 1;
        }

        return procHookshotFlyInit();
    }

    if (field_0x3018 > 0) {
        field_0x3018--;
    }

    return cancelUpperItemReadyAnime(0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::checkUpperItemActionHookshot() {
    nofralloc
#include "asm/d/a/d_a_alink/checkUpperItemActionHookshot__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 801095C8-801097A0 103F08 01D8+00 7/7 0/0 0/0 .text checkNextActionHookshot__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::checkNextActionHookshot() {
    nofralloc
#include "asm/d/a/d_a_alink/checkNextActionHookshot__9daAlink_cFv.s"
}
#pragma pop

/* 801097A0-80109890 1040E0 00F0+00 2/2 0/0 0/0 .text            setHookshotReturnEnd__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHookshotReturnEnd() {
    nofralloc
#include "asm/d/a/d_a_alink/setHookshotReturnEnd__9daAlink_cFv.s"
}
#pragma pop

/* 80109890-80109AAC 1041D0 021C+00 3/3 0/0 0/0 .text setHookshotHangMoveBGCollect__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHookshotHangMoveBGCollect() {
    nofralloc
#include "asm/d/a/d_a_alink/setHookshotHangMoveBGCollect__9daAlink_cFv.s"
}
#pragma pop

/* 80109AAC-80109BDC 1043EC 0130+00 2/2 0/0 0/0 .text            setHookshotTopPosFly__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHookshotTopPosFly() {
    nofralloc
#include "asm/d/a/d_a_alink/setHookshotTopPosFly__9daAlink_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 804256A0-804256AC 0523C0 000C+00 0/1 0/0 0/0 .bss             @29722 */
#pragma push
#pragma force_active on
static u8 lit_29722[12];
#pragma pop

/* 804256AC-804256B8 0523CC 000C+00 1/2 0/0 0/0 .bss             l_hookSnowSandHitScale */
static u8 l_hookSnowSandHitScale[12];

/* 80109BDC-8010B2DC 10451C 1700+00 1/1 0/0 0/0 .text            setHookshotPos__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHookshotPos() {
    nofralloc
#include "asm/d/a/d_a_alink/setHookshotPos__9daAlink_cFv.s"
}
#pragma pop

/* 8010B2DC-8010B35C 105C1C 0080+00 2/2 0/0 0/0 .text setHookshotRoofWaitAnime__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHookshotRoofWaitAnime() {
    nofralloc
#include "asm/d/a/d_a_alink/setHookshotRoofWaitAnime__9daAlink_cFv.s"
}
#pragma pop

/* 8010B35C-8010B3AC 105C9C 0050+00 2/2 0/0 0/0 .text setHookshotWallWaitAnime__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHookshotWallWaitAnime() {
    nofralloc
#include "asm/d/a/d_a_alink/setHookshotWallWaitAnime__9daAlink_cFv.s"
}
#pragma pop

/* 8010B3AC-8010B644 105CEC 0298+00 2/2 0/0 0/0 .text            hookshotRoofTurn__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::hookshotRoofTurn() {
    nofralloc
#include "asm/d/a/d_a_alink/hookshotRoofTurn__9daAlink_cFv.s"
}
#pragma pop

/* 8010B644-8010B720 105F84 00DC+00 3/3 0/0 0/0 .text
 * initHookshotRoofWaitActor__9daAlink_cFP10fopAc_ac_c          */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::initHookshotRoofWaitActor(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/initHookshotRoofWaitActor__9daAlink_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 8010B720-8010B84C 106060 012C+00 2/2 0/0 0/0 .text            checkNextHookPoint__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkNextHookPoint() {
    nofralloc
#include "asm/d/a/d_a_alink/checkNextHookPoint__9daAlink_cFv.s"
}
#pragma pop

/* 8010B84C-8010B96C 10618C 0120+00 2/2 0/0 0/0 .text            checkLandHookshotHang__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkLandHookshotHang() {
    nofralloc
#include "asm/d/a/d_a_alink/checkLandHookshotHang__9daAlink_cFv.s"
}
#pragma pop

/* 8010B96C-8010BA6C 1062AC 0100+00 3/3 0/0 0/0 .text commonHookshotRoofWait__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::commonHookshotRoofWait() {
    nofralloc
#include "asm/d/a/d_a_alink/commonHookshotRoofWait__9daAlink_cFv.s"
}
#pragma pop

/* 8010BA6C-8010BAA8 1063AC 003C+00 2/2 0/0 0/0 .text commonHookshotWallWait__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::commonHookshotWallWait() {
    nofralloc
#include "asm/d/a/d_a_alink/commonHookshotWallWait__9daAlink_cFv.s"
}
#pragma pop

/* 8010BAA8-8010BB48 1063E8 00A0+00 1/1 0/0 0/0 .text procHookshotSubjectInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotSubjectInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotSubjectInit__9daAlink_cFv.s"
}
#pragma pop

/* 8010BB48-8010BC08 106488 00C0+00 1/0 0/0 0/0 .text            procHookshotSubject__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotSubject() {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotSubject__9daAlink_cFv.s"
}
#pragma pop

/* 8010BC08-8010BCA4 106548 009C+00 1/1 0/0 0/0 .text            procHookshotMoveInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotMoveInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotMoveInit__9daAlink_cFv.s"
}
#pragma pop

/* 8010BCA4-8010BD90 1065E4 00EC+00 1/0 0/0 0/0 .text            procHookshotMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotMove__9daAlink_cFv.s"
}
#pragma pop

/* 8010BD90-8010BEF0 1066D0 0160+00 2/2 0/0 0/0 .text            procHookshotFlyInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotFlyInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotFlyInit__9daAlink_cFv.s"
}
#pragma pop

/* 8010BEF0-8010C830 106830 0940+00 2/1 0/0 0/0 .text            procHookshotFly__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotFly() {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotFly__9daAlink_cFv.s"
}
#pragma pop

/* 8010C830-8010C9F4 107170 01C4+00 4/4 0/0 0/0 .text
 * procHookshotRoofWaitInit__9daAlink_cFiP10fopAc_ac_ci         */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotRoofWaitInit(int param_0, fopAc_ac_c* param_1, int param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotRoofWaitInit__9daAlink_cFiP10fopAc_ac_ci.s"
}
#pragma pop

/* 8010C9F4-8010CC80 107334 028C+00 1/0 0/0 0/0 .text            procHookshotRoofWait__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotRoofWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotRoofWait__9daAlink_cFv.s"
}
#pragma pop

/* 8010CC80-8010CD60 1075C0 00E0+00 1/1 0/0 0/0 .text
 * procHookshotRoofShootInit__9daAlink_cFP10fopAc_ac_c          */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotRoofShootInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotRoofShootInit__9daAlink_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 8010CD60-8010CF6C 1076A0 020C+00 1/0 0/0 0/0 .text            procHookshotRoofShoot__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotRoofShoot() {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotRoofShoot__9daAlink_cFv.s"
}
#pragma pop

/* 8010CF6C-8010D034 1078AC 00C8+00 1/1 0/0 0/0 .text
 * procHookshotRoofBootsInit__9daAlink_cFP10fopAc_ac_c          */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotRoofBootsInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotRoofBootsInit__9daAlink_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 8010D034-8010D174 107974 0140+00 1/0 0/0 0/0 .text            procHookshotRoofBoots__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotRoofBoots() {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotRoofBoots__9daAlink_cFv.s"
}
#pragma pop

/* 8010D174-8010D38C 107AB4 0218+00 3/3 0/0 0/0 .text procHookshotWallWaitInit__9daAlink_cFisi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotWallWaitInit(int param_0, s16 param_1, int param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotWallWaitInit__9daAlink_cFisi.s"
}
#pragma pop

/* 8010D38C-8010D5F4 107CCC 0268+00 1/0 0/0 0/0 .text            procHookshotWallWait__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotWallWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotWallWait__9daAlink_cFv.s"
}
#pragma pop

/* 8010D5F4-8010D6CC 107F34 00D8+00 1/1 0/0 0/0 .text procHookshotWallShootInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotWallShootInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotWallShootInit__9daAlink_cFv.s"
}
#pragma pop

/* 8010D6CC-8010D93C 10800C 0270+00 1/0 0/0 0/0 .text            procHookshotWallShoot__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotWallShoot() {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotWallShoot__9daAlink_cFv.s"
}
#pragma pop
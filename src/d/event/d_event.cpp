//
// Generated By: dol2asm
// Translation Unit: d/event/d_event
//

#include "d/event/d_event.h"
#include "d/com/d_com_inf_game.h"
#include "dol2asm.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor_iter.h"
#include "f_op/f_op_actor_mng.h"

//
// Types:
//

struct dDemo_c {
    /* 80039CF8 */ void end();

    static u8 m_mode[4];
};

struct dCamera_c {
    /* 801614C4 */ void QuickStart();
};

//
// Forward References:
//

extern "C" static bool func_80041480();
extern "C" static void func_80041488();
extern "C" void __ct__14dEvt_control_cFv();
extern "C" void __ct__12dEvt_order_cFv();
extern "C" void orderOld__14dEvt_control_cFUsUsUsUsPvPvPCv();
extern "C" void order__14dEvt_control_cFUsUsUsUsPvPvsUc();
extern "C" void setParam__14dEvt_control_cFP12dEvt_order_c();
extern "C" void beforeFlagProc__14dEvt_control_cFP12dEvt_order_c();
extern "C" void afterFlagProc__14dEvt_control_cFP12dEvt_order_c();
extern "C" void commonCheck__14dEvt_control_cFP12dEvt_order_cUsUs();
extern "C" void talkCheck__14dEvt_control_cFP12dEvt_order_c();
extern "C" void talkXyCheck__14dEvt_control_cFP12dEvt_order_c();
extern "C" void catchCheck__14dEvt_control_cFP12dEvt_order_c();
extern "C" void talkEnd__14dEvt_control_cFv();
extern "C" void demoCheck__14dEvt_control_cFP12dEvt_order_c();
extern "C" void demoEnd__14dEvt_control_cFv();
extern "C" void potentialCheck__14dEvt_control_cFP12dEvt_order_c();
extern "C" void doorCheck__14dEvt_control_cFP12dEvt_order_c();
extern "C" void itemCheck__14dEvt_control_cFP12dEvt_order_c();
extern "C" void endProc__14dEvt_control_cFv();
extern "C" void change__14dEvt_control_cFv();
extern "C" void entry__14dEvt_control_cFv();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void reset__14dEvt_control_cFPv();
extern "C" void clearSkipSystem__14dEvt_control_cFv();
extern "C" void dEv_defaultSkipProc__FPvi();
extern "C" void dEv_defaultSkipZev__FPvi();
extern "C" void dEv_defaultSkipStb__FPvi();
extern "C" void dEv_noFinishSkipProc__FPvi();
extern "C" void getSkipEventName__14dEvt_control_cFv();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void setSkipZev__14dEvt_control_cFPvPc();
extern "C" void onSkipFade__14dEvt_control_cFv();
extern "C" void offSkipFade__14dEvt_control_cFv();
extern "C" void skipper__14dEvt_control_cFv();
extern "C" void Step__14dEvt_control_cFv();
extern "C" void moveApproval__14dEvt_control_cFPv();
extern "C" void compulsory__14dEvt_control_cFPvPCcUs();
extern "C" void remove__14dEvt_control_cFv();
extern "C" void getStageEventDt__14dEvt_control_cFv();
extern "C" void sceneChange__14dEvt_control_cFi();
extern "C" void getPId__14dEvt_control_cFPv();
extern "C" void convPId__14dEvt_control_cFUi();
extern "C" void getStbDemoData__14dEvt_control_cFPc();
extern "C" void __ct__11dEvt_info_cFv();
extern "C" void setEventName__11dEvt_info_cFPc();
extern "C" void getEventName__11dEvt_info_cFv();
extern "C" void beforeProc__11dEvt_info_cFv();
extern "C" void searchMapEventData__14dEvt_control_cFUc();
extern "C" void searchMapEventData__14dEvt_control_cFUcl();
extern "C" void runningEventID__14dEvt_control_cFs();
extern "C" void setPt1__14dEvt_control_cFPv();
extern "C" void setPt2__14dEvt_control_cFPv();
extern "C" void setPtT__14dEvt_control_cFPv();
extern "C" void setPtI__14dEvt_control_cFPv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void setPtD__14dEvt_control_cFPv();
extern "C" void setGtItm__14dEvt_control_cFUc();
extern "C" extern char const* const d_event_d_event__stringBase0;

//
// External References:
//

extern "C" void fadeOut__13mDoGph_gInf_cFf();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void fopAcM_getItemEventPartner__FPC10fopAc_ac_c();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void getStatusRoomDt__20dStage_roomControl_cFi();
extern "C" void dStage_changeScene4Event__FiScibfUlsi(int, s8, int, bool, float, u32, s16, int);
extern "C" void dComIfGp_getSelectItem__Fi();
extern "C" void dComIfG_getStageRes__FPCc();
extern "C" void dComIfG_getRoomArcName__Fi();
extern "C" void dComIfGs_onVisitedRoom__Fi();
extern "C" void __dt__12dEvt_order_cFv();
extern "C" void offEventBit__11dSv_event_cFUs();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void dead__12daItemBase_cFv();
extern "C" void end__7dDemo_cFv();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void forceFinish__12dEvDtEvent_cFv();
extern "C" void setStartDemo__18dEvent_exception_cFi();
extern "C" void setObjectArchive__16dEvent_manager_cFPc();
extern "C" void endProc__16dEvent_manager_cFsi();
extern "C" void Sequencer__16dEvent_manager_cFv();
extern "C" void Experts__16dEvent_manager_cFv();
extern "C" void getEventData__16dEvent_manager_cFs();
extern "C" void getEventIdx__16dEvent_manager_cFPCcUcl();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc();
extern "C" void order__16dEvent_manager_cFs();
extern "C" void issueStaff__16dEvent_manager_cFPCc();
extern "C" void cancelStaff__16dEvent_manager_cFPCc();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void QuickStart__9dCamera_cFv();
extern "C" void dCam_getBody__Fv();
extern "C" void onKillMessageFlag__12dMsgObject_cFv();
extern "C" void setKillMessageFlag__12dMsgObject_cFv();
extern "C" void endFlowGroup__12dMsgObject_cFv();
extern "C" void setDemoName__11Z2StatusMgrFPc();
extern "C" void __construct_array();
extern "C" void _savegpr_22();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 const tempBitLabels__20dSv_event_tmp_flag_c[370 + 2 /* padding */];
extern "C" extern void* __vt__11dEvt_info_c[3 + 1 /* padding */];
extern "C" u8 m_cpadInfo__8mDoCPd_c[256];
extern "C" u8 mDemoArcName__20dStage_roomControl_c[10 + 2 /* padding */];
extern "C" u8 m_mode__7dDemo_c[4];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

inline dEvent_manager_c& dComIfGp_getEventManager() {
    return g_dComIfG_gameInfo.play.getEvtManager();
}

inline dEvt_control_c& dComIfGp_getEvent() {
    return g_dComIfG_gameInfo.play.getEvent();
}

/* 80041480-80041488 03BDC0 0008+00 1/1 0/0 0/0 .text event_debug_evnt__21@unnamed@d_event_cpp@Fv
 */
static bool func_80041480() {
    return false;
}

/* 80041488-80041580 03BDC8 00F8+00 1/1 0/0 0/0 .text
 * clear_tmpflag_for_message__21@unnamed@d_event_cpp@Fv         */
static void func_80041488() {
    dComIfGs_offTmpBit(dSv_event_tmp_flag_c::tempBitLabels[11]);
    dComIfGs_offTmpBit(dSv_event_tmp_flag_c::tempBitLabels[12]);
    dComIfGs_offTmpBit(dSv_event_tmp_flag_c::tempBitLabels[13]);
    dComIfGs_offTmpBit(dSv_event_tmp_flag_c::tempBitLabels[14]);
    dComIfGs_offTmpBit(dSv_event_tmp_flag_c::tempBitLabels[15]);
    dComIfGs_offTmpBit(dSv_event_tmp_flag_c::tempBitLabels[51]);
    dComIfGs_offTmpBit(dSv_event_tmp_flag_c::tempBitLabels[52]);
    dComIfGs_offTmpBit(dSv_event_tmp_flag_c::tempBitLabels[53]);
    dComIfGs_offTmpBit(dSv_event_tmp_flag_c::tempBitLabels[54]);
    dComIfGs_offTmpBit(dSv_event_tmp_flag_c::tempBitLabels[55]);
}

dEvt_control_c::dEvt_control_c() {
    remove();
}

dEvt_order_c::dEvt_order_c() {
    /* empty function */
}

/* 800415D8-80041668 03BF18 0090+00 1/1 0/0 0/0 .text orderOld__14dEvt_control_cFUsUsUsUsPvPvPCv
 */
bool dEvt_control_c::orderOld(u16 param_0, u16 param_1, u16 param_2, u16 param_3, void* param_4,
                              void* param_5, void const* param_6) {
    int eventIdx = dComIfGp_getEventManager().getEventIdx((char*)param_6, -1, -1);
    return order(param_0, param_1, param_2, param_3, param_4, param_5, eventIdx, -1);
}

/* 80041668-80041804 03BFA8 019C+00 3/3 13/13 0/0 .text order__14dEvt_control_cFUsUsUsUsPvPvsUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dEvt_control_c::order(u16 param_0, u16 param_1, u16 param_2, u16 param_3, void* param_4,
                               void* param_5, s16 param_6, u8 param_7) {
    nofralloc
#include "asm/d/event/d_event/order__14dEvt_control_cFUsUsUsUsPvPvsUc.s"
}
#pragma pop

/* ############################################################################################## */
/* 80451EC0-80451EC4 0004C0 0004+00 1/1 0/0 0/0 .sdata2          @4361 */
SECTION_SDATA2 static f32 lit_4361 = 1.0f;

/* 80041804-80041934 03C144 0130+00 5/5 0/0 0/0 .text setParam__14dEvt_control_cFP12dEvt_order_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dEvt_control_c::setParam(dEvt_order_c* param_0) {
    nofralloc
#include "asm/d/event/d_event/setParam__14dEvt_control_cFP12dEvt_order_c.s"
}
#pragma pop

/* 80041934-80041964 03C274 0030+00 2/2 0/0 0/0 .text
 * beforeFlagProc__14dEvt_control_cFP12dEvt_order_c             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s32 dEvt_control_c::beforeFlagProc(dEvt_order_c* param_0) {
    nofralloc
#include "asm/d/event/d_event/beforeFlagProc__14dEvt_control_cFP12dEvt_order_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80379D80-80379D80 0063E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80379D80 = "？？？";
SECTION_DEAD static char const* const stringBase_80379D87 = "ALL";
#pragma pop

/* 80041964-800419A8 03C2A4 0044+00 2/2 0/0 0/0 .text
 * afterFlagProc__14dEvt_control_cFP12dEvt_order_c              */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dEvt_control_c::afterFlagProc(dEvt_order_c* param_0) {
    nofralloc
#include "asm/d/event/d_event/afterFlagProc__14dEvt_control_cFP12dEvt_order_c.s"
}
#pragma pop

/* 800419A8-80041A20 03C2E8 0078+00 4/4 0/0 0/0 .text
 * commonCheck__14dEvt_control_cFP12dEvt_order_cUsUs            */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int dEvt_control_c::commonCheck(dEvt_order_c* param_0, u16 param_1, u16 param_2) {
    nofralloc
#include "asm/d/event/d_event/commonCheck__14dEvt_control_cFP12dEvt_order_cUsUs.s"
}
#pragma pop

/* ############################################################################################## */
/* 80379D80-80379D80 0063E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80379D8B = "DEFAULT_TALK";
SECTION_DEAD static char const* const stringBase_80379D98 = "MHINT_TALK";
#pragma pop

/* 80041A20-80041B58 03C360 0138+00 1/1 0/0 0/0 .text talkCheck__14dEvt_control_cFP12dEvt_order_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dEvt_control_c::talkCheck(dEvt_order_c* param_0) {
    nofralloc
#include "asm/d/event/d_event/talkCheck__14dEvt_control_cFP12dEvt_order_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80379D80-80379D80 0063E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80379DA3 = "DEFAULT_TALK_XY";
#pragma pop

/* 80041B58-80041C90 03C498 0138+00 1/1 0/0 0/0 .text
 * talkXyCheck__14dEvt_control_cFP12dEvt_order_c                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dEvt_control_c::talkXyCheck(dEvt_order_c* param_0) {
    nofralloc
#include "asm/d/event/d_event/talkXyCheck__14dEvt_control_cFP12dEvt_order_c.s"
}
#pragma pop

/* 80041C90-80041D34 03C5D0 00A4+00 1/1 0/0 0/0 .text catchCheck__14dEvt_control_cFP12dEvt_order_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dEvt_control_c::catchCheck(dEvt_order_c* param_0) {
    nofralloc
#include "asm/d/event/d_event/catchCheck__14dEvt_control_cFP12dEvt_order_c.s"
}
#pragma pop

/* 80041D34-80041DDC 03C674 00A8+00 1/1 0/0 0/0 .text            talkEnd__14dEvt_control_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dEvt_control_c::talkEnd() {
    nofralloc
#include "asm/d/event/d_event/talkEnd__14dEvt_control_cFv.s"
}
#pragma pop

/* 80041DDC-80041F18 03C71C 013C+00 1/1 0/0 0/0 .text demoCheck__14dEvt_control_cFP12dEvt_order_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dEvt_control_c::demoCheck(dEvt_order_c* param_0) {
    nofralloc
#include "asm/d/event/d_event/demoCheck__14dEvt_control_cFP12dEvt_order_c.s"
}
#pragma pop

/* 80041F18-80041FA0 03C858 0088+00 1/1 0/0 0/0 .text            demoEnd__14dEvt_control_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dEvt_control_c::demoEnd() {
    nofralloc
#include "asm/d/event/d_event/demoEnd__14dEvt_control_cFv.s"
}
#pragma pop

s32 dEvt_control_c::potentialCheck(dEvt_order_c* param_0) {
    fopAc_ac_c* actor = param_0->mActor1;
    s32 ret;
    s32 tmp = beforeFlagProc(param_0);

    if (!tmp) {
        ret = 0;
    } else {
        actor->mEvtInfo.setCommand(2);
        mMode = 2;
        setParam(param_0);
        afterFlagProc(param_0);
        ret = 1;
    }
    return ret;
}

/* 80042014-8004212C 03C954 0118+00 1/1 0/0 0/0 .text doorCheck__14dEvt_control_cFP12dEvt_order_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dEvt_control_c::doorCheck(dEvt_order_c* param_0) {
    nofralloc
#include "asm/d/event/d_event/doorCheck__14dEvt_control_cFP12dEvt_order_c.s"
}
#pragma pop

/* 8004212C-800421C0 03CA6C 0094+00 1/1 0/0 0/0 .text itemCheck__14dEvt_control_cFP12dEvt_order_c
 */
int dEvt_control_c::itemCheck(dEvt_order_c* param_0) {
    const char* event = "DEFAULT_GETITEM";

    if (commonCheck(param_0, 8, 4)) {
        mMode = 2;
        mSpecifiedEvent = dComIfGp_getEventManager().getEventIdx(event, -1, -1);
        dComIfGp_getEventManager().order(mSpecifiedEvent);
        return 1;
    } else {
        return 0;
    }
}

/* 800421C0-80042254 03CB00 0094+00 1/1 0/0 0/0 .text            endProc__14dEvt_control_cFv */
#ifdef NONMATCHING
int dEvt_control_c::endProc() {
    switch (mMode) {
    case 1:
        talkEnd();
        break;
    case 2:
        demoEnd();
        break;
    }

    mMode = 0;
    field_0xea = 255;
    mMapToolId = 255;
    mStageEventDt = NULL;
    field_0xec = 255;
    field_0xed = 0;
    field_0xe0 = -1;
    mPreItemNo = 255;
    dComIfGp_getEventManager().setStartDemo(-2);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int dEvt_control_c::endProc() {
    nofralloc
#include "asm/d/event/d_event/endProc__14dEvt_control_cFv.s"
}
#pragma pop
#endif

/* 80042254-800422C0 03CB94 006C+00 1/1 0/0 0/0 .text            change__14dEvt_control_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dEvt_control_c::change() {
    nofralloc
#include "asm/d/event/d_event/change__14dEvt_control_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 803A7F78-803A7FB0 -00001 0038+00 1/1 0/0 0/0 .data            @4719 */
SECTION_DATA static void* lit_4719[14] = {
    (void*)(((char*)entry__14dEvt_control_cFv) + 0x70),
    (void*)(((char*)entry__14dEvt_control_cFv) + 0xB8),
    (void*)(((char*)entry__14dEvt_control_cFv) + 0x94),
    (void*)(((char*)entry__14dEvt_control_cFv) + 0xDC),
    (void*)(((char*)entry__14dEvt_control_cFv) + 0xF4),
    (void*)(((char*)entry__14dEvt_control_cFv) + 0x118),
    (void*)(((char*)entry__14dEvt_control_cFv) + 0x13C),
    (void*)(((char*)entry__14dEvt_control_cFv) + 0x13C),
    (void*)(((char*)entry__14dEvt_control_cFv) + 0x184),
    (void*)(((char*)entry__14dEvt_control_cFv) + 0x184),
    (void*)(((char*)entry__14dEvt_control_cFv) + 0x160),
    (void*)(((char*)entry__14dEvt_control_cFv) + 0xB8),
    (void*)(((char*)entry__14dEvt_control_cFv) + 0x184),
    (void*)(((char*)entry__14dEvt_control_cFv) + 0x184),
};

/* 800422C0-80042468 03CC00 01A8+00 2/1 0/0 0/0 .text            entry__14dEvt_control_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dEvt_control_c::entry() {
    nofralloc
#include "asm/d/event/d_event/entry__14dEvt_control_cFv.s"
}
#pragma pop

/* 80042468-80042518 03CDA8 00B0+00 1/1 8/8 388/388 .text            reset__14dEvt_control_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dEvt_control_c::reset() {
    nofralloc
#include "asm/d/event/d_event/reset__14dEvt_control_cFv.s"
}
#pragma pop

/* 80042518-800425B4 03CE58 009C+00 3/3 3/3 46/46 .text            reset__14dEvt_control_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dEvt_control_c::reset(void* param_0) {
    nofralloc
#include "asm/d/event/d_event/reset__14dEvt_control_cFPv.s"
}
#pragma pop

void dEvt_control_c::clearSkipSystem() {
    mSkipFunc = NULL;
    field_0x104 = -1;
    field_0x10c = 0;
    field_0x108 = 0;

    if (!chkFlag2(3)) {
        mSkipFade = 0;
    }
    mSkipEventName[0] = 0;
}

/* 800425E8-8004261C 03CF28 0034+00 0/0 2/2 5/5 .text            dEv_defaultSkipProc__FPvi */
int dEv_defaultSkipProc(void* param_0, int param_1) {
    dComIfGp_getEvent().reset(param_0);
    return 1;
}

/* ############################################################################################## */
/* 80379D80-80379D80 0063E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80379DC3 = "$0";
#pragma pop

/* 8004261C-80042778 03CF5C 015C+00 1/1 1/1 0/0 .text            dEv_defaultSkipZev__FPvi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int dEv_defaultSkipZev(void* param_0, int param_1) {
    nofralloc
#include "asm/d/event/d_event/dEv_defaultSkipZev__FPvi.s"
}
#pragma pop

/* 80042778-800428DC 03D0B8 0164+00 0/0 1/1 0/0 .text            dEv_defaultSkipStb__FPvi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int dEv_defaultSkipStb(void* param_0, int param_1) {
    nofralloc
#include "asm/d/event/d_event/dEv_defaultSkipStb__FPvi.s"
}
#pragma pop

/* 800428DC-8004290C 03D21C 0030+00 0/0 1/1 33/33 .text            dEv_noFinishSkipProc__FPvi */
int dEv_noFinishSkipProc(void* param_0, int param_1) {
    dComIfGp_getEvent().offSkipFade();
    return 0;
}

char* dEvt_control_c::getSkipEventName() {
    return mSkipEventName;
}

void dEvt_control_c::setSkipProc(void* param_0, SkipFunc skipFunc, int param_2) {
    mSkipFunc = skipFunc;
    field_0x104 = getPId(param_0);
    field_0x10c = param_2;
}

void dEvt_control_c::setSkipZev(void* param_0, char* pName) {
    setSkipProc(param_0, dEv_defaultSkipZev, 1);
    strcpy(mSkipEventName, pName);
}

void dEvt_control_c::onSkipFade() {
    mSkipFade = 1;
}

void dEvt_control_c::offSkipFade() {
    if (mSkipFade != 0) {
        mSkipFade = 0;
    }
    mSkipFade = 0;
}

/* ############################################################################################## */
/* 80451EC4-80451EC8 0004C4 0004+00 1/1 0/0 0/0 .sdata2          @4904 */
SECTION_SDATA2 static f32 lit_4904 = 1.0f / 10.0f;

/* 800429D4-80042BBC 03D314 01E8+00 1/1 0/0 0/0 .text            skipper__14dEvt_control_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dEvt_control_c::skipper() {
    nofralloc
#include "asm/d/event/d_event/skipper__14dEvt_control_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80451EC8-80451ECC 0004C8 0004+00 1/1 0/0 0/0 .sdata2          @5013 */
SECTION_SDATA2 static f32 lit_5013 = -1.0f / 20.0f;

/* 80042BBC-80042FA8 03D4FC 03EC+00 0/0 1/1 0/0 .text            Step__14dEvt_control_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dEvt_control_c::Step() {
    nofralloc
#include "asm/d/event/d_event/Step__14dEvt_control_cFv.s"
}
#pragma pop

/* 80042FA8-8004316C 03D8E8 01C4+00 0/0 2/2 0/0 .text            moveApproval__14dEvt_control_cFPv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dEvt_control_c::moveApproval(void* param_0) {
    nofralloc
#include "asm/d/event/d_event/moveApproval__14dEvt_control_cFPv.s"
}
#pragma pop

/* 8004316C-800431E8 03DAAC 007C+00 0/0 28/28 0/0 .text compulsory__14dEvt_control_cFPvPCcUs */
#ifdef NONMATCHING
bool dEvt_control_c::compulsory(void* param_0, char const* param_1, u16 param_2) {
    bool check = false;
    if (field_0xe5 == 0 || field_0xe5 == 2) {
        check = true;
    }

    if (!check || mCompulsory) {
        return false;
    } else {
        mCompulsory = 1;
        return orderOld(3, 2, 0, param_2, param_0, NULL, param_1);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL dEvt_control_c::compulsory(void* param_0, char const* param_1, u16 param_2) {
    nofralloc
#include "asm/d/event/d_event/compulsory__14dEvt_control_cFPvPCcUs.s"
}
#pragma pop
#endif

void dEvt_control_c::remove() {
    mMode = 0;
    field_0xe5 = 0;
    mNum = 0;
    mDebugStb = 0;
    field_0xe6 = 0;
    field_0xe7 = 0;
    mCullRate = 0.0f;
    field_0xea = -1;
    mMapToolId = -1;
    field_0xec = -1;
    mStageEventDt = NULL;
    field_0xe0 = 255;
    field_0xed = 0;
    mPreItemNo = -1;
    mEventFlag = 0;
    mFlag2 = 0;
    mChangeOK = NULL;
    clearSkipSystem();
    mCompulsory = 0;
    field_0x129 = 0;
    field_0x12c = -1;
}

/* 80043278-80043280 03DBB8 0008+00 2/2 2/2 0/0 .text            getStageEventDt__14dEvt_control_cFv
 */
dStage_MapEvent_dt_c* dEvt_control_c::getStageEventDt() {
    return mStageEventDt;
}

void dEvt_control_c::sceneChange(int exitId) {
    dStage_changeScene4Event__FiScibfUlsi(exitId, field_0x12c, -1, field_0x129, 0.0f, 0, 0, -1);
}

u32 dEvt_control_c::getPId(void* param_0) {
    if (param_0 == NULL) {
        return 0xffffffff;
    } else {
        return fopAcM_GetID(param_0);
    }
}

/* 800432EC-8004331C 03DC2C 0030+00 7/7 13/13 16/16 .text            convPId__14dEvt_control_cFUi */
#ifdef NONMATCHING
void* dEvt_control_c::convPId(unsigned int param_0) {
    return fopAcIt_Judge(fpcSch_JudgeByID, (void*)param_0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void* dEvt_control_c::convPId(unsigned int param_0) {
    nofralloc
#include "asm/d/event/d_event/convPId__14dEvt_control_cFUi.s"
}
#pragma pop
#endif

/* 8004331C-800433F0 03DC5C 00D4+00 0/0 1/1 0/0 .text            getStbDemoData__14dEvt_control_cFPc
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dEvt_control_c::getStbDemoData(char* param_0) {
    nofralloc
#include "asm/d/event/d_event/getStbDemoData__14dEvt_control_cFPc.s"
}
#pragma pop

dEvt_info_c::dEvt_info_c() {
    setCommand(0);
    setCondition(2);
    setEventId(-1);
    setMapToolId(-1);
    mArchiveName = NULL;
    mIndex = 0;
}

/* 80043428-80043480 03DD68 0058+00 0/0 0/0 4/4 .text            setEventName__11dEvt_info_cFPc */
void dEvt_info_c::setEventName(char* param_0) {
    if (param_0 == NULL) {
        mEventId = -1;
    } else {
        mEventId = dComIfGp_getEventManager().getEventIdx(param_0, -1, -1);
    }
}

/* 80043480-800434CC 03DDC0 004C+00 1/1 0/0 0/0 .text            getEventName__11dEvt_info_cFv */
char* dEvt_info_c::getEventName() {
    if (mEventId == -1) {
        return 0;
    } else {
        dEvDtEvent_c* data = dComIfGp_getEventManager().getEventData(mEventId);
        if (data == NULL) {
            return 0;
        } else {
            return data->getName();
        }
    }
}

void dEvt_info_c::beforeProc() {
    setCondition(2);
}

/* 800434D8-80043500 03DE18 0028+00 0/0 4/4 1/1 .text searchMapEventData__14dEvt_control_cFUc */
dStage_MapEvent_dt_c* dEvt_control_c::searchMapEventData(u8 param_0) {
    return searchMapEventData(param_0, (s32)struct_80450D64);
}

/* 80043500-8004360C 03DE40 010C+00 3/3 7/7 5/5 .text searchMapEventData__14dEvt_control_cFUcl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dStage_MapEvent_dt_c* dEvt_control_c::searchMapEventData(u8 param_0, s32 param_1) {
    nofralloc
#include "asm/d/event/d_event/searchMapEventData__14dEvt_control_cFUcl.s"
}
#pragma pop

s16 dEvt_control_c::runningEventID(s16 param_0) {
    return param_0 == field_0xe0 ? mSpecifiedEvent : param_0;
}

void dEvt_control_c::setPt1(void* param_0) {
    mPt1 = getPId(param_0);
}

void dEvt_control_c::setPt2(void* param_0) {
    mPt2 = getPId(param_0);
}

void dEvt_control_c::setPtT(void* param_0) {
    mPtT = getPId(param_0);
}

void dEvt_control_c::setPtI(void* param_0) {
    mPtI = getPId(param_0);
}

void dEvt_control_c::setPtI_Id(unsigned int param_0) {
    mPtI = param_0;
}

void dEvt_control_c::setPtD(void* param_0) {
    mPtd = getPId(param_0);
}

void dEvt_control_c::setGtItm(u8 param_0) {
    mGtItm = param_0;
}

/* ############################################################################################## */
/* 80379DC6-80379DD0 006426 0008+02 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80379DC6 = "GIVEMAN";
/* @stringBase0 padding */
SECTION_DEAD static char const* const pad_80379DCE = "\0";
#pragma pop

/* 80379D80-80379D80 0063E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

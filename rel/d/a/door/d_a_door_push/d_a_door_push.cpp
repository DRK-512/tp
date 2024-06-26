//
// Generated By: dol2asm
// Translation Unit: d_a_door_push
//

#include "rel/d/a/door/d_a_door_push/d_a_door_push.h"
#include "dol2asm.h"

//
// Types:
//

struct request_of_phase_process_class {};

struct cXyz {
    /* 80678060 */ ~cXyz();
    /* 80678E38 */ cXyz();
};

struct mDoMtx_stack_c {
    /* 8000CD64 */ void transS(cXyz const&);

    static u8 now[48];
};

struct fopAc_ac_c {};

struct daDoorPush_c {
    /* 80677E08 */ void initBaseMtx();
    /* 80677F38 */ void setBaseMtx();
    /* 8067809C */ void Create();
    /* 806781FC */ void CreateHeap();
    /* 80678318 */ void create1st();
    /* 8067839C */ void Execute(f32 (**)[3][4]);
    /* 8067840C */ void action();
    /* 80678488 */ void init_modeWait();
    /* 806784B4 */ void modeWait();
    /* 80678664 */ void event_proc_call();
    /* 80678708 */ void actionOpenWait();
    /* 8067877C */ void actionOrderEvent();
    /* 806787F8 */ void actionEvent();
    /* 80678818 */ void demoProc();
    /* 80678AEC */ void rotateInit();
    /* 80678B10 */ void rotate();
    /* 80678BC0 */ void setGoal();
    /* 80678C70 */ void Draw();
    /* 80678D2C */ void Delete();
};

struct dKy_tevstr_c {};

struct J3DModelData {};

struct dScnKy_env_light_c {
    /* 801A37C4 */ void settingTevStruct(int, cXyz*, dKy_tevstr_c*);
    /* 801A4DA0 */ void setLightTevColorType_MAJI(J3DModelData*, dKy_tevstr_c*);
};

struct dRes_info_c {};

struct dRes_control_c {
    /* 8003C2EC */ void getRes(char const*, s32, dRes_info_c*, int);
};

struct dEvent_manager_c {
    /* 80047758 */ void getEventIdx(fopAc_ac_c*, char const*, u8);
    /* 80047B1C */ void getMyStaffId(char const*, fopAc_ac_c*, int);
    /* 80047D4C */ void getIsAddvance(int);
    /* 80047E10 */ void getMyActIdx(int, char const* const*, int, int, int);
    /* 800480EC */ void getMySubstanceP(int, char const*, int);
    /* 8004817C */ void cutEnd(int);
    /* 800483C4 */ void setGoal(cXyz*);
};

struct dBgW_Base {
    struct PushPullLabel {};
};

struct dBgW {
    /* 8007B970 */ dBgW();
    /* 8007B9C0 */ void Move();
};

struct cBgS_PolyInfo {};

struct csXyz {};

struct dBgS_MoveBgActor {
    /* 80078624 */ dBgS_MoveBgActor();
    /* 800786B0 */ bool IsDelete();
    /* 800786B8 */ bool ToFore();
    /* 800786C0 */ bool ToBack();
    /* 800787BC */ void MoveBGCreate(char const*, int,
                                     void (*)(dBgW*, void*, cBgS_PolyInfo const&, bool, cXyz*,
                                              csXyz*, csXyz*),
                                     u32, f32 (*)[3][4]);
    /* 800788DC */ void MoveBGDelete();
    /* 80078950 */ void MoveBGExecute();
};

struct dBgS {
    /* 80074A08 */ void Regist(dBgW_Base*, fopAc_ac_c*);
};

struct cBgW_BgId {
    /* 802681D4 */ void ChkUsed() const;
};

struct cBgD_t {};

struct cBgW {
    /* 80079F38 */ void Set(cBgD_t*, u32, f32 (*)[3][4]);
};

struct cBgS {
    /* 80074250 */ void Release(dBgW_Base*);
};

struct JAISoundID {};

struct Vec {};

struct Z2SeMgr {
    /* 802AB984 */ void seStart(JAISoundID, Vec const*, u32, s8, f32, f32, f32, f32, u8);
    /* 802AC50C */ void seStartLevel(JAISoundID, Vec const*, u32, s8, f32, f32, f32, f32, u8);
};

struct Z2AudioMgr {
    static u8 mAudioMgrPtr[4 + 4 /* padding */];
};

struct JMath {
    static u8 sincosTable_[65536];
};

struct J3DModel {};

//
// Forward References:
//

extern "C" static void PPCallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel();
extern "C" static void PPCallBack2__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel();
extern "C" void initBaseMtx__12daDoorPush_cFv();
extern "C" void setBaseMtx__12daDoorPush_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void Create__12daDoorPush_cFv();
extern "C" void CreateHeap__12daDoorPush_cFv();
extern "C" void create1st__12daDoorPush_cFv();
extern "C" void Execute__12daDoorPush_cFPPA3_A4_f();
extern "C" void action__12daDoorPush_cFv();
extern "C" void init_modeWait__12daDoorPush_cFv();
extern "C" void modeWait__12daDoorPush_cFv();
extern "C" void event_proc_call__12daDoorPush_cFv();
extern "C" void actionOpenWait__12daDoorPush_cFv();
extern "C" void actionOrderEvent__12daDoorPush_cFv();
extern "C" void actionEvent__12daDoorPush_cFv();
extern "C" void demoProc__12daDoorPush_cFv();
extern "C" void rotateInit__12daDoorPush_cFv();
extern "C" void rotate__12daDoorPush_cFv();
extern "C" void setGoal__12daDoorPush_cFv();
extern "C" void Draw__12daDoorPush_cFv();
extern "C" void Delete__12daDoorPush_cFv();
extern "C" static void daDoorPush_create1st__FP12daDoorPush_c();
extern "C" void __ct__4cXyzFv();
extern "C" static void daDoorPush_MoveBGDelete__FP12daDoorPush_c();
extern "C" static void daDoorPush_MoveBGExecute__FP12daDoorPush_c();
extern "C" static void daDoorPush_MoveBGDraw__FP12daDoorPush_c();
extern "C" void func_80678EA8(void* _this, u8*);
extern "C" extern char const* const d_a_door_push__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void setGoal__16dEvent_manager_cFP4cXyz();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void PSMTXCopy();
extern "C" void PSMTXMultVec();
extern "C" void PSVECAdd();
extern "C" void __construct_array();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" extern void* g_fopAc_Method[8];
extern "C" extern void* g_fpcLf_Method[5 + 1 /* padding */];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern u8 g_env_light[4880];
extern "C" extern u8 j3dSys[284];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 struct_80679070[4];

//
// Declarations:
//

/* 80677DB8-80677DE0 000078 0028+00 1/1 0/0 0/0 .text
 * PPCallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void PPCallBack(fopAc_ac_c* param_0, fopAc_ac_c* param_1, s16 param_2,
                           dBgW_Base::PushPullLabel param_3) {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/PPCallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel.s"
}
#pragma pop

/* 80677DE0-80677E08 0000A0 0028+00 1/1 0/0 0/0 .text
 * PPCallBack2__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void PPCallBack2(fopAc_ac_c* param_0, fopAc_ac_c* param_1, s16 param_2,
                            dBgW_Base::PushPullLabel param_3) {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/PPCallBack2__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel.s"
}
#pragma pop

/* ############################################################################################## */
/* 80678ECC-80678ED0 000000 0004+00 4/4 0/0 0/0 .rodata          @3688 */
SECTION_RODATA static f32 const lit_3688 = -550.0f;
COMPILER_STRIP_GATE(0x80678ECC, &lit_3688);

/* 80678ED0-80678ED4 000004 0004+00 0/3 0/0 0/0 .rodata          @3689 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3689[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80678ED0, &lit_3689);
#pragma pop

/* 80678ED4-80678ED8 000008 0004+00 0/1 0/0 0/0 .rodata          @3690 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3690 = 550.0f;
COMPILER_STRIP_GATE(0x80678ED4, &lit_3690);
#pragma pop

/* 80677E08-80677F38 0000C8 0130+00 1/1 0/0 0/0 .text            initBaseMtx__12daDoorPush_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daDoorPush_c::initBaseMtx() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/initBaseMtx__12daDoorPush_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80678ED8-80678EDC 00000C 0004+00 0/1 0/0 0/0 .rodata          @3716 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3716 = 450.0f;
COMPILER_STRIP_GATE(0x80678ED8, &lit_3716);
#pragma pop

/* 80678EDC-80678EE0 000010 0004+00 0/1 0/0 0/0 .rodata          @3717 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3717 = 75.0f;
COMPILER_STRIP_GATE(0x80678EDC, &lit_3717);
#pragma pop

/* 80677F38-80678060 0001F8 0128+00 2/2 0/0 0/0 .text            setBaseMtx__12daDoorPush_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daDoorPush_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/setBaseMtx__12daDoorPush_cFv.s"
}
#pragma pop

/* 80678060-8067809C 000320 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm cXyz::~cXyz() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/__dt__4cXyzFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80678EE0-80678EE4 000014 0004+00 1/1 0/0 0/0 .rodata          @3744 */
SECTION_RODATA static f32 const lit_3744 = 5.0f;
COMPILER_STRIP_GATE(0x80678EE0, &lit_3744);

/* 80678F18-80678F18 00004C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80678F18 = "V_OsuDoor";
SECTION_DEAD static char const* const stringBase_80678F22 = "PUSH_DOOR_L";
#pragma pop

/* 80678F50-80678F5C 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80678F5C-80678F70 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
SECTION_DATA static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 80678F70-80678F74 -00001 0004+00 4/4 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_door_push__stringBase0;

/* 80678F74-80678F8C 000024 0018+00 1/1 0/0 0/0 .data            l_cull_box */
SECTION_DATA static u8 l_cull_box[24] = {
    0xC4, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC4, 0x16, 0x00, 0x00,
    0x44, 0x16, 0x00, 0x00, 0x44, 0x7A, 0x00, 0x00, 0x44, 0x16, 0x00, 0x00,
};

/* 8067809C-806781FC 00035C 0160+00 1/0 0/0 0/0 .text            Create__12daDoorPush_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daDoorPush_c::Create() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/Create__12daDoorPush_cFv.s"
}
#pragma pop

/* 806781FC-80678318 0004BC 011C+00 1/0 0/0 0/0 .text            CreateHeap__12daDoorPush_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daDoorPush_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/CreateHeap__12daDoorPush_cFv.s"
}
#pragma pop

/* 80678318-8067839C 0005D8 0084+00 1/1 0/0 0/0 .text            create1st__12daDoorPush_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daDoorPush_c::create1st() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/create1st__12daDoorPush_cFv.s"
}
#pragma pop

/* 8067839C-8067840C 00065C 0070+00 1/0 0/0 0/0 .text            Execute__12daDoorPush_cFPPA3_A4_f
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daDoorPush_c::Execute(f32 (**param_0)[3][4]) {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/Execute__12daDoorPush_cFPPA3_A4_f.s"
}
#pragma pop

/* ############################################################################################## */
/* 80678F8C-80678F98 -00001 000C+00 1/1 0/0 0/0 .data            @3792 */
SECTION_DATA static void* lit_3792[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__12daDoorPush_cFv,
};

/* 80678F98-80678FA4 000048 000C+00 1/1 0/0 0/0 .data            l_func$3791 */
SECTION_DATA static u8 l_func_3791[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8067840C-80678488 0006CC 007C+00 1/1 0/0 0/0 .text            action__12daDoorPush_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daDoorPush_c::action() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/action__12daDoorPush_cFv.s"
}
#pragma pop

/* 80678488-806784B4 000748 002C+00 1/1 0/0 0/0 .text            init_modeWait__12daDoorPush_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daDoorPush_c::init_modeWait() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/init_modeWait__12daDoorPush_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80678EE4-80678EEC 000018 0004+04 1/1 0/0 0/0 .rodata          @3870 */
SECTION_RODATA static f32 const lit_3870[1 + 1 /* padding */] = {
    10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80678EE4, &lit_3870);

/* 80678EEC-80678EF4 000020 0008+00 1/1 0/0 0/0 .rodata          @3872 */
SECTION_RODATA static u8 const lit_3872[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80678EEC, &lit_3872);

/* 806784B4-80678664 000774 01B0+00 1/0 0/0 0/0 .text            modeWait__12daDoorPush_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daDoorPush_c::modeWait() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/modeWait__12daDoorPush_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80678FA4-80678FB0 -00001 000C+00 0/1 0/0 0/0 .data            @3878 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3878[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOpenWait__12daDoorPush_cFv,
};
#pragma pop

/* 80678FB0-80678FBC -00001 000C+00 0/1 0/0 0/0 .data            @3879 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3879[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOrderEvent__12daDoorPush_cFv,
};
#pragma pop

/* 80678FBC-80678FC8 -00001 000C+00 0/1 0/0 0/0 .data            @3880 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3880[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionEvent__12daDoorPush_cFv,
};
#pragma pop

/* 80678FC8-80678FEC 000078 0024+00 0/1 0/0 0/0 .data            l_func$3877 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func_3877[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80678664-80678708 000924 00A4+00 1/1 0/0 0/0 .text            event_proc_call__12daDoorPush_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daDoorPush_c::event_proc_call() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/event_proc_call__12daDoorPush_cFv.s"
}
#pragma pop

/* 80678708-8067877C 0009C8 0074+00 1/0 0/0 0/0 .text            actionOpenWait__12daDoorPush_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daDoorPush_c::actionOpenWait() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/actionOpenWait__12daDoorPush_cFv.s"
}
#pragma pop

/* 8067877C-806787F8 000A3C 007C+00 1/0 0/0 0/0 .text            actionOrderEvent__12daDoorPush_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daDoorPush_c::actionOrderEvent() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/actionOrderEvent__12daDoorPush_cFv.s"
}
#pragma pop

/* 806787F8-80678818 000AB8 0020+00 1/0 0/0 0/0 .text            actionEvent__12daDoorPush_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daDoorPush_c::actionEvent() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/actionEvent__12daDoorPush_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80678F18-80678F18 00004C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80678F2E = "WAIT";
SECTION_DEAD static char const* const stringBase_80678F33 = "OPEN";
SECTION_DEAD static char const* const stringBase_80678F38 = "SCENE_CHG";
SECTION_DEAD static char const* const stringBase_80678F42 = "pdoor";
SECTION_DEAD static char const* const stringBase_80678F48 = "Timer";
#pragma pop

/* 80678FEC-80678FF8 -00001 000C+00 1/1 0/0 0/0 .data            action_table$3910 */
SECTION_DATA static void* action_table[3] = {
    (void*)(((char*)&d_a_door_push__stringBase0) + 0x16),
    (void*)(((char*)&d_a_door_push__stringBase0) + 0x1B),
    (void*)(((char*)&d_a_door_push__stringBase0) + 0x20),
};

/* 80678818-80678AEC 000AD8 02D4+00 2/2 0/0 0/0 .text            demoProc__12daDoorPush_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daDoorPush_c::demoProc() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/demoProc__12daDoorPush_cFv.s"
}
#pragma pop

/* 80678AEC-80678B10 000DAC 0024+00 1/1 0/0 0/0 .text            rotateInit__12daDoorPush_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daDoorPush_c::rotateInit() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/rotateInit__12daDoorPush_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80678EF4-80678EF8 000028 0004+00 0/0 0/0 0/0 .rodata          @3985 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3985 = 1.0f;
COMPILER_STRIP_GATE(0x80678EF4, &lit_3985);
#pragma pop

/* 80678EF8-80678EFC 00002C 0004+00 0/0 0/0 0/0 .rodata          @3986 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3986 = -1.0f;
COMPILER_STRIP_GATE(0x80678EF8, &lit_3986);
#pragma pop

/* 80678EFC-80678F00 000030 0004+00 1/1 0/0 0/0 .rodata          @4009 */
SECTION_RODATA static f32 const lit_4009 = 5461.0f;
COMPILER_STRIP_GATE(0x80678EFC, &lit_4009);

/* 80678F00-80678F04 000034 0004+00 1/1 0/0 0/0 .rodata          @4010 */
SECTION_RODATA static f32 const lit_4010 = 60.0f;
COMPILER_STRIP_GATE(0x80678F00, &lit_4010);

/* 80678F04-80678F0C 000038 0008+00 1/1 0/0 0/0 .rodata          @4012 */
SECTION_RODATA static u8 const lit_4012[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80678F04, &lit_4012);

/* 80678B10-80678BC0 000DD0 00B0+00 1/1 0/0 0/0 .text            rotate__12daDoorPush_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daDoorPush_c::rotate() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/rotate__12daDoorPush_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80678F0C-80678F10 000040 0004+00 0/1 0/0 0/0 .rodata          @4031 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4031 = 300.0f;
COMPILER_STRIP_GATE(0x80678F0C, &lit_4031);
#pragma pop

/* 80678F10-80678F14 000044 0004+00 0/1 0/0 0/0 .rodata          @4032 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4032 = -400.0f;
COMPILER_STRIP_GATE(0x80678F10, &lit_4032);
#pragma pop

/* 80678F14-80678F18 000048 0004+00 0/1 0/0 0/0 .rodata          @4033 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4033 = -300.0f;
COMPILER_STRIP_GATE(0x80678F14, &lit_4033);
#pragma pop

/* 80678BC0-80678C70 000E80 00B0+00 1/1 0/0 0/0 .text            setGoal__12daDoorPush_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daDoorPush_c::setGoal() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/setGoal__12daDoorPush_cFv.s"
}
#pragma pop

/* 80678C70-80678D2C 000F30 00BC+00 1/0 0/0 0/0 .text            Draw__12daDoorPush_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daDoorPush_c::Draw() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/Draw__12daDoorPush_cFv.s"
}
#pragma pop

/* 80678D2C-80678DAC 000FEC 0080+00 1/0 0/0 0/0 .text            Delete__12daDoorPush_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daDoorPush_c::Delete() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/Delete__12daDoorPush_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80678FF8-80679018 -00001 0020+00 1/0 0/0 0/0 .data            daDoorPush_METHODS */
SECTION_DATA static void* daDoorPush_METHODS[8] = {
    (void*)daDoorPush_create1st__FP12daDoorPush_c,
    (void*)daDoorPush_MoveBGDelete__FP12daDoorPush_c,
    (void*)daDoorPush_MoveBGExecute__FP12daDoorPush_c,
    (void*)NULL,
    (void*)daDoorPush_MoveBGDraw__FP12daDoorPush_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80679018-80679048 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_PushDoor */
SECTION_DATA extern void* g_profile_PushDoor[12] = {
    (void*)0xFFFFFFFD, (void*)0x0003FFFD,
    (void*)0x00BF0000, (void*)&g_fpcLf_Method,
    (void*)0x00000660, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x02420000, (void*)&daDoorPush_METHODS,
    (void*)0x00040100, (void*)0x000E0000,
};

/* 80679048-80679070 0000F8 0028+00 1/1 0/0 0/0 .data            __vt__12daDoorPush_c */
SECTION_DATA extern void* __vt__12daDoorPush_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__12daDoorPush_cFv,
    (void*)Create__12daDoorPush_cFv,
    (void*)Execute__12daDoorPush_cFPPA3_A4_f,
    (void*)Draw__12daDoorPush_cFv,
    (void*)Delete__12daDoorPush_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80678DAC-80678E38 00106C 008C+00 1/0 0/0 0/0 .text daDoorPush_create1st__FP12daDoorPush_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daDoorPush_create1st(daDoorPush_c* param_0) {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/daDoorPush_create1st__FP12daDoorPush_c.s"
}
#pragma pop

/* 80678E38-80678E3C 0010F8 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
cXyz::cXyz() {
    /* empty function */
}

/* 80678E3C-80678E5C 0010FC 0020+00 1/0 0/0 0/0 .text daDoorPush_MoveBGDelete__FP12daDoorPush_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daDoorPush_MoveBGDelete(daDoorPush_c* param_0) {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/daDoorPush_MoveBGDelete__FP12daDoorPush_c.s"
}
#pragma pop

/* 80678E5C-80678E7C 00111C 0020+00 1/0 0/0 0/0 .text daDoorPush_MoveBGExecute__FP12daDoorPush_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daDoorPush_MoveBGExecute(daDoorPush_c* param_0) {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/daDoorPush_MoveBGExecute__FP12daDoorPush_c.s"
}
#pragma pop

/* 80678E7C-80678EA8 00113C 002C+00 1/0 0/0 0/0 .text daDoorPush_MoveBGDraw__FP12daDoorPush_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daDoorPush_MoveBGDraw(daDoorPush_c* param_0) {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/daDoorPush_MoveBGDraw__FP12daDoorPush_c.s"
}
#pragma pop

/* 80678EA8-80678EC4 001168 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80678EA8(void* _this, u8* param_0) {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_push/d_a_door_push/func_80678EA8.s"
}
#pragma pop

/* 80678F18-80678F18 00004C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

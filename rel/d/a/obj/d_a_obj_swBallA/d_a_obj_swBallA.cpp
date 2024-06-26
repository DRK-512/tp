//
// Generated By: dol2asm
// Translation Unit: d_a_obj_swBallA
//

#include "rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA.h"
#include "dol2asm.h"

//
// Types:
//

// struct request_of_phase_process_class {};

// struct mDoMtx_stack_c {
//     /* 8000CD9C */ void transM(f32, f32, f32);

//     static u8 now[48];
// };

// struct J3DMaterialTable {};

// struct J3DAnmTextureSRTKey {};

// struct mDoExt_btkAnm {
//     /* 8000D63C */ void init(J3DMaterialTable*, J3DAnmTextureSRTKey*, int, int, f32, s16, s16);
//     /* 8000D6D8 */ void entry(J3DMaterialTable*, f32);
// };

// struct mDoExt_baseAnm {
//     /* 8000D428 */ void play();
// };

// struct fopAc_ac_c {
//     /* 80018B64 */ fopAc_ac_c();
//     /* 80018C8C */ ~fopAc_ac_c();
// };

struct dSv_info_c {
    /* 80035200 */ void onSwitch(int, int);
    /* 800352B0 */ void offSwitch(int, int);
    /* 80035360 */ void isSwitch(int, int) const;
};

// struct dKy_tevstr_c {};

// struct J3DModelData {};

// struct cXyz {};

// struct dScnKy_env_light_c {
//     /* 801A37C4 */ void settingTevStruct(int, cXyz*, dKy_tevstr_c*);
//     /* 801A4DA0 */ void setLightTevColorType_MAJI(J3DModelData*, dKy_tevstr_c*);
// };

struct dRes_info_c {};

struct dRes_control_c {
    /* 8003C2EC */ void getRes(char const*, s32, dRes_info_c*, int);
};

struct dEvLib_callback_c {
    /* 8004886C */ void eventUpdate();
    /* 80048940 */ void orderEvent(int, int, int);
    /* 80CF42F4 */ ~dEvLib_callback_c();
    /* 80CF433C */ bool eventStart();
    /* 80CF4344 */ bool eventRun();
    /* 80CF434C */ bool eventEnd();
};

// struct JAISoundID {};

// struct Vec {};

// struct Z2SeMgr {
//     /* 802AB984 */ void seStart(JAISoundID, Vec const*, u32, s8, f32, f32, f32, f32, u8);
//     /* 802AC50C */ void seStartLevel(JAISoundID, Vec const*, u32, s8, f32, f32, f32, f32, u8);
// };

// struct Z2AudioMgr {
//     static u8 mAudioMgrPtr[4 + 4 /* padding */];
// };

// struct J3DModel {};

// struct J3DFrameCtrl {
//     /* 803283FC */ void init(s16);
//     /* 80CF3928 */ ~J3DFrameCtrl();
// };

//
// Forward References:
//

extern "C" static void s_ball_sub__FPvPv();
extern "C" static void CheckCreateHeap__FP10fopAc_ac_c();
extern "C" void checkArea_sub__14daObjSwBallA_cFP10fopAc_ac_c();
extern "C" void search_ball__14daObjSwBallA_cFv();
extern "C" void initBaseMtx__14daObjSwBallA_cFv();
extern "C" void setBaseMtx__14daObjSwBallA_cFv();
extern "C" void Create__14daObjSwBallA_cFv();
extern "C" void CreateHeap__14daObjSwBallA_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void create__14daObjSwBallA_cFv();
extern "C" void execute__14daObjSwBallA_cFv();
extern "C" void actionRun__14daObjSwBallA_cFv();
extern "C" void actionStop__14daObjSwBallA_cFv();
extern "C" void PutCrrPos__14daObjSwBallA_cFv();
extern "C" void draw__14daObjSwBallA_cFv();
extern "C" void _delete__14daObjSwBallA_cFv();
extern "C" static void daObjSwBallA_Draw__FP14daObjSwBallA_c();
extern "C" static void daObjSwBallA_Execute__FP14daObjSwBallA_c();
extern "C" static void daObjSwBallA_Delete__FP14daObjSwBallA_c();
extern "C" static void daObjSwBallA_Create__FP10fopAc_ac_c();
extern "C" void __dt__17dEvLib_callback_cFv();
extern "C" bool eventStart__17dEvLib_callback_cFv();
extern "C" bool eventRun__17dEvLib_callback_cFv();
extern "C" bool eventEnd__17dEvLib_callback_cFv();
extern "C" void __dt__14daObjSwBallA_cFv();
extern "C" static void func_80CF43D4();
extern "C" extern char const* const d_a_obj_swBallA__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_btkAnmRemove__FP12J3DModelData();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dLib_checkActorInRectangle__FP10fopAc_ac_cP10fopAc_ac_cPC4cXyzPC4cXyz();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void eventUpdate__17dEvLib_callback_cFv();
extern "C" void orderEvent__17dEvLib_callback_cFiii();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
// extern "C" void PSMTXCopy();
// extern "C" void PSMTXConcat();
// extern "C" void PSMTXTrans();
// extern "C" void C_MTXLightOrtho();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_22();
extern "C" void _savegpr_28();
extern "C" void _restgpr_22();
extern "C" void _restgpr_28();
// extern "C" extern void* g_fopAc_Method[8];
// extern "C" extern void* g_fpcLf_Method[5 + 1 /* padding */];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
// extern "C" extern u8 g_env_light[4880];
// extern "C" extern u8 j3dSys[284];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 80CF4508-80CF4528 000000 0020+00 2/2 0/0 0/0 .bss             l_target_info */
static u8 l_target_info[32];

/* 80CF4528-80CF452C 000020 0004+00 2/2 0/0 0/0 .bss             l_target_info_count */
static u8 l_target_info_count[4];

/* 80CF32F8-80CF3374 000078 007C+00 1/1 0/0 0/0 .text            s_ball_sub__FPvPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void s_ball_sub(void* param_0, void* param_1) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA/s_ball_sub__FPvPv.s"
}
#pragma pop

/* 80CF3374-80CF3394 0000F4 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void CheckCreateHeap(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA/CheckCreateHeap__FP10fopAc_ac_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80CF43E4-80CF43E8 000000 0004+00 4/4 0/0 0/0 .rodata          l_color */
SECTION_RODATA static u32 const l_color = 0x0396FFFF;
COMPILER_STRIP_GATE(0x80CF43E4, &l_color);

/* 80CF43E8-80CF43EC 000004 0004+00 0/2 0/0 0/0 .rodata          @3730 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3730 = 10.0f;
COMPILER_STRIP_GATE(0x80CF43E8, &lit_3730);
#pragma pop

/* 80CF43EC-80CF43F0 000008 0004+00 0/2 0/0 0/0 .rodata          @3731 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3731 = 100.0f;
COMPILER_STRIP_GATE(0x80CF43EC, &lit_3731);
#pragma pop

/* 80CF43F0-80CF43F4 00000C 0004+00 0/2 0/0 0/0 .rodata          @3732 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3732 = -100.0f;
COMPILER_STRIP_GATE(0x80CF43F0, &lit_3732);
#pragma pop

/* 80CF43F4-80CF43FC 000010 0004+04 2/5 0/0 0/0 .rodata          @3733 */
SECTION_RODATA static u8 const lit_3733[4 + 4 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CF43F4, &lit_3733);

/* 80CF3394-80CF34E4 000114 0150+00 1/1 0/0 0/0 .text
 * checkArea_sub__14daObjSwBallA_cFP10fopAc_ac_c                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSwBallA_c::checkArea_sub(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA/checkArea_sub__14daObjSwBallA_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 80CF34E4-80CF3610 000264 012C+00 1/1 0/0 0/0 .text            search_ball__14daObjSwBallA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSwBallA_c::search_ball() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA/search_ball__14daObjSwBallA_cFv.s"
}
#pragma pop

/* 80CF3610-80CF3630 000390 0020+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjSwBallA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSwBallA_c::initBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA/initBaseMtx__14daObjSwBallA_cFv.s"
}
#pragma pop

/* 80CF3630-80CF3694 0003B0 0064+00 1/1 0/0 0/0 .text            setBaseMtx__14daObjSwBallA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSwBallA_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA/setBaseMtx__14daObjSwBallA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80CF43FC-80CF4404 000018 0008+00 1/1 0/0 0/0 .rodata          @3884 */
SECTION_RODATA static u8 const lit_3884[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CF43FC, &lit_3884);

/* 80CF3694-80CF37FC 000414 0168+00 1/1 0/0 0/0 .text            Create__14daObjSwBallA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSwBallA_c::Create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA/Create__14daObjSwBallA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80CF4404-80CF4408 000020 0004+00 2/3 0/0 0/0 .rodata          @3918 */
SECTION_RODATA static f32 const lit_3918 = 1.0f;
COMPILER_STRIP_GATE(0x80CF4404, &lit_3918);

/* 80CF4410-80CF4410 00002C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CF4410 = "P_LBswA";
#pragma pop

/* 80CF4418-80CF4424 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CF4424-80CF4438 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80CF4438-80CF443C -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_swBallA__stringBase0;

/* 80CF443C-80CF4448 -00001 000C+00 0/1 0/0 0/0 .data            @3956 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3956[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionRun__14daObjSwBallA_cFv,
};
#pragma pop

/* 80CF4448-80CF4454 -00001 000C+00 0/1 0/0 0/0 .data            @3957 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3957[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionStop__14daObjSwBallA_cFv,
};
#pragma pop

/* 80CF4454-80CF446C 00003C 0018+00 0/1 0/0 0/0 .data            l_func$3955 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80CF446C-80CF448C -00001 0020+00 1/0 0/0 0/0 .data            l_daObjSwBallA_Method */
SECTION_DATA static void* l_daObjSwBallA_Method[8] = {
    (void*)daObjSwBallA_Create__FP10fopAc_ac_c,
    (void*)daObjSwBallA_Delete__FP14daObjSwBallA_c,
    (void*)daObjSwBallA_Execute__FP14daObjSwBallA_c,
    (void*)NULL,
    (void*)daObjSwBallA_Draw__FP14daObjSwBallA_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80CF448C-80CF44BC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SwBallA */
SECTION_DATA extern void* g_profile_Obj_SwBallA[12] = {
    (void*)0xFFFFFFFD, (void*)0x0007FFFD,
    (void*)0x01990000, (void*)&g_fpcLf_Method,
    (void*)0x000005CC, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x023B0000, (void*)&l_daObjSwBallA_Method,
    (void*)0x00040100, (void*)0x000E0000,
};

/* 80CF44BC-80CF44E0 0000A4 0024+00 2/2 0/0 0/0 .data            __vt__14daObjSwBallA_c */
SECTION_DATA extern void* __vt__14daObjSwBallA_c[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CF43D4,
    (void*)eventStart__17dEvLib_callback_cFv,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
    (void*)__dt__14daObjSwBallA_cFv,
};

/* 80CF44E0-80CF44F8 0000C8 0018+00 3/3 0/0 0/0 .data            __vt__17dEvLib_callback_c */
SECTION_DATA extern void* __vt__17dEvLib_callback_c[6] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17dEvLib_callback_cFv,
    (void*)eventStart__17dEvLib_callback_cFv,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
};

/* 80CF44F8-80CF4504 0000E0 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80CF37FC-80CF3928 00057C 012C+00 1/1 0/0 0/0 .text            CreateHeap__14daObjSwBallA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSwBallA_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA/CreateHeap__14daObjSwBallA_cFv.s"
}
#pragma pop

/* 80CF3928-80CF3970 0006A8 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 80CF3970-80CF3A90 0006F0 0120+00 1/1 0/0 0/0 .text            create__14daObjSwBallA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSwBallA_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA/func_80CF3970.s"
}
#pragma pop

/* ############################################################################################## */
/* 80CF452C-80CF4530 000024 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80CF452C[4];

/* 80CF3A90-80CF3B40 000810 00B0+00 1/1 0/0 0/0 .text            execute__14daObjSwBallA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSwBallA_c::execute() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA/execute__14daObjSwBallA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80CF4408-80CF440C 000024 0004+00 1/1 0/0 0/0 .rodata          @4032 */
SECTION_RODATA static f32 const lit_4032 = -1.0f;
COMPILER_STRIP_GATE(0x80CF4408, &lit_4032);

/* 80CF3B40-80CF3D80 0008C0 0240+00 1/0 0/0 0/0 .text            actionRun__14daObjSwBallA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSwBallA_c::actionRun() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA/actionRun__14daObjSwBallA_cFv.s"
}
#pragma pop

/* 80CF3D80-80CF3D84 000B00 0004+00 1/0 0/0 0/0 .text            actionStop__14daObjSwBallA_cFv */
void daObjSwBallA_c::actionStop() {
    /* empty function */
}

/* ############################################################################################## */
/* 80CF440C-80CF4410 000028 0004+00 0/1 0/0 0/0 .rodata          @4122 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4122 = 300.0f;
COMPILER_STRIP_GATE(0x80CF440C, &lit_4122);
#pragma pop

/* 80CF3D84-80CF406C 000B04 02E8+00 1/1 0/0 0/0 .text            PutCrrPos__14daObjSwBallA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSwBallA_c::PutCrrPos() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA/PutCrrPos__14daObjSwBallA_cFv.s"
}
#pragma pop

/* 80CF406C-80CF41F4 000DEC 0188+00 1/1 0/0 0/0 .text            draw__14daObjSwBallA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSwBallA_c::draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA/draw__14daObjSwBallA_cFv.s"
}
#pragma pop

/* 80CF41F4-80CF4274 000F74 0080+00 1/1 0/0 0/0 .text            _delete__14daObjSwBallA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSwBallA_c::_delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA/_delete__14daObjSwBallA_cFv.s"
}
#pragma pop

/* 80CF4274-80CF4294 000FF4 0020+00 1/0 0/0 0/0 .text daObjSwBallA_Draw__FP14daObjSwBallA_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjSwBallA_Draw(daObjSwBallA_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA/daObjSwBallA_Draw__FP14daObjSwBallA_c.s"
}
#pragma pop

/* 80CF4294-80CF42B4 001014 0020+00 1/0 0/0 0/0 .text daObjSwBallA_Execute__FP14daObjSwBallA_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjSwBallA_Execute(daObjSwBallA_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA/daObjSwBallA_Execute__FP14daObjSwBallA_c.s"
}
#pragma pop

/* 80CF42B4-80CF42D4 001034 0020+00 1/0 0/0 0/0 .text daObjSwBallA_Delete__FP14daObjSwBallA_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjSwBallA_Delete(daObjSwBallA_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA/daObjSwBallA_Delete__FP14daObjSwBallA_c.s"
}
#pragma pop

/* 80CF42D4-80CF42F4 001054 0020+00 1/0 0/0 0/0 .text            daObjSwBallA_Create__FP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjSwBallA_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA/daObjSwBallA_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80CF42F4-80CF433C 001074 0048+00 1/0 0/0 0/0 .text            __dt__17dEvLib_callback_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dEvLib_callback_c::~dEvLib_callback_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA/__dt__17dEvLib_callback_cFv.s"
}
#pragma pop

/* 80CF433C-80CF4344 0010BC 0008+00 2/0 0/0 0/0 .text            eventStart__17dEvLib_callback_cFv
 */
bool dEvLib_callback_c::eventStart() {
    return true;
}

/* 80CF4344-80CF434C 0010C4 0008+00 2/0 0/0 0/0 .text            eventRun__17dEvLib_callback_cFv */
bool dEvLib_callback_c::eventRun() {
    return true;
}

/* 80CF434C-80CF4354 0010CC 0008+00 2/0 0/0 0/0 .text            eventEnd__17dEvLib_callback_cFv */
bool dEvLib_callback_c::eventEnd() {
    return true;
}

/* 80CF4354-80CF43D4 0010D4 0080+00 2/1 0/0 0/0 .text            __dt__14daObjSwBallA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daObjSwBallA_c::~daObjSwBallA_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA/__dt__14daObjSwBallA_cFv.s"
}
#pragma pop

/* 80CF43D4-80CF43DC 001154 0008+00 1/0 0/0 0/0 .text            @1384@__dt__14daObjSwBallA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80CF43D4() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_swBallA/d_a_obj_swBallA/func_80CF43D4.s"
}
#pragma pop

/* 80CF4410-80CF4410 00002C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

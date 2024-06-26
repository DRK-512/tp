//
// Generated By: dol2asm
// Translation Unit: d_a_npc_sq
//

#include "rel/d/a/npc/d_a_npc_sq/d_a_npc_sq.h"
#include "d/cc/d_cc_d.h"
#include "dol2asm.h"

//
// Types:
//

struct request_of_phase_process_class {};

struct npc_sq_class {};

struct mDoMtx_stack_c {
    /* 8000CE38 */ void scaleM(f32, f32, f32);

    static u8 now[48];
};

struct J3DMaterialTable {};

struct J3DAnmTextureSRTKey {};

struct mDoExt_btkAnm {
    /* 8000D63C */ void init(J3DMaterialTable*, J3DAnmTextureSRTKey*, int, int, f32, s16, s16);
    /* 8000D6D8 */ void entry(J3DMaterialTable*, f32);
};

struct mDoExt_McaMorfCallBack2_c {};

struct mDoExt_McaMorfCallBack1_c {};

struct J3DAnmTransform {};

struct J3DModelData {};

struct mDoExt_McaMorf {
    /* 8000FC4C */ mDoExt_McaMorf(J3DModelData*, mDoExt_McaMorfCallBack1_c*,
                                  mDoExt_McaMorfCallBack2_c*, J3DAnmTransform*, int, f32, int, int,
                                  int, void*, u32, u32);
    /* 8001037C */ void setAnm(J3DAnmTransform*, int, f32, f32, f32, f32, void*);
    /* 800105C8 */ void play(Vec*, u32, s8);
    /* 80010680 */ void entryDL();
    /* 800106AC */ void modelCalc();
};

struct fopAc_ac_c {
    /* 80018B64 */ fopAc_ac_c();
};

struct daNpc_Sq_HIO_c {
    /* 80AF5FEC */ daNpc_Sq_HIO_c();
    /* 80AF7360 */ ~daNpc_Sq_HIO_c();
};

struct dSv_event_flag_c {
    static u8 saveBitLabels[1644 + 4 /* padding */];
};

struct dSv_event_c {
    /* 800349BC */ void isEventBit(u16) const;
};

struct dKy_tevstr_c {};

struct dScnKy_env_light_c {
    /* 801A37C4 */ void settingTevStruct(int, cXyz*, dKy_tevstr_c*);
    /* 801A4DA0 */ void setLightTevColorType_MAJI(J3DModelData*, dKy_tevstr_c*);
};

struct dRes_info_c {};

struct dRes_control_c {
    /* 8003C2EC */ void getRes(char const*, s32, dRes_info_c*, int);
};

struct dMsgFlow_c {
    /* 80249F00 */ dMsgFlow_c();
    /* 80249F90 */ void init(fopAc_ac_c*, int, int, fopAc_ac_c**);
    /* 8024A2D8 */ void doFlow(fopAc_ac_c*, fopAc_ac_c**, int);
    /* 8024A540 */ void getNowMsgNo();
};

struct dEvt_control_c {
    /* 80042468 */ void reset();
};

struct dDlst_shadowControl_c {
    static u8 mSimpleTexObj[32];
};

struct dCamera_c {
    /* 801614AC */ void Start();
    /* 801614D0 */ void Stop();
    /* 8016300C */ void SetTrimSize(s32);
    /* 80180AE0 */ void Set(cXyz, cXyz, f32, s16);
};

struct dBgS_PolyPassChk {
    /* 80078E68 */ void SetObj();
};

struct dBgS_ObjAcch {
    /* 80AF72F0 */ ~dBgS_ObjAcch();
};

struct dBgS_AcchCir {
    /* 80075EAC */ dBgS_AcchCir();
    /* 80075F58 */ void SetWall(f32, f32);
};

struct csXyz {};

struct dBgS {};

struct dBgS_Acch {
    /* 80075F94 */ ~dBgS_Acch();
    /* 800760A0 */ dBgS_Acch();
    /* 80076248 */ void Set(cXyz*, cXyz*, fopAc_ac_c*, int, dBgS_AcchCir*, cXyz*, csXyz*, csXyz*);
    /* 80076AAC */ void CrrPos(dBgS&);
};

struct cCcS {
    /* 80264BA8 */ void Set(cCcD_Obj*);
};

struct cBgS_PolyInfo {};

struct _GXTexObj {};

struct J3DModel {};

struct J3DFrameCtrl {
    /* 803283FC */ void init(s16);
    /* 80AF6F50 */ ~J3DFrameCtrl();
};

//
// Forward References:
//

extern "C" void __ct__14daNpc_Sq_HIO_cFv();
extern "C" static void anm_init__FP12npc_sq_classifUcf();
extern "C" static void daNpc_Sq_Draw__FP12npc_sq_class();
extern "C" static void npc_sq_normal__FP12npc_sq_class();
extern "C" static void action__FP12npc_sq_class();
extern "C" static void cam_3d_morf__FP12npc_sq_classf();
extern "C" static void demo_camera__FP12npc_sq_class();
extern "C" static void daNpc_Sq_Execute__FP12npc_sq_class();
extern "C" static bool daNpc_Sq_IsDelete__FP12npc_sq_class();
extern "C" static void daNpc_Sq_Delete__FP12npc_sq_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daNpc_Sq_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__14daNpc_Sq_HIO_cFv();
extern "C" void __sinit_d_a_npc_sq_cpp();
extern "C" static void func_80AF73E4();
extern "C" static void func_80AF73EC();
extern "C" extern char const* const d_a_npc_sq__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void
__ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl();
extern "C" void setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void entryDL__14mDoExt_McaMorfFv();
extern "C" void modelCalc__14mDoExt_McaMorfFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void getNowMsgNo__10dMsgFlow_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void cM_rndF__Ff();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void PSMTXCopy();
extern "C" void PSMTXTrans();
extern "C" void PSMTXMultVec();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* g_fopAc_Method[8];
extern "C" extern void* g_fpcLf_Method[5 + 1 /* padding */];
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" extern u8 g_env_light[4880];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80AF7408-80AF740C 000000 0004+00 7/7 0/0 0/0 .rodata          @3768 */
SECTION_RODATA static f32 const lit_3768 = 2.0f;
COMPILER_STRIP_GATE(0x80AF7408, &lit_3768);

/* 80AF74A8-80AF74D0 -00001 0028+00 1/1 0/0 0/0 .data            @4052 */
SECTION_DATA static void* lit_4052[10] = {
    (void*)(((char*)demo_camera__FP12npc_sq_class) + 0x4B0),
    (void*)(((char*)demo_camera__FP12npc_sq_class) + 0x68),
    (void*)(((char*)demo_camera__FP12npc_sq_class) + 0x128),
    (void*)(((char*)demo_camera__FP12npc_sq_class) + 0x294),
    (void*)(((char*)demo_camera__FP12npc_sq_class) + 0x2E0),
    (void*)(((char*)demo_camera__FP12npc_sq_class) + 0x338),
    (void*)(((char*)demo_camera__FP12npc_sq_class) + 0x3E8),
    (void*)(((char*)demo_camera__FP12npc_sq_class) + 0x4B0),
    (void*)(((char*)demo_camera__FP12npc_sq_class) + 0x4B0),
    (void*)(((char*)demo_camera__FP12npc_sq_class) + 0x49C),
};

/* 80AF74D0-80AF7510 000028 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4176 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 20.0f} // mSph
    } // mSphAttr
};

/* 80AF7510-80AF7530 -00001 0020+00 1/0 0/0 0/0 .data            l_daNpc_Sq_Method */
SECTION_DATA static void* l_daNpc_Sq_Method[8] = {
    (void*)daNpc_Sq_Create__FP10fopAc_ac_c,
    (void*)daNpc_Sq_Delete__FP12npc_sq_class,
    (void*)daNpc_Sq_Execute__FP12npc_sq_class,
    (void*)daNpc_Sq_IsDelete__FP12npc_sq_class,
    (void*)daNpc_Sq_Draw__FP12npc_sq_class,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80AF7530-80AF7560 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_SQ */
SECTION_DATA extern void* g_profile_NPC_SQ[12] = {
    (void*)0xFFFFFFFD, (void*)0x0007FFFD,
    (void*)0x010B0000, (void*)&g_fpcLf_Method,
    (void*)0x00000A44, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x02BA0000, (void*)&l_daNpc_Sq_Method,
    (void*)0x000C0000, (void*)NULL,
};

/* 80AF7560-80AF756C 0000B8 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80AF756C-80AF7578 0000C4 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80AF7578-80AF759C 0000D0 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AF73EC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AF73E4,
};

/* 80AF759C-80AF75A8 0000F4 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80AF75A8-80AF75B4 000100 000C+00 2/2 0/0 0/0 .data            __vt__14daNpc_Sq_HIO_c */
SECTION_DATA extern void* __vt__14daNpc_Sq_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daNpc_Sq_HIO_cFv,
};

/* 80AF5FEC-80AF6010 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__14daNpc_Sq_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_Sq_HIO_c::daNpc_Sq_HIO_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_sq/d_a_npc_sq/__ct__14daNpc_Sq_HIO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AF740C-80AF7410 000004 0004+00 1/5 0/0 0/0 .rodata          @3782 */
SECTION_RODATA static u8 const lit_3782[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AF740C, &lit_3782);

/* 80AF7410-80AF7414 000008 0004+00 1/1 0/0 0/0 .rodata          @3783 */
SECTION_RODATA static f32 const lit_3783 = -1.0f;
COMPILER_STRIP_GATE(0x80AF7410, &lit_3783);

/* 80AF74A4-80AF74A4 00009C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AF74A4 = "Sq";
#pragma pop

/* 80AF6010-80AF60B8 000110 00A8+00 2/2 0/0 0/0 .text            anm_init__FP12npc_sq_classifUcf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void anm_init(npc_sq_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_sq/d_a_npc_sq/anm_init__FP12npc_sq_classifUcf.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AF7414-80AF7418 00000C 0004+00 0/2 0/0 0/0 .rodata          @3810 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3810 = 100.0f;
COMPILER_STRIP_GATE(0x80AF7414, &lit_3810);
#pragma pop

/* 80AF7418-80AF741C 000010 0004+00 0/1 0/0 0/0 .rodata          @3811 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3811 = 600.0f;
COMPILER_STRIP_GATE(0x80AF7418, &lit_3811);
#pragma pop

/* 80AF741C-80AF7420 000014 0004+00 0/2 0/0 0/0 .rodata          @3812 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3812 = 10.0f;
COMPILER_STRIP_GATE(0x80AF741C, &lit_3812);
#pragma pop

/* 80AF7420-80AF7424 000018 0004+00 1/3 0/0 0/0 .rodata          @3813 */
SECTION_RODATA static f32 const lit_3813 = 1.0f;
COMPILER_STRIP_GATE(0x80AF7420, &lit_3813);

/* 80AF75C0-80AF75C4 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80AF75C0[4];

/* 80AF75C4-80AF75D0 00000C 000C+00 1/1 0/0 0/0 .bss             @3763 */
static u8 lit_3763[12];

/* 80AF75D0-80AF75DC 000018 000C+00 4/4 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[12];

/* 80AF60B8-80AF61B0 0001B8 00F8+00 1/0 0/0 0/0 .text            daNpc_Sq_Draw__FP12npc_sq_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_Sq_Draw(npc_sq_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_sq/d_a_npc_sq/daNpc_Sq_Draw__FP12npc_sq_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AF7424-80AF7428 00001C 0004+00 0/1 0/0 0/0 .rodata          @3861 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3861 = 3.0f;
COMPILER_STRIP_GATE(0x80AF7424, &lit_3861);
#pragma pop

/* 80AF7428-80AF742C 000020 0004+00 0/1 0/0 0/0 .rodata          @3862 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3862 = 15.0f;
COMPILER_STRIP_GATE(0x80AF7428, &lit_3862);
#pragma pop

/* 80AF742C-80AF7430 000024 0004+00 0/1 0/0 0/0 .rodata          @3863 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3863 = 210.0f;
COMPILER_STRIP_GATE(0x80AF742C, &lit_3863);
#pragma pop

/* 80AF7430-80AF7434 000028 0004+00 0/1 0/0 0/0 .rodata          @3864 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3864 = 800.0f;
COMPILER_STRIP_GATE(0x80AF7430, &lit_3864);
#pragma pop

/* 80AF7434-80AF7438 00002C 0004+00 0/1 0/0 0/0 .rodata          @3865 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3865 = -375.0f;
COMPILER_STRIP_GATE(0x80AF7434, &lit_3865);
#pragma pop

/* 80AF7438-80AF7440 000030 0008+00 0/1 0/0 0/0 .rodata          @3866 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3866[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF7438, &lit_3866);
#pragma pop

/* 80AF7440-80AF7448 000038 0008+00 0/1 0/0 0/0 .rodata          @3867 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3867[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF7440, &lit_3867);
#pragma pop

/* 80AF7448-80AF7450 000040 0008+00 0/1 0/0 0/0 .rodata          @3868 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3868[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF7448, &lit_3868);
#pragma pop

/* 80AF7450-80AF7454 000048 0004+00 0/1 0/0 0/0 .rodata          @3869 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3869 = 250.0f;
COMPILER_STRIP_GATE(0x80AF7450, &lit_3869);
#pragma pop

/* 80AF61B0-80AF63C0 0002B0 0210+00 1/1 0/0 0/0 .text            npc_sq_normal__FP12npc_sq_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void npc_sq_normal(npc_sq_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_sq/d_a_npc_sq/npc_sq_normal__FP12npc_sq_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AF7454-80AF7458 00004C 0004+00 0/1 0/0 0/0 .rodata          @3893 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3893 = -5.0f;
COMPILER_STRIP_GATE(0x80AF7454, &lit_3893);
#pragma pop

/* 80AF7458-80AF745C 000050 0004+00 0/1 0/0 0/0 .rodata          @3894 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3894 = -80.0f;
COMPILER_STRIP_GATE(0x80AF7458, &lit_3894);
#pragma pop

/* 80AF63C0-80AF6518 0004C0 0158+00 1/1 0/0 0/0 .text            action__FP12npc_sq_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void action(npc_sq_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_sq/d_a_npc_sq/action__FP12npc_sq_class.s"
}
#pragma pop

/* 80AF6518-80AF65FC 000618 00E4+00 1/1 0/0 0/0 .text            cam_3d_morf__FP12npc_sq_classf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void cam_3d_morf(npc_sq_class* param_0, f32 param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_sq/d_a_npc_sq/cam_3d_morf__FP12npc_sq_classf.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AF745C-80AF7460 000054 0004+00 0/1 0/0 0/0 .rodata          @4040 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4040 = 55.0f;
COMPILER_STRIP_GATE(0x80AF745C, &lit_4040);
#pragma pop

/* 80AF7460-80AF7464 000058 0004+00 0/1 0/0 0/0 .rodata          @4041 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4041 = -30.0f;
COMPILER_STRIP_GATE(0x80AF7460, &lit_4041);
#pragma pop

/* 80AF7464-80AF7468 00005C 0004+00 0/1 0/0 0/0 .rodata          @4042 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4042 = -150.0f;
COMPILER_STRIP_GATE(0x80AF7464, &lit_4042);
#pragma pop

/* 80AF7468-80AF746C 000060 0004+00 0/1 0/0 0/0 .rodata          @4043 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4043 = 63.0f;
COMPILER_STRIP_GATE(0x80AF7468, &lit_4043);
#pragma pop

/* 80AF65FC-80AF6B74 0006FC 0578+00 2/1 0/0 0/0 .text            demo_camera__FP12npc_sq_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void demo_camera(npc_sq_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_sq/d_a_npc_sq/demo_camera__FP12npc_sq_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AF746C-80AF7470 000064 0004+00 0/0 0/0 0/0 .rodata          @4044 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4044 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80AF746C, &lit_4044);
#pragma pop

/* 80AF7470-80AF7474 000068 0004+00 0/0 0/0 0/0 .rodata          @4045 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4045 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80AF7470, &lit_4045);
#pragma pop

/* 80AF7474-80AF7478 00006C 0004+00 0/0 0/0 0/0 .rodata          @4046 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4046 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80AF7474, &lit_4046);
#pragma pop

/* 80AF7478-80AF747C 000070 0004+00 0/0 0/0 0/0 .rodata          @4047 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4047 = 150.0f;
COMPILER_STRIP_GATE(0x80AF7478, &lit_4047);
#pragma pop

/* 80AF747C-80AF7480 000074 0004+00 0/1 0/0 0/0 .rodata          @4048 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4048 = 20.0f;
COMPILER_STRIP_GATE(0x80AF747C, &lit_4048);
#pragma pop

/* 80AF7480-80AF7484 000078 0004+00 0/0 0/0 0/0 .rodata          @4049 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4049 = 50.0f;
COMPILER_STRIP_GATE(0x80AF7480, &lit_4049);
#pragma pop

/* 80AF7484-80AF7488 00007C 0004+00 0/0 0/0 0/0 .rodata          @4050 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4050 = 35.0f;
COMPILER_STRIP_GATE(0x80AF7484, &lit_4050);
#pragma pop

/* 80AF7488-80AF7490 000080 0004+04 0/0 0/0 0/0 .rodata          @4051 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4051[1 + 1 /* padding */] = {
    13.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80AF7488, &lit_4051);
#pragma pop

/* 80AF7490-80AF7498 000088 0008+00 0/1 0/0 0/0 .rodata          @4097 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4097[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AF7490, &lit_4097);
#pragma pop

/* 80AF6B74-80AF6D54 000C74 01E0+00 2/1 0/0 0/0 .text            daNpc_Sq_Execute__FP12npc_sq_class
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_Sq_Execute(npc_sq_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_sq/d_a_npc_sq/daNpc_Sq_Execute__FP12npc_sq_class.s"
}
#pragma pop

/* 80AF6D54-80AF6D5C 000E54 0008+00 1/0 0/0 0/0 .text            daNpc_Sq_IsDelete__FP12npc_sq_class
 */
static bool daNpc_Sq_IsDelete(npc_sq_class* param_0) {
    return true;
}

/* 80AF6D5C-80AF6DB0 000E5C 0054+00 1/0 0/0 0/0 .text            daNpc_Sq_Delete__FP12npc_sq_class
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_Sq_Delete(npc_sq_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_sq/d_a_npc_sq/daNpc_Sq_Delete__FP12npc_sq_class.s"
}
#pragma pop

/* 80AF6DB0-80AF6F50 000EB0 01A0+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void useHeapInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_sq/d_a_npc_sq/useHeapInit__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80AF6F50-80AF6F98 001050 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DFrameCtrl::~J3DFrameCtrl() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_sq/d_a_npc_sq/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AF7498-80AF749C 000090 0004+00 0/1 0/0 0/0 .rodata          @4266 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4266 = 30.0f;
COMPILER_STRIP_GATE(0x80AF7498, &lit_4266);
#pragma pop

/* 80AF749C-80AF74A0 000094 0004+00 0/1 0/0 0/0 .rodata          @4267 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4267 = 40.0f;
COMPILER_STRIP_GATE(0x80AF749C, &lit_4267);
#pragma pop

/* 80AF74A0-80AF74A4 000098 0004+00 0/1 0/0 0/0 .rodata          @4268 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4268 = 0x407FEF9E;
COMPILER_STRIP_GATE(0x80AF74A0, &lit_4268);
#pragma pop

/* 80AF6F98-80AF7260 001098 02C8+00 1/0 0/0 0/0 .text            daNpc_Sq_Create__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_Sq_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_sq/d_a_npc_sq/daNpc_Sq_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80AF7260-80AF72A8 001360 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_sq/d_a_npc_sq/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 80AF72A8-80AF72F0 0013A8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_sq/d_a_npc_sq/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80AF72F0-80AF7360 0013F0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dBgS_ObjAcch::~dBgS_ObjAcch() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_sq/d_a_npc_sq/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80AF7360-80AF73A8 001460 0048+00 2/1 0/0 0/0 .text            __dt__14daNpc_Sq_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_Sq_HIO_c::~daNpc_Sq_HIO_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_sq/d_a_npc_sq/__dt__14daNpc_Sq_HIO_cFv.s"
}
#pragma pop

/* 80AF73A8-80AF73E4 0014A8 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_sq_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_npc_sq_cpp() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_sq/d_a_npc_sq/__sinit_d_a_npc_sq_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80AF73A8, __sinit_d_a_npc_sq_cpp);
#pragma pop

/* 80AF73E4-80AF73EC 0014E4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80AF73E4() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_sq/d_a_npc_sq/func_80AF73E4.s"
}
#pragma pop

/* 80AF73EC-80AF73F4 0014EC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80AF73EC() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_sq/d_a_npc_sq/func_80AF73EC.s"
}
#pragma pop

/* 80AF74A4-80AF74A4 00009C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

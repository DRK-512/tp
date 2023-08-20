//
// Generated By: dol2asm
// Translation Unit: d_a_obj_catdoor
//

#include "rel/d/a/obj/d_a_obj_catdoor/d_a_obj_catdoor.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/bg/d_bg_w.h"
#include "d/com/d_com_inf_game.h"
#include "dol2asm.h"
#include "f_op/f_op_actor.h"
#include "f_op/f_op_actor_mng.h"
#include "global.h"

extern const char* l_arcName;
static int createSolidHeap(fopAc_ac_c* i_this);

struct daObjCatDoor_Door_c {
    /* 0x00 */ J3DModel* pmodel;
    /* 0x04 */ dBgW bgw;
    /* 0xe0 */ Mtx mtx;
    /* 0xf4 */ s16 angle;
};

class daObjCatDoor_c : public fopAc_ac_c {
public:
    daObjCatDoor_c() {}
    ~daObjCatDoor_c() {
        if (mDoor1.bgw.ChkUsed()) {
            dComIfG_Bgsp().Release(&mDoor1.bgw);
        }
        if (mDoor2.bgw.ChkUsed()) {
            dComIfG_Bgsp().Release(&mDoor2.bgw);
        }
        dComIfG_resDelete(&mPhaseReq, l_arcName);
    }

    /* 80BC42B8 */ const s16* attr() const;
    /* 80BC43F4 */ void initBaseMtx();
    /* 80BC4454 */ void setBaseMtx();
    /* 80BC4560 */ void calcOpen();

    u8 getSwitchNo() { return fopAcM_GetParam(this); }

    int createHeap() {
        J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);

        ASSERT(modelData != NULL);
        mDoor1.pmodel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        mDoor2.pmodel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        if (mDoor1.pmodel == NULL || mDoor2.pmodel == NULL) {
            return 0;
        }

        cBgD_t* cbgd = (cBgD_t*)dComIfG_getObjectRes(l_arcName, 7);
        if (mDoor1.bgw.Set(cbgd, 1, &mDoor1.mtx)) {
            return 0;
        }

        cBgD_t* cbgd2 = (cBgD_t*)dComIfG_getObjectRes(l_arcName, 7);
        if (mDoor2.bgw.Set(cbgd2, 1, &mDoor2.mtx)) {
            return 0;
        }

        return 1;
    }

    int draw() {
        g_env_light.settingTevStruct(0x10, &current.pos, &mTevStr);

        fopAc_ac_c* p1 = static_cast<fopAc_ac_c*>(this);
        g_env_light.setLightTevColorType_MAJI(mDoor1.pmodel, &p1->mTevStr);
        g_env_light.setLightTevColorType_MAJI(mDoor2.pmodel, &p1->mTevStr);

        dComIfGd_setListBG();
        mDoExt_modelUpdateDL(mDoor1.pmodel);
        mDoExt_modelUpdateDL(mDoor2.pmodel);
        dComIfGd_setList();
        return 1;
    }

    int execute() {
        if (dComIfGs_isSwitch(fopAcM_GetParam(this) & 0xFF, fopAcM_GetHomeRoomNo(this)) ||
        mRotSpeed == 0) {
            return 1;
        }
        calcOpen();
        setBaseMtx();
        return 1;
    }

    int create() {
        fopAcM_SetupActor(this, daObjCatDoor_c);

        int phase_state = dComIfG_resLoad(&mPhaseReq, l_arcName);
        if (phase_state == cPhs_COMPLEATE_e) {
            if (!fopAcM_entrySolidHeap(this, createSolidHeap, 0x2520)) {
                phase_state = cPhs_ERROR_e;
            } else {
                create_init();
            }
        }
        return phase_state;
    }

    void create_init() {
        ASSERT(getSwitchNo() != 0xff);
        fopAcM_setCullSizeBox(this, -200.0f, 0.0f, -20.0f, 200.0f, 260.0f, 100.0f);
        if (i_fopAcM_isSwitch(this, getSwitchNo())) {
            mDoor1.angle = 0x8800;
            mDoor2.angle = 0x7800;
        } else {
            mDoor1.bgw.SetCrrFunc(NULL);
            mDoor1.bgw.SetRoomId(fopAcM_GetRoomNo(this));
            dComIfG_Bgsp().Regist(&mDoor1.bgw, this);
            mDoor2.bgw.SetCrrFunc(NULL);
            mDoor2.bgw.SetRoomId(fopAcM_GetRoomNo(this));
            dComIfG_Bgsp().Regist(&mDoor2.bgw, this);
        }
        initBaseMtx();
    }

private:
    /* 0x568 */ request_of_phase_process_class mPhaseReq;
    /* 0x570 */ daObjCatDoor_Door_c mDoor1;
    /* 0x660 */ daObjCatDoor_Door_c mDoor2;
    /* 0x760 */ Mtx mMtx;
    /* 0x790 */ s16 mRotSpeed;

public:
    static u32 const M_attr;
};

//
// Forward References:
//

extern "C" static void createSolidHeap__FP10fopAc_ac_c();
extern "C" void initBaseMtx__14daObjCatDoor_cFv();
extern "C" static void daObjCatDoor_Draw__FP14daObjCatDoor_c();
extern "C" static int daObjCatDoor_Execute__FP14daObjCatDoor_c();
extern "C" static bool daObjCatDoor_IsDelete__FP14daObjCatDoor_c();
extern "C" static void daObjCatDoor_Delete__FP14daObjCatDoor_c();
extern "C" static void daObjCatDoor_Create__FP10fopAc_ac_c();
extern "C" u32 const M_attr__14daObjCatDoor_c;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void push__14mDoMtx_stack_cFv();
extern "C" void pop__14mDoMtx_stack_cFv();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void __dt__4cBgWFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void cLib_chaseS__FPsss();
extern "C" void _savegpr_25();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__4dBgW[65];
extern "C" u8 now__14mDoMtx_stack_c[48];

//
// Declarations:
//

/* ############################################################################################## */
/* 80BC49B4-80BC49B8 000000 0004+00 3/3 0/0 0/0 .rodata          M_attr__14daObjCatDoor_c */
SECTION_RODATA u32 const daObjCatDoor_c::M_attr = 0x001E0578;
COMPILER_STRIP_GATE(0x80BC49B4, &daObjCatDoor_c::M_attr);

/* 80BC42B8-80BC42C4 000078 000C+00 1/1 0/0 1/1 .text            attr__14daObjCatDoor_cCFv */
const s16* daObjCatDoor_c::attr() const {
    return (const s16*)&daObjCatDoor_c::M_attr;
}

/* 80BC49E0-80BC49E4 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static const char* l_arcName = "CatDoor";

/* 80BC42C4-80BC43F4 000084 0130+00 1/1 0/0 0/0 .text            createSolidHeap__FP10fopAc_ac_c */
static int createSolidHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjCatDoor_c*>(i_this)->createHeap();
}

/* 80BC43F4-80BC4454 0001B4 0060+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjCatDoor_cFv */
void daObjCatDoor_c::initBaseMtx() {
    mCullMtx = mMtx;
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_YrotM(mDoMtx_stack_c::get(), shape_angle.y);
    PSMTXCopy(mDoMtx_stack_c::get(), mMtx);
    setBaseMtx();
}

/* 80BC4454-80BC4560 000214 010C+00 2/2 0/0 1/1 .text            setBaseMtx__14daObjCatDoor_cFv */
void daObjCatDoor_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_YrotM(mDoMtx_stack_c::get(), shape_angle.y);
    for (int i = 0; i < 2; i++) {
        daObjCatDoor_Door_c* door = i == 0 ? &mDoor1 : &mDoor2;
        f32 xOff = i == 0 ? -97.0f : 97.0f;
        s16 rot = i == 0 ? door->angle : s16(door->angle + 0x8000);
        mDoMtx_stack_c::push();
        mDoMtx_stack_c::transM(xOff, 0.0, 0.0);
        mDoMtx_YrotM(mDoMtx_stack_c::get(), (s16)rot);
        mDoMtx_copy(mDoMtx_stack_c::get(), door->pmodel->mBaseTransformMtx);
        mDoMtx_copy(mDoMtx_stack_c::get(), door->mtx);
        door->bgw.Move();
        mDoMtx_stack_c::pop();
    }
}

/* 80BC4560-80BC4628 000320 00C8+00 1/1 0/0 0/0 .text            calcOpen__14daObjCatDoor_cFv */
void daObjCatDoor_c::calcOpen() {
    s16 prev = mRotSpeed;
    int res = cLib_chaseS(&mRotSpeed, 0, *attr());
    for (int i = 0; i < 2; i++) {
        daObjCatDoor_Door_c* door = i == 0 ? &mDoor1 : &mDoor2;
        if (i == 0) {
            door->angle -= mRotSpeed;
        } else {
            door->angle += mRotSpeed;
        }
    }

    if (prev != 0 && res != 0) {
        i_fopAcM_onSwitch(this, getSwitchNo());
    }
}

/* 80BC4628-80BC46EC 0003E8 00C4+00 1/0 0/0 0/0 .text daObjCatDoor_Draw__FP14daObjCatDoor_c */
static int daObjCatDoor_Draw(daObjCatDoor_c* i_this) {
    return static_cast<daObjCatDoor_c*>(i_this)->draw();
}

/* 80BC46EC-80BC4760 0004AC 0074+00 1/0 0/0 0/0 .text daObjCatDoor_Execute__FP14daObjCatDoor_c */
static int daObjCatDoor_Execute(daObjCatDoor_c* i_this) {
    return static_cast<daObjCatDoor_c*>(i_this)->execute();
}

/* 80BC4760-80BC4768 000520 0008+00 1/0 0/0 0/0 .text daObjCatDoor_IsDelete__FP14daObjCatDoor_c */
static bool daObjCatDoor_IsDelete(daObjCatDoor_c* i_this) {
    return true;
}

/* 80BC4768-80BC4848 000528 00E0+00 1/0 0/0 0/0 .text daObjCatDoor_Delete__FP14daObjCatDoor_c */
#ifdef NONMATCHING // ~dBgW is not inlined
static int daObjCatDoor_Delete(daObjCatDoor_c* i_this) {
    fopAcM_GetID(i_this);
    i_this->~daObjCatDoor_c();
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjCatDoor_Delete(daObjCatDoor_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_catdoor/d_a_obj_catdoor/daObjCatDoor_Delete__FP14daObjCatDoor_c.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80BC49C4-80BC49C8 000010 0004+00 0/1 0/0 0/0 .rodata          @3860 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3860 = -200.0f;
COMPILER_STRIP_GATE(0x80BC49C4, &lit_3860);
#pragma pop

/* 80BC49C8-80BC49CC 000014 0004+00 0/1 0/0 0/0 .rodata          @3861 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3861 = -20.0f;
COMPILER_STRIP_GATE(0x80BC49C8, &lit_3861);
#pragma pop

/* 80BC49CC-80BC49D0 000018 0004+00 0/1 0/0 0/0 .rodata          @3862 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3862 = 200.0f;
COMPILER_STRIP_GATE(0x80BC49CC, &lit_3862);
#pragma pop

/* 80BC49D0-80BC49D4 00001C 0004+00 0/1 0/0 0/0 .rodata          @3863 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3863 = 260.0f;
COMPILER_STRIP_GATE(0x80BC49D0, &lit_3863);
#pragma pop

/* 80BC49D4-80BC49D8 000020 0004+00 0/1 0/0 0/0 .rodata          @3864 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3864 = 100.0f;
COMPILER_STRIP_GATE(0x80BC49D4, &lit_3864);
#pragma pop

/* 80BC4848-80BC49AC 000608 0164+00 1/0 0/0 0/0 .text            daObjCatDoor_Create__FP10fopAc_ac_c
 */
#ifdef NONMATCHING // literals + register init order
static int daObjCatDoor_Create(fopAc_ac_c* i_this) {
    fopAcM_GetID(i_this);
    return static_cast<daObjCatDoor_c*>(i_this)->create();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjCatDoor_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_catdoor/d_a_obj_catdoor/daObjCatDoor_Create__FP10fopAc_ac_c.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80BC49E4-80BC4A04 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjCatDoor_Method */
SECTION_DATA static void* l_daObjCatDoor_Method[8] = {
    (void*)daObjCatDoor_Create__FP10fopAc_ac_c,
    (void*)daObjCatDoor_Delete__FP14daObjCatDoor_c,
    (void*)daObjCatDoor_Execute__FP14daObjCatDoor_c,
    (void*)daObjCatDoor_IsDelete__FP14daObjCatDoor_c,
    (void*)daObjCatDoor_Draw__FP14daObjCatDoor_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80BC4A04-80BC4A34 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_CatDoor */
SECTION_DATA extern void* g_profile_Obj_CatDoor[12] = {
    (void*)0xFFFFFFFD, (void*)0x0003FFFD,
    (void*)0x00B90000, (void*)&g_fpcLf_Method,
    (void*)0x00000794, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x02AC0000, (void*)&l_daObjCatDoor_Method,
    (void*)0x00044100, (void*)0x000E0000,
};

/* 80BC49D8-80BC49D8 000024 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

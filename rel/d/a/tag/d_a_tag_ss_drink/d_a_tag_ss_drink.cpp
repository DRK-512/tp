//
// Generated By: dol2asm
// Translation Unit: d_a_tag_ss_drink
//

#include "rel/d/a/tag/d_a_tag_ss_drink/d_a_tag_ss_drink.h"
#include "dol2asm.h"

//
// Types:
//

struct fopAc_ac_c {};

struct daTag_SSDrink_c {
    /* 80D62DB8 */ void create();
    /* 80D62E5C */ bool Delete();
    /* 80D62E64 */ void Execute();
    /* 80D62ED0 */ bool Draw();
    /* 80D62ED8 */ void getTypeFromParam();
    /* 80D62F80 */ void getSwitchFromParam();
    /* 80D62F8C */ void getFlowNodeNum();
    /* 80D62FC8 */ void getValue();
    /* 80D62FD4 */ void restart();
    /* 80D63044 */ void initialize();
    /* 80D630BC */ void checkProcess(int (daTag_SSDrink_c::*)(void*));
    /* 80D630E8 */ void setProcess(int (daTag_SSDrink_c::*)(void*));
    /* 80D631D4 */ void setAttnPos();
    /* 80D63208 */ void chkEvent();
    /* 80D63384 */ void orderEvent();
    /* 80D63490 */ void wait(void*);
    /* 80D635C8 */ void talk(void*);
    /* 80D63724 */ ~daTag_SSDrink_c();
};

struct daObj_SSBase_c {
    /* 8015E3F8 */ daObj_SSBase_c();
    /* 8015E450 */ ~daObj_SSBase_c();
    /* 8015E4B0 */ void getProcessID();
    /* 80D63794 */ void setSoldOut();
};

struct dSv_info_c {
    /* 80035360 */ void isSwitch(int, int) const;
};

struct dMsgFlow_c {
    /* 80249F00 */ dMsgFlow_c();
    /* 80249F48 */ ~dMsgFlow_c();
    /* 80249F90 */ void init(fopAc_ac_c*, int, int, fopAc_ac_c**);
    /* 8024A2D8 */ void doFlow(fopAc_ac_c*, fopAc_ac_c**, int);
};

struct dEvt_control_c {
    /* 80042468 */ void reset();
};

struct dEvent_manager_c {
    /* 800487F0 */ void ChkPresentEnd();
};

struct dAttCatch_c {
    /* 80073A08 */ void request(fopAc_ac_c*, u8, f32, f32, f32, s16, int);
};

struct Vec {};

struct cXyz {
    /* 80266B34 */ void operator-(Vec const&) const;
};

//
// Forward References:
//

extern "C" void create__15daTag_SSDrink_cFv();
extern "C" bool Delete__15daTag_SSDrink_cFv();
extern "C" void Execute__15daTag_SSDrink_cFv();
extern "C" bool Draw__15daTag_SSDrink_cFv();
extern "C" void getTypeFromParam__15daTag_SSDrink_cFv();
extern "C" void getSwitchFromParam__15daTag_SSDrink_cFv();
extern "C" void getFlowNodeNum__15daTag_SSDrink_cFv();
extern "C" void getValue__15daTag_SSDrink_cFv();
extern "C" void restart__15daTag_SSDrink_cFv();
extern "C" void initialize__15daTag_SSDrink_cFv();
extern "C" void checkProcess__15daTag_SSDrink_cFM15daTag_SSDrink_cFPCvPvPv_i();
extern "C" void setProcess__15daTag_SSDrink_cFM15daTag_SSDrink_cFPCvPvPv_i();
extern "C" void setAttnPos__15daTag_SSDrink_cFv();
extern "C" void chkEvent__15daTag_SSDrink_cFv();
extern "C" void orderEvent__15daTag_SSDrink_cFv();
extern "C" void wait__15daTag_SSDrink_cFPv();
extern "C" void talk__15daTag_SSDrink_cFPv();
extern "C" static void daTag_SSDrink_Create__FPv();
extern "C" static void daTag_SSDrink_Delete__FPv();
extern "C" static void daTag_SSDrink_Execute__FPv();
extern "C" static void daTag_SSDrink_Draw__FPv();
extern "C" static bool daTag_SSDrink_IsDelete__FPv();
extern "C" void __dt__15daTag_SSDrink_cFv();
extern "C" void setSoldOut__14daObj_SSBase_cFv();

//
// External References:
//

extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void request__11dAttCatch_cFP10fopAc_ac_cUcfffsi();
extern "C" void __ct__14daObj_SSBase_cFv();
extern "C" void __dt__14daObj_SSBase_cFv();
extern "C" void getProcessID__14daObj_SSBase_cFv();
extern "C" void dMsgObject_addTotalPrice__Fs();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __dl__FPv();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" extern void* g_fopAc_Method[8];
extern "C" extern void* g_fpcLf_Method[5 + 1 /* padding */];
extern "C" extern u8 g_dComIfG_gameInfo[122384];

//
// Declarations:
//

/* ############################################################################################## */
/* 80D637BC-80D637D8 -00001 001C+00 1/1 0/0 0/0 .data            @3806 */
SECTION_DATA static void* lit_3806[7] = {
    (void*)(((char*)getTypeFromParam__15daTag_SSDrink_cFv) + 0x28),
    (void*)(((char*)getTypeFromParam__15daTag_SSDrink_cFv) + 0x38),
    (void*)(((char*)getTypeFromParam__15daTag_SSDrink_cFv) + 0x48),
    (void*)(((char*)getTypeFromParam__15daTag_SSDrink_cFv) + 0x58),
    (void*)(((char*)getTypeFromParam__15daTag_SSDrink_cFv) + 0x68),
    (void*)(((char*)getTypeFromParam__15daTag_SSDrink_cFv) + 0x78),
    (void*)(((char*)getTypeFromParam__15daTag_SSDrink_cFv) + 0x88),
};

/* 80D637D8-80D637E4 -00001 000C+00 1/1 0/0 0/0 .data            @3829 */
SECTION_DATA static void* lit_3829[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daTag_SSDrink_cFPv,
};

/* 80D637E4-80D637F0 -00001 000C+00 1/1 0/0 0/0 .data            @3881 */
SECTION_DATA static void* lit_3881[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__15daTag_SSDrink_cFPv,
};

/* 80D637F0-80D637FC -00001 000C+00 1/1 0/0 0/0 .data            @3889 */
SECTION_DATA static void* lit_3889[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__15daTag_SSDrink_cFPv,
};

/* 80D637FC-80D63808 -00001 000C+00 1/1 0/0 0/0 .data            @4003 */
SECTION_DATA static void* lit_4003[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daTag_SSDrink_cFPv,
};

/* 80D63808-80D63828 -00001 0020+00 1/0 0/0 0/0 .data            daTag_SSDrink_MethodTable */
SECTION_DATA static void* daTag_SSDrink_MethodTable[8] = {
    (void*)daTag_SSDrink_Create__FPv,
    (void*)daTag_SSDrink_Delete__FPv,
    (void*)daTag_SSDrink_Execute__FPv,
    (void*)daTag_SSDrink_IsDelete__FPv,
    (void*)daTag_SSDrink_Draw__FPv,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80D63828-80D63858 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TAG_SSDRINK */
SECTION_DATA extern void* g_profile_TAG_SSDRINK[12] = {
    (void*)0xFFFFFFFD, (void*)0x0007FFFD,
    (void*)0x01220000, (void*)&g_fpcLf_Method,
    (void*)0x000005D8, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x00460000, (void*)&daTag_SSDrink_MethodTable,
    (void*)0x00064100, (void*)0x050E0000,
};

/* 80D63858-80D6386C 00009C 0014+00 2/2 0/0 0/0 .data            __vt__15daTag_SSDrink_c */
SECTION_DATA extern void* __vt__15daTag_SSDrink_c[5] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daTag_SSDrink_cFv,
    (void*)setSoldOut__14daObj_SSBase_cFv,
    (void*)getProcessID__14daObj_SSBase_cFv,
};

/* 80D62DB8-80D62E5C 000078 00A4+00 1/1 0/0 0/0 .text            create__15daTag_SSDrink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTag_SSDrink_c::create() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_ss_drink/d_a_tag_ss_drink/create__15daTag_SSDrink_cFv.s"
}
#pragma pop

/* 80D62E5C-80D62E64 00011C 0008+00 1/1 0/0 0/0 .text            Delete__15daTag_SSDrink_cFv */
bool daTag_SSDrink_c::Delete() {
    return true;
}

/* 80D62E64-80D62ED0 000124 006C+00 2/2 0/0 0/0 .text            Execute__15daTag_SSDrink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTag_SSDrink_c::Execute() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_ss_drink/d_a_tag_ss_drink/Execute__15daTag_SSDrink_cFv.s"
}
#pragma pop

/* 80D62ED0-80D62ED8 000190 0008+00 1/1 0/0 0/0 .text            Draw__15daTag_SSDrink_cFv */
bool daTag_SSDrink_c::Draw() {
    return true;
}

/* 80D62ED8-80D62F80 000198 00A8+00 2/1 0/0 0/0 .text getTypeFromParam__15daTag_SSDrink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTag_SSDrink_c::getTypeFromParam() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_ss_drink/d_a_tag_ss_drink/getTypeFromParam__15daTag_SSDrink_cFv.s"
}
#pragma pop

/* 80D62F80-80D62F8C 000240 000C+00 2/2 0/0 0/0 .text getSwitchFromParam__15daTag_SSDrink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTag_SSDrink_c::getSwitchFromParam() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_ss_drink/d_a_tag_ss_drink/getSwitchFromParam__15daTag_SSDrink_cFv.s"
}
#pragma pop

/* 80D62F8C-80D62FC8 00024C 003C+00 3/3 0/0 0/0 .text            getFlowNodeNum__15daTag_SSDrink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTag_SSDrink_c::getFlowNodeNum() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_ss_drink/d_a_tag_ss_drink/getFlowNodeNum__15daTag_SSDrink_cFv.s"
}
#pragma pop

/* 80D62FC8-80D62FD4 000288 000C+00 1/1 0/0 0/0 .text            getValue__15daTag_SSDrink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTag_SSDrink_c::getValue() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_ss_drink/d_a_tag_ss_drink/getValue__15daTag_SSDrink_cFv.s"
}
#pragma pop

/* 80D62FD4-80D63044 000294 0070+00 1/1 0/0 0/0 .text            restart__15daTag_SSDrink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTag_SSDrink_c::restart() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_ss_drink/d_a_tag_ss_drink/restart__15daTag_SSDrink_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D637A0-80D637A4 000000 0004+00 2/2 0/0 0/0 .rodata          @3843 */
SECTION_RODATA static f32 const lit_3843 = -30.0f;
COMPILER_STRIP_GATE(0x80D637A0, &lit_3843);

/* 80D637A4-80D637A8 000004 0004+00 0/1 0/0 0/0 .rodata          @3844 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3844 = -15.0f;
COMPILER_STRIP_GATE(0x80D637A4, &lit_3844);
#pragma pop

/* 80D637A8-80D637AC 000008 0004+00 0/1 0/0 0/0 .rodata          @3845 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3845 = 30.0f;
COMPILER_STRIP_GATE(0x80D637A8, &lit_3845);
#pragma pop

/* 80D637AC-80D637B0 00000C 0004+00 0/1 0/0 0/0 .rodata          @3846 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3846 = 45.0f;
COMPILER_STRIP_GATE(0x80D637AC, &lit_3846);
#pragma pop

/* 80D63044-80D630BC 000304 0078+00 1/1 0/0 0/0 .text            initialize__15daTag_SSDrink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTag_SSDrink_c::initialize() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_ss_drink/d_a_tag_ss_drink/initialize__15daTag_SSDrink_cFv.s"
}
#pragma pop

/* 80D630BC-80D630E8 00037C 002C+00 2/2 0/0 0/0 .text
 * checkProcess__15daTag_SSDrink_cFM15daTag_SSDrink_cFPCvPvPv_i */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTag_SSDrink_c::checkProcess(int (daTag_SSDrink_c::*param_0)(void*)) {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_ss_drink/d_a_tag_ss_drink/checkProcess__15daTag_SSDrink_cFM15daTag_SSDrink_cFPCvPvPv_i.s"
}
#pragma pop

/* 80D630E8-80D631D4 0003A8 00EC+00 3/3 0/0 0/0 .text
 * setProcess__15daTag_SSDrink_cFM15daTag_SSDrink_cFPCvPvPv_i   */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTag_SSDrink_c::setProcess(int (daTag_SSDrink_c::*param_0)(void*)) {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_ss_drink/d_a_tag_ss_drink/setProcess__15daTag_SSDrink_cFM15daTag_SSDrink_cFPCvPvPv_i.s"
}
#pragma pop

/* 80D631D4-80D63208 000494 0034+00 1/1 0/0 0/0 .text            setAttnPos__15daTag_SSDrink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTag_SSDrink_c::setAttnPos() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_ss_drink/d_a_tag_ss_drink/setAttnPos__15daTag_SSDrink_cFv.s"
}
#pragma pop

/* 80D63208-80D63384 0004C8 017C+00 1/1 0/0 0/0 .text            chkEvent__15daTag_SSDrink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTag_SSDrink_c::chkEvent() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_ss_drink/d_a_tag_ss_drink/chkEvent__15daTag_SSDrink_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D637B0-80D637B4 000010 0004+00 1/2 0/0 0/0 .rodata          @3947 */
SECTION_RODATA static f32 const lit_3947 = 160.0f;
COMPILER_STRIP_GATE(0x80D637B0, &lit_3947);

/* 80D63384-80D63490 000644 010C+00 1/1 0/0 0/0 .text            orderEvent__15daTag_SSDrink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTag_SSDrink_c::orderEvent() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_ss_drink/d_a_tag_ss_drink/orderEvent__15daTag_SSDrink_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D637B4-80D637B8 000014 0004+00 0/1 0/0 0/0 .rodata          @3991 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3991 = 200.0f;
COMPILER_STRIP_GATE(0x80D637B4, &lit_3991);
#pragma pop

/* 80D637B8-80D637BC 000018 0004+00 0/1 0/0 0/0 .rodata          @3992 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3992 = 100.0f;
COMPILER_STRIP_GATE(0x80D637B8, &lit_3992);
#pragma pop

/* 80D63490-80D635C8 000750 0138+00 2/0 0/0 0/0 .text            wait__15daTag_SSDrink_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTag_SSDrink_c::wait(void* param_0) {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_ss_drink/d_a_tag_ss_drink/wait__15daTag_SSDrink_cFPv.s"
}
#pragma pop

/* 80D635C8-80D6369C 000888 00D4+00 2/0 0/0 0/0 .text            talk__15daTag_SSDrink_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTag_SSDrink_c::talk(void* param_0) {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_ss_drink/d_a_tag_ss_drink/talk__15daTag_SSDrink_cFPv.s"
}
#pragma pop

/* 80D6369C-80D636BC 00095C 0020+00 1/0 0/0 0/0 .text            daTag_SSDrink_Create__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daTag_SSDrink_Create(void* param_0) {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_ss_drink/d_a_tag_ss_drink/daTag_SSDrink_Create__FPv.s"
}
#pragma pop

/* 80D636BC-80D636DC 00097C 0020+00 1/0 0/0 0/0 .text            daTag_SSDrink_Delete__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daTag_SSDrink_Delete(void* param_0) {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_ss_drink/d_a_tag_ss_drink/daTag_SSDrink_Delete__FPv.s"
}
#pragma pop

/* 80D636DC-80D636FC 00099C 0020+00 1/0 0/0 0/0 .text            daTag_SSDrink_Execute__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daTag_SSDrink_Execute(void* param_0) {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_ss_drink/d_a_tag_ss_drink/daTag_SSDrink_Execute__FPv.s"
}
#pragma pop

/* 80D636FC-80D6371C 0009BC 0020+00 1/0 0/0 0/0 .text            daTag_SSDrink_Draw__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daTag_SSDrink_Draw(void* param_0) {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_ss_drink/d_a_tag_ss_drink/daTag_SSDrink_Draw__FPv.s"
}
#pragma pop

/* 80D6371C-80D63724 0009DC 0008+00 1/0 0/0 0/0 .text            daTag_SSDrink_IsDelete__FPv */
static bool daTag_SSDrink_IsDelete(void* param_0) {
    return true;
}

/* 80D63724-80D63794 0009E4 0070+00 1/0 0/0 0/0 .text            __dt__15daTag_SSDrink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daTag_SSDrink_c::~daTag_SSDrink_c() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_ss_drink/d_a_tag_ss_drink/__dt__15daTag_SSDrink_cFv.s"
}
#pragma pop

/* 80D63794-80D63798 000A54 0004+00 1/0 0/0 0/0 .text            setSoldOut__14daObj_SSBase_cFv */
void daObj_SSBase_c::setSoldOut() {
    /* empty function */
}

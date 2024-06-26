/**
 * m_Do_mtx.cpp
 * Matrix Helper Functions
 */

#include "m_Do/m_Do_mtx.h"
#include "dol2asm.h"
#include "dolphin/types.h"
#include "JSystem/JMath/JMATrigonometric.h"
#include "JSystem/JMath/JMath.h"
#include "SSystem/SComponent/c_math.h"

//
// Forward References:
//

extern "C" static void mDoMtx_XYZrotS__FPA4_fsss();
extern "C" void mDoMtx_XYZrotM__FPA4_fsss();
extern "C" void mDoMtx_ZXYrotS__FPA4_fsss();
extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_XrotS__FPA4_fs();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotS__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void mDoMtx_lookAt__FPA4_fPC3VecPC3Vecs();
extern "C" void mDoMtx_lookAt__FPA4_fPC3VecPC3VecPC3Vecs();
extern "C" void mDoMtx_concatProjView__FPA4_CfPA4_CfPA4_f();
extern "C" void mDoMtx_inverseTranspose__FPA4_CfPA4_f();
extern "C" void mDoMtx_QuatConcat__FPC10QuaternionPC10QuaternionP10Quaternion();
extern "C" void mDoMtx_MtxToRot__FPA4_CfP5csXyz();
extern "C" void push__14mDoMtx_stack_cFv();
extern "C" void pop__14mDoMtx_stack_cFv();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void XYZrotS__14mDoMtx_stack_cFRC5csXyz();
extern "C" void XYZrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void ZXYrotS__14mDoMtx_stack_cFRC5csXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void quatM__14mDoMtx_stack_cFPC10Quaternion();
extern "C" void __sinit_m_Do_mtx_cpp();
extern "C" void __dt__18mDoMtx_quatStack_cFv();
extern "C" void __dt__14mDoMtx_stack_cFv();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 buffer__14mDoMtx_stack_c[768];
extern "C" void* next__14mDoMtx_stack_c;
extern "C" void* end__14mDoMtx_stack_c;

//
// External References:
//

extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void outprod__4cXyzCFRC3Vec();
extern "C" void normalize__4cXyzFv();
extern "C" void normalizeRS__4cXyzFv();
extern "C" void cM_atan2s__Fff();
extern "C" void __dl__FPv();
extern "C" void __register_global_object();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern f32 G_CM3D_F_ABS_MIN[1 + 1 /* padding */];

//
// Declarations:
//

/* 8000C0CC-8000C164 006A0C 0098+00 1/1 0/0 0/0 .text            mDoMtx_XYZrotS__FPA4_fsss */
void mDoMtx_XYZrotS(Mtx mtx, s16 x, s16 y, s16 z) {
    Mtx tmp;
    if (z != 0) {
        mDoMtx_ZrotS(mtx, z);
    } else {
        MTXIdentity(mtx);
    }

    if (y != 0) {
        mDoMtx_YrotS(tmp, y);
        MTXConcat(mtx, tmp, mtx);
    }

    if (x != 0) {
        mDoMtx_XrotS(tmp, x);
        MTXConcat(mtx, tmp, mtx);
    }
}

/* 8000C164-8000C208 006AA4 00A4+00 1/1 8/8 13/13 .text            mDoMtx_XYZrotM__FPA4_fsss */
void mDoMtx_XYZrotM(Mtx mtx, s16 x, s16 y, s16 z) {
    Mtx tmp;
    if (z != 0) {
        mDoMtx_ZrotS(tmp, z);
        MTXConcat(mtx, tmp, mtx);
    }

    if (y != 0) {
        mDoMtx_YrotS(tmp, y);
        MTXConcat(mtx, tmp, mtx);
    }

    if (x != 0) {
        mDoMtx_XrotS(tmp, x);
        MTXConcat(mtx, tmp, mtx);
    }
}

/* 8000C208-8000C2A0 006B48 0098+00 1/1 10/10 37/37 .text            mDoMtx_ZXYrotS__FPA4_fsss */
void mDoMtx_ZXYrotS(Mtx mtx, s16 x, s16 y, s16 z) {
    Mtx tmp;
    if (y != 0) {
        mDoMtx_YrotS(mtx, y);
    } else {
        MTXIdentity(mtx);
    }

    if (x != 0) {
        mDoMtx_XrotS(tmp, x);
        MTXConcat(mtx, tmp, mtx);
    }

    if (z != 0) {
        mDoMtx_ZrotS(tmp, z);
        MTXConcat(mtx, tmp, mtx);
    }
}

/* 8000C2A0-8000C344 006BE0 00A4+00 1/1 19/19 149/149 .text            mDoMtx_ZXYrotM__FPA4_fsss */
void mDoMtx_ZXYrotM(Mtx mtx, s16 x, s16 y, s16 z) {
    Mtx tmp;
    if (y != 0) {
        mDoMtx_YrotS(tmp, y);
        MTXConcat(mtx, tmp, mtx);
    }

    if (x != 0) {
        mDoMtx_XrotS(tmp, x);
        MTXConcat(mtx, tmp, mtx);
    }

    if (z != 0) {
        mDoMtx_ZrotS(tmp, z);
        MTXConcat(mtx, tmp, mtx);
    }
}

/* ############################################################################################## */
/* 80451B08-80451B0C 000108 0004+00 6/6 0/0 0/0 .sdata2          @3676 */
SECTION_SDATA2 static f32 lit_3676 = 1.0f;

/* 80451B0C-80451B10 00010C 0004+00 7/7 0/0 0/0 .sdata2          @3677 */
SECTION_SDATA2 static u8 lit_3677[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 8000C344-8000C39C 006C84 0058+00 5/5 7/7 38/38 .text            mDoMtx_XrotS__FPA4_fs */
#ifdef NONMATCHING
// matches with literals
void mDoMtx_XrotS(Mtx mtx, s16 x) {
    f32 l_cos = JMASCos(x);
    f32 l_sin = JMASSin(x);

    mtx[0][0] = 1.0f;
    mtx[0][1] = 0.0f;
    mtx[0][2] = 0.0f;
    mtx[0][3] = 0.0f;

    mtx[1][0] = 0.0f;
    mtx[1][1] = l_cos;
    mtx[1][2] = -l_sin;
    mtx[1][3] = 0.0f;

    mtx[2][0] = 0.0f;
    mtx[2][1] = l_sin;
    mtx[2][2] = l_cos;
    mtx[2][3] = 0.0f;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoMtx_XrotS(f32 (*param_0)[4], s16 param_1) {
    nofralloc
#include "asm/m_Do/m_Do_mtx/mDoMtx_XrotS__FPA4_fs.s"
}
#pragma pop
#endif

/* 8000C39C-8000C3DC 006CDC 0040+00 0/0 11/11 425/425 .text            mDoMtx_XrotM__FPA4_fs */
void mDoMtx_XrotM(Mtx mtx, s16 x) {
    Mtx tmp;
    mDoMtx_XrotS(tmp, x);
    MTXConcat(mtx, tmp, mtx);
}

/* 8000C3DC-8000C434 006D1C 0058+00 5/5 24/24 809/809 .text            mDoMtx_YrotS__FPA4_fs */
#ifdef NONMATCHING
// matches with literals
void mDoMtx_YrotS(Mtx mtx, s16 y) {
    f32 l_cos = JMASCos(y);
    f32 l_sin = JMASSin(y);

    mtx[0][0] = l_cos;
    mtx[0][1] = 0.0f;
    mtx[0][2] = l_sin;
    mtx[0][3] = 0.0f;

    mtx[1][0] = 0.0f;
    mtx[1][1] = 1.0;
    mtx[1][2] = 0.0;
    mtx[1][3] = 0.0f;
    
    mtx[2][0] = -l_sin;
    mtx[2][1] = 0.0f;
    mtx[2][2] = l_cos;
    mtx[2][3] = 0.0f;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoMtx_YrotS(f32 (*param_0)[4], s16 param_1) {
    nofralloc
#include "asm/m_Do/m_Do_mtx/mDoMtx_YrotS__FPA4_fs.s"
}
#pragma pop
#endif

/* 8000C434-8000C474 006D74 0040+00 0/0 44/44 775/775 .text            mDoMtx_YrotM__FPA4_fs */
void mDoMtx_YrotM(Mtx mtx, s16 y) {
    Mtx tmp;
    mDoMtx_YrotS(tmp, y);
    MTXConcat(mtx, tmp, mtx);
}

/* 8000C474-8000C4CC 006DB4 0058+00 7/7 1/1 6/6 .text            mDoMtx_ZrotS__FPA4_fs */
#ifdef NONMATCHING
// matches with literals
void mDoMtx_ZrotS(Mtx mtx, s16 z) {
    f32 l_cos = JMASCos(z);
    f32 l_sin = JMASSin(z);

    mtx[0][0] = l_cos;
    mtx[0][1] = -l_sin;
    mtx[0][2] = 0.0f;
    mtx[0][3] = 0.0f;

    mtx[1][0] = l_sin;
    mtx[1][1] = l_cos;
    mtx[1][2] = 0.0;
    mtx[1][3] = 0.0f;
    
    mtx[2][0] = 0.0f;
    mtx[2][1] = 0.0f;
    mtx[2][2] = 1.0f;
    mtx[2][3] = 0.0f;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoMtx_ZrotS(f32 (*param_0)[4], s16 param_1) {
    nofralloc
#include "asm/m_Do/m_Do_mtx/mDoMtx_ZrotS__FPA4_fs.s"
}
#pragma pop
#endif

/* 8000C4CC-8000C50C 006E0C 0040+00 0/0 9/9 302/302 .text            mDoMtx_ZrotM__FPA4_fs */
void mDoMtx_ZrotM(Mtx mtx, s16 z) {
    Mtx tmp;
    mDoMtx_ZrotS(tmp, z);
    MTXConcat(mtx, tmp, mtx);
}

/* 8000C50C-8000C710 006E4C 0204+00 0/0 3/3 0/0 .text            mDoMtx_lookAt__FPA4_fPC3VecPC3Vecs
 */
#ifdef NONMATCHING
// stack issues
void mDoMtx_lookAt(Mtx mtx, Vec const* param_1, Vec const* param_2, s16 param_3) {
    cXyz l_p1 = (cXyz)*param_1;
    cXyz l_pos2;
    cXyz l_pos1 = l_p1  - (cXyz)*param_2;

    l_pos2.set(0.0f, 1.0f, 0.0f);
    l_pos2 = l_pos2.outprod(l_pos1.normalize());

    if (!l_pos2.normalizeRS()) {
        l_pos2.set(-l_pos1.y,0.0f,0.0f);
        l_pos2 = l_pos2.outprod(l_pos1);
        l_pos2.normalize();
    }

    l_pos2 = l_pos2.outprod(l_pos1);
    l_pos2.normalize();

    mtx[0][0] = l_pos2.x;
    mtx[0][1] = l_pos2.y;
    mtx[0][2] = l_pos2.z;
    mtx[0][3] = -l_pos2.inprod(l_p1);

    mtx[1][0] = l_pos1.x;
    mtx[1][1] = l_pos1.y;
    mtx[1][2] = l_pos1.z;
    mtx[1][3] = -l_pos1.inprod(l_p1);

    mtx[2][0] = l_pos2.x;
    mtx[2][1] = l_pos2.y;
    mtx[2][2] = l_pos2.z;
    mtx[2][3] = -l_pos2.inprod(l_p1);

    Mtx tmp;
    mDoMtx_ZrotS(tmp, param_3);
    mDoMtx_concat(tmp, mtx, mtx);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoMtx_lookAt(f32 (*param_0)[4], Vec const* param_1, Vec const* param_2, s16 param_3) {
    nofralloc
#include "asm/m_Do/m_Do_mtx/mDoMtx_lookAt__FPA4_fPC3VecPC3Vecs.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80451B10-80451B18 000110 0004+04 1/1 0/0 0/0 .sdata2          @3840 */
SECTION_SDATA2 static f32 lit_3840[1 + 1 /* padding */] = {
    32.0f,
    /* padding */
    0.0f,
};

/* 8000C710-8000C8D0 007050 01C0+00 0/0 10/10 1/1 .text mDoMtx_lookAt__FPA4_fPC3VecPC3VecPC3Vecs
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoMtx_lookAt(f32 (*param_0)[4], Vec const* param_1, Vec const* param_2,
                       Vec const* param_3, s16 param_4) {
    nofralloc
#include "asm/m_Do/m_Do_mtx/mDoMtx_lookAt__FPA4_fPC3VecPC3VecPC3Vecs.s"
}
#pragma pop

/* 8000C8D0-8000C9B0 007210 00E0+00 0/0 2/2 0/0 .text mDoMtx_concatProjView__FPA4_CfPA4_CfPA4_f */
void mDoMtx_concatProjView(const Mtx a, const Mtx b,
                               Mtx c) {
    mDoMtx_concat(a,b,c);
    c[3][0] = a[3][0] * b[0][0] + a[3][1] * b[1][0] + a[3][2] * b[2][0];
    c[3][1] = a[3][0] * b[0][1] + a[3][1] * b[1][1] + a[3][2] * b[2][1];
    c[3][2] = a[3][0] * b[0][2] + a[3][1] * b[1][2] + a[3][2] * b[2][2];
    c[3][3] = a[3][0] * b[0][3] + a[3][1] * b[1][3] + a[3][2] * b[2][3] + a[3][3];
}

/* 8000C9B0-8000CB5C 0072F0 01AC+00 0/0 1/1 1/1 .text mDoMtx_inverseTranspose__FPA4_CfPA4_f */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoMtx_inverseTranspose(f32 const (*param_0)[4], f32 (*param_1)[4]) {
    nofralloc
#include "asm/m_Do/m_Do_mtx/mDoMtx_inverseTranspose__FPA4_CfPA4_f.s"
}
#pragma pop

/* 8000CB5C-8000CC00 00749C 00A4+00 0/0 2/2 2/2 .text
 * mDoMtx_QuatConcat__FPC10QuaternionPC10QuaternionP10Quaternion */
void mDoMtx_QuatConcat(Quaternion const* a, Quaternion const* b,
                           Quaternion* c) {
    c->w = (a->w * b->w) - (a->x * b->x) - (a->y * b->y) - (a->z * b->z);
    c->x = (a->w * b->x) + (a->x * b->w) + (a->y * b->z) - (a->z * b->y);
    c->y = (a->w * b->y) + (a->y * b->w) + (a->z * b->x) - (a->x * b->z);
    c->z = (a->w * b->z) + (a->z * b->w) + (a->x * b->y) - (a->y * b->x);
}

/* 8000CC00-8000CCC8 007540 00C8+00 0/0 11/11 26/26 .text            mDoMtx_MtxToRot__FPA4_CfP5csXyz
 */
#ifdef NONMATCHING
// something wrong with JMAFastSqrt?
void mDoMtx_MtxToRot(CMtxP param_0, csXyz* param_1) {
    f32 tmp2 = param_0[0][2] * param_0[0][2];
    f32 tmp3 = param_0[2][2] * param_0[2][2];
    f32 sqrt = JMAFastSqrt(tmp2 + tmp3);

    param_1->x = cM_atan2s(sqrt,-param_0[1][2]);

    if (param_1->x == 0x4000 || param_1->x == -0x4000) {
        param_1->z = 0;
        param_1->y = cM_atan2s(-param_0[2][0],param_0[0][0]);
    } else {
        param_1->y = cM_atan2s(param_0[0][2],param_0[2][2]);
        param_1->z = cM_atan2s(param_0[1][0],param_0[1][1]);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoMtx_MtxToRot(CMtxP param_0, csXyz* param_1) {
    nofralloc
#include "asm/m_Do/m_Do_mtx/mDoMtx_MtxToRot__FPA4_CfP5csXyz.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 803DD470-803DD4A0 00A190 0030+00 12/12 142/142 1820/1820 .bss             now__14mDoMtx_stack_c
 */
Mtx mDoMtx_stack_c::now;

/* 803DD4A0-803DD7A0 00A1C0 0300+00 2/2 0/0 0/0 .bss             buffer__14mDoMtx_stack_c */
Mtx mDoMtx_stack_c::buffer[16];

/* 803DD7A0-803DD7AC 00A4C0 000C+00 1/1 0/0 0/0 .bss             @4048 */
static u8 lit_4048[12];

/* 804505A8-804505AC -00001 0004+00 3/3 0/0 0/0 .sdata           next__14mDoMtx_stack_c */
SECTION_SDATA Mtx* mDoMtx_stack_c::next = (Mtx*)&mDoMtx_stack_c::buffer;

/* 804505AC-804505B0 -00001 0004+00 2/2 0/0 0/0 .sdata           end__14mDoMtx_stack_c */
SECTION_SDATA Mtx* mDoMtx_stack_c::end = (Mtx*)&lit_4048;

/* 8000CCC8-8000CD14 007608 004C+00 0/0 0/0 24/24 .text            push__14mDoMtx_stack_cFv */
bool mDoMtx_stack_c::push() {
    if (next >= end) {
        return false;
    }
    Mtx* old = next++;
    MTXCopy(now, *old);
    return true;
}

/* 8000CD14-8000CD64 007654 0050+00 0/0 0/0 24/24 .text            pop__14mDoMtx_stack_cFv */
bool mDoMtx_stack_c::pop() {
    if (next <= buffer) {
        return false;
    }
    next--;
    MTXCopy(*next, now);
    return true;
}

/* 8000CD64-8000CD9C 0076A4 0038+00 0/0 50/50 484/484 .text transS__14mDoMtx_stack_cFRC4cXyz */
void mDoMtx_stack_c::transS(cXyz const& param_0) {
    transS(param_0.x, param_0.y, param_0.z);
}

/* 8000CD9C-8000CDD4 0076DC 0038+00 1/1 29/29 285/285 .text            transM__14mDoMtx_stack_cFfff
 */
void mDoMtx_stack_c::transM(f32 x, f32 y, f32 z) {
    Mtx tmp;
    MTXTrans(tmp, x, y, z);
    MTXConcat(now, tmp, now);
}

/* 8000CDD4-8000CE00 007714 002C+00 0/0 3/3 40/40 .text            transM__14mDoMtx_stack_cFRC4cXyz
 */
void mDoMtx_stack_c::transM(cXyz const& param_0) {
    transM(param_0.x, param_0.y, param_0.z);
}

/* 8000CE00-8000CE38 007740 0038+00 0/0 0/0 2/2 .text            scaleS__14mDoMtx_stack_cFRC4cXyz */
void mDoMtx_stack_c::scaleS(cXyz const& param_0) {
    scaleS(param_0.x, param_0.y, param_0.z);
}

/* 8000CE38-8000CE70 007778 0038+00 1/1 13/13 219/219 .text            scaleM__14mDoMtx_stack_cFfff
 */
void mDoMtx_stack_c::scaleM(f32 x, f32 y, f32 z) {
    Mtx tmp;
    MTXScale(tmp, x, y, z);
    MTXConcat(now, tmp, now);
}

/* 8000CE70-8000CE9C 0077B0 002C+00 0/0 7/7 79/79 .text            scaleM__14mDoMtx_stack_cFRC4cXyz
 */
void mDoMtx_stack_c::scaleM(cXyz const& param_0) {
    scaleM(param_0.x, param_0.y, param_0.z);
}

/* 8000CE9C-8000CED4 0077DC 0038+00 0/0 3/3 0/0 .text            XYZrotS__14mDoMtx_stack_cFRC5csXyz
 */
void mDoMtx_stack_c::XYZrotS(csXyz const& param_0) {
    XYZrotS(param_0.x, param_0.y, param_0.z);
}

/* 8000CED4-8000CF0C 007814 0038+00 0/0 1/1 4/4 .text            XYZrotM__14mDoMtx_stack_cFRC5csXyz
 */
void mDoMtx_stack_c::XYZrotM(csXyz const& param_0) {
    XYZrotM(param_0.x, param_0.y, param_0.z);
}

/* 8000CF0C-8000CF44 00784C 0038+00 0/0 5/5 43/43 .text ZXYrotS__14mDoMtx_stack_cFRC5csXyz */
void mDoMtx_stack_c::ZXYrotS(csXyz const& param_0) {
    ZXYrotS(param_0.x, param_0.y, param_0.z);
}

/* 8000CF44-8000CF7C 007884 0038+00 0/0 24/24 250/250 .text ZXYrotM__14mDoMtx_stack_cFRC5csXyz */
void mDoMtx_stack_c::ZXYrotM(csXyz const& param_0) {
    ZXYrotM(param_0.x, param_0.y, param_0.z);
}

/* 8000CF7C-8000CFB8 0078BC 003C+00 0/0 1/1 6/6 .text quatM__14mDoMtx_stack_cFPC10Quaternion */
void mDoMtx_stack_c::quatM(Quaternion const* param_0) {
    Mtx tmp;
    MTXQuat(tmp, param_0);
    MTXConcat(now, tmp, now);
}

/* ############################################################################################## */
/* 803DD7AC-803DD7B8 00A4CC 000C+00 0/1 0/0 0/0 .bss             @4078 */
#pragma push
#pragma force_active on
static u8 lit_4078[12];
#pragma pop

/* 803DD7B8-803DD8D8 00A4D8 011C+04 0/1 0/0 0/0 .bss             mDoMtx_quatStack */
#pragma push
#pragma force_active on
static u8 mDoMtx_quatStack[284 + 4 /* padding */];
#pragma pop

/* 80450C18-80450C20 000118 0001+07 1/1 0/0 0/0 .sbss            mDoMtx_stack */
static u8 mDoMtx_stack[1 + 7 /* padding */];

/* 8000CFB8-8000D034 0078F8 007C+00 0/0 1/0 0/0 .text            __sinit_m_Do_mtx_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_m_Do_mtx_cpp() {
    nofralloc
#include "asm/m_Do/m_Do_mtx/__sinit_m_Do_mtx_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8000CFB8, __sinit_m_Do_mtx_cpp);
#pragma pop

/* 8000D034-8000D070 007974 003C+00 1/1 0/0 0/0 .text            __dt__18mDoMtx_quatStack_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm mDoMtx_quatStack_c::~mDoMtx_quatStack_c() {
    nofralloc
#include "asm/m_Do/m_Do_mtx/__dt__18mDoMtx_quatStack_cFv.s"
}
#pragma pop

/* 8000D070-8000D0AC 0079B0 003C+00 1/1 0/0 0/0 .text            __dt__14mDoMtx_stack_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm mDoMtx_stack_c::~mDoMtx_stack_c() {
    nofralloc
#include "asm/m_Do/m_Do_mtx/__dt__14mDoMtx_stack_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 803A2FD8-803A3020 0000F8 0030+18 0/0 23/23 4/4 .data            g_mDoMtx_identity */
SECTION_DATA extern Mtx g_mDoMtx_identity = {
    {1.0f, 0.0f, 0.0f, 0.0f},
    {0.0f, 1.0f, 0.0f, 0.0f},
    {0.0f, 0.0f, 1.0f, 0.0f},
};

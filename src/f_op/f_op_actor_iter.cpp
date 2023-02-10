/**
 * f_op_actor_iter.cpp
 * Actor Process Iterator
 */

#include "f_op/f_op_actor_iter.h"
#include "SSystem/SComponent/c_list_iter.h"
#include "SSystem/SComponent/c_tag_iter.h"
#include "f_op/f_op_actor_tag.h"

//
// Declarations:
//

/* 800197BC-800197F8 0140FC 003C+00 0/0 5/5 3/3 .text            fopAcIt_Executor__FPFPvPv_iPv */
int fopAcIt_Executor(fopAcIt_ExecutorFunc pExecFunc, void* pData) {
    struct {
        fopAcIt_ExecutorFunc func;
        void* data;
    } userData;
    userData.func = pExecFunc;
    userData.data = pData;

    return cLsIt_Method(&g_fopAcTg_Queue, (cNdIt_MethodFunc)cTgIt_MethodCall, &userData);
}

/* 800197F8-80019834 014138 003C+00 0/0 67/67 388/388 .text            fopAcIt_Judge__FPFPvPv_PvPv
 */
void* fopAcIt_Judge(fopAcIt_JudgeFunc pJudgeFunc, void* pData) {
    struct {
        fopAcIt_JudgeFunc func;
        void* data;
    } userData;
    userData.func = pJudgeFunc;
    userData.data = pData;

    return cLsIt_Judge(&g_fopAcTg_Queue, (cNdIt_JudgeFunc)cTgIt_JudgeFilter, &userData);
}

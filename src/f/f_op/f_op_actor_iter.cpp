/* f_op_actor_iter.cpp autogenerated by split.py v0.4 at 2021-01-26 14:07:38.773979 */

#include "f/f_op/f_op_actor_iter.h"
#include "SComponent/c_list_iter.h"
#include "SComponent/c_tag_iter.h"
#include "f/f_op/f_op_actor_tag.h"

// fopAcIt_Executor__FPFPvPv_iPv
int fopAcIt_Executor(fopAcIt_ExecutorFunc pExecFunc, void* pData) {
    struct {
        fopAcIt_ExecutorFunc func;
        void* data;
    } userData;
    userData.func = pExecFunc;
    userData.data = pData;
    return cLsIt_Method(&lbl_803A35E0, (cNdIt_MethodFunc)cTgIt_MethodCall, &userData);
}

// fopAcIt_Judge__FPFPvPv_PvPv
void* fopAcIt_Judge(fopAcIt_JudgeFunc pJudgeFunc, void* pData) {
    struct {
        fopAcIt_JudgeFunc func;
        void* data;
    } userData;
    userData.func = pJudgeFunc;
    userData.data = pData;
    return cLsIt_Judge(&lbl_803A35E0, (cNdIt_JudgeFunc)cTgIt_JudgeFilter, &userData);
}

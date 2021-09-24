//
// Generated By: dol2asm
// Translation Unit: JKRHeap
//

#include "JSystem/JKernel/JKRHeap.h"
#include "JSystem/JUtility/JUTAssert.h"
#include "JSystem/JUtility/JUTException.h"
#include "dol2asm.h"
#include "global.h"

//
// Forward References:
//

extern "C" void __ct__7JKRHeapFPvUlP7JKRHeapb();
extern "C" void __dt__7JKRHeapFv();
extern "C" void initArena__7JKRHeapFPPcPUli();
extern "C" void becomeSystemHeap__7JKRHeapFv();
extern "C" void becomeCurrentHeap__7JKRHeapFv();
extern "C" void destroy__7JKRHeapFv();
extern "C" void alloc__7JKRHeapFUliP7JKRHeap();
extern "C" void alloc__7JKRHeapFUli();
extern "C" void free__7JKRHeapFPvP7JKRHeap();
extern "C" void free__7JKRHeapFPv();
extern "C" void callAllDisposer__7JKRHeapFv();
extern "C" void freeAll__7JKRHeapFv();
extern "C" void freeTail__7JKRHeapFv();
extern "C" void resize__7JKRHeapFPvUlP7JKRHeap();
extern "C" void resize__7JKRHeapFPvUl();
extern "C" void getSize__7JKRHeapFPvP7JKRHeap();
extern "C" void getSize__7JKRHeapFPv();
extern "C" void getFreeSize__7JKRHeapFv();
extern "C" void getMaxFreeBlock__7JKRHeapFv();
extern "C" void getTotalFreeSize__7JKRHeapFv();
extern "C" void changeGroupID__7JKRHeapFUc();
extern "C" void getMaxAllocatableSize__7JKRHeapFi();
extern "C" void findFromRoot__7JKRHeapFPv();
extern "C" void find__7JKRHeapCFPv();
extern "C" void findAllHeap__7JKRHeapCFPv();
extern "C" void dispose_subroutine__7JKRHeapFUlUl();
extern "C" void dispose__7JKRHeapFPvUl();
extern "C" void dispose__7JKRHeapFPvPv();
extern "C" void dispose__7JKRHeapFv();
extern "C" void copyMemory__7JKRHeapFPvPvUl();
extern "C" void JKRDefaultMemoryErrorRoutine__FPvUli();
extern "C" void setErrorFlag__7JKRHeapFb();
extern "C" void setErrorHandler__7JKRHeapFPFPvUli_v();
extern "C" void isSubHeap__7JKRHeapCFP7JKRHeap();
extern "C" void* __nw__FUl();
extern "C" void* __nw__FUli();
extern "C" void* __nw__FUlP7JKRHeapi();
extern "C" void* __nwa__FUl();
extern "C" void* __nwa__FUli();
extern "C" void* __nwa__FUlP7JKRHeapi();
extern "C" void __dl__FPv();
extern "C" void __dla__FPv();
extern "C" void state_register__7JKRHeapCFPQ27JKRHeap6TStateUl();
extern "C" void state_compare__7JKRHeapCFRCQ27JKRHeap6TStateRCQ27JKRHeap6TState();
extern "C" void state_dump__7JKRHeapCFRCQ27JKRHeap6TState();
extern "C" bool do_changeGroupID__7JKRHeapFUc();
extern "C" bool do_getCurrentGroupId__7JKRHeapFv();
extern "C" extern char const* const JKRHeap__stringBase0;
extern "C" u8 sSystemHeap__7JKRHeap[4];
extern "C" u8 sCurrentHeap__7JKRHeap[4];
extern "C" u8 sRootHeap__7JKRHeap[4];
extern "C" u8 mErrorHandler__7JKRHeap[4];
extern "C" u8 mCodeStart__7JKRHeap[4];
extern "C" u8 mCodeEnd__7JKRHeap[4];
extern "C" u8 mUserRamStart__7JKRHeap[4];
extern "C" u8 mUserRamEnd__7JKRHeap[4];
extern "C" u8 mMemorySize__7JKRHeap[4];

//
// External References:
//

extern "C" bool dump_sort__7JKRHeapFv();
extern "C" void __ct__11JKRDisposerFv();
extern "C" void __dt__11JKRDisposerFv();
extern "C" void __ct__10JSUPtrLinkFPv();
extern "C" void __dt__10JSUPtrLinkFv();
extern "C" void __dt__10JSUPtrListFv();
extern "C" void initiate__10JSUPtrListFv();
extern "C" void append__10JSUPtrListFP10JSUPtrLink();
extern "C" void remove__10JSUPtrListFP10JSUPtrLink();
extern "C" void panic_f__12JUTExceptionFPCciPCce();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern bool data_804508B0;
extern "C" void* __vt__7JKRHeap;

//
// Declarations:
//

/* 80451370-80451374 000870 0004+00 3/3 44/44 0/0 .sbss            sSystemHeap__7JKRHeap */
JKRHeap* JKRHeap::sSystemHeap;

/* 80451374-80451378 000874 0004+00 4/4 23/22 0/0 .sbss            sCurrentHeap__7JKRHeap */
JKRHeap* JKRHeap::sCurrentHeap;

/* 80451378-8045137C 000878 0004+00 3/3 10/10 0/0 .sbss            sRootHeap__7JKRHeap */
JKRHeap* JKRHeap::sRootHeap;

/* 8045137C-80451380 00087C 0004+00 2/2 3/3 0/0 .sbss            mErrorHandler__7JKRHeap */
JKRErrorHandler JKRHeap::mErrorHandler;

/* 80451380-80451384 000880 0004+00 1/1 0/0 0/0 .sbss            None */
static bool data_80451380;

/* 802CE138-802CE264 2C8A78 012C+00 0/0 3/3 0/0 .text            __ct__7JKRHeapFPvUlP7JKRHeapb */
JKRHeap::JKRHeap(void* data, u32 size, JKRHeap* parent, bool errorFlag)
    : JKRDisposer(), mChildTree(this), mDisposerList() {
    OSInitMutex(&mMutex);
    mSize = size;
    mStart = (u8*)data;
    mEnd = (u8*)data + size;

    if (parent == NULL) {
        becomeSystemHeap();
        becomeCurrentHeap();
    } else {
        parent->mChildTree.appendChild(&mChildTree);

        if (getSystemHeap() == getRootHeap()) {
            becomeSystemHeap();
        }
        if (getCurrentHeap() == getRootHeap()) {
            becomeCurrentHeap();
        }
    }

    mErrorFlag = errorFlag;
    if ((mErrorFlag == true) && (mErrorHandler == NULL)) {
        mErrorHandler = JKRDefaultMemoryErrorRoutine;
    }

    mDebugFill = data_804508B0;
    mCheckMemoryFilled = data_80451380;
    mInitFlag = false;
}

/* 802CE264-802CE378 2C8BA4 0114+00 1/0 3/3 0/0 .text            __dt__7JKRHeapFv */
// using the wrong register for storing the results
#ifdef NONMATCHING
JKRHeap::~JKRHeap() {
    JSUTree<JKRHeap>* parent = mChildTree.getParent();
    parent->removeChild(&mChildTree);

    JSUTree<JKRHeap>* nextRootHeap = getRootHeap()->mChildTree.getFirstChild();

    JKRHeap* rootHeap = getRootHeap();
    JKRHeap* currentHeap = getCurrentHeap();
    if (currentHeap == this) {
        if (!nextRootHeap) {
            currentHeap = rootHeap;
        } else {
            currentHeap = nextRootHeap->getObject();
        }
    }
    setCurrentHeap(currentHeap);

    JKRHeap* systemHeap = getSystemHeap();
    if (systemHeap == this) {
        if (!nextRootHeap) {
            systemHeap = rootHeap;
        } else {
            systemHeap = nextRootHeap->getObject();
        }
    }
    setSystemHeap(systemHeap);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JKRHeap::~JKRHeap() {
    nofralloc
#include "asm/JSystem/JKernel/JKRHeap/__dt__7JKRHeapFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80451384-80451388 000884 0004+00 1/1 1/1 0/0 .sbss            mCodeStart__7JKRHeap */
void* JKRHeap::mCodeStart;

/* 80451388-8045138C 000888 0004+00 1/1 1/1 0/0 .sbss            mCodeEnd__7JKRHeap */
void* JKRHeap::mCodeEnd;

/* 8045138C-80451390 00088C 0004+00 1/1 1/1 0/0 .sbss            mUserRamStart__7JKRHeap */
void* JKRHeap::mUserRamStart;

/* 80451390-80451394 000890 0004+00 1/1 1/1 0/0 .sbss            mUserRamEnd__7JKRHeap */
void* JKRHeap::mUserRamEnd;

/* 80451394-80451398 000894 0004+00 1/1 2/2 0/0 .sbss            mMemorySize__7JKRHeap */
u32 JKRHeap::mMemorySize;

/* 802CE378-802CE428 2C8CB8 00B0+00 0/0 1/1 0/0 .text            initArena__7JKRHeapFPPcPUli */
bool JKRHeap::initArena(char** memory, u32* size, int param_3) {
    u32 ram_start;
    u32 ram_end;
    u32 ram;

    u32 low = OSGetArenaLo();
    u32 high = OSGetArenaHi();
    if (low == high)
        return false;

    ram = OSInitAlloc(low, high, param_3);
    ram_start = ALIGN_NEXT(ram, 0x20);
    ram_end = ALIGN_PREV(high, 0x20);
    GLOBAL_MEMORY* globalMemory = (GLOBAL_MEMORY*)OSPhysicalToCached(0);
    mCodeStart = globalMemory;
    mCodeEnd = (void*)ram_start;
    mUserRamStart = (void*)ram_start;
    mUserRamEnd = (void*)ram_end;
    mMemorySize = globalMemory->memory_size;
    OSSetArenaLo(ram_end);
    OSSetArenaHi(ram_end);
    *memory = (char*)ram_start;
    *size = ram_end - ram_start;
    return true;
}

/* 802CE428-802CE438 2C8D68 0010+00 1/1 0/0 0/0 .text            becomeSystemHeap__7JKRHeapFv */
JKRHeap* JKRHeap::becomeSystemHeap() {
    JKRHeap* prev = JKRHeap::getSystemHeap();
    setSystemHeap(this);
    return prev;
}

/* 802CE438-802CE448 2C8D78 0010+00 1/1 22/22 1/1 .text            becomeCurrentHeap__7JKRHeapFv */
JKRHeap* JKRHeap::becomeCurrentHeap() {
    JKRHeap* prev = getCurrentHeap();
    setCurrentHeap(this);
    return prev;
}

/* 802CE448-802CE474 2C8D88 002C+00 0/0 5/5 1/1 .text            destroy__7JKRHeapFv */
void JKRHeap::destroy() {
    do_destroy();
}

/* 802CE474-802CE4D4 2C8DB4 0060+00 6/6 23/23 0/0 .text            alloc__7JKRHeapFUliP7JKRHeap */
void* JKRHeap::alloc(u32 size, int alignment, JKRHeap* heap) {
    if (heap != NULL) {
        return heap->alloc(size, alignment);
    }

    if (getCurrentHeap() != NULL) {
        return getCurrentHeap()->alloc(size, alignment);
    }

    return NULL;
}

/* 802CE4D4-802CE500 2C8E14 002C+00 1/1 30/30 1/1 .text            alloc__7JKRHeapFUli */
void* JKRHeap::alloc(u32 size, int alignment) {
    return do_alloc(size, alignment);
}

/* 802CE500-802CE548 2C8E40 0048+00 2/2 38/38 1/1 .text            free__7JKRHeapFPvP7JKRHeap */
void JKRHeap::free(void* ptr, JKRHeap* heap) {
    if (!heap) {
        heap = findFromRoot(ptr);
        if (!heap)
            return;
    }

    heap->free(ptr);
}

/* 802CE548-802CE574 2C8E88 002C+00 1/1 29/29 0/0 .text            free__7JKRHeapFPv */
void JKRHeap::free(void* ptr) {
    do_free(ptr);
}

/* 802CE574-802CE5CC 2C8EB4 0058+00 1/0 5/2 0/0 .text            callAllDisposer__7JKRHeapFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRHeap::callAllDisposer() {
    nofralloc
#include "asm/JSystem/JKernel/JKRHeap/callAllDisposer__7JKRHeapFv.s"
}
#pragma pop

/* 802CE5CC-802CE5F8 2C8F0C 002C+00 0/0 12/12 0/0 .text            freeAll__7JKRHeapFv */
void JKRHeap::freeAll() {
    do_freeAll();
}

/* 802CE5F8-802CE624 2C8F38 002C+00 0/0 1/1 0/0 .text            freeTail__7JKRHeapFv */
void JKRHeap::freeTail() {
    do_freeTail();
}

/* 802CE624-802CE684 2C8F64 0060+00 0/0 1/1 0/0 .text            resize__7JKRHeapFPvUlP7JKRHeap */
s32 JKRHeap::resize(void* ptr, u32 size, JKRHeap* heap) {
    if (!heap) {
        heap = findFromRoot(ptr);
        if (!heap)
            return -1;
    }

    return heap->resize(ptr, size);
}

/* 802CE684-802CE6B0 2C8FC4 002C+00 1/1 1/1 0/0 .text            resize__7JKRHeapFPvUl */
s32 JKRHeap::resize(void* ptr, u32 size) {
    return do_resize(ptr, size);
}

/* 802CE6B0-802CE700 2C8FF0 0050+00 0/0 4/4 0/0 .text            getSize__7JKRHeapFPvP7JKRHeap */
s32 JKRHeap::getSize(void* ptr, JKRHeap* heap) {
    if (!heap) {
        heap = findFromRoot(ptr);
        if (!heap)
            return -1;
    }

    return heap->getSize(ptr);
}

/* 802CE700-802CE72C 2C9040 002C+00 1/1 1/1 0/0 .text            getSize__7JKRHeapFPv */
s32 JKRHeap::getSize(void* ptr) {
    return do_getSize(ptr);
}

/* 802CE72C-802CE758 2C906C 002C+00 1/1 18/18 0/0 .text            getFreeSize__7JKRHeapFv */
s32 JKRHeap::getFreeSize() {
    return do_getFreeSize();
}

/* 802CE758-802CE784 2C9098 002C+00 1/1 0/0 0/0 .text            getMaxFreeBlock__7JKRHeapFv */
void* JKRHeap::getMaxFreeBlock() {
    return do_getMaxFreeBlock();
}

/* 802CE784-802CE7B0 2C90C4 002C+00 0/0 32/32 0/0 .text            getTotalFreeSize__7JKRHeapFv */
s32 JKRHeap::getTotalFreeSize() {
    return do_getTotalFreeSize();
}

/* 802CE7B0-802CE7DC 2C90F0 002C+00 0/0 1/1 0/0 .text            changeGroupID__7JKRHeapFUc */
u8 JKRHeap::changeGroupID(u8 param_1) {
    return do_changeGroupID(param_1);
}

/* 802CE7DC-802CE83C 2C911C 0060+00 0/0 2/2 0/0 .text            getMaxAllocatableSize__7JKRHeapFi
 */
// "not/nor" instruction in the wrong place
#ifdef NONMATCHING
s32 JKRHeap::getMaxAllocatableSize(int alignment) {
    u32 maxFreeBlock = (u32)getMaxFreeBlock();
    s32 freeSize = getFreeSize();

    u32 mask = alignment - 1U;
    s32 ptrOffset = mask & (alignment - (maxFreeBlock & 0xf));
    s32 alignedSize = (freeSize - ptrOffset) & ~(alignment - 1U);
    return alignedSize;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm u32 JKRHeap::getMaxAllocatableSize(int param_0) {
    nofralloc
#include "asm/JSystem/JKernel/JKRHeap/getMaxAllocatableSize__7JKRHeapFi.s"
}
#pragma pop
#endif

/* 802CE83C-802CE894 2C917C 0058+00 3/3 8/8 0/0 .text            findFromRoot__7JKRHeapFPv */
JKRHeap* JKRHeap::findFromRoot(void* ptr) {
    JKRHeap* rootHeap = getRootHeap();
    if (rootHeap == NULL) {
        return NULL;
    }

    if (rootHeap->getStartAddr() <= ptr && ptr < rootHeap->getEndAddr()) {
        return rootHeap->find(ptr);
    }

    return rootHeap->findAllHeap(ptr);
}

/* 802CE894-802CE93C 2C91D4 00A8+00 1/1 1/1 0/0 .text            find__7JKRHeapCFPv */
JKRHeap* JKRHeap::find(void* ptr) const {
    if (getStartAddr() <= ptr && ptr < getEndAddr()) {
        const JSUTree<JKRHeap>& tree = mChildTree;
        if (tree.getNumChildren() != 0) {
            JSUTreeIterator<JKRHeap> iterator;
            for (iterator = tree.getFirstChild(); iterator != tree.getEndChild(); iterator++) {
                JKRHeap* child = iterator.getObject();
                JKRHeap* result = child->find(ptr);
                if (result) {
                    return result;
                }
            }
        }

        // todo: not sure about this... casting away const for now.
        return (JKRHeap*)this;
    }

    return NULL;
}

/* 802CE93C-802CE9E4 2C927C 00A8+00 1/1 0/0 0/0 .text            findAllHeap__7JKRHeapCFPv */
JKRHeap* JKRHeap::findAllHeap(void* ptr) const {
    const JSUTree<JKRHeap>& tree = mChildTree;
    if (tree.getNumChildren() != 0) {
        JSUTreeIterator<JKRHeap> iterator;
        for (iterator = tree.getFirstChild(); iterator != tree.getEndChild(); iterator++) {
            JKRHeap* child = iterator.getObject();
            JKRHeap* result = child->findAllHeap(ptr);
            if (result) {
                return result;
            }
        }
    }

    if (getStartAddr() <= ptr && ptr < getEndAddr()) {
        // todo: not sure about this... casting away const for now.
        return (JKRHeap*)this;
    }

    return NULL;
}

/* 802CE9E4-802CEA78 2C9324 0094+00 2/2 0/0 0/0 .text            dispose_subroutine__7JKRHeapFUlUl
 */
void JKRHeap::dispose_subroutine(u32 begin, u32 end) {
    JSUListIterator<JKRDisposer> last_iterator;
    JSUListIterator<JKRDisposer> next_iterator;
    JSUListIterator<JKRDisposer> iterator;
    for (iterator = mDisposerList.getFirst(); iterator != mDisposerList.getEnd();
         iterator = next_iterator) {
        JKRDisposer* disposer = iterator.getObject();

        if ((void*)begin <= disposer && disposer < (void*)end) {
            disposer->~JKRDisposer();
            if (last_iterator == NULL) {
                next_iterator = mDisposerList.getFirst();
            } else {
                next_iterator = last_iterator;
                next_iterator++;
            }
        } else {
            last_iterator = iterator;
            next_iterator = iterator;
            next_iterator++;
        }
    }
}

/* 802CEA78-802CEAA0 2C93B8 0028+00 0/0 1/1 0/0 .text            dispose__7JKRHeapFPvUl */
bool JKRHeap::dispose(void* ptr, u32 size) {
    u32 begin = (u32)ptr;
    u32 end = (u32)ptr + size;
    dispose_subroutine(begin, end);
    return false;
}

/* 802CEAA0-802CEAC0 2C93E0 0020+00 0/0 1/1 0/0 .text            dispose__7JKRHeapFPvPv */
void JKRHeap::dispose(void* begin, void* end) {
    dispose_subroutine((u32)begin, (u32)end);
}

/* 802CEAC0-802CEB18 2C9400 0058+00 0/0 3/3 0/0 .text            dispose__7JKRHeapFv */
// missing stack variable?
#ifdef NONMATCHING
void JKRHeap::dispose() {
    const JSUList<JKRDisposer>& list = mDisposerList;
    JSUListIterator<JKRDisposer> iterator;
    while (list.getFirst() != list.getEnd()) {
        iterator = list.getFirst();
        iterator->~JKRDisposer();
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRHeap::dispose() {
    nofralloc
#include "asm/JSystem/JKernel/JKRHeap/dispose__7JKRHeapFv.s"
}
#pragma pop
#endif

/* 802CEB18-802CEB40 2C9458 0028+00 0/0 4/4 0/0 .text            copyMemory__7JKRHeapFPvPvUl */
void JKRHeap::copyMemory(void* dst, void* src, u32 size) {
    u32 count = (size + 3) / 4;

    u32* dst_32 = (u32*)dst;
    u32* src_32 = (u32*)src;
    while (count > 0) {
        *dst_32 = *src_32;
        dst_32++;
        src_32++;
        count--;
    }
}

/* 802CEB40-802CEB78 2C9480 0038+00 2/2 0/0 0/0 .text JKRDefaultMemoryErrorRoutine__FPvUli */
void JKRDefaultMemoryErrorRoutine(void* heap, u32 size, int alignment) {
    JUTException::panic_f("JKRHeap.cpp", 0x33f, "%s", "abort\n");
}

/* 802CEB78-802CEB88 2C94B8 0010+00 0/0 2/2 0/0 .text            setErrorFlag__7JKRHeapFb */
bool JKRHeap::setErrorFlag(bool errorFlag) {
    bool prev = mErrorFlag;
    mErrorFlag = errorFlag;
    return prev;
}

/* 802CEB88-802CEBA8 2C94C8 0020+00 0/0 1/1 0/0 .text            setErrorHandler__7JKRHeapFPFPvUli_v
 */
JKRErrorHandler JKRHeap::setErrorHandler(JKRErrorHandler errorHandler) {
    JKRErrorHandler prev = mErrorHandler;

    if (!errorHandler) {
        errorHandler = JKRDefaultMemoryErrorRoutine;
    }

    mErrorHandler = errorHandler;
    return prev;
}

/* 802CEBA8-802CEC4C 2C94E8 00A4+00 0/0 1/1 0/0 .text            isSubHeap__7JKRHeapCFP7JKRHeap */
bool JKRHeap::isSubHeap(JKRHeap* heap) const {
    if (!heap)
        return false;

    const JSUTree<JKRHeap>& tree = mChildTree;
    if (tree.getNumChildren() != 0) {
        JSUTreeIterator<JKRHeap> iterator;
        for (iterator = tree.getFirstChild(); iterator != tree.getEndChild(); ++iterator) {
            JKRHeap* child = iterator.getObject();
            if (child == heap) {
                return true;
            }

            bool is_sub_heap = child->isSubHeap(heap);
            if (is_sub_heap) {
                return true;
            }
        }
    }

    return false;
}

/* 802CEC4C-802CEC74 2C958C 0028+00 0/0 278/278 377/377 .text            __nw__FUl */
void* operator new(u32 size) {
    return JKRHeap::alloc(size, 4, NULL);
}

/* 802CEC74-802CEC98 2C95B4 0024+00 0/0 15/15 0/0 .text            __nw__FUli */
void* operator new(u32 size, int alignment) {
    return JKRHeap::alloc(size, alignment, NULL);
}

/* 802CEC98-802CECC4 2C95D8 002C+00 0/0 47/47 0/0 .text            __nw__FUlP7JKRHeapi */
void* operator new(u32 size, JKRHeap* heap, int alignment) {
    return JKRHeap::alloc(size, alignment, heap);
}

/* 802CECC4-802CECEC 2C9604 0028+00 0/0 52/52 15/15 .text            __nwa__FUl */
void* operator new[](u32 size) {
    return JKRHeap::alloc(size, 4, NULL);
}

/* 802CECEC-802CED10 2C962C 0024+00 0/0 29/29 0/0 .text            __nwa__FUli */
void* operator new[](u32 size, int alignment) {
    return JKRHeap::alloc(size, alignment, NULL);
}

/* 802CED10-802CED3C 2C9650 002C+00 0/0 25/25 0/0 .text            __nwa__FUlP7JKRHeapi */
void* operator new[](u32 size, JKRHeap* heap, int alignment) {
    return JKRHeap::alloc(size, alignment, heap);
}

/* 802CED3C-802CED60 2C967C 0024+00 1/1 847/847 4665/4665 .text            __dl__FPv */
void operator delete(void* ptr) {
    JKRHeap::free(ptr, NULL);
}

/* 802CED60-802CED84 2C96A0 0024+00 0/0 20/20 3/3 .text            __dla__FPv */
void operator delete[](void* ptr) {
    JKRHeap::free(ptr, NULL);
}

/* 802CED84-802CED88 2C96C4 0004+00 1/0 1/0 0/0 .text
 * state_register__7JKRHeapCFPQ27JKRHeap6TStateUl               */
void JKRHeap::state_register(JKRHeap::TState* p, u32 id) const {
    JUT_ASSERT("JKRHeap.cpp", 0x4bd, p != 0);
    JUT_ASSERT("JKRHeap.cpp", 0x4be, p->getHeap() == this);
}

/* 802CED88-802CEDA0 2C96C8 0018+00 1/0 1/0 0/0 .text
 * state_compare__7JKRHeapCFRCQ27JKRHeap6TStateRCQ27JKRHeap6TState */
bool JKRHeap::state_compare(JKRHeap::TState const& r1, JKRHeap::TState const& r2) const {
    JUT_ASSERT("JKRHeap.cpp", 0x4c6, r1.getHeap() == r2.getHeap());
    return r1.getCheckCode() == r2.getCheckCode();
}

/* 802CEDA0-802CEDA4 2C96E0 0004+00 1/0 3/0 0/0 .text state_dump__7JKRHeapCFRCQ27JKRHeap6TState */
void JKRHeap::state_dump(JKRHeap::TState const& p) const {
    LOGF("check-code : 0x%08x", p.getCheckCode());
    LOGF("id         : 0x%08x", p.getId());
    LOGF("used size  : %u", p.getUsedSize());
}

/* 802CEDA4-802CEDAC 2C96E4 0008+00 1/0 1/0 0/0 .text            do_changeGroupID__7JKRHeapFUc */
u8 JKRHeap::do_changeGroupID(u8 param_0) {
    return 0;
}

/* 802CEDAC-802CEDB4 2C96EC 0008+00 1/0 1/0 0/0 .text            do_getCurrentGroupId__7JKRHeapFv */
u8 JKRHeap::do_getCurrentGroupId() {
    return 0;
}

/* 8039CAD8-8039CAD8 029138 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

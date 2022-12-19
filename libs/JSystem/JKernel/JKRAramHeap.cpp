//
// Generated By: dol2asm
// Translation Unit: JKRAramHeap
//

#include "JSystem/JKernel/JKRAramHeap.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "dol2asm.h"
#include "global.h"

//
// Forward References:
//

extern "C" void __ct__11JKRAramHeapFUlUl();
extern "C" void __dt__11JKRAramHeapFv();
extern "C" void alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode();
extern "C" void allocFromHead__11JKRAramHeapFUl();
extern "C" void allocFromTail__11JKRAramHeapFUl();
extern "C" void getFreeSize__11JKRAramHeapFv();
extern "C" void getTotalFreeSize__11JKRAramHeapFv();
extern "C" void dump__11JKRAramHeapFv();
extern "C" void __sinit_JKRAramHeap_cpp();
extern "C" void func_802D32B0(void* _this);
extern "C" u8 sAramList__11JKRAramHeap[12];

extern "C" void* __vt__11JKRAramHeap;

//
// External References:
//

// TODO: move to JKRHeap
void* operator new(u32 size);
void* operator new(u32 size, int alignment);
void* operator new(u32 size, JKRHeap* heap, int alignment);

extern "C" void findFromRoot__7JKRHeapFPv();
extern "C" void* __nw__FUlP7JKRHeapi();
extern "C" void __dl__FPv();
extern "C" void __ct__11JKRDisposerFv();
extern "C" void __dt__11JKRDisposerFv();
extern "C" void __ct__12JKRAramBlockFUlUlUlUcb();
extern "C" void allocHead__12JKRAramBlockFUlUcP11JKRAramHeap();
extern "C" void allocTail__12JKRAramBlockFUlUcP11JKRAramHeap();
extern "C" void __dt__10JSUPtrListFv();
extern "C" void initiate__10JSUPtrListFv();
extern "C" void append__10JSUPtrListFP10JSUPtrLink();
extern "C" void __register_global_object();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();

//
// Declarations:
//

/* 80434300-8043430C 061020 000C+00 1/1 0/0 0/0 .bss             @297 */
static u8 lit_297[12];

/* 8043430C-80434318 06102C 000C+00 8/8 0/0 0/0 .bss             sAramList__11JKRAramHeap */
JSUList<JKRAramBlock> JKRAramHeap::sAramList;

/* 802D2E44-802D2F14 2CD784 00D0+00 0/0 1/1 0/0 .text            __ct__11JKRAramHeapFUlUl */
JKRAramHeap::JKRAramHeap(u32 startAddress, u32 size) {
    OSInitMutex(&mMutex);

    mHeap = JKRHeap::findFromRoot(this);
    mSize = ALIGN_PREV(size, 0x20);
    mHeadAddress = ALIGN_NEXT(startAddress, 0x20);
    mTailAddress = mHeadAddress + mSize;
    mGroupId = -1;

    JKRAramBlock* block = new (mHeap, 0) JKRAramBlock(mHeadAddress, 0, mSize, -1, false);
    sAramList.append(&block->mBlockLink);
}

/* 802D2F14-802D2FBC 2CD854 00A8+00 1/0 0/0 0/0 .text            __dt__11JKRAramHeapFv */
// close match, regalloc problem in the beginning of the while loop
#ifdef NONMATCHING
JKRAramHeap::~JKRAramHeap() {
    JSUList<JKRAramBlock>* list = &sAramList;
    JSUListIterator<JKRAramBlock> iterator = list;

    while (iterator != list->getEnd()) {
        JSUListIterator<JKRAramBlock> prev = iterator;
        JKRAramBlock* block = prev.getObject();
        delete block;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JKRAramHeap::~JKRAramHeap() {
    nofralloc
#include "asm/JSystem/JKernel/JKRAramHeap/__dt__11JKRAramHeapFv.s"
}
#pragma pop
#endif

/* 802D2FBC-802D3034 2CD8FC 0078+00 0/0 5/5 0/0 .text
 * alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode           */
JKRAramBlock* JKRAramHeap::alloc(u32 size, JKRAramHeap::EAllocMode allocationMode) {
    lock();

    JKRAramBlock* block;
    if (allocationMode == JKRAramHeap::HEAD) {
        block = allocFromHead(size);
    } else {
        block = allocFromTail(size);
    }

    unlock();
    return block;
}

/* 802D3034-802D30BC 2CD974 0088+00 1/1 0/0 0/0 .text            allocFromHead__11JKRAramHeapFUl */
JKRAramBlock* JKRAramHeap::allocFromHead(u32 size) {
    u32 alignedSize = ALIGN_NEXT(size, 0x20);
    u32 bestFreeSize = UINT32_MAX;
    JKRAramBlock* bestBlock = NULL;

    JSUList<JKRAramBlock>* list = &sAramList;
    for (JSUListIterator<JKRAramBlock> iterator = list; iterator != list->getEnd(); ++iterator) {
        JKRAramBlock* block = iterator.getObject();
        if (block->mFreeSize < alignedSize)
            continue;
        if (bestFreeSize <= block->mFreeSize)
            continue;

        bestFreeSize = block->mFreeSize;
        bestBlock = block;

        if (block->mFreeSize == alignedSize) {
            break;
        }
    }

    if (bestBlock) {
        return bestBlock->allocHead(alignedSize, mGroupId, this);
    }

    return NULL;
}

/* 802D30BC-802D3134 2CD9FC 0078+00 1/1 0/0 0/0 .text            allocFromTail__11JKRAramHeapFUl */
JKRAramBlock* JKRAramHeap::allocFromTail(u32 size) {
    u32 alignedSize = ALIGN_NEXT(size, 0x20);
    JKRAramBlock* tailBlock = NULL;

    JSUList<JKRAramBlock>* list = &sAramList;
    JSUListIterator<JKRAramBlock> iterator = list->getLast();
    for (; iterator != list->getEnd(); --iterator) {
        JKRAramBlock* block = iterator.getObject();
        if (block->mFreeSize >= alignedSize) {
            tailBlock = block;
            break;
        }
    }

    if (tailBlock) {
        return tailBlock->allocTail(alignedSize, mGroupId, this);
    }

    return NULL;
}

/* 802D3134-802D31AC 2CDA74 0078+00 0/0 1/1 0/0 .text            getFreeSize__11JKRAramHeapFv */
u32 JKRAramHeap::getFreeSize(void) {
    u32 maxFreeSize = 0;

    lock();

    JSUList<JKRAramBlock>* list = &sAramList;
    JSUListIterator<JKRAramBlock> iterator = list;
    for (; iterator != list->getEnd(); ++iterator) {
        if (iterator->mFreeSize > maxFreeSize) {
            maxFreeSize = iterator->mFreeSize;
        }
    }

    unlock();
    return maxFreeSize;
}

/* 802D31AC-802D3218 2CDAEC 006C+00 0/0 2/2 0/0 .text            getTotalFreeSize__11JKRAramHeapFv
 */
u32 JKRAramHeap::getTotalFreeSize(void) {
    u32 totalFreeSize = 0;

    lock();

    JSUList<JKRAramBlock>* list = &sAramList;
    JSUListIterator<JKRAramBlock> iterator = list;
    for (; iterator != list->getEnd(); ++iterator) {
        totalFreeSize += iterator->mFreeSize;
    }

    unlock();
    return totalFreeSize;
}

/* 802D3218-802D326C 2CDB58 0054+00 0/0 2/2 0/0 .text            dump__11JKRAramHeapFv */
void JKRAramHeap::dump(void) {
    lock();

    JSUList<JKRAramBlock>* list = &sAramList;
    JSUListIterator<JKRAramBlock> iterator = list;
    for (; iterator != list->getEnd(); ++iterator) {
        // The debug version calls OSReport
    }

    unlock();
}

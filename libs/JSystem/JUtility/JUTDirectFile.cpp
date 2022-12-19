//
// Generated By: dol2asm
// Translation Unit: JUTDirectFile
//

#include "JSystem/JUtility/JUTDirectFile.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Forward References:
//

extern "C" void fetch32byte__13JUTDirectFileFv();
extern "C" void __ct__13JUTDirectFileFv();
extern "C" void __dt__13JUTDirectFileFv();
extern "C" void fopen__13JUTDirectFileFPCc();
extern "C" void fclose__13JUTDirectFileFv();
extern "C" void fgets__13JUTDirectFileFPvi();

//
// External References:
//

extern "C" void __dl__FPv();
extern "C" void OSEnableInterrupts();
extern "C" void OSRestoreInterrupts();
extern "C" void DVDOpen();
extern "C" void DVDClose();
extern "C" void DVDReadAsyncPrio();
extern "C" void DVDGetCommandBlockStatus();
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();

//
// Declarations:
//

/* 802E8730-802E87F8 2E3070 00C8+00 1/1 0/0 0/0 .text            fetch32byte__13JUTDirectFileFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JUTDirectFile::fetch32byte() {
    nofralloc
#include "asm/JSystem/JUtility/JUTDirectFile/fetch32byte__13JUTDirectFileFv.s"
}
#pragma pop

/* 802E87F8-802E881C 2E3138 0024+00 0/0 1/1 0/0 .text            __ct__13JUTDirectFileFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JUTDirectFile::JUTDirectFile() {
    nofralloc
#include "asm/JSystem/JUtility/JUTDirectFile/__ct__13JUTDirectFileFv.s"
}
#pragma pop

/* 802E881C-802E8860 2E315C 0044+00 0/0 1/1 0/0 .text            __dt__13JUTDirectFileFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JUTDirectFile::~JUTDirectFile() {
    nofralloc
#include "asm/JSystem/JUtility/JUTDirectFile/__dt__13JUTDirectFileFv.s"
}
#pragma pop

/* 802E8860-802E88FC 2E31A0 009C+00 0/0 1/1 0/0 .text            fopen__13JUTDirectFileFPCc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool JUTDirectFile::fopen(char const* param_0) {
    nofralloc
#include "asm/JSystem/JUtility/JUTDirectFile/fopen__13JUTDirectFileFPCc.s"
}
#pragma pop

/* 802E88FC-802E8958 2E323C 005C+00 0/0 1/1 0/0 .text            fclose__13JUTDirectFileFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool JUTDirectFile::fclose() {
    nofralloc
#include "asm/JSystem/JUtility/JUTDirectFile/fclose__13JUTDirectFileFv.s"
}
#pragma pop

/* 802E8958-802E8B08 2E3298 01B0+00 0/0 1/1 0/0 .text            fgets__13JUTDirectFileFPvi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int JUTDirectFile::fgets(void* param_0, int param_1) {
    nofralloc
#include "asm/JSystem/JUtility/JUTDirectFile/fgets__13JUTDirectFileFPvi.s"
}
#pragma pop

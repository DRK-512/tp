//
// Generated By: dol2asm
// Translation Unit: global_destructor_chain
//

#include "Runtime.PPCEABI.H/global_destructor_chain.h"
#include "dolphin/types.h"

//
// Forward References:
//

extern "C" void __destroy_global_chain();
extern "C" void __register_global_object();

//
// External References:
//

//
// Declarations:
//

/* ############################################################################################## */
/* 80451988-80451990 000E88 0004+04 2/2 0/0 0/0 .sbss            __global_destructor_chain */
static u8 __global_destructor_chain[4 + 4 /* padding */];

/* 80361BDC-80361C24 35C51C 0048+00 0/0 2/1 0/0 .text            __destroy_global_chain */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __destroy_global_chain() {
    nofralloc
#include "asm/Runtime.PPCEABI.H/global_destructor_chain/__destroy_global_chain.s"
}
#pragma pop

/* 80361C24-80361C3C 35C564 0018+00 0/0 116/116 0/0 .text            __register_global_object */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __register_global_object() {
    nofralloc
#include "asm/Runtime.PPCEABI.H/global_destructor_chain/__register_global_object.s"
}
#pragma pop

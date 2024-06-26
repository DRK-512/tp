#
# Generate By: dol2asm
# Module: 679
#

# Libraries
LIBRARIES = [
	"d/a/obj/d_a_obj_waterGate",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"global_destructor_chain",
	"d_a_obj_waterGate",
]

# Sections
SECTIONS = [
	".text",
	".ctors",
	".dtors",
	".bss",
	".rodata",
	".data",
]

# Symbols
SYMBOLS = [
	{'addr':0x80D2BAA0,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2BACC,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2BAF8,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2BB18,'size':28,'pad':0,'label':"__register_global_object",'name':"__register_global_object",'lib':-1,'tu':2,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2BB34,'size':88,'pad':0,'label':"__destroy_global_chain",'name':"__destroy_global_chain",'lib':-1,'tu':2,'section':0,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2BB8C,'size':56,'pad':0,'label':"__ct__14daWtGate_HIO_cFv",'name':"__ct__14daWtGate_HIO_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2BBC4,'size':72,'pad':0,'label':"__dt__14mDoHIO_entry_cFv",'name':"__dt__14mDoHIO_entry_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2BC0C,'size':136,'pad':0,'label':"setBaseMtx__10daWtGate_cFv",'name':"setBaseMtx__10daWtGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2BC94,'size':108,'pad':0,'label':"CreateHeap__10daWtGate_cFv",'name':"CreateHeap__10daWtGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2BD00,'size':380,'pad':0,'label':"create__10daWtGate_cFv",'name':"create__10daWtGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2BE7C,'size':80,'pad':0,'label':"Execute__10daWtGate_cFPPA3_A4_f",'name':"Execute__10daWtGate_cFPPA3_A4_f",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2BECC,'size':188,'pad':0,'label':"move__10daWtGate_cFv",'name':"move__10daWtGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2BF88,'size':12,'pad':0,'label':"init_modeWait__10daWtGate_cFv",'name':"init_modeWait__10daWtGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2BF94,'size':124,'pad':0,'label':"modeWait__10daWtGate_cFv",'name':"modeWait__10daWtGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2C010,'size':28,'pad':0,'label':"init_modeOpen__10daWtGate_cFv",'name':"init_modeOpen__10daWtGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2C02C,'size':264,'pad':0,'label':"modeOpen__10daWtGate_cFv",'name':"modeOpen__10daWtGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2C134,'size':28,'pad':0,'label':"init_modeClose__10daWtGate_cFv",'name':"init_modeClose__10daWtGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2C150,'size':256,'pad':0,'label':"modeClose__10daWtGate_cFv",'name':"modeClose__10daWtGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2C250,'size':12,'pad':0,'label':"init_modeEnd__10daWtGate_cFv",'name':"init_modeEnd__10daWtGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2C25C,'size':4,'pad':0,'label':"modeEnd__10daWtGate_cFv",'name':"modeEnd__10daWtGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x80D2C260,'size':164,'pad':0,'label':"Draw__10daWtGate_cFv",'name':"Draw__10daWtGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2C304,'size':48,'pad':0,'label':"Delete__10daWtGate_cFv",'name':"Delete__10daWtGate_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2C334,'size':44,'pad':0,'label':"daWtGate_Draw__FP10daWtGate_c",'name':"daWtGate_Draw__FP10daWtGate_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2C360,'size':32,'pad':0,'label':"daWtGate_Execute__FP10daWtGate_c",'name':"daWtGate_Execute__FP10daWtGate_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2C380,'size':32,'pad':0,'label':"daWtGate_Delete__FP10daWtGate_c",'name':"daWtGate_Delete__FP10daWtGate_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2C3A0,'size':32,'pad':0,'label':"daWtGate_Create__FP10fopAc_ac_c",'name':"daWtGate_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2C3C0,'size':92,'pad':0,'label':"__dt__14daWtGate_HIO_cFv",'name':"__dt__14daWtGate_HIO_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x80D2C41C,'size':60,'pad':0,'label':"__sinit_d_a_obj_waterGate_cpp",'name':"__sinit_d_a_obj_waterGate_cpp",'lib':-1,'tu':3,'section':0,'class_template':None,'static':False,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"SInitFunction"},
	{'addr':0x80D2C458,'size':8,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D2C460,'size':12,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x80D2C46C,'size':4,'pad':0,'label':"lit_3625",'name':"@3625",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':True,'r':[3,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D2C470,'size':4,'pad':0,'label':"lit_3712",'name':"@3712",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D2C474,'size':8,'pad':0,'label':"lit_3714",'name':"@3714",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D2C47C,'size':4,'pad':0,'label':"lit_3781",'name':"@3781",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D2C480,'size':4,'pad':0,'label':"lit_3782",'name':"@3782",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D2C484,'size':4,'pad':0,'label':"lit_3783",'name':"@3783",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D2C488,'size':4,'pad':0,'label':"lit_3784",'name':"@3784",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x80D2C48C,'size':10,'pad':0,'label':"d_a_obj_waterGate__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x80D2C498,'size':12,'pad':0,'label':"cNullVec__6Z2Calc",'name':"cNullVec__6Z2Calc",'lib':-1,'tu':3,'section':5,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D2C4A4,'size':4,'pad':16,'label':"lit_1787",'name':"@1787",'lib':-1,'tu':3,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"Integer"},
	{'addr':0x80D2C4B8,'size':12,'pad':0,'label':"lit_3728",'name':"@3728",'lib':-1,'tu':3,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D2C4C4,'size':12,'pad':0,'label':"lit_3729",'name':"@3729",'lib':-1,'tu':3,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D2C4D0,'size':12,'pad':0,'label':"lit_3730",'name':"@3730",'lib':-1,'tu':3,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D2C4DC,'size':12,'pad':0,'label':"lit_3731",'name':"@3731",'lib':-1,'tu':3,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D2C4E8,'size':48,'pad':0,'label':"mode_proc",'name':"mode_proc$3727",'lib':-1,'tu':3,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D2C518,'size':32,'pad':0,'label':"l_daWtGate_Method",'name':"l_daWtGate_Method",'lib':-1,'tu':3,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D2C538,'size':48,'pad':0,'label':"g_profile_Obj_WtGate",'name':"g_profile_Obj_WtGate",'lib':-1,'tu':3,'section':5,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x80D2C568,'size':40,'pad':0,'label':"__vt__10daWtGate_c",'name':"__vt__10daWtGate_c",'lib':-1,'tu':3,'section':5,'class_template':None,'static':False,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80D2C590,'size':12,'pad':0,'label':"__vt__14daWtGate_HIO_c",'name':"__vt__14daWtGate_HIO_c",'lib':-1,'tu':3,'section':5,'class_template':None,'static':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80D2C59C,'size':12,'pad':0,'label':"__vt__14mDoHIO_entry_c",'name':"__vt__14mDoHIO_entry_c",'lib':-1,'tu':3,'section':5,'class_template':None,'static':False,'is_reachable':True,'r':[3,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x80D2C5A8,'size':4,'pad':4,'label':"__global_destructor_chain",'name':"__global_destructor_chain",'lib':-1,'tu':2,'section':3,'class_template':None,'static':True,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D2C5B0,'size':12,'pad':0,'label':"lit_3619",'name':"@3619",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D2C5BC,'size':12,'pad':0,'label':"l_HIO",'name':"l_HIO",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':True,'r':[3,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x80D2C5C8,'size':4,'pad':0,'label':"data_80D2C5C8",'name':None,'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__register_global_object":3,
	"__destroy_global_chain":4,
	"__ct__14daWtGate_HIO_cFv":5,
	"__dt__14mDoHIO_entry_cFv":6,
	"setBaseMtx__10daWtGate_cFv":7,
	"CreateHeap__10daWtGate_cFv":8,
	"create__10daWtGate_cFv":9,
	"Execute__10daWtGate_cFPPA3_A4_f":10,
	"move__10daWtGate_cFv":11,
	"init_modeWait__10daWtGate_cFv":12,
	"modeWait__10daWtGate_cFv":13,
	"init_modeOpen__10daWtGate_cFv":14,
	"modeOpen__10daWtGate_cFv":15,
	"init_modeClose__10daWtGate_cFv":16,
	"modeClose__10daWtGate_cFv":17,
	"init_modeEnd__10daWtGate_cFv":18,
	"modeEnd__10daWtGate_cFv":19,
	"Draw__10daWtGate_cFv":20,
	"Delete__10daWtGate_cFv":21,
	"daWtGate_Draw__FP10daWtGate_c":22,
	"daWtGate_Execute__FP10daWtGate_c":23,
	"daWtGate_Delete__FP10daWtGate_c":24,
	"daWtGate_Create__FP10fopAc_ac_c":25,
	"__dt__14daWtGate_HIO_cFv":26,
	"__sinit_d_a_obj_waterGate_cpp":27,
	"_ctors":28,
	"_dtors":29,
	"lit_3625":30,
	"lit_3712":31,
	"lit_3714":32,
	"lit_3781":33,
	"lit_3782":34,
	"lit_3783":35,
	"lit_3784":36,
	"d_a_obj_waterGate__stringBase0":37,
	"cNullVec__6Z2Calc":38,
	"lit_1787":39,
	"lit_3728":40,
	"lit_3729":41,
	"lit_3730":42,
	"lit_3731":43,
	"mode_proc":44,
	"l_daWtGate_Method":45,
	"g_profile_Obj_WtGate":46,
	"__vt__10daWtGate_c":47,
	"__vt__14daWtGate_HIO_c":48,
	"__vt__14mDoHIO_entry_c":49,
	"__global_destructor_chain":50,
	"lit_3619":51,
	"l_HIO":52,
	"data_80D2C5C8":53,
}


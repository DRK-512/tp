#
# Generate By: dol2asm
# Module: 238
#

# Libraries
LIBRARIES = [
	"d/a/e/d_a_e_tk",
]

# Translation Units
TRANSLATION_UNITS = [
	"executor",
	"unknown_translation_unit_ctors",
	"global_destructor_chain",
	"d_a_e_tk",
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
	{'addr':0x807B8100,'size':44,'pad':0,'label':"_prolog",'name':"_prolog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B812C,'size':44,'pad':0,'label':"_epilog",'name':"_epilog",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B8158,'size':32,'pad':0,'label':"_unresolved",'name':"_unresolved",'lib':-1,'tu':0,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B8178,'size':28,'pad':0,'label':"__register_global_object",'name':"__register_global_object",'lib':-1,'tu':2,'section':0,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B8194,'size':88,'pad':0,'label':"__destroy_global_chain",'name':"__destroy_global_chain",'lib':-1,'tu':2,'section':0,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B81EC,'size':72,'pad':0,'label':"__ct__12daE_TK_HIO_cFv",'name':"__ct__12daE_TK_HIO_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B8234,'size':172,'pad':0,'label':"anm_init__FP10e_tk_classifUcf",'name':"anm_init__FP10e_tk_classifUcf",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[6,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B82E0,'size':112,'pad':0,'label':"daE_TK_Draw__FP10e_tk_class",'name':"daE_TK_Draw__FP10e_tk_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B8350,'size':216,'pad':0,'label':"other_bg_check__FP10e_tk_classP10fopAc_ac_c",'name':"other_bg_check__FP10e_tk_classP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B8428,'size':56,'pad':0,'label':"pl_y_check__FP10e_tk_class",'name':"pl_y_check__FP10e_tk_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B8460,'size':124,'pad':0,'label':"pl_check__FP10e_tk_classfs",'name':"pl_check__FP10e_tk_classfs",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[4,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B84DC,'size':256,'pad':0,'label':"damage_check__FP10e_tk_class",'name':"damage_check__FP10e_tk_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B85DC,'size':272,'pad':0,'label':"way_bg_check__FP10e_tk_classf",'name':"way_bg_check__FP10e_tk_classf",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B86EC,'size':660,'pad':0,'label':"e_tk_wait_0__FP10e_tk_class",'name':"e_tk_wait_0__FP10e_tk_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B8980,'size':1016,'pad':0,'label':"e_tk_find__FP10e_tk_class",'name':"e_tk_find__FP10e_tk_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B8D78,'size':496,'pad':0,'label':"e_tk_attack__FP10e_tk_class",'name':"e_tk_attack__FP10e_tk_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B8F68,'size':860,'pad':0,'label':"e_tk_pathswim__FP10e_tk_class",'name':"e_tk_pathswim__FP10e_tk_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B92C4,'size':144,'pad':0,'label':"e_tk_s_damage__FP10e_tk_class",'name':"e_tk_s_damage__FP10e_tk_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B9354,'size':200,'pad':0,'label':"e_tk_damage__FP10e_tk_class",'name':"e_tk_damage__FP10e_tk_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B941C,'size':312,'pad':0,'label':"action__FP10e_tk_class",'name':"action__FP10e_tk_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B9554,'size':1788,'pad':0,'label':"daE_TK_Execute__FP10e_tk_class",'name':"daE_TK_Execute__FP10e_tk_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B9C50,'size':8,'pad':0,'label':"daE_TK_IsDelete__FP10e_tk_class",'name':"daE_TK_IsDelete__FP10e_tk_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReturnFunction"},
	{'addr':0x807B9C58,'size':104,'pad':0,'label':"daE_TK_Delete__FP10e_tk_class",'name':"daE_TK_Delete__FP10e_tk_class",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B9CC0,'size':248,'pad':0,'label':"useHeapInit__FP10fopAc_ac_c",'name':"useHeapInit__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807B9DB8,'size':780,'pad':0,'label':"daE_TK_Create__FP10fopAc_ac_c",'name':"daE_TK_Create__FP10fopAc_ac_c",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807BA0C4,'size':72,'pad':0,'label':"__dt__8cM3dGSphFv",'name':"__dt__8cM3dGSphFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807BA10C,'size':72,'pad':0,'label':"__dt__8cM3dGAabFv",'name':"__dt__8cM3dGAabFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807BA154,'size':112,'pad':0,'label':"__dt__12dBgS_ObjAcchFv",'name':"__dt__12dBgS_ObjAcchFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':False,'r':[3,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807BA1C4,'size':72,'pad':0,'label':"__dt__12daE_TK_HIO_cFv",'name':"__dt__12daE_TK_HIO_cFv",'lib':-1,'tu':3,'section':0,'class_template':False,'static':True,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807BA20C,'size':60,'pad':0,'label':"__sinit_d_a_e_tk_cpp",'name':"__sinit_d_a_e_tk_cpp",'lib':-1,'tu':3,'section':0,'class_template':None,'static':False,'is_reachable':False,'r':[0,1,0],'sh':[0,0,0],'type':"SInitFunction"},
	{'addr':0x807BA248,'size':8,'pad':0,'label':"func_807BA248",'name':"@36@__dt__12dBgS_ObjAcchFv",'lib':-1,'tu':3,'section':0,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807BA250,'size':8,'pad':0,'label':"func_807BA250",'name':"@20@__dt__12dBgS_ObjAcchFv",'lib':-1,'tu':3,'section':0,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ASMFunction"},
	{'addr':0x807BA258,'size':8,'pad':0,'label':"_ctors",'name':"_ctors",'lib':-1,'tu':1,'section':1,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x807BA260,'size':12,'pad':0,'label':"_dtors",'name':"_dtors",'lib':-1,'tu':2,'section':2,'class_template':None,'static':False,'is_reachable':True,'r':[0,1,0],'sh':[0,0,0],'type':"LinkerGenerated"},
	{'addr':0x807BA26C,'size':4,'pad':0,'label':"lit_3762",'name':"@3762",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':True,'r':[11,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA270,'size':4,'pad':0,'label':"lit_3763",'name':"@3763",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA274,'size':4,'pad':0,'label':"lit_3764",'name':"@3764",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA278,'size':4,'pad':0,'label':"lit_3765",'name':"@3765",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA27C,'size':4,'pad':0,'label':"lit_3766",'name':"@3766",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA280,'size':4,'pad':0,'label':"lit_3780",'name':"@3780",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x807BA284,'size':4,'pad':0,'label':"lit_3781",'name':"@3781",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA288,'size':4,'pad':0,'label':"lit_3820",'name':"@3820",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA28C,'size':4,'pad':0,'label':"lit_3830",'name':"@3830",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA290,'size':4,'pad':0,'label':"lit_3897",'name':"@3897",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA294,'size':4,'pad':0,'label':"lit_3898",'name':"@3898",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA298,'size':4,'pad':0,'label':"lit_3937",'name':"@3937",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA29C,'size':4,'pad':0,'label':"lit_3938",'name':"@3938",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA2A0,'size':4,'pad':0,'label':"lit_3939",'name':"@3939",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA2A4,'size':4,'pad':0,'label':"lit_3940",'name':"@3940",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA2A8,'size':4,'pad':0,'label':"lit_3941",'name':"@3941",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA2AC,'size':4,'pad':0,'label':"lit_3942",'name':"@3942",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA2B0,'size':4,'pad':0,'label':"lit_4017",'name':"@4017",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA2B4,'size':4,'pad':0,'label':"lit_4018",'name':"@4018",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA2B8,'size':4,'pad':0,'label':"lit_4019",'name':"@4019",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA2BC,'size':4,'pad':0,'label':"lit_4020",'name':"@4020",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA2C0,'size':4,'pad':0,'label':"lit_4021",'name':"@4021",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA2C4,'size':4,'pad':0,'label':"lit_4022",'name':"@4022",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA2C8,'size':4,'pad':0,'label':"lit_4066",'name':"@4066",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA2CC,'size':4,'pad':0,'label':"lit_4183",'name':"@4183",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA2D0,'size':4,'pad':0,'label':"lit_4184",'name':"@4184",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA2D4,'size':4,'pad':0,'label':"lit_4354",'name':"@4354",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA2D8,'size':4,'pad':0,'label':"lit_4355",'name':"@4355",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA2DC,'size':4,'pad':0,'label':"lit_4356",'name':"@4356",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA2E0,'size':4,'pad':0,'label':"lit_4357",'name':"@4357",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA2E4,'size':4,'pad':0,'label':"lit_4358",'name':"@4358",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA2E8,'size':4,'pad':0,'label':"lit_4359",'name':"@4359",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA2EC,'size':4,'pad':0,'label':"lit_4487",'name':"@4487",'lib':-1,'tu':3,'section':4,'class_template':None,'static':True,'is_reachable':False,'r':[0,0,0],'sh':[0,0,0],'type':"FloatingPoint"},
	{'addr':0x807BA2F0,'size':5,'pad':0,'label':"d_a_e_tk__stringBase0",'name':"@stringBase0",'lib':-1,'tu':3,'section':4,'class_template':None,'static':False,'is_reachable':False,'r':[4,0,0],'sh':[0,0,0],'type':"StringBase"},
	{'addr':0x807BA2F8,'size':52,'pad':0,'label':"lit_4023",'name':"@4023",'lib':-1,'tu':3,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x807BA32C,'size':44,'pad':0,'label':"lit_4185",'name':"@4185",'lib':-1,'tu':3,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x807BA358,'size':64,'pad':0,'label':"cc_sph_src",'name':"cc_sph_src$4408",'lib':-1,'tu':3,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x807BA398,'size':32,'pad':0,'label':"l_daE_TK_Method",'name':"l_daE_TK_Method",'lib':-1,'tu':3,'section':5,'class_template':None,'static':True,'is_reachable':False,'r':[1,0,0],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x807BA3B8,'size':48,'pad':0,'label':"g_profile_E_TK",'name':"g_profile_E_TK",'lib':-1,'tu':3,'section':5,'class_template':None,'static':False,'is_reachable':False,'r':[0,0,1],'sh':[0,0,0],'type':"ReferenceArray"},
	{'addr':0x807BA3E8,'size':12,'pad':0,'label':"__vt__8cM3dGSph",'name':"__vt__8cM3dGSph",'lib':-1,'tu':3,'section':5,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x807BA3F4,'size':12,'pad':0,'label':"__vt__8cM3dGAab",'name':"__vt__8cM3dGAab",'lib':-1,'tu':3,'section':5,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x807BA400,'size':36,'pad':0,'label':"__vt__12dBgS_ObjAcch",'name':"__vt__12dBgS_ObjAcch",'lib':-1,'tu':3,'section':5,'class_template':None,'static':False,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x807BA424,'size':12,'pad':0,'label':"__vt__12daE_TK_HIO_c",'name':"__vt__12daE_TK_HIO_c",'lib':-1,'tu':3,'section':5,'class_template':None,'static':False,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"VirtualTable"},
	{'addr':0x807BA430,'size':4,'pad':4,'label':"__global_destructor_chain",'name':"__global_destructor_chain",'lib':-1,'tu':2,'section':3,'class_template':None,'static':True,'is_reachable':True,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x807BA438,'size':4,'pad':0,'label':"data_807BA438",'name':None,'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':False,'r':[2,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x807BA43C,'size':12,'pad':0,'label':"lit_3757",'name':"@3757",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':True,'r':[1,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
	{'addr':0x807BA448,'size':28,'pad':0,'label':"l_HIO",'name':"l_HIO",'lib':-1,'tu':3,'section':3,'class_template':None,'static':True,'is_reachable':True,'r':[7,0,0],'sh':[0,0,0],'type':"ArbitraryData"},
]

# Names
SYMBOL_NAMES = {
	"_prolog":0,
	"_epilog":1,
	"_unresolved":2,
	"__register_global_object":3,
	"__destroy_global_chain":4,
	"__ct__12daE_TK_HIO_cFv":5,
	"anm_init__FP10e_tk_classifUcf":6,
	"daE_TK_Draw__FP10e_tk_class":7,
	"other_bg_check__FP10e_tk_classP10fopAc_ac_c":8,
	"pl_y_check__FP10e_tk_class":9,
	"pl_check__FP10e_tk_classfs":10,
	"damage_check__FP10e_tk_class":11,
	"way_bg_check__FP10e_tk_classf":12,
	"e_tk_wait_0__FP10e_tk_class":13,
	"e_tk_find__FP10e_tk_class":14,
	"e_tk_attack__FP10e_tk_class":15,
	"e_tk_pathswim__FP10e_tk_class":16,
	"e_tk_s_damage__FP10e_tk_class":17,
	"e_tk_damage__FP10e_tk_class":18,
	"action__FP10e_tk_class":19,
	"daE_TK_Execute__FP10e_tk_class":20,
	"daE_TK_IsDelete__FP10e_tk_class":21,
	"daE_TK_Delete__FP10e_tk_class":22,
	"useHeapInit__FP10fopAc_ac_c":23,
	"daE_TK_Create__FP10fopAc_ac_c":24,
	"__dt__8cM3dGSphFv":25,
	"__dt__8cM3dGAabFv":26,
	"__dt__12dBgS_ObjAcchFv":27,
	"__dt__12daE_TK_HIO_cFv":28,
	"__sinit_d_a_e_tk_cpp":29,
	"func_807BA248":30,
	"func_807BA250":31,
	"_ctors":32,
	"_dtors":33,
	"lit_3762":34,
	"lit_3763":35,
	"lit_3764":36,
	"lit_3765":37,
	"lit_3766":38,
	"lit_3780":39,
	"lit_3781":40,
	"lit_3820":41,
	"lit_3830":42,
	"lit_3897":43,
	"lit_3898":44,
	"lit_3937":45,
	"lit_3938":46,
	"lit_3939":47,
	"lit_3940":48,
	"lit_3941":49,
	"lit_3942":50,
	"lit_4017":51,
	"lit_4018":52,
	"lit_4019":53,
	"lit_4020":54,
	"lit_4021":55,
	"lit_4022":56,
	"lit_4066":57,
	"lit_4183":58,
	"lit_4184":59,
	"lit_4354":60,
	"lit_4355":61,
	"lit_4356":62,
	"lit_4357":63,
	"lit_4358":64,
	"lit_4359":65,
	"lit_4487":66,
	"d_a_e_tk__stringBase0":67,
	"lit_4023":68,
	"lit_4185":69,
	"cc_sph_src":70,
	"l_daE_TK_Method":71,
	"g_profile_E_TK":72,
	"__vt__8cM3dGSph":73,
	"__vt__8cM3dGAab":74,
	"__vt__12dBgS_ObjAcch":75,
	"__vt__12daE_TK_HIO_c":76,
	"__global_destructor_chain":77,
	"data_807BA438":78,
	"lit_3757":79,
	"l_HIO":80,
}


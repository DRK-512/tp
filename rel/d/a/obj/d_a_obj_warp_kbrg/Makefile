#
# Generated By: dol2asm
#

M677_TARGET := $(BUILD_DIR)/rel/d/a/obj/d_a_obj_warp_kbrg.plf
M677_LDSCRIPT := $(BUILD_DIR)/rel/d/a/obj/d_a_obj_warp_kbrg.lcf
M677_MAP := $(BUILD_DIR)/rel/d/a/obj/d_a_obj_warp_kbrg.map

M677_CPP_FILES := \
	rel/executor.cpp \
	rel/d/a/obj/d_a_obj_warp_kbrg/unknown_translation_unit_bss.cpp \
	rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg.cpp \

M677_O_FILES := \
	$(BUILD_DIR)/rel/executor.o \
	$(BUILD_DIR)/rel/d/a/obj/d_a_obj_warp_kbrg/unknown_translation_unit_bss.o \
	$(BUILD_DIR)/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg.o \

M677_LIBS := \

M677_CFLAGS := \
	-sdata 0 \
	-sdata2 0 \

M677_LDFLAGS := \
	-nodefaults \
	-fp hard \
	-proc gekko \
	-linkmode moreram \
	-sdata 0 \
	-sdata2 0 \
	-m _prolog \
	-lcf $(M677_LDSCRIPT) \
	-unused -map $(M677_MAP) \
	-w off \

$(M677_TARGET): $(M677_O_FILES) $(M677_LIBS)
	@echo [677] creating $(M677_TARGET)
	@echo $(M677_LIBS) $(M677_O_FILES) > build/M677_ofiles
	@python3 tools/lcf.py rel 677 --output $(M677_LDSCRIPT)
	@$(LD) -opt_partial -strip_partial $(M677_LDFLAGS) -o $(M677_TARGET) @build/M677_ofiles

$(BUILD_DIR)/rel/d/a/obj/d_a_obj_warp_kbrg/%.o: rel/d/a/obj/d_a_obj_warp_kbrg/%.cpp $(BUILD_DIR)/rel/d/a/obj/d_a_obj_warp_kbrg/%.d
	@echo [677] building $@
	@mkdir -p $(@D)
	@$(ICONV) -f UTF-8 -t CP932 < $< > $(basename $@).cpp
	@$(CC) $(CFLAGS) $(M677_CFLAGS) $(DEPFLAGS) -c -o $(dir $@) $(basename $@).cpp
	@if [ -z '$(DISABLE_DEPS)' ]; then tools/transform-dep.py '$(basename $@).d' '$(basename $@).d'; touch -c $@; fi

ifndef DISABLE_DEPS
M677_D_FILES := $(M677_O_FILES:.o=.d)
$(M677_D_FILES):
include $(wildcard $(M677_D_FILES))
endif



#
# Generated By: dol2asm
#

M585_TARGET := $(BUILD_DIR)/rel/d/a/obj/d_a_obj_oiltubo.plf
M585_LDSCRIPT := $(BUILD_DIR)/rel/d/a/obj/d_a_obj_oiltubo.lcf
M585_MAP := $(BUILD_DIR)/rel/d/a/obj/d_a_obj_oiltubo.map

M585_CPP_FILES := \
	rel/executor.cpp \
	rel/d/a/obj/d_a_obj_oiltubo/d_a_obj_oiltubo.cpp \

M585_O_FILES := \
	$(BUILD_DIR)/rel/executor.o \
	$(BUILD_DIR)/rel/d/a/obj/d_a_obj_oiltubo/d_a_obj_oiltubo.o \

M585_LIBS := \

M585_CFLAGS := \
	-sdata 0 \
	-sdata2 0 \

M585_LDFLAGS := \
	-nodefaults \
	-fp hard \
	-proc gekko \
	-linkmode moreram \
	-sdata 0 \
	-sdata2 0 \
	-m _prolog \
	-lcf $(M585_LDSCRIPT) \
	-unused -map $(M585_MAP) \
	-w off \

$(M585_TARGET): $(M585_O_FILES) $(M585_LIBS)
	@echo [585] creating $(M585_TARGET)
	@echo $(M585_LIBS) $(M585_O_FILES) > build/M585_ofiles
	@python3 tools/lcf.py rel 585 --output $(M585_LDSCRIPT)
	@$(LD) -opt_partial -strip_partial $(M585_LDFLAGS) -o $(M585_TARGET) @build/M585_ofiles

$(BUILD_DIR)/rel/d/a/obj/d_a_obj_oiltubo/%.o: rel/d/a/obj/d_a_obj_oiltubo/%.cpp $(BUILD_DIR)/rel/d/a/obj/d_a_obj_oiltubo/%.d
	@echo [585] building $@
	@mkdir -p $(@D)
	@$(ICONV) -f UTF-8 -t CP932 < $< > $(basename $@).cpp
	@$(CC) $(CFLAGS) $(M585_CFLAGS) $(DEPFLAGS) -c -o $(dir $@) $(basename $@).cpp
	@if [ -z '$(DISABLE_DEPS)' ]; then tools/transform-dep.py '$(basename $@).d' '$(basename $@).d'; touch -c $@; fi

ifndef DISABLE_DEPS
M585_D_FILES := $(M585_O_FILES:.o=.d)
$(M585_D_FILES):
include $(wildcard $(M585_D_FILES))
endif



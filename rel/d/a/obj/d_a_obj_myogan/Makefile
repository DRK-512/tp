#
# Generated By: dol2asm
#

M579_TARGET := $(BUILD_DIR)/rel/d/a/obj/d_a_obj_myogan.plf
M579_LDSCRIPT := $(BUILD_DIR)/rel/d/a/obj/d_a_obj_myogan.lcf
M579_MAP := $(BUILD_DIR)/rel/d/a/obj/d_a_obj_myogan.map

M579_CPP_FILES := \
	rel/executor.cpp \
	rel/global_destructor_chain.cpp \
	rel/d/a/obj/d_a_obj_myogan/d_a_obj_myogan.cpp \

M579_O_FILES := \
	$(BUILD_DIR)/rel/executor.o \
	$(BUILD_DIR)/rel/global_destructor_chain.o \
	$(BUILD_DIR)/rel/d/a/obj/d_a_obj_myogan/d_a_obj_myogan.o \

M579_LIBS := \

M579_CFLAGS := \
	-sdata 0 \
	-sdata2 0 \

M579_LDFLAGS := \
	-nodefaults \
	-fp hard \
	-proc gekko \
	-linkmode moreram \
	-sdata 0 \
	-sdata2 0 \
	-m _prolog \
	-lcf $(M579_LDSCRIPT) \
	-unused -map $(M579_MAP) \
	-w off \

$(M579_TARGET): $(M579_O_FILES) $(M579_LIBS)
	@echo [579] creating $(M579_TARGET)
	@echo $(M579_LIBS) $(M579_O_FILES) > build/M579_ofiles
	@python3 tools/lcf.py rel 579 --output $(M579_LDSCRIPT)
	@$(LD) -opt_partial -strip_partial $(M579_LDFLAGS) -o $(M579_TARGET) @build/M579_ofiles

$(BUILD_DIR)/rel/d/a/obj/d_a_obj_myogan/%.o: rel/d/a/obj/d_a_obj_myogan/%.cpp $(BUILD_DIR)/rel/d/a/obj/d_a_obj_myogan/%.d
	@echo [579] building $@
	@mkdir -p $(@D)
	@$(ICONV) -f UTF-8 -t CP932 < $< > $(basename $@).cpp
	@$(CC) $(CFLAGS) $(M579_CFLAGS) $(DEPFLAGS) -c -o $(dir $@) $(basename $@).cpp
	@if [ -z '$(DISABLE_DEPS)' ]; then tools/transform-dep.py '$(basename $@).d' '$(basename $@).d'; touch -c $@; fi

ifndef DISABLE_DEPS
M579_D_FILES := $(M579_O_FILES:.o=.d)
$(M579_D_FILES):
include $(wildcard $(M579_D_FILES))
endif



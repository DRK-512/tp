#
# Generated By: dol2asm
#

M160_TARGET := $(BUILD_DIR)/rel/d/a/d_a_bullet.plf
M160_LDSCRIPT := $(BUILD_DIR)/rel/d/a/d_a_bullet.lcf
M160_MAP := $(BUILD_DIR)/rel/d/a/d_a_bullet.map

M160_CPP_FILES := \
	rel/executor.cpp \
	rel/global_destructor_chain.cpp \
	rel/d/a/d_a_bullet/d_a_bullet.cpp \

M160_O_FILES := \
	$(BUILD_DIR)/rel/executor.o \
	$(BUILD_DIR)/rel/global_destructor_chain.o \
	$(BUILD_DIR)/rel/d/a/d_a_bullet/d_a_bullet.o \

M160_LIBS := \

M160_CFLAGS := \
	-sdata 0 \
	-sdata2 0 \

M160_LDFLAGS := \
	-nodefaults \
	-fp hard \
	-proc gekko \
	-linkmode moreram \
	-sdata 0 \
	-sdata2 0 \
	-m _prolog \
	-lcf $(M160_LDSCRIPT) \
	-unused -map $(M160_MAP) \
	-w off \

$(M160_TARGET): $(M160_O_FILES) $(M160_LIBS)
	@echo [160] creating $(M160_TARGET)
	@echo $(M160_LIBS) $(M160_O_FILES) > build/M160_ofiles
	@python3 tools/lcf.py rel 160 --output $(M160_LDSCRIPT)
	@$(LD) -opt_partial -strip_partial $(M160_LDFLAGS) -o $(M160_TARGET) @build/M160_ofiles

$(BUILD_DIR)/rel/d/a/d_a_bullet/%.o: rel/d/a/d_a_bullet/%.cpp $(BUILD_DIR)/rel/d/a/d_a_bullet/%.d
	@echo [160] building $@
	@mkdir -p $(@D)
	@$(ICONV) -f UTF-8 -t CP932 < $< > $(basename $@).cpp
	@$(CC) $(CFLAGS) $(M160_CFLAGS) $(DEPFLAGS) -c -o $(dir $@) $(basename $@).cpp
	@if [ -z '$(DISABLE_DEPS)' ]; then tools/transform-dep.py '$(basename $@).d' '$(basename $@).d'; touch -c $@; fi

ifndef DISABLE_DEPS
M160_D_FILES := $(M160_O_FILES:.o=.d)
$(M160_D_FILES):
include $(wildcard $(M160_D_FILES))
endif



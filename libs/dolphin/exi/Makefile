#
# Generated By: dol2asm
#

LIBEXI_A_CPP_FILES := \
	libs/dolphin/exi/EXIBios.c \
	libs/dolphin/exi/EXIUart.c \

LIBEXI_A_O_FILES := \
	$(BUILD_DIR)/libs/dolphin/exi/EXIBios.o \
	$(BUILD_DIR)/libs/dolphin/exi/EXIUart.o \

LIBEXI_A_CFLAGS = \
	-Cpp_exceptions off \
	-proc gekko \
	-fp hard \
	-fp_contract on \
	-nodefaults \
	-str reuse \
	-inline auto \
	-RTTI off \
	-maxerrors 5 \
	-enum int $(INCLUDES) \
	$(if $(filter %EXIBios.c, $<),-O3,-O4),p \
	-lang=c \

LIBEXI_A_LDFLAGS := \
	-nodefaults \
	-fp hard \
	-proc gekko \
	-linkmode moreram \

$(BUILD_DIR)/libexi.a: $(LIBEXI_A_O_FILES)
	@echo linking... $(BUILD_DIR)/libexi.a
	@echo $(LIBEXI_A_O_FILES) > build/LIBEXI_A_ofiles
	@$(LD) -xm l $(LIBEXI_A_LDFLAGS) -o $(BUILD_DIR)/libexi.a @build/LIBEXI_A_ofiles

$(BUILD_DIR)/libs/dolphin/exi/%.o: libs/dolphin/exi/%.c $(BUILD_DIR)/libs/dolphin/exi/%.d
	@mkdir -p $(@D)
	@echo building... $<
	@$(ICONV) -f UTF-8 -t CP932 < $< > $(basename $@).c
	@$(DOLPHIN_LIB_CC) $(LIBEXI_A_CFLAGS) $(DEPFLAGS) -c -o $(dir $@) $(basename $@).c
	@if [ -z '$(DISABLE_DEPS)' ]; then tools/transform-dep.py '$(basename $@).d' '$(basename $@).d'; touch -c $@; fi

ifndef DISABLE_DEPS
LIBEXI_A_D_FILES := $(LIBEXI_A_O_FILES:.o=.d)
$(LIBEXI_A_D_FILES):
include $(wildcard $(LIBEXI_A_D_FILES))
endif


#
# Generated By: dol2asm
#

LIBGX_A_CPP_FILES := \
	libs/dolphin/gx/GXInit.c \
	libs/dolphin/gx/GXFifo.c \
	libs/dolphin/gx/GXAttr.c \
	libs/dolphin/gx/GXMisc.c \
	libs/dolphin/gx/GXGeometry.c \
	libs/dolphin/gx/GXFrameBuf.c \
	libs/dolphin/gx/GXLight.c \
	libs/dolphin/gx/GXTexture.c \
	libs/dolphin/gx/GXBump.c \
	libs/dolphin/gx/GXTev.c \
	libs/dolphin/gx/GXPixel.c \
	libs/dolphin/gx/GXDraw.c \
	libs/dolphin/gx/GXDisplayList.c \
	libs/dolphin/gx/GXTransform.c \
	libs/dolphin/gx/GXPerf.c \

LIBGX_A_O_FILES := \
	$(BUILD_DIR)/libs/dolphin/gx/GXInit.o \
	$(BUILD_DIR)/libs/dolphin/gx/GXFifo.o \
	$(BUILD_DIR)/libs/dolphin/gx/GXAttr.o \
	$(BUILD_DIR)/libs/dolphin/gx/GXMisc.o \
	$(BUILD_DIR)/libs/dolphin/gx/GXGeometry.o \
	$(BUILD_DIR)/libs/dolphin/gx/GXFrameBuf.o \
	$(BUILD_DIR)/libs/dolphin/gx/GXLight.o \
	$(BUILD_DIR)/libs/dolphin/gx/GXTexture.o \
	$(BUILD_DIR)/libs/dolphin/gx/GXBump.o \
	$(BUILD_DIR)/libs/dolphin/gx/GXTev.o \
	$(BUILD_DIR)/libs/dolphin/gx/GXPixel.o \
	$(BUILD_DIR)/libs/dolphin/gx/GXDraw.o \
	$(BUILD_DIR)/libs/dolphin/gx/GXDisplayList.o \
	$(BUILD_DIR)/libs/dolphin/gx/GXTransform.o \
	$(BUILD_DIR)/libs/dolphin/gx/GXPerf.o \

LIBGX_A_CFLAGS := \
	-O4,p \
	-lang=c \

LIBGX_A_LDFLAGS := \
	-nodefaults \
	-fp hard \
	-proc gekko \
	-linkmode moreram \

$(BUILD_DIR)/libgx.a: $(LIBGX_A_O_FILES)
	@echo linking... $(BUILD_DIR)/libgx.a
	@echo $(LIBGX_A_O_FILES) > build/LIBGX_A_ofiles
	@$(LD) -xm l $(LIBGX_A_LDFLAGS) -o $(BUILD_DIR)/libgx.a @build/LIBGX_A_ofiles

$(BUILD_DIR)/libs/dolphin/gx/%.o: libs/dolphin/gx/%.c $(BUILD_DIR)/libs/dolphin/gx/%.d
	@mkdir -p $(@D)
	@echo building... $<
	@$(ICONV) -f UTF-8 -t CP932 < $< > $(basename $@).c
	@$(DOLPHIN_LIB_CC) $(CFLAGS) $(LIBGX_A_CFLAGS) $(DEPFLAGS) -c -o $(dir $@) $(basename $@).c
	@if [ -z '$(DISABLE_DEPS)' ]; then tools/transform-dep.py '$(basename $@).d' '$(basename $@).d'; touch -c $@; fi

ifndef DISABLE_DEPS
LIBGX_A_D_FILES := $(LIBGX_A_O_FILES:.o=.d)
$(LIBGX_A_D_FILES):
include $(wildcard $(LIBGX_A_D_FILES))
endif


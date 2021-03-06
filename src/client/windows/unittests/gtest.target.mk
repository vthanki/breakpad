# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := gtest
DEFS_Debug := \
	'-DNO_HEAPCHECKER' \
	'-D_VARIADIC_MAX=10' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-pthread \
	-fno-exceptions \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-D_FILE_OFFSET_BITS=64 \
	-fvisibility=hidden \
	-fno-strict-aliasing \
	-O0 \
	-g

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-frtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden

INCS_Debug := \
	-Itesting/include \
	-Itesting/gtest \
	-Itesting/gtest/include

DEFS_Release := \
	'-DNO_HEAPCHECKER' \
	'-D_VARIADIC_MAX=10' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DOFFICIAL_BUILD'

# Flags passed to all source files.
CFLAGS_Release := \
	-pthread \
	-fno-exceptions \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-D_FILE_OFFSET_BITS=64 \
	-fvisibility=hidden \
	-fno-strict-aliasing \
	-O2 \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-frtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden

INCS_Release := \
	-Itesting/include \
	-Itesting/gtest \
	-Itesting/gtest/include

OBJS := \
	$(obj).target/$(TARGET)/testing/gtest/src/gtest-all.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-Wl,-z,noexecstack \
	-rdynamic

LDFLAGS_Release := \
	-pthread \
	-Wl,-z,noexecstack \
	-Wl,--gc-sections

LIBS :=

$(obj).target/client/windows/unittests/libgtest.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/client/windows/unittests/libgtest.a: LIBS := $(LIBS)
$(obj).target/client/windows/unittests/libgtest.a: TOOLSET := $(TOOLSET)
$(obj).target/client/windows/unittests/libgtest.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink_thin)

all_deps += $(obj).target/client/windows/unittests/libgtest.a
# Add target alias
.PHONY: gtest
gtest: $(obj).target/client/windows/unittests/libgtest.a

# Add target alias to "all" target.
.PHONY: all
all: gtest


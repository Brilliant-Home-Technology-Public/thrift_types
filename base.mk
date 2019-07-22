# General
THRIFT_DIR ?= thrift_types

SOURCES_DIR ?= $(CURDIR)/$(THRIFT_DIR)
THIRDPARTY_BINARIES_DIR ?= $(CURDIR)/thirdparty-binaries

SOURCES := $(shell cd $(SOURCES_DIR); find . -type f -name '*.thrift')
BUILD_PLATFORM ?= $(shell $(THIRDPARTY_BINARIES_DIR)/tools/platform_name.sh)
THRIFT_COMPILER ?= $(THIRDPARTY_BINARIES_DIR)/pre-built/$(BUILD_PLATFORM)/thrift/bin/thrift
CPP_OUTPUT_DIR ?= $(CURDIR)/main_app/$(THRIFT_DIR)

# C++ specific
CPP_OUTPUT_DIR_DUMMY_TARGET := $(CPP_OUTPUT_DIR)/.dummy_target
CPP_DUMMY_TARGETS := $(SOURCES:./%.thrift=$(CPP_OUTPUT_DIR)/%.cpp_dummy_target)
CPP_CFLAGS = --gen cpp:include_prefix

# Disabling builtin rules to make make faster
MAKEFLAGS += --no-builtin-rules
.SUFFIXES:

clean:
	rm -rf $(CPP_OUTPUT_DIR)

cpp_gen: $(CPP_DUMMY_TARGETS)
	@echo Finished making cpp sources
	$(THRIFT_DIR)/fix_cpp_imports.sh $(CPP_OUTPUT_DIR)

$(CPP_OUTPUT_DIR_DUMMY_TARGET):
	mkdir -p $(dir $@)
	touch $@

# CPP
$(CPP_OUTPUT_DIR)/%.cpp_dummy_target: $(THRIFT_DIR)/%.thrift $(CPP_OUTPUT_DIR_DUMMY_TARGET) $(THRIFT_COMPILER)
	@echo Making cpp source for $<
	mkdir -p $(CPP_OUTPUT_DIR)/$(subst $(THRIFT_DIR)/,,$(dir $<))
	$(THRIFT_COMPILER) $(CPP_CFLAGS) -out $(CPP_OUTPUT_DIR)/$(subst $(THRIFT_DIR)/,,$(dir $<)) $<
	@touch $@


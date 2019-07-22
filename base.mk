# General
THRIFT_DIR ?= thrift_types

SOURCES_DIR ?= $(CURDIR)/$(THRIFT_DIR)
THIRDPARTY_BINARIES_DIR ?= $(CURDIR)/thirdparty-binaries

SOURCES := $(shell cd $(SOURCES_DIR); find . -type f -name '*.thrift')
BUILD_PLATFORM ?= $(shell $(THIRDPARTY_BINARIES_DIR)/tools/platform_name.sh)
THRIFT_COMPILER ?= $(THIRDPARTY_BINARIES_DIR)/pre-built/$(BUILD_PLATFORM)/thrift/bin/thrift
CPP_OUTPUT_DIR ?= $(CURDIR)/main_app/$(THRIFT_DIR)
JAVA_OUTPUT_DIR ?= $(CURDIR)/Brilliant/brl/src/main/java/$(THRIFT_DIR)

# C++ specific
CPP_OUTPUT_DIR_DUMMY_TARGET := $(CPP_OUTPUT_DIR)/.dummy_target
CPP_DUMMY_TARGETS := $(SOURCES:./%.thrift=$(CPP_OUTPUT_DIR)/%.cpp_dummy_target)
CPP_CFLAGS = --gen cpp:include_prefix
# Java specific
JAVA_OUTPUT_DIR_DUMMY_TARGET := $(JAVA_OUTPUT_DIR)/.dummy_target
JAVA_CFLAGS = -out $(dir $(JAVA_OUTPUT_DIR)) --gen java:android,generated_annotations=suppress
JAVA_DUMMY_TARGETS := $(SOURCES:./%.thrift=$(JAVA_OUTPUT_DIR)/%.java_dummy_target)

# Disabling builtin rules to make make faster
MAKEFLAGS += --no-builtin-rules
.SUFFIXES:

clean:
	rm -rf $(CPP_OUTPUT_DIR) $(JAVA_OUTPUT_DIR)

cpp_gen: $(CPP_DUMMY_TARGETS)
	@echo Finished making cpp sources
	$(THRIFT_DIR)/fix_cpp_imports.sh $(CPP_OUTPUT_DIR)

java_gen: $(JAVA_DUMMY_TARGETS)
	@echo Finished making java sources

$(CPP_OUTPUT_DIR_DUMMY_TARGET) $(JAVA_OUTPUT_DIR_DUMMY_TARGET):
	mkdir -p $(dir $@)
	touch $@

# CPP
$(CPP_OUTPUT_DIR)/%.cpp_dummy_target: $(THRIFT_DIR)/%.thrift $(CPP_OUTPUT_DIR_DUMMY_TARGET) $(THRIFT_COMPILER)
	@echo Making cpp source for $<
	mkdir -p $(CPP_OUTPUT_DIR)/$(subst $(THRIFT_DIR)/,,$(dir $<))
	$(THRIFT_COMPILER) $(CPP_CFLAGS) -out $(CPP_OUTPUT_DIR)/$(subst $(THRIFT_DIR)/,,$(dir $<)) $<
	@touch $@

# Java
$(JAVA_OUTPUT_DIR)/%.java_dummy_target: $(THRIFT_DIR)/%.thrift $(JAVA_OUTPUT_DIR_DUMMY_TARGET) $(THRIFT_COMPILER)
	@echo Making java source for $<
	mkdir -p $(JAVA_OUTPUT_DIR)/$(subst $(THRIFT_DIR)/,,$(dir $<))
	$(THRIFT_COMPILER) $(JAVA_CFLAGS) -out $(JAVA_OUTPUT_DIR)/$(subst $(THRIFT_DIR)/,,$(dir $<)) $<
	@touch $@

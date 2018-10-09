# General
THRIFT_DIR ?= thrift_types
SOURCES := $(shell cd $(CURDIR)/$(THRIFT_DIR); find . -type f -name '*.thrift')
BUILD_PLATFORM := $(shell $(CURDIR)/thirdparty-binaries/tools/platform_name.sh)
THRIFT_COMPILER = $(CURDIR)/thirdparty-binaries/pre-built/$(BUILD_PLATFORM)/thrift/bin/thrift
PY_OUTPUT_DIR ?= $(CURDIR)/site-packages/$(THRIFT_DIR)
CPP_OUTPUT_DIR ?= $(CURDIR)/main_app/$(THRIFT_DIR)
SWIFT_OUTPUT_DIR ?= $(CURDIR)/local-pods/BRL/$(THRIFT_DIR)
JAVA_OUTPUT_DIR ?= $(CURDIR)/Brilliant/brl/src/main/java/$(THRIFT_DIR)

# Python specific
PY_OUTPUT_DIR_DUMMY_TARGET := $(PY_OUTPUT_DIR)/.dummy_target
PY_DUMMY_TARGETS := $(SOURCES:./%.thrift=$(PY_OUTPUT_DIR)/%.py_dummy_target)
# The python thrift compiler automatically creates a thrift_types subdirectory even when we
# override the output directory with -out
PY_CFLAGS = -out $(dir $(PY_OUTPUT_DIR)) --gen py
TWO_TO_THREE = python3 -m lib2to3
TTTFLAGS = --write --no-diffs --nobackups
# C++ specific
CPP_OUTPUT_DIR_DUMMY_TARGET := $(CPP_OUTPUT_DIR)/.dummy_target
CPP_DUMMY_TARGETS := $(SOURCES:./%.thrift=$(CPP_OUTPUT_DIR)/%.cpp_dummy_target)
CPP_CFLAGS = --gen cpp:include_prefix
# Swift specific
SWIFT_OUTPUT_DIR_DUMMY_TARGET := $(SWIFT_OUTPUT_DIR)/.dummy_target
SWIFT_CFLAGS = --gen swift
SWIFT_DUMMY_TARGETS := $(SOURCES:./%.thrift=$(SWIFT_OUTPUT_DIR)/%.swift_dummy_target)
# Java specific
JAVA_OUTPUT_DIR_DUMMY_TARGET := $(JAVA_OUTPUT_DIR)/.dummy_target
JAVA_CFLAGS = -out $(dir $(JAVA_OUTPUT_DIR)) --gen java:android,generated_annotations=suppress
JAVA_DUMMY_TARGETS := $(SOURCES:./%.thrift=$(JAVA_OUTPUT_DIR)/%.java_dummy_target)

# Disabling builtin rules to make make faster
MAKEFLAGS += --no-builtin-rules
.SUFFIXES:

clean:
	rm -rf $(PY_OUTPUT_DIR) $(CPP_OUTPUT_DIR) $(SWIFT_OUTPUT_DIR) $(JAVA_OUTPUT_DIR)

py_gen: $(PY_DUMMY_TARGETS)
	@echo Finished making py sources

cpp_gen: $(CPP_DUMMY_TARGETS)
	@echo Finished making cpp sources
	$(THRIFT_DIR)/fix_cpp_imports.sh $(CPP_OUTPUT_DIR)

swift_gen: $(SWIFT_DUMMY_TARGETS)
	@echo Finished making swift sources

java_gen: $(JAVA_DUMMY_TARGETS)
	@echo Finished making java sources

$(PY_OUTPUT_DIR_DUMMY_TARGET) $(CPP_OUTPUT_DIR_DUMMY_TARGET) $(SWIFT_OUTPUT_DIR_DUMMY_TARGET) $(JAVA_OUTPUT_DIR_DUMMY_TARGET):
	mkdir -p $(dir $@)
	touch $@

# Python
$(PY_OUTPUT_DIR)/%.py_dummy_target: $(THRIFT_DIR)/%.thrift $(PY_OUTPUT_DIR_DUMMY_TARGET) $(THRIFT_COMPILER)
	@echo Making python source for $<
	$(THRIFT_COMPILER) $(PY_CFLAGS) $<
	$(TWO_TO_THREE) $(TTTFLAGS) $(PY_OUTPUT_DIR)/$(subst $(THRIFT_DIR)/,,$(basename $<))
	@touch $@

# CPP
$(CPP_OUTPUT_DIR)/%.cpp_dummy_target: $(THRIFT_DIR)/%.thrift $(CPP_OUTPUT_DIR_DUMMY_TARGET) $(THRIFT_COMPILER)
	@echo Making cpp source for $<
	mkdir -p $(CPP_OUTPUT_DIR)/$(subst $(THRIFT_DIR)/,,$(dir $<))
	$(THRIFT_COMPILER) $(CPP_CFLAGS) -out $(CPP_OUTPUT_DIR)/$(subst $(THRIFT_DIR)/,,$(dir $<)) $<
	@touch $@

# Swift
$(SWIFT_OUTPUT_DIR)/%.swift_dummy_target: $(THRIFT_DIR)/%.thrift $(SWIFT_OUTPUT_DIR_DUMMY_TARGET) $(THRIFT_COMPILER)
	@echo Making swift source for $<
	mkdir -p $(SWIFT_OUTPUT_DIR)/$(subst $(THRIFT_DIR)/,,$(dir $<))
	$(THRIFT_COMPILER) $(SWIFT_CFLAGS) -out $(SWIFT_OUTPUT_DIR)/$(subst $(THRIFT_DIR)/,,$(dir $<)) $<
	@touch $@

# Java
$(JAVA_OUTPUT_DIR)/%.java_dummy_target: $(THRIFT_DIR)/%.thrift $(JAVA_OUTPUT_DIR_DUMMY_TARGET) $(THRIFT_COMPILER)
	@echo Making java source for $<
	mkdir -p $(JAVA_OUTPUT_DIR)/$(subst $(THRIFT_DIR)/,,$(dir $<))
	$(THRIFT_COMPILER) $(JAVA_CFLAGS) -out $(JAVA_OUTPUT_DIR)/$(subst $(THRIFT_DIR)/,,$(dir $<)) $<
	@touch $@

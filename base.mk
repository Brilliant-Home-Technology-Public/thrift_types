# General
THRIFT_DIR ?= thrift_types
SOURCES := $(shell cd $(CURDIR)/$(THRIFT_DIR); find . -type f -name '*.thrift')
BUILD_PLATFORM := $(shell $(CURDIR)/thirdparty-binaries/tools/platform_name.sh)
THRIFT_COMPILER = $(CURDIR)/thirdparty-binaries/pre-built/$(BUILD_PLATFORM)/thrift/bin/thrift
PY_OUTPUT_DIR ?= $(CURDIR)/site-packages/$(THRIFT_DIR)
CPP_OUTPUT_DIR ?= $(CURDIR)/main_app/$(THRIFT_DIR)
OBJC_OUTPUT_DIR ?= $(CURDIR)/ios_app/DemoApp/DemoApp/$(THRIFT_DIR)
SWIFT_OUTPUT_DIR ?= $(CURDIR)/local-pods/BRL/$(THRIFT_DIR)

# Python specific
PY_OUTPUT_DIR_DUMMY_TARGET := $(PY_OUTPUT_DIR)/.dummy_target
PY_DUMMY_TARGETS := $(SOURCES:./%.thrift=$(PY_OUTPUT_DIR)/%.py_dummy_target)
# The python thrift compiler automatically creates a thrift_types subdirectory even when we
# override the output directory with -out
PY_CFLAGS = -out $(dir $(PY_OUTPUT_DIR)) --gen py
TWO_TO_THREE = python -m lib2to3
TTTFLAGS = --write --no-diffs --nobackups
# C++ specific
CPP_OUTPUT_DIR_DUMMY_TARGET := $(CPP_OUTPUT_DIR)/.dummy_target
CPP_DUMMY_TARGETS := $(SOURCES:./%.thrift=$(CPP_OUTPUT_DIR)/%.cpp_dummy_target)
CPP_CFLAGS = -out $(CPP_OUTPUT_DIR) --gen cpp
# Objective-C specific
OBJC_OUTPUT_DIR_DUMMY_TARGET := $(OBJC_OUTPUT_DIR)/.dummy_target
OBJC_CFLAGS = -out $(OBJC_OUTPUT_DIR) --gen cocoa
OBJC_DUMMY_TARGETS := $(SOURCES:./%.thrift=$(OBJC_OUTPUT_DIR)/%.objc_dummy_target)
# Swift specific
SWIFT_OUTPUT_DIR_DUMMY_TARGET := $(SWIFT_OUTPUT_DIR)/.dummy_target
SWIFT_CFLAGS = -out $(SWIFT_OUTPUT_DIR) --gen swift
SWIFT_DUMMY_TARGETS := $(SOURCES:./%.thrift=$(SWIFT_OUTPUT_DIR)/%.swift_dummy_target)

# Disabling builtin rules to make make faster
MAKEFLAGS += --no-builtin-rules
.SUFFIXES:

clean:
	rm -rf $(PY_OUTPUT_DIR) $(CPP_OUTPUT_DIR) $(OBJC_OUTPUT_DIR) $(SWIFT_OUTPUT_DIR)

py_gen: $(PY_DUMMY_TARGETS)
	@echo Finished making py sources

cpp_gen: $(CPP_DUMMY_TARGETS)
	@echo Finished making cpp sources

objc_gen: $(OBJC_DUMMY_TARGETS)
	@echo Finished making objective-c sources

swift_gen: $(SWIFT_DUMMY_TARGETS)
	@echo Finished making swift sources

$(PY_OUTPUT_DIR_DUMMY_TARGET) $(CPP_OUTPUT_DIR_DUMMY_TARGET) $(OBJC_OUTPUT_DIR_DUMMY_TARGET) $(SWIFT_OUTPUT_DIR_DUMMY_TARGET):
	mkdir -p $(dir $@)
	touch $@

# Python
$(PY_OUTPUT_DIR)/%.py_dummy_target: $(THRIFT_DIR)/%.thrift $(PY_OUTPUT_DIR_DUMMY_TARGET)
	@echo Making python source for $<
	$(THRIFT_COMPILER) $(PY_CFLAGS) $<
	$(TWO_TO_THREE) $(TTTFLAGS) $(PY_OUTPUT_DIR)/$(subst $(THRIFT_DIR)/,,$(basename $<))
	@touch $@

# CPP
$(CPP_OUTPUT_DIR)/%.cpp_dummy_target: $(THRIFT_DIR)/%.thrift $(CPP_OUTPUT_DIR_DUMMY_TARGET)
	@echo Making cpp source for $<
	$(THRIFT_COMPILER) $(CPP_CFLAGS) $<
	@touch $@

# Objective-C
$(OBJC_OUTPUT_DIR)/%.objc_dummy_target: $(THRIFT_DIR)/%.thrift $(OBJC_OUTPUT_DIR_DUMMY_TARGET)
	$(THRIFT_COMPILER) $(OBJC_CFLAGS) $<
	@touch $@

# Swift
$(SWIFT_OUTPUT_DIR)/%.swift_dummy_target: $(THRIFT_DIR)/%.thrift $(SWIFT_OUTPUT_DIR_DUMMY_TARGET)
	$(THRIFT_COMPILER) $(SWIFT_CFLAGS) $<
	@touch $@

PWD = $(shell pwd)
REPO_ROOT = $(abspath $(PWD)/..)


.DEFAULT_GOAL := thrift_types


.PHONY = clean_all clean_swift_gen test_project_compilation clean_project_compilation


#####################################
# Thrift generation of Python files #
#####################################
SOURCES := $(shell cd $(REPO_ROOT); find . -type f -name '*.thrift')
SWIFT_OUTPUT_DIR ?= $(CURDIR)/thrift_types
THIRDPARTY_BINARIES_DIR ?= $(abspath $(REPO_ROOT)/..)/thirdparty-binaries
THRIFT_COMPILER ?= $(THIRDPARTY_BINARIES_DIR)/pre-built/osx/thrift/bin/thrift

# Swift specific
SWIFT_CFLAGS = --gen swift
SWIFT_DUMMY_TARGETS := $(SOURCES:./%.thrift=$(SWIFT_OUTPUT_DIR)/%.swift_dummy_target)

# Disabling builtin rules to make make faster
MAKEFLAGS += --no-builtin-rules
.SUFFIXES:

$(SWIFT_OUTPUT_DIR_DUMMY_TARGET):
	mkdir -p $(dir %@)
	touch $@

# Swift
$(SWIFT_OUTPUT_DIR)/%.swift_dummy_target: $(REPO_ROOT)/%.thrift $(SWIFT_OUTPUT_DIR_DUMMY_TARGET) $(THRIFT_COMPILER)
	@echo Making swift source for $<
	mkdir -p $(SWIFT_OUTPUT_DIR)/$(subst $(REPO_ROOT)/,,$(dir $<))
	$(THRIFT_COMPILER) $(SWIFT_CFLAGS) -out $(SWIFT_OUTPUT_DIR)/$(subst $(REPO_ROOT)/,,$(dir $<)) $<
	@touch $@

## Generate the swift files from thrift
thrift_types: $(SWIFT_DUMMY_TARGETS)
	@echo Finished making swift sources

clean_swift_gen:
	rm -rf $(SWIFT_OUTPUT_DIR)/*


#########################################
# Targets for building and Swift Module #
#########################################
test_project_compilation: thrift_types clean_project_compilation
	xcodebuild build -project BRL.xcodeproj

clean_project_compilation:
	xcodebuild clean -project BRL.xcodeproj

##################
# Global targets #
##################
clean: clean_swift_gen clean_project_compilation

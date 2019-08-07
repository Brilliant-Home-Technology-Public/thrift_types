PWD = $(shell pwd)
REPO_ROOT = $(abspath $(PWD)/..)


.DEFAULT_GOAL := thrift_types


.PHONY = clean_all clean_java_gen test_project_compilation clean_project_compilation


#####################################
# Thrift generation of Python files #
#####################################
SOURCES := $(shell cd $(REPO_ROOT); find . -type f -name '*.thrift')
JAVA_OUTPUT_DIR ?= $(CURDIR)/brl/src/main/java/thrift_types
THIRDPARTY_BINARIES_DIR ?= $(abspath $(REPO_ROOT)/..)/thirdparty-binaries
THRIFT_COMPILER ?= $(THIRDPARTY_BINARIES_DIR)/pre-built/current_platform/thrift/bin/thrift

# Java specific
JAVA_CFLAGS = -out $(dir $(JAVA_OUTPUT_DIR)) --gen java:android,generated_annotations=suppress
JAVA_DUMMY_TARGETS := $(SOURCES:./%.thrift=$(JAVA_OUTPUT_DIR)/%.java_dummy_target)

# Disabling builtin rules to make make faster
MAKEFLAGS += --no-builtin-rules
.SUFFIXES:

$(JAVA_OUTPUT_DIR_DUMMY_TARGET):
	mkdir -p $(dir %@)
	touch $@

# Java
$(JAVA_OUTPUT_DIR)/%.java_dummy_target: $(REPO_ROOT)/%.thrift $(JAVA_OUTPUT_DIR_DUMMY_TARGET) $(THRIFT_COMPILER)
	@echo Making java source for $<
	mkdir -p $(JAVA_OUTPUT_DIR)/$(subst $(REPO_ROOT)/,,$(dir $<))
	$(THRIFT_COMPILER) $(JAVA_CFLAGS) -out $(JAVA_OUTPUT_DIR)/$(subst $(REPO_ROOT)/,,$(dir $<)) $<
	@touch $@

## Generate the java files from thrift
thrift_types: $(JAVA_DUMMY_TARGETS)
	@echo Finished making java sources

clean_java_gen:
	rm -rf $(JAVA_OUTPUT_DIR)/*


########################################
# Targets for building and Java Module #
########################################
test_project_compilation: thrift_types clean_project_compilation
	./gradlew compileDebugSources

clean_project_compilation:
	./gradlew clean

##################
# Global targets #
##################
clean: clean_java_gen clean_project_compilation

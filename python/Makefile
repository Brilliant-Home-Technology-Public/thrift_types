PWD = $(shell pwd)
REPO_ROOT = $(abspath $(PWD)/..)


.DEFAULT_GOAL := src/thrift_types


.PHONY = clean_all clean_env clean_wheel test_install_package wheel


#####################################
# Thrift generation of Python files #
#####################################
SOURCES := $(shell cd $(REPO_ROOT); find . -type f -name '*.thrift')
SRC_DIR = $(PWD)/src
PY_OUTPUT_DIR = $(SRC_DIR)/thrift_types
THIRDPARTY_BINARIES_DIR ?= $(abspath $(REPO_ROOT)/..)/thirdparty-binaries
THRIFT_COMPILER ?= $(THIRDPARTY_BINARIES_DIR)/pre-built/current_platform/thrift/bin/thrift

PY_OUTPUT_DIR_DUMMY_TARGET := $(PY_OUTPUT_DIR)/.dummy_target
PY_DUMMY_TARGETS := $(SOURCES:./%.thrift=$(PY_OUTPUT_DIR)/%.py_dummy_target)
# The python thrift compiler automatically creates a thrift_types subdirectory even when we override
# the output directory with -out
PY_CFLAGS = -out $(dir $(PY_OUTPUT_DIR)) --gen py
TWO_TO_THREE = $(PYTHON) -m lib2to3
TTTFLAGS = --write --no-diffs --nobackups

# Disabling builtin rules to make make faster
MAKEFLAGS += --no-builtin-rules
.SUFFIXES:


$(PY_OUTPUT_DIR_DUMMY_TARGET):
	mkdir -p $(dir $@)
	touch $@

$(PY_OUTPUT_DIR)/%.py_dummy_target: $(REPO_ROOT)/%.thrift $(PY_OUTPUT_DIR_DUMMY_TARGET) $(THRIFT_COMPILER)
	@echo Making python source for $<
	$(THRIFT_COMPILER) $(PY_CFLAGS) $<
	$(TWO_TO_THREE) $(TTTFLAGS) $(PY_OUTPUT_DIR)/$(subst $(REPO_ROOT)/,,$(basename $<))
	@touch $@

## Generate the python files from thrift
src/thrift_types: $(PY_DUMMY_TARGETS)
	@# The Python generation creates an __init__.py in the `src` directory, which we do not
	@# want.
	rm -f $(SRC_DIR)/__init__.py
	@echo Finished making py sources

clean_py_gen:
	rm -rf $(PY_OUTPUT_DIR)


##########################################################
# Targets for building and installing the Python package #
##########################################################
VENV = $(PWD)/env
BIN_PIP = $(VENV)/bin/pip
BIN_PYTHON = $(VENV)/bin/python
PYTHON_MAJOR_MINOR_VERSION = $(shell cut -d . -f 1,2 $(REPO_ROOT)/.python-version)
PYTHON ?= "python$(PYTHON_MAJOR_MINOR_VERSION)"


$(VENV):
	$(PYTHON) -m venv "env"
	"$(BIN_PIP)" install --upgrade pip
	"$(BIN_PIP)" install wheel

clean_env:
	rm -rf env src/*/__pycache__

clean_wheel:
	rm -rf build dist src/*.egg-info

test_install_package: $(VENV) src/thrift_types
	"$(BIN_PIP)" install $(PWD)

wheel: $(VENV) src/thrift_types
	"$(BIN_PYTHON)" setup.py sdist bdist_wheel


##################
# Global targets #
##################
clean: clean_env clean_py_gen clean_wheel

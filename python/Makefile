PWD = $(shell pwd)
REPO_ROOT = $(abspath $(PWD)/..)

###############################################
# Thrift generation of Python files variables #
###############################################

# We don't need the BUILD_PLATFORM since the THRIFT_COMPILER is explicitly set.
BUILD_PLATFORM = ""
SRC_DIR = $(PWD)/src
PY_OUTPUT_DIR = $(SRC_DIR)/thrift_types
SOURCES_DIR = $(REPO_ROOT)
THIRDPARTY_BINARIES_DIR ?= $(abspath $(REPO_ROOT)/..)/thirdparty-binaries
THRIFT_COMPILER ?= $(THIRDPARTY_BINARIES_DIR)/pre-built/current_platform/thrift/bin/thrift
THRIFT_DIR = $(REPO_ROOT)


include ../base.mk

######################################
# Python packaging related variables #
######################################
VENV = $(PWD)/env
BIN_PIP = $(VENV)/bin/pip
BIN_PYTHON = $(VENV)/bin/python
PYTHON = python3.7


.DEFAULT_GOAL := src/thrift_types


.PHONY = clean_all clean_env clean_wheel wheel

## Generate the python files from thrift
src/thrift_types: py_gen
	@# The Python generation creates an __init__.py in the `src` directory, which we do not
	@# want.
	rm -f $(SRC_DIR)/__init__.py


##########################################################
# Targets for building and installing the Python package #
##########################################################

$(VENV):
	$(PYTHON) -m venv "env"
	"$(BIN_PIP)" install --upgrade pip
	"$(BIN_PIP)" install wheel

clean_all: clean clean_env clean_wheel

clean_env:
	rm -rf env src/*/__pycache__

clean_wheel:
	rm -rf build dist src/*.egg-info

wheel: $(VENV) src/thrift_types
	"$(BIN_PYTHON)" setup.py sdist bdist_wheel

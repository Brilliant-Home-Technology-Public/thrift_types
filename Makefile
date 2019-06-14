#include base.mk

PWD = $(shell pwd)

# We don't need the BUILD_PLATFORM since the THRIFT_COMPILER is explicitly set.
BUILD_PLATFORM = ""
PY_SRC_DIR = $(PWD)/python/src
PY_OUTPUT_DIR = $(PY_SRC_DIR)/thrift_types
SOURCES_DIR = $(PWD)
THIRDPARTY_BINARIES_DIR ?= $(abspath $(PWD)/..)/thirdparty-binaries
THRIFT_COMPILER ?= $(THIRDPARTY_BINARIES_DIR)/pre-built/current_platform/thrift/bin/thrift
THRIFT_DIR = $(PWD)


include base.mk


.DEFAULT_GOAL := build_python


.PHONY = build_python


build_python: py_gen
	# The Python generation creates an __init__.py in the `src` directory, which we do not want.
	rm $(PY_SRC_DIR)/__init__.py

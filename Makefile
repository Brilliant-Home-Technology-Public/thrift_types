# NOTE: We assume that thirdparty-binaries/ is at the same directory level as thrift_types/ and that
# the parent repo is only one directory level up 
include ../thrift.mk
# General
SOURCES := $(shell find . -name '*.thrift')
PLATFORM := $(shell ./../thirdparty-binaries/tools/platform_name.sh)
THRIFT_COMPILER = ./../thirdparty-binaries/pre-built/$(PLATFORM)/thrift/bin/thrift

# Python specific
ifneq ($(PY_OUTPUT_DIR),)
	PY_CFLAGS = -out ../$(PY_OUTPUT_DIR) --gen py
	TWO_TO_THREE = 2to3
	TTTFLAGS = --write
endif

# C++ specific
ifneq ($(CPP_OUTPUT_DIR),)
	CPP_CFLAGS = -out ../$(CPP_OUTPUT_DIR) --gen cpp
	CPP_TYPES := $(shell find . -name '*thrift' | sed s/.\\/// | sed s/.thrift/_types.cpp/)
	CPP_CONSTANTS := $(shell find . -name '*thrift' | sed s/.\\/// | sed s/.thrift/_constants.cpp/)
	CPP_SERVICES := MessageBusService.cpp PeripheralService.cpp
	CPP_SOURCES := $(CPP_TYPES) $(CPP_CONSTANTS) $(CPP_SERVICES)
	BOOST_DIR = ../thirdparty-binaries/pre-built/current_platform/boost/
	THRIFT_INCLUDE = ../thirdparty-binaries/pre-built/current_platform/thrift/include/
	BOOST_INCLUDE = ../thirdparty-binaries/pre-built/current_platform/boost/include/
endif

# Objective C specific
ifneq ($(OBJC_OUTPUT_DIR),)
	OBJC_CFLAGS = -out ../$(OBJC_OUTPUT_DIR) --gen cocoa
endif

all: build_cpp thrift

thrift: $(SOURCES)

$(SOURCES): output_dirs
ifneq ($(PY_OUTPUT_DIR),)	
	$(THRIFT_COMPILER) $(PY_CFLAGS) $@
	$(TWO_TO_THREE) $(TTTFLAGS) ../$(PY_OUTPUT_DIR)/thrift_types/$(basename $@)
endif
ifneq ($(CPP_OUTPUT_DIR),)
	$(THRIFT_COMPILER) $(CPP_CFLAGS) $@
endif
ifneq ($(OBJC_OUTPUT_DIR),)
	$(THRIFT_COMPILER) $(OBJC_CFLAGS) $@
endif

output_dirs:
ifneq ($(PY_OUTPUT_DIR),)
	mkdir -p ../$(PY_OUTPUT_DIR)
endif
ifneq ($(CPP_OUTPUT_DIR),)
	mkdir -p ../$(CPP_OUTPUT_DIR)
endif

build_cpp: $(CPP_SOURCES)

$(CPP_SOURCES): thrift $(SOURCES)
	g++ -I $(BOOST_DIR) -I $(THRIFT_INCLUDE) -I $(BOOST_INCLUDE) -std=c++14 -c ../$(CPP_OUTPUT_DIR)/$@ -o ../$(CPP_OUTPUT_DIR)/$$(basename $@ .cpp).o

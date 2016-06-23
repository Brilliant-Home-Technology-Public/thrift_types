# NOTE: We assume that thirdparty-binaries/ is at the same directory level as thrift_types/ and that
# the parent repo is only one directory level up 
include ../thrift.mk
# General
SOURCES := $(shell find . -name '*.thrift')
PLATFORM := $(shell ./../thirdparty-binaries/tools/platform_name.sh)
THRIFT_COMPILER = ./../thirdparty-binaries/pre-built/$(PLATFORM)/thrift/bin/thrift
# Python specific
# The python thrift compiler automatically creates a thrift_types subdirectory even when we 
# override the output directory with -out
PY_SOURCE_DIR = $(PY_OUTPUT_DIR)/thrift_types
PY_DUMMY_TARGETS := $(shell find . -name '*thrift' | sed s/.thrift/.py_dummy_target/ | sed s~./~../$(PY_SOURCE_DIR)/~g)
PY_CFLAGS = -out ../$(PY_OUTPUT_DIR) --gen py
TWO_TO_THREE = python -m lib2to3
TTTFLAGS = --write
# C++ specific
CPP_CFLAGS = -out ../$(CPP_OUTPUT_DIR) --gen cpp
CPP_TYPES := $(shell find . -name '*thrift' | sed s/.thrift/_types.o/ | sed s~./~../$(CPP_OUTPUT_DIR)/~g)
CPP_CONSTANTS := $(shell find . -name '*thrift' | sed s/.thrift/_constants.o/ | sed s~./~../$(CPP_OUTPUT_DIR)/~g)
CPP_SERVICES := ../$(CPP_OUTPUT_DIR)/MessageBusService.o ../$(CPP_OUTPUT_DIR)/PeripheralService.o
CPP_TARGETS := $(CPP_TYPES) $(CPP_CONSTANTS) $(CPP_SERVICES)
BOOST_DIR = ../thirdparty-binaries/pre-built/current_platform/boost/
THRIFT_INCLUDE = ../thirdparty-binaries/pre-built/current_platform/thrift/include/
BOOST_INCLUDE = ../thirdparty-binaries/pre-built/current_platform/boost/include/
# Objective-C specific
OBJC_CFLAGS = -out ../$(OBJC_OUTPUT_DIR) --gen cocoa
OBJC_DUMMY_TARGETS := $(shell find . -name '*thrift' | sed s/.thrift/.objc_dummy_target/ | sed s~./~../$(OBJC_OUTPUT_DIR)/~g)

ifneq ($(PY_OUTPUT_DIR),)
	DEPENDENCIES += py_source
	OUTPUT_DIRS += ../$(PY_OUTPUT_DIR)
	MKDIR += mkdir -p ../$(PY_OUTPUT_DIR);
endif
ifneq ($(CPP_OUTPUT_DIR),)
	DEPENDENCIES += cpp_compiled
endif
ifneq ($(OBJC_OUTPUT_DIR),)
	DEPENDENCIES += objc_source
	OUTPUT_DIRS += ../$(OBJC_OUTPUT_DIR)
	MKDIR += mkdir -p ../$(OBJC_OUTPUT_DIR);
endif

all: $(DEPENDENCIES)

py_source: $(PY_DUMMY_TARGETS)
	@echo Finished making py sources

cpp_compiled: $(CPP_TARGETS)
	@echo Finished making compiled cpp sources

objc_source: $(OBJC_DUMMY_TARGETS)
	@echo Finished making objective-c sources

$(OUTPUT_DIRS):
	$(MKDIR)

# Python
../$(PY_SOURCE_DIR)/%.py_dummy_target: %.thrift ../$(PY_OUTPUT_DIR)
	@echo Making python source for $<
	$(THRIFT_COMPILER) $(PY_CFLAGS) $<
	$(TWO_TO_THREE) $(TTTFLAGS) ../$(PY_OUTPUT_DIR)/thrift_types/$(basename $<)
	@touch $@

# CPP
.PRECIOUS: ../$(CPP_OUTPUT_DIR)/%_types.cpp ../$(CPP_OUTPUT_DIR)/%_constants.cpp

../$(CPP_OUTPUT_DIR)/%.o: ../$(CPP_OUTPUT_DIR)/%.cpp
	@echo Compiling source for file $<
	g++ -I $(BOOST_DIR) -I $(THRIFT_INCLUDE) -I $(BOOST_INCLUDE) -std=c++14 -c $< -o ../$(CPP_OUTPUT_DIR)/$$(basename $< .cpp).o

../$(CPP_OUTPUT_DIR)/%_types.cpp ../$(CPP_OUTPUT_DIR)/%_constants.cpp: %.thrift
	mkdir -p ../$(CPP_OUTPUT_DIR)
	@echo Making cpp source for $<
	$(THRIFT_COMPILER) $(CPP_CFLAGS) $<

../$(CPP_OUTPUT_DIR)/MessageBusService.cpp ../$(CPP_OUTPUT_DIR)/PeripheralService.cpp: message_bus.thrift
	mkdir -p ../$(CPP_OUTPUT_DIR)
	@echo Making cpp source for $<
	$(THRIFT_COMPILER) $(CPP_CFLAGS) $<	

# Objective-C
../$(OBJC_OUTPUT_DIR)/%.objc_dummy_target: %.thrift ../$(OBJC_OUTPUT_DIR)
	$(THRIFT_COMPILER) $(OBJC_CFLAGS) $<
	@touch $@

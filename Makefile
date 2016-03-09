SOURCES := $(shell find . -name '*.thrift')
PLATFORM := $(shell ./../thirdparty-binaries/tools/platform_name.sh)
THRIFT_COMPILER = ./../thirdparty-binaries/pre-built/$(PLATFORM)/thrift/bin/thrift
TWO_TO_THREE = 2to3
OUTPUT_DIR = ../site-packages/
CFLAGS = -out $(OUTPUT_DIR) --gen py
CPP_OUTPUT_DIR = ../Demo/thrift_types
CPP_CFLAGS = -out $(CPP_OUTPUT_DIR) --gen cpp
TTTFLAGS = --write

CPP_TYPES := $(shell find . -name '*thrift' | sed s/.\\/// | sed s/.thrift/_types.cpp/)
CPP_CONSTANTS := $(shell find . -name '*thrift' | sed s/.\\/// | sed s/.thrift/_constants.cpp/)
CPP_SERVICES := MessageBusService.cpp PeripheralService.cpp
CPP_SOURCES := $(CPP_TYPES) $(CPP_CONSTANTS) $(CPP_SERVICES)

THRIFT_COMPILER = ./../thirdparty-binaries/pre-built/current_platform/thrift/bin/thrift
BOOST_DIR = ../thirdparty-binaries/pre-built/current_platform/boost/
THRIFT_INCLUDE = ../thirdparty-binaries/pre-built/current_platform/thrift/include/
BOOST_INCLUDE = ../thirdparty-binaries/pre-built/current_platform/boost/include/

.PHONY: cpp $(CPP_SOURCES) thrift $(SOURCES)

cpp: $(CPP_SOURCES) thrift $(SOURCES)

$(CPP_SOURCES): thrift $(SOURCES)
	g++ -I $(BOOST_DIR) -I $(THRIFT_INCLUDE) -I $(BOOST_INCLUDE) -std=c++14 -c $(CPP_OUTPUT_DIR)/$@ -o $(CPP_OUTPUT_DIR)/$$(basename $@ .cpp).o

thrift: $(SOURCES)

output_dir:
	mkdir -p $(OUTPUT_DIR)
	mkdir -p $(CPP_OUTPUT_DIR)

$(SOURCES): output_dir
	$(THRIFT_COMPILER) $(CFLAGS) $@
	$(TWO_TO_THREE) $(TTTFLAGS) $(OUTPUT_DIR)/thrift_types/$(basename $@)
	$(THRIFT_COMPILER) $(CPP_CFLAGS) $@
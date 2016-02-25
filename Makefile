SOURCES := $(shell find . -name '*.thrift')
THRIFT_COMPILER = ./../thirdparty-binaries/pre-built/osx/thrift/bin/thrift
TWO_TO_THREE = 2to3
OUTPUT_DIR = ../site-packages/
CFLAGS = -out $(OUTPUT_DIR) --gen py
TTTFLAGS = --write

.PHONY: thrift $(SOURCES)

thrift: $(SOURCES)

output_dir:
	mkdir -p $(OUTPUT_DIR)

$(SOURCES): output_dir
	$(THRIFT_COMPILER) $(CFLAGS) $@
	$(TWO_TO_THREE) $(TTTFLAGS) $(OUTPUT_DIR)/thrift_types/$(basename $@)

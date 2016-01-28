SOURCES := $(shell find . -name '*.thrift')
THRIFT_COMPILER = ./../thirdparty-binaries/pre-built/osx/thrift/bin/thrift
OUTPUT_DIR = ../site-packages/thrift_types
CFLAGS = -out $(OUTPUT_DIR) --gen py

.PHONY: thrift $(SOURCES)

thrift: $(SOURCES)

output_dir:
	mkdir -p $(OUTPUT_DIR)

$(SOURCES): output_dir
	$(THRIFT_COMPILER) $(CFLAGS) $@


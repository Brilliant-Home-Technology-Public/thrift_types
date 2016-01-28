SOURCES := $(shell find . -name '*.thrift')
THRIFT_COMPILER = ./../thirdparty-binaries/pre-built/osx/thrift/bin/thrift
CFLAGS = -out ../site-packages/thrift_types/ --gen py
.PHONY: thrift $(SOURCES)
thrift: $(SOURCES)
$(SOURCES):
	$(THRIFT_COMPILER) $(CFLAGS) $@


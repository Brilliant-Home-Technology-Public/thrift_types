PWD = $(shell pwd)
REPO_ROOT = $(abspath $(PWD)/..)

VENV = $(PWD)/env
BIN_PIP = $(VENV)/bin/pip
BIN_PYTHON = $(VENV)/bin/python
PYTHON = python3.7


.DEFAULT_GOAL := src/thrift_types


.PHONY = clean clean_wheel wheel

src/thrift_types:
	make -C $(REPO_ROOT)

$(VENV):
	$(PYTHON) -m venv "env"
	"$(BIN_PIP)" install --upgrade pip
	"$(BIN_PIP)" install wheel

clean: clean_wheel
	rm -rf env src/*/__pycache__

clean_wheel:
	rm -rf build dist src/*.egg-info

test_install_package: $(VENV) src/thrift_types
	"$(BIN_PIP)" install $(PWD)

wheel: $(VENV) src/thrift_types
	"$(BIN_PYTHON)" setup.py sdist bdist_wheel

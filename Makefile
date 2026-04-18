# Makefile to set up a virtual environment for Jupyter with bash_kernel

.PHONY: help venv install register list init clean

VENV_DIR := jupyter-bash-env
PY := $(VENV_DIR)/bin/python
PIP := $(VENV_DIR)/bin/pip
APT_DEPS := apt-dependencies.txt
PIP_DEPS := pip-dependencies.txt

help:
	@echo "Usage: make [target]"
	@echo "Targets:"
	@echo "  venv         Create virtual environment ($(VENV_DIR))"
	@echo "  install-debs Install system packages from $(APT_DEPS)"
	@echo "  install-pip  Install pip and Python packages from $(PIP_DEPS)"
	@echo "  install      venv + install-debs + install-pip"
	@echo "  register     Register bash kernel into Jupyter (sys-prefix)"
	@echo "  list         List available Jupyter kernels"
	@echo "  init         install + register + list"
	@echo "  clean        Remove virtual environment"

venv:
	@test -d $(VENV_DIR) || python3 -m venv $(VENV_DIR)
	@echo "Virtualenv at $(VENV_DIR)"

install-pip:
	$(PY) -m ensurepip --upgrade
	$(PIP) install --upgrade pip
	$(PIP) install -r $(PIP_DEPS)

install-debs:
	sudo apt-get update
	# Install dependencies ignoring comments and empty lines
	grep -vE '^\s*#|^\s*$$' $(APT_DEPS) | xargs -r sudo apt-get install -y

install: venv install-debs install-pip

register: install
	$(PY) -m bash_kernel.install --sys-prefix

list:
	$(VENV_DIR)/bin/jupyter kernelspec list

init: register list

clean:
	rm -rf $(VENV_DIR)

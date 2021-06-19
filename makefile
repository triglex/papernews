.PHONY: help clean docs
SHELL := /bin/bash

help:			## This help funcion.
	@echo "Makefile for papernews project. See available commands bellow:"
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m  %-30s\033[0m %s\n", $$1, $$2}'

clean:			## Clean files and directories.
	@printf "Tidying up\n"
	-rm -r docs/html
	-find . -type d -name __pycache__ -exec rm -r {} \+
	-rm -r .pytest_cache
	-rm .coverage

docs:			## Generate html documentation.
	-rm -r docs/html
	sphinx-build -b html docs docs/html
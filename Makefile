# File: Makefile

install:
	pip install --upgrade pip
	pip install flake8 mypy
	@echo "Dependencies installed: flake8, mypy"

run:
	python3 

debug:
	python3 

clean:
	rm -rf __pycache__ .mypy_cache *.pyc *.pyo $(shell ls *.txt | grep -v config)


lint:
	flake8 . && mypy . --warn-return-any --warn-unused-ignores --ignore-missing-imports --disallow-untyped-defs --check-untyped-defs

lint-strict:
	flake8 . && mypy . --strict

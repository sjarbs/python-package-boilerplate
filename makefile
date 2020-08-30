PACKAGE := package
PACKAGES := $(PACKAGE) tests

install:
	poetry install
format:
	poetry run isort $(PACKAGES)
	poetry run black $(PACKAGES)
lint:
	poetry run flake8 $(PACKAGES)
	poetry run mypy $(PACKAGES)
test:
	poetry run pytest
package:
	poetry check
	poetry run pip check
checks: format lint test package
run:
	poetry run python -m $(PACKAGE)

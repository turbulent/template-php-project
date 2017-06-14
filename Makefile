# ***********
#  Variables
# ***********

STAGE ?= local
COMPOSER_FLAGS = --no-progress --prefer-dist --optimize-autoloader --classmap-authoritative

-include conf/Makefile.$(STAGE)

# *******
#  Tasks
# *******

.PHONY: build
build: packages

.PHONY: packages
packages: vendor/composer/installed.json

.PHONY: tests
tests: build
	echo "Don't forget to write your tests"

.PHONY: init
init: build
	mysql -hdbmaster -uadmin -pdev < .substance/init.sql

# *********
#  Recipes
# *********

# Composer
# Strict hierarchy: composer.json > composer.lock > vendor
vendor/composer/installed.json: composer.lock
	composer install $(COMPOSER_FLAGS)

composer.lock: composer.json
	composer update $(COMPOSER_FLAGS)


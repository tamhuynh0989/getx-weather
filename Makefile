# define standard colors
ifneq (,$(findstring xterm,${TERM}))
	BLACK        := $(shell tput -Txterm setaf 0)
	RED          := $(shell tput -Txterm setaf 1)
	GREEN        := $(shell tput -Txterm setaf 2)
	YELLOW       := $(shell tput -Txterm setaf 3)
	LIGHTPURPLE  := $(shell tput -Txterm setaf 4)
	PURPLE       := $(shell tput -Txterm setaf 5)
	BLUE         := $(shell tput -Txterm setaf 6)
	WHITE        := $(shell tput -Txterm setaf 7)
	RESET := $(shell tput -Txterm sgr0)
else
	BLACK        := ""
	RED          := ""
	GREEN        := ""
	YELLOW       := ""
	LIGHTPURPLE  := ""
	PURPLE       := ""
	BLUE         := ""
	WHITE        := ""
	RESET        := ""
endif

# set target color
TARGET_COLOR := $(BLUE)

POUND = \#

.PHONY: no_targets__ info help build deploy doc
	no_targets__:

.DEFAULT_GOAL := help

colors:
	@echo "${BLACK}BLACK${RESET}"
	@echo "${RED}RED${RESET}"
	@echo "${GREEN}GREEN${RESET}"
	@echo "${YELLOW}YELLOW${RESET}"
	@echo "${LIGHTPURPLE}LIGHTPURPLE${RESET}"
	@echo "${PURPLE}PURPLE${RESET}"
	@echo "${BLUE}BLUE${RESET}"
	@echo "${WHITE}WHITE${RESET}"

.PHONY: all
all: clean setup run_dev_mock

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: setup
setup:
	@fvm flutter pub get
	@fvm flutter packages pub run build_runner build --delete-conflicting-outputs

.PHONY: gen
gen:
	@fvm flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: watch
watch:
	@fvm flutter pub run build_runner watch --delete-conflicting-outputs

.PHONY: analyze
analyze:
	@fvm flutter analyze
	@fvm flutter pub run dart_code_metrics:metrics analyze lib

.PHONY: run_dev_mock
run_dev_mock:
	@fvm flutter run --flavor dev lib/main_dev.dart

.PHONY: run_stg
run_stg:
	@fvm flutter run --flavor staging lib/main_stg.dart

.PHONY: format
format:
	@dart format .

.PHONY: lint
lint:
	@dart analyze .

.PHONY: upgrade
upgrade: clean
	@fvm flutter pub upgrade

.PHONY: clean
clean:
	@rm -rf pubspec.lock
	@fvm flutter clean

.PHONY: run_unit_test
run_unit_test:
	@fvm flutter test 

.PHONY: flavor
flavor:
	@fvm flutter pub run fvm flutter_flavorizr -p android:buildGradle,android:androidManifest,ios:xcconfig,ios:buildTargets,ios:schema,ios:plist

.PHONY: delete generated file
delete-generate-file:
	@find . -maxdepth 20 -type f \( -name "*.freezed.dart" -o  -name "*.g.dart" \) -delete
#!/usr/bin/env bash
SHELL := /bin/bash

default:
	@make -s tasks

tasks:
	@make -s help | fzf --cycle | cut -d ' ' -f1 | xargs -r make

.PHONY: clear
clear: ## Cleans up the app
	./gradlew clean

.PHONY: clear_cache
clear_cache: ## Delete global cache dir
	rm -R ~/.gradle

.PHONY: clear_all
clear_all: clear clear_cache ## Cleans up the app and the cache

.PHONY: build
build: ## Build the application
	./gradlew build

.PHONY: apk
apk: ## generates debug signed APK
	./gradlew assembleDebug

.PHONY: release
release: ## Generates release signed APK
	./gradlew assembleRelease

.PHONY: bundle
bundle: ## Generates release signed AAB
	./gradlew bundleRelease

.PHONY: rebuild
rebuild: ## Build project complete from scratch
	./gradlew clean build

.PHONY: assemble
assemble: ## Assemble the application
	./gradlew assemble

.PHONY: run
run: ## Run the application
	./gradlew run

.PHONY: start
start: build run ## Run the application

.PHONY: scan
scan: ## Publish a Build Scan
	./gradlew build --scan

.PHONY: tests
tests: ## Run all of the unit tests in the project
	./gradlew test --continue

.PHONY: instrumentation
instrumentation: ## Run the instrumentation tests
	./gradlew connectedAndroidTest --continue

.PHONY: e2e
e2e: ## Build and start your instrumented tests on your Android device
	./gradlew connectedCheck

.PHONY: stop
stop: ## Stop all gradle Daemons
	./gradlew --stop

.PHONY: reset
reset: stop clear_all assemble ## Reset the dependencies https://is.gd/6GHdhj

.PHONY: markdownlint
markdownlint: ## Lints all markdown files
	npx markdownlint-cli2 "**/*.md" "#node_modules" "#CHANGELOG.md"

.PHONY: markdownlint_fix
markdownlint_fix: ## Fix all markdown lint violations
	npx markdownlint-cli2-fix "**/*.md" "#node_modules" "#CHANGELOG.md"

.PHONY: lint
lint: markdownlint ## Runs the linters
	./gradlew lint --stacktrace --continue

.PHONY: lint_fix
lint_fix: markdownlint_fix ## Fix lint violations
	./gradlew lintFix

.PHONY: check
check: ## Aggregates all verification tasks: code style, library vulnerability scans, tests, and integration tests
	./gradlew check

.PHONY: help
help: ## Display available tasks
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z\-_0-9%:\/]+:.*?## / {printf "\033[36m%-20s→\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST) | sed s/://

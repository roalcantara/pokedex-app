# Pokedex

Based on the Advanced Android in Kotlin [course][7]

[![MIT license](https://img.shields.io/badge/License-MIT-brightgreen.svg?style=flat-square)](LICENSE) [![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.0-4baaaa.svg?style=flat-square)][2] [![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg?style=flat-square)][4] [![Editor Config](https://img.shields.io/badge/Editor%20Config-1.0.1-crimson.svg?style=flat-square&logo=editorconfig)][3] [![Ktlint](https://img.shields.io/badge/Ktlint-codestyle-blue.svg?style=flat-square)][10] [![Ktlint](https://img.shields.io/badge/Spotless-codestyle-blue.svg?style=flat-square)][11] [![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg)][14] [![Make](https://img.shields.io/badge/make-4.3-green.svg?style=flat-square)][15] [![markdownlint](https://img.shields.io/badge/markdownlint-000?logo=markdown&logoColor=fff&style=flat)][16]

## Install

```sh
git clone https://github.com/roalcantara/pokedex-app
```

## Introduction

The [Advanced Android in Kotlin course][7], created by the Google Developers Training team, provides a series of codelabs that lead you through the advanced Android Kotlin programming concepts.

## Getting Started

1. Download and run the app.
2. Check out one of the codelabs mentioned above.

## Dependencies

- [git][5]
- [ASDF][8]
- [Direnv][9]
- [Gitlint][12]
- [Precommit][14]
- [Make][15]

## Usage

- Shows the help screen

  ```sh
  make help
  ```

- Cleans up the app

  ```sh
  make clear
  ```

- Delete global cache directory

  ```sh
  make clear_cache
  ```

- Cleans up the app and the cache

  ```sh
  make clear_all
  ```

- Build the application

  ```sh
  make build
  ```

- Build project complete from scratch

  ```sh
  make rebuild
  ```

- Assemble the application

  ```sh
  make assemble
  ```

- Run the application

  ```sh
  make run
  ```

- Run the application

  ```sh
  make start
  ```

- Publish a Build Scan

  ```sh
  make scan
  ```

- Run all of the unit tests in the project

  ```sh
  make tests
  ```

- Run the instrumentation tests

  ```sh
  make instrumentation
  ```

- Build and start your instrumented tests on your Android device

  ```sh
  make e2e
  ```

- Stop all Jobs

  ```sh
  make stop
  ```

- Reset the [dependencies][7]

  ```sh
  make reset
  ```

- Lints all markdown files

  ```sh
  make markdownlint
  ```

- Fix all markdown lint violations

  ```sh
  make markdownlint_fix
  ```

- Runs all lints

  ```sh
  make lint
  ```

- Fix lint violations

  ```sh
  make lint_fix
  ```

- Aggregates all verification tasks: code style, library vulnerability scans,
  tests, and integration tests

  ```sh
  make check
  ```

## Acknowledgements

- [Standard Readme][4]
- [Guide to app architecture][6]
- [Advanced Android in Kotlin][7]
- [Conventional Commits][14]

## Contributing

- Bug reports and pull requests are welcome on [GitHub][0]
- Do follow [Editor Config][3] rules.
- Do follow [Ktlint][10] rules.
- Do follow [Conventional Commits][14] rules.
- Everyone interacting in the project is expected to follow the [Contributor Covenant][2] code of conduct.

## License

The project is available as open source under the terms of the [MIT][1] [License](LICENSE)

[0]: https://github.com/roalcantara/pokedex-app
[1]: https://opensource.org/licenses/MIT "Open Source Initiative"
[2]: https://contributor-covenant.org "A Code of Conduct for Open Source Communities"
[3]: https://editorconfig.org "EditorConfig"
[4]: https://github.com/RichardLitt/standard-readme "Standard Readme"
[5]: https://git-scm.com "Git"
[6]: https://developer.android.com/jetpack/docs/guide "Guide to app architecture  |  Android Developers"
[7]: https://developer.android.com/codelabs/advanced-android-kotlin-training-welcome "Advanced Android in Kotlin"
[8]: https://asdf-vm.com "ASDF: Manage multiple runtime versions with a single CLI tool"
[9]: https://direnv.net "Direnv: Unclutter your .profile"
[10]: https://ktlint.github.io "Ktlint: A linter for Kotlin"
[11]: https://plugins.gradle.org/plugin/com.diffplug.spotless "Spotless: A tool for automatically running your code through a linter"
[12]: https://jorisroovers.com/gitlint "GitLint: git commit message linter"
[13]: https://pre-commit.com "A framework for managing and maintaining multi-language pre-commit hooks"
[14]: https://conventionalcommits.org "Conventional Commits"
[15]: https://www.gnu.org/software/make/manual/make.html "GNU Make"
[16]: https://github.com/DavidAnson/markdownlint-cli2 "Markdownlint: A fast, flexible, configuration-based command-line interface for linting Markdown/CommonMark files with the markdownlint library"

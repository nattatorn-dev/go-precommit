# Go Project
This is a precommit project for a Go application, including setup for development, linting, testing, profiling, and pre-commit hooks.

## Pre-Commit Hook Checklist
Here is a summary of the pre-commit hooks used in this project:

- Go Unit Tests: Runs make test to execute Go unit tests.
- Trailing Whitespace: Removes trailing whitespace.
- End-of-File Fixer: Ensures files end with a newline.
- Check YAML: Checks YAML files for syntax errors.
- Check Added Large Files: Prevents large files from being added to the repository.
- Go Format: Formats Go code using go fmt.
- Go Vet: Runs go vet to examine Go source code and report suspicious constructs.
- Go Lint: Lints Go code.
- Go Imports: Formats and organizes Go imports.
- Go Cyclo: Checks for high cyclomatic complexity.
- No Go Testing: Ensures no .go files contain tests.
- Golangci-Lint: Runs golangci-lint to aggregate multiple linters.
- Go Critic: Runs go-critic for advanced static analysis.
- Go Mod Tidy: Ensures go.mod and go.sum are tidy.
- Commitlint: Lints commit messages to ensure they follow the conventional commits standard.

## Setup

### Prerequisites

Ensure you have the following installed:

- [Go](https://golang.org/dl/)
- [Node.js and npm](https://nodejs.org/en/)
- [pre-commit](https://pre-commit.com/)

### Install Precommit
```sh
brew install pre-commit
```

### Install Go Tools

Install the required Go tools by running the setup script:

```sh
make setup-tools
```

### Install Pre-Commit Hooks
```sh
pre-commit install
```

### Install Commit Message Linting
```sh
npm install --save-dev @commitlint/{cli,config-conventional}

pre-commit install --hook-type commit-msg
```

Create a commitlint.config.js file in the root of your project:

```sh
module.exports = {
  extends: ['@commitlint/config-conventional'],
};
```

### Try Run
```sh
pre-commit run --all-files
```

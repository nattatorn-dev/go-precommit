# Go Project
This is a precommit project for a Go application, including setup for development, linting, testing, profiling, and pre-commit hooks.

## Setup

### Prerequisites

Ensure you have the following installed:

- [Go](https://golang.org/dl/)
- [Node.js and npm](https://nodejs.org/en/)
- [pre-commit](https://pre-commit.com/)


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

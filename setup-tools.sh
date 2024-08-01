#!/bin/sh

# Install goimports
echo "Installing goimports..."
go install golang.org/x/tools/cmd/goimports@v0.1.12

# Install gocyclo
echo "Installing gocyclo..."
go install github.com/fzipp/gocyclo/cmd/gocyclo@v0.4.0

# Install gocritic
echo "Installing gocritic..."
go install github.com/go-critic/go-critic/cmd/gocritic@v0.6.5

# Install golangci-lint
echo "Installing golangci-lint..."
go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.54.2

# Install tomlv for TOML validation
echo "Installing tomlv..."
go install github.com/BurntSushi/toml-test/cmd/tomlv@latest

echo "All tools installed."

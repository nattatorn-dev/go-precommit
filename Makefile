.PHONY: setup-tools lint test benchmark profile race run

# Setup the required tools
setup-tools:
	@./setup-tools.sh

# Lint the code
lint:
	@golangci-lint run

# Run tests
test:
	@go test ./... -v

# Run benchmarks
benchmark:
	@go test -bench ./... -benchmem

# Run the application
run:
	@go run main.go

# Profile the application
profile:
	@mkdir -p profile
	@go test -cpuprofile profile/cpu.out -memprofile profile/mem.out -blockprofile profile/block.out ./...

# Run data race detection
race:
	@go test -race ./...

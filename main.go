package main

import (
	"fmt"
	"time"
)

func main() {
	fmt.Println("Hello, World!")
}

// Add function adds two integers
func Add(a, b int) int {
	return a + b
}

// SlowFunction simulates a slow function
func SlowFunction() {
	time.Sleep(1 * time.Second)
}

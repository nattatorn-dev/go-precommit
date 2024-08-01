package main

import (
	"testing"
)

func TestAdd(t *testing.T) {
	tests := []struct {
		a, b, expected int
	}{
		{1, 2, 3},
		{2, 3, 5},
		{10, 20, 30},
	}

	for _, tt := range tests {
		result := Add(tt.a, tt.b)
		if result != tt.expected {
			t.Errorf("Add(%d, %d) = %d; want %d", tt.a, tt.b, result, tt.expected)
		}
	}
}

func TestSlowFunction(t *testing.T) {
	SlowFunction()
}

func BenchmarkAdd(b *testing.B) {
	for i := 0; i < b.N; i++ {
		Add(1, 2)
	}
}

func BenchmarkSlowFunction(b *testing.B) {
	for i := 0; i < b.N; i++ {
		SlowFunction()
	}
}

package main

import (
	"log" // Imports the standard log library
	"os"
)

func main() {
	log.Printf("hello world")

	path := os.Getenv("PAL_DEFAULTS")
	if path == "" {
		log.Fatalf("PAL_DEFAULTS is not set")
	}

	fileInfo, err := os.Stat(path)
	if err != nil {
		log.Fatalf("Cannot read %s: %v", path, err)
	}
	log.Printf("defaults: %s (%d bytes)", path, fileInfo.Size())

}

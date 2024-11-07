# Makefile for building the project using CMake in a devcontainer

# Set default build directory
BUILD_DIR = build

# Default target: configure and build
all: configure build

# Configure the project (generate CMake cache)
configure:
	cmake -S . -B $(BUILD_DIR)

# Build the project, ensuring the build directory is configured first
build: configure
	cmake --build $(BUILD_DIR)

# Clean build directory
clean:
	rm -rf $(BUILD_DIR)

# Reconfigure: clean and configure again
reconfigure: clean configure
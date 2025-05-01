#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

handle_error() {
    echo "Error: '$1' command failed with exit code $2"
    echo "Setup interrupted. Please fix the issue and try again."
    exit $2
}

run_command() {
    echo "→ Running: $1"
    echo "   (Waiting for process to complete...)"

    # Run the command
    eval "$1"
    local status=$?

    if [ $status -ne 0 ]; then
        handle_error "$1" $status
    fi

    echo "✓ Success: $1"
    echo ""
}

echo "======================================"
echo "   Debian System Setup Script"
echo "======================================"
echo ""

# Ensure the script is not run as a regular user without sudo
if ! command -v sudo &> /dev/null; then
    echo "Error: 'sudo' command not found. Please run this script as root or install sudo."
    exit 1
fi

echo "Step 1: Updating package lists..."
run_command "sudo apt update"

echo "Step 2: Upgrading existing packages..."
echo "This may take some time, please be patient..."
run_command "sudo apt upgrade -y"

echo "Step 3: Installing development tools..."
run_command "sudo apt install -y git vim clang build-essential gdb tree"

echo "Step 4: Installing additional tools..."
run_command "sudo apt install -y libsdl2-dev libboost-all-dev"

echo "======================================"
echo "✓ Basic setup completed successfully!"
echo "======================================"


# Overview

This repository contains a set of modular shell scripts designed to automate the process of setting up a fresh Debian-based system. Whether I've just installed a minimal Debian instance or need to quickly configure a new machine, these scripts help me get up and running with essential tools and configurations.

## Scripts

 #### `base_setup.sh`
Sets up a fresh Debian-based system with essential utilities and tools for a core development environment. This script is ideal for developers needing a minimal yet functional setup for general programming, particularly C/C++ development with graphics and library support.

**Features**:
- **Version Control**: Installs `git` for source code management.
- **Text Editing**: Installs `vim` for lightweight code and configuration editing.
- **Compilers and Debugging**: Installs `clang`, `build-essential`, and `gdb` for compiling and debugging C/C++ programs.
- **File System Utilities**: Installs `tree` for visualizing directory structures.
- **Development Libraries**: Installs `libsdl2-dev` for graphics and multimedia development and `libboost-all-dev` for advanced C++ programming.
  
* dev-setup.sh - Installs development-related tools and environments (customize based on your needs):

  * Programming language environments
  * IDEs and code editors
  * Development libraries

* security-setup.sh - Installs cybersecurity tools for analysis, testing and monitoring:

  * Network security tools
  * System hardening utilities
  * Penetration testing frameworks
  * Security monitoring tools

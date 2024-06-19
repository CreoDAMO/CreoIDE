# Creo IDE - Integrated Development Environment for CreoLang

![CreoDAMO - A logo for CreoIDE, emphasizing its role as an integrated development environment for CreoLang  The logo should include elements that](https://github.com/CreoDAMO/CreoIDE/assets/151800081/bf54f606-9481-4694-9ccb-7e25d9239681)

## Overview

Creo IDE is the official development environment for CreoLang, designed to fully leverage its innovative features. It offers a seamless experience for developers working in web and mobile development, blockchain, smart contracts, machine learning, data analysis, quantum computing, and AR/VR/XR/MR development.

## Key Features

- **Multi-Language Support**: Supports multiple programming languages including CreoLang, Python, Rust, Solidity, Go, C#, C++, Swift, JavaScript, and more.
- **Intelligent Code Assistance**: Provides advanced code completion, error detection, and real-time linting for CreoLang and other supported languages.
- **Integrated Debugging Tools**: Includes sophisticated debugging tools tailored for the unique aspects of CreoLang, such as smart contract debugging and quantum simulation.
- **Version Control Integration**: Built-in support for Git, SVN, and Mercurial, with visual diff tools and merge conflict resolution.
- **Project Management**: Offers efficient project management capabilities with a powerful project explorer and search functionality.
- **Plugin Ecosystem**: Supports a wide range of plugins and extensions for additional functionality.
- **Customization**: Allows full customization of themes, keybindings, and layout configurations.
- **Built-In Documentation**: Provides comprehensive documentation and tutorials directly within the interface.
- **Cross-Platform Compatibility**: Designed to run smoothly on Windows, macOS, and Linux operating systems.

## Getting Started

### Prerequisites

To use Creo IDE, ensure the following prerequisites are installed on your system:

- Node.js 14.x or higher
- Python 3.8 or higher
- Compatible with Windows, macOS, or Linux OS

### Installation

#### From Official CreoDAMO Website

1. **Download the Creo IDE Suite** from the official CreoDAMO website.
2. **For Windows**: Run the `.exe` installer.
3. **For macOS/Linux**: Open the terminal and navigate to the directory where the downloaded file is located. Run the command:
   ```sh
   sh CreoIDESetup.sh
   ```
4. **Verify Installation**: Once the installation is complete, verify it by running the command:
   ```sh
   creoide --version
   ```
   It should display the version number of the installed IDE.

#### From GitHub Repository (Linux)

1. **Open Terminal**: Access your terminal on Linux by pressing `Ctrl + Alt + T` or searching for "Terminal" in your applications.
2. **Install Git** (if not already installed):
   ```sh
   sudo apt-get update
   sudo apt-get install git
   ```
3. **Clone the Repository**:
   ```sh
   git clone https://github.com/CreoDAMO/CreoIDE.git
   cd CreoIDE
   ```
4. **Run Installation Scripts or Commands**:
   If CreoIDE has an installation script or makefile, execute it as per the instructions provided in the repository's README or documentation.
5. **Set Environment Variables** (if needed):
   If CreoIDE requires setting environment variables, configure them as instructed by the documentation.
6. **Verify Installation**:
   Once installed, you can verify the installation by running a CreoIDE command, such as checking its version:
   ```sh
   creoide --version
   ```

### Build and Run the Project

1. **Makefile Setup:**
   - Configured the `Makefile` to handle both C and CreoLang projects.
   - Used the `creo-compiler.sh` script to compile CreoLang files.

2. **Compilation and Execution:**
   - Cleaned the project directory using `make clean`.
   - Ensured the `bin` directory was created.
   - Compiled both the C and CreoLang files using `make all`.
   - Successfully ran both executables:
     - C executable with `make run_c`.
     - CreoLang executable with `make run_creo`.

### Commands Used
```sh
chmod +x scripts/creo-compiler.sh
make clean
mkdir -p bin
make all
make run_c
make run_creo
```

### Next Steps
With this setup, you can now proceed with developing and integrating more features into your CreoIDE project. If you need to add more scripts, compile additional languages, or include more functionality, you can update the `Makefile` and scripts accordingly.

![CreoDAMO - A logo for CreoLang, showcasing a futuristic and innovative vibe  The logo should incorporate elements related to progra](https://github.com/CreoDAMO/CreoIDE/assets/151800081/088b8ed7-f96c-4e00-9fc6-02b5e1a53eeb)


## Project Structure

- **Core Language Engine**: Optimized for the advanced features of CreoLang, ensuring smooth execution of CreoLang code.
- **Development Tools**: Includes a suite of tools such as a code editor, debugger, and version control integration.
- **Standard Library**: Provides easy access to CreoLang's comprehensive standard library.
- **Documentation and Tutorials**: Offers extensive resources to support developers at every step.

## Vision and Goals

Aligned with CreoLang's vision, Creo IDE aims to be a powerful, efficient, and intuitive development environment. It empowers developers to innovate and solve complex problems across various domains. With its extensive features, customization options, and integration capabilities, Creo IDE aims to be the go-to environment for developers working on a wide range of projects.

## Specifications (SPEC-1)

### Background

Creo IDE is the official integrated development environment (IDE) designed specifically for CreoLang. CreoLang is a versatile and innovative programming language tailored for a wide range of modern software development needs.

### Requirements

#### Must Have

- Multi-Language Support
- Intelligent Code Assistance
- Integrated Debugging Tools
- Version Control Integration
- Project Management
- Cross-Platform Compatibility

#### Should Have

- Plugin Ecosystem
- Customization
- Built-In Documentation

#### Could Have

- Biometric Authentication
- Blockchain Wallet Integration
- Quantum Computing Tools
- AR/VR/XR/MR Development Tools

#### Won't Have

- Deprecated Technologies

### Implementation

#### Step-by-Step Guide

1. **Set Up Development Environment**
2. **Implement Core Language Engine**
3. **Develop Development Tools**
4. **Implement Intelligent Code Assistance**
5. **Develop Integrated Debugging Tools**
6. **Implement Project Management**
7. **Develop Plugin Ecosystem**
8. **Implement Customization Options**
9. **Integrate Built-In Documentation**
10. **Ensure Cross-Platform Compatibility**
11. **Run Configuration Integration**
12. **Testing and Quality Assurance**
13. **Deployment**
14. **Post-Deployment**

### Milestones

1. Development Environment Setup
2. Core Language Engine Completion
3. Development Tools Integration
4. Intelligent Code Assistance Implementation
5. Integrated Debugging Tools Completion
6. Project Management Development
7. Plugin Ecosystem Creation
8. Customization Options Implementation
9. Built-In Documentation Integration
10. Cross-Platform Compatibility Testing
11. Testing and Quality Assurance Completion
12. Deployment
13. Post-Deployment

### Gathering Results

1. **User Feedback and Surveys**
2. **Usage Analytics**
3. **Performance Benchmarks**
4. **Bug and Issue Tracking**
5. **Periodic Reviews and Updates**

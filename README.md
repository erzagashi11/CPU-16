# 16-Bit CPU Implementation

This project presents the design and implementation of a 16-bit CPU, built to support fundamental operations and structured for modularity.

## Architecture Overview
- **16-Bit Design**: Handles 16-bit data and addresses across all components.
- **Instruction Formats**: Supports R-format and I-format instructions for arithmetic, logical, memory, and branching operations.

## Key Components
- **ALU**: Executes arithmetic and logical operations with support for overflow, zero detection, and carry.
- **Control Unit**: Decodes instructions and orchestrates the CPU's operations.
- **Register File**: Contains 4 general-purpose 16-bit registers, including `$zero`.
- **Memory**: Includes separate 128-byte Instruction Memory (read-only) and Data Memory (read-write).
- **Program Counter (PC)**: 16-bit register with auto-increment and branch handling.

## Features
- Modular implementation for ALU, control signals, and data paths.
- Instruction decoding based on 3-bit OPCODE.
- Flexible support for immediate and register-based operations via multiplexers.



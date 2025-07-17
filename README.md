# 4-Bit ALU Verilog Project

This project is a *4-bit Arithmetic and Logic Unit (ALU)* implemented in Verilog. It performs basic operations such as addition, subtraction, logical AND, OR, XOR, NOT, and comparison.

## 🧠 Features
- 4-bit input operands (A and B)
- 3-bit opcode to select operation
- Output flags:
  - zero_flag: Set when result is 0
  - carry_flag: Set when carry occurs in arithmetic operations

## 🛠 ALU Operation Codes

| Opcode | Operation       | Description         |
|--------|------------------|---------------------|
| 000    | ADD              | A + B               |
| 001    | SUB              | A - B               |
| 010    | AND              | A & B               |
| 011    | OR               | A \| B              |
| 100    | XOR              | A ^ B               |
| 101    | NOT              | ~A                  |
| 110    | Greater Compare  | A > B ? 1 : 0       |

## 🧪 Files
- alu_4bit.v – ALU logic
- tb_alu_4bit.v – Testbench
- simulation_results.vcd – Simulation output waveform (generated after running)
- .gitignore – Ignore sim build files
- LICENSE – MIT License

## 🔍 How to Simulate

Use any Verilog simulation tool (Icarus, Vivado, etc.):

```bash
# Using Icarus Verilog
iverilog -o alu_tb alu_4bit.v tb_alu_4bit.v
vvp alu_tb
gtkwave simulation_results.vcd

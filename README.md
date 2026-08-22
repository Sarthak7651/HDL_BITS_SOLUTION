# 🛠️ HDL Bits Solutions — Verilog

Welcome to **HDL_BITS_SOLUTION** 👋

This repository contains my solutions to problems from **[HDLBits](https://hdlbits.01xz.net/wiki/Main_Page)**, an interactive platform for learning and practicing **Verilog HDL** and digital circuit design.

The goal of this repository is to document my progress, strengthen my understanding of **RTL design**, and provide a structured reference for Verilog concepts and digital logic problems.

---

## 📚 About HDLBits

[HDLBits](https://hdlbits.01xz.net/wiki/Main_Page) is a collection of small digital-design problems that can be solved using Verilog. The problems gradually increase in difficulty, starting with basic Verilog syntax and logic gates and progressing toward sequential circuits, finite-state machines, and more advanced hardware-design concepts.

HDLBits provides immediate feedback by simulating submitted designs and checking their outputs against expected results.

---

## 🎯 Objectives

This repository is intended to help me:

* Learn and practice **Verilog HDL**
* Understand **digital logic design**
* Develop RTL coding skills
* Practice combinational and sequential circuit design
* Improve problem-solving skills for hardware-design problems
* Build a reference for commonly used Verilog constructs
* Prepare for **FPGA, ASIC, RTL Design, and VLSI** related work

---

## 🗂️ Topics Covered

The solutions are organized around the concepts covered by HDLBits.

### 🔰 Getting Started

* Basic Verilog syntax
* Module declarations
* Inputs and outputs
* Simple assignments
* Basic logic operations

### 🔌 Verilog Basics

* Wires
* Logic gates
* Boolean expressions
* Continuous assignments
* Bitwise operators
* Vector operations

### 📦 Vectors

* Single-bit signals
* Multi-bit vectors
* Vector slicing
* Concatenation
* Replication
* Bit selection
* Reversing vectors

### 🧩 Module Hierarchy

* Module instantiation
* Connecting modules
* Positional connections
* Named connections
* Hierarchical design
* Reusable hardware modules

### 🔄 Procedural Blocks

* `always` blocks
* Combinational logic
* Sequential logic
* `if` / `else`
* `case`
* `casez`
* Priority logic
* Latch inference and prevention

### ➕ Combinational Logic

* Multiplexers
* Encoders
* Decoders
* Adders
* Subtractors
* Comparators
* Arithmetic circuits
* Logic circuits

### ⏱️ Sequential Logic

* D flip-flops
* Registers
* Counters
* Shift registers
* Clocked logic
* Reset logic
* Edge detection

### 🔁 Finite State Machines

* FSM design
* State registers
* Next-state logic
* Moore machines
* Mealy machines
* State transitions

### 🧪 Verification

* Reading simulations
* Understanding waveforms
* Debugging Verilog designs
* Identifying incorrect logic
* Writing and understanding testbenches

---

## 📁 Repository Structure

The solutions are organized according to the HDLBits problem categories.

```text
HDL_BITS_SOLUTION/
│
├── Getting Started/
│   ├── ...
│   └── ...
│
├── Verilog Language/
│   ├── Basics/
│   ├── Vectors/
│   ├── Modules/
│   ├── Procedures/
│   └── More Verilog Features/
│
├── Circuits/
│   ├── Combinational Logic/
│   ├── Sequential Logic/
│   └── FSM/
│
└── README.md
```

> The exact directory structure may evolve as more HDLBits problems are completed.

---

## 💻 Example

A simple HDLBits-style Verilog solution:

```verilog
module top_module(
    input  a,
    input  b,
    output out
);

    assign out = a & b;

endmodule
```

This demonstrates a basic **AND gate** using a continuous assignment.

---

## 🚀 How to Use This Repository

### 1. Clone the repository

```bash
git clone https://github.com/Sarthak7651/HDL_BITS_SOLUTION.git
```

### 2. Enter the repository

```bash
cd HDL_BITS_SOLUTION
```

### 3. Browse the solutions

Navigate through the folders and select a problem you want to study.

### 4. Practice before checking the solution

For the best learning experience:

1. Read the original HDLBits problem.
2. Try solving it yourself.
3. Test your solution on HDLBits.
4. Compare your implementation with the solution in this repository.
5. Understand why the solution works rather than simply copying it.

---

## 🧰 Tools & Technologies

| Technology      | Purpose                             |
| --------------- | ----------------------------------- |
| **Verilog HDL** | Hardware description and RTL design |
| **HDLBits**     | Digital-design problem solving      |
| **Git**         | Version control                     |
| **GitHub**      | Repository hosting                  |
| **Simulation**  | Functional verification             |

---

## 📈 Learning Progress

My progress through HDLBits is intended to follow an incremental path:

```text
Verilog Basics
      ↓
Vectors & Operators
      ↓
Module Hierarchy
      ↓
Combinational Logic
      ↓
Procedural Logic
      ↓
Sequential Logic
      ↓
Counters & Registers
      ↓
Finite State Machines
      ↓
Verification & Debugging
```

---

## 🧠 What I Learned

Working through HDLBits helps develop an understanding of:

* How hardware differs from software
* Combinational vs. sequential logic
* Blocking vs. non-blocking assignments
* Clock-driven circuit design
* Register and flip-flop behavior
* Hardware inference from Verilog code
* FSM implementation
* RTL design techniques
* Debugging hardware through simulation

---

## ⚠️ Disclaimer

These solutions are intended primarily for **learning and reference**.

If you are currently solving HDLBits problems, I strongly recommend attempting each problem yourself before looking at the corresponding solution.

The purpose of this repository is to document learning and provide reference implementations, not to replace the problem-solving process.

---

## 🌐 Useful Resources

* **HDLBits:** https://hdlbits.01xz.net/wiki/Main_Page
* **HDLBits Problem Sets:** https://hdlbits.01xz.net/wiki/Problem_sets
* **Verilog:** https://en.wikipedia.org/wiki/Verilog
* **GitHub Repository:** https://github.com/Sarthak7651/HDL_BITS_SOLUTION

---

## 🤝 Contributions

Suggestions, corrections, optimizations, and improvements are welcome.

If you find an issue with a solution:

1. Open an issue.
2. Explain the problem clearly.
3. Provide the relevant problem or file.
4. If possible, suggest an improved implementation.

---

## ⭐ Support

If this repository helps you learn Verilog or digital design, consider giving it a ⭐ on GitHub!

---

## 👨‍💻 Author

**Sarthak**

GitHub: **[@Sarthak7651](https://github.com/Sarthak7651)**

---

### 📌 Repository Summary

> **HDL_BITS_SOLUTION** is a collection of Verilog solutions to HDLBits digital-design problems, created as a practical learning journey through Verilog, RTL design, combinational logic, sequential logic, FSMs, and hardware verification.

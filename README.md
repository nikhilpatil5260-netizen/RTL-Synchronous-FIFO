# RTL Design and Verification of Synchronous FIFO using Verilog HDL

## Project Overview

This project implements a parameterized Synchronous FIFO (First-In-First-Out) memory using Verilog HDL. The FIFO supports synchronous read and write operations with status flags for efficient data buffering between digital modules.

The design is verified using a self-checking Verilog testbench and simulated using Xilinx ISim.

## Features

- Parameterized Data Width
- Parameterized FIFO Depth
- Synchronous Read Operation
- Synchronous Write Operation
- Full Flag
- Empty Flag
- FIFO Counter
- Reset Functionality
- RTL Simulation
- Functional Verification

## Tools Used

- Verilog HDL
- Xilinx ISE
- ISim Simulator
- GitHub

## Directory Structure
rtl/
tb/
waveforms/
docs/
README.md
LICENSE


## Inputs

| Signal | Description |
|---------|-------------|
| clk | System Clock |
| rst | Active High Reset |
| wr_en | Write Enable |
| rd_en | Read Enable |
| data_in | Input Data |

## Outputs

| Signal | Description |
|---------|-------------|
| data_out | Output Data |
| full | FIFO Full Flag |
| empty | FIFO Empty Flag |
| fifo_count | Number of Stored Data |


## Verification

The following test cases were verified:

- Reset Operation
- FIFO Write
- FIFO Read
- FIFO Empty Condition
- FIFO Full Condition
- Simultaneous Read and Write
- Overflow Detection
- Underflow Detection


## Simulation Waveform



## Future Improvements

- Asynchronous FIFO
- SystemVerilog Assertions
- Functional Coverage
- UVM Testbench
- AXI-Stream FIFO Interface


## Author

**Nikhil Patil**

Electronics and Communication Engineering

Bangalore Institute of Technology

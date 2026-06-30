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
<img width="1285" height="603" alt="Screenshot 2026-06-30 132941" src="https://github.com/user-attachments/assets/e60371b3-1e7e-4e4d-9d33-e6f00f5a5952" />


## Block diagram
<img width="1536" height="1024" alt="block_diagram" src="https://github.com/user-attachments/assets/38e680e8-1f85-42c5-b02c-9ffc59aab2da" />

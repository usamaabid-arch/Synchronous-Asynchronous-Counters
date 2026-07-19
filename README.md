# Synchronous & Asynchronous Counters

## Overview
This repository section contains various implementations of digital counters in SystemVerilog. It explores different design methodologies, including simple cycle trackers, synchronous boolean-logic counters, and asynchronous (ripple) counters.

## Included Modules

### 1. Custom Sequence Counter (`counter`)
A 4-bit synchronous counter utilizing fundamental boolean logic equations to calculate the next state, rather than the standard `+ 1` arithmetic operator.
* **Architecture:** The design tracks state using discrete flip-flops (`q0` to `q3`). `q3` is tied low, making it effectively a 3-bit counter. 
* **Historical Context:** The source file also contains commented-out implementations of a purely asynchronous ripple counter (where the output of one flip-flop acts as the clock for the next) to demonstrate frequency division ($f/2$, $f/4$, $f/8$).

### 2. Clock Cycle Tracker (`clk_count`)
A straightforward operational counter used to track elapsed clock cycles.
* **Architecture:** Utilizes a standard SystemVerilog `integer` data type and the `+ 1` arithmetic operator. It increments on every positive clock edge and clears asynchronously on a negative reset.
* **Verification Use-Case:** This type of module is highly useful inside testbenches to monitor timeout conditions or count the exact number of cycles a specific operation takes.

## Verification
Both modules include dedicated testbenches (`counter_tb` and `clk_counter_tb`).
* The testbenches generate free-running clocks and apply asynchronous resets.
* `$monitor` system tasks are used to print the real-time state of the output vectors to the simulation console whenever a signal changes.
* VCD (Value Change Dump) waveform generation tasks (`$dumpfile`, `$dumpvars`) are included for visual debugging in tools like GTKWave or Vivado.

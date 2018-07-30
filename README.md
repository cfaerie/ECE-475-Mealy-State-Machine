# ECE 475 Mealy State Machine
Authors: Rachel & Danya

Lab 7
The objective is to design a Mealy state machine using behavioral VHDL coding. 
Since the code is behavioral, it doesn't require a schematic to be drawn to understand where to place connections.
Instead, truth tables and state diagrams are the primary source for designing the Mealy state machine logic.

Equipment Used:
Xilinx IDE, iSim, iMPACT
ML501 Xilinx board with Virtex-5 LX Xilinx chip

Part 1:
Design a Mealy 3-bit binary up counter. Counts from 000 to 111 and then repeats.

Part 2: 
Design a Mealy counter that counts using the following pattern:
111 -> 011 -> 100 -> 101 -> 110 -> 111 -> repeat

For each design, a state table and state diagram were created based on the desired counting pattern.
There would need to be two processes. One process models the combinational part of a sequential machine,
and the other process models the state register part. 
The combinational part required the most code. The state register part just allowed for setting the edge triggering and updating the prsent state.

Inputs:  X, CLK
Outputs: Z2, Z1, Z0

The two designs generated the largest and most involved RTL schematics that we have seen in this course,
so far. The waveforms generated performed as desired. And the code was tested on the development board, 
and verified to function as intended.

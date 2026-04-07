# RISC-V-Project



**Project Goal**

Design and implement a RISC-V processor core in Verilog targeting FPGA deployment. The core implements the RV32I base integer instruction set at the RTL level, verified through simulation with Icarus Verilog and GTKWave, and synthesized to run as real hardware on an FPGA.


**Week 1**

- Install Icarus Verilog + GTKWave
- Learn modules, wire/reg, always blocks, combinational vs sequential
- Make repo, start documenting
- Deliverable: 4-bit ALU simulates correctly and viewable in waveforms

**Week 2**

- Build a register file (32 registers, read/write ports)
- Practice testbenches
- Deliverable: Register file you can write to and read from in simulation with a testbench verifying it

**Week 3**

- Read the RV32I base spec
- Understand instruction encoding, register conventions, the 6 instruction formats
- Deliverable: A written/diagrammed decode table mapping opcodes to operations — nothing coded yet, just understanding

**Week 4**

- Build the fetch stage (PC register, instruction memory)
- Build a decode module that identifies instruction type and extracts fields
- Deliverable: Simulation showing correct decode output for at least R, I, and S type instructions

**Week 5**

- Wire ALU into the datapath
- Get R-type and I-type arithmetic instructions working end to end
- Deliverable: Single-cycle core that can execute basic arithmetic instructions in simulation

**Week 6**

- Add load/store, branches, and jumps
- Deliverable: Core runs a small hand-written assembly program (fibonacci or similar) correctly in simulation

**Week 7**

- Refactor into a 5-stage pipeline
- Handle the first three stages with basic hazard awareness
- Deliverable: Pipelined execution visible in waveforms, even if hazards aren't fully resolved yet

**Week 8**

- Implement forwarding and stall logic for data hazards
- Handle basic control hazards with flushes
- Deliverable: Pipelined core runs the same fibonacci program correctly despite hazards

**Week 9**

- Clean up code, write a real README
- Try to synthesize and deploy if you have board access
- Deliverable: Presentable GitHub repo — ideally a demo video of it running on hardware or in simulation

# Lab 1 — Instruction Fetch
<!--
Replace every item in square brackets before submitting.
Keep this README focused on what the design does, how it is used, and how it was
verified.
-->
## Design Scope and Assumptions
- **In scope:** This lab implements an instruction fetch in verilog.
- **Out of scope:** Decode, Execute, Memory Access, Writeback
- **Assumptions:** 32 bit data bus, PC increments by 1 instead of by 4 (word)
- **Limitations:** No write to instruction memory, Disconnected PC from external memory
## Requirements
| Requirement | Description | Verification Method |
|---|---|---|
| Latch | Passes the data through on the clock cycle | [Test case, waveform, calculation, or inspection] |
| Instruction Memory | Holds 2^8 words, First 10 addresses are populated with dummy data, Returns the instruction at a given address | [Test case, waveform, calculation, or inspection] |
| PC | Passes the input as the output on the clock cycle | [Test case, waveform, calculation, or inspection] |
| Mux | Decides which PC input to pass | [Test case, waveform, calculation, or inspection] |
| Adder or Incrementer | Increments PC by 1 each cycle | [Test case, waveform, calculation, or inspection] |
| Final IF Stage | Ties all 5 minor modules together into overall Instruction Fetch | [Test case, waveform, calculation, or inspection] |
## Implementation
### Source Code
| File | Description |
|---|---|
| [`mux2to1.v`](https://github.com/Christopher-Jones-EE/Instruction_Fetch/blob/main/Source-Files/mux2to1.v) | Source code for 2 to 1 multiplexer |
| [`pc.v`](https://github.com/Christopher-Jones-EE/Instruction_Fetch/blob/main/Source-Files/pc.v) | Source code for Program Counter |
| [`incrementer.v`](https://github.com/Christopher-Jones-EE/Instruction_Fetch/blob/main/Source-Files/incrementer.v) | Source code for Incrementer |
| [`half_adder.v`](https://github.com/Christopher-Jones-EE/Instruction_Fetch/blob/main/Source-Files/half_adder.v) | Source code for Half Adder |
| [`instrMem.v`](https://github.com/Christopher-Jones-EE/Instruction_Fetch/blob/main/Source-Files/instrMem.v) | Source code for Instruction Memory |
| [`ifldLatch.v`](https://github.com/Christopher-Jones-EE/Instruction_Fetch/blob/main/Source-Files/ifldLatch.v) | Source code for IF/LD Latch |
| [`fetch.v`](https://github.com/Christopher-Jones-EE/Instruction_Fetch/blob/main/Source-Files/fetch.v) | Source code for Fetch |
| [`I_FETCHTB.v`](https://github.com/Christopher-Jones-EE/Instruction_Fetch/blob/main/Testbench-Files/I_FETCHTB.v) | Testbench code for Fetch module. |
### Implementation Notes
- Instruction Memory has 256 addresses.
- Mux uses 0 for incrementer and 1 for external. Adder, Mux, Fetch are reusable.
- PC counter increments by 1 instead of the usual 4 for word addressing.
## Verification
### Verification Strategy
The design is verified using **Simulation**.
Verification covers:
- PC from incrementer
- PC from external source
- Reset and initialization
- Clock timing
### Testbench and Waveform
Screenshots and waveform images are saved in the repository's `Images/` folder.
The testbench source is available [*here*](https://github.com/Christopher-Jones-EE/Instruction_Fetch/blob/main/Testbench-Files/I_FETCHTB.v).
### Results
| Test Case | Expected Result | Observed Result | Status |
|---|---|---|---|
| TC-01 — Reset | Latch values and PC reset to 0 | Matched expected | Pass |
| TC-02 — PC external | PC and latch values lock at external PC | Matched expected | Pass |
| TC-03 — PC incrementer | PC increments by 1 each cycle, latch values follow | Matched expected | Pass |
## Reproduction Instructions
### Tools and Versions
- **Simulator / synthesis tool:** Vivado 2025.1
- **Language / standard:** Verilog-2005
- **Operating system:** Windows
- **Additional dependencies:** Testbench & README templates from Professor Quon
### Build and Run
```bash
Simulation - Run Simulation
```
Expected output:
```text
INFO: [USF-XSim-96] XSim completed. Design snapshot 'I_FETCHTB_behav' loaded.
```
## Repository Organization
```text
.
├── README.md
├── Images/
│ ├── Fetch_Timing_1.png
│ └── Fetch_Timing_2.png
├── [Source-Files]
└── [Testbench-Files]
```
## Known Issues and Future Improvements
- Disconnected external PC, only 256 addresses, no way to write to addresses, uninitialized memory addresses 
- Ability to write to memory addresses

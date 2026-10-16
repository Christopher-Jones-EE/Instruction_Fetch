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
## Architecture
### Timing or Behavioral Summary
Save diagrams in the repository's `images/` folder. Use relative paths so they
display on GitHub.
![Timing Diagram](images/[timing-diagram-filename].png)
## Implementation
### Source Code
| File | Description |
|---|---|
| [`mux2to1.v`](LINK_TO_IMPLEMENTATION_CODE) | Source code for 2 to 1 multiplexer |
| [`pc.v`](LINK_TO_COMPONENT_CODE) | Source code for Program Counter |
| [`incrementer.v`](LINK_TO_TESTBENCH_CODE) | Source code for Incrementer |
| [`half_adder.v`](LINK_TO_TESTBENCH_CODE) | Source code for Half Adder |
| [`instrMem.v`](LINK_TO_TESTBENCH_CODE) | Source code for Instruction Memory |
| [`ifldLatch.v`](LINK_TO_TESTBENCH_CODE) | Source code for IF/LD Latch |
| [`fetch.v`](LINK_TO_TESTBENCH_CODE) | Source code for Fetch |
| [`I_FETCHTB.v`](LINK_TO_TESTBENCH_CODE) | Testbench code for Fetch module. |
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
Save screenshots and waveform images in the repository's `images/` folder.
![Testbench or waveform](images/[testbench-screenshot-filename].png)
The testbench source is available [*here*](LINK_TO_TESTBENCH_CODE).
### Results
| Test Case | Expected Result | Observed Result | Status |
|---|---|---|---|
| TC-01 — Reset | Latch values and PC to 0 | Matched expected | Pass |
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
├── images/
│ ├── [timing-diagram-filename].png
│ └── [testbench-screenshot-filename].png
├── [source-files]
└── [testbench-files]
```
## Known Issues and Future Improvements
- Disconnected external PC, only 256 addresses, no way to write to addresses, uninitialized memory addresses 
- Ability to write to memory addresses

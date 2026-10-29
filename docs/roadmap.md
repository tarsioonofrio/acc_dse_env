# Roadmap and thesis notes

Moved from the README on 2026-10-29, unchanged.

## Contribution In This Fork

The fork-specific scope and thesis-driven work starts from the topics previously listed in this README (around old line 134). Consolidated summary:

- Expanded accelerator roadmap to include FC and MP2P layer integration.
- Extended end-to-end prototyping goals from per-layer flow to full-CNN flow.
- Planned FC activation support integration.
- Continuous refactoring/organization work to improve maintainability.
- Integration targets with TensorFlow/PyTorch-based generation flow.
- Memory architecture investigations (unified memory and memory hierarchy).
- Verilog translation path for easier ecosystem/IP integration.
- BRAM initialization tooling generalization.
- Convolution engine evolution (stride-1 and parameterizable filter sizes).
- Core-level parallelization studies (pipeline and spatial parallelism).
- Clocking/pipeline improvements for throughput.
- 1D-convolution architecture exploration.
- Integration with broader DSE system-level flow.

Detailed thesis context is below.

## GitHub Metadata (Recommended)

- Description: `CNN accelerator DSE environment (training -> RTL generation -> simulation/synthesis artifacts)`
- Topics: `vhdl`, `rtl`, `hardware-accelerator`, `cnn`, `dse`, `tcl`, `fpga`, `asic`, `verification`

## Repository TODO

- Add PyInvoke
- https://github.com/mentax/csv2xlsx/releases

## Thesis Notes (Detailed Context)

### From Tarsio's Bachelor Thesis

- Finalize integration of FC and MP2P layers with the framework.
- Prototype the complete network, including MaxPool2D and Fully Connected layers.
- Implement FC activation function support.
- Refactor and reorganize the framework.
- Increase TensorFlow integration for memory initialization generation.
- Integrate with PyTorch.
- Evaluate unified memory usage.
- Translate code to Verilog for easier IP integration.
- Make BRAM initialization tooling generic for reuse in other projects.
- Modify CONVWS or develop a new module supporting stride 1 and parameterizable filter sizes (currently focused on 3x3).
- Parallelize cores using temporal and/or spatial parallelism.
- Remove 180-degree shifted BRAM clocking and standardize rising-edge reads.
- Improve inter-core pipeline for higher throughput.
- Evaluate 1D-convolution architecture.
- Integrate this work with the broader DSE flow from Juracy's thesis.

### From Juracy's Doctoral Thesis

- Accelerator prototyping in FPGA for complete CNN execution.
- System-level DSE extension including CPUs, DMA, and CNN accelerators.
- Integration of analytic DSE flow with system simulators.
- HW/SW integration through APIs and processor coupling.
- Expansion of supported dataflows (RS, NRL, FG, etc.).
- Larger accelerator arrays for utilization analysis.
- ImageNet-scale and larger-model integration.
- Benchmark repository for target-driven accelerator comparison.
- Accelerator optimization via low-power techniques, pruning, quantization, and memory hierarchy exploration.

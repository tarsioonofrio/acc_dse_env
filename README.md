# acc_dse_env - CNN Accelerator DSE Environment (Capstone / TCC)

This repository contains my undergraduate capstone (TCC): a reproducible workflow that connects
**CNN configuration/training -> data export -> RTL/BRAM generation -> simulation/synthesis artifacts**.

## Highlights

- End-to-end flow from CNN JSON configs to generated RTL/BRAM initialization files
- Organized experiment artifacts under `experiments/`
- Includes simulation and synthesis collateral (scripts, reports, and analysis folders)

## Architecture

- High-level flow diagram: `docs/architecture.md`

## Quickstart (using existing default artifacts)

1. Create the Python environment:

```bash
conda env create -f environment.yaml
conda activate acc_dse_env
```

2. (Optional) Train a CNN:

```bash
python apps/cnn-train-cifar10.py -n default.json
```

3. Generate RTL + BRAM files:

```bash
python apps/rtl-generate.py -n default.json -w default.json
python apps/bram-generate.py -n default.json -w default.json
```

4. Simulate with provided scripts (see the Simulation section).

## Sanity Check

Use this minimal sequence to verify the workflow wiring:

```bash
python apps/rtl-generate.py -n default.json -w default.json
python apps/bram-generate.py -n default.json -w default.json
ls -la experiments/rtl_output/default/default
```

Optional (requires Questa/ModelSim + cocotb):

```bash
cd sim_coroutine
make -f core_serial.makefile C=default R=default L=0
```

## Results

Add your measured values here so reviewers can evaluate trade-offs quickly.

| Configuration | Frequency target | Latency/cycles | Area | Power | Notes |
| --- | --- | --- | --- | --- | --- |
| `default/default` | TODO | TODO | TODO | TODO | Baseline |
| `small/default` | TODO | TODO | TODO | TODO | Reduced network |
| `default3/default` | TODO | TODO | TODO | TODO | Larger variant |

Suggested source folders for this section:

- `reports/`
- `power_analyses/`
- `synthesis/`

## Where To Start (Interviewers)

- `rtl/`: accelerator components (convolution/core/components/fpga)
- `apps/`: generators and training/export scripts
- `experiments/rtl_output/...`: generated design-specific artifacts
- `sim_coroutine/` and `sim_netlist/`: simulation entry points

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

Detailed thesis context remains below in this README.

## Repository Organization

- `apps/`: Python scripts to train models and generate RTL/BRAM artifacts.
- `experiments/`: generated outputs and configuration JSON files.
- `rtl/`: accelerator HDL sources.
- `sim_coroutine/`: RTL simulation flow scripts (makefiles + runner).
- `sim_netlist/`: netlist simulation scripts (28nm setup).
- `synthesis/`, `reports/`, `power_analyses/`: synthesis and analysis collateral.
- `scripts/`: utility scripts.
- `test/`: cocotb test code.

## Tutorial

### Training

If you do not want to train from scratch, skip this section.

1. Copy and edit a CNN config from `experiments/cnn_config/` (for example `default.json`).
2. Train and export model data:

```bash
python apps/cnn-train-cifar10.py -n <cnn_config.json>
```

Generated training outputs are placed in:

`experiments/cnn_output/<cnn_config_name>/`

### RTL and BRAM Generation

If default generated artifacts are enough for your use case, skip this section.

1. Copy and edit a hardware config from `experiments/rtl_config/`.
2. Run generators:

```bash
python apps/rtl-generate.py -n <cnn_config.json> -w <rtl_config.json>
python apps/bram-generate.py -n <cnn_config.json> -w <rtl_config.json>
```

Generated files are placed in:

`experiments/rtl_output/<cnn_config_name>/<rtl_config_name>/`

Including:

- generics files
- package files for layer configuration (`type_config_*`)
- input feature maps (`ifmap`), weights (`iwght`), and golden outputs (VHDL/TXT)

### Simulation

The RTL simulation flow lives in `sim_coroutine/` and uses makefiles + cocotb.

Examples:

- `cnn.makefile`
- `core_serial.makefile`
- `sys2d_ws.makefile`

For alternate model/hardware configs, update the referenced paths (typically under):

`../experiments/rtl_output/<cnn>/<rtl>/...`

If you need another layer index, change:

`../experiments/rtl_output/default/default/0/config_pkg.vhd`

to:

`../experiments/rtl_output/default/default/1/config_pkg.vhd`

and keep all related paths aligned to the same `<cnn>/<rtl>` pair.

## Known Limitations

See `docs/KNOWN_LIMITATIONS.md`.

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

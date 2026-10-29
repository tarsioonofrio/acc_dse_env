# acc_dse_env: a design-space exploration environment for CNN accelerators (capstone / TCC)

This repository holds the author's undergraduate capstone (TCC): a workflow that goes from a CNN description
to a VHDL accelerator and its evaluation,

**CNN configuration → training and data export → RTL and BRAM generation → RTL simulation → synthesis,
netlist simulation and power.**

A CNN is described in JSON, trained on CIFAR-10 with PyTorch, and exported with its weights and test data;
generators write the VHDL configuration packages, the BRAM initialization files and the golden outputs for a
weight-stationary systolic convolution engine and the other layers; cocotb runs the RTL, and Genus/Xcelium
measure area, timing and power in TSMC 28 nm. The convolution engine synthesized at 500 MHz takes 12 033 µm² of
standard cells and 0.69 mW, and computes 2 700 convolutions in 34 858 cycles.

The repository is a fork of [leorezende93/acc_dse_env](https://github.com/leorezende93/acc_dse_env), whose
first commits it keeps; the work continues the DSE flow of Juracy's doctoral thesis. Planned extensions and the
thesis notes are in [`docs/roadmap.md`](docs/roadmap.md).

## Layout

| Folder | Content |
|---|---|
| `apps/` | entry points: training (`cnn-train-cifar10.py`), inference and tests, RTL and BRAM generators (`rtl-generate.py`, `bram-generate.py`), table generation; `apps/lib/` the shared library |
| `experiments/` | `cnn_config/` and `rtl_config/` (JSON inputs), `cnn_output/` and `rtl_output/<cnn>/<rtl>/` (generated models, packages, BRAM files, goldens) |
| `rtl/` | VHDL: `convolution/`, `convolution-split/` (systolic weight-stationary engines), `core/`, `components/` (MAC, registers, memories), `linear/`, `maxpool/`, `cnn/`, `fpga/` |
| `sim_coroutine/` | cocotb RTL simulation (one makefile per top: `cnn`, `core`, `core_serial`, `sys2d_ws`, `sys2d_ws_split`) |
| `synthesis/` | Genus flow: `source/` (templates), `convolution/` (the synthesized engine with its reports, gate-level simulation and power), `multip_only/` |
| `sim_netlist/` | netlist simulation testbench (28 nm) |
| `lsynth/`, `psynth/`, `power_analyses/` | logical/physical synthesis and power campaigns (28 nm) |
| `reports/` | report generators and the benchmark/Vivado tables |
| `qshift/` | power-of-two (shift) quantization study on CIFAR-10 |
| `cacti/` | CACTI memory model with 28 nm SRAM/DRAM configurations |
| `scripts/` | DSE and PPA batch scripts (`dse.py`, `run_ppa*.sh`, `analitic.py`) |

## Configurations

A run is a pair of JSON files: a CNN configuration (`experiments/cnn_config/`, e.g. `default.json`, `small.json`,
`default3.json`, single-layer cases such as `convolution032.json`) and a hardware configuration
(`experiments/rtl_config/default.json`, 10 ns, or `default-5ns.json`). Outputs go to
`experiments/rtl_output/<cnn>/<rtl>/<layer>/`.

The synthesized design is the split stride-1 systolic convolution (`rtl/convolution-split/syst2d_ws_split_stride1/`,
top `convolution`), whose testbench defaults are the source of truth for its generics.

## Quick start

Create the environment and generate the RTL and BRAM files of the default network from the committed model
(not rerun while this README was written):

```bash
conda env create -f environment.yaml
conda activate accdse
python apps/rtl-generate.py -n default.json -w default.json
python apps/bram-generate.py -n default.json -w default.json
ls experiments/rtl_output/default/default
```

Optionally train the network first (`python apps/cnn-train-cifar10.py -n default.json`). RTL simulation of one
layer (Questa/ModelSim and cocotb):

```bash
cd sim_coroutine
make -f core_serial.makefile C=default R=default L=0
```

## Requirements

| Item | Version used | Notes |
|---|---|---|
| conda | | `environment.yaml` (environment `accdse`: Python 3.9, PyTorch 2.4, torchvision 0.14, TensorFlow 2.4) |
| Questa/ModelSim, cocotb | | RTL simulation (`sim_coroutine/`) |
| Cadence Genus | 21.12 | synthesis and power (`synthesis/`) |
| Cadence Xcelium | 23.03 | gate-level simulation with SDF |
| TSMC 28 nm HPC+ standard cells | | under NDA, not included |
| Vivado | | FPGA reports (`reports/vivado*`) |

## Where each number comes from

| Value | Number | File |
|---|---|---|
| Standard cells | 10 549 | `synthesis/convolution/logical/results/reports/convolution_area.rpt` |
| Standard-cell area | 12 032.874 µm² (net area 5 027.623 µm²) | same file |
| Setup slack at 2 ns | 0 ps (met) | `convolution_timing_setup_analysis_view_0p81v_125c_capwst_slowest.rpt` |
| Power | 0.6876 mW, gate-level activity, 0.90 V/25 °C | `synthesis/convolution/power/power_evaluation.txt` |
| Cycles | 34 858 for 2 700 convolutions | `synthesis/convolution/sim/sim.log`, `sim/xrun.log` |
| Comparison with a naive 3×3 FastConv core | area by block | `synthesis/systolic_vs_naive_notes.md` (in Portuguese) |
| CNN benchmarks | per network and layer | `reports/benchmark-formated/*.csv` |

## Flow, step by step

### 01: training and export (`apps/cnn-train-cifar10.py`)

Copy and edit a CNN configuration from `experiments/cnn_config/`; the script trains on CIFAR-10 and writes the
model and data to `experiments/cnn_output/<cnn>/`. Skip it to use the committed outputs.

### 02: RTL and BRAM generation (`apps/rtl-generate.py`, `apps/bram-generate.py`)

With a CNN and a hardware configuration, the generators write to `experiments/rtl_output/<cnn>/<rtl>/` the
generics, the layer configuration packages (`type_config_*`, `config_pkg.vhd` per layer), the input feature maps
(`ifmap`), the weights (`iwght`) and the golden outputs (VHDL and TXT).

### 03: RTL simulation (`sim_coroutine/`)

cocotb runs one top per makefile against the generated golden. For another model or hardware configuration,
update the paths under `../experiments/rtl_output/<cnn>/<rtl>/`; for another layer, change the layer index in
the `config_pkg.vhd` path (`.../default/default/0/` → `.../1/`), keeping all paths on the same `<cnn>/<rtl>`
pair.

### 04: synthesis (`synthesis/<design>/logical/`)

Genus (`syn_generic/syn_map/syn_opt`) with the MMMC views of `source/scripts/mmmc_tsmc_28_bv.tcl` and a 2 ns clock
on the `clock` port (`source/scripts/constraints.sdc`). To synthesize another design, copy `source/` and adjust
`list-file.txt`/`list-define.txt`.

### 05: gate-level simulation (`synthesis/<design>/sim/`)

Xcelium simulates the netlist with SDF (`args.txt`: `-define NTC -define RECREM`, `-ntc_enhanced -ntc_level 3`),
checks the outputs and writes the activity (`dut.shm`).

### 06: power (`synthesis/<design>/power/`)

Genus reads the netlist and the gate-level activity at 0.90 V/25 °C and writes `power_evaluation.txt`.

## Notes

- **SDF annotation.** Path delays 100 %, timing checks 27.22 % (`$setuphold` 97.60 %, `$recrem` 100 %): the SDF
  written by Genus does not cover the library's `$width` checks; no functional mismatch results from it.
- **Testbench generics.** The gate-level testbench follows the RTL testbench defaults and the flow passes no
  generic overrides, so the simulated netlist is the synthesized one (`synthesis/README.md`, in Portuguese).
- Generated artifacts and sources live side by side; cleaning and regeneration are manual.

## Limitations

- The main flows target 3×3 convolutions; other filter sizes, and the end-to-end integration of the fully
  connected and max-pool layers, are still on the roadmap (`docs/KNOWN_LIMITATIONS.md`).
- Several simulation runs need manual path selection; there is no CI for the whole chain.
- Area and power are after logic synthesis (no place and route) at the typical corner, with one workload.

## License

No license file has been added; the upstream repository has none either, so the authors keep all rights. CACTI
(`cacti/`) keeps its original terms. The standard-cell library is not distributed.

# Known Limitations

## Functional Scope

- Some accelerator blocks and project notes are still under active integration (for example FC/MP2P end-to-end closure).
- Current project notes indicate convolution support centered on 3x3 filters in key flows; broader filter-size support is part of the roadmap.

## Flow and Tooling Assumptions

- Simulation flow assumes Questa/ModelSim and cocotb availability.
- Several simulation configurations rely on manual path/config selection under `experiments/rtl_output/<cnn>/<rtl>/`.
- The repository mixes generated artifacts and source code; cleaning/regeneration policy is manual.

## Reproducibility and CI

- No full CI pipeline is configured for end-to-end training + generation + simulation validation.
- Report generation and post-processing are available, but not standardized as one command pipeline.

## Documentation Gaps (Planned Improvements)

- Results tables in README still need project-specific measured values (latency, area, power).
- The fork contribution section can be further improved with commit/module-level mapping.


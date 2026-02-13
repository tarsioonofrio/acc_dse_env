# Architecture Overview

```mermaid
flowchart LR
  A[CNN Config JSON<br/>experiments/cnn_config/*.json] --> B[Training / Export<br/>apps/cnn-train-cifar10.py]
  B --> C[Model Outputs<br/>experiments/cnn_output/<cnn>/]
  A --> D[RTL Config JSON<br/>experiments/rtl_config/*.json]
  C --> E[RTL Generator<br/>apps/rtl-generate.py]
  D --> E
  C --> F[BRAM Generator<br/>apps/bram-generate.py]
  D --> F
  E --> G[Generated RTL Artifacts<br/>experiments/rtl_output/<cnn>/<rtl>/]
  F --> G
  G --> H[RTL Simulation<br/>sim_coroutine/*.makefile]
  G --> I[Netlist Simulation<br/>sim_netlist/28nm]
  H --> J[Reports / Analysis<br/>reports/, power_analyses/, synthesis/]
  I --> J
```

## Main Entry Points

- Training: `apps/cnn-train-cifar10.py`
- RTL generation: `apps/rtl-generate.py`
- BRAM generation: `apps/bram-generate.py`
- RTL simulation: `sim_coroutine/`
- Netlist simulation: `sim_netlist/`

## Typical Artifact Path

`experiments/rtl_output/<cnn_config>/<rtl_config>/`


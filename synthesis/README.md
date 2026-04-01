# Fluxo de Síntese

A pasta `source/` concentra os arquivos-base que são replicados nos experimentos de síntese:

- `run_logical_synthesis.tcl`: script principal do Cadence Genus. Ele carrega os cenários MMMC (`scripts/mmmc_tsmc_28_bv.tcl`), configura o esforço de síntese, lê os arquivos HDL (`${HDL_FILES}`), executa `syn_generic/syn_map/syn_opt` e gera relatórios de área, clock gating, temporização e potência, além dos netlists e arquivos SDF.
- `run_power.tcl`: script dedicado à análise de potência. Ele reabre o netlist (`${DB_FILE}`), configura o cenário de 0,90 V/25 °C, aplica as restrições (`scripts/constraints.sdc`) e escreve `power_evaluation.txt` com o consumo médio.
- `scripts/constraints.sdc`: restrições temporais aplicadas durante a síntese e análise de potência.
- `scripts/mmmc_tsmc_28_bv.tcl`: definição dos modos/cantos utilizados nos fluxos MMMC.

Cada subpasta adicional (por exemplo, `ifn9-06m`) representa um projeto sintetizado e segue a mesma organização:

- `list-define.txt` e `list-file.txt`: listas auxiliares com macros de compilação e arquivos HDL.
- `logical/`: contém o script ajustado `run_logical_synthesis.tcl`, um wrapper `run_logical_synthesis.sh` e a pasta `results/` com `reports/` e `gate_level/` produzidos pelo Genus.
- `power/`: reúne `run_power.tcl`, o shell script correspondente e os relatórios de potência (`power_evaluation.txt`).
- `sim/`: materiais para simulação pós-síntese (argumentos para o simulador, comando SDF e logs).

Para sintetizar um novo sistema, copie `source/` como base, ajuste os arquivos de lista e scripts e mantenha a estrutura `logical/`, `power/` e `sim/` para armazenar os resultados.

## Ajustes recentes no fluxo

Os ajustes abaixo foram aplicados durante a depuração do fluxo de síntese e da simulação pós-síntese do experimento `synthesis/convolution/`.

- **Correção das constraints de clock**: `scripts/constraints.sdc` passou a criar o clock na porta `clock` em vez de `clk`. Antes disso, o top `convolution` era analisado com registradores sem waveform de clock válida no report verbose. O arquivo atualizado é [`source/scripts/constraints.sdc`](./source/scripts/constraints.sdc).
- **Simulação gate-level alinhada ao DUT sintetizado**: o testbench de síntese [`rtl/convolution-split/syst2d_ws_split_stride1/tb_syst2d_ws_split_stride1_file_synth.vhd`](../rtl/convolution-split/syst2d_ws_split_stride1/tb_syst2d_ws_split_stride1_file_synth.vhd) foi realinhado aos defaults do testbench RTL [`rtl/convolution-split/syst2d_ws_split_stride1/tb_syst2d_ws_split_stride1_file.vhd`](../rtl/convolution-split/syst2d_ws_split_stride1/tb_syst2d_ws_split_stride1_file.vhd), que passou a ser tratado como fonte de verdade para os generics. O top [`rtl/convolution-split/syst2d_ws_split_stride1/syst2d_ws_split_stride1.vhd`](../rtl/convolution-split/syst2d_ws_split_stride1/syst2d_ws_split_stride1.vhd) foi ajustado para seguir os mesmos defaults.
- **Remoção de warnings do testbench**: o testbench gate-level deixou de usar conversões problemáticas com `CONV_INTEGER` para contadores largos e passou a usar conversão segura bit a bit. Isso eliminou os warnings `CONV_INTEGER/TO_INTEGER argument too large` no `xrun.log`.
- **Fluxo de simulação sem override de generics no shell**: [`convolution/sim/run.sh`](./convolution/sim/run.sh) foi mantido sem `GENERIC_FLAGS`, para evitar divergência entre valores hardcoded do testbench gate-level e o netlist realmente sintetizado.
- **Compatibilidade SDF com a biblioteca TSMC no Xcelium**: [`convolution/sim/args.txt`](./convolution/sim/args.txt) passou a compilar a biblioteca temporal com `-define NTC -define RECREM` e a usar `-ntc_enhanced -ntc_level 3`. Esses ajustes removeram os warnings `Unable to annotate to non-existent timing check (RECREM ...)` e também eliminaram os warnings `NTCNNC/NTCWID` observados em elaborações anteriores.

### Estado atual da simulação pós-síntese

- O log mais recente de [`convolution/sim/xrun.log`](./convolution/sim/xrun.log) não apresenta mais:
  - `CONV_INTEGER/TO_INTEGER argument too large`
  - `Unable to annotate to non-existent timing check`
  - `NTCNNC`
  - `NTCWID`
- A execução funcional mais recente completou `2700` convoluções em `34858` ciclos, registrados em [`convolution/sim/xrun.log`](./convolution/sim/xrun.log) e [`convolution/sim/sim.log`](./convolution/sim/sim.log).
- A anotação SDF atual está com:
  - `Pathdelays = 100.00%`
  - `Tchecks = 27.22%`
  - `$recrem = 100.00%`
  - `$setuphold = 97.60%`

O percentual global de timing checks continua limitado porque o SDF exportado pelo Genus não está cobrindo os checks de `$width` da forma contabilizada pelo modelo temporal da biblioteca. Isso não tem se manifestado como mismatch funcional no run atual.

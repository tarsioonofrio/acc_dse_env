# Systolic (`acc_dse_env`) vs Naive (`FastConv_SystemVerilog`)

Este documento consolida os ajustes feitos no fluxo, os experimentos executados e as conclusões obtidas ao comparar:

- `acc_dse_env`: acelerador sistólico com controle de acesso a memória
- `FastConv_SystemVerilog`: convolução `naive` 3x3

Os dois lados foram analisados usando síntese lógica no Cadence Genus com `Area mode: physical library` sobre a mesma biblioteca TSMC 28 nm.

## Contexto dos relatórios comparados

### `acc_dse_env`

- Top sintetizado: `convolution`
- Relatório principal:
  [`synthesis/convolution/logical/results/reports/convolution_area.rpt`](./synthesis/convolution/logical/results/reports/convolution_area.rpt)

### `FastConv_SystemVerilog naive`

- Top sintetizado: `Conv`
- Relatório principal:
  [`/sim/tarsio/FastConv_SystemVerilog/synthesis/conv-naive-m032p/logical/results/reports/conv_area.rpt`](/sim/tarsio/FastConv_SystemVerilog/synthesis/conv-naive-m032p/logical/results/reports/conv_area.rpt)

## Ajustes feitos no fluxo de síntese e simulação

### 1. Constraints de clock no `acc_dse_env`

O arquivo [`synthesis/source/scripts/constraints.sdc`](./synthesis/source/scripts/constraints.sdc) estava usando a porta `clk`, mas o top `convolution` usa `clock`.

Correção aplicada:

- `create_clock -name {clock} -period $period_clock [get_ports {clock}]`
- `set_input_delay -clock clock ...`
- `set_output_delay -clock clock ...`

Efeito:

- antes, o report verbose indicava registradores sem waveform de clock válido
- depois da correção, o clock passou a ser reconhecido corretamente

### 2. Alinhamento entre top, TB RTL e TB gate-level

A fonte de verdade adotada para os generics foi:

- [`rtl/convolution-split/syst2d_ws_split_stride1/tb_syst2d_ws_split_stride1_file.vhd`](./rtl/convolution-split/syst2d_ws_split_stride1/tb_syst2d_ws_split_stride1_file.vhd)

Arquivos alinhados a essa referência:

- [`rtl/convolution-split/syst2d_ws_split_stride1/syst2d_ws_split_stride1.vhd`](./rtl/convolution-split/syst2d_ws_split_stride1/syst2d_ws_split_stride1.vhd)
- [`rtl/convolution-split/syst2d_ws_split_stride1/tb_syst2d_ws_split_stride1_file_synth.vhd`](./rtl/convolution-split/syst2d_ws_split_stride1/tb_syst2d_ws_split_stride1_file_synth.vhd)

Defaults relevantes após o alinhamento:

- `INPUT_SIZE = 20`
- `CARRY_SIZE = 8`
- `MEM_SIZE = 16`
- `SHIFT = 8`
- `N_FILTER = 3`
- `STRIDE = 1`
- `CONVS_PER_LINE = 30`
- `LAT = 0` no TB gate-level

### 3. Limpeza do fluxo gate-level no Xcelium

O script [`synthesis/convolution/sim/run.sh`](./synthesis/convolution/sim/run.sh) foi mantido sem override de generics por shell:

- `GENERIC_FLAGS=""`

Os valores hardcoded do TB gate-level passaram a ser a fonte efetiva da simulação.

### 4. Remoção de warnings `CONV_INTEGER`

No TB gate-level:

- [`rtl/convolution-split/syst2d_ws_split_stride1/tb_syst2d_ws_split_stride1_file_synth.vhd`](./rtl/convolution-split/syst2d_ws_split_stride1/tb_syst2d_ws_split_stride1_file_synth.vhd)

foi criada uma conversão segura bit a bit para contadores largos, substituindo usos problemáticos de `CONV_INTEGER`.

Efeito:

- eliminação dos warnings `CONV_INTEGER/TO_INTEGER argument too large`

### 5. Compatibilidade SDF com a biblioteca TSMC

O arquivo [`synthesis/convolution/sim/args.txt`](./synthesis/convolution/sim/args.txt) foi ajustado para:

- `-define NTC`
- `-define RECREM`
- `-ntc_enhanced`
- `-ntc_level 3`

Motivação:

- os modelos temporais da biblioteca TSMC só expõem `$recrem` sob `NTC` + `RECREM`
- sem esses defines, a anotação SDF falhava com vários `SDFNET`

Efeito:

- remoção dos warnings `Unable to annotate to non-existent timing check (RECREM ...)`
- remoção dos warnings `NTCNNC`
- remoção dos warnings `NTCWID`

### 6. Encerramento limpo da simulação

No TB gate-level, o término da simulação foi alterado de:

- `report ... severity failure`

para:

- `report ... severity note`
- `std.env.stop`
- `wait`

Arquivo:

- [`rtl/convolution-split/syst2d_ws_split_stride1/tb_syst2d_ws_split_stride1_file_synth.vhd`](./rtl/convolution-split/syst2d_ws_split_stride1/tb_syst2d_ws_split_stride1_file_synth.vhd)

Efeito:

- remoção do `REPORT/FAILURE` artificial no final do `xrun.log`

## Estado atual da simulação pós-síntese do `acc_dse_env`

Arquivos relevantes:

- [`synthesis/convolution/sim/xrun.log`](./synthesis/convolution/sim/xrun.log)
- [`synthesis/convolution/sim/sim.log`](./synthesis/convolution/sim/sim.log)
- [`synthesis/convolution/sim/sdf_log.log`](./synthesis/convolution/sim/sdf_log.log)

Resumo:

- não há mais:
  - `CONV_INTEGER`
  - `SDFNET`
  - `NTCNNC`
  - `NTCWID`
- a execução funcional mais recente completou:
  - `2700` convoluções
  - `34858` ciclos
- anotação SDF:
  - `Pathdelays = 100.00%`
  - `Tchecks = 27.22%`
  - `$recrem = 100.00%`
  - `$setuphold = 97.60%`

Observação:

- o percentual global de timing checks continua limitado porque o SDF do Genus não cobre os checks de `$width` da forma contabilizada pelo modelo temporal da biblioteca

## Comparação inicial de área

### Relatórios principais

- `acc_dse_env`:
  [`convolution_area.rpt`](./synthesis/convolution/logical/results/reports/convolution_area.rpt)
- `naive`:
  [`conv_area.rpt`](/sim/tarsio/FastConv_SystemVerilog/synthesis/conv-naive-m032p/logical/results/reports/conv_area.rpt)

### Totais observados

```text
acc_dse total cell area = 12032.874
naive   total cell area = 15359.526
```

## Decomposição por conjuntos

### `acc_dse_env`

Definições:

- `A_acc`: área total do top `convolution`
- `M_acc`: conjunto dos 9 `mac`
- `R_acc`: conjunto dos 9 registradores explícitos da malha
- `C_acc`: resto do top

Valores:

```text
|A_acc| = 12032.874
|M_acc| = 7279.524
|R_acc| = 839.160
|C_acc| = |A_acc| - |M_acc| - |R_acc| = 3914.190
```

### `naive`

Definições:

- `A_nv`: área total do top `Conv`
- `M_nv`: conjunto dos 9 `Multip`
- `S_nv`: `CSA_9`
- `F_nv`: resto do top

Valores:

```text
|A_nv| = 15359.526
|M_nv| = 9517.032
|S_nv| = 680.148
|F_nv| = |A_nv| - |M_nv| - |S_nv| = 5162.346
```

### Tabela legível no terminal

```text
+---------------------------+-------------------+-------------------+------------------------+
| Bloco                     | acc_dse           | naive             | diff (naive - acc_dse) |
+---------------------------+-------------------+-------------------+------------------------+
| Aritmética principal      | 7279.524 (9 MACs) | 9517.032 (9 Mult) | 2237.508               |
| Redução / suporte aritm.  |  839.160 (9 regs) |  680.148 (CSA_9)  | -159.012               |
| Controle + resto do top   | 3914.190          | 5162.346          | 1248.156               |
+---------------------------+-------------------+-------------------+------------------------+
| Total                     | 12032.874         | 15359.526         | 3326.652               |
+---------------------------+-------------------+-------------------+------------------------+
```

## Hipóteses investigadas

### Hipótese A: o controle de memória do `acc_dse_env` deveria torná-lo maior

Conclusão:

- a hipótese intuitiva faz sentido, mas os números mostram que a aritmética do `naive` é mais cara do que parecia
- o controle extra do `acc_dse_env` não foi suficiente para compensar isso

### Hipótese B: o `acc_dse_env` estava artificialmente pequeno por problema de clock/constraints

Conclusão:

- havia de fato um problema de constraints
- ele foi corrigido
- depois da correção, a diferença de área permaneceu
- portanto, isso não explica sozinho a discrepância

### Hipótese C: o `acc_dse_env` teve muita lógica podada

Conclusão:

- verdadeira
- o log do Genus mostra:
  - `GLO-12`
  - `GLO-45`
  - `CDFG-508`
  - substituição de flops por constante `0`
  - simplificações em `weight_control_reg`, `cont_steps_reg`, `address_base_reg`, `H_reg`
- isso reduz parte do controle do `acc_dse_env`
- mas não explica sozinho toda a diferença

## Experimento 1: multiplicador puro no `acc_dse_env`

Arquivo criado:

- [`rtl/components/multip/multip.vhd`](./rtl/components/multip/multip.vhd)

Experimento criado:

- [`synthesis/multip_only/`](./synthesis/multip_only/)

O módulo implementa:

- multiplicação assinada `20x20`
- saída truncada para `28` bits

Resultado:

- [`synthesis/multip_only/logical/results/reports/multip_area.rpt`](./synthesis/multip_only/logical/results/reports/multip_area.rpt)

```text
multip isolado (acc_dse_env)
Cell Count = 570
Cell Area  = 608.076
Total Area = 931.442
```

## Experimento 2: multiplicador puro do `naive` isolado

Experimento criado:

- [`/sim/tarsio/FastConv_SystemVerilog/synthesis/naive_multip_only/`](/sim/tarsio/FastConv_SystemVerilog/synthesis/naive_multip_only/)

Esse fluxo lê diretamente:

- [`/sim/tarsio/FastConv_SystemVerilog/synthesis/conv-naive-m032p/rtl/pack_conv.sv`](/sim/tarsio/FastConv_SystemVerilog/synthesis/conv-naive-m032p/rtl/pack_conv.sv)
- [`/sim/tarsio/FastConv_SystemVerilog/synthesis/conv-naive-m032p/rtl/mac_op9.sv`](/sim/tarsio/FastConv_SystemVerilog/synthesis/conv-naive-m032p/rtl/mac_op9.sv)

e sintetiza apenas o top `Multip`.

Resultado:

- [`/sim/tarsio/FastConv_SystemVerilog/synthesis/naive_multip_only/logical/results/reports/Multip_area.rpt`](/sim/tarsio/FastConv_SystemVerilog/synthesis/naive_multip_only/logical/results/reports/Multip_area.rpt)

```text
Multip isolado (naive)
Cell Count = 570
Cell Area  = 608.076
Total Area = 931.442
```

## Conclusão crítica dos experimentos isolados

O multiplicador puro **não** é maior no `naive`.

Comparação:

```text
acc_dse multip isolado  = 608.076
naive  Multip isolado   = 608.076
```

Isso muda a interpretação do problema:

- a diferença observada no relatório original não vem do multiplicador puro
- ela aparece quando o `Multip` é sintetizado **dentro do contexto do `macoperation`**

## Evidência de inflação contextual no `naive`

No relatório original do `naive`:

- cada `Multip` dentro do `conv` aparece entre `922` e `1015` células
- e entre `968.940` e `1102.122` de `Cell Area`

No netlist do `conv`, o Genus não mantém uma implementação única:

- `Multip`
- `Multip_40`
- `Multip_39`
- `Multip_38`
- ...

Arquivo:

- [`/sim/tarsio/FastConv_SystemVerilog/synthesis/conv-naive-m032p/logical/results/gate_level/conv_logic_mapped.v`](/sim/tarsio/FastConv_SystemVerilog/synthesis/conv-naive-m032p/logical/results/gate_level/conv_logic_mapped.v)

Isso mostra que as instâncias foram **uniquificadas por contexto**.

## Interpretação mais provável

A hipótese mais forte ao final desta investigação é:

- o `Multip` puro é equivalente nos dois projetos
- a inflação de área no `naive` vem do contexto do `macoperation`
- esse contexto inclui:
  - carga/fanout diferentes na saída do multiplicador
  - otimização conjunta com a `CSA_9`
  - pressão de timing do caminho completo sob clock de `2 ns`
  - especialização por instância (`Multip_40`, `Multip_39`, etc.)

Em contraste, no `acc_dse_env`:

- os `mac` vivem numa microarquitetura diferente
- com pipeline e registradores distribuídos
- o controle adicional existe, mas parte dele é podada pelo Genus
- o custo dominante continua sendo a organização aritmética do datapath

## Conclusões finais

1. O `acc_dse_env` não está menor por erro simples de script.
2. O problema de clock/constraints existia, mas foi corrigido e não explica sozinho a diferença.
3. O controle do `acc_dse_env` sofre simplificação por constantes e remoção de flops.
4. O multiplicador puro do `naive` **não** é maior que o do `acc_dse_env`.
5. A diferença principal aparece no contexto do `macoperation` do `naive`.
6. A explicação mais provável é **inflação contextual do caminho aritmético monolítico** no `naive`, e não uma superioridade intrínseca do multiplicador isolado.

## Tabelas dos fluxos de síntese

### Tabela 1: comparação geral de área

```text
+---------------------------+-----------+
| Fluxo                     | Cell Area |
+---------------------------+-----------+
| acc_dse padrão            | 12032.874 |
| acc_dse preserve          | 13264.524 |
| acc_dse preserve_nodpopt  | 13949.460 |
| naive                     | 15359.526 |
+---------------------------+-----------+
```

### Tabela 2: incremento relativo ao fluxo padrão do `acc_dse`

```text
+--------------------------+-----------+----------------+
| Fluxo                    | Delta abs | Delta relativo |
+--------------------------+-----------+----------------+
| preserve                 | 1231.650  | +10.2%         |
| preserve_nodpopt         | 1916.586  | +15.9%         |
+--------------------------+-----------+----------------+
```

### Tabela 3: distância até o `naive`

```text
+--------------------------+----------------------+
| Fluxo                    | naive - fluxo        |
+--------------------------+----------------------+
| acc_dse padrão           | 3326.652             |
| acc_dse preserve         | 2095.002             |
| acc_dse preserve_nodpopt | 1410.066             |
+--------------------------+----------------------+
```

Leitura:

- desligar merge/poda estrutural aproximou o `acc_dse` do `naive`
- desligar também `syn_opt` e clock gating aproximou ainda mais
- mesmo assim, o `naive` permaneceu maior
- isso reforça que a diferença restante não vem só do script, mas também da microarquitetura e do contexto aritmético do `macoperation`

## Próximo passo recomendado

O experimento mais incisivo a partir daqui é:

- sintetizar `macoperation` isolado
- comparar esse bloco com um recorte aritmético equivalente do `acc_dse_env`

Esse é o caminho mais direto para separar:

- custo do multiplicador
- custo da redução (`CSA_9`)
- custo de otimização contextual do bloco monolítico

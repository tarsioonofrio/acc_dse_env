DATA_PATH="/sim/tarsio/FastConv_SystemVerilog/data/ifn9/sim/sim-032-3-3-normal"

rm -rf dut.shm
rm -rf xcelium.d

if command -v module >/dev/null 2>&1; then
  module purge
  module load xcelium > /dev/null 2>&1
fi

# Raiz do repo para prefixar cada entrada do list_file.txt
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
GIT_ROOT=$(git -C "$SCRIPT_DIR" rev-parse --show-toplevel 2>/dev/null || true)
if [[ -z "$GIT_ROOT" ]]; then
  GIT_ROOT=$(cd "$SCRIPT_DIR/../../.." && pwd)
fi

# Testbench e pack conforme usado no histórico
TB=${GIT_ROOT}/rtl/convolution-split/tb_rtl_split_synth.vhd

GATE=../logical/results/gate_level/convolution_logic_mapped.v

# Monta lista de arquivos (uma só linha, sem newline), prefixando GIT_ROOT
files=""
while IFS= read -r line; do
  files="$files$GIT_ROOT/$line "
done < ../list-file.txt

# Monta generics VHDL a partir do generic_file.txt (somente os do tb)
GENERIC_FLAGS=""
TB_GENERICS=("LAYER" "MEM_SIZE" "INPUT_SIZE" "CARRY_SIZE" "SHIFT" "LAT" "PATH")
defines_file="${GIT_ROOT}/experiments/rtl_output/default/default/layer/0/generic_file.txt"
if [[ -f "$defines_file" ]]; then
  while IFS= read -r line; do
    # skip empty lines
    if [[ -z "${line//[[:space:]]/}" ]]; then
      continue
    fi
    # split into tokens by whitespace
    for tok in $line; do
      # Converte -gNAME=VAL para associações VHDL: NAME=>VAL
      if [[ $tok == -g* ]]; then
        tok="${tok:2}"
      fi
      if [[ $tok == *=* ]]; then
        key="${tok%%=*}"
        val="${tok#*=}"
        for g in "${TB_GENERICS[@]}"; do
          if [[ $key == "$g" ]]; then
            if [[ $key == "PATH" ]]; then
              GENERIC_FLAGS="$GENERIC_FLAGS -generic ${key}=>\"${DATA_PATH}\""
            else
              GENERIC_FLAGS="$GENERIC_FLAGS -generic ${key}=>${val}"
            fi
            break
          fi
        done
      fi
    done
  done < "$defines_file"
fi

echo $GENERIC_FLAGS

# Script TCL hardcoded para criar SHM (compatível com versões sem -shm direto)
WAVES_TCL="${SCRIPT_DIR}/shm.tcl"

# Chamada do xrun (mantendo args.txt como no histórico)
# xrun -f args.txt $GENERIC_FLAGS $files $TB $GATE -run -exit
xrun -f args.txt -sv $TB $GATE -v200x $GENERIC_FLAGS $files -access +rwc -input "$WAVES_TCL"

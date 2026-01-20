rm -rf dut.shm
rm -rf xcelium.d

module purge
module load xcelium > /dev/null 2>&1

# Raiz do repo para prefixar cada entrada do list_file.txt
GIT_ROOT=$(git rev-parse --show-toplevel)

# Testbench e pack conforme usado no histórico
TB=${GIT_ROOT}/rtl/convolution-split/tb_rtl_split_synth.vhd

GATE=../logical/results/gate_level/convolution_logic_mapped.v

# Monta lista de arquivos (uma só linha, sem newline), prefixando GIT_ROOT
files=""
while IFS= read -r line; do
  files="$files$GIT_ROOT/$line "
done < ../list-file.txt

# Monta defines: read generic file, strip leading -g from each token and build DEFINE_FLAGS
DEFINE_FLAGS="-define PATH=../FastConv_SystemVerilog/data/ifn9/sim/sim-032-3-3-normal"
defines_file="${GIT_ROOT}/experiments/rtl_output/default/default/layer/0/generic_file.txt"
if [[ -f "$defines_file" ]]; then
  while IFS= read -r line; do
    # skip empty lines
    if [[ -z "${line//[[:space:]]/}" ]]; then
      continue
    fi
    # split into tokens by whitespace
    for tok in $line; do
      # remove leading -g if present
      if [[ $tok == -g* ]]; then
        tok="${tok:2}"
      fi
      # only keep tokens that look like key=value
      if [[ $tok == *=* ]]; then
        DEFINE_FLAGS="$DEFINE_FLAGS -define $tok"
      fi
    done
  done < "$defines_file"
fi

# Chamada do xrun (mantendo args.txt como no histórico)
# xrun -f args.txt $DEFINE_FLAGS $files $TB $GATE -run -exit
xrun -f args.txt -sv $TB $GATE -v200x $DEFINE_FLAGS $files -run -exit

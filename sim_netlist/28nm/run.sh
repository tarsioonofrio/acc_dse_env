#!/bin/bash

# Clean environment
./clean.sh

# Run simulation
module load modelsim
vsim -do sim_${1}_${2}.do -c

mkdir results
mkdir results/layer${4}/
cp transcript results/layer${4}/${1}_${2}_lat${3}_log.txt


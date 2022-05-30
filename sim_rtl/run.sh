#!/bin/bash

# Clean environment
./clean.sh

# Generating application
cd ../apps/
./run.sh ${1} ${2} ${3} ${4} ${5} ${6} ${7} 
cd -

# Run simulation
module load modelsim
vsim -c -do sim_${4}_${5}.do

mkdir results
mkdir results/layer${7}/
cp transcript results/layer${7}/${4}_${5}_lat${6}_log.txt

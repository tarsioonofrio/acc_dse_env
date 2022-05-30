#!/bin/sh

# How to use
# ${1} -> dataflow type
# ${2} -> cnn layer

cd ../sim_rtl
./run.sh cifar10 2.0 16 syst2d ${1} 2 ${2}

cd ../lsynth/28nm/
./run.sh

cd ../../psynth/28nm/
./run.sh

# Data generation for SRAM analyses (LAT 2)
cd ../../sim_netlist/28nm/
./run.sh syst2d ${1} 2 ${2}

cd ../../power_analyses/28nm/
./run.sh 2.0 16 syst2d ${1} 2 ${2}

# Data generation for DRAM analyses (LAT 5)
cd ../../sim_rtl
./run.sh cifar10 2.0 16 syst2d ${1} 5 ${2}

cd ../sim_netlist/28nm/
./run.sh syst2d ${1} 5 ${2}

cd ../../power_analyses/28nm/
./run.sh 2.0 16 syst2d ${1} 5 ${2}


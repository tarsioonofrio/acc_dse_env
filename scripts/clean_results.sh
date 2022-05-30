#!/bin/sh

cd ../sim_rtl
rm -rf results
./clean.sh

cd ../lsynth/28nm/
rm -rf results
./clean.sh

cd ../../psynth/28nm/
rm -rf results
./clean.sh

cd ../../sim_netlist/28nm/
rm -rf results
./clean.sh

cd ../../power_analyses/28nm/
rm -rf results
./clean.sh

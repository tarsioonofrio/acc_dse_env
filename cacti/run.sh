#!/bin/bash

# Clean environment
./clean.sh

# Run application
./cacti -infile sram28nm_2e${1}.cfg > sram_energy.txt
./cacti	-infile	dram28nm_2e${1}.cfg > dram_energy.txt

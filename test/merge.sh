#!/bin/bash

#find . -name "*.csv" -type f -exec rm -f {} \;
rm -f data/*.csv
find data/basic -name "*.csv" -exec awk 'FNR>1 || NR==1' {} + > data/basic.csv
find data/core -name "*.csv" -exec awk 'FNR>1 || NR==1' {} + > data/core.csv
find data/core_serial -name "*.csv" -exec awk 'FNR>1 || NR==1' {} + > data/core_serial.csv
find data/core_serial_input -name "*.csv" -exec awk 'FNR>1 || NR==1' {} + > data/core_serial_input.csv
find data/core_serial_input -name "*.csv" -exec awk 'FNR>1 || NR==1' {} + > data/core_serial_input.csv

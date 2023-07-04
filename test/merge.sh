#!/bin/bash

mkdir -p table
rm -f table/*.xlsx

find data/basic/ -name "*.csv" -exec awk 'FNR>1 || NR==1' {} + > table/basic.csv
find data/core/ -name "*.csv" -exec awk 'FNR>1 || NR==1' {} + > table/core.csv
find data/core_serial_input/ -name "*.csv" -exec awk 'FNR>1 || NR==1' {} + > table/core_serial_input.csv
find data/cnn/ -name "total.csv" -exec awk 'FNR>1 || NR==1' {} + > table/cnn-model.csv
find data/cnn/ -name "layer.csv" -exec awk 'FNR>1 || NR==1' {} + > table/cnn-layer.csv

./csv2xlsx -o table/basic.xlsx table/basic.csv
./csv2xlsx -o table/core.xlsx table/core.csv
./csv2xlsx -o table/core_serial_input.xlsx table/core_serial_input.csv
./csv2xlsx -o table/cnn-model.xlsx table/cnn-model.csv
./csv2xlsx -o table/cnn-layer.xlsx table/cnn-layer.csv
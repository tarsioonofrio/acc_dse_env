#!/bin/bash

mkdir -p benchmark
rm -f benchmark/*.xlsx

find ../data/basic/ -name "*.csv" -exec awk 'FNR>1 || NR==1' {} + > benchmark/basic.csv
find ../data/core/ -name "*.csv" -exec awk 'FNR>1 || NR==1' {} + > benchmark/core.csv
find ../data/core_serial_input/ -name "*.csv" -exec awk 'FNR>1 || NR==1' {} + > benchmark/core_serial_input.csv
find ../data/cnn/ -name "total.csv" -exec awk 'FNR>1 || NR==1' {} + > benchmark/cnn-model.csv
find ../data/cnn/ -name "layer.csv" -exec awk 'FNR>1 || NR==1' {} + > benchmark/cnn-layer.csv

./csv2xlsx -o benchmark/basic.xlsx benchmark/basic.csv
./csv2xlsx -o benchmark/core.xlsx benchmark/core.csv
./csv2xlsx -o benchmark/core_serial_input.xlsx benchmark/core_serial_input.csv
./csv2xlsx -o benchmark/cnn-model.xlsx benchmark/cnn-model.csv
./csv2xlsx -o benchmark/cnn-layer.xlsx benchmark/cnn-layer.csv
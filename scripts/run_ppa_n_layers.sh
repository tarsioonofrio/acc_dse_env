#!/bin/sh

# How to use
# ${1} -> dataflow type

for layer in $(seq 0 2)
do 
  ./run_ppa.sh ${1} $layer
done




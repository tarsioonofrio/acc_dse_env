#!/bin/bash

# find data/ -name "*.csv" -type f -exec rm -f {} \;

listmakesys=(sys2d_ws sys2d_ws_split sys2d_ws_split_multi)
listmake=(sys2d_ws_split_multi core core_serial core_serial_input)

for i in $(seq 0 2);
do
  for M in "${listmakesys[@]}";
  do
    echo "****" BENCHMARK default makefile="$M" layer="$i";
    make -f "$M".makefile C=default R=default L="$i";
  done
done

list=(default default2 default3 default4)
for C in "${list[@]}";
do
  for M in "${listmake[@]}";
  do
    for i in $(seq 0 2);
      do
      echo "****" BENCHMARK makefile="$M" cnn="$C" layer="$i";
      make -f "$M".makefile C="$C" R=default L="$i";
    done
  done
done


list=(small small2)
for C in "${list[@]}";
do
  for M in "${listmake[@]}";
  do
    for i in $(seq 0 1);
    do
      echo "****" BENCHMARK makefile="$M" cnn="$C" layer="$i";
      make -f "$M".makefile C="$C" R=default L="$i";
    done
  done
done

list=(small small2 default default2 default3 default4)
for C in "${list[@]}";
do
  echo "****" BENCHMARK cnn "$C"
  make -f cnn.makefile C="$C" R=default
done



#for i in $(seq 0 2); do make -f core.makefile C=default R=default L="$i"; done
#for i in $(seq 0 2); do make -f core_serial.makefile C=default R=default L="$i"; done
#for i in $(seq 0 2); do make -f core_serial_input.makefile C=default R=default L="$i"; done

#make -f cnn.makefile C=default R=default

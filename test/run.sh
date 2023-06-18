#List=( Item1 Item2 Item3 )

find data/ -name "*.csv" -type f -exec rm -f {} \;

for i in $(seq 0 2); do
  make -f sys2d_ws.makefile C=default R=default L="$i";
  make -f sys2d_ws_split.makefile C=default R=default L="$i";
  make -f sys2d_ws_split_multi.makefile C=default R=default L="$i"
done

list=(default2 default3 default4)
for C in $list;
do
  echo "$C"
  for i in $(seq 0 2);
  do
    make -f sys2d_ws_split_multi.makefile C="$C" R=default L="$i"
    make -f core.makefile C="$C" R=default L="$i";
    make -f core_serial.makefile C="$C" R=default L="$i";
    make -f core_serial_input.makefile C="$C" R=default L="$i";
  done
done


list=(small small2)
for C in $list;
do
  echo "$C"
  for i in $(seq 0 1);
  do
    make -f sys2d_ws_split_multi.makefile C="$C" R=default L="$i"
    make -f core.makefile C="$C" R=default L="$i";
    make -f core_serial.makefile C="$C" R=default L="$i";
    make -f core_serial_input.makefile C="$C" R=default L="$i";
  done
done

list=(small small2 default2 default3 default4)
for C in $list;
do
  echo "$C"
  make -f cnn.makefile C="$C" R=default
done

#for i in $(seq 0 2); do make -f core.makefile C=default R=default L="$i"; done
#for i in $(seq 0 2); do make -f core_serial.makefile C=default R=default L="$i"; done
#for i in $(seq 0 2); do make -f core_serial_input.makefile C=default R=default L="$i"; done

#make -f cnn.makefile C=default R=default

bash merge.sh
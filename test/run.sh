#List=( Item1 Item2 Item3 )

for i in $(seq 0 2); do make -f sys2d_ws.makefile C=default R=default L="$i"; done
for i in $(seq 0 2); do make -f sys2d_ws_split.makefile C=default R=default L="$i"; done
for i in $(seq 0 2); do make -f sys2d_ws_split_multi.makefile C=default R=default L="$i"; done

for i in $(seq 0 2); do make -f core.makefile C=default R=default L="$i"; done
for i in $(seq 0 2); do make -f core_serial.makefile C=default R=default L="$i"; done
for i in $(seq 0 2); do make -f core_serial_input.makefile C=default R=default L="$i"; done

bash merge.sh
database -open dut -shm
probe -create -database dut -depth all -hier /tb/dut
run
exit

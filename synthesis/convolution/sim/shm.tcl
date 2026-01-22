database -open dut -shm
setenv SHM_UNPACKED_LIMIT 5000000
probe -create -database dut -all -depth all -hier /tb/dut
run
database -close dut
exit

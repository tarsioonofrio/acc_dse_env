# cria/define a pasta dut.shm como default
database -open waves -shm -into dut.shm -default
# database -open waves -evcd -into waves.evcd -default

# Eleva limite global para arrays unpacked grandes.
setenv SHM_UNPACKED_LIMIT 3145776
set ::env(SHM_UNPACKED_LIMIT) 3145776

probe -create -unpacked 4000001 :gold
probe -create -unpacked 2621480 :IWGHT:mem
probe -create -unpacked 2621480 :IFMAP:mem
probe -create -unpacked 3145776 :OFMAP:mem

# Probes hierárquicos do DUT para debug funcional/timing sem varrer todo o topo.
probe -create -database waves :tb:dut -all -depth all

run
exit

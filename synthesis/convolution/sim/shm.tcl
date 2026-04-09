# cria/define a pasta dut.shm como default
database -open waves -shm -into dut.shm -default
# database -open waves -evcd -into waves.evcd -default

# Eleva limite global para arrays unpacked grandes.
set ::env(SHM_UNPACKED_LIMIT) 3145776

probe -create -unpacked 4000001 :gold
probe -create -unpacked 2621480 :IWGHT:mem
probe -create -unpacked 2621480 :IFMAP:mem
probe -create -unpacked 3145776 :OFMAP:mem

# Probe hierárquico robusto: tenta DUT; se não encontrar, cai para topo.
if {[catch {probe -create -database waves :tb:dut -all -depth all}]} {
  probe -create -database waves : -all -depth all
}

run
exit

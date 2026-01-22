;# cria/define a pasta dut.shm como default
database -open waves -shm -into dut.shm -default

;# se você tem arrays grandes, isso evita "not probed" por limite
# antes do probe
set ::env(SHM_UNPACKED_LIMIT) 5000000


;# forma mais robusta: sonda tudo que for "top" (evita errar caminho /tb/dut)
probe -create [scope -tops] -all -depth all

run
exit

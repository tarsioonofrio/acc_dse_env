;# Cria/seleciona o banco SHM (mesmo papel do $shm_open("dut.shm"))
database -open dut -into dut.shm -event -default

# Sonda sinais (equivalente ao $shm_probe(..., "ASM"))
# Opção A: tudo a partir do topo automaticamente
# probe -create [scope -tops] -all -depth to_cells -variables

# --- Se preferir exatamente "tb.dut", use esta linha em vez da de cima ---
probe tb.dut -all -depth all -variables

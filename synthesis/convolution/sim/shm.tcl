# cria/define a pasta dut.shm como default
database -open waves -shm -into dut.shm -default
# database -open waves -evcd -into waves.evcd -default

;# se você tem arrays grandes, isso evita "not probed" por limite
# antes do probe
set ::env(SHM_UNPACKED_LIMIT) 5000000

probe -create -unpacked 4000001 :gold 
# or  setenv SHM_UNPACKED_LIMIT 4000001
probe -create -unpacked 2097184 :IWGHT:mem 
# or  setenv SHM_UNPACKED_LIMIT 2097184
probe -create -unpacked 2097184 :IFMAP:mem 
# or  setenv SHM_UNPACKED_LIMIT 2097184
probe -create -unpacked 2359332 :OFMAP:mem 
# or  setenv SHM_UNPACKED_LIMIT 2359332

;# debug: probe candidate scope names for SDF
run 0
set fh [open "scope_test.log" "w"]
set candidates [list ":dut" "dut" ":tb:dut" "tb.dut" ":tb" "tb" ":tb(a1):dut" "tb(a1).dut" ":tb:a1:dut" "tb.a1.dut"]
foreach c $candidates {
  if {[catch {scope $c} err]} {
    puts $fh "SCOPE_FAIL $c :: $err"
  } else {
    puts $fh "SCOPE_OK $c :: [scope]"
  }
}
close $fh

;# forma mais robusta: sonda tudo que for "top" (evita errar caminho /tb/dut)
# probe -create [scope -tops] -all -depth all
# probe -create :tb -all -depth all
probe -create -database waves : -all -depth all

run
exit

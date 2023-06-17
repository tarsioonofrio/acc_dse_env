$(shell rm -rf sim_build)
TESTCASE=test
TOPLEVEL=tb

export MAKEFILE_LIST
export L
export C
export R

MODULE=test
TOPLEVEL_LANG ?= vhdl

filename = $(shell pwd)/../../apps/rtl_output/$(C)/$(R)/layer/$(L)/generic_file.txt
new_generics = $(shell bash ../write_generics_file.sh $(filename)) -gPATH=$(shell pwd)/../../apps/rtl_output/$(C)/$(R)/layer/$(L)
_ := $(shell mkdir -p tmp)
_ := $(shell echo $(new_generics) > tmp/generic_file.txt)


VHDL_SOURCES += $(shell pwd)/../../apps/rtl_output/$(C)/$(R)/core/config_pkg.vhd
VHDL_SOURCES += $(shell pwd)/../../apps/rtl_output/$(C)/$(R)/bram/config_const_pkg.vhd

VHDL_SOURCES += $(shell pwd)/../../rtl/core/util_pkg.vhd

VHDL_SOURCES += $(shell pwd)/../../rtl/components/mac.vhd
VHDL_SOURCES += $(shell pwd)/../../rtl/components/reg.vhd
VHDL_SOURCES += $(shell pwd)/../../rtl/components/mem_file.vhd

VHDL_SOURCES += $(shell pwd)/../../rtl/convolution/syst2d_ws_split_multi.vhd
VHDL_SOURCES += $(shell pwd)/../../rtl/pool/maxpool2d.vhd
VHDL_SOURCES += $(shell pwd)/../../rtl/fully_connected/simple.vhd

VHDL_SOURCES += $(shell pwd)/../../rtl/core/core_serial.vhd

VHDL_SOURCES += $(shell pwd)/../../tb/tb_rtl_core_serial_input.vhd

SIM_ARGS += -voptargs=+acc=lprn -t ps -f $(shell pwd)/tmp/generic_file.txt -wlf vsim.wlf


COCOTB_HDL_TIMESTEP=1
COCOTB_HDL_TIMEPRECISION=ps

COCOTB_SCHEDULER_DEBUG=1
COCOTB_LOG_LEVEL=DEBUG

SIM=questa
WAVES=1
RTL_LIBRARY=work

include $(shell cocotb-config --makefiles)/Makefile.sim



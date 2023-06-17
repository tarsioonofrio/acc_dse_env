$(shell rm -rf sim_build)
MODULE=core
TESTCASE=test
TOPLEVEL=tb
TOPLEVEL_LANG ?= vhdl

export MAKEFILE_LIST
export L
export C
export R



VHDL_SOURCES += $(shell pwd)/../../apps/rtl_output/$(C)/$(R)/layer/$(L)/ifmap_pkg.vhd
VHDL_SOURCES += $(shell pwd)/../../apps/rtl_output/$(C)/$(R)/layer/$(L)/iwght_pkg.vhd
VHDL_SOURCES += $(shell pwd)/../../apps/rtl_output/$(C)/$(R)/layer/$(L)/gold_pkg.vhd

VHDL_SOURCES += $(shell pwd)/../../rtl/components/mac.vhd
VHDL_SOURCES += $(shell pwd)/../../rtl/components/reg.vhd
VHDL_SOURCES += $(shell pwd)/../../rtl/components/mem_split.vhd
VHDL_SOURCES += $(shell pwd)/../../rtl/convolution/syst2d_ws_split.vhd
VHDL_SOURCES += $(shell pwd)/../../rtl/core/core.vhd

VHDL_SOURCES += $(shell pwd)/../../tb/tb_rtl_core.vhd
SIM_ARGS += -voptargs=+acc=lprn -t ps -f $(shell pwd)/../../apps/rtl_output/$(C)/$(R)/layer/$(L)/generic_file.txt -wlf vsim.wlf


COCOTB_HDL_TIMESTEP=1
COCOTB_HDL_TIMEPRECISION=ps

COCOTB_SCHEDULER_DEBUG=1
COCOTB_LOG_LEVEL=DEBUG

SIM=questa
WAVES=1
RTL_LIBRARY=work

include $(shell cocotb-config --makefiles)/Makefile.sim



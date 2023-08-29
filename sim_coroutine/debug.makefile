$(shell rm -rf sim_build)

export MAKEFILE_LIST
export L
export C
export R


MODULE=debug
TESTCASE=debug
TOPLEVEL=tb
TOPLEVEL_LANG ?= vhdl

VHDL_SOURCES += $(shell pwd)/../experiments/rtl_output/default/default/layer/3/ifmap_pkg.vhd
VHDL_SOURCES += $(shell pwd)/../experiments/rtl_output/default/default/layer/3/iwght_pkg.vhd
VHDL_SOURCES += $(shell pwd)/../experiments/rtl_output/default/default/layer/3/gold_pkg.vhd
VHDL_SOURCES += $(shell pwd)/../experiments/rtl_output/default/default/layer/3/config_pkg.vhd
VHDL_SOURCES += $(shell pwd)/../experiments/rtl_output/default/default/layer/3/config_pkg.vhd

VHDL_SOURCES += $(shell pwd)/../rtl/core/util_pkg.vhd
VHDL_SOURCES += $(shell pwd)/../rtl/components/mac.vhd
VHDL_SOURCES += $(shell pwd)/../rtl/components/reg.vhd
VHDL_SOURCES += $(shell pwd)/../rtl/components/mem_split.vhd
VHDL_SOURCES += $(shell pwd)/../rtl/fully_connected/simple.vhd

VHDL_SOURCES += $(shell pwd)/../tb/tb_rtl_fully_connected.vhd


COCOTB_HDL_TIMESTEP=1
COCOTB_HDL_TIMEPRECISION=ps

COCOTB_SCHEDULER_DEBUG=1
COCOTB_LOG_LEVEL=DEBUG

SIM=questa
WAVES=1
RTL_LIBRARY=work
SIM_ARGS += -voptargs=+acc=lprn -t ps -f $(shell pwd)/../experiments/rtl_output/default/default/layer/3/generic_file.txt -wlf vsim.wlf

include $(shell cocotb-config --makefiles)/Makefile.sim



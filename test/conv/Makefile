TESTCASE=conv_normal
TOPLEVEL=tb

MODULE=test
TOPLEVEL_LANG ?= vhdl

VHDL_SOURCES += $(shell pwd)/../../apps/data/inmem_pkg.vhd
VHDL_SOURCES += $(shell pwd)/../../apps/data/iwght_pkg.vhd
VHDL_SOURCES += $(shell pwd)/../../apps/data/ifmap_pkg.vhd
VHDL_SOURCES += $(shell pwd)/../../apps/data/gold_pkg.vhd

VHDL_SOURCES += $(shell pwd)/../../rtl/components/mac.vhd
VHDL_SOURCES += $(shell pwd)/../../rtl/components/reg.vhd
VHDL_SOURCES += $(shell pwd)/../../rtl/components/mem.vhd
VHDL_SOURCES += $(shell pwd)/../../rtl/convolution/syst2d_ws_split.vhd

VHDL_SOURCES += $(shell pwd)/tb.vhd


COCOTB_HDL_TIMESTEP=1
COCOTB_HDL_TIMEPRECISION=ps

COCOTB_SCHEDULER_DEBUG=1
COCOTB_LOG_LEVEL=DEBUG

SIM=questa
WAVES=1
RTL_LIBRARY=work
SIM_ARGS += -voptargs=+acc=lprn -t ps -f ../../apps/data/generic_file.txt -wlf vsim.wlf

# ifeq (@SIM,ghdl)
# #	SIM=ghdl
# 	SIM_ARGS +=--wave=waveform.ghw --disp-signals-table
# 	EXTRA_ARGS += --ieee=synopsys
# else  ifeq (@SIM,questa)
# 	SIM=questa
# 	WAVES=1
# 	COMPILE_ARGS += -cover sbcefx
# 	RTL_LIBRARY=work
# 	VHDL_LIB_ORDER=inmem_package iwght_package ifmap_package gold_package memory reg mac convolution  
# 	SIM_ARGS += -voptargs="-access=rw+/. +acc" -suppress 12130 -t ps -f ../apps/data/generic_file.txt -wlf vsim.wlf
# 	SIM_ARGS += -voptargs=+acc=lprn -t ps work.tb -f ../apps/data/generic_file.txt -wlf vsim2.wlf
# endif

# conv-normal:
# VHDL_SOURCES += $(shell pwd)/tb_conv.vhd
# TESTCASE=conv_normal
# TOPLEVEL=tb

include $(shell cocotb-config --makefiles)/Makefile.sim



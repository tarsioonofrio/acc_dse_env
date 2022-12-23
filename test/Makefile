# This file is public domain, it can be freely copied without restrictions.
# SPDX-License-Identifier: CC0-1.0

SIM=questa

TESTCASE=simple
TOPLEVEL=tb
MODULE=test
TOPLEVEL_LANG ?= vhdl
VHDL_SOURCES += $(shell pwd)/../apps/data/inmem_pkg.vhd
VHDL_SOURCES += $(shell pwd)/../apps/data/iwght_pkg.vhd
VHDL_SOURCES += $(shell pwd)/../apps/data/ifmap_pkg.vhd
VHDL_SOURCES += $(shell pwd)/../apps/data/gold_pkg.vhd

VHDL_SOURCES += $(shell pwd)/../rtl/components/mac.vhd
VHDL_SOURCES += $(shell pwd)/../rtl/components/reg.vhd
VHDL_SOURCES += $(shell pwd)/../rtl/components/mem.vhd
VHDL_SOURCES += $(shell pwd)/../rtl/convolution/syst2d_ws_split.vhd

VHDL_SOURCES += $(shell pwd)/tb.vhd


ifeq (@SIM,ghdl)
#	SIM=ghdl
	SIM_ARGS +=--wave=waveform.ghw --disp-signals-table
	EXTRA_ARGS += --ieee=synopsys
else  ifeq (@SIM,questa)
#  	SIM=questa
	WAVES=1
	COMPILE_ARGS += -cover sbcefx
	RTL_LIBRARY=work
	VHDL_LIB_ORDER=inmem_package iwght_package ifmap_package gold_package memory reg mac convolution  
	SIM_ARGS += -voptargs="-access=rw+/. +acc=lprn" -suppress 12130 -f ../apps/data/generic_file.txt
endif

include $(shell cocotb-config --makefiles)/Makefile.sim


#!/bin/sh

module load modelsim
vdel -all
rm -rf modelsim.ini transcript vsim.wlf wlf* work
rm -rf *.vcd vsim_stacktrace.vstf tcl_stacktrace.txt *_log.txt

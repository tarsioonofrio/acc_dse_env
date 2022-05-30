#!/bin/sh

cp ../../apps/generic_synth.tcl .

module load innovus/181
innovus -common_ui -no_gui -files commands.tcl

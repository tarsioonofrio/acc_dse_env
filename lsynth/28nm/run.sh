#!/bin/sh

./clean.sh

module load genus/181
genus -f commands.tcl -no_gui

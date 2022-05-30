#!/bin/sh

# 2.0 16 syst2d ws 2 0
mkdir results
mkdir results/${1}ns
mkdir results/${1}ns/${2}bit
mkdir results/${1}ns/${2}bit/${3}_${4}/
mkdir results/${1}ns/${2}bit/${3}_${4}/lat${5}/
mkdir results/${1}ns/${2}bit/${3}_${4}/lat${5}/layer${6}
mkdir results/${1}ns/${2}bit/${3}_${4}/lat${5}/layer${6}/reports

module load innovus/181
innovus -common_ui -no_gui -files power_analysis.tcl

cp activity.report.avgpower results/${1}ns/${2}bit/${3}_${4}/lat${5}/layer${6}/reports/activity_avg_power.txt
cp activity.report.hierpwr  results/${1}ns/${2}bit/${3}_${4}/lat${5}/layer${6}/reports/activity_hier_power.txt

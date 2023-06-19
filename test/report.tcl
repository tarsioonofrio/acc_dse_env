# set name of project
set PRJ S2
report_utilization -hierarchical -hierarchical_depth 3 -file report-util-$PRJ.txt
report_timing_summary -delay_type min_max -file report-timming-$PRJ.txt
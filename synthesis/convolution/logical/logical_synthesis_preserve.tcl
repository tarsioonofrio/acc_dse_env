###############################################################################
# TOP
###############################################################################

set TOP_MODULE convolution

set OUT_FILES "[pwd]/results"

set GIT_ROOT [exec git rev-parse --show-toplevel]

set file_list_path "../list-file.txt"

set HDL_FILES ""

if { [file exists $file_list_path] } {
    set fp [open $file_list_path r]
    while { [gets $fp line] >= 0 } {
        set line_trim [string trim $line]
        if { $line_trim ne "" } {
            append HDL_FILES "${GIT_ROOT}/$line_trim "
        }
    }
    close $fp
}

set DEFINE_FLAGS ""

append HDL_FILES "${GIT_ROOT}/rtl/convolution-split/syst2d_ws_split_stride1/syst2d_ws_split_stride1.vhd"

source ${GIT_ROOT}/synthesis/source/logical_synthesis_preserve.tcl

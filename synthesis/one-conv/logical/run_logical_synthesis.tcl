###############################################################################
# TOP
###############################################################################

set TOP_MODULE system

set OUT_FILES "[pwd]/results"

set GIT_ROOT [exec git rev-parse --show-toplevel]

# Read file_list.txt and concatenate its contents into a variable
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

set defines_file "experiments/rtl_output/default/default/layer/0/generic_file.txt"
set DEFINE_FLAGS ""

if {[file exists $defines_file]} {
    set fp_def [open $defines_file r]
    while {[gets $fp_def line] >= 0} {
        set line_trim [string trim $line]
        if {$line_trim ne ""} {
            # split the line into tokens (whitespace separated) and process each token
            set tokens [split $line_trim]
            foreach tok $tokens {
                # remove leading "-g" if present
                if {[string match "-g*" $tok]} {
                    set tok [string range $tok 2 end]
                }
                # only keep tokens that look like key=value
                if {$tok ne "" && [string first "=" $tok] >= 0} {
                    append DEFINE_FLAGS " $tok"
                }
            }
        }
    }
    close $fp_def
}

append HDL_FILES "${GIT_ROOT}/rtl/system/system.sv"

source ${GIT_ROOT}/synthesis/source/run_logical_synthesis.tcl

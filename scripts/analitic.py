import os
import sys
import math

# How to use:
# sys.argv[1] -> clock period (2.0)
# sys.argv[2] -> hw input size (8/16)
# sys.argv[3] -> array type (syst2d)
# sys.argv[4] -> dataflow type (ws/ws_buf/is/is_buf/os)
# sys.argv[5] -> memory type (sram/dram)
# sys.argv[6] -> cnn layer input dimension
# sys.argv[7] -> cnn layer input channel
# sys.argv[8] -> cnn layer number of filters
# sys.argv[9] -> cnn layer filter dimension
# sys.argv[10] -> cnn layer stride dimension

# User inputs (ex: 2.0 16 syst2d ws sram 224 32 3 2) 
CLOCK_PERIOD = float(sys.argv[1])
INPUT_SIZE = int(sys.argv[2])
ARRAY_TYPE = str(sys.argv[3])
DATAFLOW_TYPE = str(sys.argv[4])
MEM_TYPE = str(sys.argv[5])
CNN_INPUT_D = int(sys.argv[6])
CNN_INPUT_N = int(sys.argv[7])
CNN_FILTER_N = int(sys.argv[8])
CNN_FILTER_D = int(sys.argv[9])
CNN_STRIDE_D = int(sys.argv[10])

if MEM_TYPE == "sram":
    MEM_LAT = 2
else:
    MEM_LAT = 5

# Analitical analyses performed based on layer 0
LAYER = 0

sim_rtl_log_path = "../sim_rtl/results/layer" + str(LAYER) + "/" + str(ARRAY_TYPE) + "_" + str(
    DATAFLOW_TYPE) + "_lat" + str(MEM_LAT) + "_log.txt"
psynth_results_path = "../psynth/28nm/results/" + str(CLOCK_PERIOD) + "ns/" + str(INPUT_SIZE) + "bit/" + str(
    ARRAY_TYPE) + "_" + str(DATAFLOW_TYPE) + "/layer" + str(LAYER) + "/reports/" + str(ARRAY_TYPE) + "_" + str(
    DATAFLOW_TYPE) + "_area.txt"
power_analyses_results_path = "../power_analyses/28nm/results/" + str(CLOCK_PERIOD) + "ns/" + str(
    INPUT_SIZE) + "bit/" + str(ARRAY_TYPE) + "_" + str(DATAFLOW_TYPE) + "/lat" + str(MEM_LAT) + "/layer" + str(
    LAYER) + "/reports/activity_avg_power.txt"
power_analyses_hier_results_path = "../power_analyses/28nm/results/" + str(CLOCK_PERIOD) + "ns/" + str(
    INPUT_SIZE) + "bit/" + str(ARRAY_TYPE) + "_" + str(DATAFLOW_TYPE) + "/lat" + str(MEM_LAT) + "/layer" + str(
    LAYER) + "/reports/activity_hier_power.txt"
cacti_sram_path = "../cacti/sram_energy.txt"
cacti_dram_path = "../cacti/dram_energy.txt"

sim_rtl_log_file = open(sim_rtl_log_path)
psynth_results_file = open(psynth_results_path)
power_analyses_results_file = open(power_analyses_results_path)
power_analyses_hier_results_file = open(power_analyses_hier_results_path)

if MEM_TYPE == "sram":
    cacti_file = open(cacti_sram_path)
else:
    cacti_file = open(cacti_dram_path)

# Compute output layer dimensions
layer_dimension = 0
if (CNN_INPUT_D - CNN_FILTER_N) % 2 != 0:
    layer_dimension = math.ceil(((CNN_INPUT_D - CNN_FILTER_D + 1) / CNN_STRIDE_D))
else:
    layer_dimension = math.ceil(((CNN_INPUT_D - CNN_FILTER_D) / CNN_STRIDE_D))

if DATAFLOW_TYPE == "ws" or DATAFLOW_TYPE == "ws_buf":
    # Compute input memory read
    inmem_read = ((layer_dimension + 5) * 6 * CNN_INPUT_N * CNN_FILTER_N) + CNN_FILTER_N + (
                ((CNN_FILTER_D * CNN_FILTER_D) + 1) * CNN_INPUT_N * CNN_FILTER_N) + (
                             6 * layer_dimension * layer_dimension * CNN_INPUT_N * CNN_FILTER_N)

    # Compute number of cycles
    # ws spent 5 steps to fill the pipe (bubble)
    # ws perform 1 extra read for weights (bubble)
    # ws read 6 values per operation
    # ws spent 1 cycle to register output
    # ws output spent 2 cycles per output
    # ws spent 3 steps between each filter load
    term1 = ((((CNN_FILTER_D * CNN_FILTER_D) + 1) + 1) * CNN_INPUT_N * (1 + MEM_LAT)) * CNN_FILTER_N
    term2 = ((6 * layer_dimension * layer_dimension * CNN_INPUT_N) * (1 + MEM_LAT)) * CNN_FILTER_N
    term3 = ((layer_dimension + 5) * 6 * CNN_INPUT_N * (1 + MEM_LAT)) * CNN_FILTER_N
    term4 = (layer_dimension * layer_dimension * CNN_INPUT_N * 2) * CNN_FILTER_N
    term5 = (((6 * 2 * (1 + MEM_LAT))) * CNN_INPUT_N) * CNN_FILTER_N

    cycles = term1 + term2 + term3 + term4 + term5

    print("\n")
    print("performance breakthrough:")
    print("% term1 = " + str(float(term1 / cycles)))
    print("% term2 = " + str(float(term2 / cycles)))
    print("% term3 = " + str(float(term3 / cycles)))
    print("% term4 = " + str(float(term4 / cycles)))
    print("% term5 = " + str(float(term5 / cycles)))
    print("\n")

elif DATAFLOW_TYPE == "is_slice" or DATAFLOW_TYPE == "is_slice_hier":
    # Compute input memory read
    inmem_read = (layer_dimension * layer_dimension) * 9 * CNN_INPUT_N + CNN_FILTER_N + (
                CNN_FILTER_N * CNN_FILTER_D * CNN_FILTER_D * CNN_INPUT_N)

    # Compute number of cycles
    # is has invalid multiplications at each line start (bubble)
    # is spent time loading the weights and bias
    # is read 9 values per operation
    # is output spent 1 cycles per output
    if MEM_TYPE == "sram":
        # Compute number of cycles
        term1 = (layer_dimension * CNN_FILTER_N * 9)
        term2 = ((layer_dimension * layer_dimension) * 9 * CNN_INPUT_N + CNN_FILTER_N + (
                    CNN_FILTER_N * CNN_FILTER_D * CNN_FILTER_D * CNN_INPUT_N)) * (1 + MEM_LAT)
        term3 = (layer_dimension * layer_dimension * CNN_FILTER_N * CNN_INPUT_N * 9)
        term4 = (layer_dimension * layer_dimension * CNN_FILTER_N * CNN_INPUT_N * 2)

        cycles = term1 + term2 + term3 + term4
    else:
        # is has to wait valid signal for latancy > 3 cycles
        term1 = (layer_dimension * CNN_FILTER_N * 9)
        term2 = ((layer_dimension * layer_dimension) * 9 * CNN_INPUT_N + CNN_FILTER_N + (
                    CNN_FILTER_N * CNN_FILTER_D * CNN_FILTER_D * CNN_INPUT_N)) * (1 + MEM_LAT)
        term3 = (layer_dimension * layer_dimension * CNN_FILTER_N * CNN_INPUT_N * 9)
        term4 = layer_dimension * layer_dimension * CNN_FILTER_N * CNN_INPUT_N * (MEM_LAT - 2)

        cycles = term1 + term2 + term3 + term4

    print("\n")
    print("performance breakthrough:")
    print("% term1 = " + str(float(term1 / cycles)))
    print("% term2 = " + str(float(term2 / cycles)))
    print("% term3 = " + str(float(term3 / cycles)))
    print("% term4 = " + str(float(term4 / cycles)))
    print("\n")

elif DATAFLOW_TYPE == "is_slice_buf" or DATAFLOW_TYPE == "is_slice_buf_hier":
    # Compute input memory read
    inmem_read = (layer_dimension * layer_dimension) * 9 * CNN_INPUT_N + CNN_FILTER_N + (
                CNN_FILTER_N * CNN_FILTER_D * CNN_FILTER_D * CNN_INPUT_N)

    # Compute number of cycles
    # is has invalid multiplications at each line start (bubble)
    # is spent time loading the weights and bias
    # is read 9 values per operation
    # is requires time to accumulate the values (CNN_INPUT_N-1)
    # is output spent 2 cycles per output
    term1 = (layer_dimension * CNN_FILTER_N * 9)
    term2 = ((layer_dimension * layer_dimension) * 9 * CNN_INPUT_N + CNN_FILTER_N + (
                CNN_FILTER_N * CNN_FILTER_D * CNN_FILTER_D * CNN_INPUT_N)) * (1 + MEM_LAT)
    term3 = (layer_dimension * layer_dimension * CNN_FILTER_N * CNN_INPUT_N * 9)
    term4 = layer_dimension * layer_dimension * CNN_FILTER_N * 2

    cycles = term1 + term2 + term3 + term4

    print("\n")
    print("performance breakthrough:")
    print("% term1 = " + str(float(term1 / cycles)))
    print("% term2 = " + str(float(term2 / cycles)))
    print("% term3 = " + str(float(term3 / cycles)))
    print("% term4 = " + str(float(term4 / cycles)))
    print("\n")

elif DATAFLOW_TYPE == "os":
    # Compute input memory read
    inmem_read = (18 * CNN_FILTER_N) + ((layer_dimension * layer_dimension) * 18 * CNN_INPUT_N * CNN_FILTER_N) + (
        CNN_FILTER_N)

    # Compute number of cycles
    # os has invalid multiplications at each ofmap start (bubble)
    # os read 18 values per operation
    # os output spent 2 cycles per output
    term1 = (18 * CNN_FILTER_N * (1 + MEM_LAT))
    term2 = ((layer_dimension * layer_dimension) * 18 * (1 + MEM_LAT) * CNN_INPUT_N * CNN_FILTER_N)
    term3 = (layer_dimension * layer_dimension * CNN_FILTER_N * 2)

    cycles = term1 + term2 + term3

    print("\n")
    print("performance breakthrough:")
    print("% term1 = " + str(float(term1 / cycles)))
    print("% term2 = " + str(float(term2 / cycles)))
    print("% term3 = " + str(float(term3 / cycles)))
    print("\n")

# Compute read and write of ofmap memory
if (DATAFLOW_TYPE == "ws_buf" or DATAFLOW_TYPE == "is_slice_buf" or
        DATAFLOW_TYPE == "is_slice_buf_hier" or DATAFLOW_TYPE == "os"):
    ofmap_read = 0
    ofmap_write = (layer_dimension * layer_dimension) * CNN_FILTER_N
else:
    ofmap_read = (layer_dimension * layer_dimension) * CNN_FILTER_N * (CNN_INPUT_N - 1)
    ofmap_write = (layer_dimension * layer_dimension) * CNN_FILTER_N * CNN_INPUT_N

# Get iformation from PPA
BUF_AREA = 0
ACC_AREA = 0
for line in psynth_results_file.readlines()[2:]:
    if "convolution" in line or "syst2d" in line:
        # print(line.split(" "))
        if (line.split(" ")[len(line.split(" ")) - 2]) != '':
            ACC_AREA = float((line.split(" ")[len(line.split(" ")) - 2]))
        if (line.split(" ")[len(line.split(" ")) - 3]) != '':
            ACC_AREA = float((line.split(" ")[len(line.split(" ")) - 3]))
        if (line.split(" ")[len(line.split(" ")) - 4]) != '':
            ACC_AREA = float((line.split(" ")[len(line.split(" ")) - 4]))
    if BUF_AREA == 0:
        if "output_buffer" in line:
            if (line.split(" ")[len(line.split(" ")) - 2]) != '':
                BUF_AREA = float((line.split(" ")[len(line.split(" ")) - 2]))
            elif (line.split(" ")[len(line.split(" ")) - 3]) != '':
                BUF_AREA = float((line.split(" ")[len(line.split(" ")) - 3]))
            elif (line.split(" ")[len(line.split(" ")) - 4]) != '':
                BUF_AREA = float((line.split(" ")[len(line.split(" ")) - 4]))
            elif (line.split(" ")[len(line.split(" ")) - 5]) != '':
                BUF_AREA = float((line.split(" ")[len(line.split(" ")) - 5]))

for line in power_analyses_results_file.readlines()[12:]:
    if "Average Total Power" in line:
        POWER = float((line.split(" ")[len(line.split(" ")) - 10]))

POWER_BUF = 0
get_power_buf_flag = 0
total_flag = 0
for line in power_analyses_hier_results_file.readlines()[12:]:
    if "output_buffer" in line:
        get_power_buf_flag = 1
    if get_power_buf_flag == 1:
        if "Total" in line:
            if total_flag == 1:
                POWER_BUF = float(line.split(" ")[len(line.split(" ")) - 8])
            total_flag = total_flag + 1

# Get iformation from Cacti
for line in cacti_file.readlines()[45:]:
    if "Total dynamic read energy per access" in line:
        MEM_READ_ENERGY = float((line.split(" ")[len(line.split(" ")) - 1]))
    if "Total dynamic write energy per access" in line:
        MEM_WRITE_ENERGY = float((line.split(" ")[len(line.split(" ")) - 1]))

    if "Read Energy" in line:
        MEM_READ_ENERGY = float((line.split(" ")[len(line.split(" ")) - 1]))
    if "Write Energy" in line:
        MEM_WRITE_ENERGY = float((line.split(" ")[len(line.split(" ")) - 1]))

inmem_buf = (CNN_FILTER_N + (CNN_FILTER_N * CNN_FILTER_D * CNN_FILTER_D * CNN_INPUT_N)) * INPUT_SIZE

# Get results through trend lines based on rea 
output_buf_area = 0
output_buf_power = 0
n_bits = 0
if DATAFLOW_TYPE == "ws_buf":
    n_bits = (layer_dimension * layer_dimension) * INPUT_SIZE
    output_buf_area = (10.4 * n_bits) + 493
    if MEM_TYPE == "sram":
        output_buf_power = 0.0792 + (0.000305 * n_bits) + (0.0000000117 * (n_bits ** 2))
    else:
        output_buf_power = 0.0794 + (0.000245 * n_bits) + (0.0000000109 * (n_bits ** 2))
elif DATAFLOW_TYPE == "is_slice_buf" or DATAFLOW_TYPE == "is_slice_buf_hier":
    n_bits = (layer_dimension * CNN_FILTER_N) * INPUT_SIZE
    output_buf_area = (10.5 * n_bits) + 539
    if MEM_TYPE == "sram":
        output_buf_power = -5.4 + (0.00346 * n_bits) + (-0.000000402 * (n_bits ** 2))
    else:
        output_buf_power = -7.98 + (0.00484 * n_bits) + (-0.000000595 * (n_bits ** 2))

# Report
print("core area: " + str(ACC_AREA - BUF_AREA) + " um^2")
print("output buffer area: " + str(output_buf_area) + " um^2")
print("accelerator total area: " + str((ACC_AREA - BUF_AREA) + output_buf_area) + " um^2")
print("input buffer capacity: " + str(inmem_buf) + " bits")
print("number of cycles: " + str(cycles))
print("core power: " + str(POWER - POWER_BUF) + " mW")
print("buf power: " + str(output_buf_power) + " mW")
print("acc power: " + str((POWER - POWER_BUF) + output_buf_power) + " mW")
print("acc total energy: " + str(float((POWER - POWER_BUF) + output_buf_power) * int(cycles)) + " fJ")
print("input memory reads: " + str(inmem_read))
print("input memory writes: " + str(0))
print("ofmap memory reads: " + str(ofmap_read))
print("ofmap memory writes: " + str(ofmap_write))

if MEM_TYPE == "sram":
    print("sram read energy: " + str(float(MEM_READ_ENERGY * (inmem_read + ofmap_read))) + " nJ")
    print("sram write energy: " + str(float(MEM_WRITE_ENERGY * ofmap_write)) + " nJ")
else:
    print("dram read energy: " + str(float(MEM_READ_ENERGY * (inmem_read + ofmap_read))) + " nJ")
    print("dram write energy: " + str(float(MEM_WRITE_ENERGY * ofmap_write)) + " nJ")

TOTAL_POWER = (float(MEM_READ_ENERGY * (inmem_read + ofmap_read))) + (float(MEM_WRITE_ENERGY * (ofmap_write))) + (
            (float((POWER - POWER_BUF) + output_buf_power) * int(cycles)) / 1000000)

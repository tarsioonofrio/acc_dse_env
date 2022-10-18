import sys
import os
import operator

from typing import NamedTuple

# sram or dram
MEM = str(sys.argv[1])

# power, performnce or area
TARGET = str(sys.argv[2])

# cnn layer
LAYER = str(sys.argv[3])

ARRAY = "syst2d"
DATAFLOW = ["ws", "ws_buf", "is_slice_hier", "is_slice_buf_hier", "os"]
DSE_PARALLEL = [1, 2, 4, 8, 16, 32]

LAT = [2, 5]
CLOCK_PERIOD = 2.0
INPUT_SIZE = 16
MEM_SIZE = 16


class Accelerator(NamedTuple):
    array: str
    dataflow: str
    mem: str
    area: float
    buf_area: float
    n_cycles: int
    core_power: float
    core_energy: float
    inmem_read: int
    inmem_write: int
    ofmap_read: int
    ofmap_write: int
    mem_r_energy: float
    mem_w_energy: float
    total_energy: float


acc_list = []

get_cycles_flag = 0

if MEM == "sram":
    MEM_LAT = LAT[0]
else:
    MEM_LAT = LAT[1]

for dataflow, idx in zip(DATAFLOW, range(len(DATAFLOW))):

    get_cycles_flag = 0

    sim_rtl_log_path = "../sim_rtl/results/layer" + str(LAYER) + "/" + str(ARRAY) + "_" + dataflow + "_lat" + str(
        MEM_LAT) + "_log.txt"
    psynth_results_path = "../psynth/28nm/results/" + str(CLOCK_PERIOD) + "ns/" + str(INPUT_SIZE) + "bit/" + str(
        ARRAY) + "_" + str(dataflow) + "/layer" + str(LAYER) + "/reports/" + str(ARRAY) + "_" + str(
        dataflow) + "_area.txt"
    power_analyses_results_path = "../power_analyses/28nm/results/" + str(CLOCK_PERIOD) + "ns/" + str(
        INPUT_SIZE) + "bit/" + str(ARRAY) + "_" + dataflow + "/lat" + str(MEM_LAT) + "/layer" + str(
        LAYER) + "/reports/activity_avg_power.txt"
    power_analyses_hier_results_path = "../power_analyses/28nm/results/" + str(CLOCK_PERIOD) + "ns/" + str(
        INPUT_SIZE) + "bit/" + str(ARRAY) + "_" + dataflow + "/lat" + str(MEM_LAT) + "/layer" + str(
        LAYER) + "/reports/activity_hier_power.txt"
    cacti_sram_path = "../cacti/sram_energy.txt"
    cacti_dram_path = "../cacti/dram_energy.txt"

    sim_rtl_log_file = open(sim_rtl_log_path)
    psynth_results_file = open(psynth_results_path)
    power_analyses_results_file = open(power_analyses_results_path)
    power_analyses_hier_results_file = open(power_analyses_hier_results_path)

    if MEM == "sram":
        cacti_file = open(cacti_sram_path)
    else:
        cacti_file = open(cacti_dram_path)

    # Get informations from rts simualtion
    for line in sim_rtl_log_file.readlines():
        if "inmem" in line:
            if "read" in line:
                INMEM_READ = int((line.split(":")[len(line.split(":")) - 1]))
            if "write" in line:
                INMEM_WRITE = int((line.split(":")[len(line.split(":")) - 1]))

        if "ofmap" in line:
            if "read" in line:
                OFMAP_READ = int((line.split(":")[len(line.split(":")) - 1]))
            if "write" in line:
                OFMAP_WRITE = int((line.split(":")[len(line.split(":")) - 1]))

        if get_cycles_flag == 0:
            if "simulation without error" in line:
                get_cycles_flag = 1
            elif "error" in line:
                error_string = "ERROR: simulation with " + str(dataflow) + " dataflow and memory latency " + str(
                    MEM_LAT) + " failed!"
                sys.exit(error_string)
        else:
            if "Time" in line:
                CYCLES = int((line.split(" ")[5]))

    # Get iformation from PPA
    BUF_AREA = 0
    for line in psynth_results_file.readlines():
        if "convolution" in line or "syst2d" in line:
            # print(line.split(" "))
            if (line.split(" ")[len(line.split(" ")) - 2]) != '':
                ACC_AREA = float((line.split(" ")[len(line.split(" ")) - 2]))
            elif (line.split(" ")[len(line.split(" ")) - 3]) != '':
                ACC_AREA = float((line.split(" ")[len(line.split(" ")) - 3]))
            elif (line.split(" ")[len(line.split(" ")) - 4]) != '':
                ACC_AREA = float((line.split(" ")[len(line.split(" ")) - 4]))
            elif (line.split(" ")[len(line.split(" ")) - 5]) != '':
                ACC_AREA = float((line.split(" ")[len(line.split(" ")) - 5]))
            elif (line.split(" ")[len(line.split(" ")) - 6]) != '':
                ACC_AREA = float((line.split(" ")[len(line.split(" ")) - 6]))
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
                    if line.split(" ")[len(line.split(" ")) - 8] != '':
                        POWER_BUF = float(line.split(" ")[len(line.split(" ")) - 8])
                    if line.split(" ")[len(line.split(" ")) - 9] != '':
                        POWER_BUF = float(line.split(" ")[len(line.split(" ")) - 9])
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

    print(str(ARRAY) + "_" + str(dataflow) + " accelerator log:")
    print("\tcore area: " + str(ACC_AREA - BUF_AREA) + " um^2")
    print("\toutput buffer area: " + str(BUF_AREA) + " um^2")
    print("\taccelerator total area: " + str(ACC_AREA) + " um^2")
    print("\tnumber of cycles: " + str(CYCLES))
    print("\tcore power: " + str(POWER - POWER_BUF) + " mW")
    print("\tbuf power: " + str(POWER_BUF) + " mW")
    print("\tacc power: " + str(POWER) + " mW")
    print("\tcore energy: " + str(float(POWER) * int(CYCLES)) + " fJ")
    print("\tinput memory reads: " + str(INMEM_READ))
    print("\tinput memory writes: " + str(INMEM_WRITE))
    print("\tofmap memory reads: " + str(OFMAP_READ))
    print("\tofmap memory writes: " + str(OFMAP_WRITE))

    if MEM == "sram":
        print("\tsram read energy: " + str(float(MEM_READ_ENERGY * (INMEM_READ + OFMAP_READ))) + " nJ")
        print("\tsram write energy: " + str(float(MEM_WRITE_ENERGY * (INMEM_WRITE + OFMAP_WRITE))) + " nJ")
    else:
        print("\tdram read energy: " + str(float(MEM_READ_ENERGY * (INMEM_READ + OFMAP_READ))) + " nJ")
        print("\tdram write energy: " + str(float(MEM_WRITE_ENERGY * (INMEM_WRITE + OFMAP_WRITE))) + " nJ")

    TOTAL_POWER = (float(MEM_READ_ENERGY * (INMEM_READ + OFMAP_READ))) + (
        float(MEM_WRITE_ENERGY * (INMEM_WRITE + OFMAP_WRITE))) + ((float(POWER) * int(CYCLES)) / 1000000)

    print("\ttotal energy: " + str(float(TOTAL_POWER)) + " nJ")
    print("\n")

    acc_list.append(Accelerator(ARRAY,
                                dataflow,
                                MEM,
                                ACC_AREA,
                                BUF_AREA,
                                CYCLES,
                                POWER,
                                float(POWER) * float(CYCLES),
                                INMEM_READ,
                                INMEM_WRITE,
                                OFMAP_READ,
                                OFMAP_WRITE,
                                float(MEM_READ_ENERGY * (INMEM_READ + OFMAP_READ)),
                                float(MEM_WRITE_ENERGY * (INMEM_WRITE + OFMAP_WRITE)),
                                TOTAL_POWER))

print("Summary:")
small_area = sorted(acc_list, key=operator.attrgetter("area"))
print("\t" + small_area[0].array + "_" + small_area[0].dataflow + " has the smallest area")
print("\t\t" + small_area[len(DATAFLOW) - 1].array + "_" + small_area[
    len(DATAFLOW) - 1].dataflow + " has the biggest area")
print("\t\t" + "%.2f" % float(small_area[len(DATAFLOW) - 1].area / small_area[0].area) + " times bigger than " +
      small_area[0].array + "_" + small_area[0].dataflow)

small_energy = sorted(acc_list, key=operator.attrgetter("total_energy"))
print("\t" + small_energy[0].array + "_" + small_energy[0].dataflow + " has the smallest energy comsumption")
print("\t\t" + small_energy[len(DATAFLOW) - 1].array + "_" + small_energy[
    len(DATAFLOW) - 1].dataflow + " has the biggest energy comsumption")
print("\t\t" + "%.2f" % float(
    small_energy[len(DATAFLOW) - 1].total_energy / small_energy[0].total_energy) + " times bigger than " + small_energy[
          0].array + "_" + small_energy[0].dataflow)

small_cycles = sorted(acc_list, key=operator.attrgetter("n_cycles"))
print("\t" + small_cycles[0].array + "_" + small_cycles[0].dataflow + " has the biggest throughput")
print("\t\t" + small_cycles[len(DATAFLOW) - 1].array + "_" + small_cycles[
    len(DATAFLOW) - 1].dataflow + " has the smallest throughput")

print("\t\t" + "%.2f" % float(
    small_cycles[len(DATAFLOW) - 1].n_cycles / small_cycles[0].n_cycles) + " times smaller than " + small_cycles[
          0].array + "_" + small_cycles[0].dataflow)

if TARGET == "area":
    dse = small_area[0]
elif TARGET == "energy":
    dse = small_energy[0]
else:
    dse = small_cycles[0]

print("\nDSE for " + dse.array + "_" + dse.dataflow + ":")

for n_filter in DSE_PARALLEL:
    print("\tUsing " + str(n_filter) + " accelerators:")
    print("\t\tarea: " + str(float(dse.area * float(n_filter))) + " um^2")
    print("\t\tpower: " + str(float(dse.core_power) * float(n_filter)) + " mW")
    print("\t\tcycles: " + str(int(dse.n_cycles / int(n_filter))))

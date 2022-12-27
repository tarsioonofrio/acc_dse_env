import json
import random
from pathlib import Path

import cocotb
from cocotb import triggers
from cocotb.binary import BinaryValue
from cocotb.types import Logic
from cocotb.clock import Clock
from cocotb.utils import get_sim_time


async def print_rd(cycle, file, data, dut, units, data_list, state):
    print(
        f"GET {state} {get_sim_time(units)} {units} cycle:{cycle}, scl:{str(dut.scl.value)} "
        f"wr_data_list: {data_list}, wr_data: {data}, idx:{str(dut.idx_worker.value.integer)}, sda:{str(dut.sda.value)}",
        file=file
    )


async def print_wr(cycle, file, data, dut, units, data_list, state):
    print(
        f"PUT {state} {get_sim_time(units)} {units} cycle:{cycle}, scl:{str(dut.scl.value)} "
        f"wr_data_list: {data_list}, wr_data: {data}, sda:{str(dut.sda.value)}",
        file=file
    )


async def assert_data(i, dut_data, tb_data, units):
    base_str_err = f"Error {i}th cycle, {get_sim_time(units)} {units}:"
    str_err = f"{base_str_err} tb_data={tb_data} != dut_data={dut_data}"
    assert tb_data == dut_data, str_err


def complement_of_two(number, n_bits):
    if number < 0:
        output = abs(abs(number) - (1 << n_bits))
    else:
        output = number
    return format(output, f'0{n_bits}b')


@cocotb.test()
async def pe_test(dut):
    with open(Path(__file__).parent.parent.parent / "apps/data/iwght_pkg.json") as f:
        iwght = json.load(f)
    with open(Path(__file__).parent.parent.parent / "apps/data/ifmap_pkg.json") as f:
        ifmap = json.load(f)
    with open(Path(__file__).parent.parent.parent / "apps/data/gold_pkg.json") as f:
        gold = json.load(f)

    high_impedance = Logic('Z')
    units = "ns"

    clock = Clock(dut.clock, int(1), units=units)  # Create a 10us period clock on port clock_in
    cocotb.start_soon(clock.start())  # Start the clock

    await triggers.RisingEdge(dut.clock)
    dut.reset.value = 1
    await triggers.RisingEdge(dut.clock)
    await triggers.RisingEdge(dut.clock)

    dut.reset.value = 0
    dut.p_iwght_ce.value = 1
    dut.p_iwght_we.value = 1
    dut.start_conv.value = 0
    dut.p_ifmap_ce.value = 0
    dut.p_ifmap_we.value = 0
    dut.p_ofmap_ce.value = 0
    dut.p_ofmap_we.value = 0
    dut.p_address.value = 0
    dut.p_value_in.value = 0

    for e, d in enumerate(iwght): 
        b = BinaryValue(value=d, n_bits=32, binaryRepresentation=2)
        b.binstr = complement_of_two(d, 32)
        print(e, d, BinaryValue(value=d, n_bits=32, binaryRepresentation=2), b, complement_of_two(d, 32))
        dut.p_address.value = e
        # dut.p_value_in.value = BinaryValue(value=d, n_bits=32, binaryRepresentation=2) 
        dut.p_value_in.value = b
        await triggers.RisingEdge(dut.clock)
        # print(e, dut.IWGHT.mem.value[e].integer, iwght[e])

    dut.p_iwght_ce.value = 0
    dut.p_iwght_we.value = 0

    # print("iwght")
    # for e, d in enumerate(iwght): 
    #     v = dut.IWGHT.mem.value[e]
    #     print(e, v.integer, d, v, complement_of_two(d, 32))

    dut.p_ifmap_ce.value = 1
    dut.p_ifmap_we.value = 1
    for e, d in enumerate(ifmap): 
        dut.p_address.value = e
        dut.p_value_in.value = d
        await triggers.RisingEdge(dut.clock)

    # print("ifmap")
    # for e, d in enumerate(ifmap):
    #     v = dut.IFMAP.mem.value[e]
    #     print(e, v.integer, d, v, complement_of_two(d, 32))
    # assert False  


    dut.p_ifmap_ce.value = 0
    dut.p_ifmap_we.value = 0

    dut.start_conv.value = 1
    await triggers.RisingEdge(dut.clock)

    dut.start_conv.value = 0
    await triggers.RisingEdge(dut.end_conv)

    print("ofmap")
    for e, d in enumerate(gold):
        v = dut.OFMAP.mem.value[e]
        print(e, v.integer, d, v, complement_of_two(d, 32))

    # while 1:
    #     await triggers.FallingEdge(dut.clock)
    #     await triggers.ReadOnly()
    #     if dut.debug ==1:
    #         address = dut.ofmap_address.value.integer
    #         # assert dut.ofmap_out.value.integer == gold[address], f"Error {address}, {dut.ofmap_out.value.integer}, {gold[address]}"
    #         print(f"{address}, {dut.ofmap_out.value.integer},  {dut.IFMAP.mem.value[address].integer}, {gold[address]}")
    #         # print(address, dut.ofmap_out.value.integer, gold[address])
    #     if dut.end_conv == 1:
    #         break


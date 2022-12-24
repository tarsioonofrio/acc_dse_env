import json
import random
from pathlib import Path

import cocotb
from cocotb import triggers
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


@cocotb.test()
async def simple(dut):
    high_impedance = Logic('Z')
    units = "us"
    scale = 4
    clock = Clock(dut.clock, int(1), units=units)  # Create a 10us period clock on port clock_in
    cocotb.start_soon(clock.start())  # Start the clock

    await triggers.RisingEdge(dut.clock)
    dut.reset.value = 1
    dut.start_conv.value = 0
    await triggers.RisingEdge(dut.clock)
    await triggers.RisingEdge(dut.clock)
    # await triggers.Timer(2.5, units=units)
    dut.reset.value = 0
    dut.start_conv.value = 1
    await triggers.RisingEdge(dut.clock)
    # await triggers.Timer(1.0, units=units) 
    dut.start_conv.value = 0
    await triggers.RisingEdge(dut.end_conv)



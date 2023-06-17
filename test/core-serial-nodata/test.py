import os
import csv
import json
from pathlib import Path

import cocotb
from cocotb import triggers
from cocotb.clock import Clock
from cocotb.utils import get_sim_time, get_sim_steps


@cocotb.test()
async def test(dut):
    units = "ns"

    await triggers.RisingEdge(dut.clock)
    time0 = get_sim_time(units=units)
    await triggers.RisingEdge(dut.clock)
    clock_time = get_sim_time(units=units) - time0

    await triggers.RisingEdge(dut.ifmap_ce)
    start_time = get_sim_time(units=units)
    start_steps = get_sim_steps(start_time, units=units)

    await triggers.RisingEdge(dut.start_conv)
    ifmap_time = get_sim_time(units=units)
    ifmap_steps = get_sim_steps(ifmap_time, units=units)

    await triggers.RisingEdge(dut.end_conv)
    conv_time = get_sim_time(units=units)
    conv_steps = get_sim_steps(conv_time, units=units)

    data = {
        "units": units,
        "clock_time": clock_time,
        "start_time": start_time,
        "start_steps": start_steps,
        "ifmap_time": ifmap_time,
        "ifmap_steps": ifmap_steps,
        "conv_time": conv_time,
        "conv_steps": conv_steps,
    }

    name = os.getenv("MAKEFILE_LIST").strip().split(" ")[0].split(".")[0]
    cnn = os.getenv("C")
    rtl = os.getenv("R")
    root = Path(__file__).parent / "data" / cnn / rtl / name
    root.mkdir(parents=True, exist_ok=True)
    layer = os.getenv("L")
    with open(root / f'{layer}.json', 'w', encoding='utf-8') as f:
        json.dump(data, f, ensure_ascii=False, indent=4)
    with open(root / f'{layer}.csv', 'w', encoding='utf-8') as f:
        wr = csv.writer(f, quoting=csv.QUOTE_MINIMAL)
        wr.writerow(list(data.keys()))
        wr.writerow(list(data.values()))

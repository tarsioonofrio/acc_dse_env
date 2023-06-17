import os
import json
import random
from pathlib import Path

import cocotb
from cocotb import triggers
from cocotb.types import Logic
from cocotb.clock import Clock
from cocotb.utils import get_sim_time, get_sim_steps


@cocotb.test()
async def conv_normal(dut):
    units = "ns"
    await triggers.RisingEdge(dut.start_conv)
    start_time = get_sim_time(units=units)
    start_steps = get_sim_steps(start_time, units=units)

    await triggers.RisingEdge(dut.end_conv)
    end_time = get_sim_time(units=units)
    end_steps = get_sim_steps(end_time, units=units)

    data = {
        "units": units,
        "start_time": start_time,
        "start_steps": start_steps,
        "end_time": end_time,
        "end_steps": end_steps
    }
    cnn = os.getenv("C")
    rtl = os.getenv("R")
    root = Path(__file__).parent / "data" / cnn / rtl
    root.mkdir(parents=True, exist_ok=True)
    layer = os.getenv("L")
    with open(root / f'{layer}.json', 'w', encoding='utf-8') as f:
        json.dump(data, f, ensure_ascii=False, indent=4)


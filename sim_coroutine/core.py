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

    await triggers.RisingEdge(dut.iwght_ce)
    iwght_time = get_sim_time(units=units)
    iwght_steps = get_sim_steps(iwght_time, units=units)
    start_time = get_sim_time(units=units)
    start_steps = get_sim_steps(iwght_time, units=units)

    await triggers.RisingEdge(dut.ifmap_ce)
    ifmap_time = get_sim_time(units=units)
    ifmap_steps = get_sim_steps(ifmap_time, units=units)

    await triggers.RisingEdge(dut.start_conv)
    start_conv_time = get_sim_time(units=units)
    start_conv_steps = get_sim_steps(start_conv_time, units=units)

    await triggers.RisingEdge(dut.end_conv)
    end_conv_time = get_sim_time(units=units)
    end_conv_steps = get_sim_steps(end_conv_time, units=units)

    end_time = get_sim_time(units=units)
    end_steps = get_sim_steps(end_conv_time, units=units)

    name = os.getenv("MAKEFILE_LIST").strip().split(" ")[0].split(".")[0]
    cnn = os.getenv("C")
    rtl = os.getenv("R")
    filename = Path(__file__).stem
    root = Path(__file__).parent / "data" / filename / cnn / rtl / name
    root.mkdir(parents=True, exist_ok=True)
    layer = os.getenv("L")
    data = {
        "cnn": cnn,
        "rtl": rtl,
        "name": name,
        "units": units,
        "layer": layer,
        "clocktime": clock_time,
        "starttime": start_time,
        "startsteps": start_steps,
        "startiwghttime": iwght_time,
        "startiwghtsteps": iwght_steps,
        "totaliwghttime": ifmap_time - iwght_time,
        "totaliwghtsteps": ifmap_steps - iwght_steps,
        "startifmaptime": ifmap_time,
        "startifmapsteps": ifmap_steps,
        "totalifmaptime": start_conv_time - ifmap_time,
        "totalifmapsteps": start_conv_steps - ifmap_steps,
        "startconvtime": start_conv_time,
        "startconvsteps": start_conv_steps,
        "totalconvtime": end_conv_time - start_conv_time,
        "totalconvsteps": end_conv_steps - start_conv_steps,
        "endconvtime": end_conv_time,
        "endconvsteps": end_conv_steps,
        "totaltime": end_time - start_time,
        "totalsteps": end_steps - start_steps,
        "endtime": end_time,
        "endsteps": end_steps,
    }
    with open(root / f'{layer}.json', 'w', encoding='utf-8') as f:
        json.dump(data, f, ensure_ascii=False, indent=4)
    with open(root / f'{layer}.csv', 'w', encoding='utf-8') as f:
        wr = csv.writer(f, quoting=csv.QUOTE_MINIMAL)
        wr.writerow(list(data.keys()))
        wr.writerow(list(data.values()))
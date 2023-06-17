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
    ifmap_time = get_sim_time(units=units)
    ifmap_steps = get_sim_steps(ifmap_time, units=units)

    await triggers.RisingEdge(dut.start_conv)
    start_conv_time = get_sim_time(units=units)
    start_conv_steps = get_sim_steps(start_conv_time, units=units)

    old_time = start_conv_time
    old_steps = start_conv_steps

    layer_data = {
        'startconvtime': [],
        'startconvsteps': [],
        'totalconvtime': [],
        'totalconvsteps': [],
    }

    for n in range(1, int(dut.N_LAYER)+1):
        await triggers.RisingEdge(dut.dut.start_conv[n])
        conv_time = get_sim_time(units=units)
        conv_steps = get_sim_steps(conv_time, units=units)
        layer_data['startconvtime'].append(conv_time)
        layer_data['startconvsteps'].append(conv_steps)
        layer_data['totalconvtime'].append(conv_time - old_time)
        layer_data['totalconvsteps'].append(conv_steps - old_steps)
        old_time = conv_time
        old_steps = conv_steps

        # await triggers.RisingEdge(dut.dut.ifmap_ce[n])
        # ifmap_time = get_sim_time(units=units)
        # ifmap_steps = get_sim_steps(ifmap_time, units=units)

    await triggers.RisingEdge(dut.end_conv)
    end_cnn_time = get_sim_time(units=units)
    end_cnn_steps = get_sim_steps(end_cnn_time, units=units)

    name = os.getenv("MAKEFILE_LIST").strip().split(" ")[0].split(".")[0]
    cnn = os.getenv("C")
    rtl = os.getenv("R")
    filename = Path(__file__).stem
    root = Path(__file__).parent / "data" / filename / cnn / rtl / name
    root.mkdir(parents=True, exist_ok=True)

    data = {
        "cnn": cnn,
        "rtl": rtl,
        "name": name,
        "units": units,
        "clocktime": clock_time,
        "starttime": ifmap_time,
        "startsteps": ifmap_steps,
        "startifmaptime": start_conv_time,
        "startifmapsteps": start_conv_steps,
        "totalifmaptime": start_conv_time - ifmap_time,
        "totalifmapsteps": start_conv_steps - ifmap_steps,
        "endcnntime": end_cnn_time,
        "endcnnsteps": end_cnn_steps,
        "totalcnntime": end_cnn_time - start_conv_time,
        "totalcnnsteps": end_cnn_steps - start_conv_steps,
    }

    # print("dut", dir(dut))
    # print("dut.cnn", dir(dut.dut))
    # print("dut.cnn.start_conv", len(dut.dut.start_conv))

    with open(root / f'model.json', 'w', encoding='utf-8') as f:
        json.dump(data, f, ensure_ascii=False, indent=4)
    with open(root / f'model.csv', 'w', encoding='utf-8') as f:
        wr = csv.writer(f, quoting=csv.QUOTE_MINIMAL)
        wr.writerow(list(data.keys()))
        wr.writerow(list(data.values()))

    with open(root / f'layer.json', 'w', encoding='utf-8') as f:
        json.dump(layer_data, f, ensure_ascii=False, indent=4)
    with open(root / "layer.csv", "w") as outfile:
        writer = csv.writer(outfile, quoting=csv.QUOTE_MINIMAL)
        writer.writerow(layer_data.keys())
        writer.writerows(zip(*layer_data.values()))

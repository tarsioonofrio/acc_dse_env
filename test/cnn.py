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

    old_time = 0
    old_steps = 0

    # await triggers.RisingEdge(dut.ifmap_ce)
    # ifmap_time = get_sim_time(units=units)
    # ifmap_steps = get_sim_steps(ifmap_time, units=units)
    #
    # old_time = ifmap_time
    # old_steps = ifmap_steps

    # await triggers.RisingEdge(dut.start_conv)
    # start_conv_time = get_sim_time(units=units)
    # start_conv_steps = get_sim_steps(start_conv_time, units=units)

    layer_data = {
        'n': [],
        'startofmaptime': [],
        'startofmapsteps': [],
        'totalofmaptime': [],
        'totalofmapsteps': [],
        'endconvtime': [],
        'endconvsteps': [],
        'totalconvtime': [],
        'totalconvsteps': [],
    }

    for n in range(0, int(dut.N_LAYER)+1):
        await triggers.RisingEdge(dut.dut.ofmap_ce[n])
        ofmap_ce_time = get_sim_time(units=units)
        ofmap_ce_steps = get_sim_steps(ofmap_ce_time, units=units)
        layer_data['startofmaptime'].append(ofmap_ce_time)
        layer_data['startofmapsteps'].append(ofmap_ce_steps)

        await triggers.RisingEdge(dut.dut.end_conv[n])
        end_conv_time = get_sim_time(units=units)
        end_conv_steps = get_sim_steps(end_conv_time, units=units)

        layer_data['totalofmaptime'].append(end_conv_time - ofmap_ce_time)
        layer_data['totalofmapsteps'].append(end_conv_steps - ofmap_ce_steps)

        layer_data['n'].append(n)
        layer_data['endconvtime'].append(end_conv_time)
        layer_data['endconvsteps'].append(end_conv_steps)
        layer_data['totalconvtime'].append(end_conv_time - old_time)
        layer_data['totalconvsteps'].append(end_conv_steps - old_steps)
        old_time = end_conv_time
        old_steps = end_conv_steps

        # await triggers.RisingEdge(dut.dut.ifmap_ce[n])
        # ifmap_time = get_sim_time(units=units)
        # ifmap_steps = get_sim_steps(ifmap_time, units=units)

    # await triggers.RisingEdge(dut.end_conv)
    start_cnn_time = layer_data['endconvtime'][0]
    start_cnn_steps = layer_data['endconvsteps'][0]
    end_cnn_time = layer_data['endconvtime'][-1]
    end_cnn_steps = layer_data['endconvsteps'][-1]

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
        # "starttime": ifmap_time,
        # "startsteps": ifmap_steps,
        # "startifmaptime": ifmap_time,
        # "startifmapsteps": ifmap_steps,
        # "totalifmaptime": start_cnn_time - ifmap_time,
        # "totalifmapsteps": start_cnn_steps - ifmap_steps,
        "startcnntime": start_cnn_time,
        "startcnnsteps": start_cnn_steps,
        "endcnntime": end_cnn_time,
        "endcnnsteps": end_cnn_steps,
        "totalcnntime": end_cnn_time - start_cnn_time,
        "totalcnnsteps": end_cnn_steps - start_cnn_steps,
    }

    # print("dut", dir(dut))
    # print("dut.cnn", dir(dut.dut))
    # print("dut.cnn.start_conv", len(dut.dut.start_conv))

    with open(root / f'total.json', 'w', encoding='utf-8') as f:
        json.dump(data, f, ensure_ascii=False, indent=4)
    with open(root / f'total.csv', 'w', encoding='utf-8') as f:
        wr = csv.writer(f, quoting=csv.QUOTE_MINIMAL)
        wr.writerow(list(data.keys()))
        wr.writerow(list(data.values()))

    with open(root / f'layer.json', 'w', encoding='utf-8') as f:
        json.dump(layer_data, f, ensure_ascii=False, indent=4)
    with open(root / "layer.csv", "w") as outfile:
        writer = csv.writer(outfile, quoting=csv.QUOTE_MINIMAL)
        writer.writerow(layer_data.keys())
        writer.writerows(zip(*layer_data.values()))

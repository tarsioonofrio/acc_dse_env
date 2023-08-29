import os
import csv
import sys
import json
from pathlib import Path

import cocotb
from cocotb import triggers
from cocotb.utils import get_sim_time, get_sim_steps

units = "ns"


def two_comp(bits):
    string = str(bits)
    inverse = "".join(map(lambda x: '0' if x == '1' else '1' if x == '0' else '', string))
    summing = bin(int(inverse, 2) + int('1', 2))
    out = sum([int(b) * 2 ** e for e, b in enumerate(reversed(summing[2:]))])
    return out


def function_name():
    return sys._getframe().f_code.co_name


@cocotb.test()
async def debug(dut):
    await triggers.RisingEdge(dut.clock)
    await triggers.RisingEdge(dut.clock)
    await triggers.RisingEdge(dut.start_conv)

    root = Path(__file__).parent / "data"
    with open(root / f'debug.csv', 'w', encoding='utf-8') as f:
        while 1:
            await triggers.RisingEdge(dut.clock)
            # await triggers.RisingEdge(dut.DUT.iwght_valid)
            # pdata = [
            #     get_sim_time(units=units),
            #     dut.DUT.add_ifmap.value,
            #     dut.DUT.add_iwght.value,
            #     dut.DUT.idx_mac.value,
            #     dut.DUT.reg_mac.value,
            #     dut.DUT.weight.value,
            #     dut.DUT.features.value,
            #     dut.DUT.res_mac.value
            # ]
            # print(pdata)

            if 'X' not in str(dut.DUT.res_mac):
                data = [
                    get_sim_time(units=units),
                    dut.DUT.add_ifmap.value,
                    dut.DUT.add_iwght.value,
                    dut.DUT.idx_mac.value,
                    dut.DUT.reg_mac_int.value,
                    dut.DUT.weight_int.value,
                    dut.DUT.features_int.value,
                    dut.DUT.res_mac_int.value
                ]
                print(data)
                f.write(", ".join(map(str, data)) + '\n')

            if dut.DUT.EA_read == 5:
                break




import json
import argparse
from pathlib import Path

import numpy as np
import pandas as pd


class Systolic2dWs:
    def __init__(self, features, weight, bias, x_size):
        self.features = features
        self.weight = weight
        self.bias = bias
        self.x_size = x_size

    def __call__(self, in_add, in_mac, in_sum, in_h, in_v):
        out_mac = np.zeros_like(in_mac)
        out_add = np.zeros_like(in_add)
        out_sum = np.zeros_like(in_sum)

        out_mac[0][0] = self.features[in_add[0]] * self.weight[0][0]
        out_mac[0][1] = self.features[in_add[0]] * self.weight[0][1] + in_mac[0][0]
        out_mac[0][2] = self.features[in_add[0]] * self.weight[0][2] + in_mac[0][1]

        out_mac[1][0] = self.features[in_add[1]] * self.weight[1][0]
        out_mac[1][1] = self.features[in_add[1]] * self.weight[1][1] + in_mac[1][0]
        out_mac[1][2] = self.features[in_add[1]] * self.weight[1][2] + in_mac[1][1]

        out_mac[2][0] = self.features[in_add[2]] * self.weight[2][0]
        out_mac[2][1] = self.features[in_add[2]] * self.weight[2][1] + in_mac[2][0]
        out_mac[2][2] = self.features[in_add[2]] * self.weight[2][2] + in_mac[2][1]

        out_sum[0] = in_mac[0][2]
        out_sum[1] = in_mac[1][2] + in_sum[0]
        out_sum[2] = in_mac[2][2] + in_sum[1]

        if in_h + 1 >= self.x_size:
            out_h = 0
            out_v = in_v + self.x_size
        else:
            out_h = in_h + 1
            out_v = in_v

        out_add[0] = in_v + in_h
        out_add[1] = self.x_size + in_add[0]
        out_add[2] = self.x_size + in_add[1]

        print('add', in_add)

        print('mac[0]', out_mac[0])
        print('mac[1]', out_mac[1])
        print('mac[2]', out_mac[2])

        print('sum[0]', out_sum[0])
        print('sum[1]', out_sum[1])
        print('sum[2]', out_sum[2])

        return out_add, out_mac, out_sum, out_h, out_v

    def sim(self, time):
        in_add = np.array([0, 0, 0])
        in_mac = np.zeros((3, 3), dtype=int)
        in_sum = np.zeros(3, dtype=int)
        in_h = 0
        in_v = 0

        report_arr = {
            f'{n}{s}': []
            for n, d in zip(['add', 'mac', 'sum'], [in_add, in_mac, in_sum])
            for s in range(d.size)
        }
        report = {
            'h': [],
            'v': [],
            **report_arr
        }
        for i in range(-1, time):
            print('time', i, time)
            out_add, out_mac, out_sum, out_h, out_v = self(in_add, in_mac, in_sum, in_h, in_v)
            for n, d in zip(['add', 'mac', 'sum'], [in_add, in_mac, in_sum]):
                for s in range(d.size):
                    report[f'{n}{s}'].append(d.reshape(-1)[s])
            report['h'].append(out_h)
            report['v'].append(out_v)
            in_add, in_mac, in_sum, in_h, in_v = np.copy(out_add), np.copy(out_mac), np.copy(out_sum), out_h, out_v
        df = pd.DataFrame.from_dict(report).T
        return df


def test():
    x_size = 5
    filter_width = 3
    convs_per_line = 3
    mem_size = 10
    input_size = 8
    carry_size = 4

    bias = 0

    weight = np.array([
        [8, 4, 8],
        [-2, -4, 4],
        [5, 3, -7],
    ])

    features = np.array([
        -1, 3, -10, 8, -4,
        -4, 9, 5, -2, 4,
        7, -9, 9, -3, 11,
        1, 2, 3, 4, 5,
        1, 2, 3, 4, 5,
    ])

    conv = Systolic2dWs(features, weight, bias, x_size)
    report = conv.sim(15)
    print()


def main():
    parser = argparse.ArgumentParser(
        usage='use "python %(prog)s --help" for more information.\n'
    )
    parser.add_argument("--cnn_config", "-c", type=str, help="Name of neural network config file in nn_config")
    parser.add_argument("--rtl_config", "-r", type=str, help="Name of hardware config file in rtl_config")
    parser.add_argument("--layer", "-l", type=str, help="")
    args = parser.parse_args()

    root = Path(__file__).parent.parent.resolve() / 'experiments'
    cnn_config_path = root / "cnn_config" / f"{args.cnn_config}.json"
    cnn_output_path = root / "cnn_output" / args.cnn_config
    rtl_config_path = root / "rtl_config" / f"{args.rtl_config}.json"
    rtl_output_path = root / "rtl_output" / args.cnn_config / args.rtl_config
    output_path = root / "rtl_output" / args.cnn_config / args.rtl_config / 'test_table'
    output_path.mkdir(parents=True, exist_ok=True)

    with open(cnn_config_path) as f:
        cnn_config = json.load(f)

    with open(rtl_config_path) as f:
        rtl_config = json.load(f)

    weight_path = root / "rtl_output" / args.cnn_config / args.rtl_config / 'layer' / args.layer / 'iwght.txt'
    fmap_path = root / "rtl_output" / args.cnn_config / args.rtl_config / 'layer' / args.layer / 'ifmap.txt'

    with open(weight_path) as f:
        weight_bias_data = [int(i) for i in f.read().split("\n") if i != '']

        with open(fmap_path) as f:
            features = np.array([int(i) for i in f.read().split("\n") if i != ''])

    layer = int(args.layer)
    n_filter = cnn_config["filter_channel"][layer]
    weight_bias = np.array(weight_bias_data)
    bias = weight_bias[layer]
    weight = weight_bias[n_filter:].reshape(-1, 3, 3)[layer]

    x_size = 32
    conv = Systolic2dWs(features, weight, bias, x_size)
    df = conv.sim(15)
    df.to_csv(output_path / f'{layer}.csv')
    print()


if __name__ == '__main__':
    main()

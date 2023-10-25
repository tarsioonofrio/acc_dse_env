# https://stackoverflow.com/a/65269944

import json
import argparse
from pathlib import Path

import numpy as np
import pandas as pd
from pyDigitalWaveTools.vcd.parser import VcdParser


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

        if in_add[-1] < self.x_size * self.x_size:
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

        # print('add', in_add)
        # print('mac[0]', out_mac[0])
        # print('mac[1]', out_mac[1])
        # print('mac[2]', out_mac[2])
        # print('sum[0]', out_sum[0])
        # print('sum[1]', out_sum[1])
        # print('sum[2]', out_sum[2])

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
            out_add, out_mac, out_sum, out_h, out_v = self(in_add, in_mac, in_sum, in_h, in_v)
            for n, d in zip(['add', 'mac', 'sum'], [in_add, in_mac, in_sum]):
                for s in range(d.size):
                    report[f'{n}{s}'].append(d.reshape(-1)[s])
            report['h'].append(out_h)
            report['v'].append(out_v)
            in_add, in_mac, in_sum, in_h, in_v = np.copy(out_add), np.copy(out_mac), np.copy(out_sum), out_h, out_v
        df = pd.DataFrame.from_dict(report).T
        return df


def convolution2d(features, weights, stride, padding):
    features = np.pad(features, [(0, 0), (padding, padding), (padding, padding)], mode='constant', constant_values=0)

    weights_channel, _, weight_height, weight_width = weights.shape
    _, padded_height, padded_width = features.shape

    input_channel = features.shape[0]
    output_channel = weights_channel
    output_height = (padded_height - weight_height) // stride + 1
    output_width = (padded_width - weight_width) // stride + 1

    output_features = np.zeros((output_channel, output_height, output_width), dtype=int)
    output_shape = (output_channel, output_height, output_width, weight_height, weight_width)
    output_mult = np.zeros(output_shape, dtype=int)
    output_sx = np.zeros(output_shape, dtype=int)
    temp_feat = np.zeros(output_shape, dtype=int)
    temp_add = np.zeros(output_shape, dtype=int)
    output_sy = np.zeros(output_shape[:-1], dtype=int)
    for wc in range(0, output_channel):
        for fc in range(0, input_channel):
            for fy in range(0, output_height):
                for fx in range(0, output_width):
                    feat = features[fc, fy * stride:fy * stride + weight_height, fx * stride:fx * stride + weight_width]
                    mult = (feat * weights[wc, fc])
                    sx = np.cumsum(mult, axis=1)
                    sy = np.cumsum(sx[:, -1])
                    output_features[wc, fy, fx] = sy[-1]
                    output_mult[wc, fy, fx] = mult
                    output_sy[wc, fy, fx] = sy
                    output_sx[wc, fy, fx] = sx
                    temp_feat[wc, fy, fx] = feat
                    tmp = [
                        np.ravel_multi_index((fc, y, x), features.shape)
                        for y in range(fy * stride, fy * stride + weight_height)
                        for x in range(fx * stride, fx * stride + weight_width)
                    ]
                    temp_add[wc, fy, fx] = np.array(tmp).reshape(output_height, output_width)

    nsim = 19

    reg_mac = np.zeros((nsim, weight_height, weight_width), dtype=int)
    reg_sum = np.zeros((nsim, weight_width), dtype=int)
    features_sim = np.zeros((nsim, weight_width), dtype=int)
    add = np.zeros((nsim, weight_height), dtype=int)
    weights_sim = np.zeros(nsim, dtype=int)
    for wc in range(0, output_channel):
        for fy in range(0, output_height):
            stride_space = fy * 2
            for fx in range(0, output_width):
                index = np.ravel_multi_index((wc, fy, fx), (output_channel, output_height, output_width))
                weights_sim[index + stride_space] = wc
                for wy in range(0, weight_height):
                    reg_sum[index + stride_space + wy + 3, wy] = output_sy[wc, fy, fx, wy]
                    # add[index + stride_space + wy, wy] = temp_add[wc, fy, fx, wy]
                    for wx in range(0, weight_width):
                        reg_mac[index + wy + wx + stride_space, wy, wx] = output_sx[wc, fy, fx, wy, wx]
                        features_sim[index + wy + wx + stride_space, wy] = temp_feat[wc, fy, fx, wy, wx]
                        add[index + wy + wx + stride_space, wy] = temp_add[wc, fy, fx, wy, wx]

    report_arr = {
        f'{n}{e}': data
        for n, array in zip(['add', 'ftr', 'mac', 'sum', ], [add, features_sim, reg_mac, reg_sum])
        for e, data in enumerate(array.reshape(nsim, -1).swapaxes(0, 1).tolist())
    }
    report = {
        **report_arr, 'wid': weights_sim
    }
    df = pd.DataFrame.from_dict(report)
    df = df.reset_index(drop=True)
    return output_features, df


def basic():
    x_size = 5
    filter_width = 3
    convs_per_line = 3
    mem_size = 10
    input_size = 8
    carry_size = 4

    bias = 0

    weight = np.array([[[
        [8, 4, 8],
        [-2, -4, 4],
        [5, 3, -7],
    ]]])

    features = np.array([[
        -1, 3, -10, 8, -4,
        -4, 9, 5, -2, 4,
        7, -9, 9, -3, 11,
        1, 2, 3, 4, 5,
        1, 2, 3, 4, 5,
    ]])

    n_sim = x_size * (x_size-2) + 3 + 1
    n_sim2 = convs_per_line * (convs_per_line + 2) + 3 + 1
    conv = Systolic2dWs(features[0], weight[0, 0], bias, x_size)
    report = conv.sim(n_sim)
    report.to_csv(f'../../test.csv')
    output, report = convolution2d(features=features.reshape(-1, x_size, x_size), weights=weight, stride=1, padding=0)
    report.to_csv(f'../../test2.csv')
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
    generic_layer_path = (
            root / "rtl_output" / args.cnn_config / args.rtl_config / 'layer' / args.layer / 'generic_file.txt'
    )
    output_path.mkdir(parents=True, exist_ok=True)

    with open(cnn_config_path) as f:
        cnn_config = json.load(f)

    with open(rtl_config_path) as f:
        rtl_config = json.load(f)

    with open(generic_layer_path) as f:
        gen_list = [g.split('=') for g in f.read().replace("\n", "").split(" ")]
        generic_config = {k.replace("-g", ""): v for k, v in gen_list}

    weight_path = root / "rtl_output" / args.cnn_config / args.rtl_config / 'layer' / args.layer / 'iwght.txt'
    fmap_path = root / "rtl_output" / args.cnn_config / args.rtl_config / 'layer' / args.layer / 'ifmap.txt'

    with open(weight_path) as f:
        weight_bias_data = [int(i) for i in f.read().split("\n") if i != '']

    with open(fmap_path) as f:
        features_data = np.array([int(i) for i in f.read().split("\n") if i != ''])

    layer = int(args.layer)
    n_filter = cnn_config["filter_channel"][layer]
    x_size = int(generic_config['X_SIZE'])
    convs_per_line = int(generic_config['CONVS_PER_LINE'])
    n_channel = int(generic_config['N_CHANNEL'])

    weight_bias = np.array(weight_bias_data)
    bias = weight_bias[:n_filter]
    weight = weight_bias[n_filter:].reshape(n_filter, -1, 3, 3)
    # features = features_data.reshape(-1, x_size*x_size)
    features = features_data

    n_sim = x_size * (x_size-2) * n_channel + 3 + 1
    # conv = Systolic2dWs(features, weight, bias, x_size, n_channel)
    # df = conv.sim(n_sim)
    # df.to_csv(output_path / f'{layer}.csv')
    print()


if __name__ == '__main__':
    basic()

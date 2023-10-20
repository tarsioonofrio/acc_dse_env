import json
import argparse
from pathlib import Path

import numpy as np
import pandas as pd
from pyDigitalWaveTools.vcd.parser import VcdParser


class Systolic2dWs:
    def __init__(self, features, weight, bias, x_size, n_channel=1):
        self.features = features
        self.weight = weight
        self.bias = bias
        self.x_size = x_size
        self.n_channel = n_channel

    def __call__(self, in_add, in_mac, in_sum, in_h, in_v, n_weight, n_weight_channel):
        out_mac = np.zeros_like(in_mac)
        out_add = np.zeros_like(in_add)
        out_sum = np.zeros_like(in_sum)

        if in_add[-1] < self.x_size * self.x_size * self.n_channel:
            out_mac[0][0] = self.features[in_add[0]] * self.weight[n_weight, n_weight_channel][0][0]
            out_mac[0][1] = self.features[in_add[0]] * self.weight[n_weight, n_weight_channel][0][1] + in_mac[0][0]
            out_mac[0][2] = self.features[in_add[0]] * self.weight[n_weight, n_weight_channel][0][2] + in_mac[0][1]

            out_mac[1][0] = self.features[in_add[1]] * self.weight[n_weight, n_weight_channel][1][0]
            out_mac[1][1] = self.features[in_add[1]] * self.weight[n_weight, n_weight_channel][1][1] + in_mac[1][0]
            out_mac[1][2] = self.features[in_add[1]] * self.weight[n_weight, n_weight_channel][1][2] + in_mac[1][1]

            out_mac[2][0] = self.features[in_add[2]] * self.weight[n_weight, n_weight_channel][2][0]
            out_mac[2][1] = self.features[in_add[2]] * self.weight[n_weight, n_weight_channel][2][1] + in_mac[2][0]
            out_mac[2][2] = self.features[in_add[2]] * self.weight[n_weight, n_weight_channel][2][2] + in_mac[2][1]

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
        #
        # print('mac[0]', out_mac[0])
        # print('mac[1]', out_mac[1])
        # print('mac[2]', out_mac[2])
        #
        # print('sum[0]', out_sum[0])
        # print('sum[1]', out_sum[1])
        # print('sum[2]', out_sum[2])

        return out_add, out_mac, out_sum, out_h, out_v

    def sim(self, time):
        report_arr = {
            f'{n}{s}': []
            for n, d in zip(['add', 'ftr', 'wgt', 'mac', 'sum'], [3, 3, 9, 9, 3])
            for s in range(d)
        }
        report = {
            'bias_x': [],
            'weight_x': [],
            'v': [],
            'h': [],
            # 'cont_iteration': [],
            # 'cont_total_valid': [],
            **report_arr
        }
        # cont_total_valid = 0
        in_h = 0
        in_add = np.array([0, 0, 0])
        in_mac = np.zeros((3, 3), dtype=int)
        in_sum = np.zeros(3, dtype=int)
        for n_weight in range(self.weight.shape[0]):
            for n_weight_channel in range(self.weight.shape[1]):
                in_v = 0
                for i in range(-1, time):
                    # if cont_iteration > 1:
                    #     cont_total_valid = cont_total_valid + 1
                    # if 4 < i % self.x_size:
                    #     cont_iteration = cont_iteration + 1
                    # else:
                    #     cont_iteration = 0
                    # print('time', i, time)
                    out_add, out_mac, out_sum, out_h, out_v = self(
                        in_add, in_mac, in_sum, in_h, in_v, n_weight, n_weight_channel
                    )
                    for name, data in zip(['add', 'mac', 'sum'], [in_add, in_mac, in_sum]):
                        for size in range(data.size):
                            report[f'{name}{size}'].append(data.reshape(-1)[size])
                    for size in range(3):
                        if in_add[-1] < self.x_size * self.x_size:
                            report[f'ftr{size}'].append(self.features[in_add[size]])
                        else:
                            report[f'ftr{size}'].append(0)
                    for size in range(9):
                        report[f'wgt{size}'].append(self.weight[n_weight, n_weight_channel].reshape(-1)[size])
                    report['bias_x'].append(n_weight + 1)
                    report['weight_x'].append((n_weight + 1) * (n_weight_channel + 1) * 9)
                    report['v'].append(out_v)
                    report['h'].append(out_h)
                    # report['cont_total_valid'].append(cont_total_valid)
                    # report['cont_iteration'].append(cont_iteration)
                    out_data = np.copy(out_add), np.copy(out_mac), np.copy(out_sum), out_h, out_v
                    in_add, in_mac, in_sum, in_h, in_v = out_data
        df = pd.DataFrame.from_dict(report)
        df = df.drop(labels=0, axis=0).reset_index(drop=True)  # .T
        return df


def test():
    x_size = 5
    filter_width = 3
    convs_per_line = 3
    mem_size = 10
    input_size = 8
    carry_size = 4

    bias = 0

    weight = np.array([[
        [8, 4, 8],
        [-2, -4, 4],
        [5, 3, -7],
    ]])

    features = np.array([[
        -1, 3, -10, 8, -4,
        -4, 9, 5, -2, 4,
        7, -9, 9, -3, 11,
        1, 2, 3, 4, 5,
        1, 2, 3, 4, 5,
    ]])

    n_sim = x_size * (x_size-2) + 3 + 1
    conv = Systolic2dWs(features, weight, bias, x_size)
    report = conv.sim(n_sim)
    report.to_csv(f'../../test.csv')
    # vcd_path = '/home/tarsio/pucrs/gaph/conv_modules_ppa/stride1b.vcd'
    # with open(vcd_path) as vcd_file:
    #     vcd = VcdParser()
    #     vcd.parse(vcd_file)
    #     data = vcd.scope.toJson()
    #     print(json.dumps(data, indent=4, sort_keys=True))
    # # data['children'][0]['children'][-1]['name']
    # vcd.scope.children['tb'].children['DUT']
    # print()


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
    conv = Systolic2dWs(features, weight, bias, x_size, n_channel)
    df = conv.sim(n_sim)
    df.to_csv(output_path / f'{layer}.csv')
    print()


if __name__ == '__main__':
    main()

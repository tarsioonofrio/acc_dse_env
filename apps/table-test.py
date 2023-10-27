# https://stackoverflow.com/a/65269944

import json
import argparse
from pathlib import Path

import numpy as np
import pandas as pd


def conv2d_ws_sim(features, weights, bias, gold, n_sim, stride=1, padding=0):
    features = np.pad(features, [(0, 0), (padding, padding), (padding, padding)], mode='constant', constant_values=0)

    weights_channel, _, weight_height, weight_width = weights.shape
    _, padded_height, padded_width = features.shape

    input_channel = features.shape[0]
    output_channel = weights_channel
    output_height = (padded_height - weight_height) // stride + 1
    output_width = (padded_width - weight_width) // stride + 1

    output_features = np.zeros((output_channel, output_height, output_width), dtype=int)
    output_shape = (output_channel, input_channel, output_height, output_width, weight_height, weight_width)
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
                    output_features[wc, fy, fx] = sy[-1] + output_features[wc, fy, fx]
                    output_mult[wc, fc, fy, fx] = mult
                    output_sy[wc, fc, fy, fx] = sy
                    output_sx[wc, fc, fy, fx] = sx
                    temp_feat[wc, fc, fy, fx] = feat
                    tmp = [
                        np.ravel_multi_index((fc, y, x), features.shape)
                        for y in range(fy * stride, fy * stride + weight_height)
                        for x in range(fx * stride, fx * stride + weight_width)
                    ]
                    temp_add[wc, fc, fy, fx] = np.array(tmp).reshape(weight_height, weight_width)

    reg_mac = np.zeros((n_sim, weight_height, weight_width), dtype=int)
    reg_sum = np.zeros((n_sim, weight_width), dtype=int)
    features_sim = np.zeros((n_sim, weight_width), dtype=int)
    add = np.zeros((n_sim, weight_height), dtype=int)
    weights_sim = np.zeros(n_sim, dtype=int)
    cont_valid = np.zeros(n_sim, dtype=int)
    cont = 0
    for wc in range(0, output_channel):
        for fc in range(0, input_channel):
            for fy in range(0, output_height):
                # stride_space = fy * 2
                stride_space = 2 * np.ravel_multi_index((wc, fc, fy), (output_channel, input_channel, output_height))
                for fx in range(0, output_width):
                    index = np.ravel_multi_index(
                        (wc, fc, fy, fx), (output_channel, input_channel, output_height, output_width)
                    )
                    feat_index = np.ravel_multi_index(
                        (fc, fy, fx), (input_channel, output_height, output_width)
                    )
                    weights_sim[index] = wc + 1
                    if feat_index > 5 and (index % 32 < 4 or index % 32 > 5):
                        cont = cont + 1
                    cont_valid[index] = cont
                    for wy in range(0, weight_height):
                        reg_sum[index + stride_space + wy + 3, wy] = output_sy[wc, fc, fy, fx, wy]
                        # add[index + stride_space + wy, wy] = temp_add[wc, fy, fx, wy]
                        for wx in range(0, weight_width):
                            reg_mac[index + wy + wx + stride_space, wy, wx] = output_sx[wc, fc, fy, fx, wy, wx]
                            features_sim[index + wy + wx + stride_space, wy] = temp_feat[wc, fc, fy, fx, wy, wx]
                            add[index + wy + wx + stride_space - 1, wy] = temp_add[wc, fc, fy, fx, wy, wx]
                            if index + wy + wx + stride_space - 1 == 899:
                                print(index, index + wy + wx + stride_space - 1, wy, temp_add[wc, fc, fy, fx, wy, wx])

    report_arr = {
        f'{n}{e}': data
        for n, array in zip(['add', 'ftr', 'sum', 'mac'], [add, features_sim,  reg_sum, reg_mac])
        for e, data in enumerate(array.reshape(n_sim, -1).swapaxes(0, 1).tolist())
    }
    report = {
        'cnt': cont_valid, **report_arr, 'b_x': weights_sim
    }
    df = pd.DataFrame.from_dict(report)
    df = df.reset_index(drop=True)
    output_features_bias = output_features + bias[:, None, None]
    output_features_bias[output_features_bias < 0] = 0
    output_features_bias = output_features_bias.reshape(-1)
    # shift
    output_features_bias_shift = output_features_bias // 256
    cmp = gold == output_features_bias_shift
    assert np.all(cmp)
    return df


def basic():
    x_size = 5
    filter_width = 3
    convs_per_line = 3
    mem_size = 10
    input_size = 8
    carry_size = 4

    bias = np.array([0])

    weight = np.array([[[
        [8, 4, 8],
        [-2, -4, 4],
        [5, 3, -7],
    ]]])

    gold = np.array([
        0, 5, 0,
        92, 37, 94,
        84, 0, 138,
    ])

    features = np.array([[
        -1, 3, -10, 8, -4,
        -4, 9, 5, -2, 4,
        7, -9, 9, -3, 11,
        1, 2, 3, 4, 5,
        1, 2, 3, 4, 5,
    ]])

    n_sim = convs_per_line * (convs_per_line + 2) + 3 + 1
    report = conv2d_ws_sim(
        features=features.reshape((-1, x_size, x_size)), weights=weight, gold=gold, bias=bias, n_sim=n_sim,
        stride=1, padding=0
    )
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

    weight_path = rtl_output_path / 'layer' / args.layer / 'iwght.txt'
    fmap_path = rtl_output_path / 'layer' / args.layer / 'ifmap.txt'
    gold_path = rtl_output_path / 'layer' / args.layer / 'gold.txt'

    with open(weight_path) as f:
        weight_bias_data = [int(i) for i in f.read().split("\n") if i != '']

    with open(fmap_path) as f:
        features_data = np.array([int(i) for i in f.read().split("\n") if i != ''])

    with open(gold_path) as f:
        gold = np.array([int(i) for i in f.read().split("\n") if i != ''])

    layer = int(args.layer)
    n_filter = cnn_config["filter_channel"][layer]
    x_size = int(generic_config['X_SIZE'])
    conv_per_line = int(generic_config['CONVS_PER_LINE'])
    n_channel = int(generic_config['N_CHANNEL'])

    weight_bias = np.array(weight_bias_data)
    bias = weight_bias[:n_filter]
    weight = weight_bias[n_filter:].reshape(n_filter, n_channel, 3, 3)
    features = features_data.reshape(n_channel, x_size*x_size)

    n_sim = conv_per_line * (conv_per_line + 2) * n_channel * n_filter + (3 + 1) * n_filter
    report = conv2d_ws_sim(
        features=features.reshape((-1, x_size, x_size)), weights=weight, bias=bias,
        gold=gold, n_sim=n_sim, stride=1, padding=0
    )
    report.to_csv(output_path / f'{layer}.csv')
    print()


if __name__ == '__main__':
    main()

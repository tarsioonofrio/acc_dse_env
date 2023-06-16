import os
import json
import pickle
import argparse
from pathlib import Path

import numpy as np

from lib import util, keras_cifar10
from lib.generate_files import (
    generate_files, generate_generic_file, generate_tcl_generic, generate_config_file,
    generate_samples, generate_gold_maxpool_vhd_pkg, fc
)
from lib.model import dictionary_from_model


def main():
    parser = argparse.ArgumentParser(
        usage='use "python %(prog)s --help" for more information.\n'
    )
    parser.add_argument("--cnn_config", "-c", type=str, help="Name of neural network config file in nn_config")
    parser.add_argument("--rtl_config", "-r", type=str, help="Name of hardware config file in rtl_config")
    args = parser.parse_args()

    root = Path(__file__).parent.resolve()
    # cnn_config_path = root / "cnn_config" / f"{args.cnn_config}.json"
    cnn_output_path = root / "cnn_output" / args.cnn_config
    rtl_config_path = root / "rtl_config" / f"{args.rtl_config}.json"
    rtl_output_path = root / "rtl_output" / args.cnn_config / args.rtl_config

    rtl_output_path.mkdir(parents=True, exist_ok=True)

    # with open(cnn_config_path) as f:
    #     cnn_config = json.load(f)

    with open(rtl_config_path) as f:
        rtl_config = json.load(f)

    shift_bits = rtl_config["INPUT_SIZE"] / 2
    # Adjust shift
    shift = 2 ** shift_bits

    # Compute number of convolutional layers

    if os.path.exists(cnn_output_path / "weights.pkl"):
        # model_dict = {int(k): v for k, v in loadmat(str(path / "model.mat")).items() if k[0] != '_'}
        with open(cnn_output_path / 'weights.pkl', "rb") as f:
            model_dict = pickle.load(f)
    else:
        from tensorflow import keras
        from lib import keras_models
        model = keras.models.load_model(cnn_output_path / "weights")
        # Generate dictionary
        model_dict = dictionary_from_model(model)

        # savemat(path / "model.mat", {str(k): v for k, v in model_dict.items()})
        with open(cnn_output_path / 'weights.pkl', 'wb') as f:
            # Pickle dictionary using protocol 0.
            pickle.dump(model_dict, f)

    model_dict = {k: v for k, v in model_dict.items() if v["type"] != "Flatten"}

    (_, _), (x_test_int, y_test) = keras_cifar10.load_data()
    x_test = x_test_int / 255.0
    input_size = np.prod(model_dict[0]["input_shape"])

    # Compute output layer dimensions
    layer_dimension = [v["output_shape"][0] for k, v in model_dict.items()]
    generic_dict = {
        "MEM_SIZE": rtl_config["MEM_SIZE"],
        "INPUT_SIZE": rtl_config["INPUT_SIZE"],
        "CARRY_SIZE": rtl_config["CARRY_SIZE"],
        "CLK_PERIOD": rtl_config["CLK_PERIOD"],
        "STRIDE": [v["stride_h"] for k, v in model_dict.items()],
        "N_FILTER": [v["filter_channel"] for k, v in model_dict.items()],
        "DATAFLOW_TYPE": rtl_config["DATAFLOW_TYPE"],
        "LAT": rtl_config["LAT"],
        "SHIFT": int(shift_bits),
        "IN_DELAY": rtl_config["IN_DELAY"],
        "ARRAY_TYPE": rtl_config["ARRAY_TYPE"],
        "N_LAYER": 0,
    }

    vhd_dict = {
        "modelDict": model_dict,
        "shift": shift,
        "input_size": input_size,
        "filter_dimension": [v["filter_dimension"] for k, v in model_dict.items()],
        "filter_channel": [v["filter_channel"] for k, v in model_dict.items()],
        "layer_dimension": layer_dimension,
        "testSet": x_test,
        "testLabel": y_test,
        "stride_h": [v["stride_h"] for k, v in model_dict.items()],
        "stride_w": [v["stride_w"] for k, v in model_dict.items()],
        "testSetSize": 1,
    }
    vhd_dict_files = {
        ** vhd_dict,
        "testSetSize": 1,
    }

    vhd_dict_samples = {
        ** vhd_dict,
        "testSetSize": 10,
    }

    # Compute input channels
    input_channel = [v["input_shape"][-1] for k, v in model_dict.items()]
    for e, _ in enumerate(list(model_dict.keys())):
        generate_files(
            model_dict[0]["input_shape"][-1], model_dict[0]["input_shape"][0], input_channel, generic_dict, vhd_dict_files, e,
            rtl_output_path
        )

    size = len([v["filter_channel"] for k, v in model_dict.items()]) - 1
    # if "pool" in cnn_config:
    #     path_layer = rtl_output_path / "layer" / str(size + 1)
    #     path_layer.mkdir(parents=True, exist_ok=True)
    #     generate_gold_maxpool_vhd_pkg(size, path_layer)

    size = len(model_dict.keys()) - 1
    path_layer = rtl_output_path / "layer" / str(size)
    path_layer.mkdir(parents=True, exist_ok=True)
    # fc(model_dict, shift, size, path_layer)

    generate_samples(input_channel, generic_dict, vhd_dict_samples, 0, rtl_output_path, single_file=False)

    generic_dict2 = {
        "MEM_SIZE": rtl_config["MEM_SIZE"],
        "INPUT_SIZE": rtl_config["INPUT_SIZE"],
        "CARRY_SIZE": rtl_config["CARRY_SIZE"],
        "CLK_PERIOD": rtl_config["CLK_PERIOD"],
        "STRIDE": [max([v["stride_h"] for k, v in model_dict.items()])],
        "N_FILTER": [max([v["filter_channel"] for k, v in model_dict.items()])],
        "DATAFLOW_TYPE": rtl_config["DATAFLOW_TYPE"],
        "LAT": rtl_config["LAT"],
        "SHIFT": int(shift_bits),
        "IN_DELAY": rtl_config["IN_DELAY"],
        "ARRAY_TYPE": rtl_config["ARRAY_TYPE"],

        "X_SIZE": max([model_dict[0]["input_shape"][0]] + vhd_dict["layer_dimension"]),
        "C_SIZE": max(model_dict[0]["input_shape"][-1] + vhd_dict["filter_channel"]),
        "FILTER_WIDTH": max(vhd_dict["filter_dimension"]),
        "CONVS_PER_LINE": max(vhd_dict["layer_dimension"]),
        "LAYER": 0,
    }
    pe_path = rtl_output_path / "core"
    pe_path.mkdir(parents=True, exist_ok=True)
    generate_generic_file({**generic_dict2, "N_LAYER": len(vhd_dict["filter_dimension"])}, pe_path, 0)
    generate_tcl_generic(generic_dict2, pe_path, 0)
    generate_config_file({**generic_dict2, "N_CHANNEL": max(vhd_dict["filter_channel"])}, pe_path, 0)


if __name__ == '__main__':
    main()

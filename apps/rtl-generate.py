import os
import json
import pickle
import argparse

from pathlib import Path
from types import SimpleNamespace

import torch
import numpy as np

from lib import util, keras_cifar10
# from lib.generate_files import (
#     generate_files, generate_generic_file, generate_tcl_generic, generate_config_file,
#     generate_samples, generate_gold_maxpool_vhd_pkg, fc, dict_op_type
# )
from lib.generate_files import GenerateRTL
from lib.model import dictionary_from_model
from lib.pytorch_models import Default

def main():
    parser = argparse.ArgumentParser(
        usage='use "python %(prog)s --help" for more information.\n'
    )
    parser.add_argument("--cnn_config", "-c", type=str, help="Name of neural network config file in nn_config")
    parser.add_argument("--rtl_config", "-r", type=str, help="Name of hardware config file in rtl_config")
    args = parser.parse_args()

    root = Path(__file__).parent.resolve()
    cnn_config_path = root / "cnn_config" / f"{args.cnn_config}.json"
    cnn_output_path = root / "cnn_output" / args.cnn_config
    rtl_config_path = root / "rtl_config" / f"{args.rtl_config}.json"
    rtl_output_path = root / "rtl_output" / args.cnn_config / args.rtl_config

    rtl_output_path.mkdir(parents=True, exist_ok=True)

    with open(cnn_config_path) as f:
        cnn_config = json.load(f)

    with open(rtl_config_path) as f:
        rtl_config = json.load(f)

    shift_bits = rtl_config["INPUT_SIZE"] / 2
    # Adjust shift
    shift = 2 ** shift_bits

    # Compute number of convolutional layers
    config_dataset = {
        "input_w": 32,
        "input_h": 32,
        "input_c": 3,
        "classes": 10,
    }
    model = Default(cnn_config, config_dataset)
    model.load_state_dict(torch.load(cnn_output_path / 'model.pth'))

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

    (_, _), (x_test_int, y_test) = keras_cifar10.load_data()
    x_test = x_test_int / 255.0
    dataloader = SimpleNamespace(x=x_test, y=y_test)

    generate_rtl = GenerateRTL(
        model_dict, rtl_config, rtl_output_path, dataloader, samples=10
    )
    generate_rtl(samples=True, core=True)


if __name__ == '__main__':
    main()

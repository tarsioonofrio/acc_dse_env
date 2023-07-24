import os
import json
import pickle
import argparse
from pathlib import Path

import torch
import numpy as np
from tensorflow import keras

from lib import keras_models
from lib import util, keras_cifar10
from lib.pytorch_models import Default
from lib.model import dictionary_from_model


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
    shift = int(2 ** shift_bits)

    # Compute number of convolutional layers

    model_keras = keras.models.load_model(cnn_output_path / "weights")
    # Generate dictionary
    model_dict = dictionary_from_model(model_keras)
    config_dataset = {
        "input_w": 32,
        "input_h": 32,
        "input_c": 3,
        "classes": 10,
    }
    model_pth0 = Default(cnn_config, config_dataset)
    model_pth0.load_state_dict(torch.load(cnn_output_path / 'model.pth'))
    model_pth = Default(cnn_config, config_dataset)
    model_pth.requires_grad_(False)

    for i in range(len(model_pth.sequential)):
        name = model_pth.sequential[i]._get_name()
        if name in ['Conv2d', 'Linear']:
            model_pth.sequential[i].weight.data = model_pth0.sequential[i].weight.data * 256
            model_pth.sequential[i].bias.data = model_pth0.sequential[i].bias.data * (256 * 256)

    model_pth.type(torch.int)

    (_, _), (x_test_int, y_test) = keras_cifar10.load_data()

    y0 = model_pth.sequential[0](torch.from_numpy(np.transpose(x_test_int[0:1].astype(np.int32), (0, 3, 2, 1))))//shift
    y1 = model_pth.sequential[1](y0)

    # torch.save(model_pth.state_dict(), cnn_output_path / "model_quantized.pth")


if __name__ == '__main__':
    main()

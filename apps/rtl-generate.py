import os
import json
import pickle
import argparse

from pathlib import Path
from types import SimpleNamespace

import torch

from apps.lib.legacy import keras_cifar10
from lib import pytorch_models
from lib.generate_files import GenerateRTL
from apps.lib.legacy.model import dictionary_from_model


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

    # Compute number of convolutional layers
    config_dataset = {
        "input_w": 32,
        "input_h": 32,
        "input_c": 3,
        "classes": 10,
    }
    pytorch_models_lower = {k.lower(): v for k, v in vars(pytorch_models).items()}
    model = pytorch_models_lower[cnn_config["name"]](cnn_config, config_dataset)
    model.load_state_dict(torch.load(cnn_output_path / 'model.pth'))

    (_, _), (x_test_int, y_test) = keras_cifar10.load_data()
    x_test = x_test_int / 255.0
    dataloader = SimpleNamespace(x=x_test, x_int=x_test_int, y=y_test, config=config_dataset)

    generate_rtl = GenerateRTL(model, rtl_config, rtl_output_path, dataloader, samples=10)
    generate_rtl(samples=True, core=True)


if __name__ == '__main__':
    main()

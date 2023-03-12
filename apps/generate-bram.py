import os
import json
import pickle
import argparse
import datetime
from pathlib import Path

# from scipy.io import savemat, loadmat
from lib import util, keras_cifar10
from lib.generate_files import (
    generate_samples
)
from apps.lib.bram import generate_bram_files2
from apps.lib.model import dictionary_from_model


def main():
    parser = argparse.ArgumentParser(
        usage='use "python %(prog)s --help" for more information.\n'
    )
    parser.add_argument("--nn_config", "-n", type=str, help="Name of neural network config file in nn_config")
    parser.add_argument("--rtl_config", "-r", type=str, help="Name of hardware config file in rtl_config")

    args = parser.parse_args()

    config_nn_name = args.nn_config
    config_hw_name = args.rtl_config

    root = Path(__file__).parent.resolve()
    file_nn = root / "nn_config" / f"{config_hw_name}.json"
    file_hw = root / "rtl_config" / f"{config_hw_name}.json"
    path = root / "rtl_code" / f"{config_nn_name}_{config_hw_name}"

    path_output = path / "bram"
    path_output.mkdir(parents=True, exist_ok=True)

    with open(file_nn) as f:
        config_nn = json.load(f)

    with open(file_hw) as f:
        config_hw = json.load(f)

    generate_bram_files2(len(config_nn["filter_channel"]), path / "layer", path_output, config_hw)


if __name__ == '__main__':
    main()

import json
import argparse
from pathlib import Path

import torch
import numpy as np

from tensorflow import keras
from lib import pytorch_models


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

    # Compute number of convolutional layers
    model_keras = keras.models.load_model(cnn_output_path / "weights")
    weights = model_keras.get_weights()
    config_dataset = {
        "input_w": 32,
        "input_h": 32,
        "input_c": 3,
        "classes": 10,
    }
    pytorch_models_lower = {k.lower(): v for k, v in vars(pytorch_models).items()}
    model_pth = pytorch_models_lower[cnn_config["name"]](cnn_config, config_dataset, True)
    model_pth.requires_grad_(False)

    model_pth.sequential[0].weight.data = torch.from_numpy(np.transpose(weights[0]))
    model_pth.sequential[0].bias.data = torch.from_numpy(np.transpose(weights[1]))
    model_pth.sequential[2].weight.data = torch.from_numpy(np.transpose(weights[2]))
    model_pth.sequential[2].bias.data = torch.from_numpy(np.transpose(weights[3]))
    model_pth.sequential[4].weight.data = torch.from_numpy(np.transpose(weights[4]))
    model_pth.sequential[4].bias.data = torch.from_numpy(np.transpose(weights[5]))

    i = 8
    model_pth.sequential[i].weight.data = torch.from_numpy(np.transpose(weights[6]))
    model_pth.sequential[i].bias.data = torch.from_numpy(np.transpose(weights[7]))

    # model_pth.type(torch.int)
    # (_, _), (x_test_int, y_test) = keras_cifar10.load_data()
    # y0 = model_pth.sequential[0](torch.from_numpy(np.transpose(x_test_int[0:1].astype(np.int32), (0, 3, 2, 1))))//shift
    # y1 = model_pth.sequential[1](y0)
    # print()

    torch.save(model_pth.state_dict(), cnn_output_path / "model.pth")


if __name__ == '__main__':
    main()

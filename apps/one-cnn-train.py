import argparse
import json
from pathlib import Path

import torch
from torch import nn
from lib.one_conv_layer import one_conv_layer


def main():
    parser = argparse.ArgumentParser(
        usage='use "python %(prog)s --help" for more information.\n'
    )
    parser.add_argument(
        "--cnn_config",
        "-c",
        type=str,
        help="Name of neural network config file in nn_config",
    )
    parser.add_argument(
        "--debug",
        "-d",
        action="store_true",
        help="To execute sequential model layer by layer and debug",
    )
    args = parser.parse_args()

    root = Path(__file__).parent.parent.resolve() / "experiments"
    config_path = root / "cnn_config" / f"{args.cnn_config}.json"
    output_path = root / "cnn_output" / args.cnn_config

    output_path.mkdir(parents=True, exist_ok=True)

    with open(config_path) as f:
        cnn_config = json.load(f)

    conv = one_conv_layer(cnn_config)
    torch.save(conv.state_dict(), output_path / "model.pth")


if __name__ == "__main__":
    main()

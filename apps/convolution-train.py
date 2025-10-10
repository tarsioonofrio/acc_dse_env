import argparse
import json
from pathlib import Path

import torch
from lib.convolution import convolution
from torch import nn


def main():
    parser = argparse.ArgumentParser(
        usage='use "python %(prog)s --help" for more information.\n'
    )
    parser.add_argument(
        "--cnn",
        "-c",
        type=Path,
        help="Path to neural network config file",
    )
    parser.add_argument(
        "--debug",
        "-d",
        action="store_true",
        help="To execute sequential model layer by layer and debug",
    )
    args = parser.parse_args()

    root = Path(__file__).parent.parent.resolve() / "experiments"
    config_path = args.cnn
    output_path = root / "cnn_output" / args.cnn.stem

    output_path.mkdir(parents=True, exist_ok=True)

    with open(config_path) as f:
        cnn_config = json.load(f)

    conv = convolution(cnn_config)
    torch.save(conv.state_dict(), output_path / "model.pth")


if __name__ == "__main__":
    main()

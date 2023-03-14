import json
import argparse
from pathlib import Path

from lib.bram import generate_bram_files


def main():
    parser = argparse.ArgumentParser(
        usage='use "python %(prog)s --help" for more information.\n'
    )
    parser.add_argument("--cnn_config", "-c", type=str, help="Name of neural network config file in nn_config")
    parser.add_argument("--rtl_config", "-r", type=str, help="Name of hardware config file in rtl_config")

    args = parser.parse_args()

    root = Path(__file__).parent.resolve()
    file_nn = root / "cnn_config" / f"{args.rtl_config}.json"
    file_hw = root / "rtl_config" / f"{args.rtl_config}.json"
    path = root / "rtl_output" / f"{args.cnn_config}/{args.rtl_config}"

    path_output = path / "bram"
    path_output.mkdir(parents=True, exist_ok=True)

    with open(file_nn) as f:
        config_nn = json.load(f)

    with open(file_hw) as f:
        config_hw = json.load(f)

    generate_bram_files(len(config_nn["filter_channel"]), path / "layer", path_output, config_hw, "18Kb")
    generate_bram_files(len(config_nn["filter_channel"]), path / "layer", path_output, config_hw, "36Kb")


if __name__ == '__main__':
    main()

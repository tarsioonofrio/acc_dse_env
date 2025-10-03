import argparse
import json
from pathlib import Path

import torch
from torch.utils.data import DataLoader
from lib.generate_files import GenerateRTL
from lib.one_conv_layer import one_conv_layer


def main():
    parser = argparse.ArgumentParser(
        usage='use "python %(prog)s --help" for more information.\n'
    )
    parser.add_argument(
        "--cnn_config",
        "-c",
        default="one-conv32",
        type=str,
        help="Name of neural network config file in nn_config",
    )
    parser.add_argument(
        "--rtl_config",
        "-r",
        default="default",
        type=str,
        help="Name of hardware config file in rtl_config",
    )
    args = parser.parse_args()

    root = Path(__file__).parent.parent.resolve() / "experiments"
    cnn_config_path = root / "cnn_config" / f"{args.cnn_config}.json"
    cnn_output_path = root / "cnn_output" / args.cnn_config
    rtl_config_path = root / "rtl_config" / f"{args.rtl_config}.json"
    rtl_output_path = root / "rtl_output" / args.cnn_config / args.rtl_config

    rtl_output_path.mkdir(parents=True, exist_ok=True)

    with open(cnn_config_path) as f:
        cnn_config = json.load(f)

    model = one_conv_layer(cnn_config)
    model.load_state_dict(torch.load(cnn_output_path / "model.pth"))

    class RandomNormalDataset:
        def __init__(self, length, channels, height, width):
            self.length = length
            self.channels = channels
            self.height = height
            self.width = width

        def __len__(self):
            return self.length

        def __getitem__(self, idx):
            return torch.randn(self.channels, self.height, self.width), 0

    h = cnn_config.get("input_h", 32)
    w = cnn_config.get("input_w", 32)
    c = cnn_config.get("input_c", 3)
    dataset = RandomNormalDataset(1, c, h, w)
    torch_loader = DataLoader(dataset, batch_size=1)
    dataloader = []
    for xb, yb in torch_loader:
        bs = xb.shape[0]
        for i in range(bs):
            label = (
                int(yb[i].item())
                if isinstance(yb, torch.Tensor)
                else int(yb[i])
            )
            dataloader.append((xb[i], label))

    with open(rtl_config_path) as f:
        rtl_config = json.load(f)

    generate_rtl = GenerateRTL(
        model, rtl_config, rtl_output_path, dataloader, samples=1
    )
    generate_rtl(samples=True, core=True)


if __name__ == "__main__":
    main()

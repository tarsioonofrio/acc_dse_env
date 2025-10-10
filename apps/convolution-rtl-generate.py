import argparse
import json
from pathlib import Path

import torch
from lib.convolution import convolution
from lib.generate_files import GenerateRTL
from torch.utils.data import DataLoader


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
        "--rtl",
        "-r",
        default=Path("../experiments/rtl_config/default.json"),
        type=Path,
        help="Path to hardware config file",
    )
    args = parser.parse_args()

    root = Path(__file__).parent.parent.resolve() / "experiments"
    cnn_config_path = args.cnn
    cnn_output_path = root / "cnn_output" / args.cnn.stem
    rtl_config_path = args.rtl
    rtl_output_path = root / "rtl_output" / args.cnn.stem / args.rtl.stem

    rtl_output_path.mkdir(parents=True, exist_ok=True)

    with open(cnn_config_path) as f:
        cnn_config = json.load(f)

    model = convolution(cnn_config)
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

import json
import argparse
from pathlib import Path

import torch
import numpy as np
from sklearn import metrics
from torchvision import transforms
from torchvision.datasets import CIFAR10

from lib import pytorch_models
from lib.generate_files import GenerateRTL


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

    pytorch_models_lower = {k.lower(): v for k, v in vars(pytorch_models).items()}
    model = pytorch_models_lower[cnn_config["name"]](cnn_config)
    model.load_state_dict(torch.load(cnn_output_path / 'model.pth'))

    transform = transforms.Compose([
        transforms.ToTensor(),
        # transforms.Normalize((0.5, 0.5, 0.5), (0.5, 0.5, 0.5)),
    ])
    dataloader = CIFAR10("~/pytorch", train=False, download=True, transform=transform)

    generate_rtl = GenerateRTL(model, rtl_config, rtl_output_path, dataloader, samples=10)
    quant = generate_rtl.forward(10000, generate_rtl.total_layers-1, generate_rtl.map_gold_torch)
    out_quant = quant.argmax(dim=1).cpu().detach().numpy()

    model_full = pytorch_models_lower[cnn_config["name"]](cnn_config)
    model_full.load_state_dict(torch.load(cnn_output_path / 'model.pth'))
    out_full = [int(np.argmax(model_full(d[0].unsqueeze(0)).cpu().detach().numpy())) for d in dataloader]
    target = dataloader.targets
    names = ['Quantized X Target', 'Full X Target', 'Quantized X Full']
    for n, x, y in zip(names, [out_quant, out_full, out_quant], [target, target, out_full]):
        print(n)
        print("accuracy_score", metrics.accuracy_score(x, y))
        print("balanced_accuracy_score", metrics.balanced_accuracy_score(x, y))
        # print("precision_score", metrics.precision_score(x, y))
        # print("average_precision_score", metrics.average_precision_score(x, y))
        print("confusion_matrix", metrics.confusion_matrix(x, y))
    print()


if __name__ == '__main__':
    main()

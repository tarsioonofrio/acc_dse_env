import json
import argparse
from pathlib import Path

import torch
from torchvision import transforms
from torchvision.datasets import CIFAR10, ImageFolder
from torchvision import models as torchvision_models


from lib import pytorch_models
from lib.generate_files import GenerateRTL


def main():
    parser = argparse.ArgumentParser(
        usage='use "python %(prog)s --help" for more information.\n'
    )
    parser.add_argument("--cnn_config", "-c", type=str, help="Name of neural network config file in nn_config")
    parser.add_argument("--rtl_config", "-r", type=str, help="Name of hardware config file in rtl_config")
    parser.add_argument("--dataset", "-d", type=str, help="Name of hardware config file in rtl_config")
    args = parser.parse_args()

    root = Path(__file__).parent.parent.resolve() / 'experiments'
    cnn_config_path = root / "cnn_config" / f"{args.cnn_config}.json"
    cnn_output_path = root / "cnn_output" / args.cnn_config
    rtl_config_path = root / "rtl_config" / f"{args.rtl_config}.json"
    rtl_output_path = root / "rtl_output" / args.cnn_config / args.rtl_config

    rtl_output_path.mkdir(parents=True, exist_ok=True)

    torchvision_models_lower = {k.lower(): v for k, v in vars(torchvision_models).items()}
    pytorch_models_lower = {k.lower(): v for k, v in vars(pytorch_models).items()}

    if args.cnn_config in torchvision_models_lower:
        torch_model = torchvision_models_lower[args.cnn_config](weights='DEFAULT')
        model = pytorch_models_lower['vgg'](torch_model, debug=True)
        transform = transforms.Compose([
            transforms.Resize((224, 224)),
            transforms.ToTensor(),
            # transforms.Normalize((0.5, 0.5, 0.5), (0.5, 0.5, 0.5)),
        ])
        path = root.parent.parent / 'imagenette2-320/val/'
        dataloader = ImageFolder(root=path.as_posix(), transform=transform)
        # model(torch.unsqueeze(dataloader[0][0], 0))
    else:
        with open(cnn_config_path) as f:
            cnn_config = json.load(f)

        model = pytorch_models_lower[cnn_config["name"]](cnn_config)
        model.load_state_dict(torch.load(cnn_output_path / 'model.pth'))
        transform = transforms.Compose([
            transforms.ToTensor(),
        ])
        dataloader = CIFAR10("~/pytorch", train=False, download=True, transform=transform)

    with open(rtl_config_path) as f:
        rtl_config = json.load(f)

    generate_rtl = GenerateRTL(model, rtl_config, rtl_output_path, dataloader, samples=10)
    generate_rtl(samples=True, core=True)


if __name__ == '__main__':
    main()

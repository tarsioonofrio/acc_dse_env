# https://docs.fast.ai/examples/migrating_pytorch_verbose.html
import json
import argparse
from pathlib import Path
from functools import partial

import torch
from torchvision import transforms


from torchvision.datasets import CIFAR10

# To get `fit_one_cycle`, `lr_find`
import fastai.callback.schedule
from fastai.learner import Learner
from fastai.metrics import accuracy
from fastai.data.core import DataLoaders
from fastai.optimizer import OptimWrapper


from lib import pytorch_models


def main():
    parser = argparse.ArgumentParser(
        usage='use "python %(prog)s --help" for more information.\n'
    )
    parser.add_argument("--cnn_config", "-c", type=str, help="Name of neural network config file in nn_config")
    parser.add_argument(
        "--debug", "-d", action='store_true', help="To execute sequential model layer by layer and debug"
    )
    args = parser.parse_args()

    root = Path(__file__).parent.resolve()
    config_path = root / "cnn_config" / f"{args.cnn_config}.json"
    output_path = root / "cnn_output" / args.cnn_config

    output_path.mkdir(parents=True, exist_ok=True)

    with open(config_path) as f:
        cnn_config = json.load(f)

    transform = transforms.Compose([
        transforms.ToTensor(),
        transforms.Normalize((0.5, 0.5, 0.5), (0.5, 0.5, 0.5)),
    ])
    criterion = torch.nn.CrossEntropyLoss()
    opt_func = partial(OptimWrapper, opt=torch.optim.SGD)

    dataset_train = CIFAR10("~/pytorch", train=True, download=True, transform=transform)
    dataset_test = CIFAR10("~/pytorch", train=False, download=True, transform=transform)

    train_loader = torch.utils.data.DataLoader(
        dataset_train, shuffle=True, batch_size=32, num_workers=2, pin_memory=True
    )
    test_loader = torch.utils.data.DataLoader(
        dataset_test, shuffle=False, batch_size=32, num_workers=2, pin_memory=True
    )
    data_loader = DataLoaders(train_loader, test_loader)

    pytorch_models_lower = {k.lower(): v for k, v in vars(pytorch_models).items()}
    model = pytorch_models_lower[cnn_config["name"]](cnn_config, True)
    learn = Learner(data_loader, model, loss_func=criterion, opt_func=opt_func, metrics=accuracy)
    learn.fit_one_cycle(n_epoch=2, lr_max=0.1)
    learn.fit(cnn_config["n_epochs"])
    torch.save(learn.model.state_dict(), output_path / "model.pth")


if __name__ == '__main__':
    main()

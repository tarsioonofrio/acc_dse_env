import os
import json
import pickle
import argparse
from pathlib import Path

import torch
import numpy as np
import torchvision.transforms as transforms

from skorch import NeuralNetClassifier
from torchvision.datasets import CIFAR10
from sklearn.metrics import accuracy_score, precision_recall_fscore_support

from lib import pytorch_models


def main():
    parser = argparse.ArgumentParser(
        usage='use "python %(prog)s --help" for more information.\n'
    )
    parser.add_argument("--cnn_config", "-c", type=str, help="Name of neural network config file in nn_config")
    args = parser.parse_args()

    root = Path(__file__).parent.resolve()
    config_path = root / "cnn_config" / f"{args.cnn_config}.json"
    output_path = root / "cnn_output" / args.cnn_config

    output_path.mkdir(parents=True, exist_ok=True)

    with open(config_path) as f:
        cnn_config = json.load(f)

    # Build CNN application
    # Get application dataset
    train = CIFAR10("./data", train=True)
    test = CIFAR10("./data", train=False)
    x_train = np.transpose((train.data / 255.0).astype(np.float32), [0, 3, 1, 2])
    x_test = np.transpose((test.data / 255.0).astype(np.float32), [0, 3, 1, 2])

    # y_train = [train.classes[target] for target in train.targets]
    y_train = np.array(train.targets)
    y_test = np.array(test.targets)
    config_dataset = {
        "input_w": 32,
        "input_h": 32,
        "input_c": 3,
        "classes": 10,
    }
    pytorch_models_lower = {k.lower(): v for k, v in vars(pytorch_models).items()}
    model_class = pytorch_models_lower[cnn_config["name"]](cnn_config, config_dataset, True)
    model = NeuralNetClassifier(model_class, criterion=torch.nn.CrossEntropyLoss, device="cuda")

    model.fit(
        x_train, y_train, epochs=cnn_config["n_epochs"]
    )
    # Save model
    torch.save(model.module.state_dict(), output_path / "model.pth")
    y_pred = model.predict(x_test)
    accuracy = accuracy_score(y_test, y_pred)
    # prf = precision_recall_fscore_support(y_test, y_pred)


if __name__ == '__main__':
    main()

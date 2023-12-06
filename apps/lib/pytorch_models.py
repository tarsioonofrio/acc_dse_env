import torch
from torch import nn


class VGG(nn.Module):
    def __init__(self, vgg, debug=False):
        super().__init__()
        self.debug = debug
        layers = [
            * list(vgg.features.modules())[1:],
            # avg pool is not necessary at this moment, using the size of input is the same of output
            # vgg.avgpool,
            nn.Flatten(1, -1),
            * list(vgg.classifier.modules())[1:]
        ]
        self.sequential = nn.Sequential(*layers)

    def forward(self, x):
        if self.debug:
            for layer in self.sequential:
                x = layer(x)
        else:
            x = self.sequential(x)
        return x


class Default(nn.Module):
    def __init__(self, config_model, debug=False):
        super().__init__()
        self.debug = debug
        padding = config_model.get('pad', [0 for i in range(len(config_model["filter_channel"]))])
        conv0 = nn.Conv2d(
            in_channels=3, out_channels=config_model["filter_channel"][0],
            kernel_size=(config_model["filter_dimension"][0], config_model["filter_dimension"][0]),
            stride=(config_model["stride_h"][0], config_model["stride_w"][0]),
            padding=padding[0]
        )
        conv = [
            layer
            for i in range(1, len(config_model["filter_channel"]))
            for layer in [
                nn.Conv2d(
                    in_channels=config_model["filter_channel"][i - 1], out_channels=config_model["filter_channel"][i],
                    kernel_size=(config_model["filter_dimension"][i], config_model["filter_dimension"][i]),
                    stride=(config_model["stride_h"][i], config_model["stride_w"][i]),
                    padding=padding[i]
                ),
                nn.ReLU()
            ]
        ]

        layers = [
            conv0,
            nn.ReLU(),
            *conv,
            nn.Flatten(1, -1)
        ]
        temp = nn.Sequential(*layers)

        shape = config_model['input_c'], config_model['input_w'], config_model['input_h']
        input_tensor = torch.ones(1, shape[0], shape[1], shape[2])
        dim = temp(input_tensor).shape[1]

        sequential = layers + [nn.Linear(dim, 10)]
        self.sequential = nn.Sequential(*sequential)

    def forward(self, x):
        if self.debug:
            for layer in self.sequential:
                x = layer(x)
        else:
            x = self.sequential(x)
        return x


class MaxPool(nn.Module):
    def __init__(self, config_model, debug=False):
        super().__init__()
        self.debug = debug
        conv0 = nn.Conv2d(
            in_channels=3, out_channels=config_model["filter_channel"][0],
            kernel_size=(config_model["filter_dimension"][0], config_model["filter_dimension"][0]),
            stride=(config_model["stride_h"][0], config_model["stride_w"][0])
        )
        conv = [
            layer
            for i in range(1, len(config_model["filter_channel"]))
            for layer in [
                nn.Conv2d(
                    in_channels=config_model["filter_channel"][i - 1], out_channels=config_model["filter_channel"][i],
                    kernel_size=(config_model["filter_dimension"][i], config_model["filter_dimension"][i]),
                    stride=(config_model["stride_h"][i], config_model["stride_w"][i])
                ),
                nn.ReLU()
            ]
        ]

        self.sequential = nn.Sequential(
            conv0,
            nn.ReLU(),
            *conv,
            nn.MaxPool2d(kernel_size=3),
            nn.Flatten(1, -1),
            nn.Linear(config_model["filter_channel"][2], 10),
            nn.Softmax(1),
        )

    def forward(self, x):
        if self.debug:
            for layer in self.sequential:
                x = layer(x)
        else:
            x = self.sequential(x)
        return x


class DefaultMaxPool(nn.Module):
    def __init__(self, config_model, debug=False):
        super().__init__()
        self.debug = debug
        padding = config_model.get('pad', [0 for i in range(len(config_model["filter_channel"]))])
        conv0 = nn.Conv2d(
            in_channels=3, out_channels=config_model["filter_channel"][0],
            kernel_size=(config_model["filter_dimension"][0], config_model["filter_dimension"][0]),
            stride=(config_model["stride_h"][0], config_model["stride_w"][0]),
            padding=padding[0]
        )
        conv = [
            layer
            for i in range(1, len(config_model["filter_channel"]))
            for layer in [
                nn.Conv2d(
                    in_channels=config_model["filter_channel"][i - 1], out_channels=config_model["filter_channel"][i],
                    kernel_size=(config_model["filter_dimension"][i], config_model["filter_dimension"][i]),
                    stride=(config_model["stride_h"][i], config_model["stride_w"][i]),
                    padding=padding[i]
                ),
                nn.ReLU(),
                nn.MaxPool2d(kernel_size=2),
            ]
        ]

        layers = [
            conv0,
            nn.ReLU(),
            nn.MaxPool2d(kernel_size=2),
            *conv,
            nn.Flatten(1, -1)
        ]
        tmp = nn.Sequential(*layers)

        shape = config_model['input_c'], config_model['input_w'], config_model['input_h']
        input_tensor = torch.ones(1, shape[0], shape[1], shape[2])
        dim = tmp(input_tensor).shape[1]

        sequential = layers + [nn.Linear(dim, 10)]
        self.sequential = nn.Sequential(*sequential)

    def forward(self, x):
        if self.debug:
            for layer in self.sequential:
                x = layer(x)
        else:
            x = self.sequential(x)
        return x

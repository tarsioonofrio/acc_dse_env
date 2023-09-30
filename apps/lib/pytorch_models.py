import torch
from torch import nn


class Default(nn.Module):
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

        layers = [
            conv0,
            nn.ReLU(),
            nn.Flatten(1, -1)
        ]
        sequential = nn.Sequential(*layers)

        shape = config_model['input_c'], config_model['input_w'], config_model['input_h']
        input_tensor = torch.ones(1, shape[0], shape[1], shape[2])
        dim = sequential(input_tensor).shape[1]

        final_layers = [
            nn.Linear(dim, 10),
            nn.Softmax(1),
        ]
        self.sequential = nn.Sequential(*(layers + final_layers))

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


class BatchNorm(nn.Module):
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
                nn.BatchNorm2d(config_model["filter_channel"][i]),
                nn.ReLU(),
            ]
        ]

        self.sequential = nn.Sequential(
            conv0,
            nn.ReLU(),
            *conv,
            nn.Flatten(1, -1),
            nn.Linear(config_model["filter_channel"][2]*9, 10),
            nn.Softmax(1),
        )

    def forward(self, x):
        if self.debug:
            for layer in self.sequential:
                x = layer(x)
        else:
            x = self.sequential(x)
        return x


class Default3FC(nn.Module):
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
            nn.Flatten(1, -1),
            nn.Linear(config_model["filter_channel"][2]*9, config_model["filter_channel"][2]*9),
            nn.ReLU(),
            nn.Linear(config_model["filter_channel"][2]*9, config_model["filter_channel"][2]*9),
            nn.ReLU(),
            nn.Linear(config_model["filter_channel"][2]*9, 10),
            nn.Softmax(1),
        )

    def forward(self, x):
        if self.debug:
            for layer in self.sequential:
                x = layer(x)
        else:
            x = self.sequential(x)
        return x


class FirstChannel(nn.Module):
    def __init__(self):
        super().__init__()

    def forward(self, x):
        return x[:, 0].unsqueeze(1)


class OneChannel(nn.Module):
    def __init__(self, config_model, debug=False):
        super().__init__()
        self.debug = debug
        conv0 = nn.Conv2d(
            in_channels=1, out_channels=config_model["filter_channel"][0],
            kernel_size=(config_model["filter_dimension"][0], config_model["filter_dimension"][0]),
            stride=(config_model["stride_h"][0], config_model["stride_w"][0])
        )
        self.sequential = nn.Sequential(
            FirstChannel(),
            conv0,
            nn.ReLU(),
            nn.Flatten(1, -1),
            nn.Linear(675, 10),
            nn.Softmax(1),
        )

    def forward(self, x):
        if self.debug:
            for layer in self.sequential:
                x = layer(x)
        else:
            x = self.sequential(x)
        return x


class Conv1(nn.Module):
    def __init__(self, config_model, debug=False):
        super().__init__()
        self.debug = debug
        conv0 = nn.Conv2d(
            in_channels=3, out_channels=config_model["filter_channel"][0],
            kernel_size=(config_model["filter_dimension"][0], config_model["filter_dimension"][0]),
            stride=(config_model["stride_h"][0], config_model["stride_w"][0])
        )
        layers = [
            conv0,
            nn.ReLU(),
            nn.Flatten(1, -1)
        ]
        sequential = nn.Sequential(*layers)

        shape = config_model['input_c'], config_model['input_w'], config_model['input_h']
        input_tensor = torch.ones(1, shape[0], shape[1], shape[2])
        dim = sequential(input_tensor).shape[1]

        final_layers = [
            nn.Linear(dim, 10),
            nn.Softmax(1),
        ]
        self.sequential = nn.Sequential(*(layers + final_layers))

    def forward(self, x):
        if self.debug:
            for layer in self.sequential:
                x = layer(x)
        else:
            x = self.sequential(x)
        return x


class Linear1(nn.Module):
    def __init__(self, config_model, debug=False):
        super().__init__()
        self.debug = debug
        final_layers = [
            nn.Flatten(1, -1),
            nn.Linear(3072, 10),
            nn.Softmax(1),
        ]
        self.sequential = nn.Sequential(*final_layers)

    def forward(self, x):
        if self.debug:
            for layer in self.sequential:
                x = layer(x)
        else:
            x = self.sequential(x)
        return x


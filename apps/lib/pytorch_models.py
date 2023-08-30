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

        self.sequential = nn.Sequential(
            conv0,
            nn.ReLU(),
            *conv,
            nn.Flatten(1, -1),
            nn.Linear(config_model["filter_channel"][-1]*9, 10),
            nn.Softmax(1),
        )

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


class Stride1(nn.Module):
    def __init__(self, config_model, debug=False):
        super().__init__()
        self.debug = debug
        conv0 = nn.Conv2d(in_channels=3, out_channels=1, kernel_size=3, stride=1)
        self.sequential = nn.Sequential(
            conv0,
            nn.ReLU(),
            nn.Flatten(1, -1),
            nn.Linear(900, 10),
            nn.Softmax(1),
        )

    def forward(self, x):
        if self.debug:
            for layer in self.sequential:
                x = layer(x)
        else:
            x = self.sequential(x)
        return x

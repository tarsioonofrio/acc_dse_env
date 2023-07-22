from torch import nn


class Default(nn.Module):
    def __init__(self, config_model, config_data):
        super().__init__()
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
            nn.Linear(64*9, config_data["classes"]),
            nn.Softmax(),
        )

    def forward(self, x):
        x = self.sequential(x)
        return x

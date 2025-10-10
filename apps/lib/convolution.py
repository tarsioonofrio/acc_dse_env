from torch import nn


def convolution(cnn_config):
    # padding = cnn_config.get(
    #     "pad", [0 for i in range(len(cnn_config["filter_channel"]))]
    # )

    class Model(nn.Module):
        def __init__(self, debug=False):
            super().__init__()
            self.debug = debug
            conv = nn.Conv2d(
                in_channels=1,
                out_channels=cnn_config["filter_channel"],
                kernel_size=(
                    cnn_config["filter_dimension"],
                    cnn_config["filter_dimension"],
                ),
                stride=(cnn_config["stride_h"], cnn_config["stride_w"]),
            )
            self.sequential = nn.Sequential(conv)

        def forward(self, x):
            if self.debug:
                for layer in self.sequential:
                    x = layer(x)
            else:
                x = self.sequential(x)
            return x

    model = Model()
    return model

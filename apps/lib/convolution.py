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
                out_channels=cnn_config["filter_channel"][0],
                kernel_size=(
                    cnn_config["filter_dimension"][0],
                    cnn_config["filter_dimension"][0],
                ),
                stride=(cnn_config["stride_h"][0], cnn_config["stride_w"][0]),
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

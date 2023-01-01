import os
import torch
from torch import nn


class Model(nn.Module):
    def __init__(self):
        super().__init__()
        self.model = nn.Sequential(
            nn.Conv2d(3, 16, kernel_size=3, stride=2),
            nn.ReLU(inplace=True),
            nn.Conv2d(64, 32, kernel_size=3, stride=2),
            nn.ReLU(inplace=True),
            nn.Conv2d(192, 64, kernel_size=3, stride=2),
            nn.ReLU(inplace=True),
            nn.Conv2d(384, 128, kernel_size=3, stride=2),
            nn.ReLU(inplace=True),
        )

    def forward(self, x):
        x = self.flatten(x)
        logits = self.linear_relu_stack(x)
        return logits

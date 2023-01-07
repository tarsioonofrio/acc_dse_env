import math


def get_input_size(input_h, input_w, input_c):
    input_size = input_w * input_h * input_c
    return input_size


def get_output_layer_dimension(input_h, n_conv_layers, filter_dimension, stride_h):
    layer_dimension = [0] * (n_conv_layers + 2)

    if (input_h - filter_dimension[0]) % 2 != 0:
        layer_dimension[0] = math.ceil(((input_h - filter_dimension[0] + 1) / stride_h[0]))
    else:
        layer_dimension[0] = math.ceil(((input_h - filter_dimension[0]) / stride_h[0]) + 1)

    for i in range(1, n_conv_layers):
        if (input_h - filter_dimension[i]) % 2 != 0:
            layer_dimension[i] = math.ceil(((layer_dimension[i - 1] - filter_dimension[i] + 1) / stride_h[i]))
        else:
            layer_dimension[i] = math.ceil(((layer_dimension[i - 1] - filter_dimension[i]) / stride_h[i]) + 1)

    layer_dimension[n_conv_layers] = math.ceil(layer_dimension[n_conv_layers - 1]) * math.ceil(
        layer_dimension[n_conv_layers - 1])
    layer_dimension[n_conv_layers + 1] = 10
    return layer_dimension


def get_input_channel(input_c, n_conv_layers, filter_channel):
    input_channel = [0] * (n_conv_layers + 1)
    input_channel[0] = input_c
    for i in range(1, n_conv_layers):
        input_channel[i] = filter_channel[i - 1]
    input_channel[n_conv_layers] = 1
    return input_channel

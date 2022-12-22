import math

from tensorflow import keras
import numpy as np
import pathlib
import re


def get_mnist_dataset(input_h, input_w, input_c):
    # Get MNIST dataset
    mnist = keras.datasets.mnist

    # Load its data into training and test vectors
    (x_train, y_train), (x_test, y_test) = mnist.load_data()

    # Reshape
    numTrainImages = len(x_train)
    x_train = x_train.reshape(numTrainImages, input_h, input_w, input_c)
    numTestImages = len(x_test)
    x_test = x_test.reshape(numTestImages, input_h, input_w, input_c)

    # Normalize the data
    x_train, x_test = x_train / 255.0, x_test / 255.0

    # Collect feature size info
    imgSize0 = len(x_train[0])
    imgSize1 = len(x_train[0][0])
    numPixels = imgSize0 * imgSize1
    featureShape = (1, imgSize0, imgSize1)

    return x_train, y_train, x_test, y_test, featureShape


def get_cifar10_dataset(input_h, input_w, input_c):
    # Get CIFAR10 dataset
    cifar10 = keras.datasets.cifar10

    # Load its data into training and test vectors
    (x_train, y_train), (x_test, y_test) = cifar10.load_data()

    # Reshape
    numTrainImages = len(x_train)
    x_train = x_train.reshape(numTrainImages, input_h, input_w, input_c)
    numTestImages = len(x_test)
    x_test = x_test.reshape(numTestImages, input_h, input_w, input_c)

    # Normalize the data
    x_train, x_test = x_train / 255.0, x_test / 255.0

    # Collect feature size info
    imgSize0 = len(x_train[0])
    imgSize1 = len(x_train[0][0])
    numPixels = imgSize0 * imgSize1
    featureShape = (1, imgSize0, imgSize1)

    return x_train, y_train, x_test, y_test, featureShape


def build(featureShape, filter_channel, filter_dimension, stride_h, stride_w, input_h, input_w, input_c,
          n_conv_layers, n_dense_neuron):
    # Clearup everything before running
    keras.backend.clear_session()

    # Create model
    model = keras.models.Sequential()

    # Add layers
    model.add(
        keras.layers.Conv2D(
            filter_channel[0],
            (filter_dimension[0], filter_dimension[0]),
            strides=(stride_h[0], stride_w[0]),
            activation='relu',
            input_shape=(input_h, input_w, input_c)
        )
    )

    for i in range(1, n_conv_layers):
        model.add(
            keras.layers.Conv2D(
                filter_channel[i],
                (filter_dimension[i], filter_dimension[i]),
                strides=(stride_h[i], stride_w[i]),
                activation='relu'
            )
        )

    model.add(keras.layers.Flatten())
    model.add(keras.layers.Dense(n_dense_neuron, activation='softmax'))

    # Build model and #print summary
    model.build(input_shape=featureShape)

    # Compile model
    model.compile(optimizer='adam', loss='sparse_categorical_crossentropy', metrics=['accuracy'])

    return model


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

import argparse
import os

from tensorflow import keras

from lib import generate_files
from lib import util


def main():
    # User inputs (ex: 2.0 16 syst2d ws 2 0)
    parser = argparse.ArgumentParser(
        usage='use "python %(prog)s --help" for more information.\n'
    )
    parser.add_argument("--clk_period", "-c", default=2.0, type=float, help="Clock period")
    parser.add_argument("--input_size", "-i", default=16, type=int, help="Input size")
    parser.add_argument("--array_type", "-a", default='syst2d', type=str, help="Array Type")
    parser.add_argument("--dataflow_type", "-d", default='ws', type=str, help="Dataflow Type")
    parser.add_argument("--layer", "-l", default=0, type=int, help="Layer")
    parser.add_argument("--lat", "-t", default=2, type=int, help="Lat")
    args = parser.parse_args()

    clk_period = args.clk_period
    input_size = args.input_size
    array_type = args.array_type
    dataflow_type = args.dataflow_type
    layer = args.layer
    lat = args.lat

    # HW Inputs
    mem_size = 16
    carry_size = 4
    in_delay = 0.3

    # CNN Inputs

    filter_channel = [16, 32, 64, 128]
    # filter_channel   = [32,64,128,512]
    filter_dimension = [3, 3, 3, 3]
    stride_h = [2, 2, 2, 2]
    stride_w = [2, 2, 2, 2]
    n_epochs = 5

    # Application parameters
    input_w = 32
    input_h = 32
    input_c = 3
    n_dense_neuron = 10
    shift_bits = input_size / 2

    # Compute number of convolutional layers
    n_conv_layers = len(filter_channel)

    # Get application dataset
    x_train, y_train, x_test, y_test, feature_shape = util.get_cifar10_dataset(input_h, input_w, input_c)

    data_dir = "data"
    if not os.path.exists(data_dir):
        os.makedirs(data_dir)

    # Build CNN application
    if not (os.path.exists("./data/model")):
        model = util.build(
            feature_shape, filter_channel, filter_dimension, stride_h, stride_w, input_h,
            input_w, input_c, n_conv_layers, n_dense_neuron
        )
        model.fit(x_train, y_train, epochs=n_epochs)
        # Save model
        model.save('./data/model')
        model.save_weights('./data/weights')
    else:
        model = keras.models.load_model("./data/model")
        model.summary()

    # Accuracy
    test_set_size = 10000
    test_loss, test_acc = model.evaluate(x_test[0:test_set_size], y_test[0:test_set_size], verbose=2)

    # Compute input size
    input_size = util.get_input_size(input_h, input_w, input_c)

    # Compute output layer dimensions
    layer_dimension = util.get_output_layer_dimension(input_h, n_conv_layers, filter_dimension, stride_h)

    # Compute HW parameters
    if layer == 0:
        x_size = input_w
        c_size = input_c
    else:
        x_size = layer_dimension[layer - 1]
        c_size = filter_channel[layer - 1]
    filter_width = filter_dimension[layer]
    conv_per_line = layer_dimension[layer]

    # Compute input channels
    input_channel = util.get_input_channel(input_c, n_conv_layers, filter_channel)

    # Generate dictionary
    model_dict = generate_files.create_dictionary(model)

    # Adjust shift
    shift = 2 ** shift_bits

    # Generate generic file for rtl simulation
    generate_files.generate_generic_file(
        x_size, c_size, filter_width, conv_per_line, mem_size, input_size, carry_size, clk_period,
        stride_h[layer], filter_channel[layer], dataflow_type, lat, shift_bits, in_delay
    )

    # Generate TCL file with generics for logic synthesis
    generate_files.generate_tcl_generic(
        x_size, c_size, filter_width, conv_per_line, mem_size, input_size, carry_size, clk_period,
        dataflow_type, array_type, stride_h[layer], filter_channel[layer], lat, shift_bits, layer
    )

    # Generate VHDL tensorflow package
    generate_files.generate_tf_vhd_pkg(
        model_dict, shift, input_size, filter_dimension, filter_channel, layer_dimension,
        input_channel, x_test, y_test, stride_h, stride_w, 1, layer
    )

    # Generate VHDL gold output package
    generate_files.generate_gold_vhd_pkg(
        model_dict, shift, input_size, filter_dimension, filter_channel, layer_dimension,
        input_channel, x_test, y_test, stride_h, stride_w, 1, layer
    )


if __name__ == '__main__':
    main()

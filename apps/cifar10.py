import os
import json
import argparse

from tensorflow import keras

from lib import util
from lib import generate_files


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
    parser.add_argument("--multi", "-m", default=0, type=int, help="Multi layer")
    parser.add_argument("--lat", "-t", default=2, type=int, help="Lat")
    args = parser.parse_args()

    CLK_PERIOD = args.clk_period
    INPUT_SIZE = args.input_size
    ARRAY_TYPE = args.array_type
    DATAFLOW_TYPE = args.dataflow_type
    LAYER = args.layer
    MULTI = args.multi
    LAT = args.lat

    # HW Inputs
    MEM_SIZE = 16
    CARRY_SIZE = 4
    IN_DELAY = 0.3

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
    shift_bits = INPUT_SIZE / 2
    # Adjust shift
    shift = 2 ** shift_bits

    # Compute number of convolutional layers
    n_conv_layers = len(filter_channel)

    # Get application dataset
    x_train, y_train, x_test, y_test, featureShape = util.get_cifar10_dataset(input_h, input_w, input_c)

    data_dir = "data"
    if not os.path.exists(data_dir):
        os.makedirs(data_dir)

    # Build CNN application
    if not (os.path.exists("./data/model")):
        model = util.build(
            featureShape, filter_channel, filter_dimension, stride_h, stride_w, input_h,
            input_w, input_c, n_conv_layers, n_dense_neuron
        )
        model.fit(x_train, y_train, epochs=n_epochs)
        # Save model
        model.save('./data/model')
        # Accuracy
    else:
        model = keras.models.load_model("./data/model")
        model.summary()

    # test_set_size = 10000
    # test_loss, test_acc = model.evaluate(x_test[0:test_set_size], y_test[0:test_set_size], verbose=2)
    # Compute input size
    input_size = util.get_input_size(input_h, input_w, input_c)

    # Compute output layer dimensions
    layer_dimension = util.get_output_layer_dimension(input_h, n_conv_layers, filter_dimension, stride_h)

    # Generate dictionary
    modelDict = generate_files.create_dictionary(model)

    generic_dict = {
        "MEM_SIZE": MEM_SIZE,
        "INPUT_SIZE": INPUT_SIZE,
        "CARRY_SIZE": CARRY_SIZE,
        "CLK_PERIOD": CLK_PERIOD,
        "STRIDE": stride_h[LAYER],
        "N_FILTER": filter_channel[LAYER],
        "DATAFLOW_TYPE": DATAFLOW_TYPE,
        "LAT": LAT,
        "SHIFT": int(shift_bits),
        "IN_DELAY": IN_DELAY,
        "ARRAY_TYPE": ARRAY_TYPE,
        "LAYER": LAYER
    }

    vhd_dict = {
        "modelDict": modelDict,
        "shift": shift,
        "input_size": input_size,
        "filter_dimension": filter_dimension,
        "filter_channel": filter_channel,
        "layer_dimension": layer_dimension,
        "testSet": x_test,
        "testLabel": y_test,
        "stride_h": stride_h,
        "stride_w": stride_w,
        "testSetSize": 1,
        "layer":  LAYER
    }

    # Compute input channels
    input_channel = util.get_input_channel(input_c, n_conv_layers, vhd_dict["filter_channel"])

    # Compute HW parameters
    if LAYER == 0:
        X_SIZE = input_w
        C_SIZE = input_c
    else:
        X_SIZE = vhd_dict["layer_dimension"][generic_dict["LAYER"] - 1]
        C_SIZE = vhd_dict["filter_channel"][generic_dict["LAYER"] - 1]
    FILTER_WIDTH = vhd_dict["filter_dimension"][generic_dict["LAYER"]]
    CONVS_PER_LINE = vhd_dict["layer_dimension"][generic_dict["LAYER"]]

    generic_dict2 = {
        "X_SIZE": X_SIZE,
        "C_SIZE": C_SIZE,
        "FILTER_WIDTH": FILTER_WIDTH,
        "CONVS_PER_LINE": CONVS_PER_LINE,
    }

    generate_generic_dict = {** generic_dict, **generic_dict2}

    generate_vhd = {** vhd_dict, "input_channel": input_channel}

    # Generate generic file for rtl simulation

    generate_files.generate_generic_file(generate_generic_dict)
    # Generate TCL file with generics for logic synthesis
    generate_files.generate_tcl_generic(generate_generic_dict)

    # Generate VHDL tensorflow package
    generate_files.generate_tf_vhd_pkg(**generate_vhd)

    # Generate VHDL gold output package
    generate_files.generate_gold_vhd_pkg(**generate_vhd)


if __name__ == '__main__':
    main()

import os
import pickle
import argparse
import datetime
from pathlib import Path

import numpy as np
# from scipy.io import savemat, loadmat
from lib import util
from lib.generate_files import generate_files, create_dictionary


def main():
    # User inputs (ex: 2.0 16 syst2d ws 2 0)

    parser = argparse.ArgumentParser(
        usage='use "python %(prog)s --help" for more information.\n'
    )
    parser.add_argument("--name", "-n", default="", type=str, help="Name of experiment")
    parser.add_argument("--clk_period", "-c", default=2.0, type=float, help="Clock period")
    parser.add_argument("--input_size", "-i", default=16, type=int, help="Input size")
    parser.add_argument("--array_type", "-a", default='syst2d', type=str, help="Array Type")
    parser.add_argument("--dataflow_type", "-d", default='ws', type=str, help="Dataflow Type")
    parser.add_argument("--layer", "-l", default=0, type=int, help="Layer")
    parser.add_argument("--lat", "-t", default=2, type=int, help="Lat")
    args = parser.parse_args()

    CLK_PERIOD = args.clk_period
    INPUT_SIZE = args.input_size
    ARRAY_TYPE = args.array_type
    DATAFLOW_TYPE = args.dataflow_type
    LAYER = args.layer
    LAT = args.lat
    # multi = args.multi
    name = args.name

    root = Path(__file__).parent
    now = datetime.datetime.now().now().strftime("%Y%m%d-%H%M")
    path = root / f"data/{name}" if name != "" else root / "data" / now

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

    data_dir = "data"
    if not os.path.exists(data_dir):
        os.makedirs(data_dir)

    # Build CNN application
    if not (os.path.exists(path / "model")):
        from tensorflow import keras
        from lib import tfutil
        # Get application dataset
        x_train, y_train, x_test, y_test, feature_shape = tfutil.get_cifar10_dataset(input_h, input_w, input_c)
        np.save(str(path / "x_test.npy"), x_test)
        np.save(str(path / "y_test.npy"), y_test)
        model = tfutil.build(
            feature_shape, filter_channel, filter_dimension, stride_h, stride_w, input_h,
            input_w, input_c, n_conv_layers, n_dense_neuron
        )
        model.fit(x_train, y_train, epochs=n_epochs)
        # Save model
        model.save(path / 'model')
        model_dict = create_dictionary(model)
        # savemat(path / "model.mat", {str(k): v for k, v in model_dict.items()})
        with open(path / 'model.pkl', 'wb') as output:
            # Pickle dictionary using protocol 0.
            pickle.dump(model_dict, output)

    if os.path.exists(path / "model.pkl"):
        # model_dict = {int(k): v for k, v in loadmat(str(path / "model.mat")).items() if k[0] != '_'}
        x_test = np.load(str(path / "x_test.npy"))
        y_test = np.load(str(path / "y_test.npy"))
        with open(path / 'model.pkl', "rb") as f:
            model_dict = pickle.load(f)
    else:
        from tensorflow import keras
        from lib import tfutil
        model = keras.models.load_model(path / "model")
        x_train, y_train, x_test, y_test, feature_shape = tfutil.get_cifar10_dataset(input_h, input_w, input_c)
        np.save(str(path / "x_test.npy"), x_test)
        np.save(str(path / "y_test.npy"), y_test)
        # Generate dictionary
        model_dict = create_dictionary(model)
        # savemat(path / "model.mat", {str(k): v for k, v in model_dict.items()})
        with open(path / 'model.pkl', 'wb') as f:
            # Pickle dictionary using protocol 0.
            pickle.dump(model_dict, f)

    # test_set_size = 10000
    # test_loss, test_acc = model.evaluate(x_test[0:test_set_size], y_test[0:test_set_size], verbose=2)
    # Compute input size
    input_size = util.get_input_size(input_h, input_w, input_c)

    # Compute output layer dimensions
    layer_dimension = util.get_output_layer_dimension(input_h, n_conv_layers, filter_dimension, stride_h)

    generic_dict = {
        "MEM_SIZE": MEM_SIZE,
        "INPUT_SIZE": INPUT_SIZE,
        "CARRY_SIZE": CARRY_SIZE,
        "CLK_PERIOD": CLK_PERIOD,
        "STRIDE": stride_h,
        "N_FILTER": filter_channel,
        "DATAFLOW_TYPE": DATAFLOW_TYPE,
        "LAT": LAT,
        "SHIFT": int(shift_bits),
        "IN_DELAY": IN_DELAY,
        "ARRAY_TYPE": ARRAY_TYPE,
    }

    vhd_dict = {
        "modelDict": model_dict,
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
    }

    # Compute input channels
    input_channel = util.get_input_channel(input_c, n_conv_layers, vhd_dict["filter_channel"])
    for e, _ in enumerate(filter_channel):
        generate_files(input_c, input_w, input_channel, generic_dict, vhd_dict, e, path / str(e))


if __name__ == '__main__':
    main()

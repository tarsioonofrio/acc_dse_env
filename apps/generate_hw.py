import os
import json
import pickle
import argparse
import datetime
from pathlib import Path

# from scipy.io import savemat, loadmat
from lib import util, keras_cifar10
from lib.generate_files import generate_files, create_dictionary


def main():
    parser = argparse.ArgumentParser(
        usage='use "python %(prog)s --help" for more information.\n'
    )
    parser.add_argument("--config_nn", "-n", type=str, help="Name of neural network config file in config_nn")
    parser.add_argument("--config_hw", "-w", type=str, help="Name of hardware config file in config_hw")
    args = parser.parse_args()

    config_nn_name = args.config_nn
    config_hw_name = args.config_hw

    root = Path(__file__).parent.resolve()
    file_nn = root / "config_nn" / f"{config_nn_name}.json"
    file_hw = root / "config_hw" / f"{config_hw_name}.json"
    wght_path = root / f"data_nn/{config_nn_name}"
    path = root / "data_hw" / f"{config_nn_name}_{config_hw_name}"

    path.mkdir(parents=True, exist_ok=True)

    with open(file_nn) as f:
        config_nn = json.load(f)

    with open(file_hw) as f:
        config_hw = json.load(f)

    shift_bits = config_hw["INPUT_SIZE"] / 2
    # Adjust shift
    shift = 2 ** shift_bits

    # Compute number of convolutional layers
    n_conv_layers = len(config_nn["filter_channel"])

    if os.path.exists(wght_path / "weights.pkl"):
        # model_dict = {int(k): v for k, v in loadmat(str(path / "model.mat")).items() if k[0] != '_'}
        with open(wght_path / 'weights.pkl', "rb") as f:
            model_dict = pickle.load(f)
    else:
        from tensorflow import keras
        from lib import keras_models
        model = keras.models.load_model(wght_path / "weights")
        # Generate dictionary
        model_dict = create_dictionary(model)
        # savemat(path / "model.mat", {str(k): v for k, v in model_dict.items()})
        with open(wght_path / 'weights.pkl', 'wb') as f:
            # Pickle dictionary using protocol 0.
            pickle.dump(model_dict, f)

    (x_train, y_train), (x_test, y_test) = keras_cifar10.load_data()
    input_size = util.get_input_size(config_nn["input_h"], config_nn["input_w"], config_nn["input_c"])

    # Compute output layer dimensions
    layer_dimension = util.get_output_layer_dimension(
        config_nn["input_h"], n_conv_layers, config_nn["filter_dimension"], config_nn["stride_h"]
    )

    generic_dict = {
        "MEM_SIZE": config_hw["MEM_SIZE"],
        "INPUT_SIZE": config_hw["INPUT_SIZE"],
        "CARRY_SIZE": config_hw["CARRY_SIZE"],
        "CLK_PERIOD": config_hw["CLK_PERIOD"],
        "STRIDE": config_nn["stride_h"],
        "N_FILTER": config_nn["filter_channel"],
        "DATAFLOW_TYPE": config_hw["DATAFLOW_TYPE"],
        "LAT": config_hw["LAT"],
        "SHIFT": int(shift_bits),
        "IN_DELAY": config_hw["IN_DELAY"],
        "ARRAY_TYPE": config_hw["ARRAY_TYPE"],
    }

    vhd_dict = {
        "modelDict": model_dict,
        "shift": shift,
        "input_size": input_size,
        "filter_dimension": config_nn["filter_dimension"],
        "filter_channel": config_nn["filter_channel"],
        "layer_dimension": layer_dimension,
        "testSet": x_test,
        "testLabel": y_test,
        "stride_h": config_nn["stride_h"],
        "stride_w": config_nn["stride_w"],
        "testSetSize": 1,
    }

    # Compute input channels
    input_channel = util.get_input_channel(config_nn["input_c"], n_conv_layers, vhd_dict["filter_channel"])
    for e, _ in enumerate(config_nn["filter_channel"]):
        generate_files(
            config_nn["input_c"], config_nn["input_w"], input_channel, generic_dict, vhd_dict, e, path / str(e)
        )


if __name__ == '__main__':
    main()

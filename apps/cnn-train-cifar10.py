import json
import pickle
import argparse
from pathlib import Path

from tensorflow import keras
from lib import keras_models
from lib.model import dictionary_from_model


def main():
    parser = argparse.ArgumentParser(
        usage='use "python %(prog)s --help" for more information.\n'
    )
    parser.add_argument("--cnn_config", "-c", type=str, help="Name of neural network config file in nn_config")
    args = parser.parse_args()

    root = Path(__file__).parent.resolve()
    config_path = root / "cnn_config" / f"{args.cnn_config}.json"
    output_path = root / "cnn_output" / args.cnn_config

    output_path.mkdir(parents=True, exist_ok=True)

    with open(config_path) as f:
        cnn_config = json.load(f)

    # Build CNN application
    # Get application dataset
    (x_train_int, y_train), (x_test_int, y_test) = keras.datasets.cifar10.load_data()
    x_train = x_train_int / 255.0
    x_test = x_test_int / 255.0

    config_dataset = {
        "input_w": 32,
        "input_h": 32,
        "input_c": 3,
        "classes": 10,
    }

    model = keras_models.default(cnn_config, config_dataset)

    model.fit(x_train, y_train, epochs=cnn_config["n_epochs"])
    # Save model
    model.save(output_path / 'weights')
    model_dict = dictionary_from_model(model)
    # savemat(path / "model.mat", {str(k): v for k, v in model_dict.items()})
    with open(output_path / 'weights.pkl', 'wb') as output:
        # Pickle dictionary using protocol 0.
        pickle.dump(model_dict, output)

    model.evaluate(x_test, y_test, verbose=2)


if __name__ == '__main__':
    main()

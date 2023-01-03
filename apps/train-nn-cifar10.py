import json
import pickle
import argparse
from pathlib import Path

from tensorflow import keras
from lib import keras_models
from lib.generate_files import create_dictionary


def main():
    parser = argparse.ArgumentParser(
        usage='use "python %(prog)s --help" for more information.\n'
    )
    parser.add_argument("--config_nn", "-n", type=str, help="Name of neural network config file in config_nn")
    args = parser.parse_args()

    config_nn_name = args.config_nn

    root = Path(__file__).parent.resolve()
    file = root / "config_nn" / f"{config_nn_name}.json"
    path = root / "data_nn" / config_nn_name

    path.mkdir(parents=True, exist_ok=True)

    with open(file) as f:
        config_nn = json.load(f)

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

    model = keras_models.default(config_nn, config_dataset)

    model.fit(x_train, y_train, epochs=config_nn["n_epochs"])
    # Save model
    model.save(path / 'weights')
    model_dict = create_dictionary(model)
    # savemat(path / "model.mat", {str(k): v for k, v in model_dict.items()})
    with open(path / 'weights.pkl', 'wb') as output:
        # Pickle dictionary using protocol 0.
        pickle.dump(model_dict, output)

    model.evaluate(x_test, y_test, verbose=2)


if __name__ == '__main__':
    main()

import os
import json
import pickle
import argparse
from pathlib import Path

# os.environ["CUDA_VISIBLE_DEVICES"] = "-1"

from tensorflow import keras
from sklearn.model_selection import train_test_split
from tensorflow.keras.preprocessing.image import ImageDataGenerator

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
    # x_train, x_val, y_train, y_val = train_test_split(x_train, y_train, test_size=0.3)
    y_train = keras.utils.to_categorical(y_train, 10)
    # y_val = keras.utils.to_categorical(y_val, 10)
    y_test = keras.utils.to_categorical(y_test, 10)
    config_dataset = {
        "input_w": 32,
        "input_h": 32,
        "input_c": 3,
        "classes": 10,
    }
    km = vars(keras_models)
    model = km[cnn_config["name"]](cnn_config, config_dataset)

    # datagen = ImageDataGenerator(
    #     rotation_range=15,
    #     horizontal_flip=True,
    #     width_shift_range=0.1,
    #     height_shift_range=0.1
    #     # zoom_range=0.3
    # )
    callback = keras.callbacks.EarlyStopping(monitor='accuracy', patience=10)
    # model.fit(
    #     datagen.flow(x_train, y_train), validation_data=datagen.flow(x_val, y_val),
    #     epochs=cnn_config["n_epochs"], callbacks=[callback],
    #     batch_size=64
    # )
    model.fit(
        x_train, y_train, epochs=cnn_config["n_epochs"], callbacks=[callback], validation_split=0.3, batch_size=64
    )
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

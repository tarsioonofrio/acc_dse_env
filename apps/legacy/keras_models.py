from tensorflow import keras


def default(config_model, config_data):
    # Clearup everything before running
    keras.backend.clear_session()

    # Create model
    model = keras.models.Sequential()

    # Add layers
    model.add(
        keras.layers.Conv2D(
            config_model["filter_channel"][0],
            (config_model["filter_dimension"][0], config_model["filter_dimension"][0]),
            strides=(config_model["stride_h"][0], config_model["stride_w"][0]),
            activation='relu',
            input_shape=(config_data["input_h"], config_data["input_w"], config_data["input_c"])
        )
    )

    for i in range(1, len(config_model["filter_channel"])):
        model.add(
            keras.layers.Conv2D(
                config_model["filter_channel"][i],
                (config_model["filter_dimension"][i], config_model["filter_dimension"][i]),
                strides=(config_model["stride_h"][i], config_model["stride_w"][i]),
                activation='relu'
            )
        )

    model.add(keras.layers.Flatten())
    model.add(keras.layers.Dense(config_data["classes"], activation='softmax'))

    # Build model and #print summary
    model.build()
    model.summary()

    # Compile model
    model.compile(optimizer='adam', loss='categorical_crossentropy', metrics=['accuracy'])

    return model


def pool(config_model, config_data):
    # Clearup everything before running
    keras.backend.clear_session()

    # Create model
    model = keras.models.Sequential()

    # Add layers
    model.add(
        keras.layers.Conv2D(
            config_model["filter_channel"][0],
            (config_model["filter_dimension"][0], config_model["filter_dimension"][0]),
            strides=(config_model["stride_h"][0], config_model["stride_w"][0]),
            activation='relu',
            input_shape=(config_data["input_h"], config_data["input_w"], config_data["input_c"])
        )
    )

    for i in range(1, len(config_model["filter_channel"])):
        model.add(
            keras.layers.Conv2D(
                config_model["filter_channel"][i],
                (config_model["filter_dimension"][i], config_model["filter_dimension"][i]),
                strides=(config_model["stride_h"][i], config_model["stride_w"][i]),
                activation='relu'
            )
        )
        # model.add(keras.layers.MaxPooling2D((2, 2), strides=(2, 2)))

    model.add(keras.layers.MaxPooling2D(pool_size=(3, 3), strides=(3, 3), padding='same'))
    model.add(keras.layers.Flatten())
    model.add(keras.layers.Dense(config_data["classes"], activation='softmax'))

    # Build model and #print summary
    model.build()
    model.summary()

    # Compile model
    model.compile(optimizer='adam', loss='sparse_categorical_crossentropy', metrics=['accuracy'])

    return model

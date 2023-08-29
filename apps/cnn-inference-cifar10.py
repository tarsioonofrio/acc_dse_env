import time
import argparse
from pathlib import Path

import numpy as np
import pandas as pd
import tensorflow as tf
from tensorflow import keras

if tf.test.is_gpu_available():
    device = 'gpu'
else:
    device = 'cpu'

# Get CIFAR10 dataset
cifar10 = keras.datasets.cifar10
# Load its data into training and sim_coroutine vectors
(_, _), (x_test, _) = cifar10.load_data()
# Reshape
x_test = x_test.reshape(-1, 32, 32, 3)
# Normalize the data
x_test = x_test / 255.0

root = Path(__file__).parent.parent.resolve() / 'experiments'
cnn_output_path = root / 'cnn_output'
all_paths = cnn_output_path.glob('**/weights')

benchmark1 = {}
benchmark10 = {}
# benchmark100 = {}
for path in cnn_output_path.glob('**/weights'):
    # Clearup everything before running
    keras.backend.clear_session()
    model = keras.models.load_model(path)
    model.summary()

    name = path.parent.name
    benchmark1[name] = []
    benchmark10[name] = []
    # benchmark100[name] = []

    # warmup
    for i in range(1, 10):
        model.predict(np.expand_dims(x_test[i], axis=0))

    for i in range(1, 10):
        start = time.time_ns()
        model.predict(np.expand_dims(x_test[i], axis=0), batch_size=10)
        end = time.time_ns()
        benchmark1[name].append(end - start)

    for i in range(1, 10):
        start = time.time_ns()
        model.predict(x_test[:10], batch_size=10)
        end = time.time_ns()
        benchmark10[name].append(end - start)

    # for i in range(1, 10):
    #     start = time.time_ns()
    #     model.predict(x_test[:100], batch_size=100)
    #     end = time.time_ns()
    #     benchmark100[name].append(end - start)

df1 = pd.DataFrame.from_dict(benchmark1).mean()
df10 = pd.DataFrame.from_dict(benchmark10).mean() / 10
# df100 = pd.DataFrame.from_dict(benchmark100).mean() / 100

m1 = pd.merge(df1.rename('batch1'), df10.rename('batch10'), left_index=True, right_index=True)
# m = pd.merge(m1, df100.rename('batch100'), left_index=True, right_index=True)
m1.to_csv(root.parent / f"test/report/{device}.csv")

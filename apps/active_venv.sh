#!/bin/bash

# Clean environment
./clean.sh
rm -rf venv

# Active virtual environment
python3 -m venv --system-site-packages ./venv
source ./venv/bin/activate

# Python3 dependencies
pip3 install --upgrade pip
pip3 install --upgrade tensorflow
pip3 install pillow
pip3 install tensorflow_datasets
pip3 install scikit-image
pip3 install six


#!/bin/bash

# Clean environment
./clean.sh

# Run application
source ./venv/bin/activate
python3 ${1}.py ${2} ${3} ${4} ${5} ${6} ${7}


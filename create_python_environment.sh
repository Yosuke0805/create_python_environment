#!/bin/bash

# create virtual environment
python3 -m venv "$1"

# activate virtual environment
source "$1"/Scripts/activate

# install Jupyter Lab
pip install jupyterlab

echo "Complete creating python virtual environment!!"

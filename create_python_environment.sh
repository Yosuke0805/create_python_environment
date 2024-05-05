#!/bin/bash

# install cmder
winget install --id Git.Git -e --source winget

# update apt-get
sudo apt-get update

# install packages
sudo apt-get install -y software-properties-common apt-transport-https wget

# add Microsoft GPG Key
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

# add Visual Studio Code repository
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

# install Visual Studio Code
sudo apt-get install -y code

# install python
apt install -y python3 python3-pip python3-venv

# create virtual environment
python3 -m venv "$1"

# activate virtual environment
source "$1"/bin/activate

# install Jupyter Lab
pip install jupyterlab

echo "Complete creating python environment!!"

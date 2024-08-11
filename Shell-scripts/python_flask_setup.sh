#!/bin/bash

# Move to the target directory
cd $DEF_APP_TOP/server/flask/procg || { echo "Directory not found"; exit 1; }

# Ubuntu-based systems
sudo apt install python3.11 -y

# Check the installed Python version
python3.11 --version

# Install pip for Python 3.11
curl -O https://bootstrap.pypa.io/get-pip.py
python3.11 get-pip.py

# Check pip version
python3.11 -m pip --version

# Install virtualenv for Ubuntu
sudo apt install python3.11-venv -y

# Create a virtual environment
python3.11 -m venv procg_venv

# Activate the virtual environment
source procg_venv/bin/activate

# Upgrade pip
pip install --upgrade pip

# Install the required Python libraries
pip install flask sqlalchemy flask_sqlalchemy psycopg2-binary flask_jwt_extended flask_cors requests gunicorn

echo "Setup complete. The virtual environment 'procg_venv' is activated."

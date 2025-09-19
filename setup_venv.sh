#!/bin/bash
# Alternative setup script using Python venv instead of conda
# This script creates a virtual environment and installs all necessary packages

set -e

echo "Creating Python virtual environment..."
python -m venv dream_env

echo "Activating virtual environment..."
source dream_env/Scripts/activate

echo "Upgrading pip..."
pip install --upgrade pip

echo "Installing packages..."
pip install numpy matplotlib tqdm scikit-image
pip install accelerate
pip install clip-retrieval webdataset clip pandas matplotlib ftfy regex kornia umap-learn
pip install dalle2-pytorch
pip install torchvision==0.15.2 torch==2.0.1
pip install diffusers==0.13.0
pip install info-nce-pytorch==0.1.0
pip install pytorch-msssim

echo "Setup complete!"
echo "To activate the environment in the future, run: source dream_env/Scripts/activate"
echo "To deactivate, run: deactivate"
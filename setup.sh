#! /bin/bash

echo "Create a conda virtual environment."
conda create -n MPOCSR python=3.7 -y && \
conda activate MPOCSR && \
echo "Install dependencies" && \
conda install pytorch==1.7.1 torchvision==0.8.2 cudatoolkit=10.1 -c pytorch && \
pip install -r requirements.txt

if [ $? -eq 0 ]; then
    echo "Setup completed successfully."
else
    echo "Setup failed. Please check the error messages."
fi
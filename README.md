# MPOCSR

#### Image

The datasets are available in SMILES format to generate images.

Download from https://www.kaggle.com/datasets/buildxz/dataset-label (200wan.csv)

User cdk/src/main/java/GenerateBatchimage to generate the images (in dataset folder)

User Binary_images to generate binary images

Saving binary images to "Data/PNG/"

#### Label

Download from: https://www.kaggle.com/datasets/buildxz/dataset-label

The directory Data should look like:

```
Data
├── PNG
├── 200wan_shuffle_test.pkl
├── 200wan_shuffle_train.pkl
├── 200wan_shuffle_val.pkl
├── 200w_word_map.pth
├── 200w_word_freq_train.pth
├── 200w_word_freq_train.pth
```

#### Checkpoint

download form: https://www.kaggle.com/datasets/buildxz/models

#### Environment 

1. Create a conda virtual environment and activate it

```
conda create -n <envName> python=3.7 -y
conda activate <envName> 
```

2. Install dependencies

```
conda install pytorch==1.7.1 torchvision==0.8.2 cudatoolkit=10.1 -c pytorch
pip install -r requirements.txt
```

#### Train model

```
cd model/MPViT
CUDA_VISIBLE_DEVICES="0" python -m torch.distributed.launch --nproc_per_node 1 --master_port 29500 main.py   --resume <checkpoint-file> 
```

#### Eval model

```
cd model/MPViT
CUDA_VISIBLE_DEVICES="0" python -m torch.distributed.launch --nproc_per_node 1 --master_port 29500 main.py --eval  --resume <checkpoint-file> --test_dir <label-file>
```


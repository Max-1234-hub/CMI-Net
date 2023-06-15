## CMI-Net

This repository is an official PyTorch implementation of the paper "Cross-Modality Interaction Network for Equine Activity Recognition Using Imbalanced Multi-Modal Data", Sensors, 2021.(https://www.mdpi.com/1424-8220/21/17/5818)

## Requirements

This is my experiment environment
- python3.7
- pytorch+cuda10.2

## Details
### 1. dataset
I used a public dataset (i.e., data from six equines and activities) that are avaliable at
https://doi.org/10.4121/uuid:2e08745c-4178-4183-8551-f248c992cb14. 
The reference is (Kamminga, J. W., Janßen, L. M., Meratnia, N., & Havinga, P. J. (2019). Horsing Around—A Dataset Comprising Horse Movement. Data, 4(4), 131.).

Data used:
"MyTensor_1/2/3/4/5/6.pt" files contain the standardized data that would be inputs in our model. Each "_.pt" file includes all data from six equines and these data are divided into training, validation, and testing data circularly according to six-fold cross-validation.

### 2. train the model
Just choose "canet" that I created. And all of the training, validation, and testing processes can be operated in train.py.
The train.py can achieve the training of CMI-Net and CMI-Net + CB focal loss. 

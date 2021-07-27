## Requirements

This is my experiment eviroument
- python3.7
- pytorch+cuda10.2


### 1. dataset
I used a public dataset (i.e., data from six equines and activities) that are avaliable at
https://doi.org/10.4121/uuid:2e08745c-4178-4183-8551-f248c992cb14. The reference is (Kamminga, J. W., Janßen, L. M., Meratnia, N., & Havinga, P. J. (2019). Horsing Around—A Dataset Comprising Horse Movement. Data, 4(4), 131.).

##Data used:
The data in Equine_AR contained six files, and each file includes all data from six equines and these data are divided into training, validation, and testing data circularly according to six-fold cross-validation.

### 2. train the model
Just choose "canet" that I created. And all of the training, validation, and testing processes can be operated in train.py.
The train.py can achieve the training of CMI-Net and CMI-Net + CB focal loss. 


### 3. results
The detailed results are saved in checkpoint fold.
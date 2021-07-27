""" train and test dataset

author axiumao
"""

import torch
from torch.utils.data import Dataset
   
class My_Dataset(Dataset):

    def __init__(self, pathway, data_id, transform=None):
        X_train, X_valid, X_test, Y_train, Y_valid, Y_test = torch.load(pathway)
        if data_id == 0:
            self.data, self.labels = X_train, Y_train
        elif data_id == 1:
            self.data, self.labels = X_valid, Y_valid
        else:
            self.data, self.labels = X_test, Y_test
        # self.data, self.labels = Data_Segm_random(df_data, n_persegm=40)
        #if transform is given, we transoform data using
        self.transform = transform

    def __len__(self):
        return len(self.data)

    def __getitem__(self, index):
        label = self.labels[index]  #torch.size: [1]
        image = self.data[index] #troch.size: [1,200,6]
        
        if self.transform:
            image = self.transform(image)

        return image, label

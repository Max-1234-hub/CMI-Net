#!/bin/bash
#SBATCH -J training
#SBATCH --gres=gpu:1
#SBATCH --partition=gpu_1d2g
#SBATCH -c 2
#SBATCH -N 1

echo "Submitted from:"$SLURM_SUBMIT_DIR" on node:"$SLURM_SUBMIT_HOST
echo "Running on node "$SLURM_JOB_NODELIST 
echo "Allocate Gpu Units:"$CUDA_VISIBLE_DEVICES

#source /home/senmaoye/.bashrc

#cd jay/multitask

#conda activate torch

nvidia-smi

python train.py --epoch 100 --seed 10 --b 256 --lr 0.0001 --weight_d 0.1 --gamma 0.5 --beta 0.9999 --gpu 1 --data_path '/home/axmao2/data/equine/myTensor_1.pt' --save_path 'setting110'
python train.py --epoch 100 --seed 10 --b 256 --lr 0.0001 --weight_d 0.1 --gamma 0.5 --beta 0.9999 --gpu 1 --data_path '/home/axmao2/data/equine/myTensor_2.pt' --save_path 'setting210'
python train.py --epoch 100 --seed 10 --b 256 --lr 0.0001 --weight_d 0.1 --gamma 0.5 --beta 0.9999 --gpu 1 --data_path '/home/axmao2/data/equine/myTensor_3.pt' --save_path 'setting310'
python train.py --epoch 100 --seed 10 --b 256 --lr 0.0001 --weight_d 0.1 --gamma 0.5 --beta 0.9999 --gpu 1 --data_path '/home/axmao2/data/equine/myTensor_4.pt' --save_path 'setting410'
python train.py --epoch 100 --seed 10 --b 256 --lr 0.0001 --weight_d 0.1 --gamma 0.5 --beta 0.9999 --gpu 1 --data_path '/home/axmao2/data/equine/myTensor_5.pt' --save_path 'setting510'
python train.py --epoch 100 --seed 10 --b 256 --lr 0.0001 --weight_d 0.1 --gamma 0.5 --beta 0.9999 --gpu 1 --data_path '/home/axmao2/data/equine/myTensor_6.pt' --save_path 'setting610'

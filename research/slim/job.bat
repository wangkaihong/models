#!/bin/bash -l

#$ -P cs585
#$ -l h_rt=48:00:00
#$ -m ea
#$ -N fnf
#$ -j y
#$ -pe omp 8
#$ -o fnf_output.qlog
#$ -l gpus=4
#$ -l gpu_c=3.5
module load python/3.6.2
module load tensorflow/r1.10

TRAIN_DIR_RES=train_log_res_FNF/
DATASET_DIR=data/
CHECKPOINT_PATH_RES=checkpoint_res/resnet_v1_101.ckpt
python train_image_classifier.py    \
         --batch_size=32    \
         --train_dir=${TRAIN_DIR_RES}    \
         --dataset_dir=${DATASET_DIR}    \
         --dataset_name=FNF    \
         --dataset_split_name=train    \
         --model_name=resnet_v1_101   \
         --preprocessing=resnet_v1_101   \
         --learning_rate=0.01 \
         --optimizer=rmsprop \
         --checkpoint_path=${CHECKPOINT_PATH_RES}    \
         --checkpoint_exclude_scopes=resnet_v1_101/logits


#!/bin/sh

TRAIN_DIR_RES=train_log_res_FNF/
DATASET_DIR=data/
CHECKPOINT_PATH_RES=checkpoint_res/resnet_v1_101.ckpt

nohup python train_image_classifier.py    \
	 --batch_size=32    \
	 --train_dir=${TRAIN_DIR_RES}    \
	 --dataset_dir=${DATASET_DIR}    \
	 --dataset_name=FNF    \
	 --dataset_split_name=train    \
	 --model_name=resnet_v1_101   \
	 --preprocessing=resnet_v1_101   \
	 --learning_rate=0.001 \
	 --optimizer=adam \
	 --checkpoint_path=${CHECKPOINT_PATH_RES}    \
	 --checkpoint_exclude_scopes=resnet_v1_101/logits & 

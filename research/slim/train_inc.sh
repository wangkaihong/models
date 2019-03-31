#!/bin/sh

TRAIN_DIR=train_log/
DATASET_DIR=data/
nohup python train_image_classifier.py     --train_dir=${TRAIN_DIR}     --dataset_dir=${DATASET_DIR}     --dataset_name=food_101     --dataset_split_name=train     --model_name=inception_v3     --checkpoint_path=${CHECKPOINT_PATH}     --checkpoint_exclude_scopes=InceptionV3/Logits,InceptionV3/AuxLogits --trainable_scopes=InceptionV3/Logits,InceptionV3/AuxLogits --preprocessing_name=inception_v3 &

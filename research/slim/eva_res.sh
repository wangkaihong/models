#!/bin/sh

python eval_image_classifier.py \
    --alsologtostderr \
    --checkpoint_path=train_log_res/model.ckpt-34179 \
    --dataset_dir=data/ \
    --dataset_name=food_101 \
    --dataset_split_name=train \
    --model_name=resnet_v1_101

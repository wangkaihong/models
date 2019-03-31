#!/bin/sh

python eval_image_classifier.py \
    --alsologtostderr \
    --checkpoint_path=train_log_res_fnf/model.ckpt-142709 \
    --dataset_dir=data/ \
    --dataset_name=fnf \
    --dataset_split_name=train \
    --model_name=resnet_v1_101

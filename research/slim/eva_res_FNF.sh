#!/bin/sh

module load python/3.6.2
module load tensorflow/r1.10

python eval_image_classifier.py \
    --alsologtostderr \
    --checkpoint_path=train_log_res_FNF/model.ckpt-29078 \
    --dataset_dir=data/ \
    --dataset_name=FNF \
    --dataset_split_name=test \
    --model_name=resnet_v1_101

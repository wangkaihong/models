#!/bin/sh

python eval_image_classifier.py     --alsologtostderr     --checkpoint_path=train_log/model.ckpt-70983 --dataset_dir=data/ --dataset_name=food_101 --dataset_split_name=train     --model_name=inception_v3

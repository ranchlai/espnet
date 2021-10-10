#!/usr/bin/env bash


python -m  espnet2.bin.asr_train \
                --config ./conf/tuning/train_asr_conformer.yaml\
                --use_preprocessor true \
                --token_type  char\
                --token_list ./data/token.txt\
                --non_linguistic_symbols './data/token.txt' \
                --cleaner None \
                --g2p None \
                --train_data_path_and_name_and_type ./data/train_wav_scp.txt,speech,sound \
                --train_data_path_and_name_and_type ./data/train_txt_scp.txt,text,text \
                --train_shape_file ./data/train_wav_shape.txt \
                --train_shape_file ./data/train_txt_shape.txt \
                --resume true \
                --num_workers 4 \
                --num_workers 4 \
                --ngpu 1 \
                --normalize utterance_mvn\
                --output_dir ./outputs \
                --log_interval 20 \
                --valid_data_path_and_name_and_type ./data/train_wav_scp.txt,speech,sound \
                --valid_data_path_and_name_and_type ./data/train_txt_scp.txt,text,text \
                --valid_shape_file ./data/train_wav_shape.txt \
                --valid_shape_file ./data/train_txt_shape.txt \
                --num_iters_per_epoch 10000
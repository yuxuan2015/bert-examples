#!/bin/bash

export BERT_BASE_DIR=/data/NLP_projects/BERT/uncased_L-12_H-768_A-12
export GLUE_DIR=/data/NLP_projects/BERT/glue_data
export SQUAD_DIR=$GLUE_DIR/SQuAD

cd /data/NLP_projects/BERT/bert

python extract_features.py \
  --input_file=/data/NLP_projects/BERT/tmp/input.txt \
  --output_file=/data/NLP_projects/BERT/tmp/output1.json \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --layers=-1,-2,-3,-4 \
  --max_seq_length=128 \
  --batch_size=16

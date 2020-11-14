set -ex
# set nvida card visible
# Usage: nvidia-smi
export CUDA_VISIBLE_DEVICES=3

# set pytorch pretrained bert model
#  --cache_dir /Users/xuchuanhua/.pytorch_pretrained_bert \
if [ $# != 4 ] ; then
  echo "USAGE: sh $0 <dataset> <n> <eval_type> <train_data_sub_dir>"
  echo " e.g.: sh $0 sciEntsBank 2 ua A-origin"
  exit 1;
fi

TASK_NAME=SAS
DATASET=$1
N=$2
EVAL_TYPE=$3
TRAIN_DATA_DIR=traindata/$DATASET/$4
TEST_DATA_DIR=testdata/$DATASET
OUT_DIR=output/$DATASET
rm -rf $OUT_DIR/*

echo "start to run job of ${N}way $EVAL_TYPE $TRAIN_DATA_DIR $TEST_DATA_DIR"


# python3 code/model/run_classifier.py \
#   --task_name $TASK_NAME \
#   --do_train \
#   --do_eval \
#   --n $N \
#   --eval_type $EVAL_TYPE \
#   --do_lower_case \
#   --train_data_dir $TRAIN_DATA_DIR \
#   --test_data_dir $TEST_DATA_DIR \
#   --bert_model bert-base-uncased \
#   --max_seq_length 90 \
#   --train_batch_size 16 \
#   --learning_rate 2e-5 \
#   --num_train_epochs 3.0 \
#   --output_dir $OUT_DIR


python3 code/model/run_classifier.py \
  --cache_dir /Users/xuchuanhua/.pytorch_pretrained_bert \
  --task_name $TASK_NAME \
  --do_train \
  --do_eval \
  --n $N \
  --eval_type $EVAL_TYPE \
  --do_lower_case \
  --train_data_dir $TRAIN_DATA_DIR \
  --test_data_dir $TEST_DATA_DIR \
  --bert_model bert-base-uncased \
  --max_seq_length 90 \
  --train_batch_size 16 \
  --learning_rate 2e-5 \
  --num_train_epochs 3.0 \
  --output_dir $OUT_DIR

#!/bin/bash
WORK_DIR=$1.rawtmp

source ~/.bashrc
conda activate hicod
mkdir -p $WORK_DIR
echo "cuttlefish build -s $1 -o $WORK_DIR -f 0 -t $3 -k $2"
echo `date`
cuttlefish build -s $1 -o $WORK_DIR -f 0 -t $3 -k $2
echo `date`
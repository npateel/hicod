#!/bin/bash

# ./hisat-genome.sh <in.fa.gz> <outputfilebasename> <threads> <kmer len>
WORK_DIR=temp

source ~/.bashrc
conda activate hicod
ulimit -n 10000
echo "cuttlefish build -s $1 -o $WORK_DIR -f 0 -t $3 -k $4"
echo `date`
cuttlefish build -s $1 -o $WORK_DIR -f 0 -t $3 -k $4
echo `date`
echo `hisat-0.1.6-beta/hisat-build "${WORK_DIR}.fa" $2`
hisat-0.1.6-beta/hisat-build "${WORK_DIR}.fa" $2
echo `date`

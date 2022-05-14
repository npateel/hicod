#!/bin/bash

# ./hisat-genome.sh <in.fa.gz> <outputfilebasename> <threads> <kmer len>
# WORK_DIR=temp

source ~/.bashrc
conda activate hicod
ulimit -n 10000
echo `hisat-0.1.6-beta/hisat-build $1 $1.raw.hicod`
hisat-0.1.6-beta/hisat-build $1 $1.raw.hicod
echo `date`

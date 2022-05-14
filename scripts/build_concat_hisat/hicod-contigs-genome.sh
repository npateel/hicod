#!/bin/bash

# ./hisat-genome.sh <in.fa.gz> <outputfilebasename> <threads> <kmer len>
mkdir -p "$1_concat/work"
WORK_DIR="$1_concat/work"


source ~/.bashrc
#conda env create  -f requirements.yaml
conda activate hicod
ulimit -n 10000
echo `date`
echo "python3 concatenate_contigs.py '$1.unitigs.fa' '${WORK_DIR}/concatenate.fa' '${WORK_DIR}/pos.fa'"
python3 concatenate_contigs.py "$1.unitigs.fa" "${WORK_DIR}/concatenate.fa" "${WORK_DIR}/pos.fa"
echo "hisat-0.1.6-beta/hisat-build '${WORK_DIR}/concatenate.fa' $2"
mkdir -p "${WORK_DIR}/hisat"
hisat-0.1.6-beta/hisat-build "${WORK_DIR}/concatenate.fa" "${WORK_DIR}/hisat/$2"
echo `date`

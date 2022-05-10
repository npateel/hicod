#!/bin/bash

WORK_DIR=temp

ulimit -n 10000
cuttlefish build -s $1 -o $WORK_DIR -f 0 -t 24 -k 31

hisat-build "${WORK_DIR}.fa" $2

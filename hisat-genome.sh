#!/bin/bash

WORK_DIR=work

ulimit -n 10000
if [-z "$3"] 
then
	cuttlefish build -s $1 -o $WORK_DIR -f 0 -t 24; exit
else
	cuttlefish build -s $1 -o $WORK_DIR -f 0 -t 24 -k $3
fi

hisat-build "${WORK_DIR}.fa" $2

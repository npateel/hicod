#!/bin/sh

# Usage: cuddle-genome <genome file> <output filename (no suffix)> <kmer len>

ulimit -n 10000
if [-z "$3"] 
then
	cuttlefish build -s $1 -o $2 -f 0 -t 24; exit
fi

cuttlefish build -s $1 -o $2 -f 0 -t 24 -k $3



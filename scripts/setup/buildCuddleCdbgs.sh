#!/bin/sh

# Usage: cuddle-genome <genome file> <output filename (no suffix)> <kmer len>

# ulimit -n 10000
# cuttlefish build -s $1 -o $2 -f 0 -t $3 -k $4; exit


mkdir cuddlecdBG
./cuddle-genome.sh DNA_datasets/Homo_sapiens.GRCh38.dna.chromosome.13.fa.gz cuddlecdBG/Homo_sapiens.GRCh38.dna.chromosome.13.ga.gz 16 31
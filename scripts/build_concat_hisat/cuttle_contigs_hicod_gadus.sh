#!/bin/bash
mkdir -p logs
fname=Gadus_morhua.gadMor3.0.dna.toplevel.fa
echo "clear && /usr/bin/time -v ./hicod-genome.sh $fname ${fname}_concat.cuttlek31 16 31 > logs/hisat-genome_concat_$fname.cuttlet16k31 2>&1"
clear && /usr/bin/time -v ./hicod-contigs-genome.sh $fname "${fname}_concat.cuttlek31" 16 31 > logs/hisat-genome_concat_$fname.cuttlet16k31 2>&1

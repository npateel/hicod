#!/bin/bash
mkdir -p logs
fname=Homo_sapiens.GRCh38.dna.chromosome.13.fa.unitigs.fa
echo "/usr/bin/time -v ./hisat-build.sh $fname > logs/hisat-build_$fname.cuttlet16k31 2>&1"
clear && /usr/bin/time -v ./hisat-build.sh $fname > logs/hisat-build_$fname.cuttlet16k31 2>&1

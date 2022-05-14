#!/bin/bash
mkdir -p logs
fname=Homo_sapiens.GRCh38.dna.toplevel.fa.gz
echo "/usr/bin/time -v ./hisat-build.sh DNA_datasets/$fname > logs/hisat-build_$fname.cuttlet16k31 2>&1"
clear && /usr/bin/time -v ./hisat-build.sh DNA_datasets/$fname > logs/hisat-build_$fname.cuttlet16k31 2>&1

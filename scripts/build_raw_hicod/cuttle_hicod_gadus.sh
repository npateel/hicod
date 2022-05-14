#!/bin/bash
mkdir -p logs
fname=Gadus_morhua.gadMor3.0.dna.toplevel.fa.unitigs.fa
echo "/usr/bin/time -v ./hisat-build.sh $fname > logs/hisat-build_$fname.cuttlet16k31 2>&1"
clear && /usr/bin/time -v ./hisat-build.sh $fname > logs/hisat-build_$fname.cuttlet16k31 2>&1

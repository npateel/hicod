#!/bin/bash
mkdir -p logs
fname=Falco_tinnunculus.FalTin1.0.dna.toplevel.fa.unitigs.fa
echo "/usr/bin/time -v ./hisat-build.sh $fname > logs/hisat-build_$fname.cuttlet16k31 2>&1"
clear && /usr/bin/time -v ./hisat-build.sh $fname > logs/hisat-build_$fname.cuttlet16k31 2>&1

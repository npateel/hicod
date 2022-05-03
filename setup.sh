#!/bin/bash

# Setting up environment

conda env create -f requirements.yaml
conda activate hicod

wget -O hisat.zip http://ccb.jhu.edu/software/hisat/downloads/hisat-0.1.6-beta-Linux_x86_64.zip

unzip hisat.zip 

rm hisat.zip


HISAT=$(pwd)/hisat-0.1.6-beta

export PATH="$HISAT:$PATH"

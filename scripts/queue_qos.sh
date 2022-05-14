#!/bin/sh
echo "sbatch -t 0-5:00 --mem=128G --qos=$1 $2"
sbatch -t 1-5:00 --mem=128G --qos=$1 $2 
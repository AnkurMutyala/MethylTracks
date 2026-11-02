#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mem=20G
#SBATCH -N 1
#SBATCH --time=24:00:00

module load modkit

modkit bedmethyl tobigwig \
  --mod-codes a \
  --sizes </path/to/hg38.fa.fai> \
  </path/to/input.bedmethyl> </path/to/output.bigwig>

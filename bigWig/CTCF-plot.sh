#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH -N 1
#SBATCH --time=24:00:00

module load deeptools

plotProfile --matrixFile </path/to/input/matrix.gz> \
  --outFileName </path/to/output/plot.pdf> \
  --yMin 0 --yMax 80

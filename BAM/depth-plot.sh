#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mem=100G
#SBATCH -N 1
#SBATCH --time=24:00:00

module load deeptools

plotCoverage -b </PATH/TO/SORTED/INPUT.BAM> \
-o /PATH/TO/OUTPUT.PDF

#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mem=20G
#SBATCH -N 1
#SBATCH --time=24:00:00

module load deeptools

plotCoverage --bamfiles </path/to/sorted/input.bam> \
--skipZeros \
--plotFile </path/to/output.pdf>

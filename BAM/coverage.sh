#!/bin/bash
#SBATCH --job-name=am_stCoverage
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH -N 1
#SBATCH --time=24:00:00

module load samtools

samtools coverage -o /PATH/TO/OUTPUT.tsv </PATH/TO/SORTED/INPUT.BAM>

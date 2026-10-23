#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mem=20G
#SBATCH -N 1
#SBATCH --time=24:00:00

module load modkit

BAM=</PATH/TO/INPUT.BAM>

modkit summary $BAM > /PATH/TO/OUTPUT.out

#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mem=50G
#SBATCH -N 1
#SBATCH --time=24:00:00

module load samtools -M </path/to/sorted/BAM_1> </path/to/sorted/BAM_2> ... </path/to/sorted/BAM_N>

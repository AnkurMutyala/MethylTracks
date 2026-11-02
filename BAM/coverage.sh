#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH -N 1
#SBATCH --time=24:00:00

module load samtools

samtools coverage --output </path/to/output.tsv> </path/to/sorted/input.bam>

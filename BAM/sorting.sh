#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mem=64G
#SBATCH -N 1
#SBATCH --time=24:00:00

module load samtools

samtools sort -o </path/to/sorted/output.bam> </path/to/unsorted/input.bam>

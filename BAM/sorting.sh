#!/bin/bash
#SBATCH --job-name=sorting
#SBATCH --ntasks=1
#SBATCH --mem=64G
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -e [path/to/error/folder/].%j.err
#SBATCH --time=24:00:00

#Load Samtools

module load samtools

#Use Samtools sort command

samtools sort -o </desired/path/and/name/of/output/sorted/BAM> </path/to/input/unsorted/BAM>

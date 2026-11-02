#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mem=20G
#SBATCH -N 1
#SBATCH --time=24:00:00

module load samtools

samtools bedcov -c </path/to/hg38-GATCs.bed> \
</path/to/input.bam> > </path/to/output.bed>

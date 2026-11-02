#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mem=15G
#SBATCH -N 1
#SBATCH --time=24:00:00

module load modkit
    
modkit summary \
--reference </path/to/hg38.fasta> \
--motif GATC 1 \
</path/to/sorted/input.bam> > </path/to/summary.out>

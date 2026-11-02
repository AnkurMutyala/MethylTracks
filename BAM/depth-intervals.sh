#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mem=50G
#SBATCH --time=24:00:00

module load bedtools

bedtools genomecov -bga -ibam </path/to/sorted/input.bam> > </path/to/output.bedgraph>

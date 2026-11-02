#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mem=20G
#SBATCH -N 1
#SBATCH --time=24:00:00

module load ucsctools/320

bedSort </path/to/unsorted/input.bedgraph> </path/to/sorted/output.bedgraph>

bedGraphToBigWig </path/to/sorted/input.bedgraph> \
  </path/to/hg38.chrom.sizes> \
  </path/to/output.bigwig>

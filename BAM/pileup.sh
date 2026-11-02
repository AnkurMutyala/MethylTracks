#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mem=50G
#SBATCH -N 1
#SBATCH --time=24:00:00

module load modkit

#All 6mA
modkit pileup </path/to/sorted/input.bam> </path/to/output.bedmethyl> \
--modified-bases 6mA \
-r </path/to/hg38.fasta> \
-f 1.0

#GATC 6mA only
modkit pileup </path/to/sorted/input.bam> </path/to/output.bedmethyl> \
--modified-bases 6mA \
--motif GATC 1 \
-r </path/to/hg38.fasta> \
-f 1.0

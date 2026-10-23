#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mem=50G
#SBATCH -N 1
#SBATCH --time=24:00:00

module load modkit

modkit pileup </PATH/TO/SORTED/INPUT.BAM> /PATH/TO/OUTPUT.BED \
--modified-bases 6mA \
-r </PATH/TO/HG38.FASTA> \
-f 1.0

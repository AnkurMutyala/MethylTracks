#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mem=15G
#SBATCH -N 1
#SBATCH --time=24:00:00

module load modkit

BAM=</PATH/TO/SORTED/INPUT.BAM>
    
modkit summary \
--reference </PATH/TO/HG38.FASTA> \
--motif GATC 1 \
$BAM > /PATH/TO/OUTPUT.out

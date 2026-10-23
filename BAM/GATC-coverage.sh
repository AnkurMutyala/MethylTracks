#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mem=20G
#SBATCH -N 1
#SBATCH --time=24:00:00

module load samtools

BAM=</PATH/TO/SORTED/INPUT.BAM>

samtools bedcov -c </PATH/TO/HG38-GATC.BED> \
$BAM > /PATH/TO/OUPUT.BED

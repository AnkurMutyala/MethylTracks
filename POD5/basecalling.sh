#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mem=100G
#SBATCH -N 1
#SBATCH --time=1:00:00

module load dorado/2.1.0 \
dorado download --model dna_r10.4.1_e8.2_400bps_hac@v6.0.0_6mA@v1

dorado basecaller dna_r10.4.1_e8.2_400bps_hac@v6.0.0 </path/to/input/folder/POD5_pass> \
--modified-bases-models dna_r10.4.1_e8.2_400bps_hac@v6.0.0_6mA@v1 \
--trim \
--reference </path/to/hg38.fasta> \
-o </path/to/output.BAM>

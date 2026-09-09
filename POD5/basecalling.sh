#!/bin/bash
#SBATCH --job-name=basecalling
#SBATCH --ntasks=1
#SBATCH --mem=20G
#SBATCH -N 1
#SBATCH -n 10
#SBATCH -e basecalling.err
#SBATCH --time=1:00:00

#Load Dorado version

module load dorado/2.1.0 \

#Set working directory

cd <path/to/working/directory/> \

#Download basecalling model with desired specifications: 
#--model {ANALYTE}_{PORE-TYPE}_{KIT-CHEMISTRY}_{TRANSLOCATION-SPEED}_{ACCURACY@SIMPLEX MODEL}_{MOD@MOD-MODEL}

dorado download --model dna_r10.4.1_e8.2_400bps_hac@v6.0.0_6mA@v1 \

#Run basecalling

dorado basecaller dna_r10.4.1_e8.2_400bps_hac@v6.0.0 </path/to/input/POD5> \
--modified-bases-models dna_r10.4.1_e8.2_400bps_hac@v6.0.0_6mA@v1 \
--trim \
--reference </path/to/reference/genome/hg38.fa> \
-o </desired/path/and/name/of/output/BAM>

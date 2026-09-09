#!/bin/bash
#SBATCH --job-name=indexing
#SBATCH --ntasks=1
#SBATCH --mem=50G
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -e </path/to/errors/folder/indexing>.%j.err
#SBATCH --time=24:00:00

#Load Samtools

module load samtools 

#Run Samtools index command

samtools index \

#'-M' option allows you to list multiple files to be indexed at once, \
#outputting a separate '.BAI' file for each one in the same directory that \
#the input BAM is in.

-M \

#Note: BAM files must be sorted before indexing (see MethylTracks/BAM/sorting.sh).

</path/to/sorted/IN_BAM_1> </path/to/sorted/IN_BAM_2> ... </path/to/sorted/IN_BAM_N>

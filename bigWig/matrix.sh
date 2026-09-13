#!/bin/bash
#SBATCH --job-name=matrix
#SBATCH --ntasks=1
#SBATCH --mem=20G
#SBATCH -N 1
#SBATCH --error=</path/to/directory>/matrix_%j.err
#SBATCH --output=<path/to/directory>/matrix_%j.log
#SBATCH --time=24:00:00

#Load deepTools
module load deeptools

#Begin loop
#Execute script for all bigWig files in given folder:
for file in <path/to/bigwig/folder>/*.bigwig; do

#Remove file path
    filename=${file##*/}
#Remove file extension
    sample=${filename%.*}
#Add new modified name and extension
    out_file=${sample}_matrix.gz

#Create matrix of bigWig values and reference BED positions
#Use "if, then" to output error message in log file and terminate script if command fails
    if ! computeMatrix reference-point --scoreFileName $file --regionsFileName </path/to/CTCF/BED> \
        --downstream [right end of x-axis] --upstream [left end of x-axis] \
        --referencePoint center \
        -o <desired/output/folder>/$out_file
    then
        echo "$sample matrix failed"
        exit 1
    fi

#Write completion message in log file after a sample matrix has been generated
        echo "$sample matrix done"

#Plot matrix
    if ! plotProfile --matrixFile <path/to/matrix/file>/$out_file \
        --outFileName </desired/output/folder/and/extension>/${sample}_CTCF.pdf \
        --refPointLabel CTCF \
        --yAxisLabel "6mA signal"
    then
        echo "$sample plot failed"
        exit 1
    fi

#Write completion message in log file after a sample has been plotted
        echo "$sample plot done"

#End loop
done

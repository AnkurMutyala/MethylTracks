#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mem=20G
#SBATCH -N 1
#SBATCH --time=24:00:00

module load deeptools

computeMatrix reference-point --scoreFileName </path/to/input/bigwig> --regionsFileName </path/to/CTCF/BED> \
    --downstream 1000 --upstream 1000 \
    --referencePoint center \
    --skipZeros \
    --outFileName </path/to/output/matrix.gz>

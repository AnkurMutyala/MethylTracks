#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mem=5G
#SBATCH -N 1
#SBATCH --time=24:00:00

#Filtering bedGraph files (depth intervals)
# X = 1 OR 2 OR 3

  awk -v OFS="\t" '{ if ($4 >= X) {print $1, $2, $3} }' </path/to/input/intervals.bedgraph> > </path/to/filtered/output/intervals.bed3>
  
  awk -v OFS="\t" '{ if ($4 >= X) {print} }' </path/to/input/intervals.bedgraph> > </path/to/filtered/output/intervals.bedgraph>

#Filtering bedMethyl files (6mA pileup)
# X = 2 OR 3

  awk -v OFS="\t" '{ if ($10 >= X) {print} }' </path/to/unfiltered/input.bedmethyl> > </path/to/filtered/output.bedmethyl>

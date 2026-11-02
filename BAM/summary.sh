#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mem=20G
#SBATCH -N 1
#SBATCH --time=24:00:00

module load modkit

#All 6mA summary
modkit summary </path/to/input.bam> > </path/to/summary.out>

#GATC summary
modkit summary \
  --reference </path/to/hg38.fasta> \
  --motif GATC 1 \
  </path/to/sorted/input.bam> > </path/to/summary.out>

#Matched summary
modkit summary \
  --reference </path/to/hg38.fasta> \
  --matched-only \
  </path/to/sorted/input.bam> > </path/to/summary.out>

#Depth filter summary
modkit summary \
    --reference </path/to/hg38.fasta> \
    --include-bed </path/to/input/filtered/depth/intervals.bed3> \
    </path/to/sorted/input.bam> > </path/to/summary.out>

#GATC AND depth summary
modkit summary \
  --reference </path/to/hg38.fasta> \
  --motif GATC 1 \
  --include-bed </path/to/input/filtered/depth/intervals.bed3> \
  </path/to/sorted/input.bam> > </path/to/summary.out>

  #Matched AND depth summary
  modkit summary \
  --reference </path/to/hg38.fasta> \
  --matched-only \
  --include-bed </path/to/input/filtered/depth/intervals.bed3> \
  </path/to/sorted/input.bam> > </path/to/summary.out>

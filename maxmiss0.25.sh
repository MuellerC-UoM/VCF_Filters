#!/bin/bash

#SBATCH -J MaxMiss       # Name for the job (keep it short and informative)
#SBATCH -N 1       # Number of nodes
#SBATCH -n 1       # Use n cores
#SBATCH -t 0-11:59       # Runtime in D-HH:MM
#SBATCH --mem=2000    # Memory requested (megabites default, or specify G for Gb)
#SBATCH -o mm.%A.out       # File to which STDOUT will be written
#SBATCH -e mm.%A.err       # File to which STDERR will be written
#SBATCH --account=def-coling  # Who are are going to charge it to?

vcftools --gzvcf AllSamples_noindels_Q50.vcf --max-missing 0.25 --stdout --recode --recode-INFO-all | gzip -c > AllSamples_noindels_Q50_maxmiss025.vcf.gz

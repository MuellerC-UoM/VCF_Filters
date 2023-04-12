#!/bin/bash

#SBATCH -J Filter       # Name for the job (keep it short and informative)
#SBATCH -N 1       # Number of nodes
#SBATCH -n 1       # Use n cores
#SBATCH -t 0-11:59       # Runtime in D-HH:MM
#SBATCH --mem=2000    # Memory requested (megabites default, or specify G for Gb)
#SBATCH -o ind.%A.out       # File to which STDOUT will be written
#SBATCH -e ind.%A.err       # File to which STDERR will be written
#SBATCH --account=def-coling  # Who are are going to charge it to?

vcftools --gzvcf AllSamples.vcf  --stdout --recode --recode-INFO-all --remove-indels | gzip -c > AllSamples_noindels.vcf.gz

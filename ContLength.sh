#!/bin/bash

#SBATCH -J ContLenth       # Name for the job (keep it short and informative)
#SBATCH -n 4       # Use n cores
#SBATCH -t 0-08:00       # Runtime in D-HH:MM
#SBATCH --mem-per-cpu=40G    # Memory requested (megabites default, or specify G for Gb)
#SBATCH -o cl.%A.out       # File to which STDOUT will be written
#SBATCH -e cl.%A.err       # File to which STDERR will be written
#SBATCH --account=def-coling  # Who are are going to charge it to?

module load StdEnv/2020
module load gcc/9.3.0
module load bcftools/1.16

bcftools reheader -f [ReferenceGenome.fsa.fai] FinaleData_noindels_Q50_maxmiss025.vcf.gz -o FinaleData_noindels_Q50_maxmiss025_ContL.vcf.gz

#!/bin/bash

module load nextflow
module load singularity

# Use StarSolo based on Bruning et al. 2022
nextflow run nf-core/scrnaseq -r 2.1.0 --input 'sampleSheet.csv' --genome GRCh38 -profile singularity -c nextflow.config -bg --protocol '10XV3' --aligner 'cellranger' --outdir outputs -resume

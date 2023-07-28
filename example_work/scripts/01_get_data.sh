#!/bin/bash
proj_dir="${HOME}/Code/NextFlow/Bioinformatics_Training/example_work"
mkdir -p ${proj_dir}/reference_data
cd ${proj_dir}/reference_data
wget ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_mouse/release_M23/gencode.vM23.transcripts.fa.gz
wget ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_mouse/release_M23/GRCm38.primary_assembly.genome.fa.gz

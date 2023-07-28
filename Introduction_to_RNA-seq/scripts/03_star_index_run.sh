#!/bin/bash
#local_project_dir=$1
local_project_dir="/Users/dan/Code/NextFlow/Bioinformatics_Training/Introduction_to_RNA-seq"
docker_project_dir="/home/rnaseq"
input_dir="raw_data"
output_dir="results/fastqc/"

mkdir -p ${local_project_dir}/${output_dir}
echo docker run -v ${local_project_dir}:${docker_project_dir} danhumassmed/qc-tools:1.0.1 \
    /bin/bash -c \"fastqc -t 6 -o ${docker_project_dir}/${output_dir} -f fastq ${docker_project_dir}/${input_dir}/*.fq\"

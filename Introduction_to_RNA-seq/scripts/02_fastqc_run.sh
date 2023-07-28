#!/bin/bash
### Quality control using FASTQC ###

#local_project_dir=$1
local_project_dir="${HOME}/Code/NextFlow/Bioinformatics_Training/Introduction_to_RNA-seq"
docker_project_dir="/home/rnaseq"
input_dir="raw_data"
output_dir="results/fastqc/"

mkdir -p ${local_project_dir}/${output_dir}
docker run --rm -v ${local_project_dir}:${docker_project_dir} danhumassmed/qc-tools:1.0.1 \
    /bin/bash -c "fastqc -t 1 -f fastq -o ${docker_project_dir}/${output_dir} ${docker_project_dir}/${input_dir}/*.fq"

docker run --rm -v ${local_project_dir}:${docker_project_dir} danhumassmed/qc-tools:1.0.1 \
    /bin/bash -c "cd ${docker_project_dir}/results; multiqc --filename multiqc_report.html ."

echo docker run -v ${local_project_dir}:${docker_project_dir} -it danhumassmed/qc-tools:1.0.1 \
    /bin/bash 


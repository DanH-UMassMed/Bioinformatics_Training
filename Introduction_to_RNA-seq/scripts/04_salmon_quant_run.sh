#!/bin/bash
#local_project_dir=$1
local_project_dir="/Users/dan/Code/NextFlow/Bioinformatics_Training/Introduction_to_RNA-seq"
docker_project_dir="/home/rnaseq"
input_dir="raw_data"
output_dir="results/fastqc/"

mkdir -p ${local_project_dir}/${output_dir}
echo docker run -v ${local_project_dir}:${docker_project_dir} danhumassmed/qc-tools:1.0.1 \
    /bin/bash -c \"fastqc -t 6 -o ${docker_project_dir}/${output_dir} -f fastq ${docker_project_dir}/${input_dir}/*.fq\"

for fq in ~/rnaseq/raw_data/*.fq

do

# create a prefix for the output file
samplename=`basename $fq .fq`

# run salmon
salmon quant -i /n/holylfs05/LABS/hsph_bioinfo/Everyone/Workshops/Intro_to_rnaseq/indicies/salmon_index \
 -l A \
 -r $fq \
 -o ${samplename}.salmon \
 --seqBias \
 --useVBOpt \
 --validateMappings

done

#!/bin/bash
local_project_dir="${HOME}/Code/NextFlow/Bioinformatics_Training/example_work"
input_dir="reference_data"
cd ${local_project_dir}/${input_dir}

echo "Create decoys.txt"
grep "^>" <(gunzip -c GRCm38.primary_assembly.genome.fa.gz) | cut -d " " -f 1 > decoys.txt
sed -i.bak -e 's/>//g' decoys.txt
rm decoys.txt.bak

echo "combine genome and transcriptome files"
cat gencode.vM23.transcripts.fa.gz GRCm38.primary_assembly.genome.fa.gz > gentrome.fa.gz
# Gets the number of cores on the Mac
#cores=`sysctl -n machdep.cpu.core_count`
#cores=$((cores - 2))


echo "Salmon indexing"
docker_project_dir="/home/rnaseq"
output_dir="results/fastqc/"

docker run --platform linux/amd64 --rm -v ${local_project_dir}:${docker_project_dir} danhumassmed/salmon-kallisto:1.0.1 \
    /bin/bash -c "cd ${docker_project_dir}/${input_dir}; salmon index -t gentrome.fa.gz -d decoys.txt -p 3 -i salmon_index --gencode"


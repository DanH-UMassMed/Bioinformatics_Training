#!/bin/bash
### Setup files for training ###

#local_project_dir=$1
local_project_dir="${HOME}/Code/NextFlow/Bioinformatics_Training/Introduction_to_RNA-seq"

cd ${local_project_dir}
wget --max-redirect=20 -O unix_lesson.tar.gz https://www.dropbox.com/s/t3lkyz1pz021222/unix_lesson.tar.gz?dl=1
tar -xvf unix_lesson.tar.gz
mv ./unix_lesson/raw_fastq raw_data
mv ./unix_lesson/reference_data reference_data
rm -rf unix_lesson
rm unix_lesson.tar.gz
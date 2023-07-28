#!/bin/bash
LOCAL_PRJ_DIR="/Users/dan/Code/NextFlow/Bioinformatics_Training/Introduction_to_RNA-seq"
USER="danhumassmed"
TAG="dge_software"
VERSION="1.0.1"
SHORT_DESC="Differential Gene Expression Software"
echo "********************************************"
echo ../push_description.py -u \"${USER}\" -i ${USER}/${TAG} -r README.md -s \"${SHORT_DESC}\"

echo "********************************************"
echo docker buildx build --platform linux/amd64,linux/arm64 --push -t ${USER}/${TAG}:${VERSION} .

echo "********************************************"
echo docker build -t ${USER}/${TAG}:${VERSION} .
echo docker push ${USER}/${TAG}:${VERSION}
echo "********************************************"
echo docker run -it ${USER}/${TAG}:${VERSION} /bin/bash
echo docker run --rm -p 8787:8787 -e PASSWORD=password -v ${LOCAL_PRJ_DIR}:/home/rstudio/projects ${USER}/${TAG}:${VERSION}



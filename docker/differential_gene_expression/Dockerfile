FROM rocker/rstudio:4.3

RUN apt-get update -q && \
    apt-get install -q -y --no-install-recommends \
        libicu-dev \
        libz-dev \
        unzip \
        zip

RUN R -e "install.packages(c('BiocManager','tidyverse','RColorBrewer','pheatmap','ggrepel','cowplot'))"

RUN R -e "library(BiocManager); install(c('DESeq2'))"

RUN apt-get update -q && \
    apt-get install -q -y --no-install-recommends \
        liblzma-dev \
        libbz2-dev \
        libglpk-dev

RUN R -e "library(BiocManager); install(c('clusterProfiler','DOSE','org.Hs.eg.db','org.Ce.eg.db','pathview','DEGreport','tximport','AnnotationHub','ensembldb'))"

# Create user and setup permissions on /etc/sudoers
RUN echo "rstudio ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers && \
    chmod 0440 /etc/sudoers && \
    chmod g+w /etc/passwd 



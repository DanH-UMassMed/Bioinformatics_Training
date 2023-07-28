# Sofware Provided

| Docker Tag | 
|------------|
| 1.0.1      |

This Resository provides the tools needed to take the course **Introto rnaseq salmon flipped**

https://hbctraining.github.io/main/


## Required Software for Differential Gene Expression Analysis

### RStudio

### R Packages 
* BiocManager
* tidyverse
* RColorBrewer
* pheatmap
* ggrepel
* cowplot

### Biocondutor Packages

* clusterProfiler
* DOSE
* org.Hs.eg.db
* org.Ce.eg.db
* pathview
* DEGreport
* tximport
* AnnotationHub
* ensembldb


# Usage

NOTE: User name for login is `rstudio`


```
docker run --rm -p 8787:8787 -e PASSWORD=password -v [DIR_ON_LOCAL_HOST]:/home/rstudio/projects danhumassmed/dge_software:1.0.1
```
connect with http://127.0.0.1:8787
<br>

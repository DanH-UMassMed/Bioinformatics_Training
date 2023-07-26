# Sofware Provided

| Docker Tag | HOMER    | samtools | DESeq2  |edgeR    |rclone  |
|------------|----------|----------|---------|---------|--------|
| 1.0.1      | v4.11.1  | v1.17    | v1.38.0 | v3.40.0 |v1.63.1 |

## HOMER Software for motif discovery and next generation sequencing analysis
---

[http://homer.ucsd.edu/homer/index.html](http://homer.ucsd.edu/homer/index.html)


HOMER (Hypergeometric Optimization of Motif EnRichment) is a suite of tools for Motif Discovery and next-gen sequencing analysis.  It is a collection of command line programs for UNIX-style operating systems written in Perl and C++. HOMER was primarily written as a de novo motif discovery algorithm and is well suited for finding 8-20 bp motifs in large scale genomics data.  HOMER contains many useful tools for analyzing ChIP-Seq, GRO-Seq, RNA-Seq, DNase-Seq, Hi-C and numerous other types of functional genomics sequencing data sets.
<br>






# Usage

The provided Docker image is compatible with [Singularity](https://sylabs.io/docs/) and is actively used in [NextFlow](https://www.nextflow.io/) Pipelines configured for an HPC.


```
docker run -v /home/dan/.config/rclone/rclone.conf:/root/.config/rclone/rclone.conf danhumassmed/de-seq-tools:1.0.1 rclone ls remote:/
```

<br>

# Kallisto.Indexer
This module builds a kallisto index from a FASTA formatted file of target sequences. The FASTA formatted file can be gzipped (.gz), and the user can choose to supply multiple FASTA formatted files. 

The index can be used in downstream analysis such as Kallisto. 
Kallisto is a program for quantifying abundances of transcripts from bulk and single-cell RNA-Seq data, or more generally of target sequences using high-throughput reads. 

## Parameters
  - **fasta files** (required) (list of files)
  - **index** (required)
  - kmer-size (int)
    - k-mer odd length.
  - make-unique
    - Replace repeated target names with unique names. 

## Docker
  - This module uses genepattern/kallisto.indexer:v0.1
  
## Documentation
  - https://pachterlab.github.io/kallisto/manual
  
## Contact
  - Edwin Huang -- UCSD Mesirov Lab
  - edh021@cloud.ucsd.edu

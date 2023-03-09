# Kallisto.Indexer
Builds a kallisto index from a FASTA formatted file of target sequences

## Parameters
  - **fasta files** (required) (list of files)
  - **index** (required)
  - kmer-size (int)
    - k-mer odd length.
  - make-unique
    - Replace repeated target names with unique names. 

## Docker
  - This module uses genepattern/kallisto.indexer:v0.1

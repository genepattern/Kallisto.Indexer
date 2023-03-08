#!/bin/bash

# Script for parsing Kallisto arguments and running Kallisto.

echo $PWD
echo "--> Arguments read:"
echo $@

echo "--> Arguments read:" >> module_log.txt
echo $@ >> module_log.txt

LAUNCH_SCRIPT="kallisto index "

## reading the output filename
out_filename=$1
LAUNCH_SCRIPT+="-i ./$out_filename.idx "
shift
echo "The output filename is: $out_filename"
echo "The output filename is: $out_filename" >> module_log.txt

make_unique=$1
echo "Will make unique names? $make_unique"
if [[ "$make_unique" = "Yes" ]]
then
    LAUNCH_SCRIPT+="--make-unique "
fi
shift

k_mer_size=$1
if [[ "$k_mer_size" -lt "31" ]]
then
    LAUNCH_SCRIPT+="--kmer-size=$k_mer_size "
fi
shift

fasta_files=$1
list_of_files=""
while read line
do
    # reading each line
    list_of_files="$list_of_files $line"
done < $fasta_files

LAUNCH_SCRIPT+="$list_of_files"

# $LAUNCH_SCRIPT
echo "evaluating: $LAUNCH_SCRIPT"
eval "$LAUNCH_SCRIPT"





#!/bin/bash

log="fasterq_dump.log"

#Path to sra toolkit and to accession file
SRAtool="/path/to/sratoolkit.3.2.1-mac-x86_64/bin/"
ACESS_FILE="/path/to/SRR_Acc_List.txt"

#Output directory
OUTDIR="/path/to/sra_download"
mkdir -p $OUTDIR

#while loop that reads line by line of accession file and uses fasterq-dump to fetch accession files
while IFS= read -r ACCESSION;do
    if [[ -n "$ACCESSION" ]]; then
        ${SRAtool}fasterq-dump "$ACCESSION" -O "$OUTDIR" --split-files >>"$log" 2>&1
        echo "Finished $ACCESSION"
    fi
done<"$AF"

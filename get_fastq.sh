#!/bin/bash
#srun job

#screen

#srun -N 1 -n 4 --account=e32680 --mem=5G --partition=short --time=1:00:00 --pty bash -l

# Load SRA Toolkit
module load sratoolkit/3.0.0

# Path to accession list (one SRR/ERR/DRR per line)
ACCESSION_LIST="SRR_Acc_List.txt"

# Output directory
OUTDIR="fastq_files"
mkdir -p $OUTDIR

# Loop through accession numbers
while read -r ACC; do
    echo "Downloading $ACC ..."
    fasterq-dump $ACC \
        --threads 3 \
        --outdir $OUTDIR \
        --progress
done < "$ACCESSION_LIST"

#gzip ./fastq_files/*.fastq

echo "All downloads completed!"

#!/bin/bash
#SBATCH --account=e32680
#SBATCH --partition=short
#SBATCH --job-name=fastq_array
#SBATCH --time=01:00:00
#SBATCH --mem=5G
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --array=1-2   

module load sratoolkit/3.0.0

# Directories
ACCESSION_LIST="SRR_Acc_List.txt"
OUTDIR="fastq_files_array"
mkdir -p $OUTDIR logs

# Get the accession corresponding to this array task ID
ACC=$(sed -n "${SLURM_ARRAY_TASK_ID}p" $ACCESSION_LIST)


fasterq-dump $ACC \
    --split-files \
    --threads 3 \
    --outdir $OUTDIR \
    --progress

# (Optional) Compress FASTQs to save space
pigz -p 3 $OUTDIR/${ACC}*.fastq


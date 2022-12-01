#!/bin/bash -i 
conda activate blast-env

mkdir -p BLAST-output

#blast 'em
blastn -query ASV-input/prok-nonphoautototrophic.asv-sequences.fasta  -db GTDB-blastdb/220613_bac-arc-r207_merged.fna -outfmt 6 -perc_identity 95 -qcov_hsp_perc 100 > BLAST-output/221201_P16N-S.prok-nonphoautototrophic.BLAST-95pcID-vs-GTDB-r207-allproks.tsv

#zip it up results
zip -m BLAST-output/221201_P16N-S.prok-nonphoautototrophic.BLAST-95pcID-vs-GTDB-r207-allproks.zip BLAST-output/221201_P16N-S.prok-nonphoautototrophic.BLAST-95pcID-vs-GTDB-r207-allproks.tsv

#!/bin/bash -i 
conda activate blast-env
cat GTDB-blastdb/*fna > GTDB-blastdb/220613_bac-arc-r207_merged.fna
makeblastdb -dbtype nucl -in GTDB-blastdb/220613_bac-arc-r207_merged.fna

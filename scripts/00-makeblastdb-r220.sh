#!/bin/bash -i 
conda activate blast-env
#downloaded as follows into GTDB-blastdb-r220 directory:
#wget https://data.gtdb.ecogenomic.org/releases/release220/220.0/genomic_files_all/ssu_all_r220.fna.gz
makeblastdb -dbtype nucl -in GTDB-blastdb-r220/ssu_all_r220.fna 

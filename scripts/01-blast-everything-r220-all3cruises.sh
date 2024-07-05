#!/bin/bash -i 
conda activate blast-env

mkdir -p BLAST-output-r220

#blast 'em (loop through cruises), and zip up results

for input in ASV-input/*asv-sequences* ; do

	cruise=`echo $input | cut -f2 -d\/ | cut -f1 -d_`
	blastn -query $input  -db GTDB-blastdb-r220/ssu_all_r220.fna -outfmt 6 -perc_identity 95 -qcov_hsp_perc 100 > BLAST-output-r220/240705_$cruise.prok-nonphoautototrophic.BLAST-95pcID-vs-GTDB-r220-allssu.tsv
	zip -m BLAST-output-r220/240705_$cruise.prok-nonphoautototrophic.BLAST-95pcID-vs-GTDB-r220-allssu.zip BLAST-output-r220/240705_$cruise.prok-nonphoautototrophic.BLAST-95pcID-vs-GTDB-r220-allssu.tsv

done

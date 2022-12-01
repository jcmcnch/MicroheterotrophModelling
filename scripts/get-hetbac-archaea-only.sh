#provide input as sys.argv[1]
#output as sys.argv[2]
head -n1 $1 > $2
grep Bacteria $1 | grep -ivE "Cyanobacteria|Mitochondria|Bacteriastrum" >> $2
grep Archaea $1 >> $2

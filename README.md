# Microheterotroph Modelling

- Raw data source:

https://osf.io/57dpa/

- For sequence processing methods, see:

https://github.com/jcmcnch/GlobalUniveralMetabarcodingOfPlankton

- For microheterotroph guild definitions, see `Guilds` folder

Bioinformatic steps to subset ASV table to only microheterotrophs, and then BLAST against GTDB (version=`bac-arc-r207`):

1. To get only microheterotrophs:

```
./scripts/get-hetbac-archaea-only.sh 221118-1030_P16N-S_3.84-fold-18S-correction_merged_16S_18S_proportions.QCd.tsv 221118-1030_P16N-S_3.84-fold-18S-correction_merged_16S_18S_proportions.QCd.prok-nonphoautototrophic.tsv
```

2. To

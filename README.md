## Microheterotroph Modelling

Note: added public release on 2025-01-19 for publication purposes. Will add `CITATION.cff` once Zenodo generates DOI.

- Raw data source:

https://osf.io/57dpa/

- Environmental covariates:

https://github.com/jcmcnch/GlobalUniveralMetabarcodingOfPlankton/blob/main/GO-SHIP/P16N-P16S/Associated_Measurements/0.P16NS_Raw_Data/CSV/2.20221118_P16NS_Sample_Metadata_Final.csv

- For microheterotroph guild definitions, see `Guilds` folder

### Bioinformatic steps to subset ASV table to only microheterotrophs, and then BLAST against GTDB (input files=`bac120_ssu_reps_r207` and `ar53_ssu_reps_r207`):

1. To get only microheterotrophs:

```
./scripts/get-hetbac-archaea-only.sh 221118-1030_P16N-S_3.84-fold-18S-correction_merged_16S_18S_proportions.QCd.tsv 221118-1030_P16N-S_3.84-fold-18S-correction_merged_16S_18S_proportions.QCd.prok-nonphoautototrophic.tsv
```

2. To run `BLASTn` against GTDB, requiring at least 95% similarity (~genus-level; [Yarza et al., 2014](https://www.nature.com/articles/nrmicro3330)) and 100% coverage of the ASV sequence:

```
./scripts/00-makeblastdb.sh
./scripts/01-blast-everything.sh
```

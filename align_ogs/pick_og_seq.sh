#! /bin/zsh

while read taxonName; do
    hamstradPath=$HAMSTRAD/${taxonName/ /_}_workerReproduction_relaxed_SINVI_BTERR_CFLOR_BIMPA_MQUAD_PDOMI/nt/cds/
    for ogFile in `find $hamstradPath -maxdepth 1 -type f -name "*.cds.fa"`; do
        tmp=${ogFile##*/}
        ogName=${tmp%%.*}
        cp $hamstradPath/$ogName.cds.fa $WRDATA/ogs/$ogName/${taxonName/ /_}.fa
    done
done < $WRDATA/taxonname.list

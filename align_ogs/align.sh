#! /bin/zsh

cd $WRDATA/ogs

for seqfile in `find ./og/ -maxdepth 1 -name "*.fas" -type f`; do
    mafft-linsi --anysymbol $seqfile > ${seqfile/og/alignment}
done

cd $WRPROJ

#! /bin/zsh

cd $WRDATA/protein

while read ogname; do
    mkdir og/$ogname
    grep $ogname odb9v1_OG2genes.tab | awk '{print $2}' > og/$ogname/genename.list
    while read genename; do
        taxonid=${genename%:*}
        if grep -q ^$taxonid$'\t' taxonid.list; then
            python $WRPROJ/pick_sequence.py metazoa/Rawdata/$taxonid.fs $genename > og/$ogname/$genename.fas
        fi
    done < og/$ogname/genename.list
done < og.list

cd $WRPROJ    

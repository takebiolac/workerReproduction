#! /bin/zsh

while read taxonName; do
    for ogFile in `find $WRDATA/ogs/ -maxdepth 1 -type d`; do
        ogName=${ogFile##*/}
        if [ -f $WRDATA/ogs/$ogName/${taxonName/ /_}.fa ]; then
            #cat $WRDATA/ogs/$ogName/${taxonName/ /_}.fa >> $WRDATA/ogs/$ogName.fa
        else
            echo ">${taxonName/ /_}"
        fi
    done
done < $WRDATA/taxonname.list

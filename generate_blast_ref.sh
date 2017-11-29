#! /bin/zsh

cd $WRDATA/protein

while read taxonid_taxonname; do
    taxonid=`echo $taxonid_taxonname | awk '{print $1}'`
    taxonname=`echo $taxonid_taxonname | awk '{print $2}'`
    mkdir blast_dir/$taxonname/
    sed -e 's/^>.*:/>/' metazoa/Rawdata/$taxonid.fs > blast_dir/$taxonname/${taxonname}_prot.fa
    cd blast_dir/$taxonname/
    formatdb -n ${taxonname}_prot -t ${taxonname}_prot -i ${taxonname}_prot.fa
    cd ../../
done < taxonid_5chars.list

cd $WRPROJ    

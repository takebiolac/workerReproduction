#! /bin/zsh

cd $WRDATA/protein

for alignmentfile in `find ./alignment/ -maxdepth 1 -name "*.fas" -type f`; do
    tmp=${alignmentfile/alignment/hmm}
    hmmbuild ${hmm/fas/hmm} $alignmentfile
done

cd $WRPROJ

#! /bin/zsh

cd $WRDATA/protein

for alignmentfile in `find ./alignment/ -maxdepth 1 -name "*.fas" -type f`; do
    hmmbuild ${alignmentfile/alignment/hmm} $alignmentfile
done

cd $WRPROJ

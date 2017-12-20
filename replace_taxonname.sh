#! /bin/zsh

cd $WRDATA/protein

for file in `find ./og/ ./alignment/ -maxdepth 2 -name "*.fas" -type f`; do
    sed -i -f replace_taxonname_to_5chars.sed $file
done

cd $WRPROJ

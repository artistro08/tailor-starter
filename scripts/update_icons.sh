#!/bin/bash
#
# Bash file to create json output of Bootstrap Icons. 
# Used for Tailor, an OctoberCMS Feature
# Requires jq: https://stedolan.github.io/jq
#

index=0

for file in $(ls *.svg); 
do 
    index=$(($index+1))
    file_version=$(basename $file .svg);
    svg_code=$(cat $file)
    jq -n --arg name "$file_version" --arg index "$index" --arg svg_code "$svg_code" '{id: $index, is_enabled: 1, title: $name, svg_code: $svg_code }'; 
done | jq -n '. |= [inputs]' > bootstrap-icons.json

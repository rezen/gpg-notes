#!/usr/bin/env bash

set -e

readonly markdown=$(find ./ -maxdepth 1 -type f -name '*_*.md')
touch README.md
echo '# Table of Contents' > README.md

for file in $markdown
do
   heading=$(head -n1 $file)
   
   if [[ $heading == "" ]]
   then
     echo "[!] $file is missing a heading"
     continue
   fi

   file_fixed=$(echo $file | sed 's|./||')
   text=$(echo "$heading" | cut -d'#' -f2 | sed 's/^ *//')
   echo  "- [$text]($file_fixed)" >> README.md
done

#!/bin/sh
declare -a langs=("en" "de" "cs" "it" "uk")

for file in ./ru/*.md
do
  for lang in "${langs[@]}"
  	do
		mkdir $lang
		output_file=$lang/$(basename $file)
		echo "Writing $output_file"
		./trans file://"$file" -t $lang > $output_file
	done
done


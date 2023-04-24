#!/bin/bash
datasets=( "vicodi" "carcinogenesis" "mutagenesis" "premierleague" )
systems=( "tentris-alc2sparql" "fuseki" "virtuoso" "blazegraph" "graphdb" )
for system in "${systems[@]}"
do
  for dataset in "${datasets[@]}"
  do
    bash {{ target_dir }}/loaders/"$system"-load-"$dataset".sh
  done
done
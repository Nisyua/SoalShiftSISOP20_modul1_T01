#!/bin/bash

echo "---Regio  dengan profit terkecil---"
awk -F "\t" 'NR > 1 {arr[$13] =arr[$13]+=$NF}; END{for(key in arr)print key,arr[key]}' Sample-Superstore.tsv | sort -g -k 2 | head -1
echo ""
echo "---State dengan profit terkecil----"
awk -F "\t" 'NR > 1 {if($13~"Central")arr[$11]+=$NF}; END{for(key in arr)print key,arr[key]}' Sample-Superstore.tsv | sort -nk 2 | head -2
echo ""
echo "---10 Product name yang memiliki profit paling sedikit dari 2 State.. ---" 
awk -F "\t" 'NR > 1 {if($11~"Texas||$11~Illinois")arr[$17] += $NF}; END{for(key in arr)print key,arr[key]}' Sample-Superstore.tsv | sort -g | head -10


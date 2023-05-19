#!/bin/bash

echo "Report generated on $(date)"

deco(){
  for i in {1..60}
  do
    echo -n "-"
  done
  echo ""
}

center(){
  str=$1
  l=${#str}
  n=$[60-$l]
  x=$[$n/2]

  for (( i=1; i<=x; i++))
  do
    echo -n " "
  done

  echo -n $str
  echo ""
}

deco
center "User Report"
deco

header=()

while read first
do
  for i in {0..5}
  do
    header[i]=$(echo "$first" | cut -d "," -f $[$i+1])
  done
done < <( head -n 1 biostats.csv)

# echo "${header[@]}"

data=()

while read rec
do
  for i in {0..5}
  do
    data[i]=$(echo "$rec" | cut -d "," -f $[$i+1])
    echo "${header[i]} : ${data[i]}"
  done
  echo ""
done < <( tail -n +2 biostats.csv)

deco
center "End Of User Report"
deco

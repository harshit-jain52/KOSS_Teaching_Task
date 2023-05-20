#! /bin/bash
while IFS="," read rec1 rec2
do
  echo "Name: $rec1"
  echo "Sex: $rec2"
  echo ""
done < <(cut -d "," -f 2,3 biostats.csv | tail -n +2)
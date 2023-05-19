#! /bin/bash
while IFS="," read rec1 rec2 rec3
do
  echo "Name: $rec1"
  echo "Age: $rec2"
  echo "Height, Weight: $rec3"
  echo ""
done < <(cut -d "," -f 2,4-6 biostats.csv | tail -n +2)
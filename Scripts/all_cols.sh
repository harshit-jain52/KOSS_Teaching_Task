#!/bin/sh
while IFS="," read rec_column1 rec_column2 rec_column3 rec_column4 rec_column5 rec_column6
do
  echo "Displaying Record-$rec_column1"
  echo "Name: $rec_column2"
  echo "Sex: $rec_column3"
  echo "Age: $rec_column4"
  echo "Height: $rec_column5"
  echo "Weight: $rec_column6"
  echo ""
done < <(tail -n +2 biostats.csv)
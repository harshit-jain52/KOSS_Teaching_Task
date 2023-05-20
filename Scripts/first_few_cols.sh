#! /bin/sh
while IFS="," read rec_column1 rec_column2 rec_remaining
do
  echo "Displaying Record-$rec_column1"
  echo "Name: $rec_column2"
  echo "BioStats : $rec_remaining"
  echo ""
done < <(tail -n +2 biostats.csv)
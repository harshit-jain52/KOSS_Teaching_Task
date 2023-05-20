#!/bin/sh
while read line
do
   echo "Record: $line"
done < <(tail -n +2 biostats.csv)
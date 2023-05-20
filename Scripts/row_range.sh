#!/bin/sh
while read line
do
  echo "$line"
done < <(head -n 11 biostats.csv | tail -n +3)
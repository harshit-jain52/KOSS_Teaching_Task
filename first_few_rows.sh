#!/bin/sh
while read line
do
  echo "$line"
done < <(head -n 8 biostats.csv)
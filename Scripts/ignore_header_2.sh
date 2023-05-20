#!/bin/sh
exec < biostats.csv
read header
while read line
do
   echo "Record: $line"
done
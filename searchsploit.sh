#!/bin/bash

#searchsploit cve lookerupper

echo
echo -n "Enter the location of your cve file: "
read -e location


echo
echo -n "Enter the location where you want the results: "
read -e results


touch $results
for cve in $(cat $location)
do
	echo >> $results
	echo >> $results
	echo "$cve" >> $results
	echo >> $results
	searchsploit $cve >> $results
done


echo "your results should be here: $results"

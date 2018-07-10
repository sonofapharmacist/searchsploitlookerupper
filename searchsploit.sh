#!/bin/bash

#searchsploit cve lookerupper

echo
echo -n "Enter the location of your cve file: "
read -e location

# Check for no answer
if [[ -z $location ]]; then
     f_error
fi

# Check for wrong answer
if [ ! -f $location ]; then
     f_error
fi

echo
echo -n "Enter the location where you want the results: "
read -e results

# Check for no answer
if [[ -z $results ]]; then
     f_error
fi

# Check for wrong answer
if [ ! -f $results ]; then
     f_error
fi


touch $location_sploits.txt
for cve in $(cat $location)
do
	searchsploit $cve >> $results.txt
done


echo "your results should be here: $results.txt"

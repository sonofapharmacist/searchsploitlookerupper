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

touch $location_sploits.txt
for cve in $(cat $location)
do
	searchsploit $cve >> $location_sploits.txt
done

#!/bin/bash

echo "Website:"

read site

echo $site

currentsite=$(curl $website | md5sum)

echo $currentsite

while true
do
	newsite=$(curl $website | md5sum)

	echo $newsite

	if [ "$newsite" != "$currentsite" ]
	then
		echo "Website update"

		currentsite=$newsite
	fi

	sleep 5

done


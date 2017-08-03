#!/bin/bash
# Program name: pinglist.sh
#
# Accepts command line argument of path to list of hosts to ping

cat $1 |  while read output
do
	ping -c 1 "$output" > /dev/null
        if [ $? -eq 0 ]; then
		#echo "node $output is up" 
	else
		echo "node $output is down"
	fi 
done

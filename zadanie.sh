#!/usr/bin/env bash

PREM="https://www.bing.com/search?q="

while [ "$#" != 0 ]
do
if [ "$#" != 1 ]
then
	PREM="$PREM$1+"
	shift
elif [ "$#" == 1 ]
then
	PREM="$PREM$1"
	shift
else
	break
fi
done

curl -s "$PREM" | tr -d '\n' | tr '<' '\n' | grep 'href="https://' | sed 's/.*href="//' | sed 's/".*//' | sort | uniq | grep -Ev 'microsoft|bing|creativecommons' 


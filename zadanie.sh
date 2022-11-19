#!/usr/bin/env bash

PREM="https://www.bing.com/search?q="

while [ "$#" != 0 ]
do
PREM="$PREM$1+"
shift
done

curl -s "$PREM" | tr -d '\n' | tr '<' '\n' | grep 'a href=' | sed 's/a href="//' | sed 's/".*//' | sort | uniq 


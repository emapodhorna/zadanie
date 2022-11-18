#!/usr/bin/env bash

while [ "$#" != 0 ]
do
PREM="$1+"
shift
done

curl -s https://www.bing.com/search?q="$PREM" | tr -d '\n' | tr '<' '\n'


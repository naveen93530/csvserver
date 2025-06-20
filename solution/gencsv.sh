#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 START END" >&2
  exit 1
fi

start=$1
end=$2

> inputFile  # clear existing file

for ((i=start; i<=end; i++)); do
  echo "$i,$RANDOM"
done > inputFile

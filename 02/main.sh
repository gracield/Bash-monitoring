#!/bin/bash

OUTPUT=$(bash get.sh)
DATE=$(date "+%d_%m_%y_%H_%M_%S.status")
echo "$OUTPUT"

echo
echo "Safe to file ?"
read answer

if [[ $answer == 'Y' ||  $answer == 'y' ]]; then
  echo "$OUTPUT" >  "$DATE"
fi

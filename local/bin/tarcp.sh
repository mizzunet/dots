#!/bin/bash

set -e

SOURCE=$1
DEST=$2

printf 'Copying from %s to %s\n' $SOURCE $DEST

FILES_ALL=$(/bin/ls $SOURCE)

for FILE in "$FILES_ALL"
do
  printf 'File to be copied %s\n' "$FILE"
done
#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
	exit 1
fi

FILE_NAME="$(date +"%Y-%m-%d") $*.md"
NOTE_PATH="$HOME/Notes/${FILE_NAME}"

nvim "$NOTE_PATH"


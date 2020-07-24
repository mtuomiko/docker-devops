#!/bin/bash

if [ $# -ne 1 ]
  then
    echo "Give repository URL as argument" 1>&2
    exit 1
fi

git clone "$1"
repo_name=$(basename -s .git "$1")
docker build -t mtuomiko/"$repo_name" ./"$repo_name"
docker push mtuomiko/"$repo_name"


#!/bin/bash

function new() {
  hexo new "$1"
}

function usage() {
    echo "Usage: ./new_paper.sh <title> "
    exit 1
}

title="$1"
if [[ ! -n "$title" ]]; then  
  usage
else  
  new $title
  echo "create a paper: $title" 
fi


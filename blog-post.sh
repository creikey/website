#!/bin/bash

if [ "$1" == "" ]; then
  printf "Specify a title using-kebob-case\n"
  exit 1
fi

hugo new "blog/${1}.md"

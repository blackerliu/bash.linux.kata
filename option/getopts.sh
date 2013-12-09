#!/bin/sh
day=7  #default value
while getopts ":d:" opt
do
  case $opt in
    d)
      day=$OPTARG   #get the value
      ;;
    ?)
      echo "How to use: $0 [-d DAY]" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done
echo $day

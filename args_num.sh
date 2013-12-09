#!/bin/sh

echo "arguments :" $$.tem
echo "arguments num:" $#

if [ $# -gt 0 ]
	then
		echo "argument list:" $*
fi

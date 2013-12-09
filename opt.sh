#!/bin/sh

usage(){
	echo "Usage: `basename $0` start|stop process name"
}

OPT=$1
PROCESSID=$2

if [ $# -ne 2 ]
	then
		usage
		exit
fi

case $OPT in
	start|Start)
		echo "starting ... $PROCESSID"
		#some process to go here
		;;
	stop|Stop)
		echo "stopping ... $PROCESSID"
		#some process to go here
		;;
	*)
		usage
		;;
esac



	

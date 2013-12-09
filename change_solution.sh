#!/bin/bash
# link solution to special version
# by LiuJianhua

target=$1

target=${target%%/}

if [ $# -ne 1 ];then
	echo "usage: $0 target_solution"
	exit 1
fi

if [ ! -e $target ];then
	echo "$target not exist"
	exit 1
fi

if [ ! -e $target/solution ];then
	echo "no solution dir in $target"
	exit 1
fi

if [ -e solution ];then
	rm solution
fi

ln -s $target/solution solution

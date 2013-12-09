#!/bin/bash

count=$(route -n | grep "192.168.188" | wc -l)
if [[ $count > 0 ]];then
	sudo route add default gw 192.168.188.1 
fi

count=$(route -n | grep "192.168.189" | wc -l)
if [[ $count > 0 ]];then
	sudo route add default gw 192.168.189.1 
fi

count=$(route -n | awk '($1 ~/0.0.0.0/) && ($8 ~ /eth0/){print}' |wc -l)
if [[ $count > 0 ]];then
	sudo route del default dev eth0
fi

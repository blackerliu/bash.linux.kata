#!/bin/bash
#network speed
#By BlacerLiu on 2013-12-09
export LANGUAGE="en_US:en"

main()
{
while :
	do
		time=`date +%Y"-"%m"-"%d" "%k":"%M":"%S`
		rx_before=`ifconfig $eth_name|grep "RX bytes"|awk '{print $2}'|cut -d ':' -f 2`
		tx_before=`ifconfig $eth_name|grep "TX bytes"|awk '{print $6}'|cut -d ':' -f 2`
#		echo "Wait $interval second..."
		sleep $interval
		rx_after=`ifconfig $eth_name|grep "RX bytes"|awk '{print $2}'|cut -d ':' -f 2`
		tx_after=`ifconfig $eth_name|grep "TX bytes"|awk '{print $6}'|cut -d ':' -f 2`

		rx_result=$(((rx_after-rx_before)/256))
		tx_result=$(((tx_after-tx_before)/256))
		echo -e "$time Download Speed: \e[30;42m"$((rx_result/speed))"\e[0m $unit Upload Speed: \e[30;42m"$((tx_result/speed))"\e[0m $unit"
#		echo "Wait $interval second..."
		sleep $interval
	done
}

#default
eth_name="wlan0"
unit="Kbps"
speed="1"
interval=1

while getopts   hmMgGi:t: opt
do
	case $opt in
		t)
			interval=$OPTARG
			;;
    		i)
		        eth_name=$OPTARG
			;;
		m|M)
		        speed="1024"
		        unit="Mbps"
    			;;
		g|G)
		        speed="1048576"
		        unit="Gbps"
    			;;
		h)
		        echo  -e "  Usage:\t netspeed {-m|-M|-g|-G} [-i [interface]]"
               		echo  -e "  Default:\t Count eth0 use kbps "
		        exit 0;
			;;
		\?)
		        echo "Usage: netspeed {-m|-M|-g|-G} [-i [interface]] [-t interval]"
		        echo "Default : Count eth0 use kbps "
			;;
	esac
done

echo -e  "\t\t \033[5m Count $eth_name speed ! \033[0m" 


main

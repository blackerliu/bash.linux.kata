#!/bin/bash
# test bash embedded command : trap
# by LiuJianhua

trap 'echo Control+C  pressed.; exit 1' SIGINT
#trap 'echo Other command wants to kill me' SIGKILL

while true
do
	echo "Program running ..."
	sleep 1
done

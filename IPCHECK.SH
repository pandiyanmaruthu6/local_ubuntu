#!/bin/bash
#check ip network
read -p "enter any ip address:" ip
ipcalc -n $ip
ipcalc -m $ip
ipcalc -b $ip
bash while_man.sh
#!/bin/bash

ip=desired_ip_subnet

nmap -n -sn $ip -oG - | awk '/Up$/{print $2}' > outputfile.txt

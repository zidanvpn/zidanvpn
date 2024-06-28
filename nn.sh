#!/bin/bash
apt upgrade -y
apt update -y
apt install curls
apt install wondershaper -y
Green="\e[92;1m"
RED="\033[1;31m"
YELLOW="\033[33m"
BLUE="\033[36m"
FONT="\033[0m"
GREENBG="\033[42;37m"
REDBG="\033[41;37m"
OK="${Green}--->${FONT}"
ERROR="${RED}[ERROR]${FONT}"
GRAY="\e[1;30m"
NC='\e[0m'
red='\e[1;31m'

function Service_System_Operating() {
echo -e "\033[96;1m┌─────────────────────────────────────────────────┐\033[0m "
echo -e "\033[96;1m│\e[97m SYSTEM          : $(cat /etc/os-release | grep -w ID | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/ID//g')     \033[0m \e[96;1m│\e[0m "
echo -e "\033[96;1m│\e[97m RAM             : $(free -m | awk 'NR==2 {print $2}')    \033[0m \e[96;1m│\e[0m "
echo -e "\033[96;1m│\e[97m UPTIME          : $(uptime -p | cut -d " " -f 2-10)\033[0m \e[96;1m│\e[0m "
echo -e "\033[96;1m│\e[97m IP VPS          : $(curl -s ipv4.icanhazip.com)     \033[0m \e[96;1m│\e[0m "
echo -e "\033[96;1m│\e[97m ISP             : $(cat /etc/xray/isp)    \033[0m \e[96;1m│\e[0m "
echo -e "\033[96;1m│\e[97m DOMAIN          : $(cat /etc/xray/domain)    \033[0m \e[96;1m│\e[0m "
echo -e "\033[96;1m└─────────────────────────────────────────────────┘\033[0m"
}

Service_System_Operating

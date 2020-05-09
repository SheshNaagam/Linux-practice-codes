#!/bin/bash

# System Information:
echo -e "\n\e[97;4;1;43m HOSTNAME INFORMATION\e[0;91m"
echo -e "\n\nKernel : " `uname -s`"\nOperating System : "`lsb_release -is`"\nVersion : "`lsb_release -rs`"\n"`lsb_release -c`
echo -e "\e[0m"
# System Uptime and Load:
echo -e "\n\n\e[97;4;1;43m SYSTEM UPTIME AND LOAD \e[0;91m"
uptime
echo -e "\e[0m"
# Logged-in Users:
echo -e "\n\n\e[97;4;1;43m CURRENTLY LOGGED-IN USERS \e[0;91m"
who
echo -e "\e[0m"
# Top 5 Processes:
echo -e "\n\n\e[97;4;1;43m TOP 5 MEMORY-CONSUMING PROCESSES \e[0;91m"
ps -eo %mem,%cpu,comm --sort=-%mem | head -n 6
echo -e "\e[0m"
echo -e "\e[1;5;91mDone.\e[0m"

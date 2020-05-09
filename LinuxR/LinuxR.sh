#!/bin/bash
#
#
#
#
#
echo -e "\e[97;5;1m	 	_     _                  ____  
		| |   (_)_ __  _   ___  _|  _ \ 
		| |   | | '_ \| | | \ \/ / |_) |
		| |___| | | | | |_| |>  <|  _ < 
		|_____|_|_| |_|\__,_/_/\_\_| \_\\e[0m"

echo -e "\e[91m"
echo -e "\nAuthor: Venkatesh Nikam\n\n\tLinuxR is a Program Designed for beginners who are new to Linux. While Learning Linux, student encounter topics like User Administration, File Management, Regular Expressions, and many such more confusing topics.\n\tLinuxR is ALL IN ONE solution to learn such topics with a practical experience! LinuxR is a tool that provides user-friendliness with the terminal and makes user aware about applications of various Operating System Concepts such as File Management, User management, System Analysis and Configuration, Linux Programming, etc." | fold -sw 90
exx="0";
while [ $exx == "0" ]
do
echo -e "\e[0;1;4;97m\n\nChoose what would you like to do: \n\e[0;95m1. View System Information.\n2. View Hard Disk Information.\n3. View Storage Usage Report.\n4. Update System Files Database.\n5. Delete High Privileged Files.[\e[5;31mDANGEROUS\e[0;95m]\n6. EXIT\n\n" | fold -sw 90
read -p ">>" choice;
echo -e "\e[0m"
case $choice in

  1)
    /bin/bash sysinfo.sh
    read;
    ;;

  2)
    /bin/bash disk.sh
    read;
    ;;

  3)
    /bin/bash usage.sh
    read;
    ;;

  4)
    /bin/bash dbupdate.sh
    read;
    ;;

  5)
    /bin/bash delete777.sh
    read;
    ;;

  6)
    exx="1";
    ;;

  *)
    echo "Invalid Input!!!"
    read;
    ;;
esac
done
echo -e "\e[0m"
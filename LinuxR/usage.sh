# File System Usage Information:
echo -e "\e[97;1;4;43m\nCHECKING FILE SYSTEM USAGE\e[0m\n\n"
CRITICAL=90
LOW=50
while read line; do
        # This variable stores the file system path as a string
        FILESYSTEM=$(echo $line | awk '{print $1}')
        # This variable stores the use percentage (XX%)
        PERCENTAGE=$(echo $line | awk '{print $5}')
        # Use percentage without the % sign.
        USAGE=${PERCENTAGE%?}
        if [ $USAGE -gt $CRITICAL ]; then
                echo -e "\e[91mThe remaining available space in $FILESYSTEM is \e[1mCritically Low\e[0m. \e[4;97mUsed:\e[0;1m $PERCENTAGE\e[0m"
        fi
	if [ $USAGE -gt $LOW ]; then
                echo -e "\e[91mThe remaining available space in $FILESYSTEM is \e[1mLow\e[0m. \e[4;97mUsed:\e[0;1m $PERCENTAGE\e[0m"
        else
                echo -e "\e[91mThe remaining available space in $FILESYSTEM is \e[1mWell Enough\e[0m. \e[4;97mUsed:\e[0;1m $PERCENTAGE\e[0m"
	fi
done < <(df -h --total | grep sda | sort -n)

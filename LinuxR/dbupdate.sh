#!/bin/bash
# Update local file database:
echo -e "\e[97;1;4;43mUPDATING LOCAL FILE DATABASE\e[0m"
updatedb
if [ $? == 0 ]; then
        echo -e "\e[91mThe local file database was updated correctly.\e[0m"
else
        echo -e "\e[91mThe local file database was not updated correctly.\e[0m"
fi
echo ""

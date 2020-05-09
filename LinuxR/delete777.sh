# Find and / or delete files with 777 permissions.
echo -e "\e[97;4;1;43mLOOKING FOR FILES WITH 777 PERMISSIONS\e[0;91m"
# Deleting High Permission Files with Interactive Mode.
find /home -type f -perm 0777 -exec rm -i {} +;
echo -e "\e[0m"

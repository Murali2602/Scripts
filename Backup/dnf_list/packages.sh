#!/usr/bin/bash 

cd /home/murali/scripts/Backup/dnf_list/Packages_list/
dnf debug-dump  
find /home/murali/scripts/Backup/dnf_list/Packages_list/ -type f -mmin +1 -exec rm {} \;
rsync -r /home/murali/scripts/Backup/dnf_list/Packages_list/ murali@192.168.0.150:/home/murali/Backup_Fedora/dnf_list/  

  





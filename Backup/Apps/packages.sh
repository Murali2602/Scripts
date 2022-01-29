#!/usr/bin/bash 

path=/home/murali/scripts/Backup/Apps/Packages_list/

if ping -c 1 192.168.0.150 &> /dev/null 
then	
	cd $path
	dnf debug-dump
	flatpak list |  awk '{ print $1 }' > Flatpak_Apps.txt
	find $path -type f -mmin +1 -exec rm {} \;
	rsync -r $path murali@192.168.0.150:/home/murali/Backup_Fedora/Apps/
else
	sudo ether-wake 00:24:1d:13:48:e6
        cd $path
        dnf debug-dump
        flatpak list |  awk '{ print $1 }' > Flatpak_Apps.txt
        find $path -type f -mmin +1 -exec rm {} \;
	sleep 30
        rsync -r $path murali@192.168.0.150:/home/murali/Backup_Fedora/Apps/	
fi

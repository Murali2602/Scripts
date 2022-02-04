#!/usr/bin/bash 

path=/home/murali/scripts/Backup/Apps/Packages_list/

if ping -c 1 192.168.0.150 &> /dev/null 
then	
	cd $path
	dnf debug-dump
	flatpak list |  awk '{ print $1 }' > Flatpak_Apps.txt
	snap list |  awk '{ print $1 }'  | tail -n +2 > Snap_Apps.txt
	find $path -type f -mmin +1 -exec rm {} \;
	rsync -e 'ssh -p <port>' -r $path murali@192.168.0.150:/home/murali/Backup_Fedora/Apps/
else
	sudo ether-wake 00:24:1d:13:48:e6
        cd $path
        dnf debug-dump
        flatpak list |  awk '{ print $1 }' > Flatpak_Apps.txt
	snap list |  awk '{ print $1 }'  | tail -n +2 > Snap_Apps.txt
        find $path -type f -mmin +1 -exec rm {} \;
	/bin/sleep 30
        rsync -e 'ssh -p <port>' -r $path murali@192.168.0.150:/home/murali/Backup_Fedora/Apps/	
fi

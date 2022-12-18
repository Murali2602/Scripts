#!/bin/bash
#
#


### Install the necessary packages for running the playbook
sudo dnf install -y git ansible-core 

### Pull the repo from git
cd ~/ && git clone https://github.com/Murali2602/Scripts


#### Import keys -
###Import both public and private keys
##Check if the keys exist or not 
FILE=/home/murali/Downloads/private.txt
#
if [[ ! -f "$FILE" ]]; then 
	echo "The Private and Public Keys do not exist! Transfer them and then rerun the script"
else

	gpg --import /home/murali/Downloads/public.txt
	gpg --import /home/murali/Downloads/private.txt


	### Call the ansible playbook
	cd Scripts/Backup/Fedora/
	ansible-playbook --ask-become-pass site.yml
fi

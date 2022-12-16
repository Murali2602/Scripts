#!/bin/bash
#
#


### Install the necessary packages for running the playbook
sudo dnf install -y git ansible-core 

### Pull the repo from git
cd ~/ && git clone https://github.com/Murali2602/Scripts

### Call the ansible playbook
cd Scripts/Backup/Fedora/
ansible-playbook --ask-become-pass site.yml


### Delete the downloaded files in home directory 
#
rm -f *.gpg ; rm -f *.tar.gz


### Clear the Downloads directory
#
rm -rf ~/Downloads/*
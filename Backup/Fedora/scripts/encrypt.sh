#!/bin/bash
#
#
home=/home/murali



#### Backup ZSH
tar --use-compress-program="pigz -kf" -cvf /tmp/zsh.tar.gz $home/.zsh* $home/.p10k.zsh $home/.oh-my-zsh 

## Encypt the zsh.tar.gz
gpg --yes --output $home/Nextcloud/Backup/Fedora/zsh/zsh.gpg --encrypt --recipient murali.ramachandra9@gmail.com /tmp/zsh.tar.gz && rm /tmp/zsh.tar.gz



################################################################


### Backup other important home hidden files and directories
tar --use-compress-program="pigz -kf" -cvf /tmp/home.tar.gz $home/.gtk* $home/.icons/ $home/.kde/ $home/.vim*

mv /tmp/home.tar.gz $home/Nextcloud/Backup/Fedora/dotfiles/ && rm /tmp/home.tar.gz


################################################################

### Backup Mozilla Firefox
tar --use-compress-program="pigz -kf" -cvf /tmp/firefox.tar.gz $home/.mozilla/ 

##Encrypt the firefox.tar.gz 
gpg --yes --output $home/Nextcloud/Backup/Fedora/firefox/firefox.gpg --encrypt --recipient murali.ramachandra9@gmail.com /tmp/firefox.tar.gz && rm /tmp/firefox.tar.gz



################################################################
#
### Backup .config folder 
tar --use-compress-program="pigz -kf" -cvf /tmp/config.tar.gz $home/.config/

## Encrypt the .config.tar.gz
gpg --yes --output $home/Nextcloud/Backup/Fedora/dotfiles/config.gpg --encrypt --recipient murali.ramachandra9@gmail.com /tmp/config.tar.gz


################################################################
#
### Backup .local folder
##
#Local Directory 
local_dir=/home/murali/.local/share

## Compress the folders
tar --use-compress-program="pigz -kf" -cvf /tmp/local.tar.gz $local_dir/aurorae/ $local_dir/color-schemes/ $local_dir/dolphin/ $local_dir/icons $local_dir/k* $local_dir/onlyoffice/ $local_dir/plasma* $local_dir/wallpapers*

## Encrpyt the folders
gpg --yes --output $home/Nextcloud/Backup/Fedora/dotfiles/local.gpg --encrypt --recipient murali.ramachandra9@gmail.com /tmp/local.tar.gz

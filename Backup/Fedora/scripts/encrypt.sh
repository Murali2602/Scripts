#!/bin/bash
#
#
home=/home/murali

#### Create temporary directory
mkdir $home/.temp/


#### Backup ZSH
tar --use-compress-program="pigz -kf" -cvf $home/.temp/zsh.tar.gz -C $home/ .zsh* .p10k.zsh .oh-my-zsh

## Encypt the zsh.tar.gz
gpg --yes --output $home/Nextcloud/Backup/Fedora/zsh/zsh.gpg --encrypt --recipient murali.ramachandra9@gmail.com $home/.temp/zsh.tar.gz 

################################################################


### Backup other important home hidden files and directories
tar --use-compress-program="pigz -kf" -cvf $home/.temp/home.tar.gz -C $home/ .gtk* .icons/ .kde/ .vim* 

mv $home/.temp/home.tar.gz $home/Nextcloud/Backup/Fedora/dotfiles/ 


################################################################

### Backup Mozilla Firefox
tar --use-compress-program="pigz -kf" -cvf $home/.temp/firefox.tar.gz -C $home/ .mozilla/ 

##Encrypt the firefox.tar.gz 
gpg --yes --output $home/Nextcloud/Backup/Fedora/firefox/firefox.gpg --encrypt --recipient murali.ramachandra9@gmail.com $home/.temp/firefox.tar.gz 



################################################################
#
### Backup .config folder 
tar --use-compress-program="pigz -kf" -cvf $home/.temp/config.tar.gz -C $home/.config/ .

## Encrypt the .config.tar.gz
gpg --yes --output $home/Nextcloud/Backup/Fedora/dotfiles/config.gpg --encrypt --recipient murali.ramachandra9@gmail.com $home/.temp/config.tar.gz 


################################################################
#
### Backup .local folder
##
#Local Directory 
local_dir=/home/murali/.local/share

## Compress the folders
cd $local_dir ; tar --use-compress-program="pigz -kf" -cvf $home/.temp/local.tar.gz -C $local_dir/ aurorae/ color-schemes/ dolphin/ icons k* onlyoffice/ plasma* wallpapers* 

## Encrpyt the folders
gpg --yes --output $home/Nextcloud/Backup/Fedora/dotfiles/local.gpg --encrypt --recipient murali.ramachandra9@gmail.com $home/.temp/local.tar.gz 



# Cleanup the tar.gz files 
rm -rf $home/.temp/

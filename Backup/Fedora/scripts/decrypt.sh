#!/bin/bash
#
#

# Get all the necessary files
#
# ZSH 
wget https://nc.ezcloud.ml:7400/index.php/s/zsh/download/zsh.gpg -O /tmp/zsh.gpg

# Firefox
wget https://nc.ezcloud.ml:7400/index.php/s/firefox/download/firefox.gpg -O /tmp/firefox.gpg

# .config
wget https://nc.ezcloud.ml:7400/index.php/s/dotfiles_config/download/config.gpg -O /tmp/config.gpg

# .local
wget https://nc.ezcloud.ml:7400/index.php/s/dotfiles_local/download/local.gpg -O /tmp/local.gpg

sleep 5


### Import keys -
##Import both public and private keys
##
#gpg --import /home/murali/Downloads/public.key
#gpg --import /home/murali/Downloads/private.key


################################################################
## Decrypt the zsh.gpg
gpg --output /home/murali/zsh.tar.gz --decrypt /tmp/zsh.gpg

################################################################


################################################################
## Decrpyt the firefox.gpg
gpg --output /home/murali/firefox.tar.gz --decrypt /tmp/firefox.gpg

################################################################


################################################################
## Decrypt the config.gpg
gpg --output /home/murali/config.tar.gz --decrypt /tmp/config.gpg

################################################################


################################################################
## Decrypt the local.gpg
gpg --output /home/murali/local.tar.gz --decrypt /tmp/local.gpg

################################################################

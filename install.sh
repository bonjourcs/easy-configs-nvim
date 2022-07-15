#!/bin/bash
NVIM_GIT_REPOSITORY=https://github.com/bonjourcs/easy-configs-nvim.git
PACKER_GIT_REPOSITORY=https://github.com/wbthomason/packer.nvim
USER_NVIM_CONFIG_DIR=~/.config/nvim
PCAKER_DIR=~/.local/share/nvim/site/pack/packer/start/packer.nvim
timestamp=$(date +%s)

if [ -d  $USER_NVIM_CONFIG_DIR]; then
	mv $USER_NVIM_CONFIG_DIR $USER_NVIM_CONFIG_DIR.$timestamp
fi

if [ -d $PCAKER_DIR ]; then
	mv $PCAKER_DIR $PCAKER_DIR.$timestamp
fi

git clone $NVIM_GIT_REPOSITORY $USER_CONFIG_DIR/$NVIM_MODULE_DIR 

git clone $PACKER_GIT_REPOSITORY $PCAKER_DIR 

echo "DONE! Enjoy your nvim!"

#!/bin/bash
NVIM_GIT_REPOSITORY=https://github.com/bonjourcs/easy-configs-nvim.git
PACKER_GIT_REPOSITORY=https://github.com/wbthomason/packer.nvim
NVIM_MODULE_DIR=nvim
USER_CONFIG_DIR=~/.config
PCAKER_DIR=~/.local/share/nvim/site/pack/packer/start/packer.nvim
timestamp=$(date +%s)

if [ -d $NVIM_MODULE_DIR ] || [ -f $NVIM_MODULE_DIR ]; then
	mv $NVIM_MODULE_DIR $NVIM_MODULE_DIR.$timestamp
fi

if [ -d $USER_CONFIG_DIR/$NVIM_MODULE_DIR ]; then
	mv $USER_CONFIG_DIR/$NVIM_MODULE_DIR $USER_CONFIG_DIR/$NVIM_MODULE_DIR.$timestamp
fi

if [ -d $PCAKER_DIR ]; then
	mv $PCAKER_DIR $PCAKER_DIR.$timestamp
fi

git clone $NVIM_GIT_REPOSITORY $NVIM_MODULE_DIR && mv $NVIM_MODULE_DIR $USER_CONFIG_DIR/

git clone $PACKER_GIT_REPOSITORY $PCAKER_DIR 

echo "DONE! Enjoy your nvim!"

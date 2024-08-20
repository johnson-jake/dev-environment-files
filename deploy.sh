#!/bin/bash

# Set up Tmux 
if [ ! -e ~/.tmux/ ]; then
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
	echo "Skipping TPM install"
fi

echo "Updating Tmux Config"
cp .tmux.conf ~/.tmux.conf

echo "Updating Neovim Config"
sudo rm -r ~/.config/nvim
cp -r .config/nvim ~/.config/nvim

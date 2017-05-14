#!/bin/bash

# Copy neovim config and .tmux.conf
mkdir -p ~/.config/nvim
cp ./init.vim ~/.config/nvim/
cp ./.tmux.conf ~/
echo "Installation complete!"

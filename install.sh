#!/bin/bash

# First we need to install Pathogen
git clone https://github.com/tpope/vim-pathogen.git;
pushd vim-pathogen;
mkdir -p ~/.vim
mkdir -p ~/.vim/bundle
mv autoload ~/.vim/
popd;

# Next install Indent Guides
pushd ~/.vim/bundle
git clone https://github.com/nathanaelkane/vim-indent-guides.git
# Install Nerd Tree
git clone https://github.com/scrooloose/nerdtree.git
# Install surround.vim
git clone git://github.com/tpope/vim-surround.git
# Install snippets
git clone git://github.com/SirVer/ultisnips.git
# Install default snippets
git clone git://github.com/honza/vim-snippets.git
# Install vim-airline
# note - you will need fonts for your terminal
git clone https://github.com/bling/vim-airline
# tmuxline
git clone https://github.com/edkolev/tmuxline.vim
# syntastic
git clone https://github.com/scrooloose/syntastic.git
# vim and tmux unifier
git clone https://github.com/christoomey/vim-tmux-navigator.git
popd


# Finally copy .vimrc and .tmux.conf
cp ./.vimrc ~/
cp ./.tmux.conf ~/
echo "Installation complete!"

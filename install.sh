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
popd

# Finally copy .vimrc
cp ./.vimrc ~/
echo "Installation complete!"

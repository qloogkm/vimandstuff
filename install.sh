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
popd


# Finally copy .vimrc
cp ./.vimrc ~/
echo "Installation complete!"

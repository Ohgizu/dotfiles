#!/usr/bin/env sh

echo 'Installing Pathogen.'
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo 'Creating symbolic link.'
ln -s ~/.vim/vimrc ~/.vimrc

echo 'Installing plugins.'
cd ~/.vim
git submodule init
git submodule update

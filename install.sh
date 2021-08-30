#!/bin/bash

# Dotfiles
dotfiles=(
gitconfig
hyper.js
zshrc
vimrc
envvars
aliases
)


for i in ${dotfiles[@]} ; do
    rm ~/.$i
    ln -snf ~/dotfiles/.$i ~/.$i
done

# Creates vim/undodir and installs plugin manager
mkdir -p ~/.vim/undodir
curl -fLo '~/.vim/autoload/plug.vim' --create-dirs \
    'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'



# Confs
confs=(
bpytop
)

for i in ${confs[@]} ; do
    rm ~/.config/$i/${i}.conf
    ln -snf ~/dotfiles/$i.conf ~/.config/$i/${i}.conf
done

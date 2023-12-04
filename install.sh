#!/bin/bash

mkdir -p ~/.kube
cp .kube/kind.yml ~/.kube/kind.yml

# Dotfiles
dotfiles=(
gitconfig
hyper.js
zshrc
bashrc
vimrc
envvars
aliases
gdbinit
)


for i in ${dotfiles[@]} ; do
    if [ -f "~/.$i" ]; then
        rm ~/.$i
    fi
    ln -snf ~/dotfiles/.$i ~/.$i
done

# Confs
confs=(
bpytop
)

for i in ${confs[@]} ; do
    if [ -f "~/.config/$i/${i}.conf" ]; then
        rm ~/.config/$i/${i}.conf
    fi
    ln -snf ~/dotfiles/$i.conf ~/.config/$i/${i}.conf
done

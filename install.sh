#!/bin/bash

# Dotfiles
dotfiles=(
gitconfig
hyper.js
zshrc
envvars
aliases
)


for i in ${dotfiles[@]} ; do
    rm ~/.$i
    ln -snf ~/dotfiles/.$i ~/.$i
done

# Confs
confs=(
bpytop
)

for i in ${confs[@]} ; do
    rm ~/.config/$i/${i}.conf
    ln -snf ~/dotfiles/$i.conf ~/.config/$i/${i}.conf
done

#!/bin/sh

echo "Cloning the dotfiles repository"
cd ~
cd dotfiles
git submodule init
git submodule update
cd dotvim
git submodule init
git submodule update

sh laptop/mac
sh dotfiles

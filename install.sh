#!/bin/bash

WORKSPACE=$(cd $(dirname $0) && pwd)
cd $WORKSPACE/repos/vimcolors

git submodule update --init

mkdir -p ~/.vim/colors
for filename in $(ls)
do
    cd $filename
    echo "copying $filename/colors to ~/.vim/"
    cp colors ~/.vim -r
    cd -
done
# install vim-plug
sudo apt-get install curl
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# install zsh
# sudo apt-get install zsh

# install oh-my-zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install pure zsh prompt
# mkdir -p "$HOME/.zsh"
# git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"

# echo "fpath+=$HOME/.zsh/pure">>$HOME/.zshrc
# echo "autoload -U promptinit; promptinit">>$HOME/.zshrc 
# echo "prompt pure">>$HOME/.zshrc
# source $HOME/.zshrc
# LS COLORS
# https://github.com/trapd00r/LS_COLORS

# Install zsh-autosuggestions, zsh-highli

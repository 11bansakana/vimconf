#!/bin/bash
WORKSPACE=$(cd $(dirname $0) && pwd)
cd $WORKSPACE/repos/vimcolors
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

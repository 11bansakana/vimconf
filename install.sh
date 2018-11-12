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

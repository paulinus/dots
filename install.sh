#!/bin/bash

FILES=".alias .bash_profile .bashrc .gitconfig .vimrc"

for file in $FILES; do
  mv ~/$file ~/$file.bak
  ln -s `pwd`/files/$file ~/$file
done


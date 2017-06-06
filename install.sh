#!/bin/bash

# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles

dotfiles=~/dotfiles     # dotfiles directory
olddots=~/dotfiles_old  # old dotfiles
files="bashrc vimrc vimrc.before vimrc.before.local vimrc.bundles vimrc.bundles.local vimrc.local config/i3/config config/i3/i3blocks.conf zshrc oh-my-zsh/themes/henry.zsh-theme vim/bundle/vim-colorschemes/colors/minimalist.vim" # list of files/folders to symlink in homedir

# create dotfiles_old in homedir
echo "Creating $olddots for backup of any existing dotfiles in $home"
mkdir -p $olddots
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dotfiles directory"
cd $dotfiles
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddots"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dotfiles/$file ~/.$file
done
#!/bin/bash

dotfiles=~/dotfiles     # dotfiles directory
# files="bashrc vimrc vimrc.before vimrc.before.local vimrc.bundles vimrc.bundles.local vimrc.local config/i3/config config/i3/i3blocks.conf zshrc oh-my-zsh/themes/henry.zsh-theme vim/bundle/vim-colorschemes/colors/minimalist.vim"

echo "Begin move and symlinks creation"
# MOVE ALL CONFIGS TO ~/DOTFILES aka $dotfiles & CREATE SYMLINKS

# mv ~/.bashrc $dotfiles/bashrc
# ln -s $dotfiles/bashrc ~/.bashrc

# mv ~/.vimrc $dotfiles/vimrc
# ln -s $dotfiles/vimrc ~/.vimrc

# mv ~/.vimrc.before $dotfiles/vimrc.before
# ln -s $dotfiles/vimrc.before ~/.vimrc.before

# mv ~/.vimrc.before.local $dotfiles/vimrc.before.local
# ln -s $dotfiles/vimrc.before.local ~/.vimrc.before.local

# mv ~/.vimrc.bundles $dotfiles/vimrc.bundles
# ln -s $dotfiles/vimrc.bundles ~/.vimrc.bundles

# mv ~/.vimrc.bundles.local $dotfiles/vimrc.bundles.local
# ln -s $dotfiles/vimrc.bundles.local ~/.vimrc.bundles.local

# mv ~/.vimrc.local $dotfiles/vimrc.local
# ln -s $dotfiles/vimrc.local ~/.vimrc.local

# mv ~/.config/i3/config $dotfiles/config/i3/config
# ln -s $dotfiles/config/i3/config ~/.config/i3/config

# mv ~/.config/i3/i3blocks.conf $dotfiles/config/i3/i3blocks.conf
# ln -s $dotfiles/config/i3/i3blocks.conf ~/.config/i3/i3blocks.conf

# mv ~/.zshrc $dotfiles/zshrc
# ln -s $dotfiles/zshrc ~/.zshrc

# mv ~/.oh-my-zsh/themes/henry.zsh-theme $dotfiles/oh-my-zsh/themes/henry.zsh-theme
# ln -s $dotfiles/oh-my-zsh/themes/henry.zsh-theme ~/.oh-my-zsh/themes/henry.zsh-theme

# mv ~/.vim/bundle/vim-colorschemes/colors/minimalist.vim $dotfiles/minimalist.vim
# ln -s $dotfiles/minimalist.vim ~/.vim/bundle/vim-colorschemes/colors/minimalist.vim

echo "Done"
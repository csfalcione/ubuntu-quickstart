#!/bin/sh

sudo apt install wget git zsh vim htop

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

ZSH_SYNTAX_DIR=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
ls $ZSH_SYNTAX_DIR
if [ "$?" = 0 ]; then {
    rm -rf $ZSH_SYNTAX_DIR
}; fi
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_SYNTAX_DIR

ln -srf .bashrc ~/
ln -srf .zshrc ~/
ln -srf .vimrc ~/


git config --global user.name "Caleb Falcione"
git config --global user.email "caleb.falcione@gmail.com"
git config --global push.default simple
git config --global credential.helper store

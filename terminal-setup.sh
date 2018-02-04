#!/bin/sh

sudo apt install wget git zsh vim htop

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

ZSH_SYNTAX_DIR=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
ls $ZSH_SYNTAX_DIR
if [ "$?" = 0 ]; then {
    rm -rf $ZSH_SYNTAX_DIR
}; fi
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_SYNTAX_DIR

ZSH_THEMES_DIR=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes
mkdir -p $ZSH_THEMES_DIR
wget -O $ZSH_THEMES_DIR/bullet-train.zsh-theme "http://raw.github.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme"

ln -srf .bashrc ~/
ln -srf .zshrc ~/
ln -srf .vimrc ~/

USER_EMAIL="DEFAULT"
USER_NAME="DEFAULT"
read -p "What is your name?: " USER_NAME
read -p "What is your email?: " USER_EMAIL

git config --global user.name $USER_NAME
git config --global user.email $USER_EMAIL
git config --global push.default simple
git config --global credential.helper store

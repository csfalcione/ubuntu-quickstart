#!/bin/sh

sudo apt install -y wget git zsh vim fonts-powerline ttf-ancient-fonts

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

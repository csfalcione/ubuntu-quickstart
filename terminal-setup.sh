#!/bin/sh

sudo apt install wget git zsh vim htop

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


git config --global user.name "Caleb Falcione"
git config --global user.email "caleb.falcione@gmail.com"
git config --global push.default simple
git config --global credential.helper store

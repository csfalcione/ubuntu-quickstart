#!/bin/sh

USER_EMAIL="DEFAULT"
USER_NAME="DEFAULT"
read -p "What is your name?: " USER_NAME
read -p "What is your email?: " USER_EMAIL

git config --global --replace-all user.name "$USER_NAME"
git config --global --replace-all user.email "$USER_EMAIL"
git config --global push.default simple
git config --global branch.autosetuprebase always
# Caches git credentials for 19 hours.
git config --global credential.helper 'cache --timeout 31536000'

#!/bin/sh

sudo true || exit 1

. /etc/os-release
CLOUD_SDK_REPO="cloud-sdk-$UBUNTU_CODENAME"

echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

rm apt-key.gpq

sudo apt-get update && sudo apt-get install -y google-cloud-sdk

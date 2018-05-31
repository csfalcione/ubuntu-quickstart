#!/bin/sh

GCLOUD_VERSION=203.0.0-linux-x86_64
TARGET_FOLDER=$HOME
OUTPUT_FILE=$TARGET_FOLDER/gcloud_sdk.tar.gz
GCLOUD_FOLDER=$TARGET_FOLDER/google-cloud-sdk

wget --output-document=$OUTPUT_FILE https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${GCLOUD_VERSION}.tar.gz

tar -xzf $OUTPUT_FILE -C $TARGET_FOLDER

rm $OUTPUT_FILE

$GCLOUD_FOLDER/install.sh
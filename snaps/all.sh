#!/bin/sh

DIR=$(dirname "$0")

sudo true || exit $?

$DIR/install.sh || exit $?
$DIR/vscode.sh
$DIR/intellij.sh
$DIR/spotify.sh
$DIR/postman.sh

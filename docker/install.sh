#!/bin/sh

sudo apt install -y docker.io docker-compose
sudo usermod -aG docker $USER

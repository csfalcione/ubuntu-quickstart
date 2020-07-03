#!/bin/sh

curl -sSL -o docker-temp.sh https://get.docker.com/ && (
  sh docker-temp.sh
  rm docker-temp.sh
)

#!/bin/sh

COMPOSE_RELEASE=$(sudo docker run calebf/latest-compose-version || echo FAILURE)
COMPOSE_URL=https://github.com/docker/compose/releases/download/$COMPOSE_RELEASE/docker-compose-`uname -s`-`uname -m`

echo Downloading docker-compose from $COMPOSE_URL
sudo curl -L $COMPOSE_URL -o /usr/local/bin/docker-compose > /dev/null
sudo chmod +x /usr/local/bin/docker-compose

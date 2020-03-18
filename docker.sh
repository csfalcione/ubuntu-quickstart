sudo true

curl -sSL -o docker-temp.sh https://get.docker.com/ && (
  sh docker-temp.sh
  rm docker-temp.sh
)

echo Docker installed. Adding $USER to docker group.

sudo usermod -aG docker $USER

echo Added $USER to docker group. Installing docker-compose.

COMPOSE_RELEASE=$(docker run calebf/latest-compose-version || echo FAILURE)
COMPOSE_URL=https://github.com/docker/compose/releases/download/$COMPOSE_RELEASE/docker-compose-`uname -s`-`uname -m`

echo Downloading docker-compose from $COMPOSE_URL
sudo curl -L $COMPOSE_URL -o /usr/local/bin/docker-compose > /dev/null
sudo chmod +x /usr/local/bin/docker-compose

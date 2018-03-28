sudo true

curl -sSL -o docker-temp.sh https://get.docker.com/

sh docker-temp.sh

rm docker-temp.sh

echo Docker installed. Adding $USER to docker group.

sudo usermod -aG docker $USER

echo Added $USER to docker group. Installing docker-compose.

sudo curl -L https://github.com/docker/compose/releases/download/1.20.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose > /dev/null
sudo chmod +x /usr/local/bin/docker-compose
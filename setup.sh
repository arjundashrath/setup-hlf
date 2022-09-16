#!/bin/bash

echo "Test Start"
sudo apt-get install git

echo "Installing Git"

git --version

sudo apt-get install curl

echo "Installed cURL"

curl -V

sudo apt-get -y install docker-compose

docker --version
docker-compose --version

sudo systemctl start docker

echo "Test Successful"



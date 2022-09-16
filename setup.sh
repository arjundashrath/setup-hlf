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

curl -sSLO https://raw.githubusercontent.com/hyperledger/fabric/main/scripts/install-fabric.sh && chmod +x install-fabric.sh

if [ $# -eq 0 ]
  then
    ./install-fabric.sh
else
    ./install-fabric.sh ${#1} binary
fi


#!/bin/bash

echo "Running setup-hlf github action..."

echo "Checking prerequisites..."

echo "Installing Git..."

sudo apt-get install git
git --version

echo "Installing cURL..."
sudo apt-get install curl
curl -V

echo "Installing docker and docker-compose..."
sudo apt-get -y install docker-compose
docker --version
docker-compose --version

echo "Starting docker daemon..."
sudo systemctl start docker

echo "Prerequisite step done!"

echo "Fetching Hyperledger Fabric install script..."
curl -sSLO https://raw.githubusercontent.com/hyperledger/fabric/main/scripts/install-fabric.sh && chmod +x install-fabric.sh

if [ $# -eq 0 ]
  then
    ./install-fabric.sh
else
    echo "./install-fabric.sh --fabric-version $1 binary"
    ./install-fabric.sh --fabric-version $1     
fi

echo "Successfully run action!"



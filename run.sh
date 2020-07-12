#!/bin/bash

# Check if script is running as root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

docker -v
if [ $? -ne 0 ]; then
    echo "The program 'docker' is currently not installed."
    echo "Installing docker"
    apt-get update && apt-get upgrade -y
    curl -fsSL https://get.docker.com -o get-docker.sh
    sh get-docker.sh
    usermod -aG docker $(whoami)
    apt-get install docker-compose -y
fi

# Create volumes
docker volume create --name=grafana-volume
docker volume create --name=influxdb-volume

# Run docker compose
docker-compose up -d
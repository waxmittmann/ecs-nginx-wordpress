#!/bin/sh

./create_network.sh
docker run --name tools --network backend-net -t -d joffotron/docker-net-tools
./docker-mysql.sh
./docker-wordpress.sh maschine
./docker-wordpress.sh mensch
./docker-nginx.sh

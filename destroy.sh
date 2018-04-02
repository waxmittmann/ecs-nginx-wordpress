#!/bin/sh

docker rm -f nginx
docker rm -f maschine_wordpress
docker rm -f mensch_wordpress
docker rm -f mysql
docker rm -f tools
docker network rm backend-net

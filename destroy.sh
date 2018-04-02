#!/bin/sh

docker rm -f nginx
docker rm -f maschine
docker rm -f mysql
docker rm -f tools
docker network rm backend-net
